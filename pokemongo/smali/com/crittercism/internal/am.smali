.class public final Lcom/crittercism/internal/am;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/crittercism/internal/am$a;,
        Lcom/crittercism/internal/am$c;,
        Lcom/crittercism/internal/am$b;
    }
.end annotation


# instance fields
.field private A:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Landroid/webkit/WebView;",
            ">;"
        }
    .end annotation
.end field

.field private B:Ljava/util/Date;

.field private C:Ljava/util/Date;

.field a:Landroid/app/Application;

.field b:Lcom/crittercism/internal/av;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/crittercism/internal/av",
            "<",
            "Lcom/crittercism/internal/aq;",
            ">;"
        }
    .end annotation
.end field

.field c:Lcom/crittercism/internal/av;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/crittercism/internal/av",
            "<",
            "Lcom/crittercism/internal/bc;",
            ">;"
        }
    .end annotation
.end field

.field d:Lcom/crittercism/internal/av;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/crittercism/internal/av",
            "<",
            "Lcom/crittercism/internal/aq;",
            ">;"
        }
    .end annotation
.end field

.field e:Lcom/crittercism/internal/av;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/crittercism/internal/av",
            "<",
            "Lcom/crittercism/internal/at;",
            ">;"
        }
    .end annotation
.end field

.field f:Lcom/crittercism/internal/av;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/crittercism/internal/av",
            "<",
            "Lcom/crittercism/internal/ba;",
            ">;"
        }
    .end annotation
.end field

.field g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/crittercism/internal/bu;",
            ">;"
        }
    .end annotation
.end field

.field h:Ljava/util/concurrent/ScheduledExecutorService;

.field public i:Ljava/util/concurrent/ScheduledExecutorService;

.field j:Lcom/crittercism/internal/ap;

.field protected k:Lcom/crittercism/internal/d;

.field l:Lcom/crittercism/internal/cb;

.field public m:Lcom/crittercism/internal/bn;

.field n:Lcom/crittercism/internal/au;

.field private o:Ljava/lang/String;

.field private p:Lcom/crittercism/internal/av;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/crittercism/internal/av",
            "<",
            "Lcom/crittercism/internal/ar;",
            ">;"
        }
    .end annotation
.end field

.field private q:Lcom/crittercism/internal/av;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/crittercism/internal/av",
            "<",
            "Lcom/crittercism/internal/b;",
            ">;"
        }
    .end annotation
.end field

.field private r:Lcom/crittercism/internal/av;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/crittercism/internal/av",
            "<",
            "Lcom/crittercism/internal/ca;",
            ">;"
        }
    .end annotation
.end field

.field private s:Lcom/crittercism/internal/bu;

.field private t:Lcom/crittercism/internal/ak;

.field private u:Lcom/crittercism/internal/bo;

.field private v:Lcom/crittercism/app/CrittercismConfig;

.field private w:Lcom/crittercism/internal/as;

.field private x:Lcom/crittercism/internal/bw;

.field private y:Lcom/crittercism/internal/bp;

.field private z:Lcom/crittercism/internal/bq;


# direct methods
.method public constructor <init>(Landroid/app/Application;Ljava/lang/String;Lcom/crittercism/app/CrittercismConfig;)V
    .locals 10

    .prologue
    const/16 v9, 0x32

    const/16 v4, 0xa

    const/4 v6, 0x1

    const/4 v5, 0x5

    const/4 v7, 0x0

    .line 128
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/crittercism/internal/am;->o:Ljava/lang/String;

    .line 77
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/crittercism/internal/am;->f:Lcom/crittercism/internal/av;

    .line 82
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/crittercism/internal/am;->g:Ljava/util/List;

    .line 92
    const-string v0, "crittercism networking"

    invoke-static {v0}, Lcom/crittercism/internal/ce;->a(Ljava/lang/String;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/crittercism/internal/am;->h:Ljava/util/concurrent/ScheduledExecutorService;

    .line 95
    const-string v0, "crittercism data"

    invoke-static {v0}, Lcom/crittercism/internal/ce;->b(Ljava/lang/String;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/crittercism/internal/am;->i:Ljava/util/concurrent/ScheduledExecutorService;

    .line 121
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/crittercism/internal/am;->A:Ljava/util/Set;

    .line 129
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    iput-object v0, p0, Lcom/crittercism/internal/am;->C:Ljava/util/Date;

    .line 131
    iput-object p2, p0, Lcom/crittercism/internal/am;->o:Ljava/lang/String;

    .line 132
    iput-object p1, p0, Lcom/crittercism/internal/am;->a:Landroid/app/Application;

    .line 133
    new-instance v0, Lcom/crittercism/internal/as;

    invoke-direct {v0, p2}, Lcom/crittercism/internal/as;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/crittercism/internal/am;->w:Lcom/crittercism/internal/as;

    .line 134
    new-instance v0, Lcom/crittercism/app/CrittercismConfig;

    invoke-direct {v0, p3}, Lcom/crittercism/app/CrittercismConfig;-><init>(Lcom/crittercism/app/CrittercismConfig;)V

    iput-object v0, p0, Lcom/crittercism/internal/am;->v:Lcom/crittercism/app/CrittercismConfig;

    .line 135
    new-instance v0, Lcom/crittercism/internal/ak;

    iget-object v1, p0, Lcom/crittercism/internal/am;->a:Landroid/app/Application;

    iget-object v2, p0, Lcom/crittercism/internal/am;->v:Lcom/crittercism/app/CrittercismConfig;

    invoke-direct {v0, v1, v2}, Lcom/crittercism/internal/ak;-><init>(Landroid/content/Context;Lcom/crittercism/app/CrittercismConfig;)V

    iput-object v0, p0, Lcom/crittercism/internal/am;->t:Lcom/crittercism/internal/ak;

    .line 136
    new-instance v0, Lcom/crittercism/internal/bw;

    iget-object v1, p0, Lcom/crittercism/internal/am;->a:Landroid/app/Application;

    invoke-direct {v0, v1}, Lcom/crittercism/internal/bw;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/crittercism/internal/am;->x:Lcom/crittercism/internal/bw;

    .line 138
    iget-object v0, p0, Lcom/crittercism/internal/am;->a:Landroid/app/Application;

    invoke-static {v0}, Lcom/crittercism/internal/am;->a(Landroid/content/Context;)Z

    move-result v8

    .line 140
    new-instance v0, Lcom/crittercism/internal/ap;

    iget-object v1, p0, Lcom/crittercism/internal/am;->a:Landroid/app/Application;

    iget-object v2, p0, Lcom/crittercism/internal/am;->o:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/crittercism/internal/ap;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/crittercism/internal/am;->j:Lcom/crittercism/internal/ap;

    .line 142
    iget-object v1, p0, Lcom/crittercism/internal/am;->a:Landroid/app/Application;

    .line 1132
    if-eqz v8, :cond_2

    .line 1133
    new-instance v0, Lcom/crittercism/internal/bd;

    invoke-direct {v0}, Lcom/crittercism/internal/bd;-><init>()V

    .line 142
    :goto_0
    iput-object v0, p0, Lcom/crittercism/internal/am;->p:Lcom/crittercism/internal/av;

    .line 143
    iget-object v1, p0, Lcom/crittercism/internal/am;->a:Landroid/app/Application;

    .line 1173
    if-eqz v8, :cond_3

    .line 1174
    new-instance v0, Lcom/crittercism/internal/az;

    invoke-direct {v0, v4}, Lcom/crittercism/internal/az;-><init>(I)V

    .line 143
    :goto_1
    iput-object v0, p0, Lcom/crittercism/internal/am;->e:Lcom/crittercism/internal/av;

    .line 144
    iget-object v1, p0, Lcom/crittercism/internal/am;->a:Landroid/app/Application;

    .line 1315
    if-eqz v8, :cond_4

    .line 1316
    new-instance v0, Lcom/crittercism/internal/az;

    invoke-direct {v0, v6}, Lcom/crittercism/internal/az;-><init>(I)V

    .line 144
    :goto_2
    iput-object v0, p0, Lcom/crittercism/internal/am;->b:Lcom/crittercism/internal/av;

    .line 145
    iget-object v1, p0, Lcom/crittercism/internal/am;->a:Landroid/app/Application;

    .line 1323
    if-eqz v8, :cond_5

    .line 1324
    new-instance v0, Lcom/crittercism/internal/az;

    invoke-direct {v0, v6}, Lcom/crittercism/internal/az;-><init>(I)V

    .line 145
    :goto_3
    iput-object v0, p0, Lcom/crittercism/internal/am;->d:Lcom/crittercism/internal/av;

    .line 146
    iget-object v1, p0, Lcom/crittercism/internal/am;->a:Landroid/app/Application;

    .line 1448
    if-eqz v8, :cond_6

    .line 1449
    new-instance v0, Lcom/crittercism/internal/az;

    invoke-direct {v0, v5}, Lcom/crittercism/internal/az;-><init>(I)V

    .line 146
    :goto_4
    iput-object v0, p0, Lcom/crittercism/internal/am;->q:Lcom/crittercism/internal/av;

    .line 147
    iget-object v1, p0, Lcom/crittercism/internal/am;->a:Landroid/app/Application;

    .line 2159
    if-eqz v8, :cond_7

    .line 2160
    new-instance v0, Lcom/crittercism/internal/bd;

    invoke-direct {v0}, Lcom/crittercism/internal/bd;-><init>()V

    .line 147
    :goto_5
    iput-object v0, p0, Lcom/crittercism/internal/am;->c:Lcom/crittercism/internal/av;

    .line 148
    iget-object v1, p0, Lcom/crittercism/internal/am;->a:Landroid/app/Application;

    .line 2470
    if-eqz v8, :cond_8

    .line 2471
    new-instance v0, Lcom/crittercism/internal/az;

    invoke-direct {v0, v5}, Lcom/crittercism/internal/az;-><init>(I)V

    .line 148
    :goto_6
    iput-object v0, p0, Lcom/crittercism/internal/am;->r:Lcom/crittercism/internal/av;

    .line 149
    iget-object v1, p0, Lcom/crittercism/internal/am;->a:Landroid/app/Application;

    iget-object v2, p0, Lcom/crittercism/internal/am;->o:Ljava/lang/String;

    .line 3050
    if-eqz v8, :cond_9

    .line 3051
    new-instance v0, Lcom/crittercism/internal/bd;

    invoke-direct {v0}, Lcom/crittercism/internal/bd;-><init>()V

    .line 149
    :goto_7
    iput-object v0, p0, Lcom/crittercism/internal/am;->f:Lcom/crittercism/internal/av;

    .line 151
    invoke-virtual {p3}, Lcom/crittercism/app/CrittercismConfig;->getURLBlacklistPatterns()Ljava/util/List;

    move-result-object v0

    .line 152
    iget-object v1, p0, Lcom/crittercism/internal/am;->w:Lcom/crittercism/internal/as;

    .line 3099
    iget-object v1, v1, Lcom/crittercism/internal/as;->a:Ljava/net/URL;

    .line 152
    invoke-virtual {v1}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 153
    iget-object v1, p0, Lcom/crittercism/internal/am;->w:Lcom/crittercism/internal/as;

    .line 4095
    iget-object v1, v1, Lcom/crittercism/internal/as;->b:Ljava/net/URL;

    .line 153
    invoke-virtual {v1}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 154
    iget-object v1, p0, Lcom/crittercism/internal/am;->w:Lcom/crittercism/internal/as;

    .line 4103
    iget-object v1, v1, Lcom/crittercism/internal/as;->d:Ljava/net/URL;

    .line 154
    invoke-virtual {v1}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 155
    iget-object v1, p0, Lcom/crittercism/internal/am;->w:Lcom/crittercism/internal/as;

    .line 4107
    iget-object v1, v1, Lcom/crittercism/internal/as;->c:Ljava/net/URL;

    .line 155
    invoke-virtual {v1}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 157
    new-instance v6, Lcom/crittercism/internal/d$a;

    invoke-direct {v6}, Lcom/crittercism/internal/d$a;-><init>()V

    iget-object v1, p0, Lcom/crittercism/internal/am;->i:Ljava/util/concurrent/ScheduledExecutorService;

    .line 5055
    iput-object v1, v6, Lcom/crittercism/internal/d$a;->a:Ljava/util/concurrent/Executor;

    .line 5060
    iput-object v0, v6, Lcom/crittercism/internal/d$a;->b:Ljava/util/List;

    .line 160
    invoke-virtual {p3}, Lcom/crittercism/app/CrittercismConfig;->getPreserveQueryStringPatterns()Ljava/util/List;

    move-result-object v0

    .line 5065
    iput-object v0, v6, Lcom/crittercism/internal/d$a;->c:Ljava/util/List;

    .line 160
    iget-object v0, p0, Lcom/crittercism/internal/am;->q:Lcom/crittercism/internal/av;

    .line 5070
    iput-object v0, v6, Lcom/crittercism/internal/d$a;->d:Lcom/crittercism/internal/av;

    .line 161
    iget-object v0, p0, Lcom/crittercism/internal/am;->e:Lcom/crittercism/internal/av;

    .line 5075
    iput-object v0, v6, Lcom/crittercism/internal/d$a;->e:Lcom/crittercism/internal/av;

    .line 162
    iget-object v0, p0, Lcom/crittercism/internal/am;->j:Lcom/crittercism/internal/ap;

    .line 5080
    iput-object v0, v6, Lcom/crittercism/internal/d$a;->f:Lcom/crittercism/internal/ap;

    .line 5085
    new-instance v0, Lcom/crittercism/internal/d;

    iget-object v1, v6, Lcom/crittercism/internal/d$a;->a:Ljava/util/concurrent/Executor;

    iget-object v2, v6, Lcom/crittercism/internal/d$a;->b:Ljava/util/List;

    iget-object v3, v6, Lcom/crittercism/internal/d$a;->c:Ljava/util/List;

    iget-object v4, v6, Lcom/crittercism/internal/d$a;->d:Lcom/crittercism/internal/av;

    iget-object v5, v6, Lcom/crittercism/internal/d$a;->e:Lcom/crittercism/internal/av;

    iget-object v6, v6, Lcom/crittercism/internal/d$a;->f:Lcom/crittercism/internal/ap;

    invoke-direct/range {v0 .. v7}, Lcom/crittercism/internal/d;-><init>(Ljava/util/concurrent/Executor;Ljava/util/List;Ljava/util/List;Lcom/crittercism/internal/av;Lcom/crittercism/internal/av;Lcom/crittercism/internal/ap;B)V

    .line 164
    iput-object v0, p0, Lcom/crittercism/internal/am;->k:Lcom/crittercism/internal/d;

    .line 166
    new-instance v0, Lcom/crittercism/internal/cb;

    iget-object v1, p0, Lcom/crittercism/internal/am;->a:Landroid/app/Application;

    iget-object v2, p0, Lcom/crittercism/internal/am;->i:Ljava/util/concurrent/ScheduledExecutorService;

    iget-object v3, p0, Lcom/crittercism/internal/am;->r:Lcom/crittercism/internal/av;

    iget-object v4, p0, Lcom/crittercism/internal/am;->j:Lcom/crittercism/internal/ap;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/crittercism/internal/cb;-><init>(Landroid/app/Application;Ljava/util/concurrent/ScheduledExecutorService;Lcom/crittercism/internal/av;Lcom/crittercism/internal/ap;)V

    iput-object v0, p0, Lcom/crittercism/internal/am;->l:Lcom/crittercism/internal/cb;

    .line 168
    new-instance v0, Lcom/crittercism/internal/au;

    iget-object v1, p0, Lcom/crittercism/internal/am;->t:Lcom/crittercism/internal/ak;

    iget-object v2, p0, Lcom/crittercism/internal/am;->a:Landroid/app/Application;

    new-instance v3, Lcom/crittercism/internal/ao;

    iget-object v4, p0, Lcom/crittercism/internal/am;->a:Landroid/app/Application;

    iget-object v5, p0, Lcom/crittercism/internal/am;->v:Lcom/crittercism/app/CrittercismConfig;

    invoke-direct {v3, v4, v5}, Lcom/crittercism/internal/ao;-><init>(Landroid/content/Context;Lcom/crittercism/app/CrittercismConfig;)V

    iget-object v4, p0, Lcom/crittercism/internal/am;->o:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/crittercism/internal/au;-><init>(Lcom/crittercism/internal/ak;Landroid/content/Context;Lcom/crittercism/internal/ao;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/crittercism/internal/am;->n:Lcom/crittercism/internal/au;

    .line 176
    iget-object v0, p0, Lcom/crittercism/internal/am;->i:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v1, Lcom/crittercism/internal/am$b;

    invoke-direct {v1, p0, v8}, Lcom/crittercism/internal/am$b;-><init>(Lcom/crittercism/internal/am;Z)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 180
    :try_start_0
    invoke-static {}, Lcom/crittercism/internal/bm;->f()J

    move-result-wide v0

    .line 181
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2, v0, v1}, Ljava/util/Date;-><init>(J)V

    iput-object v2, p0, Lcom/crittercism/internal/am;->B:Ljava/util/Date;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 187
    :goto_8
    iget-object v0, p0, Lcom/crittercism/internal/am;->B:Ljava/util/Date;

    if-eqz v0, :cond_a

    .line 188
    iget-object v0, p0, Lcom/crittercism/internal/am;->B:Ljava/util/Date;

    invoke-static {v0}, Lcom/crittercism/internal/at;->a(Ljava/util/Date;)Lcom/crittercism/internal/at;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/crittercism/internal/am;->a(Lcom/crittercism/internal/at;)V

    .line 5760
    :goto_9
    iget-object v0, p0, Lcom/crittercism/internal/am;->v:Lcom/crittercism/app/CrittercismConfig;

    invoke-virtual {v0}, Lcom/crittercism/app/CrittercismConfig;->isServiceMonitoringEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5764
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/crittercism/internal/am$a;

    invoke-direct {v1, p0, v7}, Lcom/crittercism/internal/am$a;-><init>(Lcom/crittercism/internal/am;B)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 5765
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 5767
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Thread;->join()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    .line 195
    :cond_0
    :goto_a
    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v0

    .line 196
    new-instance v1, Lcom/crittercism/internal/am$1;

    invoke-direct {v1, p0, v0}, Lcom/crittercism/internal/am$1;-><init>(Lcom/crittercism/internal/am;Ljava/lang/Thread$UncaughtExceptionHandler;)V

    invoke-static {v1}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    .line 203
    new-instance v0, Lcom/crittercism/internal/bn;

    iget-object v1, p0, Lcom/crittercism/internal/am;->a:Landroid/app/Application;

    iget-object v2, p0, Lcom/crittercism/internal/am;->i:Ljava/util/concurrent/ScheduledExecutorService;

    iget-object v3, p0, Lcom/crittercism/internal/am;->p:Lcom/crittercism/internal/av;

    new-instance v4, Lcom/crittercism/internal/ar;

    iget-object v5, p0, Lcom/crittercism/internal/am;->n:Lcom/crittercism/internal/au;

    invoke-direct {v4, v5}, Lcom/crittercism/internal/ar;-><init>(Lcom/crittercism/internal/au;)V

    iget-object v5, p0, Lcom/crittercism/internal/am;->j:Lcom/crittercism/internal/ap;

    .line 208
    invoke-virtual {p3}, Lcom/crittercism/app/CrittercismConfig;->delaySendingAppLoad()Z

    move-result v6

    iget-object v7, p0, Lcom/crittercism/internal/am;->l:Lcom/crittercism/internal/cb;

    iget-object v8, p0, Lcom/crittercism/internal/am;->B:Ljava/util/Date;

    invoke-direct/range {v0 .. v8}, Lcom/crittercism/internal/bn;-><init>(Landroid/app/Application;Ljava/util/concurrent/ExecutorService;Lcom/crittercism/internal/av;Lcom/crittercism/internal/ar;Lcom/crittercism/internal/ap;ZLcom/crittercism/internal/cb;Ljava/util/Date;)V

    iput-object v0, p0, Lcom/crittercism/internal/am;->m:Lcom/crittercism/internal/bn;

    .line 211
    new-instance v0, Lcom/crittercism/internal/bo;

    iget-object v1, p0, Lcom/crittercism/internal/am;->a:Landroid/app/Application;

    iget-object v2, p0, Lcom/crittercism/internal/am;->i:Ljava/util/concurrent/ScheduledExecutorService;

    iget-object v3, p0, Lcom/crittercism/internal/am;->e:Lcom/crittercism/internal/av;

    iget-object v4, p0, Lcom/crittercism/internal/am;->j:Lcom/crittercism/internal/ap;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/crittercism/internal/bo;-><init>(Landroid/app/Application;Ljava/util/concurrent/ExecutorService;Lcom/crittercism/internal/av;Lcom/crittercism/internal/ap;)V

    iput-object v0, p0, Lcom/crittercism/internal/am;->u:Lcom/crittercism/internal/bo;

    .line 215
    new-instance v0, Lcom/crittercism/internal/bp;

    iget-object v1, p0, Lcom/crittercism/internal/am;->a:Landroid/app/Application;

    iget-object v2, p0, Lcom/crittercism/internal/am;->i:Ljava/util/concurrent/ScheduledExecutorService;

    iget-object v3, p0, Lcom/crittercism/internal/am;->e:Lcom/crittercism/internal/av;

    iget-object v4, p0, Lcom/crittercism/internal/am;->j:Lcom/crittercism/internal/ap;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/crittercism/internal/bp;-><init>(Landroid/content/Context;Ljava/util/concurrent/ExecutorService;Lcom/crittercism/internal/av;Lcom/crittercism/internal/ap;)V

    iput-object v0, p0, Lcom/crittercism/internal/am;->y:Lcom/crittercism/internal/bp;

    .line 219
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_1

    .line 220
    new-instance v0, Lcom/crittercism/internal/bq;

    iget-object v1, p0, Lcom/crittercism/internal/am;->a:Landroid/app/Application;

    iget-object v2, p0, Lcom/crittercism/internal/am;->n:Lcom/crittercism/internal/au;

    invoke-direct {v0, v1, v2}, Lcom/crittercism/internal/bq;-><init>(Landroid/app/Application;Lcom/crittercism/internal/au;)V

    iput-object v0, p0, Lcom/crittercism/internal/am;->z:Lcom/crittercism/internal/bq;

    .line 223
    :cond_1
    return-void

    .line 1136
    :cond_2
    new-instance v0, Lcom/crittercism/internal/aw;

    const-string v2, "app_loads_2"

    new-instance v3, Lcom/crittercism/internal/ar$b;

    invoke-direct {v3, v7}, Lcom/crittercism/internal/ar$b;-><init>(B)V

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/crittercism/internal/aw;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/crittercism/internal/aw$b;I)V

    goto/16 :goto_0

    .line 1177
    :cond_3
    new-instance v0, Lcom/crittercism/internal/aw;

    const-string v2, "breadcrumbs"

    new-instance v3, Lcom/crittercism/internal/at$a;

    invoke-direct {v3, v7}, Lcom/crittercism/internal/at$a;-><init>(B)V

    const/16 v4, 0xfa

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/crittercism/internal/aw;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/crittercism/internal/aw$b;I)V

    goto/16 :goto_1

    .line 1319
    :cond_4
    new-instance v0, Lcom/crittercism/internal/aw;

    const-string v2, "exceptions"

    new-instance v3, Lcom/crittercism/internal/aq$a;

    invoke-direct {v3, v7}, Lcom/crittercism/internal/aq$a;-><init>(B)V

    invoke-direct {v0, v1, v2, v3, v5}, Lcom/crittercism/internal/aw;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/crittercism/internal/aw$b;I)V

    goto/16 :goto_2

    .line 1327
    :cond_5
    new-instance v0, Lcom/crittercism/internal/aw;

    const-string v2, "sdk_crashes"

    new-instance v3, Lcom/crittercism/internal/aq$a;

    invoke-direct {v3, v7}, Lcom/crittercism/internal/aq$a;-><init>(B)V

    invoke-direct {v0, v1, v2, v3, v5}, Lcom/crittercism/internal/aw;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/crittercism/internal/aw$b;I)V

    goto/16 :goto_3

    .line 1452
    :cond_6
    new-instance v0, Lcom/crittercism/internal/aw;

    const-string v2, "network_statistics"

    new-instance v3, Lcom/crittercism/internal/b$b;

    invoke-direct {v3, v7}, Lcom/crittercism/internal/b$b;-><init>(B)V

    invoke-direct {v0, v1, v2, v3, v9}, Lcom/crittercism/internal/aw;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/crittercism/internal/aw$b;I)V

    goto/16 :goto_4

    .line 2163
    :cond_7
    new-instance v0, Lcom/crittercism/internal/aw;

    const-string v2, "ndk_crashes"

    new-instance v3, Lcom/crittercism/internal/bc$b;

    invoke-direct {v3, v7}, Lcom/crittercism/internal/bc$b;-><init>(B)V

    invoke-direct {v0, v1, v2, v3, v5}, Lcom/crittercism/internal/aw;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/crittercism/internal/aw$b;I)V

    goto/16 :goto_5

    .line 2474
    :cond_8
    new-instance v0, Lcom/crittercism/internal/aw;

    const-string v2, "finished_txns"

    new-instance v3, Lcom/crittercism/internal/ca$g;

    invoke-direct {v3, v7}, Lcom/crittercism/internal/ca$g;-><init>(B)V

    invoke-direct {v0, v1, v2, v3, v9}, Lcom/crittercism/internal/aw;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/crittercism/internal/aw$b;I)V

    goto/16 :goto_6

    .line 3054
    :cond_9
    new-instance v0, Lcom/crittercism/internal/bb;

    invoke-direct {v0, v1, v2}, Lcom/crittercism/internal/bb;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_7

    .line 184
    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/crittercism/internal/cc;->a(Ljava/lang/Throwable;)V

    goto/16 :goto_8

    .line 190
    :cond_a
    iget-object v0, p0, Lcom/crittercism/internal/am;->C:Ljava/util/Date;

    invoke-static {v0}, Lcom/crittercism/internal/at;->a(Ljava/util/Date;)Lcom/crittercism/internal/at;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/crittercism/internal/am;->a(Lcom/crittercism/internal/at;)V

    goto/16 :goto_9

    .line 5769
    :catch_1
    move-exception v0

    invoke-static {v0}, Lcom/crittercism/internal/cc;->b(Ljava/lang/Throwable;)V

    goto/16 :goto_a
.end method

.method private static a(Landroid/content/Context;)Z
    .locals 8

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 332
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v5

    .line 333
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v6

    .line 336
    const-string v0, "activity"

    .line 337
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 339
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v1

    .line 341
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    move v2, v3

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 342
    iget v1, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->uid:I

    if-ne v1, v5, :cond_4

    .line 343
    add-int/lit8 v1, v2, 0x1

    :goto_1
    move v2, v1

    .line 345
    goto :goto_0

    .line 347
    :cond_0
    if-gt v2, v4, :cond_2

    .line 362
    :cond_1
    :goto_2
    return v3

    .line 351
    :cond_2
    const v1, 0x7fffffff

    .line 352
    invoke-virtual {v0, v1}, Landroid/app/ActivityManager;->getRunningServices(I)Ljava/util/List;

    move-result-object v0

    .line 356
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningServiceInfo;

    .line 357
    iget v0, v0, Landroid/app/ActivityManager$RunningServiceInfo;->pid:I

    if-ne v0, v6, :cond_3

    move v3, v4

    .line 358
    goto :goto_2

    :cond_4
    move v1, v2

    goto :goto_1
.end method


# virtual methods
.method public final a(Landroid/webkit/WebView;)V
    .locals 6

    .prologue
    .line 455
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v0, v1, :cond_1

    .line 456
    const-string v0, "Crittercism.instrumentWebView(WebView) must be called on the main UI thread"

    invoke-static {v0}, Lcom/crittercism/internal/cc;->a(Ljava/lang/String;)V

    .line 10059
    :cond_0
    :goto_0
    return-void

    .line 461
    :cond_1
    iget-object v1, p0, Lcom/crittercism/internal/am;->A:Ljava/util/Set;

    monitor-enter v1

    .line 462
    :try_start_0
    iget-object v0, p0, Lcom/crittercism/internal/am;->A:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 463
    monitor-exit v1

    goto :goto_0

    .line 467
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 465
    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/crittercism/internal/am;->A:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 467
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 469
    new-instance v1, Lcom/crittercism/internal/cj;

    iget-object v0, p0, Lcom/crittercism/internal/am;->k:Lcom/crittercism/internal/d;

    iget-object v2, p0, Lcom/crittercism/internal/am;->a:Landroid/app/Application;

    invoke-direct {v1, p0, v0, v2}, Lcom/crittercism/internal/cj;-><init>(Lcom/crittercism/internal/am;Lcom/crittercism/internal/d;Landroid/content/Context;)V

    .line 10046
    :try_start_2
    new-instance v0, Lcom/crittercism/internal/ci;

    invoke-direct {v0}, Lcom/crittercism/internal/ci;-><init>()V
    :try_end_2
    .catch Lcom/crittercism/internal/bh; {:try_start_2 .. :try_end_2} :catch_0

    .line 11036
    :try_start_3
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xf

    if-gt v0, v2, :cond_3

    .line 11038
    invoke-static {p1}, Lcom/crittercism/internal/ci;->a(Landroid/webkit/WebView;)Landroid/webkit/WebViewClient;
    :try_end_3
    .catch Lcom/crittercism/internal/bh; {:try_start_3 .. :try_end_3} :catch_1

    move-result-object v0

    .line 10062
    :goto_1
    new-instance v2, Lcom/crittercism/internal/ch;

    iget-object v3, v1, Lcom/crittercism/internal/cj;->b:Lcom/crittercism/internal/d;

    iget-object v4, v1, Lcom/crittercism/internal/cj;->c:Lcom/crittercism/internal/c;

    iget-object v5, v1, Lcom/crittercism/internal/cj;->d:Ljava/lang/String;

    invoke-direct {v2, v0, v3, v4, v5}, Lcom/crittercism/internal/ch;-><init>(Landroid/webkit/WebViewClient;Lcom/crittercism/internal/d;Lcom/crittercism/internal/c;Ljava/lang/String;)V

    .line 10065
    invoke-virtual {p1, v2}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 10066
    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getJavaScriptEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 10067
    new-instance v0, Lcom/crittercism/webview/CritterJSInterface;

    iget-object v1, v1, Lcom/crittercism/internal/cj;->a:Lcom/crittercism/internal/am;

    invoke-direct {v0, v1}, Lcom/crittercism/webview/CritterJSInterface;-><init>(Lcom/crittercism/internal/am;)V

    .line 10068
    const-string v1, "_crttr"

    invoke-virtual {p1, v0, v1}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 10048
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lcom/crittercism/internal/bh;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/crittercism/internal/cc;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 11039
    :cond_3
    :try_start_4
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x12

    if-gt v0, v2, :cond_4

    .line 11041
    invoke-static {p1}, Lcom/crittercism/internal/ci;->b(Landroid/webkit/WebView;)Landroid/webkit/WebViewClient;

    move-result-object v0

    goto :goto_1

    .line 11044
    :cond_4
    invoke-static {p1}, Lcom/crittercism/internal/ci;->c(Landroid/webkit/WebView;)Landroid/webkit/WebViewClient;
    :try_end_4
    .catch Lcom/crittercism/internal/bh; {:try_start_4 .. :try_end_4} :catch_1

    move-result-object v0

    goto :goto_1

    .line 10056
    :catch_1
    move-exception v0

    invoke-static {v0}, Lcom/crittercism/internal/cc;->b(Ljava/lang/Throwable;)V

    .line 10057
    const-string v0, "Failed to find WebViewClient. WebView will not be instrumented."

    invoke-static {v0}, Lcom/crittercism/internal/cc;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final a(Lcom/crittercism/app/CrittercismCallback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/crittercism/app/CrittercismCallback",
            "<",
            "Lcom/crittercism/app/CrashData;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 746
    iget-object v0, p0, Lcom/crittercism/internal/am;->i:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v1, Lcom/crittercism/internal/am$9;

    invoke-direct {v1, p0, p1}, Lcom/crittercism/internal/am$9;-><init>(Lcom/crittercism/internal/am;Lcom/crittercism/app/CrittercismCallback;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 757
    return-void
.end method

.method public final a(Lcom/crittercism/internal/ap;)V
    .locals 13

    .prologue
    .line 521
    iget-object v0, p0, Lcom/crittercism/internal/am;->x:Lcom/crittercism/internal/bw;

    invoke-virtual {v0}, Lcom/crittercism/internal/bw;->a()Ljava/lang/String;

    move-result-object v10

    .line 522
    new-instance v0, Lcom/crittercism/internal/bx;

    iget-object v1, p0, Lcom/crittercism/internal/am;->a:Landroid/app/Application;

    invoke-direct {v0, v1}, Lcom/crittercism/internal/bx;-><init>(Landroid/content/Context;)V

    .line 523
    invoke-virtual {v0}, Lcom/crittercism/internal/bx;->a()Z

    move-result v11

    .line 525
    iget-object v12, p0, Lcom/crittercism/internal/am;->g:Ljava/util/List;

    new-instance v0, Lcom/crittercism/internal/bu;

    iget-object v1, p0, Lcom/crittercism/internal/am;->w:Lcom/crittercism/internal/as;

    iget-object v2, p0, Lcom/crittercism/internal/am;->i:Ljava/util/concurrent/ScheduledExecutorService;

    iget-object v3, p0, Lcom/crittercism/internal/am;->h:Ljava/util/concurrent/ScheduledExecutorService;

    iget-object v4, p0, Lcom/crittercism/internal/am;->b:Lcom/crittercism/internal/av;

    iget-object v6, p0, Lcom/crittercism/internal/am;->o:Ljava/lang/String;

    .line 11400
    new-instance v5, Lcom/crittercism/internal/aq$b;

    const-string v7, "exceptions"

    const-string v8, "/android_v2/handle_exceptions"

    invoke-direct {v5, v6, v10, v7, v8}, Lcom/crittercism/internal/aq$b;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 530
    const-string v6, "EXCEPTIONS"

    sget-object v8, Lcom/crittercism/internal/ap;->j:Lcom/crittercism/internal/ap$a;

    sget-object v9, Lcom/crittercism/internal/ap;->k:Lcom/crittercism/internal/ap$d;

    move-object v7, p1

    invoke-direct/range {v0 .. v9}, Lcom/crittercism/internal/bu;-><init>(Lcom/crittercism/internal/as;Ljava/util/concurrent/ScheduledExecutorService;Ljava/util/concurrent/ExecutorService;Lcom/crittercism/internal/av;Lcom/crittercism/internal/bv;Ljava/lang/String;Lcom/crittercism/internal/ap;Lcom/crittercism/internal/ap$a;Lcom/crittercism/internal/ap$d;)V

    .line 525
    invoke-interface {v12, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 536
    new-instance v0, Lcom/crittercism/internal/bu;

    iget-object v1, p0, Lcom/crittercism/internal/am;->w:Lcom/crittercism/internal/as;

    iget-object v2, p0, Lcom/crittercism/internal/am;->i:Ljava/util/concurrent/ScheduledExecutorService;

    iget-object v3, p0, Lcom/crittercism/internal/am;->h:Ljava/util/concurrent/ScheduledExecutorService;

    iget-object v4, p0, Lcom/crittercism/internal/am;->d:Lcom/crittercism/internal/av;

    iget-object v6, p0, Lcom/crittercism/internal/am;->o:Ljava/lang/String;

    .line 11404
    new-instance v5, Lcom/crittercism/internal/aq$b;

    const-string v7, "crashes"

    const-string v8, "/android_v2/handle_crashes"

    invoke-direct {v5, v6, v10, v7, v8}, Lcom/crittercism/internal/aq$b;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 541
    const-string v6, "CRASHES"

    sget-object v8, Lcom/crittercism/internal/ap;->f:Lcom/crittercism/internal/ap$a;

    sget-object v9, Lcom/crittercism/internal/ap;->g:Lcom/crittercism/internal/ap$d;

    move-object v7, p1

    invoke-direct/range {v0 .. v9}, Lcom/crittercism/internal/bu;-><init>(Lcom/crittercism/internal/as;Ljava/util/concurrent/ScheduledExecutorService;Ljava/util/concurrent/ExecutorService;Lcom/crittercism/internal/av;Lcom/crittercism/internal/bv;Ljava/lang/String;Lcom/crittercism/internal/ap;Lcom/crittercism/internal/ap$a;Lcom/crittercism/internal/ap$d;)V

    iput-object v0, p0, Lcom/crittercism/internal/am;->s:Lcom/crittercism/internal/bu;

    .line 547
    iget-object v0, p0, Lcom/crittercism/internal/am;->g:Ljava/util/List;

    iget-object v1, p0, Lcom/crittercism/internal/am;->s:Lcom/crittercism/internal/bu;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 549
    iget-object v12, p0, Lcom/crittercism/internal/am;->g:Ljava/util/List;

    new-instance v0, Lcom/crittercism/internal/bu;

    iget-object v1, p0, Lcom/crittercism/internal/am;->w:Lcom/crittercism/internal/as;

    iget-object v2, p0, Lcom/crittercism/internal/am;->i:Ljava/util/concurrent/ScheduledExecutorService;

    iget-object v3, p0, Lcom/crittercism/internal/am;->h:Ljava/util/concurrent/ScheduledExecutorService;

    iget-object v4, p0, Lcom/crittercism/internal/am;->c:Lcom/crittercism/internal/av;

    new-instance v5, Lcom/crittercism/internal/bc$a;

    iget-object v6, p0, Lcom/crittercism/internal/am;->o:Ljava/lang/String;

    invoke-direct {v5, v6, v10}, Lcom/crittercism/internal/bc$a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "NDK"

    sget-object v8, Lcom/crittercism/internal/ap;->n:Lcom/crittercism/internal/ap$a;

    sget-object v9, Lcom/crittercism/internal/ap;->o:Lcom/crittercism/internal/ap$d;

    move-object v7, p1

    invoke-direct/range {v0 .. v9}, Lcom/crittercism/internal/bu;-><init>(Lcom/crittercism/internal/as;Ljava/util/concurrent/ScheduledExecutorService;Ljava/util/concurrent/ExecutorService;Lcom/crittercism/internal/av;Lcom/crittercism/internal/bv;Ljava/lang/String;Lcom/crittercism/internal/ap;Lcom/crittercism/internal/ap$a;Lcom/crittercism/internal/ap$d;)V

    invoke-interface {v12, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 560
    iget-object v12, p0, Lcom/crittercism/internal/am;->g:Ljava/util/List;

    new-instance v0, Lcom/crittercism/internal/bu;

    iget-object v1, p0, Lcom/crittercism/internal/am;->w:Lcom/crittercism/internal/as;

    iget-object v2, p0, Lcom/crittercism/internal/am;->i:Ljava/util/concurrent/ScheduledExecutorService;

    iget-object v3, p0, Lcom/crittercism/internal/am;->h:Ljava/util/concurrent/ScheduledExecutorService;

    iget-object v4, p0, Lcom/crittercism/internal/am;->f:Lcom/crittercism/internal/av;

    new-instance v5, Lcom/crittercism/internal/ba$a;

    iget-object v6, p0, Lcom/crittercism/internal/am;->o:Ljava/lang/String;

    invoke-direct {v5, v6, v10}, Lcom/crittercism/internal/ba$a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "METADATA"

    sget-object v8, Lcom/crittercism/internal/ap;->r:Lcom/crittercism/internal/ap$a;

    sget-object v9, Lcom/crittercism/internal/ap;->s:Lcom/crittercism/internal/ap$d;

    move-object v7, p1

    invoke-direct/range {v0 .. v9}, Lcom/crittercism/internal/bu;-><init>(Lcom/crittercism/internal/as;Ljava/util/concurrent/ScheduledExecutorService;Ljava/util/concurrent/ExecutorService;Lcom/crittercism/internal/av;Lcom/crittercism/internal/bv;Ljava/lang/String;Lcom/crittercism/internal/ap;Lcom/crittercism/internal/ap$a;Lcom/crittercism/internal/ap$d;)V

    invoke-interface {v12, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 571
    iget-object v12, p0, Lcom/crittercism/internal/am;->g:Ljava/util/List;

    new-instance v0, Lcom/crittercism/internal/bu;

    iget-object v1, p0, Lcom/crittercism/internal/am;->w:Lcom/crittercism/internal/as;

    iget-object v2, p0, Lcom/crittercism/internal/am;->i:Ljava/util/concurrent/ScheduledExecutorService;

    iget-object v3, p0, Lcom/crittercism/internal/am;->h:Ljava/util/concurrent/ScheduledExecutorService;

    iget-object v4, p0, Lcom/crittercism/internal/am;->q:Lcom/crittercism/internal/av;

    new-instance v5, Lcom/crittercism/internal/b$a;

    iget-object v6, p0, Lcom/crittercism/internal/am;->n:Lcom/crittercism/internal/au;

    invoke-direct {v5, v6}, Lcom/crittercism/internal/b$a;-><init>(Lcom/crittercism/internal/au;)V

    const-string v6, "APM"

    sget-object v8, Lcom/crittercism/internal/ap;->b:Lcom/crittercism/internal/ap$a;

    sget-object v9, Lcom/crittercism/internal/ap;->c:Lcom/crittercism/internal/ap$d;

    move-object v7, p1

    invoke-direct/range {v0 .. v9}, Lcom/crittercism/internal/bu;-><init>(Lcom/crittercism/internal/as;Ljava/util/concurrent/ScheduledExecutorService;Ljava/util/concurrent/ExecutorService;Lcom/crittercism/internal/av;Lcom/crittercism/internal/bv;Ljava/lang/String;Lcom/crittercism/internal/ap;Lcom/crittercism/internal/ap$a;Lcom/crittercism/internal/ap$d;)V

    invoke-interface {v12, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 582
    new-instance v0, Lcom/crittercism/internal/bu;

    iget-object v1, p0, Lcom/crittercism/internal/am;->w:Lcom/crittercism/internal/as;

    iget-object v2, p0, Lcom/crittercism/internal/am;->i:Ljava/util/concurrent/ScheduledExecutorService;

    iget-object v3, p0, Lcom/crittercism/internal/am;->h:Ljava/util/concurrent/ScheduledExecutorService;

    iget-object v4, p0, Lcom/crittercism/internal/am;->p:Lcom/crittercism/internal/av;

    new-instance v5, Lcom/crittercism/internal/ar$a;

    iget-object v6, p0, Lcom/crittercism/internal/am;->o:Ljava/lang/String;

    invoke-direct {v5, v6, v10}, Lcom/crittercism/internal/ar$a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "APPLOADS"

    sget-object v8, Lcom/crittercism/internal/ap;->v:Lcom/crittercism/internal/ap$a;

    sget-object v9, Lcom/crittercism/internal/ap;->w:Lcom/crittercism/internal/ap$d;

    move-object v7, p1

    invoke-direct/range {v0 .. v9}, Lcom/crittercism/internal/bu;-><init>(Lcom/crittercism/internal/as;Ljava/util/concurrent/ScheduledExecutorService;Ljava/util/concurrent/ExecutorService;Lcom/crittercism/internal/av;Lcom/crittercism/internal/bv;Ljava/lang/String;Lcom/crittercism/internal/ap;Lcom/crittercism/internal/ap$a;Lcom/crittercism/internal/ap$d;)V

    .line 593
    new-instance v1, Lcom/crittercism/internal/br;

    iget-object v2, p0, Lcom/crittercism/internal/am;->w:Lcom/crittercism/internal/as;

    .line 12095
    iget-object v2, v2, Lcom/crittercism/internal/as;->b:Ljava/net/URL;

    .line 593
    iget-object v3, p0, Lcom/crittercism/internal/am;->a:Landroid/app/Application;

    iget-object v4, p0, Lcom/crittercism/internal/am;->n:Lcom/crittercism/internal/au;

    invoke-direct {v1, v2, v3, v4, p1}, Lcom/crittercism/internal/br;-><init>(Ljava/net/URL;Landroid/content/Context;Lcom/crittercism/internal/au;Lcom/crittercism/internal/ap;)V

    .line 12130
    iput-object v1, v0, Lcom/crittercism/internal/bu;->c:Lcom/crittercism/internal/bu$a;

    .line 594
    iget-object v1, p0, Lcom/crittercism/internal/am;->g:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 596
    iget-object v10, p0, Lcom/crittercism/internal/am;->g:Ljava/util/List;

    new-instance v0, Lcom/crittercism/internal/bu;

    iget-object v1, p0, Lcom/crittercism/internal/am;->w:Lcom/crittercism/internal/as;

    iget-object v2, p0, Lcom/crittercism/internal/am;->i:Ljava/util/concurrent/ScheduledExecutorService;

    iget-object v3, p0, Lcom/crittercism/internal/am;->h:Ljava/util/concurrent/ScheduledExecutorService;

    iget-object v4, p0, Lcom/crittercism/internal/am;->r:Lcom/crittercism/internal/av;

    new-instance v5, Lcom/crittercism/internal/ca$f;

    iget-object v6, p0, Lcom/crittercism/internal/am;->e:Lcom/crittercism/internal/av;

    iget-object v7, p0, Lcom/crittercism/internal/am;->n:Lcom/crittercism/internal/au;

    invoke-direct {v5, v6, v7}, Lcom/crittercism/internal/ca$f;-><init>(Lcom/crittercism/internal/av;Lcom/crittercism/internal/au;)V

    const-string v6, "USERFLOWS"

    sget-object v8, Lcom/crittercism/internal/ap;->z:Lcom/crittercism/internal/ap$a;

    sget-object v9, Lcom/crittercism/internal/ap;->A:Lcom/crittercism/internal/ap$d;

    move-object v7, p1

    invoke-direct/range {v0 .. v9}, Lcom/crittercism/internal/bu;-><init>(Lcom/crittercism/internal/as;Ljava/util/concurrent/ScheduledExecutorService;Ljava/util/concurrent/ExecutorService;Lcom/crittercism/internal/av;Lcom/crittercism/internal/bv;Ljava/lang/String;Lcom/crittercism/internal/ap;Lcom/crittercism/internal/ap$a;Lcom/crittercism/internal/ap$d;)V

    invoke-interface {v10, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 607
    const/4 v0, 0x0

    .line 609
    iget-object v1, p0, Lcom/crittercism/internal/am;->a:Landroid/app/Application;

    const-string v2, "android.permission.ACCESS_NETWORK_STATE"

    invoke-static {v1, v2}, Lcom/crittercism/internal/ao;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 610
    iget-object v0, p0, Lcom/crittercism/internal/am;->a:Landroid/app/Application;

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/app/Application;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    move-object v2, v0

    .line 613
    :goto_0
    iget-object v0, p0, Lcom/crittercism/internal/am;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/crittercism/internal/bu;

    .line 12407
    iput-object v2, v1, Lcom/crittercism/internal/bu;->i:Landroid/net/ConnectivityManager;

    .line 12410
    iget-object v0, v1, Lcom/crittercism/internal/bu;->i:Landroid/net/ConnectivityManager;

    if-eqz v0, :cond_1

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x15

    if-lt v0, v4, :cond_1

    .line 12411
    new-instance v0, Landroid/net/NetworkRequest$Builder;

    invoke-direct {v0}, Landroid/net/NetworkRequest$Builder;-><init>()V

    .line 12412
    const/16 v4, 0xc

    invoke-virtual {v0, v4}, Landroid/net/NetworkRequest$Builder;->addCapability(I)Landroid/net/NetworkRequest$Builder;

    .line 12414
    iget-boolean v4, v1, Lcom/crittercism/internal/bu;->h:Z

    if-nez v4, :cond_0

    .line 12415
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Landroid/net/NetworkRequest$Builder;->addTransportType(I)Landroid/net/NetworkRequest$Builder;

    .line 12418
    :cond_0
    invoke-virtual {v0}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    move-result-object v4

    .line 12420
    new-instance v0, Lcom/crittercism/internal/bu$4;

    invoke-direct {v0, v1}, Lcom/crittercism/internal/bu$4;-><init>(Lcom/crittercism/internal/bu;)V

    iput-object v0, v1, Lcom/crittercism/internal/bu;->j:Ljava/lang/Object;

    .line 12444
    iget-object v0, v1, Lcom/crittercism/internal/bu;->j:Ljava/lang/Object;

    check-cast v0, Landroid/net/ConnectivityManager$NetworkCallback;

    invoke-virtual {v2, v4, v0}, Landroid/net/ConnectivityManager;->registerNetworkCallback(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;)V

    .line 615
    :cond_1
    iget-object v0, p0, Lcom/crittercism/internal/am;->v:Lcom/crittercism/app/CrittercismConfig;

    invoke-virtual {v0}, Lcom/crittercism/app/CrittercismConfig;->allowsCellularAccess()Z

    move-result v0

    .line 12481
    iput-boolean v0, v1, Lcom/crittercism/internal/bu;->h:Z

    .line 616
    invoke-virtual {v1, v11}, Lcom/crittercism/internal/bu;->a(Z)V

    goto :goto_1

    .line 618
    :cond_2
    return-void

    :cond_3
    move-object v2, v0

    goto :goto_0
.end method

.method public final a(Lcom/crittercism/internal/at;)V
    .locals 2

    .prologue
    .line 512
    iget-object v0, p0, Lcom/crittercism/internal/am;->i:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v1, Lcom/crittercism/internal/am$5;

    invoke-direct {v1, p0, p1}, Lcom/crittercism/internal/am$5;-><init>(Lcom/crittercism/internal/am;Lcom/crittercism/internal/at;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 518
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 8

    .prologue
    .line 799
    iget-object v1, p0, Lcom/crittercism/internal/am;->l:Lcom/crittercism/internal/cb;

    .line 13067
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 13069
    iget-object v4, v1, Lcom/crittercism/internal/cb;->a:Ljava/util/HashMap;

    monitor-enter v4

    .line 13070
    :try_start_0
    iget-object v0, v1, Lcom/crittercism/internal/cb;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 13072
    iget-object v0, v1, Lcom/crittercism/internal/cb;->a:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    const/16 v5, 0x32

    if-lt v0, v5, :cond_0

    .line 13073
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Aborting beginUserflow("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "). Maximum number of userflows exceeded."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/crittercism/internal/cc;->b(Ljava/lang/String;)V

    .line 13074
    monitor-exit v4

    .line 13090
    :goto_0
    return-void

    .line 13077
    :cond_0
    iget-object v0, v1, Lcom/crittercism/internal/cb;->d:Lcom/crittercism/internal/ap;

    sget-object v5, Lcom/crittercism/internal/ap;->H:Lcom/crittercism/internal/ap$d;

    invoke-virtual {v0, v5}, Lcom/crittercism/internal/ap;->a(Lcom/crittercism/internal/ap$e;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    .line 13078
    iget-object v0, v1, Lcom/crittercism/internal/cb;->d:Lcom/crittercism/internal/ap;

    invoke-static {p1, v6, v7}, Lcom/crittercism/internal/ap;->a(Ljava/lang/String;J)Lcom/crittercism/internal/ap$d;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/crittercism/internal/ap;->a(Lcom/crittercism/internal/ap$e;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    .line 13080
    new-instance v0, Lcom/crittercism/internal/ca$a;

    invoke-direct {v0}, Lcom/crittercism/internal/ca$a;-><init>()V

    .line 13106
    iput-object p1, v0, Lcom/crittercism/internal/ca$a;->a:Ljava/lang/String;

    .line 13111
    iput-wide v2, v0, Lcom/crittercism/internal/ca$a;->b:J

    .line 13116
    const/4 v2, -0x1

    iput v2, v0, Lcom/crittercism/internal/ca$a;->c:I

    .line 13121
    iput-wide v6, v0, Lcom/crittercism/internal/ca$a;->d:J

    .line 13085
    invoke-virtual {v0}, Lcom/crittercism/internal/ca$a;->a()Lcom/crittercism/internal/ca;

    move-result-object v0

    .line 13087
    iget-object v1, v1, Lcom/crittercism/internal/cb;->a:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13089
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Added userflow: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/crittercism/internal/cc;->d(Ljava/lang/String;)V

    .line 13090
    monitor-exit v4

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final a(Ljava/lang/String;I)V
    .locals 3

    .prologue
    .line 815
    iget-object v0, p0, Lcom/crittercism/internal/am;->l:Lcom/crittercism/internal/cb;

    .line 14152
    iget-object v1, v0, Lcom/crittercism/internal/cb;->a:Ljava/util/HashMap;

    monitor-enter v1

    .line 14153
    :try_start_0
    iget-object v0, v0, Lcom/crittercism/internal/cb;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/crittercism/internal/ca;

    .line 14155
    if-nez v0, :cond_0

    .line 14156
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "setUserflowValue("

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "): no such userflow"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/crittercism/internal/cc;->b(Ljava/lang/String;)V

    .line 14157
    monitor-exit v1

    .line 14161
    :goto_0
    return-void

    .line 14327
    :cond_0
    iput p2, v0, Lcom/crittercism/internal/ca;->c:I

    .line 14161
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;JJJILcom/crittercism/internal/bj;)V
    .locals 5

    .prologue
    .line 416
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sub-long/2addr v0, p3

    .line 418
    if-nez p1, :cond_0

    .line 419
    const-string v0, "Null HTTP request method provided. Endpoint will not be logged."

    invoke-static {v0}, Lcom/crittercism/internal/cc;->a(Ljava/lang/String;)V

    .line 452
    :goto_0
    return-void

    .line 421
    :cond_0
    if-nez p2, :cond_1

    .line 422
    const-string v0, "Null url provided. Endpoint will not be logged"

    invoke-static {v0}, Lcom/crittercism/internal/cc;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 424
    :cond_1
    const-wide/16 v2, 0x0

    cmp-long v2, p5, v2

    if-ltz v2, :cond_2

    const-wide/16 v2, 0x0

    cmp-long v2, p7, v2

    if-gez v2, :cond_3

    .line 425
    :cond_2
    const-string v0, "Invalid byte values. Bytes need to be non-negative. Endpoint will not be logged."

    invoke-static {v0}, Lcom/crittercism/internal/cc;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 427
    :cond_3
    const-wide/16 v2, 0x0

    cmp-long v2, p3, v2

    if-ltz v2, :cond_4

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-gez v2, :cond_5

    .line 428
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Invalid latency \'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'. Endpoint will not be logged."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/crittercism/internal/cc;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 432
    :cond_5
    new-instance v2, Lcom/crittercism/internal/c;

    iget-object v3, p0, Lcom/crittercism/internal/am;->a:Landroid/app/Application;

    invoke-direct {v2, v3}, Lcom/crittercism/internal/c;-><init>(Landroid/content/Context;)V

    .line 433
    new-instance v3, Lcom/crittercism/internal/b;

    invoke-direct {v3}, Lcom/crittercism/internal/b;-><init>()V

    .line 434
    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v4

    .line 7316
    iput-object v4, v3, Lcom/crittercism/internal/b;->j:Ljava/lang/String;

    .line 435
    invoke-virtual {v3, p2}, Lcom/crittercism/internal/b;->a(Ljava/lang/String;)V

    .line 436
    invoke-virtual {v3, p5, p6}, Lcom/crittercism/internal/b;->a(J)V

    .line 437
    invoke-virtual {v3, p7, p8}, Lcom/crittercism/internal/b;->b(J)V

    .line 8165
    iput p9, v3, Lcom/crittercism/internal/b;->i:I

    .line 9063
    iget-object v2, v2, Lcom/crittercism/internal/c;->a:Landroid/net/ConnectivityManager;

    invoke-static {v2}, Lcom/crittercism/internal/a;->a(Landroid/net/ConnectivityManager;)Lcom/crittercism/internal/a;

    move-result-object v2

    .line 9266
    iput-object v2, v3, Lcom/crittercism/internal/b;->o:Lcom/crittercism/internal/a;

    .line 440
    invoke-virtual {v3, v0, v1}, Lcom/crittercism/internal/b;->c(J)V

    .line 441
    add-long/2addr v0, p3

    invoke-virtual {v3, v0, v1}, Lcom/crittercism/internal/b;->d(J)V

    .line 9372
    iput-object p10, v3, Lcom/crittercism/internal/b;->k:Lcom/crittercism/internal/bj;

    .line 447
    invoke-static {}, Lcom/crittercism/internal/an;->b()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 448
    invoke-static {}, Lcom/crittercism/internal/an;->a()Landroid/location/Location;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/crittercism/internal/b;->a(Landroid/location/Location;)V

    .line 451
    :cond_6
    iget-object v0, p0, Lcom/crittercism/internal/am;->k:Lcom/crittercism/internal/d;

    sget-object v1, Lcom/crittercism/internal/b$c;->l:Lcom/crittercism/internal/b$c;

    invoke-virtual {v0, v3, v1}, Lcom/crittercism/internal/d;->a(Lcom/crittercism/internal/b;Lcom/crittercism/internal/b$c;)V

    goto/16 :goto_0
.end method

.method public final a(Ljava/lang/Throwable;)V
    .locals 8

    .prologue
    .line 366
    new-instance v6, Ljava/util/Date;

    invoke-direct {v6}, Ljava/util/Date;-><init>()V

    .line 367
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    move-result-wide v4

    .line 368
    invoke-static {}, Ljava/lang/Thread;->getAllStackTraces()Ljava/util/Map;

    move-result-object v7

    .line 370
    new-instance v1, Lcom/crittercism/internal/am$3;

    move-object v2, p0

    move-object v3, p1

    invoke-direct/range {v1 .. v7}, Lcom/crittercism/internal/am$3;-><init>(Lcom/crittercism/internal/am;Ljava/lang/Throwable;JLjava/util/Date;Ljava/util/Map;)V

    .line 395
    iget-object v0, p0, Lcom/crittercism/internal/am;->i:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v0

    .line 399
    :try_start_0
    invoke-interface {v0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    .line 400
    iget-object v0, p0, Lcom/crittercism/internal/am;->s:Lcom/crittercism/internal/bu;

    .line 6355
    iget-object v1, v0, Lcom/crittercism/internal/bu;->e:Ljava/util/concurrent/ScheduledFuture;

    .line 6356
    if-eqz v1, :cond_0

    .line 6357
    invoke-interface {v1}, Ljava/util/concurrent/ScheduledFuture;->get()Ljava/lang/Object;

    .line 6361
    :cond_0
    iget-object v1, v0, Lcom/crittercism/internal/bu;->f:Ljava/util/concurrent/Future;

    .line 6362
    if-eqz v1, :cond_1

    .line 6363
    invoke-interface {v1}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    .line 6366
    :cond_1
    iget-object v0, v0, Lcom/crittercism/internal/bu;->g:Ljava/util/concurrent/Future;

    .line 6367
    if-eqz v0, :cond_2

    .line 6368
    invoke-interface {v0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1

    .line 406
    :cond_2
    :goto_0
    return-void

    .line 402
    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/crittercism/internal/cc;->b(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 404
    :catch_1
    move-exception v0

    invoke-static {v0}, Lcom/crittercism/internal/cc;->b(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public final a(Lorg/json/JSONObject;)V
    .locals 2

    .prologue
    .line 788
    iget-object v0, p0, Lcom/crittercism/internal/am;->i:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v1, Lcom/crittercism/internal/am$2;

    invoke-direct {v1, p0, p1}, Lcom/crittercism/internal/am$2;-><init>(Lcom/crittercism/internal/am;Lorg/json/JSONObject;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 796
    return-void
.end method

.method public final a()Z
    .locals 2

    .prologue
    .line 646
    iget-object v0, p0, Lcom/crittercism/internal/am;->i:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v1, Lcom/crittercism/internal/am$6;

    invoke-direct {v1, p0}, Lcom/crittercism/internal/am$6;-><init>(Lcom/crittercism/internal/am;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    .line 655
    const/4 v1, 0x0

    .line 658
    :try_start_0
    invoke-interface {v0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v0

    .line 665
    :goto_0
    return v0

    .line 660
    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/crittercism/internal/cc;->b(Ljava/lang/Throwable;)V

    move v0, v1

    .line 663
    goto :goto_0

    .line 662
    :catch_1
    move-exception v0

    invoke-static {v0}, Lcom/crittercism/internal/cc;->b(Ljava/lang/Throwable;)V

    move v0, v1

    goto :goto_0
.end method

.method public final b(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 803
    iget-object v0, p0, Lcom/crittercism/internal/am;->l:Lcom/crittercism/internal/cb;

    invoke-virtual {v0, p1}, Lcom/crittercism/internal/cb;->a(Ljava/lang/String;)V

    .line 804
    return-void
.end method

.method public final declared-synchronized b(Ljava/lang/Throwable;)V
    .locals 3

    .prologue
    .line 480
    monitor-enter p0

    if-nez p1, :cond_0

    .line 481
    :try_start_0
    const-string v0, "Calling logHandledException with a null java.lang.Throwable. Nothing will be reported to Crittercism"

    invoke-static {v0}, Lcom/crittercism/internal/cc;->b(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 509
    :goto_0
    monitor-exit p0

    return-void

    .line 485
    :cond_0
    :try_start_1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    move-result-wide v0

    .line 487
    new-instance v2, Lcom/crittercism/internal/am$4;

    invoke-direct {v2, p0, p1, v0, v1}, Lcom/crittercism/internal/am$4;-><init>(Lcom/crittercism/internal/am;Ljava/lang/Throwable;J)V

    .line 508
    iget-object v0, p0, Lcom/crittercism/internal/am;->i:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v0, v2}, Ljava/util/concurrent/ScheduledExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 480
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final b()Z
    .locals 2

    .prologue
    .line 709
    iget-object v0, p0, Lcom/crittercism/internal/am;->i:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v1, Lcom/crittercism/internal/am$8;

    invoke-direct {v1, p0}, Lcom/crittercism/internal/am$8;-><init>(Lcom/crittercism/internal/am;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    .line 716
    const/4 v1, 0x0

    .line 719
    :try_start_0
    invoke-interface {v0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v0

    .line 725
    :goto_0
    return v0

    .line 721
    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/crittercism/internal/cc;->b(Ljava/lang/Throwable;)V

    move v0, v1

    .line 724
    goto :goto_0

    .line 723
    :catch_1
    move-exception v0

    invoke-static {v0}, Lcom/crittercism/internal/cc;->b(Ljava/lang/Throwable;)V

    move v0, v1

    goto :goto_0
.end method

.method public final c(Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 807
    iget-object v1, p0, Lcom/crittercism/internal/am;->l:Lcom/crittercism/internal/cb;

    .line 14120
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 14123
    iget-object v4, v1, Lcom/crittercism/internal/cb;->a:Ljava/util/HashMap;

    monitor-enter v4

    .line 14124
    :try_start_0
    iget-object v0, v1, Lcom/crittercism/internal/cb;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/crittercism/internal/ca;

    .line 14126
    if-nez v0, :cond_0

    .line 14127
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "failUserflow("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "): no such userflow"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/crittercism/internal/cc;->b(Ljava/lang/String;)V

    .line 14128
    monitor-exit v4

    :goto_0
    return-void

    .line 14131
    :cond_0
    sget v5, Lcom/crittercism/internal/ca$d;->e:I

    invoke-virtual {v0, v5, v2, v3}, Lcom/crittercism/internal/ca;->a(IJ)V

    .line 14132
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14134
    iget-object v2, v1, Lcom/crittercism/internal/cb;->b:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v3, Lcom/crittercism/internal/cb$2;

    invoke-direct {v3, v1, v0}, Lcom/crittercism/internal/cb$2;-><init>(Lcom/crittercism/internal/cb;Lcom/crittercism/internal/ca;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/ScheduledExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    goto :goto_0

    .line 14132
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final d(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 811
    iget-object v0, p0, Lcom/crittercism/internal/am;->l:Lcom/crittercism/internal/cb;

    .line 14146
    iget-object v1, v0, Lcom/crittercism/internal/cb;->a:Ljava/util/HashMap;

    monitor-enter v1

    .line 14147
    :try_start_0
    iget-object v0, v0, Lcom/crittercism/internal/cb;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14148
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final e(Ljava/lang/String;)I
    .locals 1

    .prologue
    .line 819
    iget-object v0, p0, Lcom/crittercism/internal/am;->l:Lcom/crittercism/internal/cb;

    invoke-virtual {v0, p1}, Lcom/crittercism/internal/cb;->b(Ljava/lang/String;)I

    move-result v0

    return v0
.end method
