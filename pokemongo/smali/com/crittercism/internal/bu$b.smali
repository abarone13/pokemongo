.class final Lcom/crittercism/internal/bu$b;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/crittercism/internal/ap$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/crittercism/internal/bu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/crittercism/internal/bu;

.field private b:Lcom/crittercism/internal/ap$a;

.field private c:Lcom/crittercism/internal/ap$d;


# direct methods
.method public constructor <init>(Lcom/crittercism/internal/bu;Lcom/crittercism/internal/ap$a;Lcom/crittercism/internal/ap$d;)V
    .locals 0

    .prologue
    .line 456
    iput-object p1, p0, Lcom/crittercism/internal/bu$b;->a:Lcom/crittercism/internal/bu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 457
    iput-object p2, p0, Lcom/crittercism/internal/bu$b;->b:Lcom/crittercism/internal/ap$a;

    .line 458
    iput-object p3, p0, Lcom/crittercism/internal/bu$b;->c:Lcom/crittercism/internal/ap$d;

    .line 459
    return-void
.end method


# virtual methods
.method public final a(Lcom/crittercism/internal/ap;Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 470
    iget-object v0, p0, Lcom/crittercism/internal/bu$b;->b:Lcom/crittercism/internal/ap$a;

    invoke-virtual {v0}, Lcom/crittercism/internal/ap$a;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 471
    iget-object v1, p0, Lcom/crittercism/internal/bu$b;->a:Lcom/crittercism/internal/bu;

    iget-object v0, p0, Lcom/crittercism/internal/bu$b;->b:Lcom/crittercism/internal/ap$a;

    invoke-virtual {p1, v0}, Lcom/crittercism/internal/ap;->a(Lcom/crittercism/internal/ap$e;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 1034
    invoke-virtual {v1, v0}, Lcom/crittercism/internal/bu;->b(Z)V

    .line 476
    :cond_0
    :goto_0
    return-void

    .line 472
    :cond_1
    iget-object v0, p0, Lcom/crittercism/internal/bu$b;->c:Lcom/crittercism/internal/ap$d;

    invoke-virtual {v0}, Lcom/crittercism/internal/ap$d;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 473
    iget-object v0, p0, Lcom/crittercism/internal/bu$b;->c:Lcom/crittercism/internal/ap$d;

    invoke-virtual {p1, v0}, Lcom/crittercism/internal/ap;->a(Lcom/crittercism/internal/ap$e;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 474
    iget-object v2, p0, Lcom/crittercism/internal/bu$b;->a:Lcom/crittercism/internal/bu;

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, v0, v1, v3}, Lcom/crittercism/internal/bu;->a(JLjava/util/concurrent/TimeUnit;)V

    goto :goto_0
.end method
