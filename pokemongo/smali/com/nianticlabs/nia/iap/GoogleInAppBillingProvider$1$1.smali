.class Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider$1$1;
.super Ljava/lang/Object;
.source "GoogleInAppBillingProvider.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider$1;->onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider$1;

.field final synthetic val$service:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider$1;Landroid/os/IBinder;)V
    .locals 0
    .param p1, "this$1"    # Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider$1;

    .prologue
    .line 431
    iput-object p1, p0, Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider$1$1;->this$1:Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider$1;

    iput-object p2, p0, Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider$1$1;->val$service:Landroid/os/IBinder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const/4 v3, 0x0

    .line 435
    iget-object v2, p0, Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider$1$1;->this$1:Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider$1;

    iget-object v2, v2, Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider$1;->this$0:Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider;

    invoke-static {v2}, Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider;->access$1100(Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider;)Landroid/content/ServiceConnection;

    move-result-object v2

    if-nez v2, :cond_0

    .line 437
    iget-object v2, p0, Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider$1$1;->this$1:Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider$1;

    iget-object v2, v2, Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider$1;->this$0:Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider;

    invoke-static {v2}, Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider;->access$900(Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider;)V

    .line 466
    :goto_0
    return-void

    .line 442
    :cond_0
    iget-object v2, p0, Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider$1$1;->this$1:Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider$1;

    iget-object v2, v2, Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider$1;->this$0:Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider;

    iget-object v4, p0, Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider$1$1;->val$service:Landroid/os/IBinder;

    invoke-static {v4}, Lcom/android/vending/billing/IInAppBillingService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/vending/billing/IInAppBillingService;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider;->access$002(Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider;Lcom/android/vending/billing/IInAppBillingService;)Lcom/android/vending/billing/IInAppBillingService;

    .line 444
    :try_start_0
    iget-object v2, p0, Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider$1$1;->this$1:Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider$1;

    iget-object v2, v2, Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider$1;->this$0:Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider;

    const/4 v4, 0x6

    invoke-static {v2, v4}, Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider;->access$102(Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider;I)I

    .line 445
    iget-object v2, p0, Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider$1$1;->this$1:Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider$1;

    iget-object v2, v2, Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider$1;->this$0:Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider;

    invoke-static {v2}, Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider;->access$000(Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider;)Lcom/android/vending/billing/IInAppBillingService;

    move-result-object v2

    iget-object v4, p0, Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider$1$1;->this$1:Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider$1;

    iget-object v4, v4, Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider$1;->this$0:Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider;

    .line 446
    invoke-static {v4}, Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider;->access$100(Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider;)I

    move-result v4

    iget-object v5, p0, Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider$1$1;->this$1:Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider$1;

    iget-object v5, v5, Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider$1;->this$0:Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider;

    invoke-static {v5}, Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider;->access$200(Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "inapp"

    .line 445
    invoke-interface {v2, v4, v5, v6}, Lcom/android/vending/billing/IInAppBillingService;->isBillingSupported(ILjava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 447
    .local v1, "response":I
    if-eqz v1, :cond_1

    .line 448
    iget-object v2, p0, Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider$1$1;->this$1:Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider$1;

    iget-object v2, v2, Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider$1;->this$0:Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider;

    const/4 v4, 0x3

    invoke-static {v2, v4}, Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider;->access$102(Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider;I)I

    .line 449
    iget-object v2, p0, Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider$1$1;->this$1:Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider$1;

    iget-object v2, v2, Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider$1;->this$0:Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider;

    invoke-static {v2}, Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider;->access$000(Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider;)Lcom/android/vending/billing/IInAppBillingService;

    move-result-object v2

    iget-object v4, p0, Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider$1$1;->this$1:Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider$1;

    iget-object v4, v4, Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider$1;->this$0:Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider;

    .line 450
    invoke-static {v4}, Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider;->access$100(Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider;)I

    move-result v4

    iget-object v5, p0, Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider$1$1;->this$1:Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider$1;

    iget-object v5, v5, Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider$1;->this$0:Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider;

    invoke-static {v5}, Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider;->access$200(Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "inapp"

    .line 449
    invoke-interface {v2, v4, v5, v6}, Lcom/android/vending/billing/IInAppBillingService;->isBillingSupported(ILjava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 452
    :cond_1
    iget-object v2, p0, Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider$1$1;->this$1:Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider$1;

    iget-object v4, v2, Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider$1;->this$0:Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider;

    if-nez v1, :cond_2

    const/4 v2, 0x1

    :goto_1
    invoke-static {v4, v2}, Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider;->access$1202(Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider;Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 460
    .end local v1    # "response":I
    :goto_2
    iget-object v2, p0, Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider$1$1;->this$1:Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider$1;

    iget-object v2, v2, Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider$1;->this$0:Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider;

    invoke-static {v2}, Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider;->access$300(Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    if-lez v2, :cond_3

    .line 461
    new-instance v2, Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider$ProcessPurchasedItemsTask;

    iget-object v4, p0, Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider$1$1;->this$1:Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider$1;

    iget-object v4, v4, Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider$1;->this$0:Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider;

    invoke-direct {v2, v4}, Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider$ProcessPurchasedItemsTask;-><init>(Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider;)V

    new-array v3, v3, [Ljava/lang/Void;

    invoke-virtual {v2, v3}, Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider$ProcessPurchasedItemsTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto/16 :goto_0

    .restart local v1    # "response":I
    :cond_2
    move v2, v3

    .line 452
    goto :goto_1

    .line 455
    .end local v1    # "response":I
    :catch_0
    move-exception v0

    .line 457
    .local v0, "e":Landroid/os/RemoteException;
    iget-object v2, p0, Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider$1$1;->this$1:Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider$1;

    iget-object v2, v2, Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider$1;->this$0:Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider;

    invoke-static {v2, v3}, Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider;->access$1202(Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider;Z)Z

    goto :goto_2

    .line 464
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_3
    iget-object v2, p0, Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider$1$1;->this$1:Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider$1;

    iget-object v2, v2, Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider$1;->this$0:Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider;

    invoke-static {v2}, Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider;->access$900(Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider;)V

    goto/16 :goto_0
.end method
