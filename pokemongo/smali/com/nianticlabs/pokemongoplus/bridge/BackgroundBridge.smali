.class public Lcom/nianticlabs/pokemongoplus/bridge/BackgroundBridge;
.super Ljava/lang/Object;
.source "BackgroundBridge.java"


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static currentContext:Landroid/content/Context;

.field private static messageHandler:Lcom/nianticlabs/pokemongoplus/bridge/BackgroundBridgeMessage$MessageHandler;


# instance fields
.field private nativeHandle:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 10
    const-class v0, Lcom/nianticlabs/pokemongoplus/bridge/BackgroundBridge;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/nianticlabs/pokemongoplus/bridge/BackgroundBridge;->TAG:Ljava/lang/String;

    return-void
.end method

.method protected constructor <init>()V
    .locals 2

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    sget-object v0, Lcom/nianticlabs/pokemongoplus/bridge/BackgroundBridge;->currentContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/nianticlabs/pokemongoplus/bridge/BackgroundBridge;->initialize(Landroid/content/Context;)V

    .line 15
    sget-object v0, Lcom/nianticlabs/pokemongoplus/bridge/BackgroundBridge;->TAG:Ljava/lang/String;

    const-string v1, "Initialize();"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 16
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 7
    sget-object v0, Lcom/nianticlabs/pokemongoplus/bridge/BackgroundBridge;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100()Lcom/nianticlabs/pokemongoplus/bridge/BackgroundBridgeMessage$MessageHandler;
    .locals 1

    .prologue
    .line 7
    sget-object v0, Lcom/nianticlabs/pokemongoplus/bridge/BackgroundBridge;->messageHandler:Lcom/nianticlabs/pokemongoplus/bridge/BackgroundBridgeMessage$MessageHandler;

    return-object v0
.end method

.method public static createBridge(Landroid/content/Context;Lcom/nianticlabs/pokemongoplus/bridge/BackgroundBridgeMessage$MessageHandler;)Lcom/nianticlabs/pokemongoplus/bridge/BackgroundBridge;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "messageHandler"    # Lcom/nianticlabs/pokemongoplus/bridge/BackgroundBridgeMessage$MessageHandler;

    .prologue
    .line 24
    sput-object p0, Lcom/nianticlabs/pokemongoplus/bridge/BackgroundBridge;->currentContext:Landroid/content/Context;

    .line 25
    sput-object p1, Lcom/nianticlabs/pokemongoplus/bridge/BackgroundBridge;->messageHandler:Lcom/nianticlabs/pokemongoplus/bridge/BackgroundBridgeMessage$MessageHandler;

    .line 26
    sget-object v1, Lcom/nianticlabs/pokemongoplus/bridge/BackgroundBridge;->TAG:Ljava/lang/String;

    const-class v2, Lcom/nianticlabs/pokemongoplus/bridge/BackgroundBridge;

    invoke-virtual {v2}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    invoke-static {}, Lcom/nianticlabs/pokemongoplus/bridge/BackgroundBridge;->nativeInit()V

    .line 28
    sget-object v1, Lcom/nianticlabs/pokemongoplus/bridge/BackgroundBridge;->TAG:Ljava/lang/String;

    const-string v2, "BackgroundBridge createBridge"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    new-instance v0, Lcom/nianticlabs/pokemongoplus/bridge/BackgroundBridge;

    invoke-direct {v0}, Lcom/nianticlabs/pokemongoplus/bridge/BackgroundBridge;-><init>()V

    .line 30
    .local v0, "pgpwrap":Lcom/nianticlabs/pokemongoplus/bridge/BackgroundBridge;
    sget-object v1, Lcom/nianticlabs/pokemongoplus/bridge/BackgroundBridge;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "new BackgroundBridge "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    return-object v0
.end method

.method public static getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 19
    sget-object v0, Lcom/nianticlabs/pokemongoplus/bridge/BackgroundBridge;->currentContext:Landroid/content/Context;

    return-object v0
.end method

.method private native initialize(Landroid/content/Context;)V
.end method

.method public static native nativeInit()V
.end method

.method public static sendBatteryLevel(D)V
    .locals 2
    .param p0, "batteryLevel"    # D

    .prologue
    .line 127
    new-instance v0, Lcom/nianticlabs/pokemongoplus/bridge/BackgroundBridgeMessage;

    invoke-direct {v0}, Lcom/nianticlabs/pokemongoplus/bridge/BackgroundBridgeMessage;-><init>()V

    sget-object v1, Lcom/nianticlabs/pokemongoplus/bridge/BackgroundBridgeMessage$Action;->BATTERY_LEVEL_ACTION:Lcom/nianticlabs/pokemongoplus/bridge/BackgroundBridgeMessage$Action;

    .line 128
    invoke-virtual {v0, v1}, Lcom/nianticlabs/pokemongoplus/bridge/BackgroundBridgeMessage;->setAction(Lcom/nianticlabs/pokemongoplus/bridge/BackgroundBridgeMessage$Action;)Lcom/nianticlabs/pokemongoplus/bridge/BackgroundBridgeMessage;

    move-result-object v0

    .line 129
    invoke-virtual {v0, p0, p1}, Lcom/nianticlabs/pokemongoplus/bridge/BackgroundBridgeMessage;->setBatteryLevel(D)Lcom/nianticlabs/pokemongoplus/bridge/BackgroundBridgeMessage;

    move-result-object v0

    .line 127
    invoke-static {v0}, Lcom/nianticlabs/pokemongoplus/bridge/BackgroundBridge;->sendMessage(Lcom/nianticlabs/pokemongoplus/bridge/BackgroundBridgeMessage;)V

    .line 130
    return-void
.end method

.method public static sendCentralState(I)V
    .locals 2
    .param p0, "state"    # I

    .prologue
    .line 96
    new-instance v0, Lcom/nianticlabs/pokemongoplus/bridge/BackgroundBridgeMessage;

    invoke-direct {v0}, Lcom/nianticlabs/pokemongoplus/bridge/BackgroundBridgeMessage;-><init>()V

    sget-object v1, Lcom/nianticlabs/pokemongoplus/bridge/BackgroundBridgeMessage$Action;->CENTRAL_STATE_ACTION:Lcom/nianticlabs/pokemongoplus/bridge/BackgroundBridgeMessage$Action;

    .line 97
    invoke-virtual {v0, v1}, Lcom/nianticlabs/pokemongoplus/bridge/BackgroundBridgeMessage;->setAction(Lcom/nianticlabs/pokemongoplus/bridge/BackgroundBridgeMessage$Action;)Lcom/nianticlabs/pokemongoplus/bridge/BackgroundBridgeMessage;

    move-result-object v0

    .line 98
    invoke-virtual {v0, p0}, Lcom/nianticlabs/pokemongoplus/bridge/BackgroundBridgeMessage;->setArg1(I)Lcom/nianticlabs/pokemongoplus/bridge/BackgroundBridgeMessage;

    move-result-object v0

    .line 96
    invoke-static {v0}, Lcom/nianticlabs/pokemongoplus/bridge/BackgroundBridge;->sendMessage(Lcom/nianticlabs/pokemongoplus/bridge/BackgroundBridgeMessage;)V

    .line 99
    return-void
.end method

.method public static sendEncounterId(J)V
    .locals 2
    .param p0, "encounterId"    # J

    .prologue
    .line 84
    new-instance v0, Lcom/nianticlabs/pokemongoplus/bridge/BackgroundBridgeMessage;

    invoke-direct {v0}, Lcom/nianticlabs/pokemongoplus/bridge/BackgroundBridgeMessage;-><init>()V

    sget-object v1, Lcom/nianticlabs/pokemongoplus/bridge/BackgroundBridgeMessage$Action;->ENCOUNTER_ID_ACTION:Lcom/nianticlabs/pokemongoplus/bridge/BackgroundBridgeMessage$Action;

    .line 85
    invoke-virtual {v0, v1}, Lcom/nianticlabs/pokemongoplus/bridge/BackgroundBridgeMessage;->setAction(Lcom/nianticlabs/pokemongoplus/bridge/BackgroundBridgeMessage$Action;)Lcom/nianticlabs/pokemongoplus/bridge/BackgroundBridgeMessage;

    move-result-object v0

    .line 86
    invoke-virtual {v0, p0, p1}, Lcom/nianticlabs/pokemongoplus/bridge/BackgroundBridgeMessage;->setEncounterId(J)Lcom/nianticlabs/pokemongoplus/bridge/BackgroundBridgeMessage;

    move-result-object v0

    .line 84
    invoke-static {v0}, Lcom/nianticlabs/pokemongoplus/bridge/BackgroundBridge;->sendMessage(Lcom/nianticlabs/pokemongoplus/bridge/BackgroundBridgeMessage;)V

    .line 87
    return-void
.end method

.method public static sendIsScanning(I)V
    .locals 2
    .param p0, "isScanning"    # I

    .prologue
    .line 109
    new-instance v0, Lcom/nianticlabs/pokemongoplus/bridge/BackgroundBridgeMessage;

    invoke-direct {v0}, Lcom/nianticlabs/pokemongoplus/bridge/BackgroundBridgeMessage;-><init>()V

    sget-object v1, Lcom/nianticlabs/pokemongoplus/bridge/BackgroundBridgeMessage$Action;->IS_SCANNING_ACTION:Lcom/nianticlabs/pokemongoplus/bridge/BackgroundBridgeMessage$Action;

    .line 110
    invoke-virtual {v0, v1}, Lcom/nianticlabs/pokemongoplus/bridge/BackgroundBridgeMessage;->setAction(Lcom/nianticlabs/pokemongoplus/bridge/BackgroundBridgeMessage$Action;)Lcom/nianticlabs/pokemongoplus/bridge/BackgroundBridgeMessage;

    move-result-object v0

    .line 111
    invoke-virtual {v0, p0}, Lcom/nianticlabs/pokemongoplus/bridge/BackgroundBridgeMessage;->setArg1(I)Lcom/nianticlabs/pokemongoplus/bridge/BackgroundBridgeMessage;

    move-result-object v0

    .line 109
    invoke-static {v0}, Lcom/nianticlabs/pokemongoplus/bridge/BackgroundBridge;->sendMessage(Lcom/nianticlabs/pokemongoplus/bridge/BackgroundBridgeMessage;)V

    .line 112
    return-void
.end method

.method private static sendMessage(Lcom/nianticlabs/pokemongoplus/bridge/BackgroundBridgeMessage;)V
    .locals 2
    .param p0, "message"    # Lcom/nianticlabs/pokemongoplus/bridge/BackgroundBridgeMessage;

    .prologue
    .line 61
    new-instance v0, Landroid/os/Handler;

    sget-object v1, Lcom/nianticlabs/pokemongoplus/bridge/BackgroundBridge;->currentContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 62
    .local v0, "mainHandler":Landroid/os/Handler;
    new-instance v1, Lcom/nianticlabs/pokemongoplus/bridge/BackgroundBridge$1;

    invoke-direct {v1, p0}, Lcom/nianticlabs/pokemongoplus/bridge/BackgroundBridge$1;-><init>(Lcom/nianticlabs/pokemongoplus/bridge/BackgroundBridgeMessage;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 69
    return-void
.end method

.method public static sendNotification(ILjava/lang/String;)V
    .locals 2
    .param p0, "messageId"    # I
    .param p1, "arg"    # Ljava/lang/String;

    .prologue
    .line 133
    new-instance v0, Lcom/nianticlabs/pokemongoplus/bridge/BackgroundBridgeMessage;

    invoke-direct {v0}, Lcom/nianticlabs/pokemongoplus/bridge/BackgroundBridgeMessage;-><init>()V

    sget-object v1, Lcom/nianticlabs/pokemongoplus/bridge/BackgroundBridgeMessage$Action;->SEND_NOTIFICATION_ACTION:Lcom/nianticlabs/pokemongoplus/bridge/BackgroundBridgeMessage$Action;

    .line 134
    invoke-virtual {v0, v1}, Lcom/nianticlabs/pokemongoplus/bridge/BackgroundBridgeMessage;->setAction(Lcom/nianticlabs/pokemongoplus/bridge/BackgroundBridgeMessage$Action;)Lcom/nianticlabs/pokemongoplus/bridge/BackgroundBridgeMessage;

    move-result-object v0

    .line 135
    invoke-virtual {v0, p0}, Lcom/nianticlabs/pokemongoplus/bridge/BackgroundBridgeMessage;->setArg1(I)Lcom/nianticlabs/pokemongoplus/bridge/BackgroundBridgeMessage;

    move-result-object v0

    .line 136
    invoke-virtual {v0, p1}, Lcom/nianticlabs/pokemongoplus/bridge/BackgroundBridgeMessage;->setNotification(Ljava/lang/String;)Lcom/nianticlabs/pokemongoplus/bridge/BackgroundBridgeMessage;

    move-result-object v0

    .line 133
    invoke-static {v0}, Lcom/nianticlabs/pokemongoplus/bridge/BackgroundBridge;->sendMessage(Lcom/nianticlabs/pokemongoplus/bridge/BackgroundBridgeMessage;)V

    .line 137
    return-void
.end method

.method public static sendPluginState(I)V
    .locals 2
    .param p0, "state"    # I

    .prologue
    .line 121
    new-instance v0, Lcom/nianticlabs/pokemongoplus/bridge/BackgroundBridgeMessage;

    invoke-direct {v0}, Lcom/nianticlabs/pokemongoplus/bridge/BackgroundBridgeMessage;-><init>()V

    sget-object v1, Lcom/nianticlabs/pokemongoplus/bridge/BackgroundBridgeMessage$Action;->PLUGIN_STATE_ACTION:Lcom/nianticlabs/pokemongoplus/bridge/BackgroundBridgeMessage$Action;

    .line 122
    invoke-virtual {v0, v1}, Lcom/nianticlabs/pokemongoplus/bridge/BackgroundBridgeMessage;->setAction(Lcom/nianticlabs/pokemongoplus/bridge/BackgroundBridgeMessage$Action;)Lcom/nianticlabs/pokemongoplus/bridge/BackgroundBridgeMessage;

    move-result-object v0

    .line 123
    invoke-virtual {v0, p0}, Lcom/nianticlabs/pokemongoplus/bridge/BackgroundBridgeMessage;->setArg1(I)Lcom/nianticlabs/pokemongoplus/bridge/BackgroundBridgeMessage;

    move-result-object v0

    .line 121
    invoke-static {v0}, Lcom/nianticlabs/pokemongoplus/bridge/BackgroundBridge;->sendMessage(Lcom/nianticlabs/pokemongoplus/bridge/BackgroundBridgeMessage;)V

    .line 124
    return-void
.end method

.method public static sendPokestopId(Ljava/lang/String;)V
    .locals 2
    .param p0, "pokestop"    # Ljava/lang/String;

    .prologue
    .line 90
    new-instance v0, Lcom/nianticlabs/pokemongoplus/bridge/BackgroundBridgeMessage;

    invoke-direct {v0}, Lcom/nianticlabs/pokemongoplus/bridge/BackgroundBridgeMessage;-><init>()V

    sget-object v1, Lcom/nianticlabs/pokemongoplus/bridge/BackgroundBridgeMessage$Action;->POKESTOP_ACTION:Lcom/nianticlabs/pokemongoplus/bridge/BackgroundBridgeMessage$Action;

    .line 91
    invoke-virtual {v0, v1}, Lcom/nianticlabs/pokemongoplus/bridge/BackgroundBridgeMessage;->setAction(Lcom/nianticlabs/pokemongoplus/bridge/BackgroundBridgeMessage$Action;)Lcom/nianticlabs/pokemongoplus/bridge/BackgroundBridgeMessage;

    move-result-object v0

    .line 92
    invoke-virtual {v0, p0}, Lcom/nianticlabs/pokemongoplus/bridge/BackgroundBridgeMessage;->setPokestopId(Ljava/lang/String;)Lcom/nianticlabs/pokemongoplus/bridge/BackgroundBridgeMessage;

    move-result-object v0

    .line 90
    invoke-static {v0}, Lcom/nianticlabs/pokemongoplus/bridge/BackgroundBridge;->sendMessage(Lcom/nianticlabs/pokemongoplus/bridge/BackgroundBridgeMessage;)V

    .line 93
    return-void
.end method

.method public static sendScannedSfida(Ljava/lang/String;I)V
    .locals 2
    .param p0, "deviceId"    # Ljava/lang/String;
    .param p1, "buttonValue"    # I

    .prologue
    .line 102
    new-instance v0, Lcom/nianticlabs/pokemongoplus/bridge/BackgroundBridgeMessage;

    invoke-direct {v0}, Lcom/nianticlabs/pokemongoplus/bridge/BackgroundBridgeMessage;-><init>()V

    sget-object v1, Lcom/nianticlabs/pokemongoplus/bridge/BackgroundBridgeMessage$Action;->SCANNED_SFIDA_ACTION:Lcom/nianticlabs/pokemongoplus/bridge/BackgroundBridgeMessage$Action;

    .line 103
    invoke-virtual {v0, v1}, Lcom/nianticlabs/pokemongoplus/bridge/BackgroundBridgeMessage;->setAction(Lcom/nianticlabs/pokemongoplus/bridge/BackgroundBridgeMessage$Action;)Lcom/nianticlabs/pokemongoplus/bridge/BackgroundBridgeMessage;

    move-result-object v0

    .line 104
    invoke-virtual {v0, p1}, Lcom/nianticlabs/pokemongoplus/bridge/BackgroundBridgeMessage;->setArg1(I)Lcom/nianticlabs/pokemongoplus/bridge/BackgroundBridgeMessage;

    move-result-object v0

    .line 105
    invoke-virtual {v0, p0}, Lcom/nianticlabs/pokemongoplus/bridge/BackgroundBridgeMessage;->setDeviceId(Ljava/lang/String;)Lcom/nianticlabs/pokemongoplus/bridge/BackgroundBridgeMessage;

    move-result-object v0

    .line 102
    invoke-static {v0}, Lcom/nianticlabs/pokemongoplus/bridge/BackgroundBridge;->sendMessage(Lcom/nianticlabs/pokemongoplus/bridge/BackgroundBridgeMessage;)V

    .line 106
    return-void
.end method

.method public static sendSfidaState(I)V
    .locals 2
    .param p0, "state"    # I

    .prologue
    .line 78
    new-instance v0, Lcom/nianticlabs/pokemongoplus/bridge/BackgroundBridgeMessage;

    invoke-direct {v0}, Lcom/nianticlabs/pokemongoplus/bridge/BackgroundBridgeMessage;-><init>()V

    sget-object v1, Lcom/nianticlabs/pokemongoplus/bridge/BackgroundBridgeMessage$Action;->SFIDA_STATE_ACTION:Lcom/nianticlabs/pokemongoplus/bridge/BackgroundBridgeMessage$Action;

    .line 79
    invoke-virtual {v0, v1}, Lcom/nianticlabs/pokemongoplus/bridge/BackgroundBridgeMessage;->setAction(Lcom/nianticlabs/pokemongoplus/bridge/BackgroundBridgeMessage$Action;)Lcom/nianticlabs/pokemongoplus/bridge/BackgroundBridgeMessage;

    move-result-object v0

    .line 80
    invoke-virtual {v0, p0}, Lcom/nianticlabs/pokemongoplus/bridge/BackgroundBridgeMessage;->setArg1(I)Lcom/nianticlabs/pokemongoplus/bridge/BackgroundBridgeMessage;

    move-result-object v0

    .line 78
    invoke-static {v0}, Lcom/nianticlabs/pokemongoplus/bridge/BackgroundBridge;->sendMessage(Lcom/nianticlabs/pokemongoplus/bridge/BackgroundBridgeMessage;)V

    .line 81
    return-void
.end method

.method public static sendUpdateTimestamp(J)V
    .locals 2
    .param p0, "timestampMs"    # J

    .prologue
    .line 72
    new-instance v0, Lcom/nianticlabs/pokemongoplus/bridge/BackgroundBridgeMessage;

    invoke-direct {v0}, Lcom/nianticlabs/pokemongoplus/bridge/BackgroundBridgeMessage;-><init>()V

    sget-object v1, Lcom/nianticlabs/pokemongoplus/bridge/BackgroundBridgeMessage$Action;->UPDATE_TIMESTAMP_ACTION:Lcom/nianticlabs/pokemongoplus/bridge/BackgroundBridgeMessage$Action;

    .line 73
    invoke-virtual {v0, v1}, Lcom/nianticlabs/pokemongoplus/bridge/BackgroundBridgeMessage;->setAction(Lcom/nianticlabs/pokemongoplus/bridge/BackgroundBridgeMessage$Action;)Lcom/nianticlabs/pokemongoplus/bridge/BackgroundBridgeMessage;

    move-result-object v0

    .line 74
    invoke-virtual {v0, p0, p1}, Lcom/nianticlabs/pokemongoplus/bridge/BackgroundBridgeMessage;->setTimestamp(J)Lcom/nianticlabs/pokemongoplus/bridge/BackgroundBridgeMessage;

    move-result-object v0

    .line 72
    invoke-static {v0}, Lcom/nianticlabs/pokemongoplus/bridge/BackgroundBridge;->sendMessage(Lcom/nianticlabs/pokemongoplus/bridge/BackgroundBridgeMessage;)V

    .line 75
    return-void
.end method

.method public static sendXpGained(I)V
    .locals 2
    .param p0, "xp"    # I

    .prologue
    .line 115
    new-instance v0, Lcom/nianticlabs/pokemongoplus/bridge/BackgroundBridgeMessage;

    invoke-direct {v0}, Lcom/nianticlabs/pokemongoplus/bridge/BackgroundBridgeMessage;-><init>()V

    sget-object v1, Lcom/nianticlabs/pokemongoplus/bridge/BackgroundBridgeMessage$Action;->XP_GAIN_ACTION:Lcom/nianticlabs/pokemongoplus/bridge/BackgroundBridgeMessage$Action;

    .line 116
    invoke-virtual {v0, v1}, Lcom/nianticlabs/pokemongoplus/bridge/BackgroundBridgeMessage;->setAction(Lcom/nianticlabs/pokemongoplus/bridge/BackgroundBridgeMessage$Action;)Lcom/nianticlabs/pokemongoplus/bridge/BackgroundBridgeMessage;

    move-result-object v0

    .line 117
    invoke-virtual {v0, p0}, Lcom/nianticlabs/pokemongoplus/bridge/BackgroundBridgeMessage;->setArg1(I)Lcom/nianticlabs/pokemongoplus/bridge/BackgroundBridgeMessage;

    move-result-object v0

    .line 115
    invoke-static {v0}, Lcom/nianticlabs/pokemongoplus/bridge/BackgroundBridge;->sendMessage(Lcom/nianticlabs/pokemongoplus/bridge/BackgroundBridgeMessage;)V

    .line 118
    return-void
.end method

.method public static stopNotification()V
    .locals 2

    .prologue
    .line 140
    new-instance v0, Lcom/nianticlabs/pokemongoplus/bridge/BackgroundBridgeMessage;

    invoke-direct {v0}, Lcom/nianticlabs/pokemongoplus/bridge/BackgroundBridgeMessage;-><init>()V

    sget-object v1, Lcom/nianticlabs/pokemongoplus/bridge/BackgroundBridgeMessage$Action;->STOP_NOTIFICATION_ACTION:Lcom/nianticlabs/pokemongoplus/bridge/BackgroundBridgeMessage$Action;

    .line 141
    invoke-virtual {v0, v1}, Lcom/nianticlabs/pokemongoplus/bridge/BackgroundBridgeMessage;->setAction(Lcom/nianticlabs/pokemongoplus/bridge/BackgroundBridgeMessage$Action;)Lcom/nianticlabs/pokemongoplus/bridge/BackgroundBridgeMessage;

    move-result-object v0

    .line 140
    invoke-static {v0}, Lcom/nianticlabs/pokemongoplus/bridge/BackgroundBridge;->sendMessage(Lcom/nianticlabs/pokemongoplus/bridge/BackgroundBridgeMessage;)V

    .line 142
    return-void
.end method


# virtual methods
.method public destroyBridge()V
    .locals 0

    .prologue
    .line 36
    invoke-virtual {p0}, Lcom/nianticlabs/pokemongoplus/bridge/BackgroundBridge;->dispose()V

    .line 37
    return-void
.end method

.method public native dispose()V
.end method

.method public onClientMessage(Lcom/nianticlabs/pokemongoplus/bridge/ClientBridgeMessage;)V
    .locals 15
    .param p1, "message"    # Lcom/nianticlabs/pokemongoplus/bridge/ClientBridgeMessage;

    .prologue
    .line 145
    invoke-virtual/range {p1 .. p1}, Lcom/nianticlabs/pokemongoplus/bridge/ClientBridgeMessage;->getAction()Lcom/nianticlabs/pokemongoplus/bridge/ClientBridgeMessage$Action;

    move-result-object v7

    .line 146
    .local v7, "action":Lcom/nianticlabs/pokemongoplus/bridge/ClientBridgeMessage$Action;
    sget-object v0, Lcom/nianticlabs/pokemongoplus/bridge/BackgroundBridge;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "onClientMessage - "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v0, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    sget-object v0, Lcom/nianticlabs/pokemongoplus/bridge/BackgroundBridge;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "BackgroundService onClientMessage action = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v0, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    sget-object v0, Lcom/nianticlabs/pokemongoplus/bridge/BackgroundBridge$2;->$SwitchMap$com$nianticlabs$pokemongoplus$bridge$ClientBridgeMessage$Action:[I

    invoke-virtual {v7}, Lcom/nianticlabs/pokemongoplus/bridge/ClientBridgeMessage$Action;->ordinal()I

    move-result v11

    aget v0, v0, v11

    packed-switch v0, :pswitch_data_0

    .line 204
    sget-object v0, Lcom/nianticlabs/pokemongoplus/bridge/BackgroundBridge;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Can\'t handle intent message: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v0, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    :goto_0
    sget-object v0, Lcom/nianticlabs/pokemongoplus/bridge/BackgroundBridge;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "onClientMessage DONE - "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v0, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    return-void

    .line 151
    :pswitch_0
    sget-object v0, Lcom/nianticlabs/pokemongoplus/bridge/BackgroundBridge;->TAG:Ljava/lang/String;

    const-string v11, "BEFORE start()"

    invoke-static {v0, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    invoke-virtual {p0}, Lcom/nianticlabs/pokemongoplus/bridge/BackgroundBridge;->start()V

    .line 153
    sget-object v0, Lcom/nianticlabs/pokemongoplus/bridge/BackgroundBridge;->TAG:Ljava/lang/String;

    const-string v11, "AFTER start()"

    invoke-static {v0, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 156
    :pswitch_1
    invoke-virtual {p0}, Lcom/nianticlabs/pokemongoplus/bridge/BackgroundBridge;->resume()V

    goto :goto_0

    .line 159
    :pswitch_2
    invoke-virtual {p0}, Lcom/nianticlabs/pokemongoplus/bridge/BackgroundBridge;->pause()V

    goto :goto_0

    .line 162
    :pswitch_3
    invoke-virtual {p0}, Lcom/nianticlabs/pokemongoplus/bridge/BackgroundBridge;->stop()V

    goto :goto_0

    .line 166
    :pswitch_4
    sget-object v0, Lcom/nianticlabs/pokemongoplus/bridge/BackgroundBridge;->TAG:Ljava/lang/String;

    const-string v11, "BEFORE startScanning()"

    invoke-static {v0, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    invoke-virtual {p0}, Lcom/nianticlabs/pokemongoplus/bridge/BackgroundBridge;->startScanning()V

    .line 168
    sget-object v0, Lcom/nianticlabs/pokemongoplus/bridge/BackgroundBridge;->TAG:Ljava/lang/String;

    const-string v11, "AFTER startScanning()"

    invoke-static {v0, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 171
    :pswitch_5
    invoke-virtual {p0}, Lcom/nianticlabs/pokemongoplus/bridge/BackgroundBridge;->stopScanning()V

    goto :goto_0

    .line 174
    :pswitch_6
    invoke-virtual/range {p1 .. p1}, Lcom/nianticlabs/pokemongoplus/bridge/ClientBridgeMessage;->getHostPort()Ljava/lang/String;

    move-result-object v1

    .line 175
    .local v1, "hostPort":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lcom/nianticlabs/pokemongoplus/bridge/ClientBridgeMessage;->getDeviceId()Ljava/lang/String;

    move-result-object v2

    .line 176
    .local v2, "device":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lcom/nianticlabs/pokemongoplus/bridge/ClientBridgeMessage;->getAuthToken()[B

    move-result-object v3

    .line 177
    .local v3, "authToken":[B
    invoke-virtual/range {p1 .. p1}, Lcom/nianticlabs/pokemongoplus/bridge/ClientBridgeMessage;->getEncounterId()J

    move-result-wide v4

    .line 178
    .local v4, "encounterId":J
    invoke-virtual/range {p1 .. p1}, Lcom/nianticlabs/pokemongoplus/bridge/ClientBridgeMessage;->getNotifications()I

    move-result v6

    .line 179
    .local v6, "notifications":I
    const-string v10, ""

    .line 180
    .local v10, "str":Ljava/lang/String;
    sget-object v0, Lcom/nianticlabs/pokemongoplus/bridge/BackgroundBridge;->TAG:Ljava/lang/String;

    const-string v11, "Start session: %s %s %d \"%s\""

    const/4 v12, 0x4

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    aput-object v1, v12, v13

    const/4 v13, 0x1

    aput-object v2, v12, v13

    const/4 v13, 0x2

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    aput-object v14, v12, v13

    const/4 v13, 0x3

    aput-object v10, v12, v13

    invoke-static {v11, v12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v0, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, p0

    .line 182
    invoke-virtual/range {v0 .. v6}, Lcom/nianticlabs/pokemongoplus/bridge/BackgroundBridge;->startSession(Ljava/lang/String;Ljava/lang/String;[BJI)V

    goto/16 :goto_0

    .line 186
    .end local v1    # "hostPort":Ljava/lang/String;
    .end local v2    # "device":Ljava/lang/String;
    .end local v3    # "authToken":[B
    .end local v4    # "encounterId":J
    .end local v6    # "notifications":I
    .end local v10    # "str":Ljava/lang/String;
    :pswitch_7
    invoke-virtual/range {p1 .. p1}, Lcom/nianticlabs/pokemongoplus/bridge/ClientBridgeMessage;->getProductName()Ljava/lang/String;

    move-result-object v8

    .line 187
    .local v8, "productName":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lcom/nianticlabs/pokemongoplus/bridge/ClientBridgeMessage;->getProductVersion()Ljava/lang/String;

    move-result-object v9

    .line 188
    .local v9, "productVersion":Ljava/lang/String;
    sget-object v0, Lcom/nianticlabs/pokemongoplus/bridge/BackgroundBridge;->TAG:Ljava/lang/String;

    const-string v11, "Start session: %s %s"

    const/4 v12, 0x2

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    aput-object v8, v12, v13

    const/4 v13, 0x1

    aput-object v9, v12, v13

    invoke-static {v11, v12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v0, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    invoke-virtual {p0, v8, v9}, Lcom/nianticlabs/pokemongoplus/bridge/BackgroundBridge;->setProduct(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 193
    .end local v8    # "productName":Ljava/lang/String;
    .end local v9    # "productVersion":Ljava/lang/String;
    :pswitch_8
    invoke-virtual {p0}, Lcom/nianticlabs/pokemongoplus/bridge/BackgroundBridge;->stopSession()V

    goto/16 :goto_0

    .line 196
    :pswitch_9
    invoke-virtual {p0}, Lcom/nianticlabs/pokemongoplus/bridge/BackgroundBridge;->requestPgpState()V

    goto/16 :goto_0

    .line 199
    :pswitch_a
    invoke-virtual/range {p1 .. p1}, Lcom/nianticlabs/pokemongoplus/bridge/ClientBridgeMessage;->getNotifications()I

    move-result v6

    .line 200
    .restart local v6    # "notifications":I
    invoke-virtual {p0, v6}, Lcom/nianticlabs/pokemongoplus/bridge/BackgroundBridge;->updateNotifications(I)V

    goto/16 :goto_0

    .line 149
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
    .end packed-switch
.end method

.method public native pause()V
.end method

.method public native requestPgpState()V
.end method

.method public native resume()V
.end method

.method public native setProduct(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public native start()V
.end method

.method public native startScanning()V
.end method

.method public native startSession(Ljava/lang/String;Ljava/lang/String;[BJI)V
.end method

.method public native stop()V
.end method

.method public native stopScanning()V
.end method

.method public native stopSession()V
.end method

.method public native updateNotifications(I)V
.end method
