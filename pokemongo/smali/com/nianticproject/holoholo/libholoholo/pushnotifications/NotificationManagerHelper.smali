.class public Lcom/nianticproject/holoholo/libholoholo/pushnotifications/NotificationManagerHelper;
.super Ljava/lang/Object;
.source "NotificationManagerHelper.java"


# static fields
.field private static sInstance:Lcom/nianticproject/holoholo/libholoholo/pushnotifications/NotificationManagerHelper;


# instance fields
.field private context:Landroid/content/Context;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/nianticproject/holoholo/libholoholo/pushnotifications/NotificationManagerHelper;->context:Landroid/content/Context;

    .line 23
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/nianticproject/holoholo/libholoholo/pushnotifications/NotificationManagerHelper;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 15
    sget-object v0, Lcom/nianticproject/holoholo/libholoholo/pushnotifications/NotificationManagerHelper;->sInstance:Lcom/nianticproject/holoholo/libholoholo/pushnotifications/NotificationManagerHelper;

    if-nez v0, :cond_0

    .line 16
    new-instance v0, Lcom/nianticproject/holoholo/libholoholo/pushnotifications/NotificationManagerHelper;

    invoke-direct {v0, p0}, Lcom/nianticproject/holoholo/libholoholo/pushnotifications/NotificationManagerHelper;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/nianticproject/holoholo/libholoholo/pushnotifications/NotificationManagerHelper;->sInstance:Lcom/nianticproject/holoholo/libholoholo/pushnotifications/NotificationManagerHelper;

    .line 18
    :cond_0
    sget-object v0, Lcom/nianticproject/holoholo/libholoholo/pushnotifications/NotificationManagerHelper;->sInstance:Lcom/nianticproject/holoholo/libholoholo/pushnotifications/NotificationManagerHelper;

    return-object v0
.end method


# virtual methods
.method public clearAllNotifications()V
    .locals 3

    .prologue
    .line 29
    iget-object v1, p0, Lcom/nianticproject/holoholo/libholoholo/pushnotifications/NotificationManagerHelper;->context:Landroid/content/Context;

    const-string v2, "notification"

    .line 30
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 31
    .local v0, "notificationManager":Landroid/app/NotificationManager;
    invoke-virtual {v0}, Landroid/app/NotificationManager;->cancelAll()V

    .line 32
    return-void
.end method
