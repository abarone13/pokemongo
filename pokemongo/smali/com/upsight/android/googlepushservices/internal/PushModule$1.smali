.class Lcom/upsight/android/googlepushservices/internal/PushModule$1;
.super Ljava/lang/Object;
.source "PushModule.java"

# interfaces
.implements Lcom/upsight/android/analytics/internal/session/SessionManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/upsight/android/googlepushservices/internal/PushModule;->provideSessionManager(Lcom/upsight/android/UpsightContext;)Lcom/upsight/android/analytics/internal/session/SessionManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/upsight/android/googlepushservices/internal/PushModule;


# direct methods
.method constructor <init>(Lcom/upsight/android/googlepushservices/internal/PushModule;)V
    .locals 0
    .param p1, "this$0"    # Lcom/upsight/android/googlepushservices/internal/PushModule;

    .prologue
    .line 45
    iput-object p1, p0, Lcom/upsight/android/googlepushservices/internal/PushModule$1;->this$0:Lcom/upsight/android/googlepushservices/internal/PushModule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getBackgroundSession()Lcom/upsight/android/analytics/internal/session/Session;
    .locals 1

    .prologue
    .line 53
    const/4 v0, 0x0

    return-object v0
.end method

.method public getLatestSessionInfo()Lcom/upsight/android/analytics/session/UpsightSessionInfo;
    .locals 1

    .prologue
    .line 48
    sget-object v0, Lcom/upsight/android/analytics/session/UpsightSessionInfo;->NONE:Lcom/upsight/android/analytics/session/UpsightSessionInfo;

    return-object v0
.end method

.method public getSession()Lcom/upsight/android/analytics/internal/session/Session;
    .locals 1

    .prologue
    .line 58
    const/4 v0, 0x0

    return-object v0
.end method

.method public startSession(Lcom/upsight/android/analytics/internal/session/SessionInitializer;)Lcom/upsight/android/analytics/internal/session/Session;
    .locals 1
    .param p1, "sessionInitializer"    # Lcom/upsight/android/analytics/internal/session/SessionInitializer;

    .prologue
    .line 63
    const/4 v0, 0x0

    return-object v0
.end method

.method public stopSession()V
    .locals 0

    .prologue
    .line 69
    return-void
.end method
