.class final Lcom/crittercism/internal/am$9;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/crittercism/internal/am;->a(Lcom/crittercism/app/CrittercismCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/crittercism/app/CrittercismCallback;

.field final synthetic b:Lcom/crittercism/internal/am;


# direct methods
.method constructor <init>(Lcom/crittercism/internal/am;Lcom/crittercism/app/CrittercismCallback;)V
    .locals 0

    .prologue
    .line 746
    iput-object p1, p0, Lcom/crittercism/internal/am$9;->b:Lcom/crittercism/internal/am;

    iput-object p2, p0, Lcom/crittercism/internal/am$9;->a:Lcom/crittercism/app/CrittercismCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 749
    sget-object v0, Lcom/crittercism/internal/by;->a:Lcom/crittercism/app/CrashData;

    .line 750
    if-eqz v0, :cond_0

    .line 751
    invoke-virtual {v0}, Lcom/crittercism/app/CrashData;->copy()Lcom/crittercism/app/CrashData;

    move-result-object v0

    .line 753
    :cond_0
    new-instance v1, Lcom/crittercism/internal/am$c;

    iget-object v2, p0, Lcom/crittercism/internal/am$9;->a:Lcom/crittercism/app/CrittercismCallback;

    invoke-direct {v1, v2, v0}, Lcom/crittercism/internal/am$c;-><init>(Lcom/crittercism/app/CrittercismCallback;Lcom/crittercism/app/CrashData;)V

    .line 754
    iget-object v0, p0, Lcom/crittercism/internal/am$9;->b:Lcom/crittercism/internal/am;

    .line 1065
    iget-object v0, v0, Lcom/crittercism/internal/am;->h:Ljava/util/concurrent/ScheduledExecutorService;

    .line 754
    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 755
    return-void
.end method
