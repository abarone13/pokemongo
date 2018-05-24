.class public final Lcom/crittercism/internal/ca;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/crittercism/internal/bf;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/crittercism/internal/ca$b;,
        Lcom/crittercism/internal/ca$f;,
        Lcom/crittercism/internal/ca$g;,
        Lcom/crittercism/internal/ca$a;,
        Lcom/crittercism/internal/ca$c;,
        Lcom/crittercism/internal/ca$e;,
        Lcom/crittercism/internal/ca$d;
    }
.end annotation


# instance fields
.field a:Ljava/lang/String;

.field b:J

.field public c:I

.field d:J

.field e:J

.field f:I

.field g:I

.field h:Ljava/lang/String;

.field i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/crittercism/internal/ca$b;",
            ">;"
        }
    .end annotation
.end field

.field j:F


# direct methods
.method private constructor <init>()V
    .locals 4

    .prologue
    const-wide/16 v2, -0x1

    .line 143
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    iput-wide v2, p0, Lcom/crittercism/internal/ca;->b:J

    .line 80
    const/4 v0, -0x1

    iput v0, p0, Lcom/crittercism/internal/ca;->c:I

    .line 83
    iput-wide v2, p0, Lcom/crittercism/internal/ca;->e:J

    .line 85
    sget v0, Lcom/crittercism/internal/ca$d;->b:I

    iput v0, p0, Lcom/crittercism/internal/ca;->f:I

    .line 87
    sget v0, Lcom/crittercism/internal/ca$e;->a:I

    iput v0, p0, Lcom/crittercism/internal/ca;->g:I

    .line 89
    sget-object v0, Lcom/crittercism/internal/be;->a:Lcom/crittercism/internal/be;

    invoke-virtual {v0}, Lcom/crittercism/internal/be;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/crittercism/internal/ca;->h:Ljava/lang/String;

    .line 91
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/crittercism/internal/ca;->i:Ljava/util/List;

    .line 93
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/crittercism/internal/ca;->j:F

    .line 145
    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/crittercism/internal/ca;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;JIJI)V
    .locals 4

    .prologue
    const-wide/16 v2, -0x1

    const/16 v1, 0xff

    .line 135
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    iput-wide v2, p0, Lcom/crittercism/internal/ca;->b:J

    .line 80
    const/4 v0, -0x1

    iput v0, p0, Lcom/crittercism/internal/ca;->c:I

    .line 83
    iput-wide v2, p0, Lcom/crittercism/internal/ca;->e:J

    .line 85
    sget v0, Lcom/crittercism/internal/ca$d;->b:I

    iput v0, p0, Lcom/crittercism/internal/ca;->f:I

    .line 87
    sget v0, Lcom/crittercism/internal/ca$e;->a:I

    iput v0, p0, Lcom/crittercism/internal/ca;->g:I

    .line 89
    sget-object v0, Lcom/crittercism/internal/be;->a:Lcom/crittercism/internal/be;

    invoke-virtual {v0}, Lcom/crittercism/internal/be;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/crittercism/internal/ca;->h:Ljava/lang/String;

    .line 91
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/crittercism/internal/ca;->i:Ljava/util/List;

    .line 93
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/crittercism/internal/ca;->j:F

    .line 1281
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v1, :cond_0

    .line 1282
    const/4 v0, 0x0

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 1285
    :cond_0
    iput-object p1, p0, Lcom/crittercism/internal/ca;->a:Ljava/lang/String;

    .line 137
    iput p4, p0, Lcom/crittercism/internal/ca;->c:I

    .line 138
    iput-wide p2, p0, Lcom/crittercism/internal/ca;->d:J

    .line 139
    iput-wide p5, p0, Lcom/crittercism/internal/ca;->b:J

    .line 140
    iput p7, p0, Lcom/crittercism/internal/ca;->g:I

    .line 141
    return-void
.end method


# virtual methods
.method public final a()J
    .locals 14

    .prologue
    const-wide/16 v6, 0x0

    .line 185
    iget-wide v0, p0, Lcom/crittercism/internal/ca;->e:J

    .line 187
    iget-wide v2, p0, Lcom/crittercism/internal/ca;->e:J

    cmp-long v2, v2, v6

    if-gez v2, :cond_b

    .line 188
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    move-wide v2, v0

    .line 2168
    :goto_0
    iget-object v0, p0, Lcom/crittercism/internal/ca;->i:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 2170
    iget-object v0, p0, Lcom/crittercism/internal/ca;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 2171
    :cond_0
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2172
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/crittercism/internal/ca$b;

    .line 2173
    iget-wide v4, v0, Lcom/crittercism/internal/ca$b;->b:J

    iget-wide v8, p0, Lcom/crittercism/internal/ca;->d:J

    cmp-long v4, v4, v8

    if-gez v4, :cond_1

    .line 2174
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    .line 2175
    :cond_1
    iget-wide v4, v0, Lcom/crittercism/internal/ca$b;->b:J

    cmp-long v0, v4, v2

    if-lez v0, :cond_0

    .line 2176
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    .line 193
    :cond_2
    iget v0, p0, Lcom/crittercism/internal/ca;->f:I

    sget v1, Lcom/crittercism/internal/ca$d;->f:I

    if-ne v0, v1, :cond_4

    .line 194
    iget-wide v6, p0, Lcom/crittercism/internal/ca;->b:J

    .line 231
    :cond_3
    :goto_2
    return-wide v6

    .line 195
    :cond_4
    iget v0, p0, Lcom/crittercism/internal/ca;->g:I

    sget v1, Lcom/crittercism/internal/ca$e;->c:I

    if-eq v0, v1, :cond_5

    iget-object v0, p0, Lcom/crittercism/internal/ca;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_6

    .line 196
    :cond_5
    iget-wide v0, p0, Lcom/crittercism/internal/ca;->d:J

    sub-long v6, v2, v0

    goto :goto_2

    .line 201
    :cond_6
    sget v1, Lcom/crittercism/internal/ca$c;->b:I

    .line 202
    iget-object v0, p0, Lcom/crittercism/internal/ca;->i:Ljava/util/List;

    const/4 v4, 0x0

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/crittercism/internal/ca$b;

    iget v0, v0, Lcom/crittercism/internal/ca$b;->a:I

    sget v4, Lcom/crittercism/internal/ca$c;->b:I

    if-ne v0, v4, :cond_a

    .line 203
    sget v0, Lcom/crittercism/internal/ca$c;->a:I

    .line 208
    :goto_3
    iget-wide v4, p0, Lcom/crittercism/internal/ca;->d:J

    .line 210
    iget-object v1, p0, Lcom/crittercism/internal/ca;->i:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    move v1, v0

    :cond_7
    :goto_4
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/crittercism/internal/ca$b;

    .line 211
    iget-wide v10, v0, Lcom/crittercism/internal/ca$b;->b:J

    iget-wide v12, p0, Lcom/crittercism/internal/ca;->d:J

    cmp-long v9, v10, v12

    if-ltz v9, :cond_7

    .line 215
    iget-wide v10, v0, Lcom/crittercism/internal/ca$b;->b:J

    cmp-long v9, v10, v2

    if-gtz v9, :cond_9

    .line 219
    sget v9, Lcom/crittercism/internal/ca$c;->b:I

    if-ne v1, v9, :cond_8

    .line 220
    iget-wide v10, v0, Lcom/crittercism/internal/ca$b;->b:J

    sub-long v4, v10, v4

    add-long/2addr v6, v4

    .line 223
    :cond_8
    iget-wide v4, v0, Lcom/crittercism/internal/ca$b;->b:J

    .line 224
    iget v0, v0, Lcom/crittercism/internal/ca$b;->a:I

    move v1, v0

    .line 225
    goto :goto_4

    .line 227
    :cond_9
    sget v0, Lcom/crittercism/internal/ca$c;->b:I

    if-ne v1, v0, :cond_3

    .line 228
    sub-long v0, v2, v4

    add-long/2addr v6, v0

    goto :goto_2

    :cond_a
    move v0, v1

    goto :goto_3

    :cond_b
    move-wide v2, v0

    goto/16 :goto_0
.end method

.method public final a(IJ)V
    .locals 4

    .prologue
    .line 148
    iget v0, p0, Lcom/crittercism/internal/ca;->f:I

    sget v1, Lcom/crittercism/internal/ca$d;->b:I

    if-eq v0, v1, :cond_0

    .line 162
    :goto_0
    return-void

    .line 152
    :cond_0
    iput-wide p2, p0, Lcom/crittercism/internal/ca;->e:J

    .line 154
    invoke-virtual {p0}, Lcom/crittercism/internal/ca;->a()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/crittercism/internal/ca;->b:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    .line 158
    sget v0, Lcom/crittercism/internal/ca$d;->f:I

    iput v0, p0, Lcom/crittercism/internal/ca;->f:I

    goto :goto_0

    .line 160
    :cond_1
    iput p1, p0, Lcom/crittercism/internal/ca;->f:I

    goto :goto_0
.end method

.method public final b()Lorg/json/JSONArray;
    .locals 8

    .prologue
    const-wide v6, 0x408f400000000000L    # 1000.0

    .line 239
    const/4 v0, 0x0

    .line 242
    :try_start_0
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    iget-object v2, p0, Lcom/crittercism/internal/ca;->a:Ljava/lang/String;

    .line 243
    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    move-result-object v1

    iget v2, p0, Lcom/crittercism/internal/ca;->f:I

    .line 244
    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    move-result-object v1

    iget-wide v2, p0, Lcom/crittercism/internal/ca;->b:J

    long-to-double v2, v2

    div-double/2addr v2, v6

    .line 245
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONArray;->put(D)Lorg/json/JSONArray;

    move-result-object v2

    iget v1, p0, Lcom/crittercism/internal/ca;->c:I

    const/4 v3, -0x1

    if-ne v1, v3, :cond_0

    sget-object v1, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    .line 246
    :goto_0
    invoke-virtual {v2, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    move-result-object v1

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 247
    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    move-result-object v1

    sget-object v2, Lcom/crittercism/internal/cf;->a:Lcom/crittercism/internal/cf;

    new-instance v3, Ljava/util/Date;

    iget-wide v4, p0, Lcom/crittercism/internal/ca;->d:J

    invoke-direct {v3, v4, v5}, Ljava/util/Date;-><init>(J)V

    .line 248
    invoke-virtual {v2, v3}, Lcom/crittercism/internal/cf;->a(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    move-result-object v1

    sget-object v2, Lcom/crittercism/internal/cf;->a:Lcom/crittercism/internal/cf;

    new-instance v3, Ljava/util/Date;

    iget-wide v4, p0, Lcom/crittercism/internal/ca;->e:J

    invoke-direct {v3, v4, v5}, Ljava/util/Date;-><init>(J)V

    .line 249
    invoke-virtual {v2, v3}, Lcom/crittercism/internal/cf;->a(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    move-result-object v0

    .line 251
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xe

    if-lt v1, v2, :cond_1

    .line 252
    invoke-virtual {p0}, Lcom/crittercism/internal/ca;->a()J

    move-result-wide v2

    long-to-double v2, v2

    div-double/2addr v2, v6

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONArray;->put(D)Lorg/json/JSONArray;

    .line 260
    :goto_1
    return-object v0

    .line 245
    :cond_0
    iget v1, p0, Lcom/crittercism/internal/ca;->c:I

    .line 246
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_0

    .line 254
    :cond_1
    sget-object v1, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    goto :goto_1
.end method

.method public final f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 314
    iget-object v0, p0, Lcom/crittercism/internal/ca;->h:Ljava/lang/String;

    return-object v0
.end method

.method public final synthetic g()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 45
    invoke-virtual {p0}, Lcom/crittercism/internal/ca;->b()Lorg/json/JSONArray;

    move-result-object v0

    return-object v0
.end method
