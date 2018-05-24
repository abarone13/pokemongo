.class final Lcom/crittercism/internal/ca$b;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/crittercism/internal/ca;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/crittercism/internal/ca$b;",
        ">;"
    }
.end annotation


# instance fields
.field public a:I

.field public b:J


# direct methods
.method public constructor <init>(IJ)V
    .locals 0

    .prologue
    .line 484
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 485
    iput p1, p0, Lcom/crittercism/internal/ca$b;->a:I

    .line 486
    iput-wide p2, p0, Lcom/crittercism/internal/ca$b;->b:J

    .line 487
    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 2

    .prologue
    .line 489
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 490
    invoke-static {}, Lcom/crittercism/internal/ca$c;->a()[I

    move-result-object v0

    const-string v1, "type"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    aget v0, v0, v1

    iput v0, p0, Lcom/crittercism/internal/ca$b;->a:I

    .line 491
    const-string v0, "time"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/crittercism/internal/ca$b;->b:J

    .line 492
    return-void
.end method


# virtual methods
.method public final bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 4

    .prologue
    .line 480
    check-cast p1, Lcom/crittercism/internal/ca$b;

    .line 1502
    iget-wide v0, p0, Lcom/crittercism/internal/ca$b;->b:J

    iget-wide v2, p1, Lcom/crittercism/internal/ca$b;->b:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    .line 1503
    const/4 v0, -0x1

    .line 1505
    :goto_0
    return v0

    .line 1504
    :cond_0
    iget-wide v0, p0, Lcom/crittercism/internal/ca$b;->b:J

    iget-wide v2, p1, Lcom/crittercism/internal/ca$b;->b:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    .line 1505
    const/4 v0, 0x0

    goto :goto_0

    .line 1507
    :cond_1
    const/4 v0, 0x1

    .line 480
    goto :goto_0
.end method
