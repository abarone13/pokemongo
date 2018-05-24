.class final Lcom/crittercism/internal/bp$a;
.super Landroid/net/ConnectivityManager$NetworkCallback;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x15
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/crittercism/internal/bp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/crittercism/internal/bp;


# direct methods
.method private constructor <init>(Lcom/crittercism/internal/bp;)V
    .locals 0

    .prologue
    .line 183
    iput-object p1, p0, Lcom/crittercism/internal/bp$a;->a:Lcom/crittercism/internal/bp;

    invoke-direct {p0}, Landroid/net/ConnectivityManager$NetworkCallback;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/crittercism/internal/bp;B)V
    .locals 0

    .prologue
    .line 183
    invoke-direct {p0, p1}, Lcom/crittercism/internal/bp$a;-><init>(Lcom/crittercism/internal/bp;)V

    return-void
.end method


# virtual methods
.method public final onAvailable(Landroid/net/Network;)V
    .locals 1
    .param p1, "network"    # Landroid/net/Network;

    .prologue
    .line 203
    iget-object v0, p0, Lcom/crittercism/internal/bp$a;->a:Lcom/crittercism/internal/bp;

    invoke-static {v0}, Lcom/crittercism/internal/bp;->a(Lcom/crittercism/internal/bp;)V

    .line 204
    return-void
.end method

.method public final onCapabilitiesChanged(Landroid/net/Network;Landroid/net/NetworkCapabilities;)V
    .locals 0
    .param p1, "network"    # Landroid/net/Network;
    .param p2, "networkCapabilities"    # Landroid/net/NetworkCapabilities;

    .prologue
    .line 190
    return-void
.end method

.method public final onLinkPropertiesChanged(Landroid/net/Network;Landroid/net/LinkProperties;)V
    .locals 0
    .param p1, "network"    # Landroid/net/Network;
    .param p2, "linkProperties"    # Landroid/net/LinkProperties;

    .prologue
    .line 186
    return-void
.end method

.method public final onLosing(Landroid/net/Network;I)V
    .locals 0
    .param p1, "network"    # Landroid/net/Network;
    .param p2, "maxMsToLive"    # I

    .prologue
    .line 199
    return-void
.end method

.method public final onLost(Landroid/net/Network;)V
    .locals 1
    .param p1, "network"    # Landroid/net/Network;

    .prologue
    .line 194
    iget-object v0, p0, Lcom/crittercism/internal/bp$a;->a:Lcom/crittercism/internal/bp;

    invoke-static {v0}, Lcom/crittercism/internal/bp;->a(Lcom/crittercism/internal/bp;)V

    .line 195
    return-void
.end method
