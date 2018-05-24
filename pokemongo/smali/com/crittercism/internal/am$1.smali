.class final Lcom/crittercism/internal/am$1;
.super Lcom/crittercism/internal/al;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/crittercism/internal/am;-><init>(Landroid/app/Application;Ljava/lang/String;Lcom/crittercism/app/CrittercismConfig;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/crittercism/internal/am;


# direct methods
.method constructor <init>(Lcom/crittercism/internal/am;Ljava/lang/Thread$UncaughtExceptionHandler;)V
    .locals 0

    .prologue
    .line 196
    iput-object p1, p0, Lcom/crittercism/internal/am$1;->a:Lcom/crittercism/internal/am;

    invoke-direct {p0, p2}, Lcom/crittercism/internal/al;-><init>(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Throwable;)V
    .locals 1

    .prologue
    .line 199
    iget-object v0, p0, Lcom/crittercism/internal/am$1;->a:Lcom/crittercism/internal/am;

    invoke-virtual {v0, p1}, Lcom/crittercism/internal/am;->a(Ljava/lang/Throwable;)V

    .line 200
    return-void
.end method
