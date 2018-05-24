.class public final Lcom/crittercism/internal/bs;
.super Ljava/lang/Object;


# instance fields
.field private final a:Ljava/net/URL;

.field private final b:Ljava/lang/String;

.field private final c:[B

.field private final d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/net/URL;[BLjava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/crittercism/internal/bs;->b:Ljava/lang/String;

    .line 35
    iput-object p2, p0, Lcom/crittercism/internal/bs;->a:Ljava/net/URL;

    .line 36
    iput-object p3, p0, Lcom/crittercism/internal/bs;->c:[B

    .line 37
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/crittercism/internal/bs;->d:Ljava/util/Map;

    .line 39
    iget-object v0, p0, Lcom/crittercism/internal/bs;->d:Ljava/util/Map;

    const-string v1, "Content-type"

    invoke-interface {v0, v1, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    iget-object v0, p0, Lcom/crittercism/internal/bs;->d:Ljava/util/Map;

    const-string v1, "CRPlatform"

    const-string v2, "android"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    iget-object v0, p0, Lcom/crittercism/internal/bs;->d:Ljava/util/Map;

    const-string v1, "CRVersion"

    const-string v2, "5.8.2"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    iget-object v0, p0, Lcom/crittercism/internal/bs;->d:Ljava/util/Map;

    const-string v1, "CRAppId"

    invoke-interface {v0, v1, p5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    return-void
.end method

.method public static a(Ljava/net/URL;Ljava/lang/String;Lorg/json/JSONObject;)Lcom/crittercism/internal/bs;
    .locals 6

    .prologue
    .line 46
    new-instance v0, Lcom/crittercism/internal/bs;

    const-string v1, "POST"

    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "UTF8"

    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    const-string v4, "application/json"

    move-object v2, p0

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/crittercism/internal/bs;-><init>(Ljava/lang/String;Ljava/net/URL;[BLjava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public final a()Lcom/crittercism/internal/bt;
    .locals 8

    .prologue
    const/4 v4, 0x0

    .line 107
    .line 110
    invoke-static {}, Lcom/crittercism/internal/cc;->a()V

    .line 1070
    :try_start_0
    iget-object v1, p0, Lcom/crittercism/internal/bs;->a:Ljava/net/URL;

    invoke-virtual {v1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v1

    check-cast v1, Ljava/net/HttpURLConnection;

    .line 1072
    iget-object v2, p0, Lcom/crittercism/internal/bs;->d:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 1073
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v3, v2}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 126
    :catch_0
    move-exception v1

    move-object v2, v1

    move-object v3, v4

    .line 127
    :goto_1
    :try_start_1
    new-instance v1, Lcom/crittercism/internal/bt;

    invoke-direct {v1, v2}, Lcom/crittercism/internal/bt;-><init>(Ljava/lang/Exception;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 129
    if-eqz v3, :cond_0

    .line 130
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 134
    :cond_0
    :goto_2
    invoke-static {}, Lcom/crittercism/internal/cc;->b()V

    .line 136
    return-object v1

    .line 1076
    :cond_1
    const/16 v2, 0x9c4

    :try_start_2
    invoke-virtual {v1, v2}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 1077
    const/16 v2, 0x9c4

    invoke-virtual {v1, v2}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 1078
    iget-object v2, p0, Lcom/crittercism/internal/bs;->b:Ljava/lang/String;

    const-string v3, "POST"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 1079
    iget-object v2, p0, Lcom/crittercism/internal/bs;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 1090
    instance-of v2, v1, Ljavax/net/ssl/HttpsURLConnection;

    if-eqz v2, :cond_3

    .line 1091
    move-object v0, v1

    check-cast v0, Ljavax/net/ssl/HttpsURLConnection;

    move-object v2, v0

    .line 1092
    const-string v3, "TLS"

    invoke-static {v3}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v3

    .line 1093
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v3, v5, v6, v7}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    .line 1095
    invoke-virtual {v3}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v3

    .line 1096
    instance-of v5, v3, Lcom/crittercism/internal/k;

    if-eqz v5, :cond_2

    .line 1097
    check-cast v3, Lcom/crittercism/internal/k;

    invoke-virtual {v3}, Lcom/crittercism/internal/k;->a()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v3

    .line 1100
    :cond_2
    invoke-virtual {v2, v3}, Ljavax/net/ssl/HttpsURLConnection;->setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 114
    :cond_3
    :try_start_3
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v2

    iget-object v3, p0, Lcom/crittercism/internal/bs;->c:[B

    invoke-virtual {v2, v3}, Ljava/io/OutputStream;->write([B)V

    .line 116
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v4

    .line 119
    const/16 v2, 0xc8

    if-lt v4, v2, :cond_4

    const/16 v2, 0x12c

    if-ge v4, v2, :cond_4

    .line 120
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    invoke-static {v2}, Lcom/crittercism/internal/cd;->a(Ljava/io/InputStream;)[B

    move-result-object v2

    move-object v3, v2

    .line 125
    :goto_3
    new-instance v2, Lcom/crittercism/internal/bt;

    invoke-direct {v2, v4, v3}, Lcom/crittercism/internal/bt;-><init>(I[B)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 129
    if-eqz v1, :cond_6

    .line 130
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    move-object v1, v2

    goto :goto_2

    .line 122
    :cond_4
    :try_start_4
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object v2

    invoke-static {v2}, Lcom/crittercism/internal/cd;->a(Ljava/io/InputStream;)[B
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-result-object v2

    move-object v3, v2

    goto :goto_3

    .line 129
    :catchall_0
    move-exception v1

    :goto_4
    if-eqz v4, :cond_5

    .line 130
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_5
    throw v1

    .line 129
    :catchall_1
    move-exception v2

    move-object v4, v1

    move-object v1, v2

    goto :goto_4

    :catchall_2
    move-exception v1

    move-object v4, v3

    goto :goto_4

    .line 126
    :catch_1
    move-exception v2

    move-object v3, v1

    goto/16 :goto_1

    :cond_6
    move-object v1, v2

    goto/16 :goto_2
.end method
