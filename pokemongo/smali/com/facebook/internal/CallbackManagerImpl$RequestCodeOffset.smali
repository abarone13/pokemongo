.class public final enum Lcom/facebook/internal/CallbackManagerImpl$RequestCodeOffset;
.super Ljava/lang/Enum;
.source "CallbackManagerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/internal/CallbackManagerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "RequestCodeOffset"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/facebook/internal/CallbackManagerImpl$RequestCodeOffset;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/facebook/internal/CallbackManagerImpl$RequestCodeOffset;

.field public static final enum AppGroupCreate:Lcom/facebook/internal/CallbackManagerImpl$RequestCodeOffset;

.field public static final enum AppGroupJoin:Lcom/facebook/internal/CallbackManagerImpl$RequestCodeOffset;

.field public static final enum AppInvite:Lcom/facebook/internal/CallbackManagerImpl$RequestCodeOffset;

.field public static final enum DeviceShare:Lcom/facebook/internal/CallbackManagerImpl$RequestCodeOffset;

.field public static final enum GameRequest:Lcom/facebook/internal/CallbackManagerImpl$RequestCodeOffset;

.field public static final enum Like:Lcom/facebook/internal/CallbackManagerImpl$RequestCodeOffset;

.field public static final enum Login:Lcom/facebook/internal/CallbackManagerImpl$RequestCodeOffset;

.field public static final enum Message:Lcom/facebook/internal/CallbackManagerImpl$RequestCodeOffset;

.field public static final enum Share:Lcom/facebook/internal/CallbackManagerImpl$RequestCodeOffset;


# instance fields
.field private final offset:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 96
    new-instance v0, Lcom/facebook/internal/CallbackManagerImpl$RequestCodeOffset;

    const-string v1, "Login"

    invoke-direct {v0, v1, v4, v4}, Lcom/facebook/internal/CallbackManagerImpl$RequestCodeOffset;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/facebook/internal/CallbackManagerImpl$RequestCodeOffset;->Login:Lcom/facebook/internal/CallbackManagerImpl$RequestCodeOffset;

    .line 97
    new-instance v0, Lcom/facebook/internal/CallbackManagerImpl$RequestCodeOffset;

    const-string v1, "Share"

    invoke-direct {v0, v1, v5, v5}, Lcom/facebook/internal/CallbackManagerImpl$RequestCodeOffset;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/facebook/internal/CallbackManagerImpl$RequestCodeOffset;->Share:Lcom/facebook/internal/CallbackManagerImpl$RequestCodeOffset;

    .line 98
    new-instance v0, Lcom/facebook/internal/CallbackManagerImpl$RequestCodeOffset;

    const-string v1, "Message"

    invoke-direct {v0, v1, v6, v6}, Lcom/facebook/internal/CallbackManagerImpl$RequestCodeOffset;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/facebook/internal/CallbackManagerImpl$RequestCodeOffset;->Message:Lcom/facebook/internal/CallbackManagerImpl$RequestCodeOffset;

    .line 99
    new-instance v0, Lcom/facebook/internal/CallbackManagerImpl$RequestCodeOffset;

    const-string v1, "Like"

    invoke-direct {v0, v1, v7, v7}, Lcom/facebook/internal/CallbackManagerImpl$RequestCodeOffset;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/facebook/internal/CallbackManagerImpl$RequestCodeOffset;->Like:Lcom/facebook/internal/CallbackManagerImpl$RequestCodeOffset;

    .line 100
    new-instance v0, Lcom/facebook/internal/CallbackManagerImpl$RequestCodeOffset;

    const-string v1, "GameRequest"

    invoke-direct {v0, v1, v8, v8}, Lcom/facebook/internal/CallbackManagerImpl$RequestCodeOffset;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/facebook/internal/CallbackManagerImpl$RequestCodeOffset;->GameRequest:Lcom/facebook/internal/CallbackManagerImpl$RequestCodeOffset;

    .line 101
    new-instance v0, Lcom/facebook/internal/CallbackManagerImpl$RequestCodeOffset;

    const-string v1, "AppGroupCreate"

    const/4 v2, 0x5

    const/4 v3, 0x5

    invoke-direct {v0, v1, v2, v3}, Lcom/facebook/internal/CallbackManagerImpl$RequestCodeOffset;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/facebook/internal/CallbackManagerImpl$RequestCodeOffset;->AppGroupCreate:Lcom/facebook/internal/CallbackManagerImpl$RequestCodeOffset;

    .line 102
    new-instance v0, Lcom/facebook/internal/CallbackManagerImpl$RequestCodeOffset;

    const-string v1, "AppGroupJoin"

    const/4 v2, 0x6

    const/4 v3, 0x6

    invoke-direct {v0, v1, v2, v3}, Lcom/facebook/internal/CallbackManagerImpl$RequestCodeOffset;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/facebook/internal/CallbackManagerImpl$RequestCodeOffset;->AppGroupJoin:Lcom/facebook/internal/CallbackManagerImpl$RequestCodeOffset;

    .line 103
    new-instance v0, Lcom/facebook/internal/CallbackManagerImpl$RequestCodeOffset;

    const-string v1, "AppInvite"

    const/4 v2, 0x7

    const/4 v3, 0x7

    invoke-direct {v0, v1, v2, v3}, Lcom/facebook/internal/CallbackManagerImpl$RequestCodeOffset;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/facebook/internal/CallbackManagerImpl$RequestCodeOffset;->AppInvite:Lcom/facebook/internal/CallbackManagerImpl$RequestCodeOffset;

    .line 104
    new-instance v0, Lcom/facebook/internal/CallbackManagerImpl$RequestCodeOffset;

    const-string v1, "DeviceShare"

    const/16 v2, 0x8

    const/16 v3, 0x8

    invoke-direct {v0, v1, v2, v3}, Lcom/facebook/internal/CallbackManagerImpl$RequestCodeOffset;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/facebook/internal/CallbackManagerImpl$RequestCodeOffset;->DeviceShare:Lcom/facebook/internal/CallbackManagerImpl$RequestCodeOffset;

    .line 95
    const/16 v0, 0x9

    new-array v0, v0, [Lcom/facebook/internal/CallbackManagerImpl$RequestCodeOffset;

    sget-object v1, Lcom/facebook/internal/CallbackManagerImpl$RequestCodeOffset;->Login:Lcom/facebook/internal/CallbackManagerImpl$RequestCodeOffset;

    aput-object v1, v0, v4

    sget-object v1, Lcom/facebook/internal/CallbackManagerImpl$RequestCodeOffset;->Share:Lcom/facebook/internal/CallbackManagerImpl$RequestCodeOffset;

    aput-object v1, v0, v5

    sget-object v1, Lcom/facebook/internal/CallbackManagerImpl$RequestCodeOffset;->Message:Lcom/facebook/internal/CallbackManagerImpl$RequestCodeOffset;

    aput-object v1, v0, v6

    sget-object v1, Lcom/facebook/internal/CallbackManagerImpl$RequestCodeOffset;->Like:Lcom/facebook/internal/CallbackManagerImpl$RequestCodeOffset;

    aput-object v1, v0, v7

    sget-object v1, Lcom/facebook/internal/CallbackManagerImpl$RequestCodeOffset;->GameRequest:Lcom/facebook/internal/CallbackManagerImpl$RequestCodeOffset;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/facebook/internal/CallbackManagerImpl$RequestCodeOffset;->AppGroupCreate:Lcom/facebook/internal/CallbackManagerImpl$RequestCodeOffset;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/facebook/internal/CallbackManagerImpl$RequestCodeOffset;->AppGroupJoin:Lcom/facebook/internal/CallbackManagerImpl$RequestCodeOffset;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/facebook/internal/CallbackManagerImpl$RequestCodeOffset;->AppInvite:Lcom/facebook/internal/CallbackManagerImpl$RequestCodeOffset;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/facebook/internal/CallbackManagerImpl$RequestCodeOffset;->DeviceShare:Lcom/facebook/internal/CallbackManagerImpl$RequestCodeOffset;

    aput-object v2, v0, v1

    sput-object v0, Lcom/facebook/internal/CallbackManagerImpl$RequestCodeOffset;->$VALUES:[Lcom/facebook/internal/CallbackManagerImpl$RequestCodeOffset;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .param p3, "offset"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 109
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 110
    iput p3, p0, Lcom/facebook/internal/CallbackManagerImpl$RequestCodeOffset;->offset:I

    .line 111
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/facebook/internal/CallbackManagerImpl$RequestCodeOffset;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 95
    const-class v0, Lcom/facebook/internal/CallbackManagerImpl$RequestCodeOffset;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/facebook/internal/CallbackManagerImpl$RequestCodeOffset;

    return-object v0
.end method

.method public static values()[Lcom/facebook/internal/CallbackManagerImpl$RequestCodeOffset;
    .locals 1

    .prologue
    .line 95
    sget-object v0, Lcom/facebook/internal/CallbackManagerImpl$RequestCodeOffset;->$VALUES:[Lcom/facebook/internal/CallbackManagerImpl$RequestCodeOffset;

    invoke-virtual {v0}, [Lcom/facebook/internal/CallbackManagerImpl$RequestCodeOffset;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/facebook/internal/CallbackManagerImpl$RequestCodeOffset;

    return-object v0
.end method


# virtual methods
.method public toRequestCode()I
    .locals 2

    .prologue
    .line 114
    invoke-static {}, Lcom/facebook/FacebookSdk;->getCallbackRequestCodeOffset()I

    move-result v0

    iget v1, p0, Lcom/facebook/internal/CallbackManagerImpl$RequestCodeOffset;->offset:I

    add-int/2addr v0, v1

    return v0
.end method
