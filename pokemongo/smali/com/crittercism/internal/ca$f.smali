.class public final Lcom/crittercism/internal/ca$f;
.super Lcom/crittercism/internal/bv;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/crittercism/internal/ca;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "f"
.end annotation


# instance fields
.field private c:Lcom/crittercism/internal/au;

.field private d:Lcom/crittercism/internal/av;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/crittercism/internal/av",
            "<",
            "Lcom/crittercism/internal/at;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/crittercism/internal/av;Lcom/crittercism/internal/au;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/crittercism/internal/av",
            "<",
            "Lcom/crittercism/internal/at;",
            ">;",
            "Lcom/crittercism/internal/au;",
            ")V"
        }
    .end annotation

    .prologue
    .line 403
    .line 1080
    iget-object v0, p2, Lcom/crittercism/internal/au;->e:Ljava/lang/String;

    .line 403
    invoke-virtual {p2}, Lcom/crittercism/internal/au;->h()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/crittercism/internal/bv;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 404
    iput-object p2, p0, Lcom/crittercism/internal/ca$f;->c:Lcom/crittercism/internal/au;

    .line 405
    iput-object p1, p0, Lcom/crittercism/internal/ca$f;->d:Lcom/crittercism/internal/av;

    .line 406
    return-void
.end method

.method private static a(Ljava/util/List;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<+",
            "Lcom/crittercism/internal/bf;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 454
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/crittercism/internal/bf;

    .line 455
    check-cast v0, Lcom/crittercism/internal/ca;

    .line 5309
    iget v0, v0, Lcom/crittercism/internal/ca;->f:I

    .line 458
    sget v2, Lcom/crittercism/internal/ca$d;->c:I

    if-eq v0, v2, :cond_0

    sget v2, Lcom/crittercism/internal/ca$d;->i:I

    if-eq v0, v2, :cond_0

    sget v2, Lcom/crittercism/internal/ca$d;->h:I

    if-eq v0, v2, :cond_0

    .line 461
    const/4 v0, 0x1

    .line 464
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final a(Lcom/crittercism/internal/as;Ljava/util/List;)Lcom/crittercism/internal/bs;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/crittercism/internal/as;",
            "Ljava/util/List",
            "<+",
            "Lcom/crittercism/internal/bf;",
            ">;)",
            "Lcom/crittercism/internal/bs;"
        }
    .end annotation

    .prologue
    .line 411
    new-instance v1, Ljava/net/URL;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1107
    iget-object v2, p1, Lcom/crittercism/internal/as;->c:Ljava/net/URL;

    .line 411
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "/api/v1/transactions"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 414
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 416
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 417
    const-string v3, "appID"

    iget-object v4, p0, Lcom/crittercism/internal/ca$f;->c:Lcom/crittercism/internal/au;

    .line 2080
    iget-object v4, v4, Lcom/crittercism/internal/au;->e:Ljava/lang/String;

    .line 417
    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 418
    const-string v3, "deviceID"

    iget-object v4, p0, Lcom/crittercism/internal/ca$f;->c:Lcom/crittercism/internal/au;

    invoke-virtual {v4}, Lcom/crittercism/internal/au;->h()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 419
    const-string v3, "crPlatform"

    .line 2177
    const-string v4, "android"

    .line 419
    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 420
    const-string v3, "crVersion"

    .line 3107
    const-string v4, "5.8.2"

    .line 420
    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 421
    const-string v3, "deviceModel"

    .line 3165
    sget-object v4, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 421
    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 422
    const-string v3, "osName"

    const-string v4, "android"

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 423
    const-string v3, "osVersion"

    .line 3181
    sget-object v4, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    .line 423
    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 424
    const-string v3, "carrier"

    iget-object v4, p0, Lcom/crittercism/internal/ca$f;->c:Lcom/crittercism/internal/au;

    invoke-virtual {v4}, Lcom/crittercism/internal/au;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 425
    const-string v3, "mobileCountryCode"

    iget-object v4, p0, Lcom/crittercism/internal/ca$f;->c:Lcom/crittercism/internal/au;

    invoke-virtual {v4}, Lcom/crittercism/internal/au;->c()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 426
    const-string v3, "mobileNetworkCode"

    iget-object v4, p0, Lcom/crittercism/internal/ca$f;->c:Lcom/crittercism/internal/au;

    invoke-virtual {v4}, Lcom/crittercism/internal/au;->d()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 427
    const-string v3, "appVersion"

    iget-object v4, p0, Lcom/crittercism/internal/ca$f;->c:Lcom/crittercism/internal/au;

    .line 4084
    iget-object v4, v4, Lcom/crittercism/internal/au;->a:Lcom/crittercism/internal/ak;

    .line 5040
    iget-object v4, v4, Lcom/crittercism/internal/ak;->a:Ljava/lang/String;

    .line 427
    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 428
    const-string v3, "locale"

    iget-object v4, p0, Lcom/crittercism/internal/ca$f;->c:Lcom/crittercism/internal/au;

    invoke-virtual {v4}, Lcom/crittercism/internal/au;->i()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 429
    const-string v3, "appState"

    invoke-virtual {v2, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 431
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    .line 432
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/crittercism/internal/bf;

    .line 433
    invoke-interface {v0}, Lcom/crittercism/internal/bf;->g()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v3, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 447
    :catch_0
    move-exception v0

    .line 448
    new-instance v1, Ljava/io/IOException;

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 449
    invoke-virtual {v1, v0}, Ljava/io/IOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v0

    check-cast v0, Ljava/io/IOException;

    throw v0

    .line 435
    :cond_0
    :try_start_1
    const-string v0, "transactions"

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 437
    invoke-static {p2}, Lcom/crittercism/internal/ca$f;->a(Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 438
    const-string v0, "systemBreadcrumbs"

    iget-object v3, p0, Lcom/crittercism/internal/ca$f;->d:Lcom/crittercism/internal/av;

    invoke-interface {v3}, Lcom/crittercism/internal/av;->a()Lorg/json/JSONArray;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 442
    const-string v0, "breadcrumbs"

    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 443
    const-string v0, "endpoints"

    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 446
    :cond_1
    iget-object v0, p0, Lcom/crittercism/internal/ca$f;->a:Ljava/lang/String;

    invoke-static {v1, v0, v2}, Lcom/crittercism/internal/bs;->a(Ljava/net/URL;Ljava/lang/String;Lorg/json/JSONObject;)Lcom/crittercism/internal/bs;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    return-object v0
.end method
