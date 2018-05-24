.class public Lcom/facebook/unity/FBLogin;
.super Ljava/lang/Object;
.source "FBLogin.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addLoginParametersToMessage(Lcom/facebook/unity/UnityMessage;Lcom/facebook/AccessToken;Ljava/lang/String;)V
    .locals 8
    .param p0, "unityMessage"    # Lcom/facebook/unity/UnityMessage;
    .param p1, "token"    # Lcom/facebook/AccessToken;
    .param p2, "callbackID"    # Ljava/lang/String;

    .prologue
    const-wide/16 v6, 0x3e8

    .line 74
    const-string v2, "key_hash"

    invoke-static {}, Lcom/facebook/unity/FB;->getKeyHash()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/facebook/unity/UnityMessage;->put(Ljava/lang/String;Ljava/io/Serializable;)Lcom/facebook/unity/UnityMessage;

    .line 75
    const-string v2, "opened"

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/facebook/unity/UnityMessage;->put(Ljava/lang/String;Ljava/io/Serializable;)Lcom/facebook/unity/UnityMessage;

    .line 76
    const-string v2, "access_token"

    invoke-virtual {p1}, Lcom/facebook/AccessToken;->getToken()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/facebook/unity/UnityMessage;->put(Ljava/lang/String;Ljava/io/Serializable;)Lcom/facebook/unity/UnityMessage;

    .line 77
    invoke-virtual {p1}, Lcom/facebook/AccessToken;->getExpires()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    div-long/2addr v2, v6

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 78
    .local v0, "expiration":Ljava/lang/Long;
    const-string v2, "expiration_timestamp"

    invoke-virtual {v0}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/facebook/unity/UnityMessage;->put(Ljava/lang/String;Ljava/io/Serializable;)Lcom/facebook/unity/UnityMessage;

    .line 79
    const-string v2, "user_id"

    invoke-virtual {p1}, Lcom/facebook/AccessToken;->getUserId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/facebook/unity/UnityMessage;->put(Ljava/lang/String;Ljava/io/Serializable;)Lcom/facebook/unity/UnityMessage;

    .line 80
    const-string v2, "permissions"

    const-string v3, ","

    .line 81
    invoke-virtual {p1}, Lcom/facebook/AccessToken;->getPermissions()Ljava/util/Set;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v3

    .line 80
    invoke-virtual {p0, v2, v3}, Lcom/facebook/unity/UnityMessage;->put(Ljava/lang/String;Ljava/io/Serializable;)Lcom/facebook/unity/UnityMessage;

    .line 82
    const-string v2, "declined_permissions"

    const-string v3, ","

    .line 83
    invoke-virtual {p1}, Lcom/facebook/AccessToken;->getDeclinedPermissions()Ljava/util/Set;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v3

    .line 82
    invoke-virtual {p0, v2, v3}, Lcom/facebook/unity/UnityMessage;->put(Ljava/lang/String;Ljava/io/Serializable;)Lcom/facebook/unity/UnityMessage;

    .line 85
    invoke-virtual {p1}, Lcom/facebook/AccessToken;->getLastRefresh()Ljava/util/Date;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 86
    invoke-virtual {p1}, Lcom/facebook/AccessToken;->getLastRefresh()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    div-long/2addr v2, v6

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 87
    .local v1, "lastRefresh":Ljava/lang/Long;
    const-string v2, "last_refresh"

    invoke-virtual {v1}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/facebook/unity/UnityMessage;->put(Ljava/lang/String;Ljava/io/Serializable;)Lcom/facebook/unity/UnityMessage;

    .line 90
    .end local v1    # "lastRefresh":Ljava/lang/Long;
    :cond_0
    if-eqz p2, :cond_1

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 91
    const-string v2, "callback_id"

    invoke-virtual {p0, v2, p2}, Lcom/facebook/unity/UnityMessage;->put(Ljava/lang/String;Ljava/io/Serializable;)Lcom/facebook/unity/UnityMessage;

    .line 93
    :cond_1
    return-void
.end method

.method private static login(Ljava/lang/String;Lcom/facebook/unity/FBUnityLoginActivity;ZZ)V
    .locals 9
    .param p0, "params"    # Ljava/lang/String;
    .param p1, "activity"    # Lcom/facebook/unity/FBUnityLoginActivity;
    .param p2, "isPublishPermLogin"    # Z
    .param p3, "isDeviceAuthLogin"    # Z

    .prologue
    .line 100
    invoke-static {}, Lcom/facebook/FacebookSdk;->isInitialized()Z

    move-result v6

    if-nez v6, :cond_0

    .line 101
    sget-object v6, Lcom/facebook/unity/FB;->TAG:Ljava/lang/String;

    const-string v7, "Facebook SDK not initialized. Call init() before calling login()"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    :goto_0
    return-void

    .line 105
    :cond_0
    new-instance v4, Lcom/facebook/unity/UnityMessage;

    const-string v6, "OnLoginComplete"

    invoke-direct {v4, v6}, Lcom/facebook/unity/UnityMessage;-><init>(Ljava/lang/String;)V

    .line 106
    .local v4, "unityMessage":Lcom/facebook/unity/UnityMessage;
    const-string v6, "key_hash"

    invoke-static {}, Lcom/facebook/unity/FB;->getKeyHash()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Lcom/facebook/unity/UnityMessage;->put(Ljava/lang/String;Ljava/io/Serializable;)Lcom/facebook/unity/UnityMessage;

    .line 107
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "couldn\'t parse login params: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {p0, v6}, Lcom/facebook/unity/UnityParams;->parse(Ljava/lang/String;Ljava/lang/String;)Lcom/facebook/unity/UnityParams;

    move-result-object v5

    .line 110
    .local v5, "unity_params":Lcom/facebook/unity/UnityParams;
    const/4 v3, 0x0

    .line 111
    .local v3, "permissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v6, "scope"

    invoke-virtual {v5, v6}, Lcom/facebook/unity/UnityParams;->hasString(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 112
    new-instance v3, Ljava/util/ArrayList;

    .end local v3    # "permissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v6, "scope"

    .line 113
    invoke-virtual {v5, v6}, Lcom/facebook/unity/UnityParams;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    invoke-direct {v3, v6}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 116
    .restart local v3    # "permissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_1
    const/4 v1, 0x0

    .line 117
    .local v1, "callbackIDString":Ljava/lang/String;
    const-string v6, "callback_id"

    invoke-virtual {v5, v6}, Lcom/facebook/unity/UnityParams;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 118
    const-string v6, "callback_id"

    invoke-virtual {v5, v6}, Lcom/facebook/unity/UnityParams;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 119
    const-string v6, "callback_id"

    invoke-virtual {v4, v6, v1}, Lcom/facebook/unity/UnityMessage;->put(Ljava/lang/String;Ljava/io/Serializable;)Lcom/facebook/unity/UnityMessage;

    .line 122
    :cond_2
    move-object v0, v1

    .line 125
    .local v0, "callbackID":Ljava/lang/String;
    invoke-static {}, Lcom/facebook/login/LoginManager;->getInstance()Lcom/facebook/login/LoginManager;

    move-result-object v6

    .line 126
    invoke-virtual {p1}, Lcom/facebook/unity/FBUnityLoginActivity;->getCallbackManager()Lcom/facebook/CallbackManager;

    move-result-object v7

    new-instance v8, Lcom/facebook/unity/FBLogin$1;

    invoke-direct {v8, v0, v4}, Lcom/facebook/unity/FBLogin$1;-><init>(Ljava/lang/String;Lcom/facebook/unity/UnityMessage;)V

    .line 125
    invoke-virtual {v6, v7, v8}, Lcom/facebook/login/LoginManager;->registerCallback(Lcom/facebook/CallbackManager;Lcom/facebook/FacebookCallback;)V

    .line 146
    if-eqz p3, :cond_3

    .line 147
    invoke-static {}, Lcom/facebook/login/DeviceLoginManager;->getInstance()Lcom/facebook/login/DeviceLoginManager;

    move-result-object v2

    .line 152
    .local v2, "loginManager":Lcom/facebook/login/LoginManager;
    :goto_1
    if-eqz p2, :cond_4

    .line 153
    invoke-virtual {v2, p1, v3}, Lcom/facebook/login/LoginManager;->logInWithPublishPermissions(Landroid/app/Activity;Ljava/util/Collection;)V

    goto :goto_0

    .line 149
    .end local v2    # "loginManager":Lcom/facebook/login/LoginManager;
    :cond_3
    invoke-static {}, Lcom/facebook/login/LoginManager;->getInstance()Lcom/facebook/login/LoginManager;

    move-result-object v2

    .restart local v2    # "loginManager":Lcom/facebook/login/LoginManager;
    goto :goto_1

    .line 155
    :cond_4
    invoke-virtual {v2, p1, v3}, Lcom/facebook/login/LoginManager;->logInWithReadPermissions(Landroid/app/Activity;Ljava/util/Collection;)V

    goto/16 :goto_0
.end method

.method public static loginForTVWithPublishPermissions(Ljava/lang/String;Lcom/facebook/unity/FBUnityLoginActivity;)V
    .locals 1
    .param p0, "params"    # Ljava/lang/String;
    .param p1, "activity"    # Lcom/facebook/unity/FBUnityLoginActivity;

    .prologue
    const/4 v0, 0x1

    .line 61
    invoke-static {p0, p1, v0, v0}, Lcom/facebook/unity/FBLogin;->login(Ljava/lang/String;Lcom/facebook/unity/FBUnityLoginActivity;ZZ)V

    .line 62
    return-void
.end method

.method public static loginForTVWithReadPermissions(Ljava/lang/String;Lcom/facebook/unity/FBUnityLoginActivity;)V
    .locals 2
    .param p0, "params"    # Ljava/lang/String;
    .param p1, "activity"    # Lcom/facebook/unity/FBUnityLoginActivity;

    .prologue
    .line 55
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {p0, p1, v0, v1}, Lcom/facebook/unity/FBLogin;->login(Ljava/lang/String;Lcom/facebook/unity/FBUnityLoginActivity;ZZ)V

    .line 56
    return-void
.end method

.method public static loginWithPublishPermissions(Ljava/lang/String;Lcom/facebook/unity/FBUnityLoginActivity;)V
    .locals 2
    .param p0, "params"    # Ljava/lang/String;
    .param p1, "activity"    # Lcom/facebook/unity/FBUnityLoginActivity;

    .prologue
    .line 49
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v1}, Lcom/facebook/unity/FBLogin;->login(Ljava/lang/String;Lcom/facebook/unity/FBUnityLoginActivity;ZZ)V

    .line 50
    return-void
.end method

.method public static loginWithReadPermissions(Ljava/lang/String;Lcom/facebook/unity/FBUnityLoginActivity;)V
    .locals 1
    .param p0, "params"    # Ljava/lang/String;
    .param p1, "activity"    # Lcom/facebook/unity/FBUnityLoginActivity;

    .prologue
    const/4 v0, 0x0

    .line 43
    invoke-static {p0, p1, v0, v0}, Lcom/facebook/unity/FBLogin;->login(Ljava/lang/String;Lcom/facebook/unity/FBUnityLoginActivity;ZZ)V

    .line 44
    return-void
.end method

.method public static sendLoginSuccessMessage(Lcom/facebook/AccessToken;Ljava/lang/String;)V
    .locals 2
    .param p0, "token"    # Lcom/facebook/AccessToken;
    .param p1, "callbackID"    # Ljava/lang/String;

    .prologue
    .line 65
    new-instance v0, Lcom/facebook/unity/UnityMessage;

    const-string v1, "OnLoginComplete"

    invoke-direct {v0, v1}, Lcom/facebook/unity/UnityMessage;-><init>(Ljava/lang/String;)V

    .line 66
    .local v0, "unityMessage":Lcom/facebook/unity/UnityMessage;
    invoke-static {v0, p0, p1}, Lcom/facebook/unity/FBLogin;->addLoginParametersToMessage(Lcom/facebook/unity/UnityMessage;Lcom/facebook/AccessToken;Ljava/lang/String;)V

    .line 67
    invoke-virtual {v0}, Lcom/facebook/unity/UnityMessage;->send()V

    .line 68
    return-void
.end method
