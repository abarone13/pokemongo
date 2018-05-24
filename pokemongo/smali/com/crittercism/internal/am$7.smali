.class public final Lcom/crittercism/internal/am$7;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/crittercism/internal/am;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/crittercism/internal/am;


# direct methods
.method public constructor <init>(Lcom/crittercism/internal/am;Z)V
    .locals 0

    .prologue
    .line 669
    iput-object p1, p0, Lcom/crittercism/internal/am$7;->b:Lcom/crittercism/internal/am;

    iput-boolean p2, p0, Lcom/crittercism/internal/am$7;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 672
    iget-object v0, p0, Lcom/crittercism/internal/am$7;->b:Lcom/crittercism/internal/am;

    .line 1065
    iget-object v0, v0, Lcom/crittercism/internal/am;->a:Landroid/app/Application;

    .line 673
    new-instance v3, Lcom/crittercism/internal/bx;

    invoke-direct {v3, v0}, Lcom/crittercism/internal/bx;-><init>(Landroid/content/Context;)V

    .line 674
    iget-boolean v0, p0, Lcom/crittercism/internal/am$7;->a:Z

    .line 2041
    iget-object v3, v3, Lcom/crittercism/internal/bx;->a:Landroid/content/SharedPreferences;

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string v4, "isOptedOut"

    invoke-interface {v3, v4, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 676
    iget-object v0, p0, Lcom/crittercism/internal/am$7;->b:Lcom/crittercism/internal/am;

    .line 2065
    iget-object v3, v0, Lcom/crittercism/internal/am;->j:Lcom/crittercism/internal/ap;

    .line 676
    sget-object v4, Lcom/crittercism/internal/ap;->a:Lcom/crittercism/internal/ap$a;

    iget-boolean v0, p0, Lcom/crittercism/internal/am$7;->a:Z

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v3, v4, v0}, Lcom/crittercism/internal/ap;->a(Lcom/crittercism/internal/ap$e;Ljava/lang/Object;)V

    .line 677
    iget-object v0, p0, Lcom/crittercism/internal/am$7;->b:Lcom/crittercism/internal/am;

    .line 3065
    iget-object v3, v0, Lcom/crittercism/internal/am;->j:Lcom/crittercism/internal/ap;

    .line 677
    sget-object v4, Lcom/crittercism/internal/ap;->e:Lcom/crittercism/internal/ap$a;

    iget-boolean v0, p0, Lcom/crittercism/internal/am$7;->a:Z

    if-nez v0, :cond_1

    move v0, v1

    :goto_1
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v3, v4, v0}, Lcom/crittercism/internal/ap;->a(Lcom/crittercism/internal/ap$e;Ljava/lang/Object;)V

    .line 678
    iget-object v0, p0, Lcom/crittercism/internal/am$7;->b:Lcom/crittercism/internal/am;

    .line 4065
    iget-object v3, v0, Lcom/crittercism/internal/am;->j:Lcom/crittercism/internal/ap;

    .line 678
    sget-object v4, Lcom/crittercism/internal/ap;->m:Lcom/crittercism/internal/ap$a;

    iget-boolean v0, p0, Lcom/crittercism/internal/am$7;->a:Z

    if-nez v0, :cond_2

    move v0, v1

    :goto_2
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v3, v4, v0}, Lcom/crittercism/internal/ap;->a(Lcom/crittercism/internal/ap$e;Ljava/lang/Object;)V

    .line 679
    iget-object v0, p0, Lcom/crittercism/internal/am$7;->b:Lcom/crittercism/internal/am;

    .line 5065
    iget-object v3, v0, Lcom/crittercism/internal/am;->j:Lcom/crittercism/internal/ap;

    .line 679
    sget-object v4, Lcom/crittercism/internal/ap;->i:Lcom/crittercism/internal/ap$a;

    iget-boolean v0, p0, Lcom/crittercism/internal/am$7;->a:Z

    if-nez v0, :cond_3

    move v0, v1

    :goto_3
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v3, v4, v0}, Lcom/crittercism/internal/ap;->a(Lcom/crittercism/internal/ap$e;Ljava/lang/Object;)V

    .line 680
    iget-object v0, p0, Lcom/crittercism/internal/am$7;->b:Lcom/crittercism/internal/am;

    .line 6065
    iget-object v3, v0, Lcom/crittercism/internal/am;->j:Lcom/crittercism/internal/ap;

    .line 680
    sget-object v4, Lcom/crittercism/internal/ap;->q:Lcom/crittercism/internal/ap$a;

    iget-boolean v0, p0, Lcom/crittercism/internal/am$7;->a:Z

    if-nez v0, :cond_4

    move v0, v1

    :goto_4
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v3, v4, v0}, Lcom/crittercism/internal/ap;->a(Lcom/crittercism/internal/ap$e;Ljava/lang/Object;)V

    .line 681
    iget-object v0, p0, Lcom/crittercism/internal/am$7;->b:Lcom/crittercism/internal/am;

    .line 7065
    iget-object v3, v0, Lcom/crittercism/internal/am;->j:Lcom/crittercism/internal/ap;

    .line 681
    sget-object v4, Lcom/crittercism/internal/ap;->u:Lcom/crittercism/internal/ap$a;

    iget-boolean v0, p0, Lcom/crittercism/internal/am$7;->a:Z

    if-nez v0, :cond_5

    move v0, v1

    :goto_5
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v3, v4, v0}, Lcom/crittercism/internal/ap;->a(Lcom/crittercism/internal/ap$e;Ljava/lang/Object;)V

    .line 682
    iget-object v0, p0, Lcom/crittercism/internal/am$7;->b:Lcom/crittercism/internal/am;

    .line 8065
    iget-object v3, v0, Lcom/crittercism/internal/am;->j:Lcom/crittercism/internal/ap;

    .line 682
    sget-object v4, Lcom/crittercism/internal/ap;->y:Lcom/crittercism/internal/ap$a;

    iget-boolean v0, p0, Lcom/crittercism/internal/am$7;->a:Z

    if-nez v0, :cond_6

    move v0, v1

    :goto_6
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v3, v4, v0}, Lcom/crittercism/internal/ap;->a(Lcom/crittercism/internal/ap$e;Ljava/lang/Object;)V

    .line 686
    iget-object v0, p0, Lcom/crittercism/internal/am$7;->b:Lcom/crittercism/internal/am;

    .line 9065
    iget-object v3, v0, Lcom/crittercism/internal/am;->j:Lcom/crittercism/internal/ap;

    .line 686
    sget-object v4, Lcom/crittercism/internal/ap;->G:Lcom/crittercism/internal/ap$a;

    iget-boolean v0, p0, Lcom/crittercism/internal/am$7;->a:Z

    if-nez v0, :cond_7

    move v0, v1

    :goto_7
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v3, v4, v0}, Lcom/crittercism/internal/ap;->a(Lcom/crittercism/internal/ap$e;Ljava/lang/Object;)V

    .line 687
    iget-object v0, p0, Lcom/crittercism/internal/am$7;->b:Lcom/crittercism/internal/am;

    .line 10065
    iget-object v3, v0, Lcom/crittercism/internal/am;->j:Lcom/crittercism/internal/ap;

    .line 687
    sget-object v4, Lcom/crittercism/internal/ap;->C:Lcom/crittercism/internal/ap$a;

    iget-boolean v0, p0, Lcom/crittercism/internal/am$7;->a:Z

    if-nez v0, :cond_8

    move v0, v1

    :goto_8
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v3, v4, v0}, Lcom/crittercism/internal/ap;->a(Lcom/crittercism/internal/ap$e;Ljava/lang/Object;)V

    .line 688
    iget-object v0, p0, Lcom/crittercism/internal/am$7;->b:Lcom/crittercism/internal/am;

    .line 11065
    iget-object v3, v0, Lcom/crittercism/internal/am;->j:Lcom/crittercism/internal/ap;

    .line 688
    sget-object v4, Lcom/crittercism/internal/ap;->D:Lcom/crittercism/internal/ap$a;

    iget-boolean v0, p0, Lcom/crittercism/internal/am$7;->a:Z

    if-nez v0, :cond_9

    move v0, v1

    :goto_9
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v3, v4, v0}, Lcom/crittercism/internal/ap;->a(Lcom/crittercism/internal/ap$e;Ljava/lang/Object;)V

    .line 689
    iget-object v0, p0, Lcom/crittercism/internal/am$7;->b:Lcom/crittercism/internal/am;

    .line 12065
    iget-object v3, v0, Lcom/crittercism/internal/am;->j:Lcom/crittercism/internal/ap;

    .line 689
    sget-object v4, Lcom/crittercism/internal/ap;->E:Lcom/crittercism/internal/ap$a;

    iget-boolean v0, p0, Lcom/crittercism/internal/am$7;->a:Z

    if-nez v0, :cond_a

    move v0, v1

    :goto_a
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v3, v4, v0}, Lcom/crittercism/internal/ap;->a(Lcom/crittercism/internal/ap$e;Ljava/lang/Object;)V

    .line 690
    iget-object v0, p0, Lcom/crittercism/internal/am$7;->b:Lcom/crittercism/internal/am;

    .line 13065
    iget-object v0, v0, Lcom/crittercism/internal/am;->j:Lcom/crittercism/internal/ap;

    .line 690
    sget-object v3, Lcom/crittercism/internal/ap;->F:Lcom/crittercism/internal/ap$a;

    iget-boolean v4, p0, Lcom/crittercism/internal/am$7;->a:Z

    if-nez v4, :cond_b

    :goto_b
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Lcom/crittercism/internal/ap;->a(Lcom/crittercism/internal/ap$e;Ljava/lang/Object;)V

    .line 692
    iget-object v0, p0, Lcom/crittercism/internal/am$7;->b:Lcom/crittercism/internal/am;

    .line 14065
    iget-object v0, v0, Lcom/crittercism/internal/am;->g:Ljava/util/List;

    .line 692
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/crittercism/internal/bu;

    .line 693
    iget-boolean v2, p0, Lcom/crittercism/internal/am$7;->a:Z

    invoke-virtual {v0, v2}, Lcom/crittercism/internal/bu;->a(Z)V

    goto :goto_c

    :cond_0
    move v0, v2

    .line 676
    goto/16 :goto_0

    :cond_1
    move v0, v2

    .line 677
    goto/16 :goto_1

    :cond_2
    move v0, v2

    .line 678
    goto/16 :goto_2

    :cond_3
    move v0, v2

    .line 679
    goto/16 :goto_3

    :cond_4
    move v0, v2

    .line 680
    goto/16 :goto_4

    :cond_5
    move v0, v2

    .line 681
    goto/16 :goto_5

    :cond_6
    move v0, v2

    .line 682
    goto/16 :goto_6

    :cond_7
    move v0, v2

    .line 686
    goto :goto_7

    :cond_8
    move v0, v2

    .line 687
    goto :goto_8

    :cond_9
    move v0, v2

    .line 688
    goto :goto_9

    :cond_a
    move v0, v2

    .line 689
    goto :goto_a

    :cond_b
    move v1, v2

    .line 690
    goto :goto_b

    .line 695
    :cond_c
    return-void
.end method
