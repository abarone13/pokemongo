.class public final Lcom/upsight/android/analytics/internal/configuration/ConfigurationManager;
.super Ljava/lang/Object;
.source "ConfigurationManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/upsight/android/analytics/internal/configuration/ConfigurationManager$Config;
    }
.end annotation


# static fields
.field public static final CONFIGURATION_RESPONSE_SUBTYPE:Ljava/lang/String; = "upsight.configuration"

.field public static final CONFIGURATION_SUBTYPE:Ljava/lang/String; = "upsight.configuration.configurationManager"

.field private static final LOG_TAG:Ljava/lang/String; = "Configuration"

.field private static final RETRY_BASE:I = -0x1


# instance fields
.field private final mBus:Lcom/squareup/otto/Bus;

.field private mConfigExpiryRetryCount:I

.field private final mConfigParser:Lcom/upsight/android/analytics/internal/configuration/ManagerConfigParser;

.field private mCurrentConfig:Lcom/upsight/android/analytics/internal/configuration/ConfigurationManager$Config;

.field private final mDataStore:Lcom/upsight/android/persistence/UpsightDataStore;

.field private mDataStoreSubscription:Lcom/upsight/android/persistence/UpsightSubscription;

.field private mIsLaunched:Z

.field private final mLogger:Lcom/upsight/android/logger/UpsightLogger;

.field private final mResponseParser:Lcom/upsight/android/analytics/internal/configuration/ConfigurationResponseParser;

.field private mSyncAction:Lrx/functions/Action0;

.field private final mUpsight:Lcom/upsight/android/UpsightContext;

.field private final mWorker:Lrx/Scheduler$Worker;

.field private mWorkerSubscription:Lrx/Subscription;


# direct methods
.method constructor <init>(Lcom/upsight/android/UpsightContext;Lcom/upsight/android/persistence/UpsightDataStore;Lcom/upsight/android/analytics/internal/configuration/ConfigurationResponseParser;Lcom/upsight/android/analytics/internal/configuration/ManagerConfigParser;Lrx/Scheduler;Lcom/squareup/otto/Bus;Lcom/upsight/android/logger/UpsightLogger;)V
    .locals 1
    .param p1, "upsight"    # Lcom/upsight/android/UpsightContext;
    .param p2, "dataStore"    # Lcom/upsight/android/persistence/UpsightDataStore;
    .param p3, "responseParser"    # Lcom/upsight/android/analytics/internal/configuration/ConfigurationResponseParser;
    .param p4, "managerConfigParser"    # Lcom/upsight/android/analytics/internal/configuration/ManagerConfigParser;
    .param p5, "scheduler"    # Lrx/Scheduler;
    .param p6, "bus"    # Lcom/squareup/otto/Bus;
    .param p7, "logger"    # Lcom/upsight/android/logger/UpsightLogger;

    .prologue
    .line 160
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 111
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/upsight/android/analytics/internal/configuration/ConfigurationManager;->mIsLaunched:Z

    .line 130
    const/4 v0, -0x1

    iput v0, p0, Lcom/upsight/android/analytics/internal/configuration/ConfigurationManager;->mConfigExpiryRetryCount:I

    .line 135
    new-instance v0, Lcom/upsight/android/analytics/internal/configuration/ConfigurationManager$1;

    invoke-direct {v0, p0}, Lcom/upsight/android/analytics/internal/configuration/ConfigurationManager$1;-><init>(Lcom/upsight/android/analytics/internal/configuration/ConfigurationManager;)V

    iput-object v0, p0, Lcom/upsight/android/analytics/internal/configuration/ConfigurationManager;->mSyncAction:Lrx/functions/Action0;

    .line 161
    iput-object p1, p0, Lcom/upsight/android/analytics/internal/configuration/ConfigurationManager;->mUpsight:Lcom/upsight/android/UpsightContext;

    .line 162
    iput-object p2, p0, Lcom/upsight/android/analytics/internal/configuration/ConfigurationManager;->mDataStore:Lcom/upsight/android/persistence/UpsightDataStore;

    .line 163
    iput-object p3, p0, Lcom/upsight/android/analytics/internal/configuration/ConfigurationManager;->mResponseParser:Lcom/upsight/android/analytics/internal/configuration/ConfigurationResponseParser;

    .line 164
    iput-object p4, p0, Lcom/upsight/android/analytics/internal/configuration/ConfigurationManager;->mConfigParser:Lcom/upsight/android/analytics/internal/configuration/ManagerConfigParser;

    .line 165
    iput-object p6, p0, Lcom/upsight/android/analytics/internal/configuration/ConfigurationManager;->mBus:Lcom/squareup/otto/Bus;

    .line 166
    iput-object p7, p0, Lcom/upsight/android/analytics/internal/configuration/ConfigurationManager;->mLogger:Lcom/upsight/android/logger/UpsightLogger;

    .line 167
    invoke-virtual {p5}, Lrx/Scheduler;->createWorker()Lrx/Scheduler$Worker;

    move-result-object v0

    iput-object v0, p0, Lcom/upsight/android/analytics/internal/configuration/ConfigurationManager;->mWorker:Lrx/Scheduler$Worker;

    .line 168
    return-void
.end method

.method static synthetic access$000(Lcom/upsight/android/analytics/internal/configuration/ConfigurationManager;)Lcom/upsight/android/logger/UpsightLogger;
    .locals 1
    .param p0, "x0"    # Lcom/upsight/android/analytics/internal/configuration/ConfigurationManager;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/upsight/android/analytics/internal/configuration/ConfigurationManager;->mLogger:Lcom/upsight/android/logger/UpsightLogger;

    return-object v0
.end method

.method static synthetic access$100(Lcom/upsight/android/analytics/internal/configuration/ConfigurationManager;)Lcom/upsight/android/UpsightContext;
    .locals 1
    .param p0, "x0"    # Lcom/upsight/android/analytics/internal/configuration/ConfigurationManager;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/upsight/android/analytics/internal/configuration/ConfigurationManager;->mUpsight:Lcom/upsight/android/UpsightContext;

    return-object v0
.end method

.method static synthetic access$200(Lcom/upsight/android/analytics/internal/configuration/ConfigurationManager;)Lcom/upsight/android/analytics/internal/configuration/ConfigurationManager$Config;
    .locals 1
    .param p0, "x0"    # Lcom/upsight/android/analytics/internal/configuration/ConfigurationManager;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/upsight/android/analytics/internal/configuration/ConfigurationManager;->mCurrentConfig:Lcom/upsight/android/analytics/internal/configuration/ConfigurationManager$Config;

    return-object v0
.end method

.method static synthetic access$300(Lcom/upsight/android/analytics/internal/configuration/ConfigurationManager;)I
    .locals 1
    .param p0, "x0"    # Lcom/upsight/android/analytics/internal/configuration/ConfigurationManager;

    .prologue
    .line 37
    iget v0, p0, Lcom/upsight/android/analytics/internal/configuration/ConfigurationManager;->mConfigExpiryRetryCount:I

    return v0
.end method

.method static synthetic access$302(Lcom/upsight/android/analytics/internal/configuration/ConfigurationManager;I)I
    .locals 0
    .param p0, "x0"    # Lcom/upsight/android/analytics/internal/configuration/ConfigurationManager;
    .param p1, "x1"    # I

    .prologue
    .line 37
    iput p1, p0, Lcom/upsight/android/analytics/internal/configuration/ConfigurationManager;->mConfigExpiryRetryCount:I

    return p1
.end method

.method static synthetic access$308(Lcom/upsight/android/analytics/internal/configuration/ConfigurationManager;)I
    .locals 2
    .param p0, "x0"    # Lcom/upsight/android/analytics/internal/configuration/ConfigurationManager;

    .prologue
    .line 37
    iget v0, p0, Lcom/upsight/android/analytics/internal/configuration/ConfigurationManager;->mConfigExpiryRetryCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/upsight/android/analytics/internal/configuration/ConfigurationManager;->mConfigExpiryRetryCount:I

    return v0
.end method

.method static synthetic access$400(Lcom/upsight/android/analytics/internal/configuration/ConfigurationManager;J)V
    .locals 1
    .param p0, "x0"    # Lcom/upsight/android/analytics/internal/configuration/ConfigurationManager;
    .param p1, "x1"    # J

    .prologue
    .line 37
    invoke-direct {p0, p1, p2}, Lcom/upsight/android/analytics/internal/configuration/ConfigurationManager;->scheduleConfigExpiry(J)V

    return-void
.end method

.method static synthetic access$500(Lcom/upsight/android/analytics/internal/configuration/ConfigurationManager;Ljava/lang/String;)Z
    .locals 1
    .param p0, "x0"    # Lcom/upsight/android/analytics/internal/configuration/ConfigurationManager;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lcom/upsight/android/analytics/internal/configuration/ConfigurationManager;->applyConfiguration(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$600(Lcom/upsight/android/analytics/internal/configuration/ConfigurationManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/upsight/android/analytics/internal/configuration/ConfigurationManager;

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/upsight/android/analytics/internal/configuration/ConfigurationManager;->applyDefaultConfiguration()V

    return-void
.end method

.method static synthetic access$700(Lcom/upsight/android/analytics/internal/configuration/ConfigurationManager;)Lcom/upsight/android/persistence/UpsightDataStore;
    .locals 1
    .param p0, "x0"    # Lcom/upsight/android/analytics/internal/configuration/ConfigurationManager;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/upsight/android/analytics/internal/configuration/ConfigurationManager;->mDataStore:Lcom/upsight/android/persistence/UpsightDataStore;

    return-object v0
.end method

.method private declared-synchronized applyConfiguration(Ljava/lang/String;)Z
    .locals 8
    .param p1, "jsonConfiguration"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 231
    monitor-enter p0

    :try_start_0
    iget-object v4, p0, Lcom/upsight/android/analytics/internal/configuration/ConfigurationManager;->mConfigParser:Lcom/upsight/android/analytics/internal/configuration/ManagerConfigParser;

    invoke-virtual {v4, p1}, Lcom/upsight/android/analytics/internal/configuration/ManagerConfigParser;->parse(Ljava/lang/String;)Lcom/upsight/android/analytics/internal/configuration/ConfigurationManager$Config;

    move-result-object v0

    .line 234
    .local v0, "config":Lcom/upsight/android/analytics/internal/configuration/ConfigurationManager$Config;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/upsight/android/analytics/internal/configuration/ConfigurationManager$Config;->isValid()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 236
    iput-object v0, p0, Lcom/upsight/android/analytics/internal/configuration/ConfigurationManager;->mCurrentConfig:Lcom/upsight/android/analytics/internal/configuration/ConfigurationManager$Config;

    .line 237
    iget-object v4, p0, Lcom/upsight/android/analytics/internal/configuration/ConfigurationManager;->mLogger:Lcom/upsight/android/logger/UpsightLogger;

    const-string v5, "Configuration"

    const-string v6, "Configurations applied"

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-interface {v4, v5, v6, v7}, Lcom/upsight/android/logger/UpsightLogger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 239
    iget-object v4, p0, Lcom/upsight/android/analytics/internal/configuration/ConfigurationManager;->mWorkerSubscription:Lrx/Subscription;

    if-nez v4, :cond_0

    .line 241
    const-wide/16 v4, 0x0

    invoke-direct {p0, v4, v5}, Lcom/upsight/android/analytics/internal/configuration/ConfigurationManager;->scheduleConfigExpiry(J)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 258
    .end local v0    # "config":Lcom/upsight/android/analytics/internal/configuration/ConfigurationManager$Config;
    :goto_0
    monitor-exit p0

    return v2

    .line 244
    .restart local v0    # "config":Lcom/upsight/android/analytics/internal/configuration/ConfigurationManager$Config;
    :cond_0
    const/4 v4, -0x1

    :try_start_1
    iput v4, p0, Lcom/upsight/android/analytics/internal/configuration/ConfigurationManager;->mConfigExpiryRetryCount:I

    .line 247
    iget-wide v4, v0, Lcom/upsight/android/analytics/internal/configuration/ConfigurationManager$Config;->requestIntervalMs:J

    invoke-direct {p0, v4, v5}, Lcom/upsight/android/analytics/internal/configuration/ConfigurationManager;->scheduleConfigExpiry(J)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 256
    .end local v0    # "config":Lcom/upsight/android/analytics/internal/configuration/ConfigurationManager$Config;
    :catch_0
    move-exception v1

    .line 257
    .local v1, "e":Ljava/io/IOException;
    :try_start_2
    iget-object v2, p0, Lcom/upsight/android/analytics/internal/configuration/ConfigurationManager;->mLogger:Lcom/upsight/android/logger/UpsightLogger;

    const-string v4, "Configuration"

    const-string v5, "Could not parse configurations"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v1, v6, v7

    invoke-interface {v2, v4, v5, v6}, Lcom/upsight/android/logger/UpsightLogger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move v2, v3

    .line 258
    goto :goto_0

    .line 251
    .end local v1    # "e":Ljava/io/IOException;
    .restart local v0    # "config":Lcom/upsight/android/analytics/internal/configuration/ConfigurationManager$Config;
    :cond_1
    :try_start_3
    iget-object v2, p0, Lcom/upsight/android/analytics/internal/configuration/ConfigurationManager;->mLogger:Lcom/upsight/android/logger/UpsightLogger;

    const-string v4, "Configuration"

    const-string v5, "Skipped invalid configurations"

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-interface {v2, v4, v5, v6}, Lcom/upsight/android/logger/UpsightLogger;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move v2, v3

    .line 252
    goto :goto_0

    .line 231
    .end local v0    # "config":Lcom/upsight/android/analytics/internal/configuration/ConfigurationManager$Config;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method private applyDefaultConfiguration()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 213
    :try_start_0
    iget-object v2, p0, Lcom/upsight/android/analytics/internal/configuration/ConfigurationManager;->mUpsight:Lcom/upsight/android/UpsightContext;

    invoke-virtual {v2}, Lcom/upsight/android/UpsightContext;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/upsight/android/analytics/R$raw;->configurator_config:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v2

    invoke-static {v2}, Lorg/apache/commons/io/IOUtils;->toString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v0

    .line 215
    .local v0, "config":Ljava/lang/String;
    iget-object v2, p0, Lcom/upsight/android/analytics/internal/configuration/ConfigurationManager;->mLogger:Lcom/upsight/android/logger/UpsightLogger;

    const-string v3, "Configuration"

    const-string v4, "Apply default configurations"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-interface {v2, v3, v4, v5}, Lcom/upsight/android/logger/UpsightLogger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 217
    invoke-direct {p0, v0}, Lcom/upsight/android/analytics/internal/configuration/ConfigurationManager;->applyConfiguration(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 221
    .end local v0    # "config":Ljava/lang/String;
    :goto_0
    return-void

    .line 218
    :catch_0
    move-exception v1

    .line 219
    .local v1, "e":Ljava/io/IOException;
    iget-object v2, p0, Lcom/upsight/android/analytics/internal/configuration/ConfigurationManager;->mLogger:Lcom/upsight/android/logger/UpsightLogger;

    const-string v3, "Configuration"

    const-string v4, "Could not read default config"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v1, v5, v6

    invoke-interface {v2, v3, v4, v5}, Lcom/upsight/android/logger/UpsightLogger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private fetchCurrentConfig()V
    .locals 3

    .prologue
    .line 175
    iget-object v0, p0, Lcom/upsight/android/analytics/internal/configuration/ConfigurationManager;->mDataStore:Lcom/upsight/android/persistence/UpsightDataStore;

    const-class v1, Lcom/upsight/android/analytics/configuration/UpsightConfiguration;

    new-instance v2, Lcom/upsight/android/analytics/internal/configuration/ConfigurationManager$2;

    invoke-direct {v2, p0}, Lcom/upsight/android/analytics/internal/configuration/ConfigurationManager$2;-><init>(Lcom/upsight/android/analytics/internal/configuration/ConfigurationManager;)V

    invoke-interface {v0, v1, v2}, Lcom/upsight/android/persistence/UpsightDataStore;->fetch(Ljava/lang/Class;Lcom/upsight/android/persistence/UpsightDataStoreListener;)Lcom/upsight/android/persistence/UpsightSubscription;

    .line 206
    return-void
.end method

.method private declared-synchronized scheduleConfigExpiry(J)V
    .locals 5
    .param p1, "delayTime"    # J

    .prologue
    .line 268
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/upsight/android/analytics/internal/configuration/ConfigurationManager;->mWorkerSubscription:Lrx/Subscription;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/upsight/android/analytics/internal/configuration/ConfigurationManager;->mWorkerSubscription:Lrx/Subscription;

    invoke-interface {v0}, Lrx/Subscription;->isUnsubscribed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 269
    iget-object v0, p0, Lcom/upsight/android/analytics/internal/configuration/ConfigurationManager;->mLogger:Lcom/upsight/android/logger/UpsightLogger;

    const-string v1, "Configuration"

    const-string v2, "Stop config.expired recording scheduler"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2, v3}, Lcom/upsight/android/logger/UpsightLogger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 270
    iget-object v0, p0, Lcom/upsight/android/analytics/internal/configuration/ConfigurationManager;->mWorkerSubscription:Lrx/Subscription;

    invoke-interface {v0}, Lrx/Subscription;->unsubscribe()V

    .line 273
    :cond_0
    iget-object v0, p0, Lcom/upsight/android/analytics/internal/configuration/ConfigurationManager;->mLogger:Lcom/upsight/android/logger/UpsightLogger;

    const-string v1, "Configuration"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Schedule recording of config.expired in "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ms"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2, v3}, Lcom/upsight/android/logger/UpsightLogger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 274
    iget-object v0, p0, Lcom/upsight/android/analytics/internal/configuration/ConfigurationManager;->mWorker:Lrx/Scheduler$Worker;

    iget-object v1, p0, Lcom/upsight/android/analytics/internal/configuration/ConfigurationManager;->mSyncAction:Lrx/functions/Action0;

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, p1, p2, v2}, Lrx/Scheduler$Worker;->schedule(Lrx/functions/Action0;JLjava/util/concurrent/TimeUnit;)Lrx/Subscription;

    move-result-object v0

    iput-object v0, p0, Lcom/upsight/android/analytics/internal/configuration/ConfigurationManager;->mWorkerSubscription:Lrx/Subscription;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 275
    monitor-exit p0

    return-void

    .line 268
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public handle(Lcom/upsight/android/analytics/internal/DispatcherService$DestroyEvent;)V
    .locals 0
    .param p1, "event"    # Lcom/upsight/android/analytics/internal/DispatcherService$DestroyEvent;
    .annotation runtime Lcom/squareup/otto/Subscribe;
    .end annotation

    .prologue
    .line 334
    invoke-virtual {p0}, Lcom/upsight/android/analytics/internal/configuration/ConfigurationManager;->terminate()V

    .line 335
    return-void
.end method

.method public declared-synchronized launch()V
    .locals 1

    .prologue
    .line 341
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/upsight/android/analytics/internal/configuration/ConfigurationManager;->mIsLaunched:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 354
    :goto_0
    monitor-exit p0

    return-void

    .line 344
    :cond_0
    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Lcom/upsight/android/analytics/internal/configuration/ConfigurationManager;->mIsLaunched:Z

    .line 347
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/upsight/android/analytics/internal/configuration/ConfigurationManager;->mCurrentConfig:Lcom/upsight/android/analytics/internal/configuration/ConfigurationManager$Config;

    .line 348
    iget-object v0, p0, Lcom/upsight/android/analytics/internal/configuration/ConfigurationManager;->mDataStore:Lcom/upsight/android/persistence/UpsightDataStore;

    invoke-interface {v0, p0}, Lcom/upsight/android/persistence/UpsightDataStore;->subscribe(Ljava/lang/Object;)Lcom/upsight/android/persistence/UpsightSubscription;

    move-result-object v0

    iput-object v0, p0, Lcom/upsight/android/analytics/internal/configuration/ConfigurationManager;->mDataStoreSubscription:Lcom/upsight/android/persistence/UpsightSubscription;

    .line 349
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/upsight/android/analytics/internal/configuration/ConfigurationManager;->mWorkerSubscription:Lrx/Subscription;

    .line 350
    const/4 v0, -0x1

    iput v0, p0, Lcom/upsight/android/analytics/internal/configuration/ConfigurationManager;->mConfigExpiryRetryCount:I

    .line 351
    iget-object v0, p0, Lcom/upsight/android/analytics/internal/configuration/ConfigurationManager;->mBus:Lcom/squareup/otto/Bus;

    invoke-virtual {v0, p0}, Lcom/squareup/otto/Bus;->register(Ljava/lang/Object;)V

    .line 353
    invoke-direct {p0}, Lcom/upsight/android/analytics/internal/configuration/ConfigurationManager;->fetchCurrentConfig()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 341
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onEndpointResponse(Lcom/upsight/android/analytics/dispatcher/EndpointResponse;)V
    .locals 7
    .param p1, "response"    # Lcom/upsight/android/analytics/dispatcher/EndpointResponse;
    .annotation runtime Lcom/upsight/android/persistence/annotation/Created;
    .end annotation

    .prologue
    .line 290
    const-string v2, "upsight.configuration"

    invoke-virtual {p1}, Lcom/upsight/android/analytics/dispatcher/EndpointResponse;->getType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 330
    :goto_0
    return-void

    .line 295
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/upsight/android/analytics/internal/configuration/ConfigurationManager;->mResponseParser:Lcom/upsight/android/analytics/internal/configuration/ConfigurationResponseParser;

    invoke-virtual {p1}, Lcom/upsight/android/analytics/dispatcher/EndpointResponse;->getContent()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/upsight/android/analytics/internal/configuration/ConfigurationResponseParser;->parse(Ljava/lang/String;)Ljava/util/Collection;

    move-result-object v0

    .line 298
    .local v0, "configs":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/upsight/android/analytics/configuration/UpsightConfiguration;>;"
    iget-object v2, p0, Lcom/upsight/android/analytics/internal/configuration/ConfigurationManager;->mDataStore:Lcom/upsight/android/persistence/UpsightDataStore;

    const-class v3, Lcom/upsight/android/analytics/configuration/UpsightConfiguration;

    new-instance v4, Lcom/upsight/android/analytics/internal/configuration/ConfigurationManager$3;

    invoke-direct {v4, p0, v0}, Lcom/upsight/android/analytics/internal/configuration/ConfigurationManager$3;-><init>(Lcom/upsight/android/analytics/internal/configuration/ConfigurationManager;Ljava/util/Collection;)V

    invoke-interface {v2, v3, v4}, Lcom/upsight/android/persistence/UpsightDataStore;->fetch(Ljava/lang/Class;Lcom/upsight/android/persistence/UpsightDataStoreListener;)Lcom/upsight/android/persistence/UpsightSubscription;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 327
    .end local v0    # "configs":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/upsight/android/analytics/configuration/UpsightConfiguration;>;"
    :catch_0
    move-exception v1

    .line 328
    .local v1, "e":Ljava/io/IOException;
    iget-object v2, p0, Lcom/upsight/android/analytics/internal/configuration/ConfigurationManager;->mLogger:Lcom/upsight/android/logger/UpsightLogger;

    const-string v3, "Configuration"

    const-string v4, "Could not parse newly arrived configurations"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v1, v5, v6

    invoke-interface {v2, v3, v4, v5}, Lcom/upsight/android/logger/UpsightLogger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public declared-synchronized terminate()V
    .locals 4

    .prologue
    .line 360
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/upsight/android/analytics/internal/configuration/ConfigurationManager;->mBus:Lcom/squareup/otto/Bus;

    invoke-virtual {v0, p0}, Lcom/squareup/otto/Bus;->unregister(Ljava/lang/Object;)V

    .line 362
    iget-object v0, p0, Lcom/upsight/android/analytics/internal/configuration/ConfigurationManager;->mDataStoreSubscription:Lcom/upsight/android/persistence/UpsightSubscription;

    if-eqz v0, :cond_0

    .line 363
    iget-object v0, p0, Lcom/upsight/android/analytics/internal/configuration/ConfigurationManager;->mDataStoreSubscription:Lcom/upsight/android/persistence/UpsightSubscription;

    invoke-interface {v0}, Lcom/upsight/android/persistence/UpsightSubscription;->unsubscribe()V

    .line 364
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/upsight/android/analytics/internal/configuration/ConfigurationManager;->mDataStoreSubscription:Lcom/upsight/android/persistence/UpsightSubscription;

    .line 366
    :cond_0
    iget-object v0, p0, Lcom/upsight/android/analytics/internal/configuration/ConfigurationManager;->mWorkerSubscription:Lrx/Subscription;

    if-eqz v0, :cond_1

    .line 367
    iget-object v0, p0, Lcom/upsight/android/analytics/internal/configuration/ConfigurationManager;->mLogger:Lcom/upsight/android/logger/UpsightLogger;

    const-string v1, "Configuration"

    const-string v2, "Stop config.expired recording scheduler"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2, v3}, Lcom/upsight/android/logger/UpsightLogger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 368
    iget-object v0, p0, Lcom/upsight/android/analytics/internal/configuration/ConfigurationManager;->mWorkerSubscription:Lrx/Subscription;

    invoke-interface {v0}, Lrx/Subscription;->unsubscribe()V

    .line 369
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/upsight/android/analytics/internal/configuration/ConfigurationManager;->mWorkerSubscription:Lrx/Subscription;

    .line 371
    :cond_1
    const/4 v0, -0x1

    iput v0, p0, Lcom/upsight/android/analytics/internal/configuration/ConfigurationManager;->mConfigExpiryRetryCount:I

    .line 372
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/upsight/android/analytics/internal/configuration/ConfigurationManager;->mCurrentConfig:Lcom/upsight/android/analytics/internal/configuration/ConfigurationManager$Config;

    .line 374
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/upsight/android/analytics/internal/configuration/ConfigurationManager;->mIsLaunched:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 375
    monitor-exit p0

    return-void

    .line 360
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
