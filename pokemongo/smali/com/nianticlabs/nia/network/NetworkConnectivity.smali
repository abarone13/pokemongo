.class public Lcom/nianticlabs/nia/network/NetworkConnectivity;
.super Lcom/nianticlabs/nia/contextservice/ContextService;
.source "NetworkConnectivity.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "NetworkConnectivity"


# instance fields
.field private connectivityManager:Landroid/net/ConnectivityManager;

.field private listening:Z

.field private networkChangeReceiver:Landroid/content/BroadcastReceiver;

.field private registered:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;J)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "nativeClassPointer"    # J

    .prologue
    const/4 v1, 0x0

    .line 20
    invoke-direct {p0, p1, p2, p3}, Lcom/nianticlabs/nia/contextservice/ContextService;-><init>(Landroid/content/Context;J)V

    .line 15
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nianticlabs/nia/network/NetworkConnectivity;->connectivityManager:Landroid/net/ConnectivityManager;

    .line 16
    iput-boolean v1, p0, Lcom/nianticlabs/nia/network/NetworkConnectivity;->listening:Z

    .line 17
    iput-boolean v1, p0, Lcom/nianticlabs/nia/network/NetworkConnectivity;->registered:Z

    .line 74
    new-instance v0, Lcom/nianticlabs/nia/network/NetworkConnectivity$1;

    invoke-direct {v0, p0}, Lcom/nianticlabs/nia/network/NetworkConnectivity$1;-><init>(Lcom/nianticlabs/nia/network/NetworkConnectivity;)V

    iput-object v0, p0, Lcom/nianticlabs/nia/network/NetworkConnectivity;->networkChangeReceiver:Landroid/content/BroadcastReceiver;

    .line 21
    return-void
.end method

.method static synthetic access$000(Lcom/nianticlabs/nia/network/NetworkConnectivity;)Landroid/net/ConnectivityManager;
    .locals 1
    .param p0, "x0"    # Lcom/nianticlabs/nia/network/NetworkConnectivity;

    .prologue
    .line 13
    iget-object v0, p0, Lcom/nianticlabs/nia/network/NetworkConnectivity;->connectivityManager:Landroid/net/ConnectivityManager;

    return-object v0
.end method

.method static synthetic access$100(Lcom/nianticlabs/nia/network/NetworkConnectivity;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/nianticlabs/nia/network/NetworkConnectivity;
    .param p1, "x1"    # Z

    .prologue
    .line 13
    invoke-direct {p0, p1}, Lcom/nianticlabs/nia/network/NetworkConnectivity;->notifyNetworkStateChanged(Z)V

    return-void
.end method

.method private native nativeNotifyNetworkStateChanged(Z)V
.end method

.method private notifyNetworkStateChanged(Z)V
    .locals 2
    .param p1, "is_connected"    # Z

    .prologue
    .line 85
    iget-object v1, p0, Lcom/nianticlabs/nia/network/NetworkConnectivity;->callbackLock:Ljava/lang/Object;

    monitor-enter v1

    .line 86
    :try_start_0
    invoke-direct {p0, p1}, Lcom/nianticlabs/nia/network/NetworkConnectivity;->nativeNotifyNetworkStateChanged(Z)V

    .line 87
    monitor-exit v1

    .line 88
    return-void

    .line 87
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private registerNetworkChangeReceiver()V
    .locals 3

    .prologue
    .line 50
    iget-boolean v1, p0, Lcom/nianticlabs/nia/network/NetworkConnectivity;->registered:Z

    if-nez v1, :cond_0

    .line 51
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 52
    .local v0, "networkChanges":Landroid/content/IntentFilter;
    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 53
    invoke-virtual {p0}, Lcom/nianticlabs/nia/network/NetworkConnectivity;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/nianticlabs/nia/network/NetworkConnectivity;->networkChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 54
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/nianticlabs/nia/network/NetworkConnectivity;->registered:Z

    .line 58
    .end local v0    # "networkChanges":Landroid/content/IntentFilter;
    :goto_0
    return-void

    .line 56
    :cond_0
    const-string v1, "NetworkConnectivity"

    const-string v2, "Network change receiver already registered."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private unregisterNetworkChangeReceiver()V
    .locals 4

    .prologue
    .line 61
    iget-boolean v1, p0, Lcom/nianticlabs/nia/network/NetworkConnectivity;->registered:Z

    if-eqz v1, :cond_0

    .line 63
    :try_start_0
    invoke-virtual {p0}, Lcom/nianticlabs/nia/network/NetworkConnectivity;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/nianticlabs/nia/network/NetworkConnectivity;->networkChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 68
    :goto_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/nianticlabs/nia/network/NetworkConnectivity;->registered:Z

    .line 72
    :goto_1
    return-void

    .line 64
    :catch_0
    move-exception v0

    .line 66
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    const-string v1, "NetworkConnectivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to unregister network listener: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 70
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :cond_0
    const-string v1, "NetworkConnectivity"

    const-string v2, "Attempting to unregister network change receiver when not registered."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method


# virtual methods
.method public onStart()V
    .locals 3

    .prologue
    .line 25
    iget-object v1, p0, Lcom/nianticlabs/nia/network/NetworkConnectivity;->context:Landroid/content/Context;

    const-string v2, "android.permission.ACCESS_NETWORK_STATE"

    invoke-static {v1, v2}, Landroid/support/v4/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    .line 28
    .local v0, "res":I
    if-nez v0, :cond_1

    .line 29
    iget-object v1, p0, Lcom/nianticlabs/nia/network/NetworkConnectivity;->context:Landroid/content/Context;

    const-string v2, "connectivity"

    .line 30
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    iput-object v1, p0, Lcom/nianticlabs/nia/network/NetworkConnectivity;->connectivityManager:Landroid/net/ConnectivityManager;

    .line 31
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/nianticlabs/nia/network/NetworkConnectivity;->listening:Z

    .line 37
    :goto_0
    iget-boolean v1, p0, Lcom/nianticlabs/nia/network/NetworkConnectivity;->listening:Z

    if-eqz v1, :cond_0

    .line 38
    invoke-direct {p0}, Lcom/nianticlabs/nia/network/NetworkConnectivity;->registerNetworkChangeReceiver()V

    .line 40
    :cond_0
    return-void

    .line 33
    :cond_1
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/nianticlabs/nia/network/NetworkConnectivity;->listening:Z

    .line 34
    const-string v1, "NetworkConnectivity"

    const-string v2, "No permissions"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 44
    iget-boolean v0, p0, Lcom/nianticlabs/nia/network/NetworkConnectivity;->listening:Z

    if-eqz v0, :cond_0

    .line 45
    invoke-direct {p0}, Lcom/nianticlabs/nia/network/NetworkConnectivity;->unregisterNetworkChangeReceiver()V

    .line 47
    :cond_0
    return-void
.end method
