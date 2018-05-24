.class final Lcom/crittercism/internal/bu$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/crittercism/internal/bu;->b()Ljava/util/concurrent/Future;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/crittercism/internal/bu;


# direct methods
.method constructor <init>(Lcom/crittercism/internal/bu;)V
    .locals 0

    .prologue
    .line 153
    iput-object p1, p0, Lcom/crittercism/internal/bu$1;->a:Lcom/crittercism/internal/bu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 156
    iget-object v0, p0, Lcom/crittercism/internal/bu$1;->a:Lcom/crittercism/internal/bu;

    .line 1034
    invoke-virtual {v0}, Lcom/crittercism/internal/bu;->c()V

    .line 157
    iget-object v0, p0, Lcom/crittercism/internal/bu$1;->a:Lcom/crittercism/internal/bu;

    .line 2034
    const/4 v1, 0x0

    iput-object v1, v0, Lcom/crittercism/internal/bu;->e:Ljava/util/concurrent/ScheduledFuture;

    .line 158
    return-void
.end method
