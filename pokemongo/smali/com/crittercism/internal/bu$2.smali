.class final Lcom/crittercism/internal/bu$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/crittercism/internal/bu;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/crittercism/internal/bs;

.field final synthetic b:Ljava/util/List;

.field final synthetic c:Lcom/crittercism/internal/bu;


# direct methods
.method constructor <init>(Lcom/crittercism/internal/bu;Lcom/crittercism/internal/bs;Ljava/util/List;)V
    .locals 0

    .prologue
    .line 203
    iput-object p1, p0, Lcom/crittercism/internal/bu$2;->c:Lcom/crittercism/internal/bu;

    iput-object p2, p0, Lcom/crittercism/internal/bu$2;->a:Lcom/crittercism/internal/bs;

    iput-object p3, p0, Lcom/crittercism/internal/bu$2;->b:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 206
    iget-object v2, p0, Lcom/crittercism/internal/bu$2;->a:Lcom/crittercism/internal/bs;

    invoke-virtual {v2}, Lcom/crittercism/internal/bs;->a()Lcom/crittercism/internal/bt;

    move-result-object v3

    .line 1042
    iget v2, v3, Lcom/crittercism/internal/bt;->a:I

    const/16 v4, 0xc8

    if-lt v2, v4, :cond_6

    iget v2, v3, Lcom/crittercism/internal/bt;->a:I

    const/16 v4, 0x12c

    if-ge v2, v4, :cond_6

    move v2, v1

    .line 208
    :goto_0
    if-nez v2, :cond_2

    .line 1046
    iget v2, v3, Lcom/crittercism/internal/bt;->a:I

    const/16 v4, 0x1f4

    if-ge v2, v4, :cond_0

    .line 2038
    iget-object v2, v3, Lcom/crittercism/internal/bt;->c:Ljava/lang/Exception;

    instance-of v2, v2, Ljava/net/SocketTimeoutException;

    .line 1046
    if-eqz v2, :cond_1

    :cond_0
    move v0, v1

    .line 208
    :cond_1
    if-nez v0, :cond_3

    .line 209
    :cond_2
    iget-object v0, p0, Lcom/crittercism/internal/bu$2;->c:Lcom/crittercism/internal/bu;

    iget-object v1, p0, Lcom/crittercism/internal/bu$2;->b:Ljava/util/List;

    .line 3243
    iget-object v2, v0, Lcom/crittercism/internal/bu;->a:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v4, Lcom/crittercism/internal/bu$3;

    invoke-direct {v4, v0, v1}, Lcom/crittercism/internal/bu$3;-><init>(Lcom/crittercism/internal/bu;Ljava/util/List;)V

    invoke-interface {v2, v4}, Ljava/util/concurrent/ScheduledExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v1

    iput-object v1, v0, Lcom/crittercism/internal/bu;->g:Ljava/util/concurrent/Future;

    .line 212
    :cond_3
    iget-object v0, p0, Lcom/crittercism/internal/bu$2;->c:Lcom/crittercism/internal/bu;

    .line 4034
    iget-object v0, v0, Lcom/crittercism/internal/bu;->c:Lcom/crittercism/internal/bu$a;

    .line 212
    if-eqz v0, :cond_4

    .line 213
    iget-object v0, p0, Lcom/crittercism/internal/bu$2;->c:Lcom/crittercism/internal/bu;

    .line 5034
    iget-object v0, v0, Lcom/crittercism/internal/bu;->c:Lcom/crittercism/internal/bu$a;

    .line 213
    invoke-interface {v0, v3}, Lcom/crittercism/internal/bu$a;->a(Lcom/crittercism/internal/bt;)V

    .line 216
    :cond_4
    iget-object v0, p0, Lcom/crittercism/internal/bu$2;->c:Lcom/crittercism/internal/bu;

    .line 6034
    const/4 v1, 0x0

    iput-object v1, v0, Lcom/crittercism/internal/bu;->f:Ljava/util/concurrent/Future;

    .line 218
    iget-object v0, p0, Lcom/crittercism/internal/bu$2;->c:Lcom/crittercism/internal/bu;

    .line 7034
    iget-boolean v0, v0, Lcom/crittercism/internal/bu;->d:Z

    .line 218
    if-eqz v0, :cond_5

    .line 219
    iget-object v0, p0, Lcom/crittercism/internal/bu$2;->c:Lcom/crittercism/internal/bu;

    invoke-virtual {v0}, Lcom/crittercism/internal/bu;->b()Ljava/util/concurrent/Future;

    .line 221
    :cond_5
    return-void

    :cond_6
    move v2, v0

    .line 1042
    goto :goto_0
.end method
