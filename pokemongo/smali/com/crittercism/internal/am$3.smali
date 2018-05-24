.class final Lcom/crittercism/internal/am$3;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/crittercism/internal/am;->a(Ljava/lang/Throwable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/Throwable;

.field final synthetic b:J

.field final synthetic c:Ljava/util/Date;

.field final synthetic d:Ljava/util/Map;

.field final synthetic e:Lcom/crittercism/internal/am;


# direct methods
.method constructor <init>(Lcom/crittercism/internal/am;Ljava/lang/Throwable;JLjava/util/Date;Ljava/util/Map;)V
    .locals 1

    .prologue
    .line 370
    iput-object p1, p0, Lcom/crittercism/internal/am$3;->e:Lcom/crittercism/internal/am;

    iput-object p2, p0, Lcom/crittercism/internal/am$3;->a:Ljava/lang/Throwable;

    iput-wide p3, p0, Lcom/crittercism/internal/am$3;->b:J

    iput-object p5, p0, Lcom/crittercism/internal/am$3;->c:Ljava/util/Date;

    iput-object p6, p0, Lcom/crittercism/internal/am$3;->d:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 10

    .prologue
    .line 374
    new-instance v2, Lcom/crittercism/internal/aq;

    iget-object v0, p0, Lcom/crittercism/internal/am$3;->a:Ljava/lang/Throwable;

    iget-object v1, p0, Lcom/crittercism/internal/am$3;->e:Lcom/crittercism/internal/am;

    .line 1065
    iget-object v1, v1, Lcom/crittercism/internal/am;->n:Lcom/crittercism/internal/au;

    .line 374
    iget-wide v4, p0, Lcom/crittercism/internal/am$3;->b:J

    invoke-direct {v2, v0, v1, v4, v5}, Lcom/crittercism/internal/aq;-><init>(Ljava/lang/Throwable;Lcom/crittercism/internal/au;J)V

    .line 375
    iget-object v0, p0, Lcom/crittercism/internal/am$3;->c:Ljava/util/Date;

    .line 1295
    sget-object v1, Lcom/crittercism/internal/cf;->a:Lcom/crittercism/internal/cf;

    invoke-virtual {v1, v0}, Lcom/crittercism/internal/cf;->a(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/crittercism/internal/aq;->h:Ljava/lang/String;

    .line 376
    iget-object v0, p0, Lcom/crittercism/internal/am$3;->d:Ljava/util/Map;

    .line 2199
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    iput-object v1, v2, Lcom/crittercism/internal/aq;->g:Lorg/json/JSONArray;

    .line 2201
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 2202
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 2203
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Thread;

    .line 2205
    invoke-virtual {v1}, Ljava/lang/Thread;->getId()J

    move-result-wide v6

    iget-wide v8, v2, Lcom/crittercism/internal/aq;->a:J

    cmp-long v5, v6, v8

    if-eqz v5, :cond_0

    .line 2209
    const-string v5, "name"

    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2210
    const-string v5, "id"

    invoke-virtual {v1}, Ljava/lang/Thread;->getId()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2211
    const-string v5, "state"

    invoke-virtual {v1}, Ljava/lang/Thread;->getState()Ljava/lang/Thread$State;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread$State;->name()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v4, v5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2213
    new-instance v5, Lorg/json/JSONArray;

    invoke-direct {v5}, Lorg/json/JSONArray;-><init>()V

    .line 2214
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/StackTraceElement;

    .line 2215
    const/4 v1, 0x0

    :goto_1
    array-length v6, v0

    if-ge v1, v6, :cond_1

    .line 2216
    aget-object v6, v0, v1

    invoke-virtual {v6}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 2215
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 2219
    :cond_1
    const-string v0, "stacktrace"

    invoke-interface {v4, v0, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2220
    iget-object v0, v2, Lcom/crittercism/internal/aq;->g:Lorg/json/JSONArray;

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v4}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    .line 377
    :cond_2
    iget-object v0, p0, Lcom/crittercism/internal/am$3;->e:Lcom/crittercism/internal/am;

    .line 3065
    iget-object v0, v0, Lcom/crittercism/internal/am;->e:Lcom/crittercism/internal/av;

    .line 377
    invoke-virtual {v2, v0}, Lcom/crittercism/internal/aq;->a(Lcom/crittercism/internal/av;)V

    .line 378
    iget-object v0, p0, Lcom/crittercism/internal/am$3;->e:Lcom/crittercism/internal/am;

    .line 4065
    iget-object v0, v0, Lcom/crittercism/internal/am;->l:Lcom/crittercism/internal/cb;

    .line 378
    invoke-virtual {v0}, Lcom/crittercism/internal/cb;->a()Ljava/util/Collection;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/crittercism/internal/aq;->a(Ljava/util/Collection;)V

    .line 380
    iget-object v0, p0, Lcom/crittercism/internal/am$3;->e:Lcom/crittercism/internal/am;

    .line 5065
    iget-object v0, v0, Lcom/crittercism/internal/am;->j:Lcom/crittercism/internal/ap;

    .line 380
    sget-object v1, Lcom/crittercism/internal/ap;->e:Lcom/crittercism/internal/ap$a;

    invoke-virtual {v0, v1}, Lcom/crittercism/internal/ap;->a(Lcom/crittercism/internal/ap$e;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 381
    if-eqz v0, :cond_3

    .line 382
    iget-object v0, p0, Lcom/crittercism/internal/am$3;->e:Lcom/crittercism/internal/am;

    .line 6065
    iget-object v0, v0, Lcom/crittercism/internal/am;->j:Lcom/crittercism/internal/ap;

    .line 382
    sget-object v1, Lcom/crittercism/internal/ap;->h:Lcom/crittercism/internal/ap$b;

    invoke-virtual {v0, v1}, Lcom/crittercism/internal/ap;->a(Lcom/crittercism/internal/ap$e;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 6303
    iput v0, v2, Lcom/crittercism/internal/aq;->m:F

    .line 384
    iget-object v0, p0, Lcom/crittercism/internal/am$3;->e:Lcom/crittercism/internal/am;

    .line 7065
    iget-object v0, v0, Lcom/crittercism/internal/am;->d:Lcom/crittercism/internal/av;

    .line 384
    invoke-interface {v0, v2}, Lcom/crittercism/internal/av;->a(Lcom/crittercism/internal/bf;)Z

    .line 387
    :cond_3
    new-instance v0, Lcom/crittercism/app/CrashData;

    .line 7279
    iget-object v1, v2, Lcom/crittercism/internal/aq;->d:Ljava/lang/String;

    .line 7283
    iget-object v2, v2, Lcom/crittercism/internal/aq;->e:Ljava/lang/String;

    .line 388
    iget-object v3, p0, Lcom/crittercism/internal/am$3;->c:Ljava/util/Date;

    invoke-direct {v0, v1, v2, v3}, Lcom/crittercism/app/CrashData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;)V

    .line 391
    iget-object v1, p0, Lcom/crittercism/internal/am$3;->e:Lcom/crittercism/internal/am;

    .line 8065
    iget-object v1, v1, Lcom/crittercism/internal/am;->a:Landroid/app/Application;

    .line 391
    invoke-static {v1, v0}, Lcom/crittercism/internal/by;->a(Landroid/content/Context;Lcom/crittercism/app/CrashData;)V

    .line 392
    return-void
.end method
