.class public final Lcom/crittercism/internal/ca$g;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/crittercism/internal/aw$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/crittercism/internal/ca;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "g"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/crittercism/internal/aw$b",
        "<",
        "Lcom/crittercism/internal/ca;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 333
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(B)V
    .locals 0

    .prologue
    .line 333
    invoke-direct {p0}, Lcom/crittercism/internal/ca$g;-><init>()V

    return-void
.end method

.method private static b(Ljava/io/File;)Lcom/crittercism/internal/ca;
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 338
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-static {p0}, Lcom/crittercism/internal/cd;->b(Ljava/io/File;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 339
    new-instance v2, Lcom/crittercism/internal/ca;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/crittercism/internal/ca;-><init>(B)V

    .line 341
    const-string v3, "name"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1045
    iput-object v3, v2, Lcom/crittercism/internal/ca;->a:Ljava/lang/String;

    .line 342
    invoke-static {}, Lcom/crittercism/internal/ca$d;->a()[I

    move-result-object v3

    const-string v4, "state"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    aget v3, v3, v4

    .line 2045
    iput v3, v2, Lcom/crittercism/internal/ca;->f:I

    .line 343
    const-string v3, "timeout"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    .line 3045
    iput-wide v4, v2, Lcom/crittercism/internal/ca;->b:J

    .line 344
    const-string v3, "value"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    .line 4045
    iput v3, v2, Lcom/crittercism/internal/ca;->c:I

    .line 345
    const-string v3, "startTime"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    .line 5045
    iput-wide v4, v2, Lcom/crittercism/internal/ca;->d:J

    .line 346
    const-string v3, "endTime"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    .line 6045
    iput-wide v4, v2, Lcom/crittercism/internal/ca;->e:J

    .line 347
    const-string v3, "sequenceNumber"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 7045
    iput-object v3, v2, Lcom/crittercism/internal/ca;->h:Ljava/lang/String;

    .line 348
    const-string v3, "rate"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v4

    double-to-float v3, v4

    .line 8045
    iput v3, v2, Lcom/crittercism/internal/ca;->j:F

    .line 349
    invoke-static {}, Lcom/crittercism/internal/ca$e;->a()[I

    move-result-object v3

    const-string v4, "type"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    aget v3, v3, v4

    .line 9045
    iput v3, v2, Lcom/crittercism/internal/ca;->g:I

    .line 351
    const-string v3, "lifeCycleTransitions"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 353
    :goto_0
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 354
    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    .line 10045
    iget-object v4, v2, Lcom/crittercism/internal/ca;->i:Ljava/util/List;

    .line 355
    new-instance v5, Lcom/crittercism/internal/ca$b;

    invoke-direct {v5, v3}, Lcom/crittercism/internal/ca$b;-><init>(Lorg/json/JSONObject;)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 353
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 359
    :catch_0
    move-exception v0

    .line 360
    new-instance v1, Ljava/io/IOException;

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 358
    :cond_0
    return-object v2
.end method


# virtual methods
.method public final synthetic a(Ljava/io/File;)Lcom/crittercism/internal/bf;
    .locals 1

    .prologue
    .line 333
    invoke-static {p1}, Lcom/crittercism/internal/ca$g;->b(Ljava/io/File;)Lcom/crittercism/internal/ca;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic a(Lcom/crittercism/internal/bf;Ljava/io/OutputStream;)V
    .locals 8

    .prologue
    .line 333
    check-cast p1, Lcom/crittercism/internal/ca;

    .line 10367
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 10368
    const-string v0, "name"

    .line 11045
    iget-object v2, p1, Lcom/crittercism/internal/ca;->a:Ljava/lang/String;

    .line 10368
    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 10369
    const-string v0, "state"

    .line 12045
    iget v2, p1, Lcom/crittercism/internal/ca;->f:I

    .line 10369
    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 10370
    const-string v0, "timeout"

    .line 13045
    iget-wide v2, p1, Lcom/crittercism/internal/ca;->b:J

    .line 10370
    invoke-virtual {v1, v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 10371
    const-string v0, "value"

    .line 14045
    iget v2, p1, Lcom/crittercism/internal/ca;->c:I

    .line 10371
    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 10372
    const-string v0, "startTime"

    .line 15045
    iget-wide v2, p1, Lcom/crittercism/internal/ca;->d:J

    .line 10372
    invoke-virtual {v1, v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 10373
    const-string v0, "endTime"

    .line 16045
    iget-wide v2, p1, Lcom/crittercism/internal/ca;->e:J

    .line 10373
    invoke-virtual {v1, v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 10374
    const-string v0, "sequenceNumber"

    .line 17045
    iget-object v2, p1, Lcom/crittercism/internal/ca;->h:Ljava/lang/String;

    .line 10374
    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 10375
    const-string v0, "rate"

    .line 18045
    iget v2, p1, Lcom/crittercism/internal/ca;->j:F

    .line 10375
    float-to-double v2, v2

    invoke-virtual {v1, v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 10376
    const-string v0, "type"

    .line 19045
    iget v2, p1, Lcom/crittercism/internal/ca;->g:I

    .line 10376
    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 10378
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 20045
    iget-object v0, p1, Lcom/crittercism/internal/ca;->i:Ljava/util/List;

    .line 10379
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/crittercism/internal/ca$b;

    .line 20495
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    const-string v5, "type"

    iget v6, v0, Lcom/crittercism/internal/ca$b;->a:I

    .line 20496
    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v4

    const-string v5, "time"

    iget-wide v6, v0, Lcom/crittercism/internal/ca$b;->b:J

    .line 20497
    invoke-virtual {v4, v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    move-result-object v0

    .line 10380
    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 10386
    :catch_0
    move-exception v0

    .line 10387
    new-instance v1, Ljava/io/IOException;

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 10383
    :cond_0
    :try_start_1
    const-string v0, "lifeCycleTransitions"

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 10385
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UTF8"

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/OutputStream;->write([B)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    .line 10388
    return-void
.end method
