.class public final Landroid/support/customtabs/CustomTabsIntent;
.super Ljava/lang/Object;
.source "CustomTabsIntent.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/customtabs/CustomTabsIntent$Builder;
    }
.end annotation


# instance fields
.field public final intent:Landroid/content/Intent;

.field public final startAnimationBundle:Landroid/os/Bundle;


# direct methods
.method private constructor <init>(Landroid/content/Intent;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "startAnimationBundle"    # Landroid/os/Bundle;

    .prologue
    .line 265
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 266
    iput-object p1, p0, Landroid/support/customtabs/CustomTabsIntent;->intent:Landroid/content/Intent;

    .line 267
    iput-object p2, p0, Landroid/support/customtabs/CustomTabsIntent;->startAnimationBundle:Landroid/os/Bundle;

    .line 268
    return-void
.end method

.method synthetic constructor <init>(Landroid/content/Intent;Landroid/os/Bundle;Landroid/support/customtabs/CustomTabsIntent$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/content/Intent;
    .param p2, "x1"    # Landroid/os/Bundle;
    .param p3, "x2"    # Landroid/support/customtabs/CustomTabsIntent$1;

    .prologue
    .line 46
    invoke-direct {p0, p1, p2}, Landroid/support/customtabs/CustomTabsIntent;-><init>(Landroid/content/Intent;Landroid/os/Bundle;)V

    return-void
.end method


# virtual methods
.method public launchUrl(Landroid/content/Context;Landroid/net/Uri;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "url"    # Landroid/net/Uri;

    .prologue
    .line 261
    iget-object v0, p0, Landroid/support/customtabs/CustomTabsIntent;->intent:Landroid/content/Intent;

    invoke-virtual {v0, p2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 262
    iget-object v0, p0, Landroid/support/customtabs/CustomTabsIntent;->intent:Landroid/content/Intent;

    iget-object v1, p0, Landroid/support/customtabs/CustomTabsIntent;->startAnimationBundle:Landroid/os/Bundle;

    invoke-static {p1, v0, v1}, Landroid/support/v4/content/ContextCompat;->startActivity(Landroid/content/Context;Landroid/content/Intent;Landroid/os/Bundle;)V

    .line 263
    return-void
.end method
