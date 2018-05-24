.class public final Lcom/crittercism/internal/au;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/crittercism/internal/au$c;,
        Lcom/crittercism/internal/au$b;,
        Lcom/crittercism/internal/au$a;
    }
.end annotation


# instance fields
.field public a:Lcom/crittercism/internal/ak;

.field b:Landroid/content/Context;

.field c:Lcom/crittercism/internal/ao;

.field d:Lcom/crittercism/internal/ax;

.field public e:Ljava/lang/String;

.field public f:Lcom/crittercism/internal/bz;

.field public g:Ljava/lang/String;

.field private h:Lcom/crittercism/internal/bw;

.field private i:Lcom/crittercism/internal/au$a;


# direct methods
.method public constructor <init>(Lcom/crittercism/internal/ak;Landroid/content/Context;Lcom/crittercism/internal/ao;Ljava/lang/String;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-object p1, p0, Lcom/crittercism/internal/au;->a:Lcom/crittercism/internal/ak;

    .line 52
    iput-object p2, p0, Lcom/crittercism/internal/au;->b:Landroid/content/Context;

    .line 53
    iput-object p3, p0, Lcom/crittercism/internal/au;->c:Lcom/crittercism/internal/ao;

    .line 54
    new-instance v0, Lcom/crittercism/internal/ay;

    invoke-direct {v0}, Lcom/crittercism/internal/ay;-><init>()V

    iput-object v0, p0, Lcom/crittercism/internal/au;->d:Lcom/crittercism/internal/ax;

    .line 55
    iput-object p4, p0, Lcom/crittercism/internal/au;->e:Ljava/lang/String;

    .line 56
    new-instance v0, Lcom/crittercism/internal/bw;

    invoke-direct {v0, p2}, Lcom/crittercism/internal/bw;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/crittercism/internal/au;->h:Lcom/crittercism/internal/bw;

    .line 57
    new-instance v0, Lcom/crittercism/internal/bz;

    invoke-direct {v0, p2}, Lcom/crittercism/internal/bz;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/crittercism/internal/au;->f:Lcom/crittercism/internal/bz;

    .line 58
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12

    if-lt v0, v1, :cond_0

    .line 59
    new-instance v0, Lcom/crittercism/internal/au$b;

    invoke-direct {v0, v2}, Lcom/crittercism/internal/au$b;-><init>(B)V

    iput-object v0, p0, Lcom/crittercism/internal/au;->i:Lcom/crittercism/internal/au$a;

    .line 63
    :goto_0
    return-void

    .line 61
    :cond_0
    new-instance v0, Lcom/crittercism/internal/au$c;

    invoke-direct {v0, v2}, Lcom/crittercism/internal/au$c;-><init>(B)V

    iput-object v0, p0, Lcom/crittercism/internal/au;->i:Lcom/crittercism/internal/au$a;

    goto :goto_0
.end method

.method public static l()Ljava/lang/Long;
    .locals 2

    .prologue
    .line 254
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->maxMemory()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final a()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/crittercism/internal/au;->a:Lcom/crittercism/internal/ak;

    .line 1044
    iget v0, v0, Lcom/crittercism/internal/ak;->b:I

    .line 88
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method final a(I)Lorg/json/JSONObject;
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 303
    iget-object v0, p0, Lcom/crittercism/internal/au;->c:Lcom/crittercism/internal/ao;

    .line 2025
    iget-boolean v0, v0, Lcom/crittercism/internal/ao;->b:Z

    .line 303
    if-nez v0, :cond_1

    move-object v0, v1

    .line 346
    :cond_0
    :goto_0
    return-object v0

    .line 307
    :cond_1
    invoke-static {p1}, Landroid/net/ConnectivityManager;->isNetworkTypeValid(I)Z

    move-result v0

    if-nez v0, :cond_2

    move-object v0, v1

    .line 308
    goto :goto_0

    .line 311
    :cond_2
    iget-object v0, p0, Lcom/crittercism/internal/au;->b:Landroid/content/Context;

    const-string v2, "connectivity"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 312
    invoke-virtual {v0, p1}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v2

    .line 313
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 320
    if-eqz v2, :cond_4

    .line 321
    :try_start_0
    const-string v3, "available"

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v4

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 322
    const-string v3, "connected"

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v4

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 323
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v3

    if-nez v3, :cond_3

    .line 325
    const-string v3, "connecting"

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result v4

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 327
    :cond_3
    const-string v3, "failover"

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isFailover()Z

    move-result v4

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 328
    if-nez p1, :cond_0

    .line 329
    const-string v3, "roaming"

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isRoaming()Z

    move-result v2

    invoke-virtual {v0, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    goto :goto_0

    .line 343
    :catch_0
    move-exception v0

    move-object v0, v1

    goto :goto_0

    .line 333
    :cond_4
    const-string v2, "available"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 334
    const-string v2, "connected"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 335
    const-string v2, "connecting"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 336
    const-string v2, "failover"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 337
    if-nez p1, :cond_0

    .line 338
    const-string v2, "roaming"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0
.end method

.method public final b()Ljava/lang/String;
    .locals 3

    .prologue
    .line 96
    const-string v1, ""

    .line 98
    :try_start_0
    iget-object v0, p0, Lcom/crittercism/internal/au;->b:Landroid/content/Context;

    const-string v2, "phone"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 99
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkOperatorName()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 103
    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    move-object v0, v1

    goto :goto_0
.end method

.method public final c()Ljava/lang/Integer;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 111
    .line 113
    :try_start_0
    iget-object v0, p0, Lcom/crittercism/internal/au;->b:Landroid/content/Context;

    const-string v2, "phone"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 114
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v0

    .line 115
    if-eqz v0, :cond_0

    .line 116
    const/4 v2, 0x0

    const/4 v3, 0x3

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 120
    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public final d()Ljava/lang/Integer;
    .locals 3

    .prologue
    .line 124
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 126
    :try_start_0
    iget-object v0, p0, Lcom/crittercism/internal/au;->b:Landroid/content/Context;

    const-string v2, "phone"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 127
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v0

    .line 128
    if-eqz v0, :cond_0

    .line 129
    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 133
    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    :cond_0
    move-object v0, v1

    goto :goto_0
.end method

.method public final e()Ljava/lang/Float;
    .locals 1

    .prologue
    .line 137
    iget-object v0, p0, Lcom/crittercism/internal/au;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method

.method public final f()F
    .locals 1

    .prologue
    .line 141
    iget-object v0, p0, Lcom/crittercism/internal/au;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->xdpi:F

    return v0
.end method

.method public final g()F
    .locals 1

    .prologue
    .line 145
    iget-object v0, p0, Lcom/crittercism/internal/au;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->ydpi:F

    return v0
.end method

.method public final h()Ljava/lang/String;
    .locals 2

    .prologue
    .line 149
    const-string v0, ""

    .line 150
    iget-object v1, p0, Lcom/crittercism/internal/au;->h:Lcom/crittercism/internal/bw;

    if-eqz v1, :cond_0

    .line 151
    iget-object v0, p0, Lcom/crittercism/internal/au;->h:Lcom/crittercism/internal/bw;

    invoke-virtual {v0}, Lcom/crittercism/internal/bw;->a()Ljava/lang/String;

    move-result-object v0

    .line 153
    :cond_0
    return-object v0
.end method

.method public final i()Ljava/lang/String;
    .locals 2

    .prologue
    .line 157
    iget-object v0, p0, Lcom/crittercism/internal/au;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    .line 158
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    .line 159
    :cond_0
    const-string v0, "en"

    .line 161
    :cond_1
    return-object v0
.end method

.method public final j()Ljava/lang/String;
    .locals 1

    .prologue
    .line 216
    :try_start_0
    iget-object v0, p0, Lcom/crittercism/internal/au;->i:Lcom/crittercism/internal/au$a;

    invoke-interface {v0}, Lcom/crittercism/internal/au$a;->b()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/ThreadDeath; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 220
    :goto_0
    return-object v0

    .line 218
    :catch_0
    move-exception v0

    throw v0

    .line 220
    :catch_1
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final k()Ljava/lang/String;
    .locals 1

    .prologue
    .line 231
    :try_start_0
    iget-object v0, p0, Lcom/crittercism/internal/au;->i:Lcom/crittercism/internal/au$a;

    invoke-interface {v0}, Lcom/crittercism/internal/au$a;->a()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/ThreadDeath; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 235
    :goto_0
    return-object v0

    .line 233
    :catch_0
    move-exception v0

    throw v0

    .line 235
    :catch_1
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final m()Ljava/lang/String;
    .locals 1

    .prologue
    .line 279
    :try_start_0
    iget-object v0, p0, Lcom/crittercism/internal/au;->i:Lcom/crittercism/internal/au$a;

    invoke-interface {v0}, Lcom/crittercism/internal/au$a;->d()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/ThreadDeath; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 283
    :goto_0
    return-object v0

    .line 281
    :catch_0
    move-exception v0

    throw v0

    .line 283
    :catch_1
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final n()Ljava/lang/String;
    .locals 1

    .prologue
    .line 294
    :try_start_0
    iget-object v0, p0, Lcom/crittercism/internal/au;->i:Lcom/crittercism/internal/au$a;

    invoke-interface {v0}, Lcom/crittercism/internal/au$a;->c()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/ThreadDeath; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 298
    :goto_0
    return-object v0

    .line 296
    :catch_0
    move-exception v0

    throw v0

    .line 298
    :catch_1
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method
