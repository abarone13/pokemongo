.class public Lcom/crittercism/integrations/PluginException;
.super Ljava/lang/Throwable;


# static fields
.field private static final EMPTY_STRING:Ljava/lang/String; = ""

.field private static final serialVersionUID:J = -0x1b060f4d0d50af6bL


# instance fields
.field private exceptionName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "stack"    # Ljava/lang/String;

    .prologue
    .line 15
    const-string v0, ""

    invoke-direct {p0, v0, p1, p2}, Lcom/crittercism/integrations/PluginException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "msg"    # Ljava/lang/String;
    .param p3, "stack"    # Ljava/lang/String;

    .prologue
    .line 19
    invoke-direct {p0, p2}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    .line 12
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/crittercism/integrations/PluginException;->exceptionName:Ljava/lang/String;

    .line 20
    invoke-static {p1}, Lcom/crittercism/integrations/PluginException;->checkString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p2}, Lcom/crittercism/integrations/PluginException;->checkString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/crittercism/integrations/PluginException;->setExceptionName(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    invoke-static {p3}, Lcom/crittercism/integrations/PluginException;->checkStringStack(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/crittercism/integrations/PluginException;->createStackTraceArrayFromStack([Ljava/lang/String;)[Ljava/lang/StackTraceElement;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/crittercism/integrations/PluginException;->setStackTrace([Ljava/lang/StackTraceElement;)V

    .line 22
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[I)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "msg"    # Ljava/lang/String;
    .param p3, "classStackElems"    # [Ljava/lang/String;
    .param p4, "methodStackElems"    # [Ljava/lang/String;
    .param p5, "fileStackElems"    # [Ljava/lang/String;
    .param p6, "lineNumberStackElems"    # [I

    .prologue
    .line 31
    invoke-direct {p0, p2}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    .line 12
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/crittercism/integrations/PluginException;->exceptionName:Ljava/lang/String;

    .line 32
    invoke-static {p1}, Lcom/crittercism/integrations/PluginException;->checkString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p2}, Lcom/crittercism/integrations/PluginException;->checkString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/crittercism/integrations/PluginException;->setExceptionName(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    invoke-direct {p0, p3, p4, p5, p6}, Lcom/crittercism/integrations/PluginException;->createStackTraceArrayFromStack([Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[I)[Ljava/lang/StackTraceElement;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/crittercism/integrations/PluginException;->setStackTrace([Ljava/lang/StackTraceElement;)V

    .line 35
    return-void
.end method

.method private static checkString(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 128
    if-nez p0, :cond_0

    .line 129
    const-string p0, ""

    .line 131
    .end local p0    # "s":Ljava/lang/String;
    :cond_0
    return-object p0
.end method

.method private static checkStringStack(Ljava/lang/String;)[Ljava/lang/String;
    .locals 1
    .param p0, "stack"    # Ljava/lang/String;

    .prologue
    .line 139
    if-nez p0, :cond_0

    .line 140
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    .line 142
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "\\r?\\n"

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private createStackTraceArrayFromStack([Ljava/lang/String;)[Ljava/lang/StackTraceElement;
    .locals 9
    .param p1, "stack"    # [Ljava/lang/String;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 62
    const/4 v2, 0x0

    .line 66
    array-length v3, p1

    const/4 v4, 0x2

    if-lt v3, v4, :cond_5

    aget-object v3, p1, v1

    if-eqz v3, :cond_5

    aget-object v3, p1, v0

    if-eqz v3, :cond_5

    .line 67
    aget-object v3, p1, v1

    aget-object v4, p1, v0

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 69
    array-length v2, p1

    add-int/lit8 v2, v2, -0x1

    new-array v2, v2, [Ljava/lang/StackTraceElement;

    move v3, v0

    move-object v0, v2

    .line 73
    :goto_0
    if-nez v3, :cond_0

    .line 74
    array-length v0, p1

    new-array v0, v0, [Ljava/lang/StackTraceElement;

    .line 77
    :cond_0
    :goto_1
    array-length v2, p1

    if-ge v1, v2, :cond_4

    .line 78
    if-nez v1, :cond_1

    if-nez v3, :cond_2

    .line 82
    :cond_1
    if-eqz v3, :cond_3

    add-int/lit8 v2, v1, -0x1

    .line 85
    :goto_2
    new-instance v4, Ljava/lang/StackTraceElement;

    const-string v5, ""

    aget-object v6, p1, v1

    const-string v7, ""

    const/4 v8, -0x1

    invoke-direct {v4, v5, v6, v7, v8}, Ljava/lang/StackTraceElement;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    aput-object v4, v0, v2

    .line 77
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    move v2, v1

    .line 82
    goto :goto_2

    .line 89
    :cond_4
    return-object v0

    :cond_5
    move v3, v1

    move-object v0, v2

    goto :goto_0
.end method

.method private createStackTraceArrayFromStack([Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[I)[Ljava/lang/StackTraceElement;
    .locals 8
    .param p1, "classStackElems"    # [Ljava/lang/String;
    .param p2, "methodStackElems"    # [Ljava/lang/String;
    .param p3, "fileStackElems"    # [Ljava/lang/String;
    .param p4, "lineNumberStackElems"    # [I

    .prologue
    .line 105
    array-length v2, p1

    .line 106
    new-array v3, v2, [Ljava/lang/StackTraceElement;

    .line 108
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_1

    .line 109
    aget v0, p4, v1

    .line 110
    if-gtz v0, :cond_0

    .line 113
    const/4 v0, -0x1

    .line 115
    :cond_0
    new-instance v4, Ljava/lang/StackTraceElement;

    aget-object v5, p1, v1

    .line 116
    invoke-static {v5}, Lcom/crittercism/integrations/PluginException;->checkString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aget-object v6, p2, v1

    .line 117
    invoke-static {v6}, Lcom/crittercism/integrations/PluginException;->checkString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    aget-object v7, p3, v1

    .line 118
    invoke-static {v7}, Lcom/crittercism/integrations/PluginException;->checkString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v4, v5, v6, v7, v0}, Ljava/lang/StackTraceElement;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    aput-object v4, v3, v1

    .line 108
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 121
    :cond_1
    return-object v3
.end method


# virtual methods
.method public getExceptionName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/crittercism/integrations/PluginException;->exceptionName:Ljava/lang/String;

    return-object v0
.end method

.method public setExceptionName(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "msg"    # Ljava/lang/String;

    .prologue
    .line 47
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 48
    iput-object p1, p0, Lcom/crittercism/integrations/PluginException;->exceptionName:Ljava/lang/String;

    .line 52
    :goto_0
    return-void

    .line 50
    :cond_0
    const-string v0, "JavaScript Exception"

    iput-object v0, p0, Lcom/crittercism/integrations/PluginException;->exceptionName:Ljava/lang/String;

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 151
    invoke-virtual {p0}, Lcom/crittercism/integrations/PluginException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v1

    .line 152
    invoke-virtual {p0}, Lcom/crittercism/integrations/PluginException;->getExceptionName()Ljava/lang/String;

    move-result-object v0

    .line 153
    if-nez v1, :cond_0

    .line 156
    :goto_0
    return-object v0

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ": "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
