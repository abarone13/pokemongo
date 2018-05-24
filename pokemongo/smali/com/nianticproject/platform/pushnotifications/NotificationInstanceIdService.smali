.class public Lcom/nianticproject/platform/pushnotifications/NotificationInstanceIdService;
.super Lcom/google/android/gms/iid/InstanceIDListenerService;
.source "NotificationInstanceIdService.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "NotificationIdService"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/google/android/gms/iid/InstanceIDListenerService;-><init>()V

    return-void
.end method


# virtual methods
.method public onTokenRefresh()V
    .locals 2

    .prologue
    .line 21
    const-string v0, "NotificationIdService"

    const-string v1, "onTokenRefresh"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    return-void
.end method
