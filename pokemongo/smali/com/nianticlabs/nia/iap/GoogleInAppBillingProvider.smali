.class public Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider;
.super Ljava/lang/Object;
.source "GoogleInAppBillingProvider.java"

# interfaces
.implements Lcom/nianticlabs/nia/iap/InAppBillingProvider;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider$ProcessPurchasedItemsTask;,
        Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider$ConsumeItemTask;,
        Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider$GetSkuDetailsTask;,
        Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider$Logger;
    }
.end annotation


# static fields
.field private static final BILLING_RESPONSE_RESULT_BILLING_UNAVAILABLE:I = 0x3

.field private static final BILLING_RESPONSE_RESULT_DEVELOPER_ERROR:I = 0x5

.field private static final BILLING_RESPONSE_RESULT_ERROR:I = 0x6

.field private static final BILLING_RESPONSE_RESULT_ITEM_ALREADY_OWNED:I = 0x7

.field private static final BILLING_RESPONSE_RESULT_ITEM_NOT_OWNED:I = 0x8

.field private static final BILLING_RESPONSE_RESULT_ITEM_UNAVAILABLE:I = 0x4

.field private static final BILLING_RESPONSE_RESULT_NOT_FOUND:I = 0x3e8

.field private static final BILLING_RESPONSE_RESULT_OK:I = 0x0

.field private static final BILLING_RESPONSE_RESULT_USER_CANCELED:I = 0x1

.field private static final DEFAULT_BILLING_SERVICE_VERSION:I = 0x3

.field private static final DESIRED_BILLING_SERVICE_VERSION:I = 0x6

.field static final ENABLE_VERBOSE_LOGS:Z = false

.field private static final GET_SKU_DETAILS_ITEM_LIST:Ljava/lang/String; = "ITEM_ID_LIST"

.field private static final INAPP_CONTINUATION_TOKEN:Ljava/lang/String; = "INAPP_CONTINUATION_TOKEN"

.field private static final ITEM_TYPE_INAPP:Ljava/lang/String; = "inapp"

.field private static final PACKAGE_NAME_BASE:Ljava/lang/String; = "com.niantic"

.field private static final RESPONSE_BUY_INTENT:Ljava/lang/String; = "BUY_INTENT"

.field private static final RESPONSE_CODE:Ljava/lang/String; = "RESPONSE_CODE"

.field private static final RESPONSE_GET_SKU_DETAILS_LIST:Ljava/lang/String; = "DETAILS_LIST"

.field private static final RESPONSE_INAPP_PURCHASE_DATA:Ljava/lang/String; = "INAPP_PURCHASE_DATA"

.field private static final RESPONSE_INAPP_PURCHASE_DATA_LIST:Ljava/lang/String; = "INAPP_PURCHASE_DATA_LIST"

.field private static final RESPONSE_INAPP_SIGNATURE:Ljava/lang/String; = "INAPP_DATA_SIGNATURE"

.field private static final RESPONSE_INAPP_SIGNATURE_LIST:Ljava/lang/String; = "INAPP_DATA_SIGNATURE_LIST"

.field private static final UNKNOWN_CURRENCY_STRING:Ljava/lang/String; = "UNKNOWN"

.field private static instance:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider;",
            ">;"
        }
    .end annotation
.end field

.field private static final log:Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider$Logger;


# instance fields
.field private billingService:Lcom/android/vending/billing/IInAppBillingService;

.field private billingServiceVersion:I

.field private clientConnected:Z

.field private connectionInProgress:Z

.field private final context:Landroid/content/Context;

.field private currentPurchasableItems:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/nianticlabs/nia/iap/GetSkuDetailsResponseItem;",
            ">;"
        }
    .end annotation
.end field

.field private delegate:Lcom/nianticlabs/nia/iap/InAppBillingProvider$Delegate;

.field private itemBeingPurchased:Ljava/lang/String;

.field private final packageName:Ljava/lang/String;

.field private pendingIntent:Landroid/app/PendingIntent;

.field private purchaseSupported:Z

.field private serviceConnection:Landroid/content/ServiceConnection;

.field private transactionsInProgress:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 83
    const/4 v0, 0x0

    sput-object v0, Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider;->instance:Ljava/lang/ref/WeakReference;

    .line 119
    new-instance v0, Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider$Logger;

    const-class v1, Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider;

    invoke-direct {v0, v1}, Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider$Logger;-><init>(Ljava/lang/Class;)V

    sput-object v0, Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider;->log:Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider$Logger;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 365
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 126
    iput-object v3, p0, Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider;->serviceConnection:Landroid/content/ServiceConnection;

    .line 127
    iput-object v3, p0, Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider;->billingService:Lcom/android/vending/billing/IInAppBillingService;

    .line 128
    const/4 v1, 0x3

    iput v1, p0, Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider;->billingServiceVersion:I

    .line 129
    iput-boolean v2, p0, Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider;->purchaseSupported:Z

    .line 131
    iput v2, p0, Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider;->transactionsInProgress:I

    .line 132
    iput-boolean v2, p0, Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider;->connectionInProgress:Z

    .line 133
    iput-boolean v2, p0, Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider;->clientConnected:Z

    .line 134
    iput-object v3, p0, Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider;->itemBeingPurchased:Ljava/lang/String;

    .line 366
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 367
    .local v0, "checkedPackageName":Ljava/lang/String;
    const-string v1, "com.niantic"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 369
    const-string v1, "ERROR"

    iput-object v1, p0, Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider;->packageName:Ljava/lang/String;

    .line 374
    :goto_0
    iput-object p1, p0, Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider;->context:Landroid/content/Context;

    .line 375
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider;->currentPurchasableItems:Ljava/util/Map;

    .line 376
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v1, Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider;->instance:Ljava/lang/ref/WeakReference;

    .line 378
    invoke-direct {p0}, Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider;->connectToBillingService()V

    .line 379
    return-void

    .line 371
    :cond_0
    iput-object v0, p0, Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider;->packageName:Ljava/lang/String;

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider;)Lcom/android/vending/billing/IInAppBillingService;
    .locals 1
    .param p0, "x0"    # Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider;->billingService:Lcom/android/vending/billing/IInAppBillingService;

    return-object v0
.end method

.method static synthetic access$002(Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider;Lcom/android/vending/billing/IInAppBillingService;)Lcom/android/vending/billing/IInAppBillingService;
    .locals 0
    .param p0, "x0"    # Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider;
    .param p1, "x1"    # Lcom/android/vending/billing/IInAppBillingService;

    .prologue
    .line 35
    iput-object p1, p0, Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider;->billingService:Lcom/android/vending/billing/IInAppBillingService;

    return-object p1
.end method

.method static synthetic access$100(Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider;)I
    .locals 1
    .param p0, "x0"    # Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider;

    .prologue
    .line 35
    iget v0, p0, Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider;->billingServiceVersion:I

    return v0
.end method

.method static synthetic access$1000(Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider;)V
    .locals 0
    .param p0, "x0"    # Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider;

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider;->maybeDisconnectBillingService()V

    return-void
.end method

.method static synthetic access$102(Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider;I)I
    .locals 0
    .param p0, "x0"    # Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider;
    .param p1, "x1"    # I

    .prologue
    .line 35
    iput p1, p0, Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider;->billingServiceVersion:I

    return p1
.end method

.method static synthetic access$1100(Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider;)Landroid/content/ServiceConnection;
    .locals 1
    .param p0, "x0"    # Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider;->serviceConnection:Landroid/content/ServiceConnection;

    return-object v0
.end method

.method static synthetic access$1202(Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider;
    .param p1, "x1"    # Z

    .prologue
    .line 35
    iput-boolean p1, p0, Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider;->purchaseSupported:Z

    return p1
.end method

.method static synthetic access$1300(Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider;->context:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider;->packageName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider;->currentPurchasableItems:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$400(Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider;Ljava/util/Collection;)V
    .locals 0
    .param p0, "x0"    # Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider;
    .param p1, "x1"    # Ljava/util/Collection;

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider;->notifyPurchasableItemsResult(Ljava/util/Collection;)V

    return-void
.end method

.method static synthetic access$500(Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider;Lcom/nianticlabs/nia/iap/PurchaseResult;)V
    .locals 0
    .param p0, "x0"    # Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider;
    .param p1, "x1"    # Lcom/nianticlabs/nia/iap/PurchaseResult;

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider;->finalizePurchaseResult(Lcom/nianticlabs/nia/iap/PurchaseResult;)V

    return-void
.end method

.method static synthetic access$600(Landroid/os/Bundle;)I
    .locals 1
    .param p0, "x0"    # Landroid/os/Bundle;

    .prologue
    .line 35
    invoke-static {p0}, Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider;->getResponseCodeFromBundle(Landroid/os/Bundle;)I

    move-result v0

    return v0
.end method

.method static synthetic access$708(Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider;)I
    .locals 2
    .param p0, "x0"    # Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider;

    .prologue
    .line 35
    iget v0, p0, Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider;->transactionsInProgress:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider;->transactionsInProgress:I

    return v0
.end method

.method static synthetic access$800(Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider;IILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # Ljava/lang/String;
    .param p4, "x4"    # Ljava/lang/String;

    .prologue
    .line 35
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider;->processPurchaseResult(IILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$900(Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider;)V
    .locals 0
    .param p0, "x0"    # Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider;

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider;->finalizeConnectionResult()V

    return-void
.end method

.method private connectToBillingService()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 416
    iget-boolean v2, p0, Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider;->connectionInProgress:Z

    if-eqz v2, :cond_0

    .line 491
    :goto_0
    return-void

    .line 420
    :cond_0
    iget-object v2, p0, Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider;->billingService:Lcom/android/vending/billing/IInAppBillingService;

    if-eqz v2, :cond_1

    .line 423
    invoke-direct {p0}, Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider;->finalizeConnectionResult()V

    goto :goto_0

    .line 427
    :cond_1
    iput-boolean v4, p0, Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider;->connectionInProgress:Z

    .line 428
    new-instance v2, Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider$1;

    invoke-direct {v2, p0}, Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider$1;-><init>(Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider;)V

    iput-object v2, p0, Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider;->serviceConnection:Landroid/content/ServiceConnection;

    .line 482
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.android.vending.billing.InAppBillingService.BIND"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 483
    .local v1, "serviceIntent":Landroid/content/Intent;
    const-string v2, "com.android.vending"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 485
    iget-object v2, p0, Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider;->context:Landroid/content/Context;

    .line 486
    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 487
    .local v0, "providerList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 488
    :cond_2
    invoke-direct {p0}, Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider;->finalizeConnectionResult()V

    .line 490
    :cond_3
    iget-object v2, p0, Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider;->context:Landroid/content/Context;

    iget-object v3, p0, Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider;->serviceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v2, v1, v3, v4}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    goto :goto_0
.end method

.method private finalizeConnectionResult()V
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 778
    iput-boolean v0, p0, Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider;->connectionInProgress:Z

    .line 779
    iget-object v1, p0, Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider;->delegate:Lcom/nianticlabs/nia/iap/InAppBillingProvider$Delegate;

    if-eqz v1, :cond_1

    .line 780
    iget-object v1, p0, Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider;->delegate:Lcom/nianticlabs/nia/iap/InAppBillingProvider$Delegate;

    iget-object v2, p0, Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider;->billingService:Lcom/android/vending/billing/IInAppBillingService;

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-interface {v1, v0}, Lcom/nianticlabs/nia/iap/InAppBillingProvider$Delegate;->onConnectionStateChanged(Z)V

    .line 782
    :cond_1
    return-void
.end method

.method private finalizePurchaseResult(Lcom/nianticlabs/nia/iap/PurchaseResult;)V
    .locals 1
    .param p1, "result"    # Lcom/nianticlabs/nia/iap/PurchaseResult;

    .prologue
    .line 792
    iget v0, p0, Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider;->transactionsInProgress:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider;->transactionsInProgress:I

    .line 793
    invoke-direct {p0}, Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider;->maybeDisconnectBillingService()V

    .line 797
    iget-object v0, p0, Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider;->delegate:Lcom/nianticlabs/nia/iap/InAppBillingProvider$Delegate;

    if-eqz v0, :cond_0

    .line 798
    iget-object v0, p0, Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider;->delegate:Lcom/nianticlabs/nia/iap/InAppBillingProvider$Delegate;

    invoke-interface {v0, p1}, Lcom/nianticlabs/nia/iap/InAppBillingProvider$Delegate;->purchaseResult(Lcom/nianticlabs/nia/iap/PurchaseResult;)V

    .line 802
    :cond_0
    return-void
.end method

.method public static getInstance()Ljava/lang/ref/WeakReference;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider;",
            ">;"
        }
    .end annotation

    .prologue
    .line 86
    sget-object v0, Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider;->instance:Ljava/lang/ref/WeakReference;

    return-object v0
.end method

.method private static getResponseCodeFromBundle(Landroid/os/Bundle;)I
    .locals 1
    .param p0, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 807
    const-string v0, "RESPONSE_CODE"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider;->getResponseCodeFromObject(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method private static getResponseCodeFromIntent(Landroid/content/Intent;)I
    .locals 2
    .param p0, "intent"    # Landroid/content/Intent;

    .prologue
    .line 810
    invoke-virtual {p0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "RESPONSE_CODE"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider;->getResponseCodeFromObject(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method private static getResponseCodeFromObject(Ljava/lang/Object;)I
    .locals 2
    .param p0, "responseObject"    # Ljava/lang/Object;

    .prologue
    .line 813
    if-nez p0, :cond_0

    .line 815
    const/4 v0, 0x0

    .line 825
    .end local p0    # "responseObject":Ljava/lang/Object;
    :goto_0
    return v0

    .line 817
    .restart local p0    # "responseObject":Ljava/lang/Object;
    :cond_0
    instance-of v0, p0, Ljava/lang/Integer;

    if-eqz v0, :cond_1

    .line 818
    check-cast p0, Ljava/lang/Integer;

    .end local p0    # "responseObject":Ljava/lang/Object;
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0

    .line 820
    .restart local p0    # "responseObject":Ljava/lang/Object;
    :cond_1
    instance-of v0, p0, Ljava/lang/Long;

    if-eqz v0, :cond_2

    .line 821
    check-cast p0, Ljava/lang/Long;

    .end local p0    # "responseObject":Ljava/lang/Object;
    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    long-to-int v0, v0

    goto :goto_0

    .line 825
    .restart local p0    # "responseObject":Ljava/lang/Object;
    :cond_2
    const/4 v0, 0x6

    goto :goto_0
.end method

.method private handlePurchaseErrorResult(I)Z
    .locals 2
    .param p1, "resultCode"    # I

    .prologue
    const/4 v0, 0x0

    .line 748
    packed-switch p1, :pswitch_data_0

    .line 772
    :pswitch_0
    sget-object v0, Lcom/nianticlabs/nia/iap/PurchaseResult;->FAILURE:Lcom/nianticlabs/nia/iap/PurchaseResult;

    invoke-direct {p0, v0}, Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider;->finalizePurchaseResult(Lcom/nianticlabs/nia/iap/PurchaseResult;)V

    .line 774
    :goto_0
    const/4 v0, 0x1

    :pswitch_1
    return v0

    .line 753
    :pswitch_2
    sget-object v0, Lcom/nianticlabs/nia/iap/PurchaseResult;->USER_CANCELLED:Lcom/nianticlabs/nia/iap/PurchaseResult;

    invoke-direct {p0, v0}, Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider;->finalizePurchaseResult(Lcom/nianticlabs/nia/iap/PurchaseResult;)V

    goto :goto_0

    .line 757
    :pswitch_3
    sget-object v0, Lcom/nianticlabs/nia/iap/PurchaseResult;->BILLING_UNAVAILABLE:Lcom/nianticlabs/nia/iap/PurchaseResult;

    invoke-direct {p0, v0}, Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider;->finalizePurchaseResult(Lcom/nianticlabs/nia/iap/PurchaseResult;)V

    goto :goto_0

    .line 761
    :pswitch_4
    sget-object v0, Lcom/nianticlabs/nia/iap/PurchaseResult;->SKU_NOT_AVAILABLE:Lcom/nianticlabs/nia/iap/PurchaseResult;

    invoke-direct {p0, v0}, Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider;->finalizePurchaseResult(Lcom/nianticlabs/nia/iap/PurchaseResult;)V

    goto :goto_0

    .line 767
    :pswitch_5
    new-instance v1, Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider$ProcessPurchasedItemsTask;

    invoke-direct {v1, p0}, Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider$ProcessPurchasedItemsTask;-><init>(Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider;)V

    new-array v0, v0, [Ljava/lang/Void;

    invoke-virtual {v1, v0}, Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider$ProcessPurchasedItemsTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 768
    sget-object v0, Lcom/nianticlabs/nia/iap/PurchaseResult;->FAILURE:Lcom/nianticlabs/nia/iap/PurchaseResult;

    invoke-direct {p0, v0}, Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider;->finalizePurchaseResult(Lcom/nianticlabs/nia/iap/PurchaseResult;)V

    goto :goto_0

    .line 748
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_5
    .end packed-switch
.end method

.method private launchPurchaseActivity(Landroid/app/PendingIntent;)V
    .locals 1
    .param p1, "pendingIntent"    # Landroid/app/PendingIntent;

    .prologue
    .line 589
    iput-object p1, p0, Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider;->pendingIntent:Landroid/app/PendingIntent;

    .line 590
    new-instance v0, Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider$2;

    invoke-direct {v0, p0}, Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider$2;-><init>(Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider;)V

    invoke-static {v0}, Lcom/nianticlabs/nia/contextservice/ContextService;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 596
    return-void
.end method

.method private maybeDisconnectBillingService()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 502
    iget v0, p0, Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider;->transactionsInProgress:I

    if-gtz v0, :cond_0

    iget-boolean v0, p0, Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider;->connectionInProgress:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider;->clientConnected:Z

    if-eqz v0, :cond_1

    .line 516
    :cond_0
    :goto_0
    return-void

    .line 510
    :cond_1
    iget-object v0, p0, Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider;->serviceConnection:Landroid/content/ServiceConnection;

    if-eqz v0, :cond_2

    .line 511
    iget-object v0, p0, Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider;->serviceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 513
    :cond_2
    iput-object v2, p0, Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider;->serviceConnection:Landroid/content/ServiceConnection;

    .line 514
    iput-object v2, p0, Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider;->billingService:Lcom/android/vending/billing/IInAppBillingService;

    .line 515
    const/4 v0, 0x0

    iput v0, p0, Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider;->transactionsInProgress:I

    goto :goto_0
.end method

.method private notifyPurchasableItemsResult(Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/nianticlabs/nia/iap/PurchasableItemDetails;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 786
    .local p1, "purchasableItems":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/nianticlabs/nia/iap/PurchasableItemDetails;>;"
    iget-object v0, p0, Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider;->delegate:Lcom/nianticlabs/nia/iap/InAppBillingProvider$Delegate;

    if-eqz v0, :cond_0

    .line 787
    iget-object v0, p0, Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider;->delegate:Lcom/nianticlabs/nia/iap/InAppBillingProvider$Delegate;

    invoke-interface {v0, p1}, Lcom/nianticlabs/nia/iap/InAppBillingProvider$Delegate;->purchasableItemsResult(Ljava/util/Collection;)V

    .line 789
    :cond_0
    return-void
.end method

.method private processPurchaseResult(IILjava/lang/String;Ljava/lang/String;)V
    .locals 10
    .param p1, "activityResultCode"    # I
    .param p2, "responseCode"    # I
    .param p3, "purchaseData"    # Ljava/lang/String;
    .param p4, "dataSignature"    # Ljava/lang/String;

    .prologue
    const/16 v1, 0x3e8

    .line 646
    iget-object v9, p0, Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider;->itemBeingPurchased:Ljava/lang/String;

    .line 647
    .local v9, "purchasedItem":Ljava/lang/String;
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider;->itemBeingPurchased:Ljava/lang/String;

    .line 649
    iget-object v0, p0, Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider;->billingService:Lcom/android/vending/billing/IInAppBillingService;

    if-nez v0, :cond_1

    .line 721
    :cond_0
    :goto_0
    return-void

    .line 653
    :cond_1
    if-eq p2, v1, :cond_2

    .line 654
    invoke-direct {p0, p2}, Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider;->handlePurchaseErrorResult(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 657
    :cond_2
    if-nez p1, :cond_3

    .line 659
    sget-object v0, Lcom/nianticlabs/nia/iap/PurchaseResult;->USER_CANCELLED:Lcom/nianticlabs/nia/iap/PurchaseResult;

    invoke-direct {p0, v0}, Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider;->finalizePurchaseResult(Lcom/nianticlabs/nia/iap/PurchaseResult;)V

    goto :goto_0

    .line 662
    :cond_3
    const/4 v0, -0x1

    if-eq p1, v0, :cond_4

    .line 664
    sget-object v0, Lcom/nianticlabs/nia/iap/PurchaseResult;->FAILURE:Lcom/nianticlabs/nia/iap/PurchaseResult;

    invoke-direct {p0, v0}, Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider;->finalizePurchaseResult(Lcom/nianticlabs/nia/iap/PurchaseResult;)V

    goto :goto_0

    .line 667
    :cond_4
    if-eq p2, v1, :cond_5

    if-eqz p3, :cond_5

    if-nez p4, :cond_6

    .line 674
    :cond_5
    sget-object v0, Lcom/nianticlabs/nia/iap/PurchaseResult;->FAILURE:Lcom/nianticlabs/nia/iap/PurchaseResult;

    invoke-direct {p0, v0}, Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider;->finalizePurchaseResult(Lcom/nianticlabs/nia/iap/PurchaseResult;)V

    goto :goto_0

    .line 678
    :cond_6
    const-string v3, "UNKNOWN"

    .line 679
    .local v3, "currency":Ljava/lang/String;
    const/4 v8, 0x0

    .line 680
    .local v8, "productId":Ljava/lang/String;
    const-wide/16 v4, 0x0

    .line 681
    .local v4, "pricePaidE6":J
    if-eqz v9, :cond_7

    .line 682
    iget-object v0, p0, Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider;->currentPurchasableItems:Ljava/util/Map;

    invoke-interface {v0, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/nianticlabs/nia/iap/GetSkuDetailsResponseItem;

    .line 683
    .local v6, "itemDetails":Lcom/nianticlabs/nia/iap/GetSkuDetailsResponseItem;
    if-eqz v6, :cond_7

    .line 684
    invoke-virtual {v6}, Lcom/nianticlabs/nia/iap/GetSkuDetailsResponseItem;->getProductId()Ljava/lang/String;

    move-result-object v8

    .line 685
    invoke-virtual {v6}, Lcom/nianticlabs/nia/iap/GetSkuDetailsResponseItem;->getCurrencyCode()Ljava/lang/String;

    move-result-object v3

    .line 686
    invoke-virtual {v6}, Lcom/nianticlabs/nia/iap/GetSkuDetailsResponseItem;->getPriceE6()J

    move-result-wide v4

    .line 689
    .end local v6    # "itemDetails":Lcom/nianticlabs/nia/iap/GetSkuDetailsResponseItem;
    :cond_7
    if-nez v8, :cond_9

    .line 692
    invoke-static {p3}, Lcom/nianticlabs/nia/iap/GoogleInAppPurchaseData;->fromJson(Ljava/lang/String;)Lcom/nianticlabs/nia/iap/GoogleInAppPurchaseData;

    move-result-object v7

    .line 693
    .local v7, "parsedPurchaseData":Lcom/nianticlabs/nia/iap/GoogleInAppPurchaseData;
    if-eqz v7, :cond_8

    .line 694
    invoke-virtual {v7}, Lcom/nianticlabs/nia/iap/GoogleInAppPurchaseData;->getProductId()Ljava/lang/String;

    move-result-object v8

    .line 696
    :cond_8
    if-nez v8, :cond_9

    .line 697
    const-string v8, "unknown"

    .line 714
    .end local v7    # "parsedPurchaseData":Lcom/nianticlabs/nia/iap/GoogleInAppPurchaseData;
    :cond_9
    iget-object v0, p0, Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider;->delegate:Lcom/nianticlabs/nia/iap/InAppBillingProvider$Delegate;

    move-object v1, p3

    move-object v2, p4

    invoke-interface/range {v0 .. v5}, Lcom/nianticlabs/nia/iap/InAppBillingProvider$Delegate;->ProcessReceipt(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    goto :goto_0
.end method


# virtual methods
.method public forwardedOnActivityResult(ILandroid/content/Intent;)V
    .locals 6
    .param p1, "resultCode"    # I
    .param p2, "data"    # Landroid/content/Intent;

    .prologue
    .line 621
    if-eqz p2, :cond_0

    .line 622
    invoke-static {p2}, Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider;->getResponseCodeFromIntent(Landroid/content/Intent;)I

    move-result v3

    .line 623
    .local v3, "responseCode":I
    const-string v0, "INAPP_PURCHASE_DATA"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 624
    .local v4, "purchaseData":Ljava/lang/String;
    const-string v0, "INAPP_DATA_SIGNATURE"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 632
    .local v5, "dataSignature":Ljava/lang/String;
    :goto_0
    new-instance v0, Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider$3;

    move-object v1, p0

    move v2, p1

    invoke-direct/range {v0 .. v5}, Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider$3;-><init>(Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider;IILjava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/nianticlabs/nia/contextservice/ContextService;->runOnServiceHandler(Ljava/lang/Runnable;)V

    .line 638
    return-void

    .line 627
    .end local v3    # "responseCode":I
    .end local v4    # "purchaseData":Ljava/lang/String;
    .end local v5    # "dataSignature":Ljava/lang/String;
    :cond_0
    const/16 v3, 0x3e8

    .line 628
    .restart local v3    # "responseCode":I
    const/4 v4, 0x0

    .line 629
    .restart local v4    # "purchaseData":Ljava/lang/String;
    const/4 v5, 0x0

    .restart local v5    # "dataSignature":Ljava/lang/String;
    goto :goto_0
.end method

.method public getPurchasableItems(Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 521
    .local p1, "itemIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider;->isBillingAvailable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 524
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider;->notifyPurchasableItemsResult(Ljava/util/Collection;)V

    .line 529
    :goto_0
    return-void

    .line 528
    :cond_0
    new-instance v0, Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider$GetSkuDetailsTask;

    invoke-direct {v0, p0, p1}, Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider$GetSkuDetailsTask;-><init>(Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider;Ljava/util/ArrayList;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider$GetSkuDetailsTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method public isBillingAvailable()Z
    .locals 1

    .prologue
    .line 405
    iget-object v0, p0, Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider;->billingService:Lcom/android/vending/billing/IInAppBillingService;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider;->purchaseSupported:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isTransactionInProgress()Z
    .locals 1

    .prologue
    .line 411
    iget v0, p0, Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider;->transactionsInProgress:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 398
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider;->clientConnected:Z

    .line 399
    invoke-direct {p0}, Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider;->maybeDisconnectBillingService()V

    .line 400
    return-void
.end method

.method public onProcessedGoogleBillingTransaction(ZLjava/lang/String;)V
    .locals 2
    .param p1, "success"    # Z
    .param p2, "purchaseToken"    # Ljava/lang/String;

    .prologue
    .line 728
    if-nez p1, :cond_0

    .line 730
    sget-object v0, Lcom/nianticlabs/nia/iap/PurchaseResult;->FAILURE:Lcom/nianticlabs/nia/iap/PurchaseResult;

    invoke-direct {p0, v0}, Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider;->finalizePurchaseResult(Lcom/nianticlabs/nia/iap/PurchaseResult;)V

    .line 745
    :goto_0
    return-void

    .line 733
    :cond_0
    iget-object v0, p0, Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider;->billingService:Lcom/android/vending/billing/IInAppBillingService;

    if-nez v0, :cond_1

    .line 735
    sget-object v0, Lcom/nianticlabs/nia/iap/PurchaseResult;->FAILURE:Lcom/nianticlabs/nia/iap/PurchaseResult;

    invoke-direct {p0, v0}, Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider;->finalizePurchaseResult(Lcom/nianticlabs/nia/iap/PurchaseResult;)V

    goto :goto_0

    .line 738
    :cond_1
    if-nez p2, :cond_2

    .line 740
    sget-object v0, Lcom/nianticlabs/nia/iap/PurchaseResult;->FAILURE:Lcom/nianticlabs/nia/iap/PurchaseResult;

    invoke-direct {p0, v0}, Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider;->finalizePurchaseResult(Lcom/nianticlabs/nia/iap/PurchaseResult;)V

    goto :goto_0

    .line 744
    :cond_2
    new-instance v0, Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider$ConsumeItemTask;

    invoke-direct {v0, p0, p2}, Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider$ConsumeItemTask;-><init>(Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider;Ljava/lang/String;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider$ConsumeItemTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 390
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider;->clientConnected:Z

    .line 391
    invoke-direct {p0}, Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider;->connectToBillingService()V

    .line 392
    return-void
.end method

.method public purchaseItem(Ljava/lang/String;Ljava/lang/String;)V
    .locals 11
    .param p1, "itemId"    # Ljava/lang/String;
    .param p2, "developerPayload"    # Ljava/lang/String;

    .prologue
    .line 539
    iget v0, p0, Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider;->transactionsInProgress:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider;->transactionsInProgress:I

    .line 540
    invoke-virtual {p0}, Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider;->isBillingAvailable()Z

    move-result v0

    if-nez v0, :cond_1

    .line 542
    sget-object v0, Lcom/nianticlabs/nia/iap/PurchaseResult;->BILLING_UNAVAILABLE:Lcom/nianticlabs/nia/iap/PurchaseResult;

    invoke-direct {p0, v0}, Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider;->finalizePurchaseResult(Lcom/nianticlabs/nia/iap/PurchaseResult;)V

    .line 586
    :cond_0
    :goto_0
    return-void

    .line 546
    :cond_1
    iget-object v0, p0, Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider;->currentPurchasableItems:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 548
    sget-object v0, Lcom/nianticlabs/nia/iap/PurchaseResult;->SKU_NOT_AVAILABLE:Lcom/nianticlabs/nia/iap/PurchaseResult;

    invoke-direct {p0, v0}, Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider;->finalizePurchaseResult(Lcom/nianticlabs/nia/iap/PurchaseResult;)V

    goto :goto_0

    .line 554
    :cond_2
    :try_start_0
    iget v0, p0, Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider;->billingServiceVersion:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_3

    .line 555
    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    .line 556
    .local v6, "extras":Landroid/os/Bundle;
    const-string v0, "accountId"

    invoke-virtual {v6, v0, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 557
    iget-object v0, p0, Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider;->billingService:Lcom/android/vending/billing/IInAppBillingService;

    iget v1, p0, Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider;->billingServiceVersion:I

    iget-object v2, p0, Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider;->packageName:Ljava/lang/String;

    const-string v4, "inapp"

    move-object v3, p1

    move-object v5, p2

    invoke-interface/range {v0 .. v6}, Lcom/android/vending/billing/IInAppBillingService;->getBuyIntentExtraParams(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    .line 569
    .end local v6    # "extras":Landroid/os/Bundle;
    .local v7, "buyIntentBundle":Landroid/os/Bundle;
    :goto_1
    const-string v0, "BUY_INTENT"

    invoke-virtual {v7, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v10

    check-cast v10, Landroid/app/PendingIntent;

    .line 570
    .local v10, "pendingIntent":Landroid/app/PendingIntent;
    invoke-static {v7}, Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider;->getResponseCodeFromBundle(Landroid/os/Bundle;)I

    move-result v8

    .line 571
    .local v8, "buyIntentResult":I
    invoke-direct {p0, v8}, Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider;->handlePurchaseErrorResult(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 574
    if-nez v10, :cond_4

    .line 576
    sget-object v0, Lcom/nianticlabs/nia/iap/PurchaseResult;->FAILURE:Lcom/nianticlabs/nia/iap/PurchaseResult;

    invoke-direct {p0, v0}, Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider;->finalizePurchaseResult(Lcom/nianticlabs/nia/iap/PurchaseResult;)V

    goto :goto_0

    .line 560
    .end local v7    # "buyIntentBundle":Landroid/os/Bundle;
    .end local v8    # "buyIntentResult":I
    .end local v10    # "pendingIntent":Landroid/app/PendingIntent;
    :cond_3
    :try_start_1
    iget-object v0, p0, Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider;->billingService:Lcom/android/vending/billing/IInAppBillingService;

    iget v1, p0, Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider;->billingServiceVersion:I

    iget-object v2, p0, Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider;->packageName:Ljava/lang/String;

    const-string v4, "inapp"

    move-object v3, p1

    move-object v5, p2

    invoke-interface/range {v0 .. v5}, Lcom/android/vending/billing/IInAppBillingService;->getBuyIntent(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v7

    .restart local v7    # "buyIntentBundle":Landroid/os/Bundle;
    goto :goto_1

    .line 563
    .end local v7    # "buyIntentBundle":Landroid/os/Bundle;
    :catch_0
    move-exception v9

    .line 565
    .local v9, "e":Landroid/os/RemoteException;
    sget-object v0, Lcom/nianticlabs/nia/iap/PurchaseResult;->FAILURE:Lcom/nianticlabs/nia/iap/PurchaseResult;

    invoke-direct {p0, v0}, Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider;->finalizePurchaseResult(Lcom/nianticlabs/nia/iap/PurchaseResult;)V

    goto :goto_0

    .line 580
    .end local v9    # "e":Landroid/os/RemoteException;
    .restart local v7    # "buyIntentBundle":Landroid/os/Bundle;
    .restart local v8    # "buyIntentResult":I
    .restart local v10    # "pendingIntent":Landroid/app/PendingIntent;
    :cond_4
    iget v0, p0, Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider;->transactionsInProgress:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_5

    .line 581
    iput-object p1, p0, Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider;->itemBeingPurchased:Ljava/lang/String;

    .line 585
    :goto_2
    invoke-direct {p0, v10}, Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider;->launchPurchaseActivity(Landroid/app/PendingIntent;)V

    goto :goto_0

    .line 583
    :cond_5
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider;->itemBeingPurchased:Ljava/lang/String;

    goto :goto_2
.end method

.method public setDelegate(Lcom/nianticlabs/nia/iap/InAppBillingProvider$Delegate;)V
    .locals 0
    .param p1, "delegate"    # Lcom/nianticlabs/nia/iap/InAppBillingProvider$Delegate;

    .prologue
    .line 383
    iput-object p1, p0, Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider;->delegate:Lcom/nianticlabs/nia/iap/InAppBillingProvider$Delegate;

    .line 384
    return-void
.end method

.method public startBuyIntent(Landroid/app/Activity;)V
    .locals 9
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    const/4 v8, 0x0

    .line 600
    :try_start_0
    iget-object v0, p0, Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider;->pendingIntent:Landroid/app/PendingIntent;

    .line 601
    invoke-virtual {v0}, Landroid/app/PendingIntent;->getIntentSender()Landroid/content/IntentSender;

    move-result-object v1

    const/16 v2, 0x2719

    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p1

    .line 600
    invoke-virtual/range {v0 .. v6}, Landroid/app/Activity;->startIntentSenderForResult(Landroid/content/IntentSender;ILandroid/content/Intent;III)V
    :try_end_0
    .catch Landroid/content/IntentSender$SendIntentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 611
    :goto_0
    return-void

    .line 605
    :catch_0
    move-exception v7

    .line 607
    .local v7, "e":Landroid/content/IntentSender$SendIntentException;
    iput-object v8, p0, Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider;->itemBeingPurchased:Ljava/lang/String;

    .line 608
    iput-object v8, p0, Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider;->pendingIntent:Landroid/app/PendingIntent;

    .line 609
    sget-object v0, Lcom/nianticlabs/nia/iap/PurchaseResult;->FAILURE:Lcom/nianticlabs/nia/iap/PurchaseResult;

    invoke-direct {p0, v0}, Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider;->finalizePurchaseResult(Lcom/nianticlabs/nia/iap/PurchaseResult;)V

    goto :goto_0
.end method
