.class public final Lcom/crittercism/internal/bw;
.super Ljava/lang/Object;


# instance fields
.field private a:Landroid/content/SharedPreferences;

.field private b:Landroid/content/SharedPreferences;

.field private c:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    if-nez p1, :cond_0

    .line 62
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "context was null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 65
    :cond_0
    iput-object p1, p0, Lcom/crittercism/internal/bw;->c:Landroid/content/Context;

    .line 66
    const-string v0, "com.crittercism.usersettings"

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/crittercism/internal/bw;->a:Landroid/content/SharedPreferences;

    .line 67
    const-string v0, "com.crittercism.prefs"

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/crittercism/internal/bw;->b:Landroid/content/SharedPreferences;

    .line 69
    iget-object v0, p0, Lcom/crittercism/internal/bw;->a:Landroid/content/SharedPreferences;

    if-nez v0, :cond_1

    .line 70
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "prefs were null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 73
    :cond_1
    iget-object v0, p0, Lcom/crittercism/internal/bw;->b:Landroid/content/SharedPreferences;

    if-nez v0, :cond_2

    .line 74
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "legacy prefs were null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 76
    :cond_2
    return-void
.end method

.method private a(Ljava/lang/String;)Z
    .locals 2

    .prologue
    .line 134
    iget-object v0, p0, Lcom/crittercism/internal/bw;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 135
    const-string v1, "hashedDeviceID"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 136
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v0

    return v0
.end method

.method private static b()Ljava/lang/String;
    .locals 2

    .prologue
    .line 79
    const/4 v0, 0x0

    .line 1096
    :try_start_0
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/ThreadDeath; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 88
    :goto_0
    return-object v0

    .line 83
    :catch_0
    move-exception v0

    throw v0

    .line 85
    :catch_1
    move-exception v1

    invoke-static {v1}, Lcom/crittercism/internal/cc;->b(Ljava/lang/Throwable;)V

    goto :goto_0
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 111
    iget-object v0, p0, Lcom/crittercism/internal/bw;->a:Landroid/content/SharedPreferences;

    const-string v1, "hashedDeviceID"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 113
    if-nez v0, :cond_0

    .line 114
    iget-object v0, p0, Lcom/crittercism/internal/bw;->b:Landroid/content/SharedPreferences;

    const-string v1, "com.crittercism.prefs.did"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 116
    if-eqz v0, :cond_0

    invoke-direct {p0, v0}, Lcom/crittercism/internal/bw;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 118
    iget-object v1, p0, Lcom/crittercism/internal/bw;->b:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 119
    const-string v2, "com.crittercism.prefs.did"

    invoke-interface {v1, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 120
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 124
    :cond_0
    if-nez v0, :cond_1

    .line 126
    invoke-static {}, Lcom/crittercism/internal/bw;->b()Ljava/lang/String;

    move-result-object v0

    .line 127
    invoke-direct {p0, v0}, Lcom/crittercism/internal/bw;->a(Ljava/lang/String;)Z

    .line 130
    :cond_1
    return-object v0
.end method
