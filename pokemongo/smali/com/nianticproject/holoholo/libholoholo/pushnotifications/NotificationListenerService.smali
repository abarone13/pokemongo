.class public Lcom/nianticproject/holoholo/libholoholo/pushnotifications/NotificationListenerService;
.super Lcom/google/android/gms/gcm/GcmListenerService;
.source "NotificationListenerService.java"


# static fields
.field private static final MESSAGE_KEY:Ljava/lang/String; = "t"

.field private static final MESSAGE_VARIABLES_KEY:Ljava/lang/String; = "v"

.field private static final NOTIFICATION_ID_KEY:Ljava/lang/String; = "i"

.field private static final TAG:Ljava/lang/String; = "NotificationListener"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/google/android/gms/gcm/GcmListenerService;-><init>()V

    return-void
.end method

.method private getStringForKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 93
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 109
    :cond_0
    :goto_0
    return-object v4

    .line 96
    :cond_1
    invoke-virtual {p0}, Lcom/nianticproject/holoholo/libholoholo/pushnotifications/NotificationListenerService;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 97
    .local v2, "res":Landroid/content/res/Resources;
    if-nez v2, :cond_2

    .line 98
    const-string v5, "NotificationListener"

    const-string v6, "Resources are null."

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 101
    :cond_2
    const/4 v3, 0x0

    .line 102
    .local v3, "resId":I
    invoke-virtual {p0}, Lcom/nianticproject/holoholo/libholoholo/pushnotifications/NotificationListenerService;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 105
    .local v1, "packageName":Ljava/lang/String;
    :try_start_0
    const-string v5, "string"

    invoke-virtual {v2, p1, v5, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 109
    :goto_1
    if-eqz v3, :cond_0

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 106
    :catch_0
    move-exception v0

    .line 107
    .local v0, "e":Ljava/lang/NullPointerException;
    const-string v5, "NotificationListener"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Got unexpected NPE: key = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " package = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method


# virtual methods
.method public onMessageReceived(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 10
    .param p1, "from"    # Ljava/lang/String;
    .param p2, "data"    # Landroid/os/Bundle;

    .prologue
    const/4 v9, 0x1

    .line 53
    const-string v7, "t"

    invoke-virtual {p2, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 54
    .local v3, "messageKey":Ljava/lang/String;
    const-string v7, "i"

    invoke-virtual {p2, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 57
    .local v4, "notificationId":Ljava/lang/String;
    invoke-direct {p0, v3}, Lcom/nianticproject/holoholo/libholoholo/pushnotifications/NotificationListenerService;->getStringForKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 58
    .local v2, "message":Ljava/lang/String;
    if-nez v2, :cond_0

    .line 59
    const-string v7, "NotificationListener"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Failed to post notification: unsupported key "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    :goto_0
    return-void

    .line 64
    :cond_0
    invoke-virtual {p0}, Lcom/nianticproject/holoholo/libholoholo/pushnotifications/NotificationListenerService;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    invoke-virtual {p0}, Lcom/nianticproject/holoholo/libholoholo/pushnotifications/NotificationListenerService;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 67
    .local v1, "intent":Landroid/content/Intent;
    const v7, 0x8000

    invoke-virtual {v1, v7}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 70
    const-string v7, "i"

    invoke-virtual {v1, v7, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 73
    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v7

    const/4 v8, 0x0

    invoke-static {p0, v7, v1, v8}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    .line 76
    .local v6, "pendingIntent":Landroid/app/PendingIntent;
    new-instance v0, Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-direct {v0, p0}, Landroid/support/v4/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;)V

    .line 77
    .local v0, "builder":Landroid/support/v4/app/NotificationCompat$Builder;
    sget v7, Lcom/nianticproject/holoholo/libholoholo/R$drawable;->notification_icon:I

    invoke-virtual {v0, v7}, Landroid/support/v4/app/NotificationCompat$Builder;->setSmallIcon(I)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 78
    sget v7, Lcom/nianticproject/holoholo/libholoholo/R$string;->notification_title:I

    invoke-virtual {p0, v7}, Lcom/nianticproject/holoholo/libholoholo/pushnotifications/NotificationListenerService;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 79
    invoke-virtual {v0, v2}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 80
    invoke-virtual {v0, v6}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 81
    invoke-virtual {p0}, Lcom/nianticproject/holoholo/libholoholo/pushnotifications/NotificationListenerService;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v8, Lcom/nianticproject/holoholo/libholoholo/R$color;->notification_red:I

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v7

    invoke-virtual {v0, v7}, Landroid/support/v4/app/NotificationCompat$Builder;->setColor(I)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 82
    invoke-virtual {v0, v9}, Landroid/support/v4/app/NotificationCompat$Builder;->setAutoCancel(Z)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 86
    const-string v7, "notification"

    .line 87
    invoke-virtual {p0, v7}, Lcom/nianticproject/holoholo/libholoholo/pushnotifications/NotificationListenerService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/NotificationManager;

    .line 88
    .local v5, "notificationManager":Landroid/app/NotificationManager;
    invoke-virtual {v0}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v7

    invoke-virtual {v5, v9, v7}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto :goto_0
.end method
