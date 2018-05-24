.class public Lcom/nianticproject/holoholo/libholoholo/memory/MemoryManager;
.super Ljava/lang/Object;
.source "MemoryManager.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "MemoryManager"


# instance fields
.field private mActivityManager:Landroid/app/ActivityManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    const-string v0, "activity"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    iput-object v0, p0, Lcom/nianticproject/holoholo/libholoholo/memory/MemoryManager;->mActivityManager:Landroid/app/ActivityManager;

    .line 27
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/nianticproject/holoholo/libholoholo/memory/MemoryManager;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 20
    new-instance v0, Lcom/nianticproject/holoholo/libholoholo/memory/MemoryManager;

    invoke-direct {v0, p0}, Lcom/nianticproject/holoholo/libholoholo/memory/MemoryManager;-><init>(Landroid/content/Context;)V

    return-object v0
.end method


# virtual methods
.method public getBytesRamUsed()J
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 35
    iget-object v2, p0, Lcom/nianticproject/holoholo/libholoholo/memory/MemoryManager;->mActivityManager:Landroid/app/ActivityManager;

    const/4 v3, 0x1

    new-array v3, v3, [I

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v4

    aput v4, v3, v5

    invoke-virtual {v2, v3}, Landroid/app/ActivityManager;->getProcessMemoryInfo([I)[Landroid/os/Debug$MemoryInfo;

    move-result-object v1

    .line 36
    .local v1, "infos":[Landroid/os/Debug$MemoryInfo;
    aget-object v0, v1, v5

    .line 39
    .local v0, "info":Landroid/os/Debug$MemoryInfo;
    invoke-virtual {v0}, Landroid/os/Debug$MemoryInfo;->getTotalPss()I

    move-result v2

    int-to-long v2, v2

    const-wide/16 v4, 0x400

    mul-long/2addr v2, v4

    return-wide v2
.end method
