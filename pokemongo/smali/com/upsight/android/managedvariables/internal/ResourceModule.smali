.class public Lcom/upsight/android/managedvariables/internal/ResourceModule;
.super Ljava/lang/Object;
.source "ResourceModule.java"


# static fields
.field public static final RES_UXM_SCHEMA:Ljava/lang/String; = "resUxmSchema"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method provideUxmSchemaResource()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 24
    sget v0, Lcom/upsight/android/managedvariables/R$raw;->uxm_schema:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method
