.class public final Lcom/crittercism/internal/ar;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/crittercism/internal/bf;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/crittercism/internal/ar$a;,
        Lcom/crittercism/internal/ar$b;
    }
.end annotation


# instance fields
.field a:Ljava/lang/String;

.field b:Ljava/lang/String;

.field c:Ljava/lang/String;

.field d:Ljava/lang/String;

.field e:Ljava/lang/String;

.field f:Ljava/lang/String;

.field g:Ljava/lang/String;

.field h:I

.field i:I

.field j:Ljava/lang/String;

.field k:Ljava/lang/String;

.field l:J

.field public m:F


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/crittercism/internal/ar;->m:F

    .line 61
    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/crittercism/internal/ar;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/crittercism/internal/au;)V
    .locals 2

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/crittercism/internal/ar;->m:F

    .line 43
    sget-object v0, Lcom/crittercism/internal/be;->a:Lcom/crittercism/internal/be;

    invoke-virtual {v0}, Lcom/crittercism/internal/be;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/crittercism/internal/ar;->a:Ljava/lang/String;

    .line 1080
    iget-object v0, p1, Lcom/crittercism/internal/au;->e:Ljava/lang/String;

    .line 45
    iput-object v0, p0, Lcom/crittercism/internal/ar;->b:Ljava/lang/String;

    .line 46
    invoke-virtual {p1}, Lcom/crittercism/internal/au;->h()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/crittercism/internal/ar;->c:Ljava/lang/String;

    .line 47
    const-string v0, "5.8.2"

    iput-object v0, p0, Lcom/crittercism/internal/ar;->d:Ljava/lang/String;

    .line 1165
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 48
    iput-object v0, p0, Lcom/crittercism/internal/ar;->e:Ljava/lang/String;

    .line 1181
    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    .line 49
    iput-object v0, p0, Lcom/crittercism/internal/ar;->f:Ljava/lang/String;

    .line 50
    invoke-virtual {p1}, Lcom/crittercism/internal/au;->b()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/crittercism/internal/ar;->g:Ljava/lang/String;

    .line 51
    invoke-virtual {p1}, Lcom/crittercism/internal/au;->c()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/crittercism/internal/ar;->h:I

    .line 52
    invoke-virtual {p1}, Lcom/crittercism/internal/au;->d()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/crittercism/internal/ar;->i:I

    .line 2084
    iget-object v0, p1, Lcom/crittercism/internal/au;->a:Lcom/crittercism/internal/ak;

    .line 3040
    iget-object v0, v0, Lcom/crittercism/internal/ak;->a:Ljava/lang/String;

    .line 53
    iput-object v0, p0, Lcom/crittercism/internal/ar;->j:Ljava/lang/String;

    .line 54
    invoke-virtual {p1}, Lcom/crittercism/internal/au;->i()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/crittercism/internal/ar;->k:Ljava/lang/String;

    .line 55
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/crittercism/internal/ar;->l:J

    .line 56
    return-void
.end method


# virtual methods
.method public final a()Lorg/json/JSONObject;
    .locals 3

    .prologue
    .line 65
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "appID"

    iget-object v2, p0, Lcom/crittercism/internal/ar;->b:Ljava/lang/String;

    .line 66
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "deviceID"

    iget-object v2, p0, Lcom/crittercism/internal/ar;->c:Ljava/lang/String;

    .line 67
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "crPlatform"

    const-string v2, "android"

    .line 68
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "crVersion"

    iget-object v2, p0, Lcom/crittercism/internal/ar;->d:Ljava/lang/String;

    .line 69
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "rate"

    iget v2, p0, Lcom/crittercism/internal/ar;->m:F

    .line 70
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "deviceModel"

    iget-object v2, p0, Lcom/crittercism/internal/ar;->e:Ljava/lang/String;

    .line 71
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "osName"

    const-string v2, "android"

    .line 72
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "osVersion"

    iget-object v2, p0, Lcom/crittercism/internal/ar;->f:Ljava/lang/String;

    .line 73
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "carrier"

    iget-object v2, p0, Lcom/crittercism/internal/ar;->g:Ljava/lang/String;

    .line 74
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "mobileCountryCode"

    iget v2, p0, Lcom/crittercism/internal/ar;->h:I

    .line 75
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "mobileNetworkCode"

    iget v2, p0, Lcom/crittercism/internal/ar;->i:I

    .line 76
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "appVersion"

    iget-object v2, p0, Lcom/crittercism/internal/ar;->j:Ljava/lang/String;

    .line 77
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "locale"

    iget-object v2, p0, Lcom/crittercism/internal/ar;->k:Ljava/lang/String;

    .line 78
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 81
    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v0, 0x0

    .line 87
    if-ne p0, p1, :cond_1

    const/4 v0, 0x1

    .line 102
    .end local p1    # "o":Ljava/lang/Object;
    :cond_0
    :goto_0
    return v0

    .line 88
    .restart local p1    # "o":Ljava/lang/Object;
    :cond_1
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-ne v1, v2, :cond_0

    .line 90
    check-cast p1, Lcom/crittercism/internal/ar;

    .line 92
    .end local p1    # "o":Ljava/lang/Object;
    iget v1, p0, Lcom/crittercism/internal/ar;->h:I

    iget v2, p1, Lcom/crittercism/internal/ar;->h:I

    if-ne v1, v2, :cond_0

    .line 93
    iget v1, p0, Lcom/crittercism/internal/ar;->i:I

    iget v2, p1, Lcom/crittercism/internal/ar;->i:I

    if-ne v1, v2, :cond_0

    .line 94
    iget-object v1, p0, Lcom/crittercism/internal/ar;->b:Ljava/lang/String;

    iget-object v2, p1, Lcom/crittercism/internal/ar;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 95
    iget-object v1, p0, Lcom/crittercism/internal/ar;->c:Ljava/lang/String;

    iget-object v2, p1, Lcom/crittercism/internal/ar;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 96
    iget-object v1, p0, Lcom/crittercism/internal/ar;->d:Ljava/lang/String;

    iget-object v2, p1, Lcom/crittercism/internal/ar;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 97
    iget v1, p0, Lcom/crittercism/internal/ar;->m:F

    iget v2, p1, Lcom/crittercism/internal/ar;->m:F

    invoke-static {v1, v2}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-nez v1, :cond_0

    .line 98
    iget-object v1, p0, Lcom/crittercism/internal/ar;->e:Ljava/lang/String;

    iget-object v2, p1, Lcom/crittercism/internal/ar;->e:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 99
    iget-object v1, p0, Lcom/crittercism/internal/ar;->f:Ljava/lang/String;

    iget-object v2, p1, Lcom/crittercism/internal/ar;->f:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 100
    iget-object v1, p0, Lcom/crittercism/internal/ar;->g:Ljava/lang/String;

    iget-object v2, p1, Lcom/crittercism/internal/ar;->g:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 101
    iget-object v1, p0, Lcom/crittercism/internal/ar;->j:Ljava/lang/String;

    iget-object v2, p1, Lcom/crittercism/internal/ar;->j:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 102
    iget-object v0, p0, Lcom/crittercism/internal/ar;->k:Ljava/lang/String;

    iget-object v1, p1, Lcom/crittercism/internal/ar;->k:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public final f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Lcom/crittercism/internal/ar;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final synthetic g()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 23
    invoke-virtual {p0}, Lcom/crittercism/internal/ar;->a()Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method public final hashCode()I
    .locals 2

    .prologue
    .line 108
    iget-object v0, p0, Lcom/crittercism/internal/ar;->b:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    .line 109
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/crittercism/internal/ar;->c:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 110
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/crittercism/internal/ar;->d:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 111
    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/crittercism/internal/ar;->m:F

    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    add-int/2addr v0, v1

    .line 112
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/crittercism/internal/ar;->e:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 113
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/crittercism/internal/ar;->f:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 114
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/crittercism/internal/ar;->g:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 115
    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/crittercism/internal/ar;->h:I

    add-int/2addr v0, v1

    .line 116
    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/crittercism/internal/ar;->i:I

    add-int/2addr v0, v1

    .line 117
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/crittercism/internal/ar;->j:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 118
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/crittercism/internal/ar;->k:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 119
    return v0
.end method
