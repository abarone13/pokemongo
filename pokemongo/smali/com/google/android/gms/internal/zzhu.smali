.class public Lcom/google/android/gms/internal/zzhu;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzgr;
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private zzGg:Z

.field private zzGh:Z

.field private final zzHP:Ljava/lang/String;

.field private final zzHQ:Lcom/google/android/gms/internal/zzhv;

.field private zzHR:Ljava/math/BigInteger;

.field private final zzHS:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final zzHT:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private zzHU:Z

.field private zzHV:I

.field private zzHW:Lcom/google/android/gms/internal/zzca;

.field private zzHX:Lcom/google/android/gms/internal/zzbk;

.field private final zzHY:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Ljava/lang/Thread;",
            ">;"
        }
    .end annotation
.end field

.field private zzHZ:Ljava/lang/Boolean;

.field private zzIa:Ljava/lang/String;

.field private zzIb:Z

.field private zzIc:Z

.field private zzpA:Z

.field private zzpb:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

.field private final zzpd:Ljava/lang/Object;

.field private zzsa:Lcom/google/android/gms/internal/zzbj;

.field private zzsb:Lcom/google/android/gms/internal/zzbi;

.field private final zzsc:Lcom/google/android/gms/internal/zzgq;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/zzid;)V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzhu;->zzpd:Ljava/lang/Object;

    sget-object v0, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzhu;->zzHR:Ljava/math/BigInteger;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzhu;->zzHS:Ljava/util/HashSet;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzhu;->zzHT:Ljava/util/HashMap;

    iput-boolean v2, p0, Lcom/google/android/gms/internal/zzhu;->zzHU:Z

    iput-boolean v3, p0, Lcom/google/android/gms/internal/zzhu;->zzGg:Z

    iput v2, p0, Lcom/google/android/gms/internal/zzhu;->zzHV:I

    iput-boolean v2, p0, Lcom/google/android/gms/internal/zzhu;->zzpA:Z

    iput-object v1, p0, Lcom/google/android/gms/internal/zzhu;->zzHW:Lcom/google/android/gms/internal/zzca;

    iput-boolean v3, p0, Lcom/google/android/gms/internal/zzhu;->zzGh:Z

    iput-object v1, p0, Lcom/google/android/gms/internal/zzhu;->zzsa:Lcom/google/android/gms/internal/zzbj;

    iput-object v1, p0, Lcom/google/android/gms/internal/zzhu;->zzHX:Lcom/google/android/gms/internal/zzbk;

    iput-object v1, p0, Lcom/google/android/gms/internal/zzhu;->zzsb:Lcom/google/android/gms/internal/zzbi;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzhu;->zzHY:Ljava/util/LinkedList;

    iput-object v1, p0, Lcom/google/android/gms/internal/zzhu;->zzsc:Lcom/google/android/gms/internal/zzgq;

    iput-object v1, p0, Lcom/google/android/gms/internal/zzhu;->zzHZ:Ljava/lang/Boolean;

    iput-boolean v2, p0, Lcom/google/android/gms/internal/zzhu;->zzIb:Z

    iput-boolean v2, p0, Lcom/google/android/gms/internal/zzhu;->zzIc:Z

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzid;->zzgD()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzhu;->zzHP:Ljava/lang/String;

    new-instance v0, Lcom/google/android/gms/internal/zzhv;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzhu;->zzHP:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/zzhv;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzhu;->zzHQ:Lcom/google/android/gms/internal/zzhv;

    return-void
.end method


# virtual methods
.method public zzb(Ljava/lang/Boolean;)V
    .locals 2

    iget-object v1, p0, Lcom/google/android/gms/internal/zzhu;->zzpd:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iput-object p1, p0, Lcom/google/android/gms/internal/zzhu;->zzHZ:Ljava/lang/Boolean;

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public zzc(Ljava/lang/Throwable;Z)V
    .locals 4

    const/4 v3, 0x0

    new-instance v0, Lcom/google/android/gms/internal/zzgq;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzhu;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzhu;->zzpb:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    invoke-direct {v0, v1, v2, v3, v3}, Lcom/google/android/gms/internal/zzgq;-><init>(Landroid/content/Context;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;Ljava/lang/Thread$UncaughtExceptionHandler;Ljava/lang/Thread$UncaughtExceptionHandler;)V

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/zzgq;->zza(Ljava/lang/Throwable;Z)V

    return-void
.end method

.method public zzd(ILjava/lang/String;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzhu;->zzpb:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    iget-boolean v0, v0, Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;->zzJx:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzhu;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    :goto_0
    if-nez v0, :cond_1

    :goto_1
    return-object p2

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzhu;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/common/GooglePlayServicesUtil;->getRemoteResource(Landroid/content/Context;)Landroid/content/res/Resources;

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    goto :goto_1
.end method

.method public zzgo()Lcom/google/android/gms/internal/zzca;
    .locals 2

    iget-object v1, p0, Lcom/google/android/gms/internal/zzhu;->zzpd:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzhu;->zzHW:Lcom/google/android/gms/internal/zzca;

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public zzgr()Ljava/lang/String;
    .locals 2

    iget-object v1, p0, Lcom/google/android/gms/internal/zzhu;->zzpd:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzhu;->zzIa:Ljava/lang/String;

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public zzgs()Ljava/lang/Boolean;
    .locals 2

    iget-object v1, p0, Lcom/google/android/gms/internal/zzhu;->zzpd:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzhu;->zzHZ:Ljava/lang/Boolean;

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
