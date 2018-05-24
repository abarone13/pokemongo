.class final Lcom/crittercism/internal/bu$3;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/crittercism/internal/bu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Lcom/crittercism/internal/bu;


# direct methods
.method constructor <init>(Lcom/crittercism/internal/bu;Ljava/util/List;)V
    .locals 0

    .prologue
    .line 243
    iput-object p1, p0, Lcom/crittercism/internal/bu$3;->b:Lcom/crittercism/internal/bu;

    iput-object p2, p0, Lcom/crittercism/internal/bu$3;->a:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 246
    iget-object v0, p0, Lcom/crittercism/internal/bu$3;->b:Lcom/crittercism/internal/bu;

    .line 1034
    iget-object v0, v0, Lcom/crittercism/internal/bu;->b:Lcom/crittercism/internal/av;

    .line 246
    iget-object v1, p0, Lcom/crittercism/internal/bu$3;->a:Ljava/util/List;

    invoke-interface {v0, v1}, Lcom/crittercism/internal/av;->a(Ljava/util/List;)V

    .line 247
    iget-object v0, p0, Lcom/crittercism/internal/bu$3;->b:Lcom/crittercism/internal/bu;

    .line 2034
    const/4 v1, 0x0

    iput-object v1, v0, Lcom/crittercism/internal/bu;->g:Ljava/util/concurrent/Future;

    .line 248
    return-void
.end method
