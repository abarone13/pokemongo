.class public final Lcom/crittercism/internal/aq$a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/crittercism/internal/aw$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/crittercism/internal/aq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/crittercism/internal/aw$b",
        "<",
        "Lcom/crittercism/internal/aq;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 330
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(B)V
    .locals 0

    .prologue
    .line 330
    invoke-direct {p0}, Lcom/crittercism/internal/aq$a;-><init>()V

    return-void
.end method

.method private static b(Ljava/io/File;)Lcom/crittercism/internal/aq;
    .locals 4

    .prologue
    .line 334
    invoke-static {p0}, Lcom/crittercism/internal/cd;->b(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    .line 337
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 338
    new-instance v0, Lcom/crittercism/internal/aq;

    const/4 v2, 0x0

    invoke-direct {v0, v2}, Lcom/crittercism/internal/aq;-><init>(B)V

    .line 340
    const-string v2, "currentThreadID"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 1031
    iput-wide v2, v0, Lcom/crittercism/internal/aq;->a:J

    .line 341
    const-string v2, "breadcrumbs"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 2031
    iput-object v2, v0, Lcom/crittercism/internal/aq;->b:Lorg/json/JSONArray;

    .line 342
    const-string v2, "txns"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 3031
    iput-object v2, v0, Lcom/crittercism/internal/aq;->c:Lorg/json/JSONArray;

    .line 343
    const-string v2, "exceptionName"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 4031
    iput-object v2, v0, Lcom/crittercism/internal/aq;->d:Ljava/lang/String;

    .line 344
    const-string v2, "exceptionReason"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 5031
    iput-object v2, v0, Lcom/crittercism/internal/aq;->e:Ljava/lang/String;

    .line 345
    const-string v2, "stacktrace"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 6031
    iput-object v2, v0, Lcom/crittercism/internal/aq;->f:Lorg/json/JSONArray;

    .line 346
    const-string v2, "threads"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 7031
    iput-object v2, v0, Lcom/crittercism/internal/aq;->g:Lorg/json/JSONArray;

    .line 347
    const-string v2, "ts"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 8031
    iput-object v2, v0, Lcom/crittercism/internal/aq;->h:Ljava/lang/String;

    .line 348
    const-string v2, "rate"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v2

    double-to-float v2, v2

    .line 9031
    iput v2, v0, Lcom/crittercism/internal/aq;->m:F

    .line 349
    const-string v2, "appState"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 10031
    iput-object v2, v0, Lcom/crittercism/internal/aq;->i:Lorg/json/JSONObject;

    .line 350
    const-string v2, "suspectLineIndex"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 11031
    iput v2, v0, Lcom/crittercism/internal/aq;->j:I

    .line 351
    const-string v2, "isPluginException"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    .line 12031
    iput-boolean v2, v0, Lcom/crittercism/internal/aq;->k:Z

    .line 352
    const-string v2, "fileName"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 13031
    iput-object v1, v0, Lcom/crittercism/internal/aq;->l:Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 354
    return-object v0

    .line 355
    :catch_0
    move-exception v0

    .line 356
    new-instance v1, Ljava/io/IOException;

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public final synthetic a(Ljava/io/File;)Lcom/crittercism/internal/bf;
    .locals 1

    .prologue
    .line 330
    invoke-static {p1}, Lcom/crittercism/internal/aq$a;->b(Ljava/io/File;)Lcom/crittercism/internal/aq;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic a(Lcom/crittercism/internal/bf;Ljava/io/OutputStream;)V
    .locals 4

    .prologue
    .line 330
    check-cast p1, Lcom/crittercism/internal/aq;

    .line 13362
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 13365
    :try_start_0
    const-string v1, "currentThreadID"

    .line 14031
    iget-wide v2, p1, Lcom/crittercism/internal/aq;->a:J

    .line 13365
    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 13366
    const-string v1, "breadcrumbs"

    .line 15031
    iget-object v2, p1, Lcom/crittercism/internal/aq;->b:Lorg/json/JSONArray;

    .line 13366
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 13367
    const-string v1, "txns"

    .line 16031
    iget-object v2, p1, Lcom/crittercism/internal/aq;->c:Lorg/json/JSONArray;

    .line 13367
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 13368
    const-string v1, "exceptionName"

    .line 17031
    iget-object v2, p1, Lcom/crittercism/internal/aq;->d:Ljava/lang/String;

    .line 13368
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 13369
    const-string v1, "exceptionReason"

    .line 18031
    iget-object v2, p1, Lcom/crittercism/internal/aq;->e:Ljava/lang/String;

    .line 13369
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 13370
    const-string v1, "stacktrace"

    .line 19031
    iget-object v2, p1, Lcom/crittercism/internal/aq;->f:Lorg/json/JSONArray;

    .line 13370
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 13371
    const-string v1, "threads"

    .line 20031
    iget-object v2, p1, Lcom/crittercism/internal/aq;->g:Lorg/json/JSONArray;

    .line 13371
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 13372
    const-string v1, "ts"

    .line 21031
    iget-object v2, p1, Lcom/crittercism/internal/aq;->h:Ljava/lang/String;

    .line 13372
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 13373
    const-string v1, "rate"

    .line 22031
    iget v2, p1, Lcom/crittercism/internal/aq;->m:F

    .line 13373
    float-to-double v2, v2

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 13374
    const-string v1, "appState"

    .line 23031
    iget-object v2, p1, Lcom/crittercism/internal/aq;->i:Lorg/json/JSONObject;

    .line 13374
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 13375
    const-string v1, "suspectLineIndex"

    .line 24031
    iget v2, p1, Lcom/crittercism/internal/aq;->j:I

    .line 13375
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 13376
    const-string v1, "isPluginException"

    .line 25031
    iget-boolean v2, p1, Lcom/crittercism/internal/aq;->k:Z

    .line 13376
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 13377
    const-string v1, "fileName"

    .line 26031
    iget-object v2, p1, Lcom/crittercism/internal/aq;->l:Ljava/lang/String;

    .line 13377
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 13383
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    .line 13384
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/OutputStream;->write([B)V

    .line 330
    return-void

    .line 13378
    :catch_0
    move-exception v0

    .line 13380
    new-instance v1, Ljava/io/IOException;

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method