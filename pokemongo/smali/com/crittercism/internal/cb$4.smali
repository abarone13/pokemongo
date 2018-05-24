.class public final Lcom/crittercism/internal/cb$4;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/MessageQueue$IdleHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/crittercism/internal/cb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/crittercism/internal/cb;

.field private b:Z


# direct methods
.method public constructor <init>(Lcom/crittercism/internal/cb;)V
    .locals 1

    .prologue
    .line 313
    iput-object p1, p0, Lcom/crittercism/internal/cb$4;->a:Lcom/crittercism/internal/cb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 315
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/crittercism/internal/cb$4;->b:Z

    return-void
.end method


# virtual methods
.method public final queueIdle()Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 319
    iget-boolean v0, p0, Lcom/crittercism/internal/cb$4;->b:Z

    if-eqz v0, :cond_0

    .line 332
    :goto_0
    return v2

    .line 323
    :cond_0
    iput-boolean v2, p0, Lcom/crittercism/internal/cb$4;->b:Z

    .line 325
    iget-object v0, p0, Lcom/crittercism/internal/cb$4;->a:Lcom/crittercism/internal/cb;

    .line 1034
    iget-object v0, v0, Lcom/crittercism/internal/cb;->b:Ljava/util/concurrent/ScheduledExecutorService;

    .line 325
    new-instance v1, Lcom/crittercism/internal/cb$4$1;

    invoke-direct {v1, p0}, Lcom/crittercism/internal/cb$4$1;-><init>(Lcom/crittercism/internal/cb$4;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    goto :goto_0
.end method
