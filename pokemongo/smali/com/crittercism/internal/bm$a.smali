.class final Lcom/crittercism/internal/bm$a;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/crittercism/internal/bm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/crittercism/internal/bm;


# direct methods
.method private constructor <init>(Lcom/crittercism/internal/bm;)V
    .locals 0

    .prologue
    .line 75
    iput-object p1, p0, Lcom/crittercism/internal/bm$a;->a:Lcom/crittercism/internal/bm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/crittercism/internal/bm;B)V
    .locals 0

    .prologue
    .line 75
    invoke-direct {p0, p1}, Lcom/crittercism/internal/bm$a;-><init>(Lcom/crittercism/internal/bm;)V

    return-void
.end method


# virtual methods
.method public final onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 80
    return-void
.end method

.method public final onActivityDestroyed(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 219
    return-void
.end method

.method public final onActivityPaused(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 131
    .line 1140
    if-eqz p1, :cond_1

    .line 1144
    :try_start_0
    iget-object v0, p0, Lcom/crittercism/internal/bm$a;->a:Lcom/crittercism/internal/bm;

    invoke-virtual {v0, p1}, Lcom/crittercism/internal/bm;->c(Landroid/app/Activity;)V

    .line 1148
    iget-object v0, p0, Lcom/crittercism/internal/bm$a;->a:Lcom/crittercism/internal/bm;

    invoke-static {v0}, Lcom/crittercism/internal/bm;->b(Lcom/crittercism/internal/bm;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1149
    iget-object v0, p0, Lcom/crittercism/internal/bm$a;->a:Lcom/crittercism/internal/bm;

    invoke-static {v0}, Lcom/crittercism/internal/bm;->e(Lcom/crittercism/internal/bm;)I

    .line 1150
    iget-object v0, p0, Lcom/crittercism/internal/bm$a;->a:Lcom/crittercism/internal/bm;

    invoke-static {v0}, Lcom/crittercism/internal/bm;->g(Lcom/crittercism/internal/bm;)I

    .line 1151
    iget-object v0, p0, Lcom/crittercism/internal/bm$a;->a:Lcom/crittercism/internal/bm;

    invoke-static {v0}, Lcom/crittercism/internal/bm;->c(Lcom/crittercism/internal/bm;)Z

    .line 1155
    :cond_0
    iget-object v0, p0, Lcom/crittercism/internal/bm$a;->a:Lcom/crittercism/internal/bm;

    invoke-static {v0}, Lcom/crittercism/internal/bm;->a(Lcom/crittercism/internal/bm;)V
    :try_end_0
    .catch Ljava/lang/ThreadDeath; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    .line 137
    :cond_1
    :goto_0
    return-void

    .line 133
    :catch_0
    move-exception v0

    throw v0

    .line 135
    :catch_1
    move-exception v0

    invoke-static {v0}, Lcom/crittercism/internal/cc;->b(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public final onActivityResumed(Landroid/app/Activity;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 90
    .line 1099
    if-eqz p1, :cond_1

    .line 1103
    :try_start_0
    iget-object v0, p0, Lcom/crittercism/internal/bm$a;->a:Lcom/crittercism/internal/bm;

    invoke-virtual {v0, p1}, Lcom/crittercism/internal/bm;->b(Landroid/app/Activity;)V

    .line 1105
    iget-object v0, p0, Lcom/crittercism/internal/bm$a;->a:Lcom/crittercism/internal/bm;

    invoke-static {v0}, Lcom/crittercism/internal/bm;->a(Lcom/crittercism/internal/bm;)V

    .line 1107
    iget-object v0, p0, Lcom/crittercism/internal/bm$a;->a:Lcom/crittercism/internal/bm;

    invoke-static {v0}, Lcom/crittercism/internal/bm;->b(Lcom/crittercism/internal/bm;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1108
    iget-object v0, p0, Lcom/crittercism/internal/bm$a;->a:Lcom/crittercism/internal/bm;

    invoke-static {v0}, Lcom/crittercism/internal/bm;->c(Lcom/crittercism/internal/bm;)Z

    .line 1111
    :cond_0
    iget-object v0, p0, Lcom/crittercism/internal/bm$a;->a:Lcom/crittercism/internal/bm;

    invoke-static {v0}, Lcom/crittercism/internal/bm;->d(Lcom/crittercism/internal/bm;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1112
    const-string v0, "not a foreground. rotation event."

    invoke-static {v0}, Lcom/crittercism/internal/cc;->d(Ljava/lang/String;)V

    .line 1113
    iget-object v0, p0, Lcom/crittercism/internal/bm$a;->a:Lcom/crittercism/internal/bm;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/crittercism/internal/bm;->a(Lcom/crittercism/internal/bm;Z)Z

    .line 1122
    :goto_0
    iget-object v0, p0, Lcom/crittercism/internal/bm$a;->a:Lcom/crittercism/internal/bm;

    invoke-static {v0}, Lcom/crittercism/internal/bm;->f(Lcom/crittercism/internal/bm;)I

    .line 96
    :cond_1
    :goto_1
    return-void

    .line 1115
    :cond_2
    iget-object v0, p0, Lcom/crittercism/internal/bm$a;->a:Lcom/crittercism/internal/bm;

    invoke-static {v0}, Lcom/crittercism/internal/bm;->e(Lcom/crittercism/internal/bm;)I

    move-result v0

    if-nez v0, :cond_3

    .line 1116
    iget-object v0, p0, Lcom/crittercism/internal/bm$a;->a:Lcom/crittercism/internal/bm;

    invoke-virtual {v0}, Lcom/crittercism/internal/bm;->b()V

    .line 1119
    :cond_3
    iget-object v0, p0, Lcom/crittercism/internal/bm$a;->a:Lcom/crittercism/internal/bm;

    invoke-virtual {v0, p1}, Lcom/crittercism/internal/bm;->a(Landroid/app/Activity;)V
    :try_end_0
    .catch Ljava/lang/ThreadDeath; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 92
    :catch_0
    move-exception v0

    throw v0

    .line 94
    :catch_1
    move-exception v0

    invoke-static {v0}, Lcom/crittercism/internal/cc;->b(Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public final onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 214
    return-void
.end method

.method public final onActivityStarted(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 85
    return-void
.end method

.method public final onActivityStopped(Landroid/app/Activity;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 180
    .line 1189
    if-eqz p1, :cond_1

    .line 1193
    :try_start_0
    iget-object v0, p0, Lcom/crittercism/internal/bm$a;->a:Lcom/crittercism/internal/bm;

    invoke-virtual {v0}, Lcom/crittercism/internal/bm;->e()V

    .line 1195
    iget-object v0, p0, Lcom/crittercism/internal/bm$a;->a:Lcom/crittercism/internal/bm;

    invoke-static {v0}, Lcom/crittercism/internal/bm;->b(Lcom/crittercism/internal/bm;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1196
    iget-object v0, p0, Lcom/crittercism/internal/bm$a;->a:Lcom/crittercism/internal/bm;

    invoke-static {v0}, Lcom/crittercism/internal/bm;->e(Lcom/crittercism/internal/bm;)I

    .line 1197
    iget-object v0, p0, Lcom/crittercism/internal/bm$a;->a:Lcom/crittercism/internal/bm;

    invoke-static {v0}, Lcom/crittercism/internal/bm;->g(Lcom/crittercism/internal/bm;)I

    .line 1198
    iget-object v0, p0, Lcom/crittercism/internal/bm$a;->a:Lcom/crittercism/internal/bm;

    invoke-static {v0}, Lcom/crittercism/internal/bm;->c(Lcom/crittercism/internal/bm;)Z

    .line 1201
    :cond_0
    iget-object v0, p0, Lcom/crittercism/internal/bm$a;->a:Lcom/crittercism/internal/bm;

    invoke-static {v0}, Lcom/crittercism/internal/bm;->h(Lcom/crittercism/internal/bm;)I

    .line 1203
    invoke-virtual {p1}, Landroid/app/Activity;->isChangingConfigurations()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1204
    const-string v0, "not a background. rotation event."

    invoke-static {v0}, Lcom/crittercism/internal/cc;->d(Ljava/lang/String;)V

    .line 1205
    iget-object v0, p0, Lcom/crittercism/internal/bm$a;->a:Lcom/crittercism/internal/bm;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/crittercism/internal/bm;->a(Lcom/crittercism/internal/bm;Z)Z

    :cond_1
    :goto_0
    return-void

    .line 1206
    :cond_2
    iget-object v0, p0, Lcom/crittercism/internal/bm$a;->a:Lcom/crittercism/internal/bm;

    invoke-static {v0}, Lcom/crittercism/internal/bm;->e(Lcom/crittercism/internal/bm;)I

    move-result v0

    if-nez v0, :cond_1

    .line 1207
    iget-object v0, p0, Lcom/crittercism/internal/bm$a;->a:Lcom/crittercism/internal/bm;

    invoke-virtual {v0}, Lcom/crittercism/internal/bm;->c()V
    :try_end_0
    .catch Ljava/lang/ThreadDeath; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 182
    :catch_0
    move-exception v0

    throw v0

    .line 184
    :catch_1
    move-exception v0

    invoke-static {v0}, Lcom/crittercism/internal/cc;->b(Ljava/lang/Throwable;)V

    goto :goto_0
.end method
