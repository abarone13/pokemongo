.class public final Lcom/crittercism/internal/b$a;
.super Lcom/crittercism/internal/bv;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/crittercism/internal/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private c:Lcom/crittercism/internal/au;


# direct methods
.method public constructor <init>(Lcom/crittercism/internal/au;)V
    .locals 2

    .prologue
    .line 534
    .line 1080
    iget-object v0, p1, Lcom/crittercism/internal/au;->e:Ljava/lang/String;

    .line 534
    invoke-virtual {p1}, Lcom/crittercism/internal/au;->h()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/crittercism/internal/bv;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 535
    iput-object p1, p0, Lcom/crittercism/internal/b$a;->c:Lcom/crittercism/internal/au;

    .line 536
    return-void
.end method


# virtual methods
.method public final a(Lcom/crittercism/internal/as;Ljava/util/List;)Lcom/crittercism/internal/bs;
    .locals 6
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
    .line 540
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 541
    new-instance v0, Ljava/io/IOException;

    const-string v1, "No events provided"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 544
    :cond_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 545
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 548
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 549
    iget-object v3, p0, Lcom/crittercism/internal/b$a;->c:Lcom/crittercism/internal/au;

    .line 2080
    iget-object v3, v3, Lcom/crittercism/internal/au;->e:Ljava/lang/String;

    .line 549
    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 550
    iget-object v3, p0, Lcom/crittercism/internal/b$a;->c:Lcom/crittercism/internal/au;

    .line 2084
    iget-object v3, v3, Lcom/crittercism/internal/au;->a:Lcom/crittercism/internal/ak;

    .line 3040
    iget-object v3, v3, Lcom/crittercism/internal/ak;->a:Ljava/lang/String;

    .line 550
    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 551
    iget-object v3, p0, Lcom/crittercism/internal/b$a;->c:Lcom/crittercism/internal/au;

    invoke-virtual {v3}, Lcom/crittercism/internal/au;->h()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 552
    const-string v3, "5.8.2"

    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 553
    iget-object v3, p0, Lcom/crittercism/internal/b$a;->c:Lcom/crittercism/internal/au;

    .line 3173
    iget-object v3, v3, Lcom/crittercism/internal/au;->f:Lcom/crittercism/internal/bz;

    .line 4030
    iget-object v3, v3, Lcom/crittercism/internal/bz;->a:Landroid/content/SharedPreferences;

    const-string v4, "sessionIDSetting"

    const/4 v5, 0x0

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 553
    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    .line 554
    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 557
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 558
    sget-object v3, Lcom/crittercism/internal/cf;->a:Lcom/crittercism/internal/cf;

    invoke-virtual {v3}, Lcom/crittercism/internal/cf;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 559
    iget-object v3, p0, Lcom/crittercism/internal/b$a;->c:Lcom/crittercism/internal/au;

    invoke-virtual {v3}, Lcom/crittercism/internal/au;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 4165
    sget-object v3, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 560
    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 561
    const-string v3, "Android"

    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 4181
    sget-object v3, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    .line 562
    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 563
    iget-object v3, p0, Lcom/crittercism/internal/b$a;->c:Lcom/crittercism/internal/au;

    invoke-virtual {v3}, Lcom/crittercism/internal/au;->c()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 564
    iget-object v3, p0, Lcom/crittercism/internal/b$a;->c:Lcom/crittercism/internal/au;

    invoke-virtual {v3}, Lcom/crittercism/internal/au;->d()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 565
    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 568
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    .line 569
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/crittercism/internal/bf;

    .line 570
    check-cast v0, Lcom/crittercism/internal/b;

    .line 571
    invoke-virtual {v0}, Lcom/crittercism/internal/b;->e()Lorg/json/JSONArray;

    move-result-object v0

    .line 572
    invoke-virtual {v3, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    .line 574
    :cond_1
    invoke-virtual {v2, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 578
    :try_start_0
    const-string v0, "d"

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 583
    new-instance v0, Ljava/net/URL;

    .line 5099
    iget-object v2, p1, Lcom/crittercism/internal/as;->a:Ljava/net/URL;

    .line 583
    const-string v3, "/api/apm/network"

    invoke-direct {v0, v2, v3}, Ljava/net/URL;-><init>(Ljava/net/URL;Ljava/lang/String;)V

    .line 584
    iget-object v2, p0, Lcom/crittercism/internal/b$a;->a:Ljava/lang/String;

    invoke-static {v0, v2, v1}, Lcom/crittercism/internal/bs;->a(Ljava/net/URL;Ljava/lang/String;Lorg/json/JSONObject;)Lcom/crittercism/internal/bs;

    move-result-object v0

    return-object v0

    .line 579
    :catch_0
    move-exception v0

    .line 580
    new-instance v1, Ljava/io/IOException;

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
