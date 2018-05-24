.class final Lcom/crittercism/internal/cb$b;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/crittercism/internal/cb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/crittercism/internal/cb;


# direct methods
.method private constructor <init>(Lcom/crittercism/internal/cb;)V
    .locals 0

    .prologue
    .line 227
    iput-object p1, p0, Lcom/crittercism/internal/cb$b;->a:Lcom/crittercism/internal/cb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/crittercism/internal/cb;B)V
    .locals 0

    .prologue
    .line 227
    invoke-direct {p0, p1}, Lcom/crittercism/internal/cb$b;-><init>(Lcom/crittercism/internal/cb;)V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 10

    .prologue
    .line 234
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 236
    iget-object v0, p0, Lcom/crittercism/internal/cb$b;->a:Lcom/crittercism/internal/cb;

    .line 1034
    iget-object v3, v0, Lcom/crittercism/internal/cb;->a:Ljava/util/HashMap;

    .line 236
    monitor-enter v3

    .line 237
    :try_start_0
    iget-object v0, p0, Lcom/crittercism/internal/cb$b;->a:Lcom/crittercism/internal/cb;

    .line 2034
    iget-object v0, v0, Lcom/crittercism/internal/cb;->a:Ljava/util/HashMap;

    .line 237
    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 238
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 239
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/crittercism/internal/ca;

    .line 241
    invoke-virtual {v0}, Lcom/crittercism/internal/ca;->a()J

    move-result-wide v6

    .line 2297
    iget-wide v8, v0, Lcom/crittercism/internal/ca;->b:J

    .line 241
    cmp-long v5, v6, v8

    if-ltz v5, :cond_0

    .line 242
    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 258
    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 246
    :cond_1
    :try_start_1
    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 247
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 248
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/crittercism/internal/ca;

    .line 250
    iget-object v4, p0, Lcom/crittercism/internal/cb$b;->a:Lcom/crittercism/internal/cb;

    .line 3034
    iget-object v4, v4, Lcom/crittercism/internal/cb;->a:Ljava/util/HashMap;

    .line 250
    invoke-virtual {v4, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 251
    sget v1, Lcom/crittercism/internal/ca$d;->f:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v0, v1, v4, v5}, Lcom/crittercism/internal/ca;->a(IJ)V

    .line 253
    iget-object v1, p0, Lcom/crittercism/internal/cb$b;->a:Lcom/crittercism/internal/cb;

    .line 4034
    iget-object v1, v1, Lcom/crittercism/internal/cb;->d:Lcom/crittercism/internal/ap;

    .line 253
    sget-object v4, Lcom/crittercism/internal/ap;->y:Lcom/crittercism/internal/ap$a;

    invoke-virtual {v1, v4}, Lcom/crittercism/internal/ap;->a(Lcom/crittercism/internal/ap$e;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 254
    iget-object v1, p0, Lcom/crittercism/internal/cb$b;->a:Lcom/crittercism/internal/cb;

    .line 5034
    iget-object v1, v1, Lcom/crittercism/internal/cb;->d:Lcom/crittercism/internal/ap;

    .line 254
    sget-object v4, Lcom/crittercism/internal/ap;->B:Lcom/crittercism/internal/ap$b;

    invoke-virtual {v1, v4}, Lcom/crittercism/internal/ap;->a(Lcom/crittercism/internal/ap$e;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    .line 5318
    iput v1, v0, Lcom/crittercism/internal/ca;->j:F

    .line 255
    iget-object v1, p0, Lcom/crittercism/internal/cb$b;->a:Lcom/crittercism/internal/cb;

    .line 6034
    iget-object v1, v1, Lcom/crittercism/internal/cb;->c:Lcom/crittercism/internal/av;

    .line 255
    invoke-interface {v1, v0}, Lcom/crittercism/internal/av;->a(Lcom/crittercism/internal/bf;)Z

    goto :goto_1

    .line 258
    :cond_3
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method
