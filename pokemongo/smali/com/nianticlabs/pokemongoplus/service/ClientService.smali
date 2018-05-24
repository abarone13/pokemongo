.class public Lcom/nianticlabs/pokemongoplus/service/ClientService;
.super Ljava/lang/Object;
.source "ClientService.java"


# static fields
.field private static final TAG:Ljava/lang/String;

.field static pgpClientBridge:Lcom/nianticlabs/pokemongoplus/bridge/ClientBridge;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 12
    const-class v0, Lcom/nianticlabs/pokemongoplus/service/ClientService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/nianticlabs/pokemongoplus/service/ClientService;->TAG:Ljava/lang/String;

    .line 13
    const/4 v0, 0x0

    sput-object v0, Lcom/nianticlabs/pokemongoplus/service/ClientService;->pgpClientBridge:Lcom/nianticlabs/pokemongoplus/bridge/ClientBridge;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    return-void
.end method

.method public static startClientService(Landroid/content/Context;Lcom/nianticlabs/pokemongoplus/bridge/ClientBridge;)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "bridge"    # Lcom/nianticlabs/pokemongoplus/bridge/ClientBridge;

    .prologue
    .line 19
    sput-object p1, Lcom/nianticlabs/pokemongoplus/service/ClientService;->pgpClientBridge:Lcom/nianticlabs/pokemongoplus/bridge/ClientBridge;

    .line 20
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 22
    .local v0, "packageName":Ljava/lang/String;
    sget-object v2, Lcom/nianticlabs/pokemongoplus/service/ClientService;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "package: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 23
    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.nianticlabs.pokemongoplus.service.BackgroundService"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 25
    invoke-virtual {v2, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    const/4 v3, 0x1

    .line 23
    invoke-virtual {p0, v2, p1, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v1

    .line 27
    .local v1, "result":Z
    if-eqz v1, :cond_0

    .line 28
    sget-object v2, Lcom/nianticlabs/pokemongoplus/service/ClientService;->TAG:Ljava/lang/String;

    const-string v3, "Started BackgroundService"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    :goto_0
    return-void

    .line 30
    :cond_0
    sget-object v2, Lcom/nianticlabs/pokemongoplus/service/ClientService;->TAG:Ljava/lang/String;

    const-string v3, "Failed to start BackgroundService"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static stopClientService(Landroid/content/Context;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 35
    sget-object v0, Lcom/nianticlabs/pokemongoplus/service/ClientService;->pgpClientBridge:Lcom/nianticlabs/pokemongoplus/bridge/ClientBridge;

    invoke-virtual {p0, v0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 36
    const/4 v0, 0x0

    sput-object v0, Lcom/nianticlabs/pokemongoplus/service/ClientService;->pgpClientBridge:Lcom/nianticlabs/pokemongoplus/bridge/ClientBridge;

    .line 37
    return-void
.end method
