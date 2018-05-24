.class public Lcom/nianticproject/holoholo/libholoholo/appblacklist/AppBlacklistChecker;
.super Ljava/lang/Object;
.source "AppBlacklistChecker.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "AppBlacklistChecker"


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/nianticproject/holoholo/libholoholo/appblacklist/AppBlacklistChecker;->mContext:Landroid/content/Context;

    .line 27
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/nianticproject/holoholo/libholoholo/appblacklist/AppBlacklistChecker;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 20
    new-instance v0, Lcom/nianticproject/holoholo/libholoholo/appblacklist/AppBlacklistChecker;

    invoke-direct {v0, p0}, Lcom/nianticproject/holoholo/libholoholo/appblacklist/AppBlacklistChecker;-><init>(Landroid/content/Context;)V

    return-object v0
.end method


# virtual methods
.method public installedBlacklistedApps([Ljava/lang/String;)[Ljava/lang/String;
    .locals 7
    .param p1, "blacklist"    # [Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 38
    iget-object v3, p0, Lcom/nianticproject/holoholo/libholoholo/appblacklist/AppBlacklistChecker;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 39
    .local v1, "packageManager":Landroid/content/pm/PackageManager;
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 41
    .local v0, "installedApps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    array-length v5, p1

    move v3, v4

    :goto_0
    if-ge v3, v5, :cond_0

    aget-object v2, p1, v3

    .line 43
    .local v2, "packageName":Ljava/lang/String;
    const/4 v6, 0x1

    :try_start_0
    invoke-virtual {v1, v2, v6}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    .line 44
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 41
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 47
    .end local v2    # "packageName":Ljava/lang/String;
    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_1

    .line 48
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v3, v3, [Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    .line 51
    :goto_2
    return-object v3

    :cond_1
    new-array v3, v4, [Ljava/lang/String;

    goto :goto_2

    .line 45
    .restart local v2    # "packageName":Ljava/lang/String;
    :catch_0
    move-exception v6

    goto :goto_1
.end method
