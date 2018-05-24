.class public final Lcom/crittercism/internal/bu;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/crittercism/internal/av$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/crittercism/internal/bu$b;,
        Lcom/crittercism/internal/bu$a;
    }
.end annotation


# instance fields
.field final a:Ljava/util/concurrent/ScheduledExecutorService;

.field b:Lcom/crittercism/internal/av;

.field public c:Lcom/crittercism/internal/bu$a;

.field volatile d:Z

.field public volatile e:Ljava/util/concurrent/ScheduledFuture;

.field public volatile f:Ljava/util/concurrent/Future;

.field public volatile g:Ljava/util/concurrent/Future;

.field public h:Z

.field public i:Landroid/net/ConnectivityManager;

.field public j:Ljava/lang/Object;

.field private k:Lcom/crittercism/internal/as;

.field private final l:Ljava/util/concurrent/ExecutorService;

.field private m:Lcom/crittercism/internal/bv;

.field private n:J

.field private o:Z

.field private p:Z

.field private q:J

.field private r:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/crittercism/internal/as;Ljava/util/concurrent/ScheduledExecutorService;Ljava/util/concurrent/ExecutorService;Lcom/crittercism/internal/av;Lcom/crittercism/internal/bv;Ljava/lang/String;Lcom/crittercism/internal/ap;Lcom/crittercism/internal/ap$a;Lcom/crittercism/internal/ap$d;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput-boolean v2, p0, Lcom/crittercism/internal/bu;->o:Z

    .line 61
    iput-boolean v3, p0, Lcom/crittercism/internal/bu;->p:Z

    .line 63
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/crittercism/internal/bu;->q:J

    .line 66
    iput-boolean v2, p0, Lcom/crittercism/internal/bu;->d:Z

    .line 88
    iput-boolean v3, p0, Lcom/crittercism/internal/bu;->h:Z

    .line 116
    iput-object p1, p0, Lcom/crittercism/internal/bu;->k:Lcom/crittercism/internal/as;

    .line 117
    iput-object p2, p0, Lcom/crittercism/internal/bu;->a:Ljava/util/concurrent/ScheduledExecutorService;

    .line 118
    iput-object p3, p0, Lcom/crittercism/internal/bu;->l:Ljava/util/concurrent/ExecutorService;

    .line 119
    iput-object p4, p0, Lcom/crittercism/internal/bu;->b:Lcom/crittercism/internal/av;

    .line 120
    iput-object p5, p0, Lcom/crittercism/internal/bu;->m:Lcom/crittercism/internal/bv;

    .line 121
    iget-object v0, p0, Lcom/crittercism/internal/bu;->b:Lcom/crittercism/internal/av;

    invoke-interface {v0, p0}, Lcom/crittercism/internal/av;->a(Lcom/crittercism/internal/av$a;)V

    .line 122
    invoke-virtual {p7, p9}, Lcom/crittercism/internal/ap;->a(Lcom/crittercism/internal/ap$e;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/crittercism/internal/bu;->n:J

    .line 123
    invoke-virtual {p7, p8}, Lcom/crittercism/internal/ap;->a(Lcom/crittercism/internal/ap$e;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/crittercism/internal/bu;->o:Z

    .line 124
    iput-object p6, p0, Lcom/crittercism/internal/bu;->r:Ljava/lang/String;

    .line 125
    new-instance v0, Lcom/crittercism/internal/bu$b;

    invoke-direct {v0, p0, p8, p9}, Lcom/crittercism/internal/bu$b;-><init>(Lcom/crittercism/internal/bu;Lcom/crittercism/internal/ap$a;Lcom/crittercism/internal/ap$d;)V

    .line 1114
    iget-object v1, p7, Lcom/crittercism/internal/ap;->I:Ljava/util/LinkedList;

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 126
    return-void
.end method

.method private static a(Ljava/util/concurrent/Future;)Z
    .locals 1

    .prologue
    .line 336
    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/concurrent/Future;->isDone()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private declared-synchronized d()J
    .locals 8

    .prologue
    const-wide/16 v0, 0x0

    .line 299
    monitor-enter p0

    :try_start_0
    iget-wide v2, p0, Lcom/crittercism/internal/bu;->n:J

    .line 300
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/crittercism/internal/bu;->q:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sub-long/2addr v4, v6

    .line 302
    cmp-long v6, v4, v0

    if-lez v6, :cond_0

    .line 305
    sub-long/2addr v2, v4

    .line 307
    cmp-long v4, v2, v0

    if-gez v4, :cond_0

    .line 312
    :goto_0
    monitor-exit p0

    return-wide v0

    .line 299
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_0
    move-wide v0, v2

    goto :goto_0
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 135
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/crittercism/internal/bu;->d:Z

    .line 137
    invoke-virtual {p0}, Lcom/crittercism/internal/bu;->b()Ljava/util/concurrent/Future;

    .line 138
    return-void
.end method

.method public final declared-synchronized a(JLjava/util/concurrent/TimeUnit;)V
    .locals 3

    .prologue
    .line 266
    monitor-enter p0

    :try_start_0
    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/crittercism/internal/bu;->n:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 267
    monitor-exit p0

    return-void

    .line 266
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized a(Z)V
    .locals 2

    .prologue
    .line 270
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/crittercism/internal/bu;->p:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v0, p1, :cond_1

    .line 279
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 274
    :cond_1
    :try_start_1
    iput-boolean p1, p0, Lcom/crittercism/internal/bu;->p:Z

    .line 275
    iget-boolean v0, p0, Lcom/crittercism/internal/bu;->p:Z

    if-nez v0, :cond_0

    .line 276
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/crittercism/internal/bu;->q:J

    .line 277
    invoke-virtual {p0}, Lcom/crittercism/internal/bu;->b()Ljava/util/concurrent/Future;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 270
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized b()Ljava/util/concurrent/Future;
    .locals 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 144
    monitor-enter p0

    .line 1328
    :try_start_0
    iget-object v2, p0, Lcom/crittercism/internal/bu;->e:Ljava/util/concurrent/ScheduledFuture;

    invoke-static {v2}, Lcom/crittercism/internal/bu;->a(Ljava/util/concurrent/Future;)Z

    move-result v2

    if-nez v2, :cond_1

    move v2, v0

    .line 1332
    :goto_0
    iget-object v3, p0, Lcom/crittercism/internal/bu;->f:Ljava/util/concurrent/Future;

    invoke-static {v3}, Lcom/crittercism/internal/bu;->a(Ljava/util/concurrent/Future;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 147
    :goto_1
    iget-boolean v1, p0, Lcom/crittercism/internal/bu;->o:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/crittercism/internal/bu;->p:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    if-nez v2, :cond_0

    if-eqz v0, :cond_3

    .line 150
    :cond_0
    const/4 v0, 0x0

    .line 168
    :goto_2
    monitor-exit p0

    return-object v0

    :cond_1
    move v2, v1

    .line 1328
    goto :goto_0

    :cond_2
    move v0, v1

    .line 1332
    goto :goto_1

    .line 153
    :cond_3
    :try_start_1
    new-instance v0, Lcom/crittercism/internal/bu$1;

    invoke-direct {v0, p0}, Lcom/crittercism/internal/bu$1;-><init>(Lcom/crittercism/internal/bu;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 162
    :try_start_2
    iget-object v1, p0, Lcom/crittercism/internal/bu;->a:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-direct {p0}, Lcom/crittercism/internal/bu;->d()J

    move-result-wide v2

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v1, v0, v2, v3, v4}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    iput-object v0, p0, Lcom/crittercism/internal/bu;->e:Ljava/util/concurrent/ScheduledFuture;
    :try_end_2
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 168
    :goto_3
    :try_start_3
    iget-object v0, p0, Lcom/crittercism/internal/bu;->e:Ljava/util/concurrent/ScheduledFuture;

    goto :goto_2

    .line 163
    :catch_0
    move-exception v0

    .line 165
    const-string v1, "Unable to schedule sending data"

    invoke-static {v1, v0}, Lcom/crittercism/internal/cc;->a(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_3

    .line 144
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method final declared-synchronized b(Z)V
    .locals 1

    .prologue
    .line 284
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/crittercism/internal/bu;->o:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v0, p1, :cond_1

    .line 293
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 288
    :cond_1
    :try_start_1
    iput-boolean p1, p0, Lcom/crittercism/internal/bu;->o:Z

    .line 290
    iget-boolean v0, p0, Lcom/crittercism/internal/bu;->o:Z

    if-eqz v0, :cond_0

    .line 291
    invoke-virtual {p0}, Lcom/crittercism/internal/bu;->b()Ljava/util/concurrent/Future;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 284
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method final declared-synchronized c()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 177
    monitor-enter p0

    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/crittercism/internal/bu;->q:J

    .line 179
    iget-boolean v2, p0, Lcom/crittercism/internal/bu;->p:Z

    if-nez v2, :cond_1

    .line 2226
    iget-object v2, p0, Lcom/crittercism/internal/bu;->i:Landroid/net/ConnectivityManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_2

    .line 179
    :cond_0
    :goto_0
    if-nez v0, :cond_4

    .line 223
    :cond_1
    :goto_1
    monitor-exit p0

    return-void

    .line 2230
    :cond_2
    :try_start_1
    iget-object v2, p0, Lcom/crittercism/internal/bu;->i:Landroid/net/ConnectivityManager;

    invoke-virtual {v2}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v2

    .line 2231
    if-eqz v2, :cond_3

    .line 2236
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getType()I

    move-result v3

    .line 2237
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v2

    .line 2239
    if-eqz v2, :cond_3

    iget-boolean v2, p0, Lcom/crittercism/internal/bu;->h:Z

    if-nez v2, :cond_0

    if-eq v3, v0, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0

    .line 183
    :cond_4
    iget-object v0, p0, Lcom/crittercism/internal/bu;->b:Lcom/crittercism/internal/av;

    invoke-interface {v0}, Lcom/crittercism/internal/av;->c()Ljava/util/List;

    move-result-object v0

    .line 186
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/crittercism/internal/bu;->d:Z

    .line 188
    invoke-interface {v0}, Ljava/util/List;->size()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v1

    if-eqz v1, :cond_1

    .line 193
    :try_start_2
    iget-object v1, p0, Lcom/crittercism/internal/bu;->m:Lcom/crittercism/internal/bv;

    iget-object v2, p0, Lcom/crittercism/internal/bu;->k:Lcom/crittercism/internal/as;

    invoke-virtual {v1, v2, v0}, Lcom/crittercism/internal/bv;->a(Lcom/crittercism/internal/as;Ljava/util/List;)Lcom/crittercism/internal/bs;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v1

    .line 203
    :try_start_3
    iget-object v2, p0, Lcom/crittercism/internal/bu;->l:Ljava/util/concurrent/ExecutorService;

    new-instance v3, Lcom/crittercism/internal/bu$2;

    invoke-direct {v3, p0, v1, v0}, Lcom/crittercism/internal/bu$2;-><init>(Lcom/crittercism/internal/bu;Lcom/crittercism/internal/bs;Ljava/util/List;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v0

    iput-object v0, p0, Lcom/crittercism/internal/bu;->f:Ljava/util/concurrent/Future;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 177
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 195
    :catch_0
    move-exception v1

    :try_start_4
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/crittercism/internal/bf;

    .line 197
    iget-object v2, p0, Lcom/crittercism/internal/bu;->b:Lcom/crittercism/internal/av;

    invoke-interface {v0}, Lcom/crittercism/internal/bf;->f()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Lcom/crittercism/internal/av;->a(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_2
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 486
    iget-object v0, p0, Lcom/crittercism/internal/bu;->r:Ljava/lang/String;

    return-object v0
.end method
