.class Lcom/upsight/android/analytics/internal/DispatcherService$1;
.super Ljava/lang/Object;
.source "DispatcherService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/upsight/android/analytics/internal/DispatcherService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/upsight/android/analytics/internal/DispatcherService;


# direct methods
.method constructor <init>(Lcom/upsight/android/analytics/internal/DispatcherService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/upsight/android/analytics/internal/DispatcherService;

    .prologue
    .line 57
    iput-object p1, p0, Lcom/upsight/android/analytics/internal/DispatcherService$1;->this$0:Lcom/upsight/android/analytics/internal/DispatcherService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    const-wide/16 v6, 0x61a8

    const/4 v5, 0x0

    .line 61
    iget-object v1, p0, Lcom/upsight/android/analytics/internal/DispatcherService$1;->this$0:Lcom/upsight/android/analytics/internal/DispatcherService;

    invoke-virtual {v1}, Lcom/upsight/android/analytics/internal/DispatcherService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/upsight/android/Upsight;->isEnabled(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 62
    iget-object v1, p0, Lcom/upsight/android/analytics/internal/DispatcherService$1;->this$0:Lcom/upsight/android/analytics/internal/DispatcherService;

    invoke-virtual {v1}, Lcom/upsight/android/analytics/internal/DispatcherService;->stopSelf()V

    .line 65
    :cond_0
    iget-object v1, p0, Lcom/upsight/android/analytics/internal/DispatcherService$1;->this$0:Lcom/upsight/android/analytics/internal/DispatcherService;

    iget-object v1, v1, Lcom/upsight/android/analytics/internal/DispatcherService;->mDispatcher:Lcom/upsight/android/analytics/internal/dispatcher/Dispatcher;

    invoke-virtual {v1}, Lcom/upsight/android/analytics/internal/dispatcher/Dispatcher;->hasPendingRecords()Z

    move-result v0

    .line 66
    .local v0, "hasPendingRecords":Z
    iget-object v1, p0, Lcom/upsight/android/analytics/internal/DispatcherService$1;->this$0:Lcom/upsight/android/analytics/internal/DispatcherService;

    invoke-static {v1}, Lcom/upsight/android/analytics/internal/DispatcherService;->access$200(Lcom/upsight/android/analytics/internal/DispatcherService;)Lcom/upsight/android/logger/UpsightLogger;

    move-result-object v1

    invoke-static {}, Lcom/upsight/android/analytics/internal/DispatcherService;->access$000()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Check for idle hasPendingRecords="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " mDeadIntervalsInARow="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/upsight/android/analytics/internal/DispatcherService$1;->this$0:Lcom/upsight/android/analytics/internal/DispatcherService;

    invoke-static {v4}, Lcom/upsight/android/analytics/internal/DispatcherService;->access$100(Lcom/upsight/android/analytics/internal/DispatcherService;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v5, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3, v4}, Lcom/upsight/android/logger/UpsightLogger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 67
    if-eqz v0, :cond_1

    .line 68
    iget-object v1, p0, Lcom/upsight/android/analytics/internal/DispatcherService$1;->this$0:Lcom/upsight/android/analytics/internal/DispatcherService;

    invoke-static {v1, v5}, Lcom/upsight/android/analytics/internal/DispatcherService;->access$102(Lcom/upsight/android/analytics/internal/DispatcherService;I)I

    .line 69
    iget-object v1, p0, Lcom/upsight/android/analytics/internal/DispatcherService$1;->this$0:Lcom/upsight/android/analytics/internal/DispatcherService;

    invoke-static {v1}, Lcom/upsight/android/analytics/internal/DispatcherService;->access$400(Lcom/upsight/android/analytics/internal/DispatcherService;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/upsight/android/analytics/internal/DispatcherService$1;->this$0:Lcom/upsight/android/analytics/internal/DispatcherService;

    invoke-static {v2}, Lcom/upsight/android/analytics/internal/DispatcherService;->access$300(Lcom/upsight/android/analytics/internal/DispatcherService;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-virtual {v1, v2, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 79
    :goto_0
    return-void

    .line 71
    :cond_1
    iget-object v1, p0, Lcom/upsight/android/analytics/internal/DispatcherService$1;->this$0:Lcom/upsight/android/analytics/internal/DispatcherService;

    invoke-static {v1}, Lcom/upsight/android/analytics/internal/DispatcherService;->access$100(Lcom/upsight/android/analytics/internal/DispatcherService;)I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_2

    .line 72
    iget-object v1, p0, Lcom/upsight/android/analytics/internal/DispatcherService$1;->this$0:Lcom/upsight/android/analytics/internal/DispatcherService;

    invoke-static {v1}, Lcom/upsight/android/analytics/internal/DispatcherService;->access$200(Lcom/upsight/android/analytics/internal/DispatcherService;)Lcom/upsight/android/logger/UpsightLogger;

    move-result-object v1

    invoke-static {}, Lcom/upsight/android/analytics/internal/DispatcherService;->access$000()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Request to destroy"

    new-array v4, v5, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3, v4}, Lcom/upsight/android/logger/UpsightLogger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 73
    iget-object v1, p0, Lcom/upsight/android/analytics/internal/DispatcherService$1;->this$0:Lcom/upsight/android/analytics/internal/DispatcherService;

    invoke-virtual {v1}, Lcom/upsight/android/analytics/internal/DispatcherService;->stopSelf()V

    goto :goto_0

    .line 75
    :cond_2
    iget-object v1, p0, Lcom/upsight/android/analytics/internal/DispatcherService$1;->this$0:Lcom/upsight/android/analytics/internal/DispatcherService;

    invoke-static {v1}, Lcom/upsight/android/analytics/internal/DispatcherService;->access$108(Lcom/upsight/android/analytics/internal/DispatcherService;)I

    .line 76
    iget-object v1, p0, Lcom/upsight/android/analytics/internal/DispatcherService$1;->this$0:Lcom/upsight/android/analytics/internal/DispatcherService;

    invoke-static {v1}, Lcom/upsight/android/analytics/internal/DispatcherService;->access$400(Lcom/upsight/android/analytics/internal/DispatcherService;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/upsight/android/analytics/internal/DispatcherService$1;->this$0:Lcom/upsight/android/analytics/internal/DispatcherService;

    invoke-static {v2}, Lcom/upsight/android/analytics/internal/DispatcherService;->access$300(Lcom/upsight/android/analytics/internal/DispatcherService;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-virtual {v1, v2, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method
