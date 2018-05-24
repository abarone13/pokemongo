.class public Lcom/google/android/gms/ads/internal/client/zze;
.super Lcom/google/android/gms/dynamic/zzg;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzgr;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/dynamic/zzg",
        "<",
        "Lcom/google/android/gms/ads/internal/client/zzt;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "com.google.android.gms.ads.AdManagerCreatorImpl"

    invoke-direct {p0, v0}, Lcom/google/android/gms/dynamic/zzg;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected synthetic zzd(Landroid/os/IBinder;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/ads/internal/client/zze;->zze(Landroid/os/IBinder;)Lcom/google/android/gms/ads/internal/client/zzt;

    move-result-object v0

    return-object v0
.end method

.method protected zze(Landroid/os/IBinder;)Lcom/google/android/gms/ads/internal/client/zzt;
    .locals 1

    invoke-static {p1}, Lcom/google/android/gms/ads/internal/client/zzt$zza;->zzl(Landroid/os/IBinder;)Lcom/google/android/gms/ads/internal/client/zzt;

    move-result-object v0

    return-object v0
.end method
