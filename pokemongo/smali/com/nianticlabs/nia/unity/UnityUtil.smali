.class public Lcom/nianticlabs/nia/unity/UnityUtil;
.super Ljava/lang/Object;
.source "UnityUtil.java"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 5
    const-string v0, "NianticLabsPlugin"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 6
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static init()V
    .locals 0

    .prologue
    .line 13
    invoke-static {}, Lcom/nianticlabs/nia/unity/UnityUtil;->nativeInit()V

    .line 14
    return-void
.end method

.method private static native nativeInit()V
.end method
