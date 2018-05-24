.class public final Lcom/crittercism/internal/cb$3;
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
.field final synthetic a:Ljava/util/Date;

.field final synthetic b:Lcom/crittercism/internal/cb;


# direct methods
.method public constructor <init>(Lcom/crittercism/internal/cb;Ljava/util/Date;)V
    .locals 0

    .prologue
    .line 298
    iput-object p1, p0, Lcom/crittercism/internal/cb$3;->b:Lcom/crittercism/internal/cb;

    iput-object p2, p0, Lcom/crittercism/internal/cb$3;->a:Ljava/util/Date;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .prologue
    .line 301
    new-instance v0, Lcom/crittercism/internal/ca$a;

    invoke-direct {v0}, Lcom/crittercism/internal/ca$a;-><init>()V

    const-string v1, "App Load"

    .line 1106
    iput-object v1, v0, Lcom/crittercism/internal/ca$a;->a:Ljava/lang/String;

    .line 302
    iget-object v1, p0, Lcom/crittercism/internal/cb$3;->a:Ljava/util/Date;

    .line 303
    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    .line 1111
    iput-wide v2, v0, Lcom/crittercism/internal/ca$a;->b:J

    .line 1116
    const/4 v1, -0x1

    iput v1, v0, Lcom/crittercism/internal/ca$a;->c:I

    .line 1121
    const-wide v2, 0x7fffffffffffffffL

    iput-wide v2, v0, Lcom/crittercism/internal/ca$a;->d:J

    .line 305
    sget v1, Lcom/crittercism/internal/ca$e;->c:I

    .line 1126
    iput v1, v0, Lcom/crittercism/internal/ca$a;->e:I

    .line 307
    invoke-virtual {v0}, Lcom/crittercism/internal/ca$a;->a()Lcom/crittercism/internal/ca;

    move-result-object v0

    .line 309
    iget-object v1, p0, Lcom/crittercism/internal/cb$3;->b:Lcom/crittercism/internal/cb;

    .line 2034
    iget-object v1, v1, Lcom/crittercism/internal/cb;->a:Ljava/util/HashMap;

    .line 2289
    iget-object v2, v0, Lcom/crittercism/internal/ca;->a:Ljava/lang/String;

    .line 309
    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 310
    return-void
.end method
