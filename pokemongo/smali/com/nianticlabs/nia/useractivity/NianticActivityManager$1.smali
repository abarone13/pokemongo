.class Lcom/nianticlabs/nia/useractivity/NianticActivityManager$1;
.super Ljava/lang/Object;
.source "NianticActivityManager.java"

# interfaces
.implements Lcom/nianticlabs/nia/contextservice/GoogleApiManager$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nianticlabs/nia/useractivity/NianticActivityManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nianticlabs/nia/useractivity/NianticActivityManager;


# direct methods
.method constructor <init>(Lcom/nianticlabs/nia/useractivity/NianticActivityManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/nianticlabs/nia/useractivity/NianticActivityManager;

    .prologue
    .line 91
    iput-object p1, p0, Lcom/nianticlabs/nia/useractivity/NianticActivityManager$1;->this$0:Lcom/nianticlabs/nia/useractivity/NianticActivityManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConnected()V
    .locals 2

    .prologue
    .line 94
    iget-object v0, p0, Lcom/nianticlabs/nia/useractivity/NianticActivityManager$1;->this$0:Lcom/nianticlabs/nia/useractivity/NianticActivityManager;

    sget-object v1, Lcom/nianticlabs/nia/useractivity/NianticActivityManager$GoogleApiState;->STARTED:Lcom/nianticlabs/nia/useractivity/NianticActivityManager$GoogleApiState;

    invoke-static {v0, v1}, Lcom/nianticlabs/nia/useractivity/NianticActivityManager;->access$002(Lcom/nianticlabs/nia/useractivity/NianticActivityManager;Lcom/nianticlabs/nia/useractivity/NianticActivityManager$GoogleApiState;)Lcom/nianticlabs/nia/useractivity/NianticActivityManager$GoogleApiState;

    .line 95
    iget-object v0, p0, Lcom/nianticlabs/nia/useractivity/NianticActivityManager$1;->this$0:Lcom/nianticlabs/nia/useractivity/NianticActivityManager;

    invoke-static {v0}, Lcom/nianticlabs/nia/useractivity/NianticActivityManager;->access$100(Lcom/nianticlabs/nia/useractivity/NianticActivityManager;)Lcom/nianticlabs/nia/useractivity/NianticActivityManager$AppState;

    move-result-object v0

    sget-object v1, Lcom/nianticlabs/nia/useractivity/NianticActivityManager$AppState;->RESUME:Lcom/nianticlabs/nia/useractivity/NianticActivityManager$AppState;

    if-ne v0, v1, :cond_0

    .line 96
    iget-object v0, p0, Lcom/nianticlabs/nia/useractivity/NianticActivityManager$1;->this$0:Lcom/nianticlabs/nia/useractivity/NianticActivityManager;

    invoke-static {v0}, Lcom/nianticlabs/nia/useractivity/NianticActivityManager;->access$200(Lcom/nianticlabs/nia/useractivity/NianticActivityManager;)V

    .line 98
    :cond_0
    return-void
.end method

.method public onConnectionFailed(Lcom/google/android/gms/common/ConnectionResult;)V
    .locals 4
    .param p1, "connectionResult"    # Lcom/google/android/gms/common/ConnectionResult;

    .prologue
    .line 107
    iget-object v1, p0, Lcom/nianticlabs/nia/useractivity/NianticActivityManager$1;->this$0:Lcom/nianticlabs/nia/useractivity/NianticActivityManager;

    sget-object v2, Lcom/nianticlabs/nia/useractivity/NianticActivityManager$GoogleApiState;->STOPPED:Lcom/nianticlabs/nia/useractivity/NianticActivityManager$GoogleApiState;

    invoke-static {v1, v2}, Lcom/nianticlabs/nia/useractivity/NianticActivityManager;->access$002(Lcom/nianticlabs/nia/useractivity/NianticActivityManager;Lcom/nianticlabs/nia/useractivity/NianticActivityManager$GoogleApiState;)Lcom/nianticlabs/nia/useractivity/NianticActivityManager$GoogleApiState;

    .line 109
    invoke-virtual {p1}, Lcom/google/android/gms/common/ConnectionResult;->getErrorCode()I

    move-result v0

    .line 110
    .local v0, "code":I
    sparse-switch v0, :sswitch_data_0

    .line 120
    iget-object v1, p0, Lcom/nianticlabs/nia/useractivity/NianticActivityManager$1;->this$0:Lcom/nianticlabs/nia/useractivity/NianticActivityManager;

    sget-object v2, Lcom/nianticlabs/nia/contextservice/ServiceStatus;->FAILED:Lcom/nianticlabs/nia/contextservice/ServiceStatus;

    invoke-static {v1, v2}, Lcom/nianticlabs/nia/useractivity/NianticActivityManager;->access$302(Lcom/nianticlabs/nia/useractivity/NianticActivityManager;Lcom/nianticlabs/nia/contextservice/ServiceStatus;)Lcom/nianticlabs/nia/contextservice/ServiceStatus;

    .line 122
    :goto_0
    iget-object v1, p0, Lcom/nianticlabs/nia/useractivity/NianticActivityManager$1;->this$0:Lcom/nianticlabs/nia/useractivity/NianticActivityManager;

    invoke-static {v1}, Lcom/nianticlabs/nia/useractivity/NianticActivityManager;->access$300(Lcom/nianticlabs/nia/useractivity/NianticActivityManager;)Lcom/nianticlabs/nia/contextservice/ServiceStatus;

    move-result-object v1

    sget-object v2, Lcom/nianticlabs/nia/contextservice/ServiceStatus;->INITIALIZED:Lcom/nianticlabs/nia/contextservice/ServiceStatus;

    if-eq v1, v2, :cond_0

    .line 123
    const-string v1, "NianticActivityManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Connection to activity recognition failed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/google/android/gms/common/ConnectionResult;->getErrorMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    :cond_0
    const-string v1, "NianticActivityManager"

    const-string v2, "Connection failed, updating status."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    iget-object v1, p0, Lcom/nianticlabs/nia/useractivity/NianticActivityManager$1;->this$0:Lcom/nianticlabs/nia/useractivity/NianticActivityManager;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/nianticlabs/nia/useractivity/NianticActivityManager$1;->this$0:Lcom/nianticlabs/nia/useractivity/NianticActivityManager;

    invoke-static {v3}, Lcom/nianticlabs/nia/useractivity/NianticActivityManager;->access$300(Lcom/nianticlabs/nia/useractivity/NianticActivityManager;)Lcom/nianticlabs/nia/contextservice/ServiceStatus;

    move-result-object v3

    invoke-virtual {v3}, Lcom/nianticlabs/nia/contextservice/ServiceStatus;->ordinal()I

    move-result v3

    invoke-static {v1, v2, v3}, Lcom/nianticlabs/nia/useractivity/NianticActivityManager;->access$400(Lcom/nianticlabs/nia/useractivity/NianticActivityManager;[JI)V

    .line 127
    return-void

    .line 113
    :sswitch_0
    iget-object v1, p0, Lcom/nianticlabs/nia/useractivity/NianticActivityManager$1;->this$0:Lcom/nianticlabs/nia/useractivity/NianticActivityManager;

    sget-object v2, Lcom/nianticlabs/nia/contextservice/ServiceStatus;->INITIALIZED:Lcom/nianticlabs/nia/contextservice/ServiceStatus;

    invoke-static {v1, v2}, Lcom/nianticlabs/nia/useractivity/NianticActivityManager;->access$302(Lcom/nianticlabs/nia/useractivity/NianticActivityManager;Lcom/nianticlabs/nia/contextservice/ServiceStatus;)Lcom/nianticlabs/nia/contextservice/ServiceStatus;

    goto :goto_0

    .line 117
    :sswitch_1
    iget-object v1, p0, Lcom/nianticlabs/nia/useractivity/NianticActivityManager$1;->this$0:Lcom/nianticlabs/nia/useractivity/NianticActivityManager;

    sget-object v2, Lcom/nianticlabs/nia/contextservice/ServiceStatus;->PERMISSION_DENIED:Lcom/nianticlabs/nia/contextservice/ServiceStatus;

    invoke-static {v1, v2}, Lcom/nianticlabs/nia/useractivity/NianticActivityManager;->access$302(Lcom/nianticlabs/nia/useractivity/NianticActivityManager;Lcom/nianticlabs/nia/contextservice/ServiceStatus;)Lcom/nianticlabs/nia/contextservice/ServiceStatus;

    goto :goto_0

    .line 110
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x13 -> :sswitch_1
    .end sparse-switch
.end method

.method public onDisconnected()V
    .locals 2

    .prologue
    .line 102
    iget-object v0, p0, Lcom/nianticlabs/nia/useractivity/NianticActivityManager$1;->this$0:Lcom/nianticlabs/nia/useractivity/NianticActivityManager;

    sget-object v1, Lcom/nianticlabs/nia/useractivity/NianticActivityManager$GoogleApiState;->STOPPED:Lcom/nianticlabs/nia/useractivity/NianticActivityManager$GoogleApiState;

    invoke-static {v0, v1}, Lcom/nianticlabs/nia/useractivity/NianticActivityManager;->access$002(Lcom/nianticlabs/nia/useractivity/NianticActivityManager;Lcom/nianticlabs/nia/useractivity/NianticActivityManager$GoogleApiState;)Lcom/nianticlabs/nia/useractivity/NianticActivityManager$GoogleApiState;

    .line 103
    return-void
.end method
