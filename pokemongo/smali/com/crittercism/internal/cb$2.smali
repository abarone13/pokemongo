.class public final Lcom/crittercism/internal/cb$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/crittercism/internal/cb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/crittercism/internal/ca;

.field final synthetic b:Lcom/crittercism/internal/cb;


# direct methods
.method public constructor <init>(Lcom/crittercism/internal/cb;Lcom/crittercism/internal/ca;)V
    .locals 0

    .prologue
    .line 134
    iput-object p1, p0, Lcom/crittercism/internal/cb$2;->b:Lcom/crittercism/internal/cb;

    iput-object p2, p0, Lcom/crittercism/internal/cb$2;->a:Lcom/crittercism/internal/ca;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 137
    iget-object v0, p0, Lcom/crittercism/internal/cb$2;->b:Lcom/crittercism/internal/cb;

    .line 1034
    iget-object v0, v0, Lcom/crittercism/internal/cb;->d:Lcom/crittercism/internal/ap;

    .line 137
    sget-object v1, Lcom/crittercism/internal/ap;->y:Lcom/crittercism/internal/ap$a;

    invoke-virtual {v0, v1}, Lcom/crittercism/internal/ap;->a(Lcom/crittercism/internal/ap$e;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 138
    iget-object v1, p0, Lcom/crittercism/internal/cb$2;->a:Lcom/crittercism/internal/ca;

    iget-object v0, p0, Lcom/crittercism/internal/cb$2;->b:Lcom/crittercism/internal/cb;

    .line 2034
    iget-object v0, v0, Lcom/crittercism/internal/cb;->d:Lcom/crittercism/internal/ap;

    .line 138
    sget-object v2, Lcom/crittercism/internal/ap;->B:Lcom/crittercism/internal/ap$b;

    invoke-virtual {v0, v2}, Lcom/crittercism/internal/ap;->a(Lcom/crittercism/internal/ap$e;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 2318
    iput v0, v1, Lcom/crittercism/internal/ca;->j:F

    .line 139
    iget-object v0, p0, Lcom/crittercism/internal/cb$2;->b:Lcom/crittercism/internal/cb;

    .line 3034
    iget-object v0, v0, Lcom/crittercism/internal/cb;->c:Lcom/crittercism/internal/av;

    .line 139
    iget-object v1, p0, Lcom/crittercism/internal/cb$2;->a:Lcom/crittercism/internal/ca;

    invoke-interface {v0, v1}, Lcom/crittercism/internal/av;->a(Lcom/crittercism/internal/bf;)Z

    .line 141
    :cond_0
    return-void
.end method