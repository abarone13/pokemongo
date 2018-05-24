.class Lcom/nianticlabs/nia/network/NetworkConnectivity$1;
.super Landroid/content/BroadcastReceiver;
.source "NetworkConnectivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nianticlabs/nia/network/NetworkConnectivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nianticlabs/nia/network/NetworkConnectivity;


# direct methods
.method constructor <init>(Lcom/nianticlabs/nia/network/NetworkConnectivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/nianticlabs/nia/network/NetworkConnectivity;

    .prologue
    .line 74
    iput-object p1, p0, Lcom/nianticlabs/nia/network/NetworkConnectivity$1;->this$0:Lcom/nianticlabs/nia/network/NetworkConnectivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 77
    iget-object v2, p0, Lcom/nianticlabs/nia/network/NetworkConnectivity$1;->this$0:Lcom/nianticlabs/nia/network/NetworkConnectivity;

    invoke-static {v2}, Lcom/nianticlabs/nia/network/NetworkConnectivity;->access$000(Lcom/nianticlabs/nia/network/NetworkConnectivity;)Landroid/net/ConnectivityManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 78
    .local v0, "info":Landroid/net/NetworkInfo;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    .line 80
    .local v1, "is_connected":Z
    :goto_0
    iget-object v2, p0, Lcom/nianticlabs/nia/network/NetworkConnectivity$1;->this$0:Lcom/nianticlabs/nia/network/NetworkConnectivity;

    invoke-static {v2, v1}, Lcom/nianticlabs/nia/network/NetworkConnectivity;->access$100(Lcom/nianticlabs/nia/network/NetworkConnectivity;Z)V

    .line 81
    return-void

    .line 78
    .end local v1    # "is_connected":Z
    :cond_0
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v1

    goto :goto_0
.end method
