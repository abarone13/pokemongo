.class final Lcom/crittercism/internal/cf$a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/crittercism/internal/cg;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/crittercism/internal/cf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/crittercism/internal/cf;


# direct methods
.method private constructor <init>(Lcom/crittercism/internal/cf;)V
    .locals 0

    .prologue
    .line 109
    iput-object p1, p0, Lcom/crittercism/internal/cf$a;->a:Lcom/crittercism/internal/cf;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/crittercism/internal/cf;B)V
    .locals 0

    .prologue
    .line 109
    invoke-direct {p0, p1}, Lcom/crittercism/internal/cf$a;-><init>(Lcom/crittercism/internal/cf;)V

    return-void
.end method


# virtual methods
.method public final a()Ljava/util/Date;
    .locals 1

    .prologue
    .line 113
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    return-object v0
.end method
