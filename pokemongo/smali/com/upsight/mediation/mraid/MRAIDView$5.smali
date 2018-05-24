.class Lcom/upsight/mediation/mraid/MRAIDView$5;
.super Ljava/lang/Object;
.source "MRAIDView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/upsight/mediation/mraid/MRAIDView;->rewardComplete()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/upsight/mediation/mraid/MRAIDView;


# direct methods
.method constructor <init>(Lcom/upsight/mediation/mraid/MRAIDView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/upsight/mediation/mraid/MRAIDView;

    .prologue
    .line 419
    iput-object p1, p0, Lcom/upsight/mediation/mraid/MRAIDView$5;->this$0:Lcom/upsight/mediation/mraid/MRAIDView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 422
    iget-object v0, p0, Lcom/upsight/mediation/mraid/MRAIDView$5;->this$0:Lcom/upsight/mediation/mraid/MRAIDView;

    invoke-static {v0}, Lcom/upsight/mediation/mraid/MRAIDView;->access$1200(Lcom/upsight/mediation/mraid/MRAIDView;)Lcom/upsight/mediation/mraid/MRAIDNativeFeatureListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 423
    iget-object v0, p0, Lcom/upsight/mediation/mraid/MRAIDView$5;->this$0:Lcom/upsight/mediation/mraid/MRAIDView;

    invoke-static {v0}, Lcom/upsight/mediation/mraid/MRAIDView;->access$1200(Lcom/upsight/mediation/mraid/MRAIDView;)Lcom/upsight/mediation/mraid/MRAIDNativeFeatureListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/upsight/mediation/mraid/MRAIDNativeFeatureListener;->mraidRewardComplete()V

    .line 425
    :cond_0
    return-void
.end method
