.class public final Lcom/crittercism/internal/bn;
.super Lcom/crittercism/internal/bm;


# instance fields
.field private final b:Ljava/util/concurrent/ExecutorService;

.field private final c:Lcom/crittercism/internal/av;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/crittercism/internal/av",
            "<",
            "Lcom/crittercism/internal/ar;",
            ">;"
        }
    .end annotation
.end field

.field private d:Lcom/crittercism/internal/ar;

.field private e:Lcom/crittercism/internal/ap;

.field private f:Z

.field private g:Lcom/crittercism/internal/cb;

.field private h:Ljava/util/Date;


# direct methods
.method public constructor <init>(Landroid/app/Application;Ljava/util/concurrent/ExecutorService;Lcom/crittercism/internal/av;Lcom/crittercism/internal/ar;Lcom/crittercism/internal/ap;ZLcom/crittercism/internal/cb;Ljava/util/Date;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Application;",
            "Ljava/util/concurrent/ExecutorService;",
            "Lcom/crittercism/internal/av",
            "<",
            "Lcom/crittercism/internal/ar;",
            ">;",
            "Lcom/crittercism/internal/ar;",
            "Lcom/crittercism/internal/ap;",
            "Z",
            "Lcom/crittercism/internal/cb;",
            "Ljava/util/Date;",
            ")V"
        }
    .end annotation

    .prologue
    .line 43
    invoke-direct {p0, p1}, Lcom/crittercism/internal/bm;-><init>(Landroid/app/Application;)V

    .line 44
    iput-object p2, p0, Lcom/crittercism/internal/bn;->b:Ljava/util/concurrent/ExecutorService;

    .line 45
    iput-object p3, p0, Lcom/crittercism/internal/bn;->c:Lcom/crittercism/internal/av;

    .line 46
    iput-object p4, p0, Lcom/crittercism/internal/bn;->d:Lcom/crittercism/internal/ar;

    .line 47
    iput-boolean p6, p0, Lcom/crittercism/internal/bn;->f:Z

    .line 48
    iput-object p5, p0, Lcom/crittercism/internal/bn;->e:Lcom/crittercism/internal/ap;

    .line 49
    iput-object p7, p0, Lcom/crittercism/internal/bn;->g:Lcom/crittercism/internal/cb;

    .line 50
    iput-object p8, p0, Lcom/crittercism/internal/bn;->h:Ljava/util/Date;

    .line 51
    invoke-virtual {p0}, Lcom/crittercism/internal/bn;->a()V

    .line 52
    return-void
.end method

.method static synthetic a(Lcom/crittercism/internal/bn;)Lcom/crittercism/internal/ap;
    .locals 1

    .prologue
    .line 17
    iget-object v0, p0, Lcom/crittercism/internal/bn;->e:Lcom/crittercism/internal/ap;

    return-object v0
.end method

.method static synthetic b(Lcom/crittercism/internal/bn;)Lcom/crittercism/internal/av;
    .locals 1

    .prologue
    .line 17
    iget-object v0, p0, Lcom/crittercism/internal/bn;->c:Lcom/crittercism/internal/av;

    return-object v0
.end method

.method private h()V
    .locals 3

    .prologue
    .line 74
    iget-object v0, p0, Lcom/crittercism/internal/bn;->d:Lcom/crittercism/internal/ar;

    .line 76
    if-nez v0, :cond_0

    .line 94
    :goto_0
    return-void

    .line 80
    :cond_0
    iget-object v1, p0, Lcom/crittercism/internal/bn;->b:Ljava/util/concurrent/ExecutorService;

    new-instance v2, Lcom/crittercism/internal/bn$1;

    invoke-direct {v2, p0, v0}, Lcom/crittercism/internal/bn$1;-><init>(Lcom/crittercism/internal/bn;Lcom/crittercism/internal/ar;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 93
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/crittercism/internal/bn;->d:Lcom/crittercism/internal/ar;

    goto :goto_0
.end method


# virtual methods
.method public final declared-synchronized d()V
    .locals 4

    .prologue
    .line 56
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/crittercism/internal/bn;->f:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    .line 71
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 60
    :cond_1
    :try_start_1
    invoke-direct {p0}, Lcom/crittercism/internal/bn;->h()V

    .line 62
    iget-object v0, p0, Lcom/crittercism/internal/bn;->g:Lcom/crittercism/internal/cb;

    if-eqz v0, :cond_0

    .line 63
    iget-object v0, p0, Lcom/crittercism/internal/bn;->h:Ljava/util/Date;

    if-eqz v0, :cond_2

    .line 64
    iget-object v0, p0, Lcom/crittercism/internal/bn;->g:Lcom/crittercism/internal/cb;

    iget-object v1, p0, Lcom/crittercism/internal/bn;->h:Ljava/util/Date;

    .line 2284
    iget-boolean v2, v0, Lcom/crittercism/internal/cb;->e:Z

    .line 1288
    if-nez v2, :cond_2

    .line 1292
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    .line 1294
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    if-ne v2, v3, :cond_2

    .line 1298
    iget-object v2, v0, Lcom/crittercism/internal/cb;->b:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v3, Lcom/crittercism/internal/cb$3;

    invoke-direct {v3, v0, v1}, Lcom/crittercism/internal/cb$3;-><init>(Lcom/crittercism/internal/cb;Ljava/util/Date;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/ScheduledExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 1313
    invoke-static {}, Landroid/os/Looper;->myQueue()Landroid/os/MessageQueue;

    move-result-object v1

    new-instance v2, Lcom/crittercism/internal/cb$4;

    invoke-direct {v2, v0}, Lcom/crittercism/internal/cb$4;-><init>(Lcom/crittercism/internal/cb;)V

    invoke-virtual {v1, v2}, Landroid/os/MessageQueue;->addIdleHandler(Landroid/os/MessageQueue$IdleHandler;)V

    .line 68
    :cond_2
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/crittercism/internal/bn;->g:Lcom/crittercism/internal/cb;

    .line 69
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/crittercism/internal/bn;->h:Ljava/util/Date;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 56
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized g()V
    .locals 1

    .prologue
    .line 97
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/crittercism/internal/bn;->f:Z

    .line 3268
    iget-boolean v0, p0, Lcom/crittercism/internal/bm;->a:Z

    .line 99
    if-eqz v0, :cond_0

    .line 100
    invoke-direct {p0}, Lcom/crittercism/internal/bn;->h()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 102
    :cond_0
    monitor-exit p0

    return-void

    .line 97
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
