.class public final Lcom/crittercism/internal/bc$b;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/crittercism/internal/aw$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/crittercism/internal/bc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/crittercism/internal/aw$b",
        "<",
        "Lcom/crittercism/internal/bc;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 166
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(B)V
    .locals 0

    .prologue
    .line 166
    invoke-direct {p0}, Lcom/crittercism/internal/bc$b;-><init>()V

    return-void
.end method

.method private static b(Ljava/io/File;)Lcom/crittercism/internal/bc;
    .locals 4

    .prologue
    .line 170
    invoke-static {p0}, Lcom/crittercism/internal/cd;->b(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    .line 173
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 174
    new-instance v0, Lcom/crittercism/internal/bc;

    const/4 v2, 0x0

    invoke-direct {v0, v2}, Lcom/crittercism/internal/bc;-><init>(B)V

    .line 175
    const-string v2, "appState"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 1025
    iput-object v2, v0, Lcom/crittercism/internal/bc;->a:Lorg/json/JSONObject;

    .line 176
    const-string v2, "breadcrumbs"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 2025
    iput-object v2, v0, Lcom/crittercism/internal/bc;->b:Lorg/json/JSONArray;

    .line 177
    const-string v2, "crashDumpFileName"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 3025
    iput-object v2, v0, Lcom/crittercism/internal/bc;->c:Ljava/lang/String;

    .line 178
    const-string v2, "base64EncodedCrash"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 4025
    iput-object v2, v0, Lcom/crittercism/internal/bc;->d:Ljava/lang/String;

    .line 179
    const-string v2, "fileName"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 5025
    iput-object v2, v0, Lcom/crittercism/internal/bc;->e:Ljava/lang/String;

    .line 180
    const-string v2, "rate"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v2

    double-to-float v1, v2

    .line 6025
    iput v1, v0, Lcom/crittercism/internal/bc;->f:F
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 181
    return-object v0

    .line 182
    :catch_0
    move-exception v0

    .line 183
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
    .line 166
    invoke-static {p1}, Lcom/crittercism/internal/bc$b;->b(Ljava/io/File;)Lcom/crittercism/internal/bc;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic a(Lcom/crittercism/internal/bf;Ljava/io/OutputStream;)V
    .locals 4

    .prologue
    .line 166
    check-cast p1, Lcom/crittercism/internal/bc;

    .line 6190
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 6192
    const-string v1, "appState"

    .line 7025
    iget-object v2, p1, Lcom/crittercism/internal/bc;->a:Lorg/json/JSONObject;

    .line 6192
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 6193
    const-string v1, "breadcrumbs"

    .line 8025
    iget-object v2, p1, Lcom/crittercism/internal/bc;->b:Lorg/json/JSONArray;

    .line 6193
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 6194
    const-string v1, "crashDumpFileName"

    .line 9025
    iget-object v2, p1, Lcom/crittercism/internal/bc;->c:Ljava/lang/String;

    .line 6194
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 6195
    const-string v1, "base64EncodedCrash"

    .line 10025
    iget-object v2, p1, Lcom/crittercism/internal/bc;->d:Ljava/lang/String;

    .line 6195
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 6196
    const-string v1, "fileName"

    .line 11025
    iget-object v2, p1, Lcom/crittercism/internal/bc;->e:Ljava/lang/String;

    .line 6196
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 6197
    const-string v1, "rate"

    .line 12025
    iget v2, p1, Lcom/crittercism/internal/bc;->f:F

    .line 6197
    float-to-double v2, v2

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 6199
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    .line 6200
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/OutputStream;->write([B)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 6203
    return-void

    .line 6201
    :catch_0
    move-exception v0

    .line 6202
    new-instance v1, Ljava/io/IOException;

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method