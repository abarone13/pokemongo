.class public Lcom/google/android/gms/internal/zzca;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzgr;
.end annotation


# instance fields
.field zzvD:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Lcom/google/android/gms/internal/zzcg;",
            ">;"
        }
    .end annotation
.end field

.field zzvG:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/zzcd;",
            ">;"
        }
    .end annotation
.end field


# virtual methods
.method public zzR(Ljava/lang/String;)Lcom/google/android/gms/internal/zzcd;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzca;->zzvG:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzcd;

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/google/android/gms/internal/zzcd;->zzvK:Lcom/google/android/gms/internal/zzcd;

    goto :goto_0
.end method

.method public zza(Lcom/google/android/gms/internal/zzcg;)Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzca;->zzvD:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0, p1}, Ljava/util/concurrent/BlockingQueue;->offer(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
