.class public final Lcom/crittercism/internal/br;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/crittercism/internal/bu$a;


# instance fields
.field private a:Lcom/crittercism/internal/au;

.field private b:Landroid/content/Context;

.field private c:Ljava/net/URL;

.field private d:Z

.field private e:Lcom/crittercism/internal/ap;


# direct methods
.method public constructor <init>(Ljava/net/URL;Landroid/content/Context;Lcom/crittercism/internal/au;Lcom/crittercism/internal/ap;)V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lcom/crittercism/internal/br;->c:Ljava/net/URL;

    .line 41
    iput-object p2, p0, Lcom/crittercism/internal/br;->b:Landroid/content/Context;

    .line 42
    iput-object p3, p0, Lcom/crittercism/internal/br;->a:Lcom/crittercism/internal/au;

    .line 43
    iput-object p4, p0, Lcom/crittercism/internal/br;->e:Lcom/crittercism/internal/ap;

    .line 44
    return-void
.end method

.method private a(Lorg/json/JSONObject;)V
    .locals 8

    .prologue
    .line 144
    :try_start_0
    const-string v0, "txnConfig"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 145
    sget-object v2, Lcom/crittercism/internal/ap;->A:Lcom/crittercism/internal/ap$d;

    sget-object v3, Lcom/crittercism/internal/ap;->z:Lcom/crittercism/internal/ap$a;

    sget-object v4, Lcom/crittercism/internal/ap;->y:Lcom/crittercism/internal/ap$a;

    sget-object v5, Lcom/crittercism/internal/ap;->B:Lcom/crittercism/internal/ap$b;

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/crittercism/internal/br;->a(Lorg/json/JSONObject;Lcom/crittercism/internal/ap$d;Lcom/crittercism/internal/ap$a;Lcom/crittercism/internal/ap$a;Lcom/crittercism/internal/ap$b;)V

    .line 151
    const-string v2, "defaultTimeout"

    sget-object v0, Lcom/crittercism/internal/ap;->H:Lcom/crittercism/internal/ap$d;

    invoke-virtual {v0}, Lcom/crittercism/internal/ap$d;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v1, v2, v4, v5}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v2

    .line 152
    iget-object v0, p0, Lcom/crittercism/internal/br;->e:Lcom/crittercism/internal/ap;

    sget-object v4, Lcom/crittercism/internal/ap;->H:Lcom/crittercism/internal/ap$d;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Lcom/crittercism/internal/ap;->a(Lcom/crittercism/internal/ap$e;Ljava/lang/Object;)V

    .line 154
    const-string v0, "transactions"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 155
    if-eqz v1, :cond_0

    .line 156
    invoke-virtual {v1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v4

    .line 157
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 158
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 159
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    .line 160
    const-string v6, "timeout"

    invoke-virtual {v5, v6, v2, v3}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v6

    .line 161
    iget-object v5, p0, Lcom/crittercism/internal/br;->e:Lcom/crittercism/internal/ap;

    invoke-virtual {v5, v0, v6, v7}, Lcom/crittercism/internal/ap;->b(Ljava/lang/String;J)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 168
    :catch_0
    move-exception v0

    :cond_0
    return-void
.end method

.method private a(Lorg/json/JSONObject;Lcom/crittercism/internal/ap$d;Lcom/crittercism/internal/ap$a;Lcom/crittercism/internal/ap$a;Lcom/crittercism/internal/ap$b;)V
    .locals 6

    .prologue
    .line 55
    :try_start_0
    const-string v0, "interval"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 56
    iget-object v2, p0, Lcom/crittercism/internal/br;->e:Lcom/crittercism/internal/ap;

    const-wide/16 v4, 0x3e8

    mul-long/2addr v0, v4

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v2, p2, v0}, Lcom/crittercism/internal/ap;->a(Lcom/crittercism/internal/ap$e;Ljava/lang/Object;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_2

    .line 62
    :goto_0
    :try_start_1
    const-string v0, "enabled"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 63
    iget-object v1, p0, Lcom/crittercism/internal/br;->e:Lcom/crittercism/internal/ap;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, p4, v2}, Lcom/crittercism/internal/ap;->a(Lcom/crittercism/internal/ap$e;Ljava/lang/Object;)V

    .line 64
    iget-object v1, p0, Lcom/crittercism/internal/br;->e:Lcom/crittercism/internal/ap;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v1, p3, v0}, Lcom/crittercism/internal/ap;->a(Lcom/crittercism/internal/ap$e;Ljava/lang/Object;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .line 70
    :goto_1
    :try_start_2
    const-string v0, "rate"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v0

    double-to-float v0, v0

    .line 71
    iget-object v1, p0, Lcom/crittercism/internal/br;->e:Lcom/crittercism/internal/ap;

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v1, p5, v0}, Lcom/crittercism/internal/ap;->a(Lcom/crittercism/internal/ap$e;Ljava/lang/Object;)V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    .line 75
    :goto_2
    return-void

    :catch_0
    move-exception v0

    goto :goto_2

    :catch_1
    move-exception v0

    goto :goto_1

    :catch_2
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method public final a(Lcom/crittercism/internal/bt;)V
    .locals 7

    .prologue
    const/4 v2, 0x1

    .line 205
    if-eqz p1, :cond_0

    .line 1030
    iget-object v0, p1, Lcom/crittercism/internal/bt;->b:[B

    .line 205
    if-nez v0, :cond_1

    .line 227
    :cond_0
    :goto_0
    return-void

    .line 210
    :cond_1
    :try_start_0
    new-instance v6, Lorg/json/JSONObject;

    new-instance v0, Ljava/lang/String;

    .line 2030
    iget-object v1, p1, Lcom/crittercism/internal/bt;->b:[B

    .line 210
    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    invoke-direct {v6, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 211
    const-string v0, "internalExceptionReporting"

    const/4 v1, 0x0

    invoke-virtual {v6, v0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 212
    sget v0, Lcom/crittercism/internal/cc$a;->b:I

    sput v0, Lcom/crittercism/internal/cc;->a:I

    .line 2171
    :goto_1
    const-string v0, "needPkg"

    const/4 v1, 0x0

    invoke-virtual {v6, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-ne v0, v2, :cond_2

    .line 2185
    :try_start_1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 2186
    const-string v1, "device_name"

    const-string v2, "Android"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2187
    const-string v1, "pkg"

    iget-object v2, p0, Lcom/crittercism/internal/br;->b:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2188
    const-string v1, "app_id"

    iget-object v2, p0, Lcom/crittercism/internal/br;->a:Lcom/crittercism/internal/au;

    .line 3080
    iget-object v2, v2, Lcom/crittercism/internal/au;->e:Ljava/lang/String;

    .line 2188
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2189
    const-string v1, "hashed_device_id"

    iget-object v2, p0, Lcom/crittercism/internal/br;->a:Lcom/crittercism/internal/au;

    invoke-virtual {v2}, Lcom/crittercism/internal/au;->h()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2190
    const-string v1, "library_version"

    const-string v2, "5.8.2"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2192
    new-instance v1, Ljava/net/URL;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/crittercism/internal/br;->c:Ljava/net/URL;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/android_v2/update_package_name"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 2194
    iget-object v2, p0, Lcom/crittercism/internal/br;->a:Lcom/crittercism/internal/au;

    .line 4080
    iget-object v2, v2, Lcom/crittercism/internal/au;->e:Ljava/lang/String;

    .line 2194
    invoke-static {v1, v2, v0}, Lcom/crittercism/internal/bs;->a(Ljava/net/URL;Ljava/lang/String;Lorg/json/JSONObject;)Lcom/crittercism/internal/bs;

    move-result-object v0

    .line 2195
    invoke-virtual {v0}, Lcom/crittercism/internal/bs;->a()Lcom/crittercism/internal/bt;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6

    .line 2179
    :goto_2
    const/4 v0, 0x1

    :try_start_2
    iput-boolean v0, p0, Lcom/crittercism/internal/br;->d:Z
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    .line 5079
    :cond_2
    :try_start_3
    const-string v0, "crashConfig"

    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 5080
    sget-object v2, Lcom/crittercism/internal/ap;->g:Lcom/crittercism/internal/ap$d;

    sget-object v3, Lcom/crittercism/internal/ap;->f:Lcom/crittercism/internal/ap$a;

    sget-object v4, Lcom/crittercism/internal/ap;->e:Lcom/crittercism/internal/ap$a;

    sget-object v5, Lcom/crittercism/internal/ap;->h:Lcom/crittercism/internal/ap$b;

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/crittercism/internal/br;->a(Lorg/json/JSONObject;Lcom/crittercism/internal/ap$d;Lcom/crittercism/internal/ap$a;Lcom/crittercism/internal/ap$a;Lcom/crittercism/internal/ap$b;)V
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_5

    .line 5092
    :goto_3
    :try_start_4
    const-string v0, "ndkConfig"

    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 5093
    sget-object v2, Lcom/crittercism/internal/ap;->o:Lcom/crittercism/internal/ap$d;

    sget-object v3, Lcom/crittercism/internal/ap;->n:Lcom/crittercism/internal/ap$a;

    sget-object v4, Lcom/crittercism/internal/ap;->m:Lcom/crittercism/internal/ap$a;

    sget-object v5, Lcom/crittercism/internal/ap;->p:Lcom/crittercism/internal/ap$b;

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/crittercism/internal/br;->a(Lorg/json/JSONObject;Lcom/crittercism/internal/ap$d;Lcom/crittercism/internal/ap$a;Lcom/crittercism/internal/ap$a;Lcom/crittercism/internal/ap$b;)V
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_4

    .line 5105
    :goto_4
    :try_start_5
    const-string v0, "heConfig"

    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 5106
    sget-object v2, Lcom/crittercism/internal/ap;->k:Lcom/crittercism/internal/ap$d;

    sget-object v3, Lcom/crittercism/internal/ap;->j:Lcom/crittercism/internal/ap$a;

    sget-object v4, Lcom/crittercism/internal/ap;->i:Lcom/crittercism/internal/ap$a;

    sget-object v5, Lcom/crittercism/internal/ap;->l:Lcom/crittercism/internal/ap$b;

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/crittercism/internal/br;->a(Lorg/json/JSONObject;Lcom/crittercism/internal/ap$d;Lcom/crittercism/internal/ap$a;Lcom/crittercism/internal/ap$a;Lcom/crittercism/internal/ap$b;)V
    :try_end_5
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_5} :catch_3

    .line 5118
    :goto_5
    :try_start_6
    const-string v0, "metadataConfig"

    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 5119
    sget-object v2, Lcom/crittercism/internal/ap;->s:Lcom/crittercism/internal/ap$d;

    sget-object v3, Lcom/crittercism/internal/ap;->r:Lcom/crittercism/internal/ap$a;

    sget-object v4, Lcom/crittercism/internal/ap;->q:Lcom/crittercism/internal/ap$a;

    sget-object v5, Lcom/crittercism/internal/ap;->t:Lcom/crittercism/internal/ap$b;

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/crittercism/internal/br;->a(Lorg/json/JSONObject;Lcom/crittercism/internal/ap$d;Lcom/crittercism/internal/ap$a;Lcom/crittercism/internal/ap$a;Lcom/crittercism/internal/ap$b;)V
    :try_end_6
    .catch Lorg/json/JSONException; {:try_start_6 .. :try_end_6} :catch_2

    .line 5131
    :goto_6
    :try_start_7
    const-string v0, "apm"

    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "net"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 5132
    sget-object v2, Lcom/crittercism/internal/ap;->c:Lcom/crittercism/internal/ap$d;

    sget-object v3, Lcom/crittercism/internal/ap;->b:Lcom/crittercism/internal/ap$a;

    sget-object v4, Lcom/crittercism/internal/ap;->a:Lcom/crittercism/internal/ap$a;

    sget-object v5, Lcom/crittercism/internal/ap;->d:Lcom/crittercism/internal/ap$b;

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/crittercism/internal/br;->a(Lorg/json/JSONObject;Lcom/crittercism/internal/ap$d;Lcom/crittercism/internal/ap$a;Lcom/crittercism/internal/ap$a;Lcom/crittercism/internal/ap$b;)V
    :try_end_7
    .catch Lorg/json/JSONException; {:try_start_7 .. :try_end_7} :catch_1

    .line 223
    :goto_7
    :try_start_8
    invoke-direct {p0, v6}, Lcom/crittercism/internal/br;->a(Lorg/json/JSONObject;)V

    goto/16 :goto_0

    .line 227
    :catch_0
    move-exception v0

    goto/16 :goto_0

    .line 214
    :cond_3
    sget v0, Lcom/crittercism/internal/cc$a;->c:I

    sput v0, Lcom/crittercism/internal/cc;->a:I
    :try_end_8
    .catch Lorg/json/JSONException; {:try_start_8 .. :try_end_8} :catch_0

    goto/16 :goto_1

    :catch_1
    move-exception v0

    goto :goto_7

    :catch_2
    move-exception v0

    goto :goto_6

    :catch_3
    move-exception v0

    goto :goto_5

    :catch_4
    move-exception v0

    goto :goto_4

    :catch_5
    move-exception v0

    goto :goto_3

    :catch_6
    move-exception v0

    goto :goto_2

    .line 2200
    :catch_7
    move-exception v0

    goto :goto_2
.end method
