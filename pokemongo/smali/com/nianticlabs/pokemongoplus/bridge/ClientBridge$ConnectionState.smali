.class public final enum Lcom/nianticlabs/pokemongoplus/bridge/ClientBridge$ConnectionState;
.super Ljava/lang/Enum;
.source "ClientBridge.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nianticlabs/pokemongoplus/bridge/ClientBridge;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ConnectionState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/nianticlabs/pokemongoplus/bridge/ClientBridge$ConnectionState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/nianticlabs/pokemongoplus/bridge/ClientBridge$ConnectionState;

.field public static final enum Connected:Lcom/nianticlabs/pokemongoplus/bridge/ClientBridge$ConnectionState;

.field public static final enum Disconnected:Lcom/nianticlabs/pokemongoplus/bridge/ClientBridge$ConnectionState;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 21
    new-instance v0, Lcom/nianticlabs/pokemongoplus/bridge/ClientBridge$ConnectionState;

    const-string v1, "Disconnected"

    invoke-direct {v0, v1, v2}, Lcom/nianticlabs/pokemongoplus/bridge/ClientBridge$ConnectionState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nianticlabs/pokemongoplus/bridge/ClientBridge$ConnectionState;->Disconnected:Lcom/nianticlabs/pokemongoplus/bridge/ClientBridge$ConnectionState;

    .line 22
    new-instance v0, Lcom/nianticlabs/pokemongoplus/bridge/ClientBridge$ConnectionState;

    const-string v1, "Connected"

    invoke-direct {v0, v1, v3}, Lcom/nianticlabs/pokemongoplus/bridge/ClientBridge$ConnectionState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nianticlabs/pokemongoplus/bridge/ClientBridge$ConnectionState;->Connected:Lcom/nianticlabs/pokemongoplus/bridge/ClientBridge$ConnectionState;

    .line 20
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/nianticlabs/pokemongoplus/bridge/ClientBridge$ConnectionState;

    sget-object v1, Lcom/nianticlabs/pokemongoplus/bridge/ClientBridge$ConnectionState;->Disconnected:Lcom/nianticlabs/pokemongoplus/bridge/ClientBridge$ConnectionState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/nianticlabs/pokemongoplus/bridge/ClientBridge$ConnectionState;->Connected:Lcom/nianticlabs/pokemongoplus/bridge/ClientBridge$ConnectionState;

    aput-object v1, v0, v3

    sput-object v0, Lcom/nianticlabs/pokemongoplus/bridge/ClientBridge$ConnectionState;->$VALUES:[Lcom/nianticlabs/pokemongoplus/bridge/ClientBridge$ConnectionState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 20
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/nianticlabs/pokemongoplus/bridge/ClientBridge$ConnectionState;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 20
    const-class v0, Lcom/nianticlabs/pokemongoplus/bridge/ClientBridge$ConnectionState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/nianticlabs/pokemongoplus/bridge/ClientBridge$ConnectionState;

    return-object v0
.end method

.method public static values()[Lcom/nianticlabs/pokemongoplus/bridge/ClientBridge$ConnectionState;
    .locals 1

    .prologue
    .line 20
    sget-object v0, Lcom/nianticlabs/pokemongoplus/bridge/ClientBridge$ConnectionState;->$VALUES:[Lcom/nianticlabs/pokemongoplus/bridge/ClientBridge$ConnectionState;

    invoke-virtual {v0}, [Lcom/nianticlabs/pokemongoplus/bridge/ClientBridge$ConnectionState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/nianticlabs/pokemongoplus/bridge/ClientBridge$ConnectionState;

    return-object v0
.end method
