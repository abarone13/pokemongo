.class public abstract Lcom/google/android/gms/internal/zzhz;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzgr;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private volatile zzIl:Ljava/lang/Thread;

.field private zzIm:Z

.field private final zzx:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/zzhz$1;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/zzhz$1;-><init>(Lcom/google/android/gms/internal/zzhz;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzhz;->zzx:Ljava/lang/Runnable;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzhz;->zzIm:Z

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzhz;Ljava/lang/Thread;)Ljava/lang/Thread;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzhz;->zzIl:Ljava/lang/Thread;

    return-object p1
.end method


# virtual methods
.method public abstract zzbn()V
.end method

.method public final zzgz()Ljava/util/concurrent/Future;
    .locals 2

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzhz;->zzIm:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/android/gms/internal/zzhz;->zzx:Ljava/lang/Runnable;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/zzic;->zza(ILjava/lang/Runnable;)Lcom/google/android/gms/internal/zziq;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzhz;->zzx:Ljava/lang/Runnable;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzic;->zza(Ljava/lang/Runnable;)Lcom/google/android/gms/internal/zziq;

    move-result-object v0

    goto :goto_0
.end method
