.class public final Lcom/upsight/android/internal/persistence/storable/StorableModule;
.super Ljava/lang/Object;
.source "StorableModule.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public provideStorableInfoCache(Lcom/google/gson/Gson;)Lcom/upsight/android/internal/persistence/storable/StorableInfoCache;
    .locals 1
    .param p1, "gson"    # Lcom/google/gson/Gson;

    .prologue
    .line 23
    new-instance v0, Lcom/upsight/android/internal/persistence/storable/StorableInfoCache;

    invoke-direct {v0, p1}, Lcom/upsight/android/internal/persistence/storable/StorableInfoCache;-><init>(Lcom/google/gson/Gson;)V

    return-object v0
.end method
