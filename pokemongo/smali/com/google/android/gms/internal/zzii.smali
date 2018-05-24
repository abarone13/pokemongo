.class public Lcom/google/android/gms/internal/zzii;
.super Ljava/lang/Object;


# instance fields
.field private mHandler:Landroid/os/Handler;

.field private zzJh:Landroid/os/HandlerThread;

.field private zzJi:I

.field private final zzpd:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzii;->zzJh:Landroid/os/HandlerThread;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzii;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/zzii;->zzJi:I

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzii;->zzpd:Ljava/lang/Object;

    return-void
.end method
