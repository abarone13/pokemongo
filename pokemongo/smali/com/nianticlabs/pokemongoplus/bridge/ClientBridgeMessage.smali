.class public Lcom/nianticlabs/pokemongoplus/bridge/ClientBridgeMessage;
.super Ljava/lang/Object;
.source "ClientBridgeMessage.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nianticlabs/pokemongoplus/bridge/ClientBridgeMessage$Action;
    }
.end annotation


# instance fields
.field public final message:Landroid/os/Message;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 29
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/nianticlabs/pokemongoplus/bridge/ClientBridgeMessage;-><init>(Landroid/os/Message;)V

    .line 30
    return-void
.end method

.method public constructor <init>(Landroid/os/Message;)V
    .locals 0
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/nianticlabs/pokemongoplus/bridge/ClientBridgeMessage;->message:Landroid/os/Message;

    .line 34
    return-void
.end method


# virtual methods
.method public getAction()Lcom/nianticlabs/pokemongoplus/bridge/ClientBridgeMessage$Action;
    .locals 2

    .prologue
    .line 56
    invoke-static {}, Lcom/nianticlabs/pokemongoplus/bridge/ClientBridgeMessage$Action;->values()[Lcom/nianticlabs/pokemongoplus/bridge/ClientBridgeMessage$Action;

    move-result-object v0

    iget-object v1, p0, Lcom/nianticlabs/pokemongoplus/bridge/ClientBridgeMessage;->message:Landroid/os/Message;

    iget v1, v1, Landroid/os/Message;->what:I

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getArg1()I
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/nianticlabs/pokemongoplus/bridge/ClientBridgeMessage;->message:Landroid/os/Message;

    iget v0, v0, Landroid/os/Message;->arg1:I

    return v0
.end method

.method public getAuthToken()[B
    .locals 2

    .prologue
    .line 88
    iget-object v0, p0, Lcom/nianticlabs/pokemongoplus/bridge/ClientBridgeMessage;->message:Landroid/os/Message;

    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "authToken"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method public getDeviceId()Ljava/lang/String;
    .locals 2

    .prologue
    .line 37
    iget-object v0, p0, Lcom/nianticlabs/pokemongoplus/bridge/ClientBridgeMessage;->message:Landroid/os/Message;

    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "deviceId"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getEncounterId()J
    .locals 2

    .prologue
    .line 47
    iget-object v0, p0, Lcom/nianticlabs/pokemongoplus/bridge/ClientBridgeMessage;->message:Landroid/os/Message;

    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "encounterId"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getHostPort()Ljava/lang/String;
    .locals 2

    .prologue
    .line 79
    iget-object v0, p0, Lcom/nianticlabs/pokemongoplus/bridge/ClientBridgeMessage;->message:Landroid/os/Message;

    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "hostPort"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNotifications()I
    .locals 2

    .prologue
    .line 97
    iget-object v0, p0, Lcom/nianticlabs/pokemongoplus/bridge/ClientBridgeMessage;->message:Landroid/os/Message;

    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "notifications"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getProductName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 106
    iget-object v0, p0, Lcom/nianticlabs/pokemongoplus/bridge/ClientBridgeMessage;->message:Landroid/os/Message;

    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "productName"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getProductVersion()Ljava/lang/String;
    .locals 2

    .prologue
    .line 115
    iget-object v0, p0, Lcom/nianticlabs/pokemongoplus/bridge/ClientBridgeMessage;->message:Landroid/os/Message;

    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "productVersion"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setAction(Lcom/nianticlabs/pokemongoplus/bridge/ClientBridgeMessage$Action;)Lcom/nianticlabs/pokemongoplus/bridge/ClientBridgeMessage;
    .locals 2
    .param p1, "action"    # Lcom/nianticlabs/pokemongoplus/bridge/ClientBridgeMessage$Action;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/nianticlabs/pokemongoplus/bridge/ClientBridgeMessage;->message:Landroid/os/Message;

    invoke-virtual {p1}, Lcom/nianticlabs/pokemongoplus/bridge/ClientBridgeMessage$Action;->ordinal()I

    move-result v1

    iput v1, v0, Landroid/os/Message;->what:I

    .line 61
    return-object p0
.end method

.method public setArg1(I)Lcom/nianticlabs/pokemongoplus/bridge/ClientBridgeMessage;
    .locals 1
    .param p1, "arg1"    # I

    .prologue
    .line 65
    iget-object v0, p0, Lcom/nianticlabs/pokemongoplus/bridge/ClientBridgeMessage;->message:Landroid/os/Message;

    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 66
    return-object p0
.end method

.method public setAuthToken([B)Lcom/nianticlabs/pokemongoplus/bridge/ClientBridgeMessage;
    .locals 2
    .param p1, "authToken"    # [B

    .prologue
    .line 83
    iget-object v0, p0, Lcom/nianticlabs/pokemongoplus/bridge/ClientBridgeMessage;->message:Landroid/os/Message;

    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "authToken"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 84
    return-object p0
.end method

.method public setDeviceId(Ljava/lang/String;)Lcom/nianticlabs/pokemongoplus/bridge/ClientBridgeMessage;
    .locals 2
    .param p1, "deviceId"    # Ljava/lang/String;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/nianticlabs/pokemongoplus/bridge/ClientBridgeMessage;->message:Landroid/os/Message;

    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "deviceId"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    return-object p0
.end method

.method public setEncounterId(J)Lcom/nianticlabs/pokemongoplus/bridge/ClientBridgeMessage;
    .locals 3
    .param p1, "encounterId"    # J

    .prologue
    .line 51
    iget-object v0, p0, Lcom/nianticlabs/pokemongoplus/bridge/ClientBridgeMessage;->message:Landroid/os/Message;

    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "encounterId"

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 52
    return-object p0
.end method

.method public setHostPort(Ljava/lang/String;)Lcom/nianticlabs/pokemongoplus/bridge/ClientBridgeMessage;
    .locals 2
    .param p1, "hostPort"    # Ljava/lang/String;

    .prologue
    .line 74
    iget-object v0, p0, Lcom/nianticlabs/pokemongoplus/bridge/ClientBridgeMessage;->message:Landroid/os/Message;

    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "hostPort"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    return-object p0
.end method

.method public setNotifications(I)Lcom/nianticlabs/pokemongoplus/bridge/ClientBridgeMessage;
    .locals 2
    .param p1, "notifications"    # I

    .prologue
    .line 92
    iget-object v0, p0, Lcom/nianticlabs/pokemongoplus/bridge/ClientBridgeMessage;->message:Landroid/os/Message;

    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "notifications"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 93
    return-object p0
.end method

.method public setProductName(Ljava/lang/String;)Lcom/nianticlabs/pokemongoplus/bridge/ClientBridgeMessage;
    .locals 2
    .param p1, "productName"    # Ljava/lang/String;

    .prologue
    .line 101
    iget-object v0, p0, Lcom/nianticlabs/pokemongoplus/bridge/ClientBridgeMessage;->message:Landroid/os/Message;

    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "productName"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    return-object p0
.end method

.method public setProductVersion(Ljava/lang/String;)Lcom/nianticlabs/pokemongoplus/bridge/ClientBridgeMessage;
    .locals 2
    .param p1, "productVersion"    # Ljava/lang/String;

    .prologue
    .line 110
    iget-object v0, p0, Lcom/nianticlabs/pokemongoplus/bridge/ClientBridgeMessage;->message:Landroid/os/Message;

    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "productVersion"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    return-object p0
.end method
