.class final Lcom/crittercism/internal/am$c;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/crittercism/internal/am;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "c"
.end annotation


# instance fields
.field private a:Lcom/crittercism/app/CrittercismCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/crittercism/app/CrittercismCallback",
            "<",
            "Lcom/crittercism/app/CrashData;",
            ">;"
        }
    .end annotation
.end field

.field private b:Lcom/crittercism/app/CrashData;


# direct methods
.method public constructor <init>(Lcom/crittercism/app/CrittercismCallback;Lcom/crittercism/app/CrashData;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/crittercism/app/CrittercismCallback",
            "<",
            "Lcom/crittercism/app/CrashData;",
            ">;",
            "Lcom/crittercism/app/CrashData;",
            ")V"
        }
    .end annotation

    .prologue
    .line 733
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 734
    iput-object p1, p0, Lcom/crittercism/internal/am$c;->a:Lcom/crittercism/app/CrittercismCallback;

    .line 735
    iput-object p2, p0, Lcom/crittercism/internal/am$c;->b:Lcom/crittercism/app/CrashData;

    .line 736
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 740
    iget-object v0, p0, Lcom/crittercism/internal/am$c;->a:Lcom/crittercism/app/CrittercismCallback;

    iget-object v1, p0, Lcom/crittercism/internal/am$c;->b:Lcom/crittercism/app/CrashData;

    invoke-interface {v0, v1}, Lcom/crittercism/app/CrittercismCallback;->onDataReceived(Ljava/lang/Object;)V

    .line 741
    return-void
.end method
