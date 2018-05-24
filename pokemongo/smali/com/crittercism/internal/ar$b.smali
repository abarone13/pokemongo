.class public final Lcom/crittercism/internal/ar$b;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/crittercism/internal/aw$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/crittercism/internal/ar;
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
        "Lcom/crittercism/internal/ar;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 139
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(B)V
    .locals 0

    .prologue
    .line 139
    invoke-direct {p0}, Lcom/crittercism/internal/ar$b;-><init>()V

    return-void
.end method

.method private static b(Ljava/io/File;)Lcom/crittercism/internal/ar;
    .locals 4

    .prologue
    .line 144
    :try_start_0
    invoke-static {p0}, Lcom/crittercism/internal/cd;->b(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    .line 145
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 147
    new-instance v0, Lcom/crittercism/internal/ar;

    const/4 v2, 0x0

    invoke-direct {v0, v2}, Lcom/crittercism/internal/ar;-><init>(B)V

    .line 148
    const-string v2, "fileName"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1023
    iput-object v2, v0, Lcom/crittercism/internal/ar;->a:Ljava/lang/String;

    .line 149
    const-string v2, "appId"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2023
    iput-object v2, v0, Lcom/crittercism/internal/ar;->b:Ljava/lang/String;

    .line 150
    const-string v2, "deviceId"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 3023
    iput-object v2, v0, Lcom/crittercism/internal/ar;->c:Ljava/lang/String;

    .line 151
    const-string v2, "sdkVersion"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 4023
    iput-object v2, v0, Lcom/crittercism/internal/ar;->d:Ljava/lang/String;

    .line 152
    const-string v2, "rate"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v2

    double-to-float v2, v2

    .line 5023
    iput v2, v0, Lcom/crittercism/internal/ar;->m:F

    .line 153
    const-string v2, "model"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 6023
    iput-object v2, v0, Lcom/crittercism/internal/ar;->e:Ljava/lang/String;

    .line 154
    const-string v2, "osVersion"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 7023
    iput-object v2, v0, Lcom/crittercism/internal/ar;->f:Ljava/lang/String;

    .line 155
    const-string v2, "carrier"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 8023
    iput-object v2, v0, Lcom/crittercism/internal/ar;->g:Ljava/lang/String;

    .line 156
    const-string v2, "mobileCountryCode"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 9023
    iput v2, v0, Lcom/crittercism/internal/ar;->h:I

    .line 157
    const-string v2, "mobileNetworkCode"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 10023
    iput v2, v0, Lcom/crittercism/internal/ar;->i:I

    .line 158
    const-string v2, "appVersion"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 11023
    iput-object v2, v0, Lcom/crittercism/internal/ar;->j:Ljava/lang/String;

    .line 159
    const-string v2, "locale"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 12023
    iput-object v2, v0, Lcom/crittercism/internal/ar;->k:Ljava/lang/String;

    .line 160
    const-string v2, "timestamp"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 13023
    iput-wide v2, v0, Lcom/crittercism/internal/ar;->l:J
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 162
    return-object v0

    .line 163
    :catch_0
    move-exception v0

    .line 164
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
    .line 139
    invoke-static {p1}, Lcom/crittercism/internal/ar$b;->b(Ljava/io/File;)Lcom/crittercism/internal/ar;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic a(Lcom/crittercism/internal/bf;Ljava/io/OutputStream;)V
    .locals 4

    .prologue
    .line 139
    check-cast p1, Lcom/crittercism/internal/ar;

    .line 13171
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "fileName"

    .line 14023
    iget-object v2, p1, Lcom/crittercism/internal/ar;->a:Ljava/lang/String;

    .line 13172
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "appId"

    .line 15023
    iget-object v2, p1, Lcom/crittercism/internal/ar;->b:Ljava/lang/String;

    .line 13173
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "deviceId"

    .line 16023
    iget-object v2, p1, Lcom/crittercism/internal/ar;->c:Ljava/lang/String;

    .line 13174
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "sdkVersion"

    .line 17023
    iget-object v2, p1, Lcom/crittercism/internal/ar;->d:Ljava/lang/String;

    .line 13175
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "rate"

    .line 18023
    iget v2, p1, Lcom/crittercism/internal/ar;->m:F

    .line 13176
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "model"

    .line 19023
    iget-object v2, p1, Lcom/crittercism/internal/ar;->e:Ljava/lang/String;

    .line 13177
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "osVersion"

    .line 20023
    iget-object v2, p1, Lcom/crittercism/internal/ar;->f:Ljava/lang/String;

    .line 13178
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "carrier"

    .line 21023
    iget-object v2, p1, Lcom/crittercism/internal/ar;->g:Ljava/lang/String;

    .line 13179
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "mobileCountryCode"

    .line 22023
    iget v2, p1, Lcom/crittercism/internal/ar;->h:I

    .line 13180
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "mobileNetworkCode"

    .line 23023
    iget v2, p1, Lcom/crittercism/internal/ar;->i:I

    .line 13181
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "appVersion"

    .line 24023
    iget-object v2, p1, Lcom/crittercism/internal/ar;->j:Ljava/lang/String;

    .line 13182
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "locale"

    .line 25023
    iget-object v2, p1, Lcom/crittercism/internal/ar;->k:Ljava/lang/String;

    .line 13183
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "timestamp"

    .line 26023
    iget-wide v2, p1, Lcom/crittercism/internal/ar;->l:J

    .line 13184
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    .line 13186
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UTF8"

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/OutputStream;->write([B)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 13189
    return-void

    .line 13187
    :catch_0
    move-exception v0

    .line 13188
    new-instance v1, Ljava/io/IOException;

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
