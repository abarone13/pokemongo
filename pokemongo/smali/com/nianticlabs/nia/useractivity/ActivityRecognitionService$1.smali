.class Lcom/nianticlabs/nia/useractivity/ActivityRecognitionService$1;
.super Ljava/lang/Object;
.source "ActivityRecognitionService.java"

# interfaces
.implements Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nianticlabs/nia/useractivity/ActivityRecognitionService;->unregisterIntent()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nianticlabs/nia/useractivity/ActivityRecognitionService;


# direct methods
.method constructor <init>(Lcom/nianticlabs/nia/useractivity/ActivityRecognitionService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/nianticlabs/nia/useractivity/ActivityRecognitionService;

    .prologue
    .line 44
    iput-object p1, p0, Lcom/nianticlabs/nia/useractivity/ActivityRecognitionService$1;->this$0:Lcom/nianticlabs/nia/useractivity/ActivityRecognitionService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConnected(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 47
    invoke-static {}, Lcom/nianticlabs/nia/useractivity/NianticActivityManager;->getInstanceLock()Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    .line 51
    :try_start_0
    invoke-static {}, Lcom/nianticlabs/nia/useractivity/NianticActivityManager;->getInstance()Lcom/nianticlabs/nia/useractivity/NianticActivityManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 53
    .local v0, "activityManager":Lcom/nianticlabs/nia/useractivity/NianticActivityManager;
    if-nez v0, :cond_0

    .line 57
    :try_start_1
    iget-object v2, p0, Lcom/nianticlabs/nia/useractivity/ActivityRecognitionService$1;->this$0:Lcom/nianticlabs/nia/useractivity/ActivityRecognitionService;

    .line 58
    invoke-static {v2}, Lcom/nianticlabs/nia/useractivity/NianticActivityManager;->createPendingIntent(Landroid/content/Context;)Landroid/app/PendingIntent;

    move-result-object v1

    .line 60
    .local v1, "activityRecognitionIntent":Landroid/app/PendingIntent;
    sget-object v2, Lcom/google/android/gms/location/ActivityRecognition;->ActivityRecognitionApi:Lcom/google/android/gms/location/ActivityRecognitionApi;

    iget-object v4, p0, Lcom/nianticlabs/nia/useractivity/ActivityRecognitionService$1;->this$0:Lcom/nianticlabs/nia/useractivity/ActivityRecognitionService;

    invoke-static {v4}, Lcom/nianticlabs/nia/useractivity/ActivityRecognitionService;->access$000(Lcom/nianticlabs/nia/useractivity/ActivityRecognitionService;)Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object v4

    invoke-interface {v2, v4, v1}, Lcom/google/android/gms/location/ActivityRecognitionApi;->removeActivityUpdates(Lcom/google/android/gms/common/api/GoogleApiClient;Landroid/app/PendingIntent;)Lcom/google/android/gms/common/api/PendingResult;
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 66
    .end local v1    # "activityRecognitionIntent":Landroid/app/PendingIntent;
    :goto_0
    :try_start_2
    iget-object v2, p0, Lcom/nianticlabs/nia/useractivity/ActivityRecognitionService$1;->this$0:Lcom/nianticlabs/nia/useractivity/ActivityRecognitionService;

    invoke-static {v2}, Lcom/nianticlabs/nia/useractivity/ActivityRecognitionService;->access$000(Lcom/nianticlabs/nia/useractivity/ActivityRecognitionService;)Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/common/api/GoogleApiClient;->disconnect()V

    .line 68
    :cond_0
    monitor-exit v3

    .line 69
    return-void

    .line 68
    .end local v0    # "activityManager":Lcom/nianticlabs/nia/useractivity/NianticActivityManager;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .line 62
    .restart local v0    # "activityManager":Lcom/nianticlabs/nia/useractivity/NianticActivityManager;
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public onConnectionSuspended(I)V
    .locals 0
    .param p1, "i"    # I

    .prologue
    .line 73
    return-void
.end method
