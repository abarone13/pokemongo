.class public final Lcom/upsight/android/analytics/internal/AnalyticsApiModule;
.super Ljava/lang/Object;
.source "AnalyticsApiModule.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public provideUpsightAnalyticsApi(Lcom/upsight/android/analytics/internal/Analytics;)Lcom/upsight/android/analytics/UpsightAnalyticsApi;
    .locals 0
    .param p1, "analytics"    # Lcom/upsight/android/analytics/internal/Analytics;

    .prologue
    .line 20
    return-object p1
.end method
