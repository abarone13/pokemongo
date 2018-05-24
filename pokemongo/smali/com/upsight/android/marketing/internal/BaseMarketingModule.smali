.class public final Lcom/upsight/android/marketing/internal/BaseMarketingModule;
.super Ljava/lang/Object;
.source "BaseMarketingModule.java"


# static fields
.field public static final SCHEDULER_MAIN:Ljava/lang/String; = "main"


# instance fields
.field private final mUpsight:Lcom/upsight/android/UpsightContext;


# direct methods
.method public constructor <init>(Lcom/upsight/android/UpsightContext;)V
    .locals 0
    .param p1, "upsight"    # Lcom/upsight/android/UpsightContext;

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/upsight/android/marketing/internal/BaseMarketingModule;->mUpsight:Lcom/upsight/android/UpsightContext;

    .line 30
    return-void
.end method


# virtual methods
.method provideMainScheduler()Lrx/Scheduler;
    .locals 1

    .prologue
    .line 50
    invoke-static {}, Lrx/android/schedulers/AndroidSchedulers;->mainThread()Lrx/Scheduler;

    move-result-object v0

    return-object v0
.end method

.method provideMarketingApi(Lcom/upsight/android/marketing/UpsightBillboardManager;Lcom/upsight/android/marketing/UpsightMarketingContentStore;Lcom/upsight/android/marketing/internal/content/MarketingContentMediatorManager;)Lcom/upsight/android/marketing/UpsightMarketingApi;
    .locals 1
    .param p1, "billboardManager"    # Lcom/upsight/android/marketing/UpsightBillboardManager;
    .param p2, "contentStore"    # Lcom/upsight/android/marketing/UpsightMarketingContentStore;
    .param p3, "contentMediatorManager"    # Lcom/upsight/android/marketing/internal/content/MarketingContentMediatorManager;

    .prologue
    .line 43
    new-instance v0, Lcom/upsight/android/marketing/internal/Marketing;

    invoke-direct {v0, p1, p2, p3}, Lcom/upsight/android/marketing/internal/Marketing;-><init>(Lcom/upsight/android/marketing/UpsightBillboardManager;Lcom/upsight/android/marketing/UpsightMarketingContentStore;Lcom/upsight/android/marketing/internal/content/MarketingContentMediatorManager;)V

    return-object v0
.end method

.method provideUpsightContext()Lcom/upsight/android/UpsightContext;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/upsight/android/marketing/internal/BaseMarketingModule;->mUpsight:Lcom/upsight/android/UpsightContext;

    return-object v0
.end method
