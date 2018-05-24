.class public Lcom/nianticproject/platform/pushnotifications/NotificationManager;
.super Ljava/lang/Object;
.source "NotificationManager.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "NotificationManager"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mSenderId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "senderId"    # Ljava/lang/String;

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/nianticproject/platform/pushnotifications/NotificationManager;->mContext:Landroid/content/Context;

    .line 34
    iput-object p2, p0, Lcom/nianticproject/platform/pushnotifications/NotificationManager;->mSenderId:Ljava/lang/String;

    .line 35
    return-void
.end method

.method public static getInstance(Landroid/content/Context;Ljava/lang/String;)Lcom/nianticproject/platform/pushnotifications/NotificationManager;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "senderId"    # Ljava/lang/String;

    .prologue
    .line 23
    new-instance v0, Lcom/nianticproject/platform/pushnotifications/NotificationManager;

    invoke-direct {v0, p0, p1}, Lcom/nianticproject/platform/pushnotifications/NotificationManager;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public notificationRegisterGmsId()Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 45
    const/4 v0, 0x0

    .line 46
    .local v0, "token":Ljava/lang/String;
    iget-object v1, p0, Lcom/nianticproject/platform/pushnotifications/NotificationManager;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/google/android/gms/iid/InstanceID;->getInstance(Landroid/content/Context;)Lcom/google/android/gms/iid/InstanceID;

    move-result-object v1

    iget-object v2, p0, Lcom/nianticproject/platform/pushnotifications/NotificationManager;->mSenderId:Ljava/lang/String;

    const-string v3, "GCM"

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/iid/InstanceID;->getToken(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public notificationUnregisterGmsId()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 57
    iget-object v1, p0, Lcom/nianticproject/platform/pushnotifications/NotificationManager;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/google/android/gms/iid/InstanceID;->getInstance(Landroid/content/Context;)Lcom/google/android/gms/iid/InstanceID;

    move-result-object v0

    .line 58
    .local v0, "instanceId":Lcom/google/android/gms/iid/InstanceID;
    invoke-virtual {v0}, Lcom/google/android/gms/iid/InstanceID;->deleteInstanceID()V

    .line 59
    return-void
.end method
