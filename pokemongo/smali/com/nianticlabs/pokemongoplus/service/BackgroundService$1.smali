.class Lcom/nianticlabs/pokemongoplus/service/BackgroundService$1;
.super Landroid/os/Handler;
.source "BackgroundService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nianticlabs/pokemongoplus/service/BackgroundService;->onCreate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nianticlabs/pokemongoplus/service/BackgroundService;


# direct methods
.method constructor <init>(Lcom/nianticlabs/pokemongoplus/service/BackgroundService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/nianticlabs/pokemongoplus/service/BackgroundService;

    .prologue
    .line 106
    iput-object p1, p0, Lcom/nianticlabs/pokemongoplus/service/BackgroundService$1;->this$0:Lcom/nianticlabs/pokemongoplus/service/BackgroundService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    .line 109
    new-instance v1, Lcom/nianticlabs/pokemongoplus/bridge/ClientBridgeMessage;

    invoke-direct {v1, p1}, Lcom/nianticlabs/pokemongoplus/bridge/ClientBridgeMessage;-><init>(Landroid/os/Message;)V

    .line 110
    .local v1, "bridgeMessage":Lcom/nianticlabs/pokemongoplus/bridge/ClientBridgeMessage;
    invoke-virtual {v1}, Lcom/nianticlabs/pokemongoplus/bridge/ClientBridgeMessage;->getAction()Lcom/nianticlabs/pokemongoplus/bridge/ClientBridgeMessage$Action;

    move-result-object v0

    .line 111
    .local v0, "action":Lcom/nianticlabs/pokemongoplus/bridge/ClientBridgeMessage$Action;
    iget-object v2, p0, Lcom/nianticlabs/pokemongoplus/service/BackgroundService$1;->this$0:Lcom/nianticlabs/pokemongoplus/service/BackgroundService;

    invoke-static {v2}, Lcom/nianticlabs/pokemongoplus/service/BackgroundService;->access$000(Lcom/nianticlabs/pokemongoplus/service/BackgroundService;)Lcom/nianticlabs/pokemongoplus/bridge/BackgroundBridge;

    move-result-object v2

    if-nez v2, :cond_0

    .line 112
    iget-object v2, p0, Lcom/nianticlabs/pokemongoplus/service/BackgroundService$1;->this$0:Lcom/nianticlabs/pokemongoplus/service/BackgroundService;

    iget-object v3, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    invoke-static {v2, v3}, Lcom/nianticlabs/pokemongoplus/service/BackgroundService;->access$102(Lcom/nianticlabs/pokemongoplus/service/BackgroundService;Landroid/os/Messenger;)Landroid/os/Messenger;

    .line 113
    iget-object v2, p0, Lcom/nianticlabs/pokemongoplus/service/BackgroundService$1;->this$0:Lcom/nianticlabs/pokemongoplus/service/BackgroundService;

    invoke-virtual {v2}, Lcom/nianticlabs/pokemongoplus/service/BackgroundService;->initBackgroundBridge()V

    .line 115
    const/4 v2, 0x0

    invoke-static {v2}, Lcom/nianticlabs/pokemongoplus/service/BackgroundService;->access$202(Z)Z

    .line 117
    :cond_0
    iget-object v2, p0, Lcom/nianticlabs/pokemongoplus/service/BackgroundService$1;->this$0:Lcom/nianticlabs/pokemongoplus/service/BackgroundService;

    invoke-static {v2}, Lcom/nianticlabs/pokemongoplus/service/BackgroundService;->access$000(Lcom/nianticlabs/pokemongoplus/service/BackgroundService;)Lcom/nianticlabs/pokemongoplus/bridge/BackgroundBridge;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/nianticlabs/pokemongoplus/bridge/BackgroundBridge;->onClientMessage(Lcom/nianticlabs/pokemongoplus/bridge/ClientBridgeMessage;)V

    .line 118
    return-void
.end method
