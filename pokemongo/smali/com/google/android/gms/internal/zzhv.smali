.class public Lcom/google/android/gms/internal/zzhv;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzgr;
.end annotation


# instance fields
.field final zzHP:Ljava/lang/String;

.field zzId:J

.field zzIe:J

.field zzIf:I

.field zzIg:I

.field zzIh:I

.field private final zzpd:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 4

    const-wide/16 v2, -0x1

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide v2, p0, Lcom/google/android/gms/internal/zzhv;->zzId:J

    iput-wide v2, p0, Lcom/google/android/gms/internal/zzhv;->zzIe:J

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/zzhv;->zzIf:I

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzhv;->zzpd:Ljava/lang/Object;

    iput v1, p0, Lcom/google/android/gms/internal/zzhv;->zzIg:I

    iput v1, p0, Lcom/google/android/gms/internal/zzhv;->zzIh:I

    iput-object p1, p0, Lcom/google/android/gms/internal/zzhv;->zzHP:Ljava/lang/String;

    return-void
.end method
