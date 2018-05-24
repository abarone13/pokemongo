.class public Lcom/facebook/unity/FB;
.super Ljava/lang/Object;
.source "FB.java"


# static fields
.field static final FB_UNITY_OBJECT:Ljava/lang/String; = "UnityFacebookSDKPlugin"

.field static ShareDialogMode:Lcom/facebook/share/widget/ShareDialog$Mode;

.field static final TAG:Ljava/lang/String;

.field private static activateAppCalled:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private static appEventsLogger:Lcom/facebook/appevents/AppEventsLogger;

.field private static intent:Landroid/content/Intent;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 55
    const-class v0, Lcom/facebook/unity/FB;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/unity/FB;->TAG:Ljava/lang/String;

    .line 60
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    sput-object v0, Lcom/facebook/unity/FB;->activateAppCalled:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 61
    sget-object v0, Lcom/facebook/share/widget/ShareDialog$Mode;->AUTOMATIC:Lcom/facebook/share/widget/ShareDialog$Mode;

    sput-object v0, Lcom/facebook/unity/FB;->ShareDialogMode:Lcom/facebook/share/widget/ShareDialog$Mode;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static ActivateApp(Ljava/lang/String;)V
    .locals 4
    .param p0, "appId"    # Ljava/lang/String;

    .prologue
    .line 405
    sget-object v1, Lcom/facebook/unity/FB;->activateAppCalled:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v1

    if-nez v1, :cond_0

    .line 406
    sget-object v1, Lcom/facebook/unity/FB;->TAG:Ljava/lang/String;

    const-string v2, "Activite app only needs to be called once"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 428
    :goto_0
    return-void

    .line 409
    :cond_0
    invoke-static {}, Lcom/facebook/unity/FB;->getUnityActivity()Landroid/app/Activity;

    move-result-object v0

    .line 410
    .local v0, "unityActivity":Landroid/app/Activity;
    if-eqz p0, :cond_1

    .line 412
    invoke-virtual {v0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v1

    .line 411
    invoke-static {v1, p0}, Lcom/facebook/appevents/AppEventsLogger;->activateApp(Landroid/app/Application;Ljava/lang/String;)V

    .line 420
    :goto_1
    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v2, Lcom/facebook/unity/FB$5;

    invoke-direct {v2, v0}, Lcom/facebook/unity/FB$5;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 415
    :cond_1
    invoke-virtual {v0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-static {v1}, Lcom/facebook/appevents/AppEventsLogger;->activateApp(Landroid/app/Application;)V

    goto :goto_1
.end method

.method public static AppInvite(Ljava/lang/String;)V
    .locals 6
    .param p0, "paramsStr"    # Ljava/lang/String;
    .annotation build Lcom/facebook/unity/UnityCallable;
    .end annotation

    .prologue
    .line 275
    sget-object v3, Lcom/facebook/unity/FB;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "AppInvite("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 276
    new-instance v0, Landroid/content/Intent;

    invoke-static {}, Lcom/facebook/unity/FB;->getUnityActivity()Landroid/app/Activity;

    move-result-object v3

    const-class v4, Lcom/facebook/unity/AppInviteDialogActivity;

    invoke-direct {v0, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 277
    .local v0, "intent":Landroid/content/Intent;
    invoke-static {p0}, Lcom/facebook/unity/UnityParams;->parse(Ljava/lang/String;)Lcom/facebook/unity/UnityParams;

    move-result-object v2

    .line 278
    .local v2, "unityParams":Lcom/facebook/unity/UnityParams;
    invoke-virtual {v2}, Lcom/facebook/unity/UnityParams;->getStringParams()Landroid/os/Bundle;

    move-result-object v1

    .line 279
    .local v1, "params":Landroid/os/Bundle;
    const-string v3, "dialog_params"

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 280
    invoke-static {}, Lcom/facebook/unity/FB;->getUnityActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 281
    return-void
.end method

.method public static AppRequest(Ljava/lang/String;)V
    .locals 6
    .param p0, "params_str"    # Ljava/lang/String;
    .annotation build Lcom/facebook/unity/UnityCallable;
    .end annotation

    .prologue
    .line 152
    sget-object v3, Lcom/facebook/unity/FB;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "AppRequest("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    new-instance v0, Landroid/content/Intent;

    invoke-static {}, Lcom/facebook/unity/FB;->getUnityActivity()Landroid/app/Activity;

    move-result-object v3

    const-class v4, Lcom/facebook/unity/FBUnityGameRequestActivity;

    invoke-direct {v0, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 154
    .local v0, "intent":Landroid/content/Intent;
    invoke-static {p0}, Lcom/facebook/unity/UnityParams;->parse(Ljava/lang/String;)Lcom/facebook/unity/UnityParams;

    move-result-object v2

    .line 155
    .local v2, "unity_params":Lcom/facebook/unity/UnityParams;
    invoke-virtual {v2}, Lcom/facebook/unity/UnityParams;->getStringParams()Landroid/os/Bundle;

    move-result-object v1

    .line 156
    .local v1, "params":Landroid/os/Bundle;
    const-string v3, "game_request_params"

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 157
    invoke-static {}, Lcom/facebook/unity/FB;->getUnityActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 158
    return-void
.end method

.method public static FeedShare(Ljava/lang/String;)V
    .locals 6
    .param p0, "params_str"    # Ljava/lang/String;
    .annotation build Lcom/facebook/unity/UnityCallable;
    .end annotation

    .prologue
    .line 193
    sget-object v3, Lcom/facebook/unity/FB;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "FeedShare("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    invoke-static {p0}, Lcom/facebook/unity/UnityParams;->parse(Ljava/lang/String;)Lcom/facebook/unity/UnityParams;

    move-result-object v2

    .line 195
    .local v2, "unityParams":Lcom/facebook/unity/UnityParams;
    invoke-virtual {v2}, Lcom/facebook/unity/UnityParams;->getStringParams()Landroid/os/Bundle;

    move-result-object v1

    .line 196
    .local v1, "params":Landroid/os/Bundle;
    new-instance v0, Landroid/content/Intent;

    invoke-static {}, Lcom/facebook/unity/FB;->getUnityActivity()Landroid/app/Activity;

    move-result-object v3

    const-class v4, Lcom/facebook/unity/FBUnityDialogsActivity;

    invoke-direct {v0, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 197
    .local v0, "intent":Landroid/content/Intent;
    const-string v3, "dialog_type"

    sget-object v4, Lcom/facebook/share/widget/ShareDialog$Mode;->FEED:Lcom/facebook/share/widget/ShareDialog$Mode;

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 198
    const-string v3, "feed_dialog_params"

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 199
    invoke-static {}, Lcom/facebook/unity/FB;->getUnityActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 200
    return-void
.end method

.method public static FetchDeferredAppLinkData(Ljava/lang/String;)V
    .locals 4
    .param p0, "paramsStr"    # Ljava/lang/String;
    .annotation build Lcom/facebook/unity/UnityCallable;
    .end annotation

    .prologue
    .line 285
    const-string v2, "FetchDeferredAppLinkData"

    invoke-static {v2, p0}, Lcom/facebook/unity/FB;->LogMethodCall(Ljava/lang/String;Ljava/lang/String;)V

    .line 287
    invoke-static {p0}, Lcom/facebook/unity/UnityParams;->parse(Ljava/lang/String;)Lcom/facebook/unity/UnityParams;

    move-result-object v1

    .line 288
    .local v1, "unityParams":Lcom/facebook/unity/UnityParams;
    new-instance v0, Lcom/facebook/unity/UnityMessage;

    const-string v2, "OnFetchDeferredAppLinkComplete"

    invoke-direct {v0, v2}, Lcom/facebook/unity/UnityMessage;-><init>(Ljava/lang/String;)V

    .line 289
    .local v0, "unityMessage":Lcom/facebook/unity/UnityMessage;
    const-string v2, "callback_id"

    invoke-virtual {v1, v2}, Lcom/facebook/unity/UnityParams;->hasString(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 290
    const-string v2, "callback_id"

    const-string v3, "callback_id"

    invoke-virtual {v1, v3}, Lcom/facebook/unity/UnityParams;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/facebook/unity/UnityMessage;->put(Ljava/lang/String;Ljava/io/Serializable;)Lcom/facebook/unity/UnityMessage;

    .line 294
    :cond_0
    invoke-static {}, Lcom/facebook/unity/FB;->getUnityActivity()Landroid/app/Activity;

    move-result-object v2

    new-instance v3, Lcom/facebook/unity/FB$2;

    invoke-direct {v3, v0}, Lcom/facebook/unity/FB$2;-><init>(Lcom/facebook/unity/UnityMessage;)V

    .line 293
    invoke-static {v2, v3}, Lcom/facebook/applinks/AppLinkData;->fetchDeferredAppLinkData(Landroid/content/Context;Lcom/facebook/applinks/AppLinkData$CompletionHandler;)V

    .line 302
    return-void
.end method

.method public static GameGroupCreate(Ljava/lang/String;)V
    .locals 6
    .param p0, "params_str"    # Ljava/lang/String;
    .annotation build Lcom/facebook/unity/UnityCallable;
    .end annotation

    .prologue
    .line 162
    sget-object v3, Lcom/facebook/unity/FB;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "GameGroupCreate("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    invoke-static {p0}, Lcom/facebook/unity/UnityParams;->parse(Ljava/lang/String;)Lcom/facebook/unity/UnityParams;

    move-result-object v2

    .line 164
    .local v2, "unity_params":Lcom/facebook/unity/UnityParams;
    invoke-virtual {v2}, Lcom/facebook/unity/UnityParams;->getStringParams()Landroid/os/Bundle;

    move-result-object v1

    .line 165
    .local v1, "params":Landroid/os/Bundle;
    new-instance v0, Landroid/content/Intent;

    invoke-static {}, Lcom/facebook/unity/FB;->getUnityActivity()Landroid/app/Activity;

    move-result-object v3

    const-class v4, Lcom/facebook/unity/FBUnityCreateGameGroupActivity;

    invoke-direct {v0, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 166
    .local v0, "intent":Landroid/content/Intent;
    sget-object v3, Lcom/facebook/unity/FBUnityCreateGameGroupActivity;->CREATE_GAME_GROUP_PARAMS:Ljava/lang/String;

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 167
    invoke-static {}, Lcom/facebook/unity/FB;->getUnityActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 168
    return-void
.end method

.method public static GameGroupJoin(Ljava/lang/String;)V
    .locals 6
    .param p0, "params_str"    # Ljava/lang/String;
    .annotation build Lcom/facebook/unity/UnityCallable;
    .end annotation

    .prologue
    .line 172
    sget-object v3, Lcom/facebook/unity/FB;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "GameGroupJoin("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    invoke-static {p0}, Lcom/facebook/unity/UnityParams;->parse(Ljava/lang/String;)Lcom/facebook/unity/UnityParams;

    move-result-object v2

    .line 174
    .local v2, "unity_params":Lcom/facebook/unity/UnityParams;
    invoke-virtual {v2}, Lcom/facebook/unity/UnityParams;->getStringParams()Landroid/os/Bundle;

    move-result-object v1

    .line 175
    .local v1, "params":Landroid/os/Bundle;
    new-instance v0, Landroid/content/Intent;

    invoke-static {}, Lcom/facebook/unity/FB;->getUnityActivity()Landroid/app/Activity;

    move-result-object v3

    const-class v4, Lcom/facebook/unity/FBUnityJoinGameGroupActivity;

    invoke-direct {v0, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 176
    .local v0, "intent":Landroid/content/Intent;
    sget-object v3, Lcom/facebook/unity/FBUnityJoinGameGroupActivity;->JOIN_GAME_GROUP_PARAMS:Ljava/lang/String;

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 177
    invoke-static {}, Lcom/facebook/unity/FB;->getUnityActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 178
    return-void
.end method

.method public static GetAppLink(Ljava/lang/String;)V
    .locals 7
    .param p0, "paramsStr"    # Ljava/lang/String;
    .annotation build Lcom/facebook/unity/UnityCallable;
    .end annotation

    .prologue
    const/4 v6, 0x1

    .line 306
    sget-object v3, Lcom/facebook/unity/FB;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "GetAppLink("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 307
    invoke-static {p0}, Lcom/facebook/unity/UnityParams;->parse(Ljava/lang/String;)Lcom/facebook/unity/UnityParams;

    move-result-object v2

    .line 308
    .local v2, "unityParams":Lcom/facebook/unity/UnityParams;
    const-string v3, "OnGetAppLinkComplete"

    invoke-static {v3, v2}, Lcom/facebook/unity/UnityMessage;->createWithCallbackFromParams(Ljava/lang/String;Lcom/facebook/unity/UnityParams;)Lcom/facebook/unity/UnityMessage;

    move-result-object v1

    .line 313
    .local v1, "unityMessage":Lcom/facebook/unity/UnityMessage;
    sget-object v3, Lcom/facebook/unity/FB;->intent:Landroid/content/Intent;

    if-nez v3, :cond_0

    .line 315
    const-string v3, "did_complete"

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lcom/facebook/unity/UnityMessage;->put(Ljava/lang/String;Ljava/io/Serializable;)Lcom/facebook/unity/UnityMessage;

    .line 316
    invoke-virtual {v1}, Lcom/facebook/unity/UnityMessage;->send()V

    .line 335
    :goto_0
    return-void

    .line 321
    :cond_0
    sget-object v3, Lcom/facebook/unity/FB;->intent:Landroid/content/Intent;

    invoke-static {v3}, Lcom/facebook/applinks/AppLinkData;->createFromAlApplinkData(Landroid/content/Intent;)Lcom/facebook/applinks/AppLinkData;

    move-result-object v0

    .line 322
    .local v0, "appLinkData":Lcom/facebook/applinks/AppLinkData;
    if-eqz v0, :cond_1

    .line 324
    invoke-static {v1, v0}, Lcom/facebook/unity/FB;->addAppLinkToMessage(Lcom/facebook/unity/UnityMessage;Lcom/facebook/applinks/AppLinkData;)V

    .line 325
    const-string v3, "url"

    sget-object v4, Lcom/facebook/unity/FB;->intent:Landroid/content/Intent;

    invoke-virtual {v4}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lcom/facebook/unity/UnityMessage;->put(Ljava/lang/String;Ljava/io/Serializable;)Lcom/facebook/unity/UnityMessage;

    .line 334
    :goto_1
    invoke-virtual {v1}, Lcom/facebook/unity/UnityMessage;->send()V

    goto :goto_0

    .line 326
    :cond_1
    sget-object v3, Lcom/facebook/unity/FB;->intent:Landroid/content/Intent;

    invoke-virtual {v3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 328
    const-string v3, "url"

    sget-object v4, Lcom/facebook/unity/FB;->intent:Landroid/content/Intent;

    invoke-virtual {v4}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lcom/facebook/unity/UnityMessage;->put(Ljava/lang/String;Ljava/io/Serializable;)Lcom/facebook/unity/UnityMessage;

    goto :goto_1

    .line 331
    :cond_2
    const-string v3, "did_complete"

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lcom/facebook/unity/UnityMessage;->put(Ljava/lang/String;Ljava/io/Serializable;)Lcom/facebook/unity/UnityMessage;

    goto :goto_1
.end method

.method public static GetSdkVersion()Ljava/lang/String;
    .locals 1
    .annotation build Lcom/facebook/unity/UnityCallable;
    .end annotation

    .prologue
    .line 264
    invoke-static {}, Lcom/facebook/FacebookSdk;->getSdkVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static Init(Ljava/lang/String;)V
    .locals 5
    .param p0, "params_str"    # Ljava/lang/String;
    .annotation build Lcom/facebook/unity/UnityCallable;
    .end annotation

    .prologue
    .line 76
    sget-object v2, Lcom/facebook/unity/FB;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Init("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "couldn\'t parse init params: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/facebook/unity/UnityParams;->parse(Ljava/lang/String;Ljava/lang/String;)Lcom/facebook/unity/UnityParams;

    move-result-object v1

    .line 79
    .local v1, "unity_params":Lcom/facebook/unity/UnityParams;
    const-string v2, "appId"

    invoke-virtual {v1, v2}, Lcom/facebook/unity/UnityParams;->hasString(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 80
    const-string v2, "appId"

    invoke-virtual {v1, v2}, Lcom/facebook/unity/UnityParams;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 85
    .local v0, "appID":Ljava/lang/String;
    :goto_0
    invoke-static {v0}, Lcom/facebook/FacebookSdk;->setApplicationId(Ljava/lang/String;)V

    .line 86
    invoke-static {}, Lcom/facebook/unity/FB;->getUnityActivity()Landroid/app/Activity;

    move-result-object v2

    new-instance v3, Lcom/facebook/unity/FB$1;

    invoke-direct {v3, v0}, Lcom/facebook/unity/FB$1;-><init>(Ljava/lang/String;)V

    invoke-static {v2, v3}, Lcom/facebook/FacebookSdk;->sdkInitialize(Landroid/content/Context;Lcom/facebook/FacebookSdk$InitializeCallback;)V

    .line 103
    return-void

    .line 82
    .end local v0    # "appID":Ljava/lang/String;
    :cond_0
    invoke-static {}, Lcom/facebook/unity/FB;->getUnityActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/facebook/internal/Utility;->getMetadataApplicationId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "appID":Ljava/lang/String;
    goto :goto_0
.end method

.method public static LogAppEvent(Ljava/lang/String;)V
    .locals 8
    .param p0, "params_str"    # Ljava/lang/String;
    .annotation build Lcom/facebook/unity/UnityCallable;
    .end annotation

    .prologue
    .line 215
    sget-object v3, Lcom/facebook/unity/FB;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "LogAppEvent("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    invoke-static {p0}, Lcom/facebook/unity/UnityParams;->parse(Ljava/lang/String;)Lcom/facebook/unity/UnityParams;

    move-result-object v1

    .line 218
    .local v1, "unity_params":Lcom/facebook/unity/UnityParams;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 219
    .local v0, "parameters":Landroid/os/Bundle;
    const-string v3, "parameters"

    invoke-virtual {v1, v3}, Lcom/facebook/unity/UnityParams;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 220
    const-string v3, "parameters"

    invoke-virtual {v1, v3}, Lcom/facebook/unity/UnityParams;->getParamsObject(Ljava/lang/String;)Lcom/facebook/unity/UnityParams;

    move-result-object v2

    .line 221
    .local v2, "unity_params_parameter":Lcom/facebook/unity/UnityParams;
    invoke-virtual {v2}, Lcom/facebook/unity/UnityParams;->getStringParams()Landroid/os/Bundle;

    move-result-object v0

    .line 224
    .end local v2    # "unity_params_parameter":Lcom/facebook/unity/UnityParams;
    :cond_0
    const-string v3, "logPurchase"

    invoke-virtual {v1, v3}, Lcom/facebook/unity/UnityParams;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 225
    invoke-static {}, Lcom/facebook/unity/FB;->getAppEventsLogger()Lcom/facebook/appevents/AppEventsLogger;

    move-result-object v3

    new-instance v4, Ljava/math/BigDecimal;

    const-string v5, "logPurchase"

    .line 226
    invoke-virtual {v1, v5}, Lcom/facebook/unity/UnityParams;->getDouble(Ljava/lang/String;)D

    move-result-wide v6

    invoke-direct {v4, v6, v7}, Ljava/math/BigDecimal;-><init>(D)V

    const-string v5, "currency"

    .line 227
    invoke-virtual {v1, v5}, Lcom/facebook/unity/UnityParams;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/util/Currency;->getInstance(Ljava/lang/String;)Ljava/util/Currency;

    move-result-object v5

    .line 225
    invoke-virtual {v3, v4, v5, v0}, Lcom/facebook/appevents/AppEventsLogger;->logPurchase(Ljava/math/BigDecimal;Ljava/util/Currency;Landroid/os/Bundle;)V

    .line 246
    :goto_0
    return-void

    .line 230
    :cond_1
    const-string v3, "logEvent"

    invoke-virtual {v1, v3}, Lcom/facebook/unity/UnityParams;->hasString(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 231
    const-string v3, "valueToSum"

    invoke-virtual {v1, v3}, Lcom/facebook/unity/UnityParams;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 232
    invoke-static {}, Lcom/facebook/unity/FB;->getAppEventsLogger()Lcom/facebook/appevents/AppEventsLogger;

    move-result-object v3

    const-string v4, "logEvent"

    .line 233
    invoke-virtual {v1, v4}, Lcom/facebook/unity/UnityParams;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "valueToSum"

    .line 234
    invoke-virtual {v1, v5}, Lcom/facebook/unity/UnityParams;->getDouble(Ljava/lang/String;)D

    move-result-wide v6

    .line 232
    invoke-virtual {v3, v4, v6, v7, v0}, Lcom/facebook/appevents/AppEventsLogger;->logEvent(Ljava/lang/String;DLandroid/os/Bundle;)V

    goto :goto_0

    .line 238
    :cond_2
    invoke-static {}, Lcom/facebook/unity/FB;->getAppEventsLogger()Lcom/facebook/appevents/AppEventsLogger;

    move-result-object v3

    const-string v4, "logEvent"

    .line 239
    invoke-virtual {v1, v4}, Lcom/facebook/unity/UnityParams;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 238
    invoke-virtual {v3, v4, v0}, Lcom/facebook/appevents/AppEventsLogger;->logEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0

    .line 244
    :cond_3
    sget-object v3, Lcom/facebook/unity/FB;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "couldn\'t logPurchase or logEvent params: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private static LogMethodCall(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p0, "methodName"    # Ljava/lang/String;
    .param p1, "paramsStr"    # Ljava/lang/String;

    .prologue
    .line 439
    sget-object v0, Lcom/facebook/unity/FB;->TAG:Ljava/lang/String;

    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    const-string v2, "%s(%s)"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    const/4 v4, 0x1

    aput-object p1, v3, v4

    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 440
    return-void
.end method

.method public static LoginForTVWithPublishPermissions(Ljava/lang/String;)V
    .locals 4
    .param p0, "params_str"    # Ljava/lang/String;
    .annotation build Lcom/facebook/unity/UnityCallable;
    .end annotation

    .prologue
    .line 143
    sget-object v1, Lcom/facebook/unity/FB;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "LoginForTVWithPublishPermissions("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    new-instance v0, Landroid/content/Intent;

    invoke-static {}, Lcom/facebook/unity/FB;->getUnityActivity()Landroid/app/Activity;

    move-result-object v1

    const-class v2, Lcom/facebook/unity/FBUnityLoginActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 145
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "login_params"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 146
    const-string v1, "login_type"

    sget-object v2, Lcom/facebook/unity/FBUnityLoginActivity$LoginType;->TV_PUBLISH:Lcom/facebook/unity/FBUnityLoginActivity$LoginType;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 147
    invoke-static {}, Lcom/facebook/unity/FB;->getUnityActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 148
    return-void
.end method

.method public static LoginWithPublishPermissions(Ljava/lang/String;)V
    .locals 4
    .param p0, "params_str"    # Ljava/lang/String;
    .annotation build Lcom/facebook/unity/UnityCallable;
    .end annotation

    .prologue
    .line 116
    sget-object v1, Lcom/facebook/unity/FB;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "LoginWithPublishPermissions("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    new-instance v0, Landroid/content/Intent;

    invoke-static {}, Lcom/facebook/unity/FB;->getUnityActivity()Landroid/app/Activity;

    move-result-object v1

    const-class v2, Lcom/facebook/unity/FBUnityLoginActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 118
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "login_params"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 119
    const-string v1, "login_type"

    sget-object v2, Lcom/facebook/unity/FBUnityLoginActivity$LoginType;->PUBLISH:Lcom/facebook/unity/FBUnityLoginActivity$LoginType;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 120
    invoke-static {}, Lcom/facebook/unity/FB;->getUnityActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 121
    return-void
.end method

.method public static LoginWithReadPermissions(Ljava/lang/String;)V
    .locals 4
    .param p0, "params_str"    # Ljava/lang/String;
    .annotation build Lcom/facebook/unity/UnityCallable;
    .end annotation

    .prologue
    .line 107
    sget-object v1, Lcom/facebook/unity/FB;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "LoginWithReadPermissions("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    new-instance v0, Landroid/content/Intent;

    invoke-static {}, Lcom/facebook/unity/FB;->getUnityActivity()Landroid/app/Activity;

    move-result-object v1

    const-class v2, Lcom/facebook/unity/FBUnityLoginActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 109
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "login_params"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 110
    const-string v1, "login_type"

    sget-object v2, Lcom/facebook/unity/FBUnityLoginActivity$LoginType;->READ:Lcom/facebook/unity/FBUnityLoginActivity$LoginType;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 111
    invoke-static {}, Lcom/facebook/unity/FB;->getUnityActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 112
    return-void
.end method

.method public static Logout(Ljava/lang/String;)V
    .locals 4
    .param p0, "params_str"    # Ljava/lang/String;
    .annotation build Lcom/facebook/unity/UnityCallable;
    .end annotation

    .prologue
    .line 125
    sget-object v1, Lcom/facebook/unity/FB;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Logout("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    invoke-static {}, Lcom/facebook/login/LoginManager;->getInstance()Lcom/facebook/login/LoginManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/login/LoginManager;->logOut()V

    .line 127
    new-instance v0, Lcom/facebook/unity/UnityMessage;

    const-string v1, "OnLogoutComplete"

    invoke-direct {v0, v1}, Lcom/facebook/unity/UnityMessage;-><init>(Ljava/lang/String;)V

    .line 128
    .local v0, "message":Lcom/facebook/unity/UnityMessage;
    const-string v1, "did_complete"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/facebook/unity/UnityMessage;->put(Ljava/lang/String;Ljava/io/Serializable;)Lcom/facebook/unity/UnityMessage;

    .line 129
    invoke-virtual {v0}, Lcom/facebook/unity/UnityMessage;->send()V

    .line 130
    return-void
.end method

.method public static RefreshCurrentAccessToken(Ljava/lang/String;)V
    .locals 4
    .param p0, "paramsStr"    # Ljava/lang/String;
    .annotation build Lcom/facebook/unity/UnityCallable;
    .end annotation

    .prologue
    .line 339
    const-string v2, "RefreshCurrentAccessToken"

    invoke-static {v2, p0}, Lcom/facebook/unity/FB;->LogMethodCall(Ljava/lang/String;Ljava/lang/String;)V

    .line 341
    invoke-static {p0}, Lcom/facebook/unity/UnityParams;->parse(Ljava/lang/String;)Lcom/facebook/unity/UnityParams;

    move-result-object v1

    .line 342
    .local v1, "unityParams":Lcom/facebook/unity/UnityParams;
    new-instance v0, Lcom/facebook/unity/UnityMessage;

    const-string v2, "OnRefreshCurrentAccessTokenComplete"

    invoke-direct {v0, v2}, Lcom/facebook/unity/UnityMessage;-><init>(Ljava/lang/String;)V

    .line 343
    .local v0, "unityMessage":Lcom/facebook/unity/UnityMessage;
    const-string v2, "callback_id"

    invoke-virtual {v1, v2}, Lcom/facebook/unity/UnityParams;->hasString(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 344
    const-string v2, "callback_id"

    const-string v3, "callback_id"

    invoke-virtual {v1, v3}, Lcom/facebook/unity/UnityParams;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/facebook/unity/UnityMessage;->put(Ljava/lang/String;Ljava/io/Serializable;)Lcom/facebook/unity/UnityMessage;

    .line 347
    :cond_0
    new-instance v2, Lcom/facebook/unity/FB$3;

    invoke-direct {v2, v0}, Lcom/facebook/unity/FB$3;-><init>(Lcom/facebook/unity/UnityMessage;)V

    invoke-static {v2}, Lcom/facebook/AccessToken;->refreshCurrentAccessTokenAsync(Lcom/facebook/AccessToken$AccessTokenRefreshCallback;)V

    .line 361
    invoke-static {}, Lcom/facebook/unity/FB;->getUnityActivity()Landroid/app/Activity;

    move-result-object v2

    new-instance v3, Lcom/facebook/unity/FB$4;

    invoke-direct {v3, v0}, Lcom/facebook/unity/FB$4;-><init>(Lcom/facebook/unity/UnityMessage;)V

    .line 360
    invoke-static {v2, v3}, Lcom/facebook/applinks/AppLinkData;->fetchDeferredAppLinkData(Landroid/content/Context;Lcom/facebook/applinks/AppLinkData$CompletionHandler;)V

    .line 369
    return-void
.end method

.method public static SetIntent(Landroid/content/Intent;)V
    .locals 0
    .param p0, "intent"    # Landroid/content/Intent;

    .prologue
    .line 203
    sput-object p0, Lcom/facebook/unity/FB;->intent:Landroid/content/Intent;

    .line 204
    return-void
.end method

.method public static SetLimitEventUsage(Ljava/lang/String;)V
    .locals 3
    .param p0, "params_str"    # Ljava/lang/String;

    .prologue
    .line 207
    sget-object v0, Lcom/facebook/unity/FB;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SetLimitEventUsage("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    invoke-static {}, Lcom/facebook/unity/FB;->getUnityActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 210
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 208
    invoke-static {v0, v1}, Lcom/facebook/FacebookSdk;->setLimitEventAndDataUsage(Landroid/content/Context;Z)V

    .line 211
    return-void
.end method

.method public static SetShareDialogMode(Ljava/lang/String;)V
    .locals 3
    .param p0, "mode"    # Ljava/lang/String;
    .annotation build Lcom/facebook/unity/UnityCallable;
    .end annotation

    .prologue
    .line 250
    sget-object v0, Lcom/facebook/unity/FB;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SetShareDialogMode("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    const-string v0, "NATIVE"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 252
    sget-object v0, Lcom/facebook/share/widget/ShareDialog$Mode;->NATIVE:Lcom/facebook/share/widget/ShareDialog$Mode;

    sput-object v0, Lcom/facebook/unity/FB;->ShareDialogMode:Lcom/facebook/share/widget/ShareDialog$Mode;

    .line 260
    :goto_0
    return-void

    .line 253
    :cond_0
    const-string v0, "WEB"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 254
    sget-object v0, Lcom/facebook/share/widget/ShareDialog$Mode;->WEB:Lcom/facebook/share/widget/ShareDialog$Mode;

    sput-object v0, Lcom/facebook/unity/FB;->ShareDialogMode:Lcom/facebook/share/widget/ShareDialog$Mode;

    goto :goto_0

    .line 255
    :cond_1
    const-string v0, "FEED"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 256
    sget-object v0, Lcom/facebook/share/widget/ShareDialog$Mode;->FEED:Lcom/facebook/share/widget/ShareDialog$Mode;

    sput-object v0, Lcom/facebook/unity/FB;->ShareDialogMode:Lcom/facebook/share/widget/ShareDialog$Mode;

    goto :goto_0

    .line 258
    :cond_2
    sget-object v0, Lcom/facebook/share/widget/ShareDialog$Mode;->AUTOMATIC:Lcom/facebook/share/widget/ShareDialog$Mode;

    sput-object v0, Lcom/facebook/unity/FB;->ShareDialogMode:Lcom/facebook/share/widget/ShareDialog$Mode;

    goto :goto_0
.end method

.method public static SetUserAgentSuffix(Ljava/lang/String;)V
    .locals 3
    .param p0, "suffix"    # Ljava/lang/String;
    .annotation build Lcom/facebook/unity/UnityCallable;
    .end annotation

    .prologue
    .line 269
    sget-object v0, Lcom/facebook/unity/FB;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SetUserAgentSuffix("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    invoke-static {p0}, Lcom/facebook/internal/InternalSettings;->setCustomUserAgent(Ljava/lang/String;)V

    .line 271
    return-void
.end method

.method public static ShareLink(Ljava/lang/String;)V
    .locals 6
    .param p0, "params_str"    # Ljava/lang/String;
    .annotation build Lcom/facebook/unity/UnityCallable;
    .end annotation

    .prologue
    .line 182
    sget-object v3, Lcom/facebook/unity/FB;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ShareLink("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    invoke-static {p0}, Lcom/facebook/unity/UnityParams;->parse(Ljava/lang/String;)Lcom/facebook/unity/UnityParams;

    move-result-object v2

    .line 184
    .local v2, "unity_params":Lcom/facebook/unity/UnityParams;
    invoke-virtual {v2}, Lcom/facebook/unity/UnityParams;->getStringParams()Landroid/os/Bundle;

    move-result-object v1

    .line 185
    .local v1, "params":Landroid/os/Bundle;
    new-instance v0, Landroid/content/Intent;

    invoke-static {}, Lcom/facebook/unity/FB;->getUnityActivity()Landroid/app/Activity;

    move-result-object v3

    const-class v4, Lcom/facebook/unity/FBUnityDialogsActivity;

    invoke-direct {v0, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 186
    .local v0, "intent":Landroid/content/Intent;
    const-string v3, "dialog_type"

    sget-object v4, Lcom/facebook/unity/FB;->ShareDialogMode:Lcom/facebook/share/widget/ShareDialog$Mode;

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 187
    const-string v3, "share_dialog_params"

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 188
    invoke-static {}, Lcom/facebook/unity/FB;->getUnityActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 189
    return-void
.end method

.method static synthetic access$000(Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 54
    invoke-static {p0}, Lcom/facebook/unity/FB;->ActivateApp(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/facebook/unity/UnityMessage;Lcom/facebook/applinks/AppLinkData;)V
    .locals 0
    .param p0, "x0"    # Lcom/facebook/unity/UnityMessage;
    .param p1, "x1"    # Lcom/facebook/applinks/AppLinkData;

    .prologue
    .line 54
    invoke-static {p0, p1}, Lcom/facebook/unity/FB;->addAppLinkToMessage(Lcom/facebook/unity/UnityMessage;Lcom/facebook/applinks/AppLinkData;)V

    return-void
.end method

.method private static addAppLinkToMessage(Lcom/facebook/unity/UnityMessage;Lcom/facebook/applinks/AppLinkData;)V
    .locals 3
    .param p0, "unityMessage"    # Lcom/facebook/unity/UnityMessage;
    .param p1, "appLinkData"    # Lcom/facebook/applinks/AppLinkData;

    .prologue
    .line 443
    if-nez p1, :cond_1

    .line 444
    const-string v1, "did_complete"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/facebook/unity/UnityMessage;->put(Ljava/lang/String;Ljava/io/Serializable;)Lcom/facebook/unity/UnityMessage;

    .line 458
    :cond_0
    :goto_0
    return-void

    .line 448
    :cond_1
    const-string v1, "ref"

    invoke-virtual {p1}, Lcom/facebook/applinks/AppLinkData;->getRef()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/facebook/unity/UnityMessage;->put(Ljava/lang/String;Ljava/io/Serializable;)Lcom/facebook/unity/UnityMessage;

    .line 449
    const-string v1, "target_url"

    invoke-virtual {p1}, Lcom/facebook/applinks/AppLinkData;->getTargetUri()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/facebook/unity/UnityMessage;->put(Ljava/lang/String;Ljava/io/Serializable;)Lcom/facebook/unity/UnityMessage;

    .line 451
    :try_start_0
    invoke-virtual {p1}, Lcom/facebook/applinks/AppLinkData;->getArgumentBundle()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 452
    const-string v1, "extras"

    .line 453
    invoke-virtual {p1}, Lcom/facebook/applinks/AppLinkData;->getArgumentBundle()Landroid/os/Bundle;

    move-result-object v2

    .line 452
    invoke-static {v2}, Lcom/facebook/internal/BundleJSONConverter;->convertToJSON(Landroid/os/Bundle;)Lorg/json/JSONObject;

    move-result-object v2

    .line 453
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    .line 452
    invoke-virtual {p0, v1, v2}, Lcom/facebook/unity/UnityMessage;->put(Ljava/lang/String;Ljava/io/Serializable;)Lcom/facebook/unity/UnityMessage;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 455
    :catch_0
    move-exception v0

    .line 456
    .local v0, "ex":Lorg/json/JSONException;
    sget-object v1, Lcom/facebook/unity/FB;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Lorg/json/JSONException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private static getAppEventsLogger()Lcom/facebook/appevents/AppEventsLogger;
    .locals 1

    .prologue
    .line 64
    sget-object v0, Lcom/facebook/unity/FB;->appEventsLogger:Lcom/facebook/appevents/AppEventsLogger;

    if-nez v0, :cond_0

    .line 65
    invoke-static {}, Lcom/facebook/unity/FB;->getUnityActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/appevents/AppEventsLogger;->newLogger(Landroid/content/Context;)Lcom/facebook/appevents/AppEventsLogger;

    move-result-object v0

    sput-object v0, Lcom/facebook/unity/FB;->appEventsLogger:Lcom/facebook/appevents/AppEventsLogger;

    .line 67
    :cond_0
    sget-object v0, Lcom/facebook/unity/FB;->appEventsLogger:Lcom/facebook/appevents/AppEventsLogger;

    return-object v0
.end method

.method public static getKeyHash()Ljava/lang/String;
    .locals 9
    .annotation build Landroid/annotation/TargetApi;
        value = 0x8
    .end annotation

    .prologue
    const/4 v8, 0x0

    .line 383
    :try_start_0
    invoke-static {}, Lcom/facebook/unity/FB;->getUnityActivity()Landroid/app/Activity;

    move-result-object v0

    .line 384
    .local v0, "activity":Landroid/app/Activity;
    if-nez v0, :cond_0

    .line 385
    const-string v2, ""

    .line 401
    :goto_0
    return-object v2

    .line 388
    :cond_0
    invoke-virtual {v0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    .line 389
    invoke-virtual {v0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v6

    const/16 v7, 0x40

    .line 388
    invoke-virtual {v5, v6, v7}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 391
    .local v1, "info":Landroid/content/pm/PackageInfo;
    iget-object v5, v1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    array-length v6, v5

    const/4 v7, 0x0

    if-ge v8, v6, :cond_1

    aget-object v4, v5, v7

    .line 392
    .local v4, "signature":Landroid/content/pm/Signature;
    const-string v5, "SHA"

    invoke-static {v5}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v3

    .line 393
    .local v3, "md":Ljava/security/MessageDigest;
    invoke-virtual {v4}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/security/MessageDigest;->update([B)V

    .line 394
    invoke-virtual {v3}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v5

    const/4 v6, 0x0

    invoke-static {v5, v6}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v2

    .line 395
    .local v2, "keyHash":Ljava/lang/String;
    sget-object v5, Lcom/facebook/unity/FB;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "KeyHash: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 398
    .end local v1    # "info":Landroid/content/pm/PackageInfo;
    .end local v2    # "keyHash":Ljava/lang/String;
    .end local v3    # "md":Ljava/security/MessageDigest;
    .end local v4    # "signature":Landroid/content/pm/Signature;
    :catch_0
    move-exception v5

    .line 401
    :cond_1
    :goto_1
    const-string v2, ""

    goto :goto_0

    .line 399
    :catch_1
    move-exception v5

    goto :goto_1
.end method

.method public static getUnityActivity()Landroid/app/Activity;
    .locals 1

    .prologue
    .line 71
    invoke-static {}, Lcom/facebook/unity/UnityReflection;->GetUnityActivity()Landroid/app/Activity;

    move-result-object v0

    return-object v0
.end method

.method public static loginForTVWithReadPermissions(Ljava/lang/String;)V
    .locals 4
    .param p0, "params_str"    # Ljava/lang/String;
    .annotation build Lcom/facebook/unity/UnityCallable;
    .end annotation

    .prologue
    .line 134
    sget-object v1, Lcom/facebook/unity/FB;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "loginForTVWithReadPermissions("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    new-instance v0, Landroid/content/Intent;

    invoke-static {}, Lcom/facebook/unity/FB;->getUnityActivity()Landroid/app/Activity;

    move-result-object v1

    const-class v2, Lcom/facebook/unity/FBUnityLoginActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 136
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "login_params"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 137
    const-string v1, "login_type"

    sget-object v2, Lcom/facebook/unity/FBUnityLoginActivity$LoginType;->TV_READ:Lcom/facebook/unity/FBUnityLoginActivity$LoginType;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 138
    invoke-static {}, Lcom/facebook/unity/FB;->getUnityActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 139
    return-void
.end method

.method private static startActivity(Ljava/lang/Class;Ljava/lang/String;)V
    .locals 4
    .param p1, "paramsStr"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 431
    .local p0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-instance v0, Landroid/content/Intent;

    invoke-static {}, Lcom/facebook/unity/FB;->getUnityActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v0, v3, p0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 432
    .local v0, "intent":Landroid/content/Intent;
    invoke-static {p1}, Lcom/facebook/unity/UnityParams;->parse(Ljava/lang/String;)Lcom/facebook/unity/UnityParams;

    move-result-object v2

    .line 433
    .local v2, "unityParams":Lcom/facebook/unity/UnityParams;
    invoke-virtual {v2}, Lcom/facebook/unity/UnityParams;->getStringParams()Landroid/os/Bundle;

    move-result-object v1

    .line 434
    .local v1, "params":Landroid/os/Bundle;
    const-string v3, "activity_params"

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 435
    invoke-static {}, Lcom/facebook/unity/FB;->getUnityActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 436
    return-void
.end method
