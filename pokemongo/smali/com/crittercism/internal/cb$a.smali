.class final Lcom/crittercism/internal/cb$a;
.super Lcom/crittercism/internal/bm;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/crittercism/internal/cb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic b:Lcom/crittercism/internal/cb;


# direct methods
.method public constructor <init>(Lcom/crittercism/internal/cb;Landroid/app/Application;)V
    .locals 0

    .prologue
    .line 193
    iput-object p1, p0, Lcom/crittercism/internal/cb$a;->b:Lcom/crittercism/internal/cb;

    .line 194
    invoke-direct {p0, p2}, Lcom/crittercism/internal/bm;-><init>(Landroid/app/Application;)V

    .line 195
    invoke-virtual {p0}, Lcom/crittercism/internal/cb$a;->a()V

    .line 196
    return-void
.end method


# virtual methods
.method public final b()V
    .locals 8

    .prologue
    .line 200
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 202
    iget-object v0, p0, Lcom/crittercism/internal/cb$a;->b:Lcom/crittercism/internal/cb;

    .line 1034
    iget-object v1, v0, Lcom/crittercism/internal/cb;->a:Ljava/util/HashMap;

    .line 202
    monitor-enter v1

    .line 203
    :try_start_0
    iget-object v0, p0, Lcom/crittercism/internal/cb$a;->b:Lcom/crittercism/internal/cb;

    .line 2034
    iget-object v0, v0, Lcom/crittercism/internal/cb;->a:Ljava/util/HashMap;

    .line 203
    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/crittercism/internal/ca;

    .line 2272
    iget v5, v0, Lcom/crittercism/internal/ca;->f:I

    sget v6, Lcom/crittercism/internal/ca$d;->b:I

    if-ne v5, v6, :cond_0

    iget-wide v6, v0, Lcom/crittercism/internal/ca;->d:J

    cmp-long v5, v2, v6

    if-ltz v5, :cond_0

    .line 2277
    iget-object v0, v0, Lcom/crittercism/internal/ca;->i:Ljava/util/List;

    new-instance v5, Lcom/crittercism/internal/ca$b;

    sget v6, Lcom/crittercism/internal/ca$c;->b:I

    invoke-direct {v5, v6, v2, v3}, Lcom/crittercism/internal/ca$b;-><init>(IJ)V

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 206
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method

.method public final c()V
    .locals 8

    .prologue
    .line 211
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 213
    iget-object v0, p0, Lcom/crittercism/internal/cb$a;->b:Lcom/crittercism/internal/cb;

    .line 3034
    iget-object v1, v0, Lcom/crittercism/internal/cb;->a:Ljava/util/HashMap;

    .line 213
    monitor-enter v1

    .line 214
    :try_start_0
    iget-object v0, p0, Lcom/crittercism/internal/cb$a;->b:Lcom/crittercism/internal/cb;

    .line 4034
    iget-object v0, v0, Lcom/crittercism/internal/cb;->a:Ljava/util/HashMap;

    .line 214
    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/crittercism/internal/ca;

    .line 4264
    iget v5, v0, Lcom/crittercism/internal/ca;->f:I

    sget v6, Lcom/crittercism/internal/ca$d;->b:I

    if-ne v5, v6, :cond_0

    iget-wide v6, v0, Lcom/crittercism/internal/ca;->d:J

    cmp-long v5, v2, v6

    if-ltz v5, :cond_0

    .line 4268
    iget-object v0, v0, Lcom/crittercism/internal/ca;->i:Ljava/util/List;

    new-instance v5, Lcom/crittercism/internal/ca$b;

    sget v6, Lcom/crittercism/internal/ca$c;->a:I

    invoke-direct {v5, v6, v2, v3}, Lcom/crittercism/internal/ca$b;-><init>(IJ)V

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 217
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method
