.class final Lcom/crittercism/internal/am$b;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/crittercism/internal/am;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/crittercism/internal/am;

.field private b:Z


# direct methods
.method public constructor <init>(Lcom/crittercism/internal/am;Z)V
    .locals 0

    .prologue
    .line 229
    iput-object p1, p0, Lcom/crittercism/internal/am$b;->a:Lcom/crittercism/internal/am;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 230
    iput-boolean p2, p0, Lcom/crittercism/internal/am$b;->b:Z

    .line 231
    return-void
.end method

.method private a(Lcom/crittercism/internal/av;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/crittercism/internal/av",
            "<",
            "Lcom/crittercism/internal/at;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v6, 0x4

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 273
    invoke-interface {p1}, Lcom/crittercism/internal/av;->b()Ljava/util/List;

    move-result-object v0

    .line 276
    instance-of v1, v0, Ljava/util/LinkedList;

    if-eqz v1, :cond_0

    .line 277
    check-cast v0, Ljava/util/LinkedList;

    .line 282
    :goto_0
    invoke-virtual {v0}, Ljava/util/LinkedList;->descendingIterator()Ljava/util/Iterator;

    move-result-object v4

    move v1, v2

    .line 284
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 285
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/crittercism/internal/at;

    .line 287
    if-eqz v1, :cond_1

    .line 1156
    iget-object v0, v0, Lcom/crittercism/internal/at;->a:Ljava/lang/String;

    .line 288
    invoke-interface {p1, v0}, Lcom/crittercism/internal/av;->a(Ljava/lang/String;)V

    goto :goto_1

    .line 279
    :cond_0
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1, v0}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V

    move-object v0, v1

    goto :goto_0

    .line 2147
    :cond_1
    iget v0, v0, Lcom/crittercism/internal/at;->c:I

    .line 289
    sget v5, Lcom/crittercism/internal/at$b;->a:I

    if-ne v0, v5, :cond_4

    move v0, v3

    :goto_2
    move v1, v0

    .line 292
    goto :goto_1

    .line 295
    :cond_2
    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "network_bcs"

    aput-object v1, v0, v2

    const-string v1, "previous_bcs"

    aput-object v1, v0, v3

    const/4 v1, 0x2

    const-string v3, "current_bcs"

    aput-object v3, v0, v1

    const/4 v1, 0x3

    const-string v3, "system_bcs"

    aput-object v3, v0, v1

    .line 296
    :goto_3
    if-ge v2, v6, :cond_3

    .line 297
    iget-object v1, p0, Lcom/crittercism/internal/am$b;->a:Lcom/crittercism/internal/am;

    .line 3065
    iget-object v1, v1, Lcom/crittercism/internal/am;->a:Landroid/app/Application;

    .line 297
    aget-object v3, v0, v2

    invoke-static {v1, v3}, Lcom/crittercism/internal/aw;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 298
    invoke-static {v1}, Lcom/crittercism/internal/cd;->a(Ljava/io/File;)V

    .line 296
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 300
    :cond_3
    return-void

    :cond_4
    move v0, v1

    goto :goto_2
.end method


# virtual methods
.method public final run()V
    .locals 10

    .prologue
    const-wide/16 v8, 0x0

    const/4 v1, 0x0

    const/4 v5, 0x0

    .line 305
    iget-object v0, p0, Lcom/crittercism/internal/am$b;->a:Lcom/crittercism/internal/am;

    .line 4065
    iget-object v0, v0, Lcom/crittercism/internal/am;->j:Lcom/crittercism/internal/ap;

    .line 305
    sget-object v2, Lcom/crittercism/internal/ap;->v:Lcom/crittercism/internal/ap$a;

    invoke-virtual {v0, v2}, Lcom/crittercism/internal/ap;->a(Lcom/crittercism/internal/ap$e;)Ljava/lang/Object;

    .line 4234
    new-instance v0, Ljava/io/File;

    iget-object v2, p0, Lcom/crittercism/internal/am$b;->a:Lcom/crittercism/internal/am;

    .line 5065
    iget-object v2, v2, Lcom/crittercism/internal/am;->a:Landroid/app/Application;

    .line 4234
    invoke-virtual {v2}, Landroid/app/Application;->getFilesDir()Ljava/io/File;

    move-result-object v2

    const-string v3, "com.crittercism/pending"

    invoke-direct {v0, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 4235
    invoke-static {v0}, Lcom/crittercism/internal/cd;->a(Ljava/io/File;)V

    .line 309
    iget-object v0, p0, Lcom/crittercism/internal/am$b;->a:Lcom/crittercism/internal/am;

    .line 6065
    iget-object v0, v0, Lcom/crittercism/internal/am;->a:Landroid/app/Application;

    .line 8030
    const-string v2, "com.crittercism.usersettings"

    invoke-virtual {v0, v2, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 7035
    const-string v2, "crashedOnLastLoad"

    invoke-interface {v0, v2, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 7036
    if-nez v2, :cond_3

    move-object v0, v1

    .line 310
    :goto_0
    sput-object v0, Lcom/crittercism/internal/by;->a:Lcom/crittercism/app/CrashData;

    .line 312
    iget-object v0, p0, Lcom/crittercism/internal/am$b;->a:Lcom/crittercism/internal/am;

    .line 8065
    iget-object v0, v0, Lcom/crittercism/internal/am;->a:Landroid/app/Application;

    .line 312
    invoke-static {v0, v1}, Lcom/crittercism/internal/by;->a(Landroid/content/Context;Lcom/crittercism/app/CrashData;)V

    .line 314
    new-instance v0, Lcom/crittercism/internal/bz;

    iget-object v1, p0, Lcom/crittercism/internal/am$b;->a:Lcom/crittercism/internal/am;

    .line 9065
    iget-object v1, v1, Lcom/crittercism/internal/am;->a:Landroid/app/Application;

    .line 314
    invoke-direct {v0, v1}, Lcom/crittercism/internal/bz;-><init>(Landroid/content/Context;)V

    .line 10020
    iget-object v1, v0, Lcom/crittercism/internal/bz;->a:Landroid/content/SharedPreferences;

    const-string v2, "sessionIDSetting"

    invoke-interface {v1, v2, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 10021
    iget-object v0, v0, Lcom/crittercism/internal/bz;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v2, "sessionIDSetting"

    add-int/lit8 v1, v1, 0x1

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 10239
    iget-boolean v0, p0, Lcom/crittercism/internal/am$b;->b:Z

    if-nez v0, :cond_1

    .line 10243
    iget-object v0, p0, Lcom/crittercism/internal/am$b;->a:Lcom/crittercism/internal/am;

    .line 11065
    iget-object v0, v0, Lcom/crittercism/internal/am;->a:Landroid/app/Application;

    .line 10243
    invoke-static {v0}, Lcom/crittercism/app/CrittercismNDK;->crashDumpDirectory(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    iget-object v1, p0, Lcom/crittercism/internal/am$b;->a:Lcom/crittercism/internal/am;

    .line 12065
    iget-object v1, v1, Lcom/crittercism/internal/am;->e:Lcom/crittercism/internal/av;

    .line 10243
    iget-object v2, p0, Lcom/crittercism/internal/am$b;->a:Lcom/crittercism/internal/am;

    .line 13065
    iget-object v2, v2, Lcom/crittercism/internal/am;->n:Lcom/crittercism/internal/au;

    .line 10243
    invoke-static {v0, v1, v2}, Lcom/crittercism/internal/bc;->a(Ljava/io/File;Lcom/crittercism/internal/av;Lcom/crittercism/internal/au;)Lcom/crittercism/internal/bc;

    move-result-object v1

    .line 10245
    if-eqz v1, :cond_1

    .line 10247
    iget-object v0, p0, Lcom/crittercism/internal/am$b;->a:Lcom/crittercism/internal/am;

    .line 14065
    iget-object v0, v0, Lcom/crittercism/internal/am;->j:Lcom/crittercism/internal/ap;

    .line 10247
    sget-object v2, Lcom/crittercism/internal/ap;->m:Lcom/crittercism/internal/ap$a;

    invoke-virtual {v0, v2}, Lcom/crittercism/internal/ap;->a(Lcom/crittercism/internal/ap$e;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 10248
    if-eqz v0, :cond_0

    .line 10249
    iget-object v0, p0, Lcom/crittercism/internal/am$b;->a:Lcom/crittercism/internal/am;

    .line 15065
    iget-object v0, v0, Lcom/crittercism/internal/am;->j:Lcom/crittercism/internal/ap;

    .line 10249
    sget-object v2, Lcom/crittercism/internal/ap;->p:Lcom/crittercism/internal/ap$b;

    invoke-virtual {v0, v2}, Lcom/crittercism/internal/ap;->a(Lcom/crittercism/internal/ap$e;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 15130
    iput v0, v1, Lcom/crittercism/internal/bc;->f:F

    .line 10251
    iget-object v0, p0, Lcom/crittercism/internal/am$b;->a:Lcom/crittercism/internal/am;

    .line 16065
    iget-object v0, v0, Lcom/crittercism/internal/am;->c:Lcom/crittercism/internal/av;

    .line 10251
    invoke-interface {v0, v1}, Lcom/crittercism/internal/av;->a(Lcom/crittercism/internal/bf;)Z

    .line 10254
    :cond_0
    new-instance v0, Lcom/crittercism/app/CrashData;

    const-string v1, "NDK crash"

    const-string v2, ""

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    invoke-direct {v0, v1, v2, v3}, Lcom/crittercism/app/CrashData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;)V

    sput-object v0, Lcom/crittercism/internal/by;->a:Lcom/crittercism/app/CrashData;

    .line 318
    :cond_1
    iget-object v0, p0, Lcom/crittercism/internal/am$b;->a:Lcom/crittercism/internal/am;

    .line 17065
    iget-object v0, v0, Lcom/crittercism/internal/am;->e:Lcom/crittercism/internal/av;

    .line 318
    invoke-direct {p0, v0}, Lcom/crittercism/internal/am$b;->a(Lcom/crittercism/internal/av;)V

    .line 17261
    iget-boolean v0, p0, Lcom/crittercism/internal/am$b;->b:Z

    if-nez v0, :cond_2

    .line 17266
    :try_start_0
    iget-object v0, p0, Lcom/crittercism/internal/am$b;->a:Lcom/crittercism/internal/am;

    .line 18065
    iget-object v0, v0, Lcom/crittercism/internal/am;->a:Landroid/app/Application;

    .line 17266
    invoke-static {v0}, Lcom/crittercism/app/CrittercismNDK;->installNdkLib(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 321
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/crittercism/internal/am$b;->a:Lcom/crittercism/internal/am;

    .line 19065
    iget-object v0, v0, Lcom/crittercism/internal/am;->a:Landroid/app/Application;

    .line 321
    iget-object v1, p0, Lcom/crittercism/internal/am$b;->a:Lcom/crittercism/internal/am;

    .line 20065
    iget-object v1, v1, Lcom/crittercism/internal/am;->n:Lcom/crittercism/internal/au;

    .line 20080
    iget-object v1, v1, Lcom/crittercism/internal/au;->e:Ljava/lang/String;

    .line 21051
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "com.crittercism."

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".usermetadata"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 21052
    invoke-virtual {v0, v1, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 21053
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 323
    iget-object v0, p0, Lcom/crittercism/internal/am$b;->a:Lcom/crittercism/internal/am;

    iget-object v1, p0, Lcom/crittercism/internal/am$b;->a:Lcom/crittercism/internal/am;

    .line 21065
    iget-object v1, v1, Lcom/crittercism/internal/am;->j:Lcom/crittercism/internal/ap;

    .line 323
    invoke-virtual {v0, v1}, Lcom/crittercism/internal/am;->a(Lcom/crittercism/internal/ap;)V

    .line 324
    return-void

    .line 7039
    :cond_3
    const-string v2, "crashName"

    const-string v3, ""

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 7040
    const-string v2, "crashReason"

    const-string v4, ""

    invoke-interface {v0, v2, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 7042
    const-string v2, "crashDate"

    invoke-interface {v0, v2, v8, v9}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v6

    .line 7044
    cmp-long v0, v6, v8

    if-eqz v0, :cond_4

    .line 7045
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, v6, v7}, Ljava/util/Date;-><init>(J)V

    .line 7048
    :goto_2
    new-instance v2, Lcom/crittercism/app/CrashData;

    invoke-direct {v2, v3, v4, v0}, Lcom/crittercism/app/CrashData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;)V

    move-object v0, v2

    goto/16 :goto_0

    .line 17267
    :catch_0
    move-exception v0

    .line 17268
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Exception installing ndk library: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/crittercism/internal/cc;->d(Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    move-object v0, v1

    goto :goto_2
.end method
