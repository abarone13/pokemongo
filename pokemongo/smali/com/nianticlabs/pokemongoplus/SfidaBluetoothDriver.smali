.class public Lcom/nianticlabs/pokemongoplus/SfidaBluetoothDriver;
.super Lcom/nianticlabs/pokemongoplus/ble/BluetoothDriver;
.source "SfidaBluetoothDriver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nianticlabs/pokemongoplus/SfidaBluetoothDriver$SfidaScanCallback;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private bluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private context:Landroid/content/Context;

.field private isScanning:Z

.field private nativeHandle:J

.field private peripheral:Lcom/nianticlabs/pokemongoplus/ble/Peripheral;

.field private peripheralMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/nianticlabs/pokemongoplus/SfidaPeripheral;",
            ">;"
        }
    .end annotation
.end field

.field private scanCallback:Lcom/nianticlabs/pokemongoplus/ble/callback/ScanCallback;

.field private serialExecutor:Lcom/nianticlabs/pokemongoplus/HandlerExecutor;

.field private sfidaScanCallback:Lcom/nianticlabs/pokemongoplus/SfidaBluetoothDriver$SfidaScanCallback;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    const-class v0, Lcom/nianticlabs/pokemongoplus/SfidaBluetoothDriver;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/nianticlabs/pokemongoplus/SfidaBluetoothDriver;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/nianticlabs/pokemongoplus/ble/BluetoothDriver;-><init>()V

    .line 32
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/nianticlabs/pokemongoplus/SfidaBluetoothDriver;->peripheralMap:Ljava/util/Map;

    .line 37
    new-instance v0, Lcom/nianticlabs/pokemongoplus/HandlerExecutor;

    const-string v1, "SfidaBluetoothDriver"

    invoke-direct {v0, v1}, Lcom/nianticlabs/pokemongoplus/HandlerExecutor;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/nianticlabs/pokemongoplus/SfidaBluetoothDriver;->serialExecutor:Lcom/nianticlabs/pokemongoplus/HandlerExecutor;

    .line 40
    sget-object v0, Lcom/nianticlabs/pokemongoplus/SfidaBluetoothDriver;->TAG:Ljava/lang/String;

    const-string v1, "Creating SfidaBluetoothDriver."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    iput-object p1, p0, Lcom/nianticlabs/pokemongoplus/SfidaBluetoothDriver;->context:Landroid/content/Context;

    .line 42
    return-void
.end method

.method private SetIsScanning(Z)V
    .locals 1
    .param p1, "isScanning"    # Z

    .prologue
    .line 52
    monitor-enter p0

    .line 53
    :try_start_0
    iput-boolean p1, p0, Lcom/nianticlabs/pokemongoplus/SfidaBluetoothDriver;->isScanning:Z

    .line 54
    monitor-exit p0

    .line 55
    return-void

    .line 54
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 19
    sget-object v0, Lcom/nianticlabs/pokemongoplus/SfidaBluetoothDriver;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/nianticlabs/pokemongoplus/SfidaBluetoothDriver;)Lcom/nianticlabs/pokemongoplus/HandlerExecutor;
    .locals 1
    .param p0, "x0"    # Lcom/nianticlabs/pokemongoplus/SfidaBluetoothDriver;

    .prologue
    .line 19
    iget-object v0, p0, Lcom/nianticlabs/pokemongoplus/SfidaBluetoothDriver;->serialExecutor:Lcom/nianticlabs/pokemongoplus/HandlerExecutor;

    return-object v0
.end method

.method static synthetic access$200(Lcom/nianticlabs/pokemongoplus/SfidaBluetoothDriver;I)V
    .locals 0
    .param p0, "x0"    # Lcom/nianticlabs/pokemongoplus/SfidaBluetoothDriver;
    .param p1, "x1"    # I

    .prologue
    .line 19
    invoke-direct {p0, p1}, Lcom/nianticlabs/pokemongoplus/SfidaBluetoothDriver;->nativeStartCallback(I)V

    return-void
.end method

.method static synthetic access$300(Lcom/nianticlabs/pokemongoplus/SfidaBluetoothDriver;)Lcom/nianticlabs/pokemongoplus/ble/callback/ScanCallback;
    .locals 1
    .param p0, "x0"    # Lcom/nianticlabs/pokemongoplus/SfidaBluetoothDriver;

    .prologue
    .line 19
    iget-object v0, p0, Lcom/nianticlabs/pokemongoplus/SfidaBluetoothDriver;->scanCallback:Lcom/nianticlabs/pokemongoplus/ble/callback/ScanCallback;

    return-object v0
.end method

.method static synthetic access$302(Lcom/nianticlabs/pokemongoplus/SfidaBluetoothDriver;Lcom/nianticlabs/pokemongoplus/ble/callback/ScanCallback;)Lcom/nianticlabs/pokemongoplus/ble/callback/ScanCallback;
    .locals 0
    .param p0, "x0"    # Lcom/nianticlabs/pokemongoplus/SfidaBluetoothDriver;
    .param p1, "x1"    # Lcom/nianticlabs/pokemongoplus/ble/callback/ScanCallback;

    .prologue
    .line 19
    iput-object p1, p0, Lcom/nianticlabs/pokemongoplus/SfidaBluetoothDriver;->scanCallback:Lcom/nianticlabs/pokemongoplus/ble/callback/ScanCallback;

    return-object p1
.end method

.method static synthetic access$400(Lcom/nianticlabs/pokemongoplus/SfidaBluetoothDriver;)Lcom/nianticlabs/pokemongoplus/SfidaBluetoothDriver$SfidaScanCallback;
    .locals 1
    .param p0, "x0"    # Lcom/nianticlabs/pokemongoplus/SfidaBluetoothDriver;

    .prologue
    .line 19
    iget-object v0, p0, Lcom/nianticlabs/pokemongoplus/SfidaBluetoothDriver;->sfidaScanCallback:Lcom/nianticlabs/pokemongoplus/SfidaBluetoothDriver$SfidaScanCallback;

    return-object v0
.end method

.method static synthetic access$402(Lcom/nianticlabs/pokemongoplus/SfidaBluetoothDriver;Lcom/nianticlabs/pokemongoplus/SfidaBluetoothDriver$SfidaScanCallback;)Lcom/nianticlabs/pokemongoplus/SfidaBluetoothDriver$SfidaScanCallback;
    .locals 0
    .param p0, "x0"    # Lcom/nianticlabs/pokemongoplus/SfidaBluetoothDriver;
    .param p1, "x1"    # Lcom/nianticlabs/pokemongoplus/SfidaBluetoothDriver$SfidaScanCallback;

    .prologue
    .line 19
    iput-object p1, p0, Lcom/nianticlabs/pokemongoplus/SfidaBluetoothDriver;->sfidaScanCallback:Lcom/nianticlabs/pokemongoplus/SfidaBluetoothDriver$SfidaScanCallback;

    return-object p1
.end method

.method static synthetic access$500(Lcom/nianticlabs/pokemongoplus/SfidaBluetoothDriver;)Landroid/bluetooth/BluetoothAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/nianticlabs/pokemongoplus/SfidaBluetoothDriver;

    .prologue
    .line 19
    iget-object v0, p0, Lcom/nianticlabs/pokemongoplus/SfidaBluetoothDriver;->bluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    return-object v0
.end method

.method static synthetic access$600(Lcom/nianticlabs/pokemongoplus/SfidaBluetoothDriver;Lcom/nianticlabs/pokemongoplus/ble/Peripheral;)V
    .locals 0
    .param p0, "x0"    # Lcom/nianticlabs/pokemongoplus/SfidaBluetoothDriver;
    .param p1, "x1"    # Lcom/nianticlabs/pokemongoplus/ble/Peripheral;

    .prologue
    .line 19
    invoke-direct {p0, p1}, Lcom/nianticlabs/pokemongoplus/SfidaBluetoothDriver;->nativeScanCallback(Lcom/nianticlabs/pokemongoplus/ble/Peripheral;)V

    return-void
.end method

.method static synthetic access$800(Lcom/nianticlabs/pokemongoplus/SfidaBluetoothDriver;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lcom/nianticlabs/pokemongoplus/SfidaBluetoothDriver;

    .prologue
    .line 19
    iget-object v0, p0, Lcom/nianticlabs/pokemongoplus/SfidaBluetoothDriver;->peripheralMap:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$900(Lcom/nianticlabs/pokemongoplus/SfidaBluetoothDriver;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/nianticlabs/pokemongoplus/SfidaBluetoothDriver;

    .prologue
    .line 19
    iget-object v0, p0, Lcom/nianticlabs/pokemongoplus/SfidaBluetoothDriver;->context:Landroid/content/Context;

    return-object v0
.end method

.method private native nativeScanCallback(Lcom/nianticlabs/pokemongoplus/ble/Peripheral;)V
.end method

.method private native nativeStartCallback(I)V
.end method


# virtual methods
.method public IsScanning()Z
    .locals 1

    .prologue
    .line 46
    monitor-enter p0

    .line 47
    :try_start_0
    iget-boolean v0, p0, Lcom/nianticlabs/pokemongoplus/SfidaBluetoothDriver;->isScanning:Z

    monitor-exit p0

    return v0

    .line 48
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public isEnabledBluetoothLe()Z
    .locals 1

    .prologue
    .line 189
    iget-object v0, p0, Lcom/nianticlabs/pokemongoplus/SfidaBluetoothDriver;->bluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nianticlabs/pokemongoplus/SfidaBluetoothDriver;->bluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 190
    :cond_0
    const/4 v0, 0x0

    .line 192
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public releasePeripherals()V
    .locals 10

    .prologue
    .line 117
    sget-object v3, Lcom/nianticlabs/pokemongoplus/SfidaBluetoothDriver;->TAG:Ljava/lang/String;

    const-string v4, "Tid: %d releasePeripherals()"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Thread;->getId()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 119
    .local v0, "continuing":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/nianticlabs/pokemongoplus/SfidaPeripheral;>;"
    iget-object v3, p0, Lcom/nianticlabs/pokemongoplus/SfidaBluetoothDriver;->peripheralMap:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nianticlabs/pokemongoplus/SfidaPeripheral;

    .line 120
    .local v1, "peripheral":Lcom/nianticlabs/pokemongoplus/SfidaPeripheral;
    invoke-virtual {v1}, Lcom/nianticlabs/pokemongoplus/SfidaPeripheral;->getState()Lcom/nianticlabs/pokemongoplus/ble/SfidaConstant$PeripheralState;

    move-result-object v2

    .line 121
    .local v2, "state":Lcom/nianticlabs/pokemongoplus/ble/SfidaConstant$PeripheralState;
    sget-object v4, Lcom/nianticlabs/pokemongoplus/ble/SfidaConstant$PeripheralState;->Disconnected:Lcom/nianticlabs/pokemongoplus/ble/SfidaConstant$PeripheralState;

    if-eq v2, v4, :cond_0

    sget-object v4, Lcom/nianticlabs/pokemongoplus/ble/SfidaConstant$PeripheralState;->Disconnecting:Lcom/nianticlabs/pokemongoplus/ble/SfidaConstant$PeripheralState;

    if-ne v2, v4, :cond_1

    .line 123
    :cond_0
    invoke-virtual {v1}, Lcom/nianticlabs/pokemongoplus/SfidaPeripheral;->onDestroy()V

    goto :goto_0

    .line 125
    :cond_1
    invoke-virtual {v1}, Lcom/nianticlabs/pokemongoplus/SfidaPeripheral;->getAddress()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 128
    .end local v1    # "peripheral":Lcom/nianticlabs/pokemongoplus/SfidaPeripheral;
    .end local v2    # "state":Lcom/nianticlabs/pokemongoplus/ble/SfidaConstant$PeripheralState;
    :cond_2
    iget-object v3, p0, Lcom/nianticlabs/pokemongoplus/SfidaBluetoothDriver;->peripheralMap:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->clear()V

    .line 129
    iput-object v0, p0, Lcom/nianticlabs/pokemongoplus/SfidaBluetoothDriver;->peripheralMap:Ljava/util/Map;

    .line 130
    return-void
.end method

.method public start(Lcom/nianticlabs/pokemongoplus/ble/callback/CentralStateCallback;)I
    .locals 8
    .param p1, "callback"    # Lcom/nianticlabs/pokemongoplus/ble/callback/CentralStateCallback;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 58
    sget-object v1, Lcom/nianticlabs/pokemongoplus/SfidaBluetoothDriver;->TAG:Ljava/lang/String;

    const-string v2, "Tid: %d start() called."

    new-array v3, v7, [Ljava/lang/Object;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->getId()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    iget-object v1, p0, Lcom/nianticlabs/pokemongoplus/SfidaBluetoothDriver;->serialExecutor:Lcom/nianticlabs/pokemongoplus/HandlerExecutor;

    invoke-virtual {v1}, Lcom/nianticlabs/pokemongoplus/HandlerExecutor;->maybeAssertOnThread()V

    .line 61
    iget-object v1, p0, Lcom/nianticlabs/pokemongoplus/SfidaBluetoothDriver;->context:Landroid/content/Context;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/nianticlabs/pokemongoplus/SfidaBluetoothDriver;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "android.hardware.bluetooth_le"

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 62
    :cond_0
    sget-object v1, Lcom/nianticlabs/pokemongoplus/ble/SfidaConstant$CentralState;->Unsupported:Lcom/nianticlabs/pokemongoplus/ble/SfidaConstant$CentralState;

    invoke-interface {p1, v1}, Lcom/nianticlabs/pokemongoplus/ble/callback/CentralStateCallback;->OnStateChanged(Lcom/nianticlabs/pokemongoplus/ble/SfidaConstant$CentralState;)V

    .line 77
    :goto_0
    return v6

    .line 64
    :cond_1
    sget-object v1, Lcom/nianticlabs/pokemongoplus/SfidaBluetoothDriver;->TAG:Ljava/lang/String;

    const-string v2, "Tid: %d start()"

    new-array v3, v7, [Ljava/lang/Object;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->getId()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    iget-object v1, p0, Lcom/nianticlabs/pokemongoplus/SfidaBluetoothDriver;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/nianticlabs/pokemongoplus/SfidaUtils;->getBluetoothManager(Landroid/content/Context;)Landroid/bluetooth/BluetoothManager;

    move-result-object v0

    .line 66
    .local v0, "bluetoothManager":Landroid/bluetooth/BluetoothManager;
    if-eqz v0, :cond_3

    .line 67
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothManager;->getAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    iput-object v1, p0, Lcom/nianticlabs/pokemongoplus/SfidaBluetoothDriver;->bluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 68
    iget-object v1, p0, Lcom/nianticlabs/pokemongoplus/SfidaBluetoothDriver;->bluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/nianticlabs/pokemongoplus/SfidaBluetoothDriver;->bluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_2

    sget-object v1, Lcom/nianticlabs/pokemongoplus/ble/SfidaConstant$CentralState;->PoweredOn:Lcom/nianticlabs/pokemongoplus/ble/SfidaConstant$CentralState;

    :goto_1
    invoke-interface {p1, v1}, Lcom/nianticlabs/pokemongoplus/ble/callback/CentralStateCallback;->OnStateChanged(Lcom/nianticlabs/pokemongoplus/ble/SfidaConstant$CentralState;)V

    goto :goto_0

    :cond_2
    sget-object v1, Lcom/nianticlabs/pokemongoplus/ble/SfidaConstant$CentralState;->PoweredOff:Lcom/nianticlabs/pokemongoplus/ble/SfidaConstant$CentralState;

    goto :goto_1

    .line 73
    :cond_3
    sget-object v1, Lcom/nianticlabs/pokemongoplus/SfidaBluetoothDriver;->TAG:Ljava/lang/String;

    const-string v2, "start(CentralStateCallback): Could not find bluetooth manager."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    sget-object v1, Lcom/nianticlabs/pokemongoplus/ble/SfidaConstant$CentralState;->Unknown:Lcom/nianticlabs/pokemongoplus/ble/SfidaConstant$CentralState;

    invoke-interface {p1, v1}, Lcom/nianticlabs/pokemongoplus/ble/callback/CentralStateCallback;->OnStateChanged(Lcom/nianticlabs/pokemongoplus/ble/SfidaConstant$CentralState;)V

    goto :goto_0
.end method

.method public startDriver()V
    .locals 6

    .prologue
    .line 97
    sget-object v0, Lcom/nianticlabs/pokemongoplus/SfidaBluetoothDriver;->TAG:Ljava/lang/String;

    const-string v1, "Tid: %d startDriver(), Called"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->getId()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    iget-object v0, p0, Lcom/nianticlabs/pokemongoplus/SfidaBluetoothDriver;->serialExecutor:Lcom/nianticlabs/pokemongoplus/HandlerExecutor;

    new-instance v1, Lcom/nianticlabs/pokemongoplus/SfidaBluetoothDriver$2;

    invoke-direct {v1, p0}, Lcom/nianticlabs/pokemongoplus/SfidaBluetoothDriver$2;-><init>(Lcom/nianticlabs/pokemongoplus/SfidaBluetoothDriver;)V

    invoke-virtual {v0, v1}, Lcom/nianticlabs/pokemongoplus/HandlerExecutor;->execute(Ljava/lang/Runnable;)V

    .line 114
    return-void
.end method

.method public startScanning(Ljava/lang/String;)V
    .locals 1
    .param p1, "peripheralName"    # Ljava/lang/String;

    .prologue
    .line 155
    new-instance v0, Lcom/nianticlabs/pokemongoplus/SfidaBluetoothDriver$4;

    invoke-direct {v0, p0}, Lcom/nianticlabs/pokemongoplus/SfidaBluetoothDriver$4;-><init>(Lcom/nianticlabs/pokemongoplus/SfidaBluetoothDriver;)V

    invoke-virtual {p0, p1, v0}, Lcom/nianticlabs/pokemongoplus/SfidaBluetoothDriver;->startScanning(Ljava/lang/String;Lcom/nianticlabs/pokemongoplus/ble/callback/ScanCallback;)V

    .line 161
    return-void
.end method

.method public startScanning(Ljava/lang/String;Lcom/nianticlabs/pokemongoplus/ble/callback/ScanCallback;)V
    .locals 2
    .param p1, "peripheralName"    # Ljava/lang/String;
    .param p2, "callback"    # Lcom/nianticlabs/pokemongoplus/ble/callback/ScanCallback;

    .prologue
    .line 135
    invoke-virtual {p0}, Lcom/nianticlabs/pokemongoplus/SfidaBluetoothDriver;->IsScanning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 152
    :goto_0
    return-void

    .line 138
    :cond_0
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/nianticlabs/pokemongoplus/SfidaBluetoothDriver;->SetIsScanning(Z)V

    .line 139
    iget-object v0, p0, Lcom/nianticlabs/pokemongoplus/SfidaBluetoothDriver;->serialExecutor:Lcom/nianticlabs/pokemongoplus/HandlerExecutor;

    new-instance v1, Lcom/nianticlabs/pokemongoplus/SfidaBluetoothDriver$3;

    invoke-direct {v1, p0, p2, p1}, Lcom/nianticlabs/pokemongoplus/SfidaBluetoothDriver$3;-><init>(Lcom/nianticlabs/pokemongoplus/SfidaBluetoothDriver;Lcom/nianticlabs/pokemongoplus/ble/callback/ScanCallback;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/nianticlabs/pokemongoplus/HandlerExecutor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public stop(I)V
    .locals 6
    .param p1, "unusedTag"    # I

    .prologue
    .line 82
    sget-object v0, Lcom/nianticlabs/pokemongoplus/SfidaBluetoothDriver;->TAG:Ljava/lang/String;

    const-string v1, "Tid: %d stop()"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->getId()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    iget-object v0, p0, Lcom/nianticlabs/pokemongoplus/SfidaBluetoothDriver;->serialExecutor:Lcom/nianticlabs/pokemongoplus/HandlerExecutor;

    new-instance v1, Lcom/nianticlabs/pokemongoplus/SfidaBluetoothDriver$1;

    invoke-direct {v1, p0}, Lcom/nianticlabs/pokemongoplus/SfidaBluetoothDriver$1;-><init>(Lcom/nianticlabs/pokemongoplus/SfidaBluetoothDriver;)V

    invoke-virtual {v0, v1}, Lcom/nianticlabs/pokemongoplus/HandlerExecutor;->execute(Ljava/lang/Runnable;)V

    .line 89
    iget-object v0, p0, Lcom/nianticlabs/pokemongoplus/SfidaBluetoothDriver;->serialExecutor:Lcom/nianticlabs/pokemongoplus/HandlerExecutor;

    invoke-virtual {v0}, Lcom/nianticlabs/pokemongoplus/HandlerExecutor;->stop()V

    .line 90
    return-void
.end method

.method public stopDriver()V
    .locals 1

    .prologue
    .line 93
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/nianticlabs/pokemongoplus/SfidaBluetoothDriver;->stop(I)V

    .line 94
    return-void
.end method

.method public stopScanning(Ljava/lang/String;)V
    .locals 2
    .param p1, "peripheralName"    # Ljava/lang/String;

    .prologue
    .line 165
    invoke-virtual {p0}, Lcom/nianticlabs/pokemongoplus/SfidaBluetoothDriver;->IsScanning()Z

    move-result v0

    if-nez v0, :cond_0

    .line 184
    :goto_0
    return-void

    .line 168
    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/nianticlabs/pokemongoplus/SfidaBluetoothDriver;->SetIsScanning(Z)V

    .line 170
    iget-object v0, p0, Lcom/nianticlabs/pokemongoplus/SfidaBluetoothDriver;->serialExecutor:Lcom/nianticlabs/pokemongoplus/HandlerExecutor;

    new-instance v1, Lcom/nianticlabs/pokemongoplus/SfidaBluetoothDriver$5;

    invoke-direct {v1, p0}, Lcom/nianticlabs/pokemongoplus/SfidaBluetoothDriver$5;-><init>(Lcom/nianticlabs/pokemongoplus/SfidaBluetoothDriver;)V

    invoke-virtual {v0, v1}, Lcom/nianticlabs/pokemongoplus/HandlerExecutor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0
.end method
