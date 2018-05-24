.class final Lcom/crittercism/internal/cb$4$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/crittercism/internal/cb$4;->queueIdle()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/crittercism/internal/cb$4;


# direct methods
.method constructor <init>(Lcom/crittercism/internal/cb$4;)V
    .locals 0

    .prologue
    .line 325
    iput-object p1, p0, Lcom/crittercism/internal/cb$4$1;->a:Lcom/crittercism/internal/cb$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 328
    iget-object v0, p0, Lcom/crittercism/internal/cb$4$1;->a:Lcom/crittercism/internal/cb$4;

    iget-object v0, v0, Lcom/crittercism/internal/cb$4;->a:Lcom/crittercism/internal/cb;

    const-string v1, "App Load"

    invoke-virtual {v0, v1}, Lcom/crittercism/internal/cb;->a(Ljava/lang/String;)V

    .line 329
    return-void
.end method
