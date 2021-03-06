.class Lcom/upsight/android/marketing/internal/Marketing;
.super Ljava/lang/Object;
.source "Marketing.java"

# interfaces
.implements Lcom/upsight/android/marketing/UpsightMarketingApi;


# instance fields
.field private mBillboardManager:Lcom/upsight/android/marketing/UpsightBillboardManager;

.field private mContentMediationManager:Lcom/upsight/android/marketing/internal/content/MarketingContentMediatorManager;

.field private mMarketingContentStore:Lcom/upsight/android/marketing/UpsightMarketingContentStore;


# direct methods
.method public constructor <init>(Lcom/upsight/android/marketing/UpsightBillboardManager;Lcom/upsight/android/marketing/UpsightMarketingContentStore;Lcom/upsight/android/marketing/internal/content/MarketingContentMediatorManager;)V
    .locals 0
    .param p1, "billboardManager"    # Lcom/upsight/android/marketing/UpsightBillboardManager;
    .param p2, "marketingContentStore"    # Lcom/upsight/android/marketing/UpsightMarketingContentStore;
    .param p3, "contentMediatorManager"    # Lcom/upsight/android/marketing/internal/content/MarketingContentMediatorManager;

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/upsight/android/marketing/internal/Marketing;->mBillboardManager:Lcom/upsight/android/marketing/UpsightBillboardManager;

    .line 31
    iput-object p2, p0, Lcom/upsight/android/marketing/internal/Marketing;->mMarketingContentStore:Lcom/upsight/android/marketing/UpsightMarketingContentStore;

    .line 32
    iput-object p3, p0, Lcom/upsight/android/marketing/internal/Marketing;->mContentMediationManager:Lcom/upsight/android/marketing/internal/content/MarketingContentMediatorManager;

    .line 33
    return-void
.end method


# virtual methods
.method public isContentReady(Ljava/lang/String;)Z
    .locals 1
    .param p1, "scope"    # Ljava/lang/String;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/upsight/android/marketing/internal/Marketing;->mMarketingContentStore:Lcom/upsight/android/marketing/UpsightMarketingContentStore;

    invoke-virtual {v0, p1}, Lcom/upsight/android/marketing/UpsightMarketingContentStore;->isContentReady(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public registerBillboard(Lcom/upsight/android/marketing/internal/billboard/Billboard;)Z
    .locals 1
    .param p1, "billboard"    # Lcom/upsight/android/marketing/internal/billboard/Billboard;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/upsight/android/marketing/internal/Marketing;->mBillboardManager:Lcom/upsight/android/marketing/UpsightBillboardManager;

    invoke-interface {v0, p1}, Lcom/upsight/android/marketing/UpsightBillboardManager;->registerBillboard(Lcom/upsight/android/marketing/internal/billboard/Billboard;)Z

    move-result v0

    return v0
.end method

.method public registerContentMediator(Lcom/upsight/android/marketing/UpsightContentMediator;)V
    .locals 1
    .param p1, "contentMediator"    # Lcom/upsight/android/marketing/UpsightContentMediator;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/upsight/android/marketing/internal/Marketing;->mContentMediationManager:Lcom/upsight/android/marketing/internal/content/MarketingContentMediatorManager;

    invoke-virtual {v0, p1}, Lcom/upsight/android/marketing/internal/content/MarketingContentMediatorManager;->register(Lcom/upsight/android/marketing/UpsightContentMediator;)V

    .line 48
    return-void
.end method

.method public unregisterBillboard(Lcom/upsight/android/marketing/internal/billboard/Billboard;)Z
    .locals 1
    .param p1, "billboard"    # Lcom/upsight/android/marketing/internal/billboard/Billboard;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/upsight/android/marketing/internal/Marketing;->mBillboardManager:Lcom/upsight/android/marketing/UpsightBillboardManager;

    invoke-interface {v0, p1}, Lcom/upsight/android/marketing/UpsightBillboardManager;->unregisterBillboard(Lcom/upsight/android/marketing/internal/billboard/Billboard;)Z

    move-result v0

    return v0
.end method
