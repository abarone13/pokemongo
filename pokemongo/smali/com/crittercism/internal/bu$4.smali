.class public final Lcom/crittercism/internal/bu$4;
.super Landroid/net/ConnectivityManager$NetworkCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/crittercism/internal/bu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/crittercism/internal/bu;


# direct methods
.method public constructor <init>(Lcom/crittercism/internal/bu;)V
    .locals 0

    .prologue
    .line 420
    iput-object p1, p0, Lcom/crittercism/internal/bu$4;->a:Lcom/crittercism/internal/bu;

    invoke-direct {p0}, Landroid/net/ConnectivityManager$NetworkCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAvailable(Landroid/net/Network;)V
    .locals 1
    .param p1, "network"    # Landroid/net/Network;

    .prologue
    .line 424
    iget-object v0, p0, Lcom/crittercism/internal/bu$4;->a:Lcom/crittercism/internal/bu;

    .line 1034
    iget-boolean v0, v0, Lcom/crittercism/internal/bu;->d:Z

    .line 424
    if-eqz v0, :cond_0

    .line 425
    iget-object v0, p0, Lcom/crittercism/internal/bu$4;->a:Lcom/crittercism/internal/bu;

    invoke-virtual {v0}, Lcom/crittercism/internal/bu;->b()Ljava/util/concurrent/Future;

    .line 427
    :cond_0
    return-void
.end method

.method public final onCapabilitiesChanged(Landroid/net/Network;Landroid/net/NetworkCapabilities;)V
    .locals 0
    .param p1, "network"    # Landroid/net/Network;
    .param p2, "networkCapabilities"    # Landroid/net/NetworkCapabilities;

    .prologue
    .line 438
    return-void
.end method

.method public final onLinkPropertiesChanged(Landroid/net/Network;Landroid/net/LinkProperties;)V
    .locals 0
    .param p1, "network"    # Landroid/net/Network;
    .param p2, "linkProperties"    # Landroid/net/LinkProperties;

    .prologue
    .line 441
    return-void
.end method

.method public final onLosing(Landroid/net/Network;I)V
    .locals 2
    .param p1, "network"    # Landroid/net/Network;
    .param p2, "maxMsToLive"    # I

    .prologue
    .line 431
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onLosing: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/crittercism/internal/cc;->d(Ljava/lang/String;)V

    .line 432
    return-void
.end method

.method public final onLost(Landroid/net/Network;)V
    .locals 0
    .param p1, "network"    # Landroid/net/Network;

    .prologue
    .line 435
    return-void
.end method
