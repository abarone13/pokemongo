.class public Lcom/crittercism/app/Crittercism;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/crittercism/app/Crittercism$LoggingLevel;
    }
.end annotation


# static fields
.field private static volatile a:Lcom/crittercism/internal/am;

.field private static final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/crittercism/app/CrittercismCallback",
            "<",
            "Lcom/crittercism/app/CrashData;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    const/4 v0, 0x0

    sput-object v0, Lcom/crittercism/app/Crittercism;->a:Lcom/crittercism/internal/am;

    .line 39
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/crittercism/app/Crittercism;->b:Ljava/util/List;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static _logCrashException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "msg"    # Ljava/lang/String;
    .param p1, "stack"    # Ljava/lang/String;

    .prologue
    .line 368
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 369
    :cond_0
    :try_start_0
    const-string v0, "Unable to handle application crash. Missing parameters"

    invoke-static {v0}, Lcom/crittercism/internal/cc;->a(Ljava/lang/String;)V

    .line 378
    :goto_0
    return-void

    .line 372
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "_logCrashException(msg, stack) called: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/crittercism/internal/cc;->d(Ljava/lang/String;)V

    .line 373
    new-instance v0, Lcom/crittercism/integrations/PluginException;

    invoke-direct {v0, p0, p1}, Lcom/crittercism/integrations/PluginException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 374
    invoke-static {v0}, Lcom/crittercism/app/Crittercism;->_logCrashException(Ljava/lang/Throwable;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 376
    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/crittercism/internal/cc;->b(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static _logCrashException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "stack"    # Ljava/lang/String;

    .prologue
    .line 354
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 355
    :cond_0
    :try_start_0
    const-string v0, "Unable to handle application crash. Missing parameters"

    invoke-static {v0}, Lcom/crittercism/internal/cc;->a(Ljava/lang/String;)V

    .line 364
    :goto_0
    return-void

    .line 358
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "_logCrashException(name, msg, stack) called: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/crittercism/internal/cc;->d(Ljava/lang/String;)V

    .line 359
    new-instance v0, Lcom/crittercism/integrations/PluginException;

    invoke-direct {v0, p0, p1, p2}, Lcom/crittercism/integrations/PluginException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 360
    invoke-static {v0}, Lcom/crittercism/app/Crittercism;->_logCrashException(Ljava/lang/Throwable;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 362
    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/crittercism/internal/cc;->b(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static _logCrashException(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[I)V
    .locals 7
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "classStackElems"    # [Ljava/lang/String;
    .param p3, "methodStackElems"    # [Ljava/lang/String;
    .param p4, "fileStackElems"    # [Ljava/lang/String;
    .param p5, "lineNumberStackElems"    # [I

    .prologue
    .line 387
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "_logCrashException(String, String, String[], String[], String[], int[]) called: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/crittercism/internal/cc;->d(Ljava/lang/String;)V

    .line 388
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    if-eqz p3, :cond_0

    if-eqz p4, :cond_0

    if-nez p5, :cond_1

    .line 391
    :cond_0
    const-string v0, "Unable to handle application crash. Missing parameters"

    invoke-static {v0}, Lcom/crittercism/internal/cc;->a(Ljava/lang/String;)V

    .line 407
    :goto_0
    return-void

    .line 395
    :cond_1
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    const/4 v1, 0x1

    aput-object p3, v0, v1

    const/4 v1, 0x2

    aput-object p4, v0, v1

    const/4 v1, 0x3

    aput-object p5, v0, v1

    invoke-static {v0}, Lcom/crittercism/app/Crittercism;->a([Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 397
    const-string v0, "Unable to handle application crash. Missing stack elements"

    invoke-static {v0}, Lcom/crittercism/internal/cc;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 405
    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/crittercism/internal/cc;->b(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 401
    :cond_2
    :try_start_1
    new-instance v0, Lcom/crittercism/integrations/PluginException;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/crittercism/integrations/PluginException;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[I)V

    .line 403
    invoke-static {v0}, Lcom/crittercism/app/Crittercism;->_logCrashException(Ljava/lang/Throwable;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public static _logCrashException(Ljava/lang/Throwable;)V
    .locals 2
    .param p0, "exception"    # Ljava/lang/Throwable;

    .prologue
    .line 437
    sget-object v0, Lcom/crittercism/app/Crittercism;->a:Lcom/crittercism/internal/am;

    if-nez v0, :cond_0

    .line 438
    const-string v0, "_logCrashException"

    invoke-static {v0}, Lcom/crittercism/app/Crittercism;->a(Ljava/lang/String;)V

    .line 450
    :goto_0
    return-void

    .line 443
    :cond_0
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "_logCrashException(Throwable) called with throwable: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/crittercism/internal/cc;->d(Ljava/lang/String;)V

    .line 444
    sget-object v0, Lcom/crittercism/app/Crittercism;->a:Lcom/crittercism/internal/am;

    invoke-virtual {v0, p0}, Lcom/crittercism/internal/am;->a(Ljava/lang/Throwable;)V
    :try_end_0
    .catch Ljava/lang/ThreadDeath; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 446
    :catch_0
    move-exception v0

    throw v0

    .line 448
    :catch_1
    move-exception v0

    invoke-static {v0}, Lcom/crittercism/internal/cc;->b(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static _logHandledException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "stack"    # Ljava/lang/String;

    .prologue
    .line 186
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "_logHandledException(name, msg, stack) called: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/crittercism/internal/cc;->d(Ljava/lang/String;)V

    .line 187
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 188
    :cond_0
    const-string v0, "Calling logHandledException with null parameter(s). Nothing will be reported to Crittercism"

    invoke-static {v0}, Lcom/crittercism/internal/cc;->b(Ljava/lang/String;)V

    .line 198
    :goto_0
    return-void

    .line 191
    :cond_1
    new-instance v0, Lcom/crittercism/integrations/PluginException;

    invoke-direct {v0, p0, p1, p2}, Lcom/crittercism/integrations/PluginException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    invoke-static {v0}, Lcom/crittercism/app/Crittercism;->logHandledException(Ljava/lang/Throwable;)V
    :try_end_0
    .catch Ljava/lang/ThreadDeath; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 194
    :catch_0
    move-exception v0

    throw v0

    .line 196
    :catch_1
    move-exception v0

    invoke-static {v0}, Lcom/crittercism/internal/cc;->b(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static _logHandledException(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[I)V
    .locals 7
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "classStackElems"    # [Ljava/lang/String;
    .param p3, "methodStackElems"    # [Ljava/lang/String;
    .param p4, "fileStackElems"    # [Ljava/lang/String;
    .param p5, "lineNumberStackElems"    # [I

    .prologue
    .line 207
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "_logHandledException(name, msg, classes, methods, files, lines) called: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/crittercism/internal/cc;->d(Ljava/lang/String;)V

    .line 208
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 209
    :cond_0
    const-string v0, "Calling logHandledException with null parameter(s). Nothing will be reported to Crittercism"

    invoke-static {v0}, Lcom/crittercism/internal/cc;->b(Ljava/lang/String;)V

    .line 219
    :goto_0
    return-void

    .line 212
    :cond_1
    new-instance v0, Lcom/crittercism/integrations/PluginException;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/crittercism/integrations/PluginException;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[I)V

    .line 213
    invoke-static {v0}, Lcom/crittercism/app/Crittercism;->logHandledException(Ljava/lang/Throwable;)V
    :try_end_0
    .catch Ljava/lang/ThreadDeath; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 215
    :catch_0
    move-exception v0

    throw v0

    .line 217
    :catch_1
    move-exception v0

    invoke-static {v0}, Lcom/crittercism/internal/cc;->b(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private static a(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 808
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Must initialize Crittercism before calling "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-class v1, Lcom/crittercism/app/Crittercism;

    .line 809
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "(). Request is being ignored..."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 811
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    invoke-static {v0, v1}, Lcom/crittercism/internal/cc;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 812
    return-void
.end method

.method private static varargs a([Ljava/lang/Object;)Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 413
    aget-object v2, p0, v0

    if-nez v2, :cond_1

    .line 426
    :cond_0
    :goto_0
    return v0

    .line 416
    :cond_1
    aget-object v2, p0, v0

    invoke-static {v2}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v3

    move v2, v1

    .line 417
    :goto_1
    const/4 v4, 0x4

    if-ge v2, v4, :cond_2

    .line 418
    aget-object v4, p0, v2

    if-eqz v4, :cond_0

    .line 421
    aget-object v4, p0, v2

    invoke-static {v4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v4

    .line 422
    if-ne v4, v3, :cond_0

    .line 417
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    move v0, v1

    .line 426
    goto :goto_0
.end method

.method public static beginTransaction(Ljava/lang/String;)V
    .locals 1
    .param p0, "name"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 588
    sget-object v0, Lcom/crittercism/app/Crittercism;->a:Lcom/crittercism/internal/am;

    if-nez v0, :cond_0

    .line 589
    const-string v0, "beginTransaction"

    invoke-static {v0}, Lcom/crittercism/app/Crittercism;->a(Ljava/lang/String;)V

    .line 597
    :goto_0
    return-void

    .line 591
    :cond_0
    if-nez p0, :cond_1

    .line 592
    const-string v0, "Invalid input to beginTransaction(): null name"

    invoke-static {v0}, Lcom/crittercism/internal/cc;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 596
    :cond_1
    invoke-static {p0}, Lcom/crittercism/app/Crittercism;->beginUserflow(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static beginUserflow(Ljava/lang/String;)V
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 569
    sget-object v0, Lcom/crittercism/app/Crittercism;->a:Lcom/crittercism/internal/am;

    if-nez v0, :cond_0

    .line 570
    const-string v0, "beginUserflow"

    invoke-static {v0}, Lcom/crittercism/app/Crittercism;->a(Ljava/lang/String;)V

    .line 584
    :goto_0
    return-void

    .line 572
    :cond_0
    if-nez p0, :cond_1

    .line 573
    const-string v0, "Invalid input to beginUserflow(): null userflow name"

    invoke-static {v0}, Lcom/crittercism/internal/cc;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 578
    :cond_1
    :try_start_0
    sget-object v0, Lcom/crittercism/app/Crittercism;->a:Lcom/crittercism/internal/am;

    invoke-virtual {v0, p0}, Lcom/crittercism/internal/am;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/ThreadDeath; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 580
    :catch_0
    move-exception v0

    throw v0

    .line 582
    :catch_1
    move-exception v0

    invoke-static {v0}, Lcom/crittercism/internal/cc;->b(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static cancelTransaction(Ljava/lang/String;)V
    .locals 1
    .param p0, "name"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 681
    sget-object v0, Lcom/crittercism/app/Crittercism;->a:Lcom/crittercism/internal/am;

    if-nez v0, :cond_0

    .line 682
    const-string v0, "cancelTransaction"

    invoke-static {v0}, Lcom/crittercism/app/Crittercism;->a(Ljava/lang/String;)V

    .line 690
    :goto_0
    return-void

    .line 684
    :cond_0
    if-nez p0, :cond_1

    .line 685
    const-string v0, "Invalid input to cancelTransaction(): null name"

    invoke-static {v0}, Lcom/crittercism/internal/cc;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 689
    :cond_1
    invoke-static {p0}, Lcom/crittercism/app/Crittercism;->cancelUserflow(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static cancelUserflow(Ljava/lang/String;)V
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 662
    sget-object v0, Lcom/crittercism/app/Crittercism;->a:Lcom/crittercism/internal/am;

    if-nez v0, :cond_0

    .line 663
    const-string v0, "cancelUserflow"

    invoke-static {v0}, Lcom/crittercism/app/Crittercism;->a(Ljava/lang/String;)V

    .line 677
    :goto_0
    return-void

    .line 665
    :cond_0
    if-nez p0, :cond_1

    .line 666
    const-string v0, "Invalid input to cancelUserflow(): null name"

    invoke-static {v0}, Lcom/crittercism/internal/cc;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 671
    :cond_1
    :try_start_0
    sget-object v0, Lcom/crittercism/app/Crittercism;->a:Lcom/crittercism/internal/am;

    invoke-virtual {v0, p0}, Lcom/crittercism/internal/am;->d(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/ThreadDeath; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 673
    :catch_0
    move-exception v0

    throw v0

    .line 675
    :catch_1
    move-exception v0

    invoke-static {v0}, Lcom/crittercism/internal/cc;->b(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static didCrashOnLastLoad()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 304
    sget-object v1, Lcom/crittercism/app/Crittercism;->a:Lcom/crittercism/internal/am;

    if-nez v1, :cond_0

    .line 305
    const-string v1, "didCrashOnLoad"

    invoke-static {v1}, Lcom/crittercism/app/Crittercism;->a(Ljava/lang/String;)V

    .line 317
    :goto_0
    return v0

    .line 310
    :cond_0
    :try_start_0
    sget-object v1, Lcom/crittercism/app/Crittercism;->a:Lcom/crittercism/internal/am;

    invoke-virtual {v1}, Lcom/crittercism/internal/am;->b()Z
    :try_end_0
    .catch Ljava/lang/ThreadDeath; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    move-result v0

    goto :goto_0

    .line 312
    :catch_0
    move-exception v0

    throw v0

    .line 314
    :catch_1
    move-exception v1

    invoke-static {v1}, Lcom/crittercism/internal/cc;->b(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static endTransaction(Ljava/lang/String;)V
    .locals 1
    .param p0, "name"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 619
    sget-object v0, Lcom/crittercism/app/Crittercism;->a:Lcom/crittercism/internal/am;

    if-nez v0, :cond_0

    .line 620
    const-string v0, "endTransaction"

    invoke-static {v0}, Lcom/crittercism/app/Crittercism;->a(Ljava/lang/String;)V

    .line 628
    :goto_0
    return-void

    .line 622
    :cond_0
    if-nez p0, :cond_1

    .line 623
    const-string v0, "Invalid input to endTransaction(): null name"

    invoke-static {v0}, Lcom/crittercism/internal/cc;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 627
    :cond_1
    invoke-static {p0}, Lcom/crittercism/app/Crittercism;->endUserflow(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static endUserflow(Ljava/lang/String;)V
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 600
    sget-object v0, Lcom/crittercism/app/Crittercism;->a:Lcom/crittercism/internal/am;

    if-nez v0, :cond_0

    .line 601
    const-string v0, "endUserflow"

    invoke-static {v0}, Lcom/crittercism/app/Crittercism;->a(Ljava/lang/String;)V

    .line 615
    :goto_0
    return-void

    .line 603
    :cond_0
    if-nez p0, :cond_1

    .line 604
    const-string v0, "Invalid input to endUserflow(): null userflow name"

    invoke-static {v0}, Lcom/crittercism/internal/cc;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 609
    :cond_1
    :try_start_0
    sget-object v0, Lcom/crittercism/app/Crittercism;->a:Lcom/crittercism/internal/am;

    invoke-virtual {v0, p0}, Lcom/crittercism/internal/am;->b(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/ThreadDeath; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 611
    :catch_0
    move-exception v0

    throw v0

    .line 613
    :catch_1
    move-exception v0

    invoke-static {v0}, Lcom/crittercism/internal/cc;->b(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static failTransaction(Ljava/lang/String;)V
    .locals 1
    .param p0, "name"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 650
    sget-object v0, Lcom/crittercism/app/Crittercism;->a:Lcom/crittercism/internal/am;

    if-nez v0, :cond_0

    .line 651
    const-string v0, "failTransaction"

    invoke-static {v0}, Lcom/crittercism/app/Crittercism;->a(Ljava/lang/String;)V

    .line 659
    :goto_0
    return-void

    .line 653
    :cond_0
    if-nez p0, :cond_1

    .line 654
    const-string v0, "Invalid input to failTransaction(): null name"

    invoke-static {v0}, Lcom/crittercism/internal/cc;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 658
    :cond_1
    invoke-static {p0}, Lcom/crittercism/app/Crittercism;->failUserflow(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static failUserflow(Ljava/lang/String;)V
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 631
    sget-object v0, Lcom/crittercism/app/Crittercism;->a:Lcom/crittercism/internal/am;

    if-nez v0, :cond_0

    .line 632
    const-string v0, "failUserflow"

    invoke-static {v0}, Lcom/crittercism/app/Crittercism;->a(Ljava/lang/String;)V

    .line 646
    :goto_0
    return-void

    .line 634
    :cond_0
    if-nez p0, :cond_1

    .line 635
    const-string v0, "Invalid input to failUserflow(): null name"

    invoke-static {v0}, Lcom/crittercism/internal/cc;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 640
    :cond_1
    :try_start_0
    sget-object v0, Lcom/crittercism/app/Crittercism;->a:Lcom/crittercism/internal/am;

    invoke-virtual {v0, p0}, Lcom/crittercism/internal/am;->c(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/ThreadDeath; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 642
    :catch_0
    move-exception v0

    throw v0

    .line 644
    :catch_1
    move-exception v0

    invoke-static {v0}, Lcom/crittercism/internal/cc;->b(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static getOptOutStatus()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 474
    sget-object v1, Lcom/crittercism/app/Crittercism;->a:Lcom/crittercism/internal/am;

    if-nez v1, :cond_0

    .line 484
    :goto_0
    return v0

    .line 479
    :cond_0
    :try_start_0
    sget-object v1, Lcom/crittercism/app/Crittercism;->a:Lcom/crittercism/internal/am;

    invoke-virtual {v1}, Lcom/crittercism/internal/am;->a()Z
    :try_end_0
    .catch Ljava/lang/ThreadDeath; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    move-result v0

    goto :goto_0

    .line 481
    :catch_0
    move-exception v0

    throw v0

    .line 483
    :catch_1
    move-exception v1

    invoke-static {v1}, Lcom/crittercism/internal/cc;->b(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static getPreviousSessionCrashData(Lcom/crittercism/app/CrittercismCallback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/crittercism/app/CrittercismCallback",
            "<",
            "Lcom/crittercism/app/CrashData;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 322
    .local p0, "crashListener":Lcom/crittercism/app/CrittercismCallback;, "Lcom/crittercism/app/CrittercismCallback<Lcom/crittercism/app/CrashData;>;"
    if-nez p0, :cond_0

    .line 323
    const-string v0, "Crittercism.getPreviousSessionCrashData() given invalid input parameter: null crashListener"

    invoke-static {v0}, Lcom/crittercism/internal/cc;->b(Ljava/lang/String;)V

    .line 341
    :goto_0
    return-void

    .line 328
    :cond_0
    :try_start_0
    sget-object v0, Lcom/crittercism/app/Crittercism;->a:Lcom/crittercism/internal/am;

    if-nez v0, :cond_1

    .line 329
    sget-object v1, Lcom/crittercism/app/Crittercism;->b:Ljava/util/List;

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/ThreadDeath; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    .line 330
    :try_start_1
    sget-object v0, Lcom/crittercism/app/Crittercism;->b:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 331
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0
    :try_end_2
    .catch Ljava/lang/ThreadDeath; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    .line 337
    :catch_0
    move-exception v0

    throw v0

    .line 333
    :cond_1
    :try_start_3
    sget-object v0, Lcom/crittercism/app/Crittercism;->a:Lcom/crittercism/internal/am;

    invoke-virtual {v0, p0}, Lcom/crittercism/internal/am;->a(Lcom/crittercism/app/CrittercismCallback;)V
    :try_end_3
    .catch Ljava/lang/ThreadDeath; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    .line 339
    :catch_1
    move-exception v0

    invoke-static {v0}, Lcom/crittercism/internal/cc;->b(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static getTransactionValue(Ljava/lang/String;)I
    .locals 2
    .param p0, "name"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v0, -0x1

    .line 744
    sget-object v1, Lcom/crittercism/app/Crittercism;->a:Lcom/crittercism/internal/am;

    if-nez v1, :cond_0

    .line 745
    const-string v1, "getTransactionValue"

    invoke-static {v1}, Lcom/crittercism/app/Crittercism;->a(Ljava/lang/String;)V

    .line 752
    :goto_0
    return v0

    .line 747
    :cond_0
    if-nez p0, :cond_1

    .line 748
    const-string v1, "Invalid input to getTransactionValue(): null name"

    invoke-static {v1}, Lcom/crittercism/internal/cc;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 752
    :cond_1
    invoke-static {p0}, Lcom/crittercism/app/Crittercism;->getUserflowValue(Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public static getUserflowValue(Ljava/lang/String;)I
    .locals 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    const/4 v0, -0x1

    .line 724
    sget-object v1, Lcom/crittercism/app/Crittercism;->a:Lcom/crittercism/internal/am;

    if-nez v1, :cond_0

    .line 725
    const-string v1, "getUserflowValue"

    invoke-static {v1}, Lcom/crittercism/app/Crittercism;->a(Ljava/lang/String;)V

    .line 738
    :goto_0
    return v0

    .line 727
    :cond_0
    if-nez p0, :cond_1

    .line 728
    const-string v1, "Invalid input to getUserflowValue(): null name"

    invoke-static {v1}, Lcom/crittercism/internal/cc;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 733
    :cond_1
    :try_start_0
    sget-object v1, Lcom/crittercism/app/Crittercism;->a:Lcom/crittercism/internal/am;

    invoke-virtual {v1, p0}, Lcom/crittercism/internal/am;->e(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/ThreadDeath; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    move-result v0

    goto :goto_0

    .line 735
    :catch_0
    move-exception v0

    throw v0

    .line 737
    :catch_1
    move-exception v1

    invoke-static {v1}, Lcom/crittercism/internal/cc;->b(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static declared-synchronized initialize(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "appID"    # Ljava/lang/String;

    .prologue
    .line 62
    const-class v1, Lcom/crittercism/app/Crittercism;

    monitor-enter v1

    :try_start_0
    new-instance v0, Lcom/crittercism/app/CrittercismConfig;

    invoke-direct {v0}, Lcom/crittercism/app/CrittercismConfig;-><init>()V

    invoke-static {p0, p1, v0}, Lcom/crittercism/app/Crittercism;->initialize(Landroid/content/Context;Ljava/lang/String;Lcom/crittercism/app/CrittercismConfig;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 63
    monitor-exit v1

    return-void

    .line 62
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized initialize(Landroid/content/Context;Ljava/lang/String;Lcom/crittercism/app/CrittercismConfig;)V
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "appID"    # Ljava/lang/String;
    .param p2, "config"    # Lcom/crittercism/app/CrittercismConfig;

    .prologue
    .line 53
    const-class v3, Lcom/crittercism/app/Crittercism;

    monitor-enter v3

    .line 1083
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "Initializing Crittercism 5.8.2 for App ID "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/crittercism/internal/cc;->c(Ljava/lang/String;)V

    .line 1086
    if-nez p0, :cond_0

    .line 1087
    const-string v2, "Crittercism.initialize() given a null context parameter"

    invoke-static {v2}, Lcom/crittercism/internal/cc;->b(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/ThreadDeath; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1145
    :goto_0
    monitor-exit v3

    return-void

    .line 2069
    :cond_0
    :try_start_1
    instance-of v2, p0, Landroid/app/Application;

    if-eqz v2, :cond_1

    .line 2070
    move-object v0, p0

    check-cast v0, Landroid/app/Application;

    move-object v2, v0

    .line 1093
    :goto_1
    if-nez v2, :cond_5

    .line 1095
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "Crittercism.initialize() expects the input Context to be an instanceof Application. Received \'"

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1096
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "\'. Crittercism will no be initialized."

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1095
    invoke-static {v2}, Lcom/crittercism/internal/cc;->b(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/ThreadDeath; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 55
    :catch_0
    move-exception v2

    :try_start_2
    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 53
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2

    .line 2071
    :cond_1
    :try_start_3
    instance-of v2, p0, Landroid/app/Activity;

    if-eqz v2, :cond_2

    .line 2072
    move-object v0, p0

    check-cast v0, Landroid/app/Activity;

    move-object v2, v0

    invoke-virtual {v2}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v2

    goto :goto_1

    .line 2073
    :cond_2
    instance-of v2, p0, Landroid/app/Service;

    if-eqz v2, :cond_3

    .line 2074
    move-object v0, p0

    check-cast v0, Landroid/app/Service;

    move-object v2, v0

    invoke-virtual {v2}, Landroid/app/Service;->getApplication()Landroid/app/Application;

    move-result-object v2

    goto :goto_1

    .line 2075
    :cond_3
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    instance-of v2, v2, Landroid/app/Application;

    if-eqz v2, :cond_4

    .line 2076
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    check-cast v2, Landroid/app/Application;

    goto :goto_1

    .line 2079
    :cond_4
    const/4 v2, 0x0

    goto :goto_1

    .line 1098
    :cond_5
    if-nez p1, :cond_6

    .line 1099
    const-string v2, "Crittercism.initialize() given a null appID parameter"

    invoke-static {v2}, Lcom/crittercism/internal/cc;->b(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/ThreadDeath; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 57
    :catch_1
    move-exception v2

    :try_start_4
    invoke-static {v2}, Lcom/crittercism/internal/cc;->b(Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    .line 1101
    :cond_6
    if-nez p2, :cond_7

    .line 1102
    :try_start_5
    const-string v2, "Crittercism.initialize() given a null CrittercismConfiguration. Crittercism will not be initialized"

    invoke-static {v2}, Lcom/crittercism/internal/cc;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 1105
    :cond_7
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0xe

    if-ge v4, v5, :cond_8

    .line 1106
    const-string v2, "Crittercism is not supported for Android API less than 14 (ICS). Crittercism will not be enabled"

    invoke-static {v2}, Lcom/crittercism/internal/cc;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 1108
    :cond_8
    const-string v4, "android.permission.INTERNET"

    invoke-static {v2, v4}, Lcom/crittercism/internal/ao;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_9

    .line 1109
    const-string v2, "Crittercism requires INTERNET permission. Please add android.permission.INTERNET to your AndroidManifest.xml. Crittercism will not be initialized."

    invoke-static {v2}, Lcom/crittercism/internal/cc;->a(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1113
    :cond_9
    invoke-virtual {p2}, Lcom/crittercism/app/CrittercismConfig;->allowsCellularAccess()Z

    move-result v4

    if-nez v4, :cond_a

    const-string v4, "android.permission.ACCESS_NETWORK_STATE"

    .line 1114
    invoke-static {v2, v4}, Lcom/crittercism/internal/ao;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_a

    .line 1115
    const-string v2, "Crittercism requires adding android.permission.ACCESS_NETWORK_STATE to your AndroidManifest.xml when setting CrittercismConfig.setAllowsCellularAccess(false). Crittercism will not be initialized."

    invoke-static {v2}, Lcom/crittercism/internal/cc;->a(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/ThreadDeath; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_0

    .line 1123
    :cond_a
    :try_start_6
    new-instance v4, Lcom/crittercism/internal/as;

    invoke-direct {v4, p1}, Lcom/crittercism/internal/as;-><init>(Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/IllegalArgumentException; {:try_start_6 .. :try_end_6} :catch_2
    .catch Ljava/lang/ThreadDeath; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 1129
    :try_start_7
    const-class v4, Lcom/crittercism/app/Crittercism;

    monitor-enter v4
    :try_end_7
    .catch Ljava/lang/ThreadDeath; {:try_start_7 .. :try_end_7} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 1130
    :try_start_8
    sget-object v5, Lcom/crittercism/app/Crittercism;->a:Lcom/crittercism/internal/am;

    if-eqz v5, :cond_b

    .line 1131
    const-string v2, "Crittercism has already been initialized. Subsequent calls to initialize() are ignored."

    invoke-static {v2}, Lcom/crittercism/internal/cc;->b(Ljava/lang/String;)V

    .line 1132
    monitor-exit v4

    goto/16 :goto_0

    .line 1138
    :catchall_1
    move-exception v2

    monitor-exit v4
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    :try_start_9
    throw v2

    .line 1124
    :catch_2
    move-exception v2

    .line 1125
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Crittercism.initialize() given an invalid app ID \'"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\': "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/crittercism/internal/cc;->a(Ljava/lang/String;)V
    :try_end_9
    .catch Ljava/lang/ThreadDeath; {:try_start_9 .. :try_end_9} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_1
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto/16 :goto_0

    .line 1135
    :cond_b
    :try_start_a
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 1136
    new-instance v5, Lcom/crittercism/internal/am;

    invoke-direct {v5, v2, p1, p2}, Lcom/crittercism/internal/am;-><init>(Landroid/app/Application;Ljava/lang/String;Lcom/crittercism/app/CrittercismConfig;)V

    sput-object v5, Lcom/crittercism/app/Crittercism;->a:Lcom/crittercism/internal/am;

    .line 1137
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v5, "Crittercism initialized in "

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long v6, v8, v6

    invoke-virtual {v2, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "ms"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/crittercism/internal/cc;->d(Ljava/lang/String;)V

    .line 1138
    monitor-exit v4
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 1140
    :try_start_b
    sget-object v4, Lcom/crittercism/app/Crittercism;->b:Ljava/util/List;

    monitor-enter v4
    :try_end_b
    .catch Ljava/lang/ThreadDeath; {:try_start_b .. :try_end_b} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_b} :catch_1
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 1141
    :try_start_c
    sget-object v2, Lcom/crittercism/app/Crittercism;->b:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_c

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/crittercism/app/CrittercismCallback;

    .line 1142
    sget-object v6, Lcom/crittercism/app/Crittercism;->a:Lcom/crittercism/internal/am;

    invoke-virtual {v6, v2}, Lcom/crittercism/internal/am;->a(Lcom/crittercism/app/CrittercismCallback;)V

    goto :goto_2

    .line 1145
    :catchall_2
    move-exception v2

    monitor-exit v4
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    :try_start_d
    throw v2
    :try_end_d
    .catch Ljava/lang/ThreadDeath; {:try_start_d .. :try_end_d} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_d} :catch_1
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    .line 1144
    :cond_c
    :try_start_e
    sget-object v2, Lcom/crittercism/app/Crittercism;->b:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 1145
    monitor-exit v4
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_2

    goto/16 :goto_0
.end method

.method public static instrumentWebView(Landroid/webkit/WebView;)V
    .locals 1
    .param p0, "webView"    # Landroid/webkit/WebView;

    .prologue
    .line 453
    sget-object v0, Lcom/crittercism/app/Crittercism;->a:Lcom/crittercism/internal/am;

    if-nez v0, :cond_0

    .line 454
    const-string v0, "instrumentWebView"

    invoke-static {v0}, Lcom/crittercism/app/Crittercism;->a(Ljava/lang/String;)V

    .line 468
    :goto_0
    return-void

    .line 456
    :cond_0
    if-nez p0, :cond_1

    .line 457
    const-string v0, "WebView was null. Skipping instrumentation."

    invoke-static {v0}, Lcom/crittercism/internal/cc;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 462
    :cond_1
    :try_start_0
    sget-object v0, Lcom/crittercism/app/Crittercism;->a:Lcom/crittercism/internal/am;

    invoke-virtual {v0, p0}, Lcom/crittercism/internal/am;->a(Landroid/webkit/WebView;)V
    :try_end_0
    .catch Ljava/lang/ThreadDeath; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 464
    :catch_0
    move-exception v0

    throw v0

    .line 466
    :catch_1
    move-exception v0

    invoke-static {v0}, Lcom/crittercism/internal/cc;->b(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static leaveBreadcrumb(Ljava/lang/String;)V
    .locals 2
    .param p0, "text"    # Ljava/lang/String;

    .prologue
    .line 551
    sget-object v0, Lcom/crittercism/app/Crittercism;->a:Lcom/crittercism/internal/am;

    if-nez v0, :cond_0

    .line 552
    const-string v0, "leaveBreadcrumb"

    invoke-static {v0}, Lcom/crittercism/app/Crittercism;->a(Ljava/lang/String;)V

    .line 566
    :goto_0
    return-void

    .line 554
    :cond_0
    if-nez p0, :cond_1

    .line 555
    const-string v0, "Cannot leave null breadcrumb"

    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1}, Ljava/lang/NullPointerException;-><init>()V

    invoke-static {v0, v1}, Lcom/crittercism/internal/cc;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 560
    :cond_1
    :try_start_0
    sget-object v0, Lcom/crittercism/app/Crittercism;->a:Lcom/crittercism/internal/am;

    invoke-static {p0}, Lcom/crittercism/internal/at;->a(Ljava/lang/String;)Lcom/crittercism/internal/at;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/crittercism/internal/am;->a(Lcom/crittercism/internal/at;)V
    :try_end_0
    .catch Ljava/lang/ThreadDeath; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 562
    :catch_0
    move-exception v0

    throw v0

    .line 564
    :catch_1
    move-exception v0

    invoke-static {v0}, Lcom/crittercism/internal/cc;->b(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static logHandledException(Ljava/lang/Throwable;)V
    .locals 1
    .param p0, "t"    # Ljava/lang/Throwable;

    .prologue
    .line 164
    sget-object v0, Lcom/crittercism/app/Crittercism;->a:Lcom/crittercism/internal/am;

    if-nez v0, :cond_0

    .line 165
    const-string v0, "logHandledException"

    invoke-static {v0}, Lcom/crittercism/app/Crittercism;->a(Ljava/lang/String;)V

    .line 179
    :goto_0
    return-void

    .line 167
    :cond_0
    if-nez p0, :cond_1

    .line 168
    const-string v0, "Invalid input to Crittercism.logHandledException(): null exception parameter"

    invoke-static {v0}, Lcom/crittercism/internal/cc;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 173
    :cond_1
    :try_start_0
    sget-object v0, Lcom/crittercism/app/Crittercism;->a:Lcom/crittercism/internal/am;

    invoke-virtual {v0, p0}, Lcom/crittercism/internal/am;->b(Ljava/lang/Throwable;)V
    :try_end_0
    .catch Ljava/lang/ThreadDeath; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 175
    :catch_0
    move-exception v0

    throw v0

    .line 177
    :catch_1
    move-exception v0

    invoke-static {v0}, Lcom/crittercism/internal/cc;->b(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static logNetworkRequest(Ljava/lang/String;Ljava/lang/String;JJJII)V
    .locals 14
    .param p0, "method"    # Ljava/lang/String;
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "latency"    # J
    .param p4, "bytesRead"    # J
    .param p6, "bytesSent"    # J
    .param p8, "responseCode"    # I
    .param p9, "errorCode"    # I

    .prologue
    .line 283
    sget-object v2, Lcom/crittercism/app/Crittercism;->a:Lcom/crittercism/internal/am;

    if-nez v2, :cond_0

    .line 284
    const-string v2, "logNetworkRequest"

    invoke-static {v2}, Lcom/crittercism/app/Crittercism;->a(Ljava/lang/String;)V

    .line 297
    :goto_0
    return-void

    .line 289
    :cond_0
    :try_start_0
    sget v2, Lcom/crittercism/internal/bk;->e:I

    add-int/lit8 v2, v2, -0x1

    .line 290
    new-instance v13, Lcom/crittercism/internal/bj;

    move/from16 v0, p9

    invoke-direct {v13, v2, v0}, Lcom/crittercism/internal/bj;-><init>(II)V

    .line 291
    sget-object v3, Lcom/crittercism/app/Crittercism;->a:Lcom/crittercism/internal/am;

    move-object v4, p0

    move-object v5, p1

    move-wide/from16 v6, p2

    move-wide/from16 v8, p4

    move-wide/from16 v10, p6

    move/from16 v12, p8

    invoke-virtual/range {v3 .. v13}, Lcom/crittercism/internal/am;->a(Ljava/lang/String;Ljava/lang/String;JJJILcom/crittercism/internal/bj;)V
    :try_end_0
    .catch Ljava/lang/ThreadDeath; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 293
    :catch_0
    move-exception v2

    throw v2

    .line 295
    :catch_1
    move-exception v2

    invoke-static {v2}, Lcom/crittercism/internal/cc;->b(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static logNetworkRequest(Ljava/lang/String;Ljava/net/URL;JJJILjava/lang/Exception;)V
    .locals 14
    .param p0, "method"    # Ljava/lang/String;
    .param p1, "url"    # Ljava/net/URL;
    .param p2, "latency"    # J
    .param p4, "bytesRead"    # J
    .param p6, "bytesSent"    # J
    .param p8, "responseCode"    # I
    .param p9, "error"    # Ljava/lang/Exception;

    .prologue
    .line 242
    sget-object v2, Lcom/crittercism/app/Crittercism;->a:Lcom/crittercism/internal/am;

    if-nez v2, :cond_0

    .line 243
    const-string v2, "logNetworkRequest"

    invoke-static {v2}, Lcom/crittercism/app/Crittercism;->a(Ljava/lang/String;)V

    .line 260
    :goto_0
    return-void

    .line 247
    :cond_0
    if-nez p1, :cond_1

    .line 248
    const-string v2, "Null URL provided. Endpoint will not be logged"

    invoke-static {v2}, Lcom/crittercism/internal/cc;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 253
    :cond_1
    :try_start_0
    new-instance v13, Lcom/crittercism/internal/bj;

    move-object/from16 v0, p9

    invoke-direct {v13, v0}, Lcom/crittercism/internal/bj;-><init>(Ljava/lang/Throwable;)V

    .line 254
    sget-object v3, Lcom/crittercism/app/Crittercism;->a:Lcom/crittercism/internal/am;

    invoke-virtual {p1}, Ljava/net/URL;->toExternalForm()Ljava/lang/String;

    move-result-object v5

    move-object v4, p0

    move-wide/from16 v6, p2

    move-wide/from16 v8, p4

    move-wide/from16 v10, p6

    move/from16 v12, p8

    invoke-virtual/range {v3 .. v13}, Lcom/crittercism/internal/am;->a(Ljava/lang/String;Ljava/lang/String;JJJILcom/crittercism/internal/bj;)V
    :try_end_0
    .catch Ljava/lang/ThreadDeath; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 256
    :catch_0
    move-exception v2

    throw v2

    .line 258
    :catch_1
    move-exception v2

    invoke-static {v2}, Lcom/crittercism/internal/cc;->b(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static sendAppLoadData()V
    .locals 2

    .prologue
    .line 149
    sget-object v0, Lcom/crittercism/app/Crittercism;->a:Lcom/crittercism/internal/am;

    if-nez v0, :cond_1

    .line 150
    const-string v0, "sendAppLoadData"

    invoke-static {v0}, Lcom/crittercism/app/Crittercism;->a(Ljava/lang/String;)V

    .line 161
    :cond_0
    :goto_0
    return-void

    .line 155
    :cond_1
    :try_start_0
    sget-object v0, Lcom/crittercism/app/Crittercism;->a:Lcom/crittercism/internal/am;

    .line 2474
    iget-object v1, v0, Lcom/crittercism/internal/am;->m:Lcom/crittercism/internal/bn;

    if-eqz v1, :cond_0

    .line 2475
    iget-object v0, v0, Lcom/crittercism/internal/am;->m:Lcom/crittercism/internal/bn;

    invoke-virtual {v0}, Lcom/crittercism/internal/bn;->g()V
    :try_end_0
    .catch Ljava/lang/ThreadDeath; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 157
    :catch_0
    move-exception v0

    throw v0

    .line 159
    :catch_1
    move-exception v0

    invoke-static {v0}, Lcom/crittercism/internal/cc;->b(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static setLoggingLevel(Lcom/crittercism/app/Crittercism$LoggingLevel;)V
    .locals 1
    .param p0, "loggingLevel"    # Lcom/crittercism/app/Crittercism$LoggingLevel;

    .prologue
    .line 787
    :try_start_0
    invoke-static {p0}, Lcom/crittercism/internal/cc;->a(Lcom/crittercism/app/Crittercism$LoggingLevel;)V
    :try_end_0
    .catch Ljava/lang/ThreadDeath; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    .line 793
    :goto_0
    return-void

    .line 789
    :catch_0
    move-exception v0

    throw v0

    .line 791
    :catch_1
    move-exception v0

    invoke-static {v0}, Lcom/crittercism/internal/cc;->b(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static setMetadata(Lorg/json/JSONObject;)V
    .locals 1
    .param p0, "metadata"    # Lorg/json/JSONObject;

    .prologue
    .line 509
    sget-object v0, Lcom/crittercism/app/Crittercism;->a:Lcom/crittercism/internal/am;

    if-nez v0, :cond_0

    .line 510
    const-string v0, "setMetadata"

    invoke-static {v0}, Lcom/crittercism/app/Crittercism;->a(Ljava/lang/String;)V

    .line 524
    :goto_0
    return-void

    .line 512
    :cond_0
    if-nez p0, :cond_1

    .line 513
    const-string v0, "Invalid input to Crittercism.setMetadata(): null metadata parameter"

    invoke-static {v0}, Lcom/crittercism/internal/cc;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 518
    :cond_1
    :try_start_0
    sget-object v0, Lcom/crittercism/app/Crittercism;->a:Lcom/crittercism/internal/am;

    invoke-virtual {v0, p0}, Lcom/crittercism/internal/am;->a(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Ljava/lang/ThreadDeath; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 520
    :catch_0
    move-exception v0

    throw v0

    .line 522
    :catch_1
    move-exception v0

    invoke-static {v0}, Lcom/crittercism/internal/cc;->b(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static setOptOutStatus(Z)V
    .locals 3
    .param p0, "isOptedOut"    # Z

    .prologue
    .line 494
    sget-object v0, Lcom/crittercism/app/Crittercism;->a:Lcom/crittercism/internal/am;

    if-nez v0, :cond_0

    .line 495
    const-string v0, "setOptOutStatus"

    invoke-static {v0}, Lcom/crittercism/app/Crittercism;->a(Ljava/lang/String;)V

    .line 506
    :goto_0
    return-void

    .line 500
    :cond_0
    :try_start_0
    sget-object v0, Lcom/crittercism/app/Crittercism;->a:Lcom/crittercism/internal/am;

    .line 2669
    iget-object v1, v0, Lcom/crittercism/internal/am;->i:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v2, Lcom/crittercism/internal/am$7;

    invoke-direct {v2, v0, p0}, Lcom/crittercism/internal/am$7;-><init>(Lcom/crittercism/internal/am;Z)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ScheduledExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;
    :try_end_0
    .catch Ljava/lang/ThreadDeath; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 502
    :catch_0
    move-exception v0

    throw v0

    .line 504
    :catch_1
    move-exception v0

    invoke-static {v0}, Lcom/crittercism/internal/cc;->b(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static setTransactionValue(Ljava/lang/String;I)V
    .locals 1
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "value"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 712
    sget-object v0, Lcom/crittercism/app/Crittercism;->a:Lcom/crittercism/internal/am;

    if-nez v0, :cond_0

    .line 713
    const-string v0, "setTransactionValue"

    invoke-static {v0}, Lcom/crittercism/app/Crittercism;->a(Ljava/lang/String;)V

    .line 721
    :goto_0
    return-void

    .line 715
    :cond_0
    if-nez p0, :cond_1

    .line 716
    const-string v0, "Invalid input to setTransactionValue(): null name"

    invoke-static {v0}, Lcom/crittercism/internal/cc;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 720
    :cond_1
    invoke-static {p0, p1}, Lcom/crittercism/app/Crittercism;->setUserflowValue(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method public static setUserflowValue(Ljava/lang/String;I)V
    .locals 1
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "value"    # I

    .prologue
    .line 693
    sget-object v0, Lcom/crittercism/app/Crittercism;->a:Lcom/crittercism/internal/am;

    if-nez v0, :cond_0

    .line 694
    const-string v0, "setUserflowValue"

    invoke-static {v0}, Lcom/crittercism/app/Crittercism;->a(Ljava/lang/String;)V

    .line 708
    :goto_0
    return-void

    .line 696
    :cond_0
    if-nez p0, :cond_1

    .line 697
    const-string v0, "Invalid input to setUserflowValue(): null name"

    invoke-static {v0}, Lcom/crittercism/internal/cc;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 702
    :cond_1
    :try_start_0
    sget-object v0, Lcom/crittercism/app/Crittercism;->a:Lcom/crittercism/internal/am;

    invoke-virtual {v0, p0, p1}, Lcom/crittercism/internal/am;->a(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/ThreadDeath; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 704
    :catch_0
    move-exception v0

    throw v0

    .line 706
    :catch_1
    move-exception v0

    invoke-static {v0}, Lcom/crittercism/internal/cc;->b(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static setUsername(Ljava/lang/String;)V
    .locals 3
    .param p0, "username"    # Ljava/lang/String;

    .prologue
    .line 527
    sget-object v0, Lcom/crittercism/app/Crittercism;->a:Lcom/crittercism/internal/am;

    if-nez v0, :cond_0

    .line 528
    const-string v0, "setUsername"

    invoke-static {v0}, Lcom/crittercism/app/Crittercism;->a(Ljava/lang/String;)V

    .line 544
    :goto_0
    return-void

    .line 530
    :cond_0
    if-nez p0, :cond_1

    .line 531
    const-string v0, "Crittercism.setUsername() given invalid parameter: null"

    invoke-static {v0}, Lcom/crittercism/internal/cc;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 536
    :cond_1
    :try_start_0
    sget-object v0, Lcom/crittercism/app/Crittercism;->a:Lcom/crittercism/internal/am;

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "username"

    invoke-virtual {v1, v2, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/crittercism/internal/am;->a(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ThreadDeath; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_0

    .line 537
    :catch_0
    move-exception v0

    .line 538
    const-string v1, "Crittercism.setUsername()"

    invoke-static {v1, v0}, Lcom/crittercism/internal/cc;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 540
    :catch_1
    move-exception v0

    throw v0

    .line 542
    :catch_2
    move-exception v0

    invoke-static {v0}, Lcom/crittercism/internal/cc;->b(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static updateLocation(Landroid/location/Location;)V
    .locals 1
    .param p0, "curLocation"    # Landroid/location/Location;

    .prologue
    .line 761
    :try_start_0
    invoke-static {p0}, Lcom/crittercism/internal/an;->a(Landroid/location/Location;)V
    :try_end_0
    .catch Ljava/lang/ThreadDeath; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    .line 767
    :goto_0
    return-void

    .line 763
    :catch_0
    move-exception v0

    throw v0

    .line 765
    :catch_1
    move-exception v0

    invoke-static {v0}, Lcom/crittercism/internal/cc;->b(Ljava/lang/Throwable;)V

    goto :goto_0
.end method
