.class Lcom/nianticlabs/nia/location/NianticLocationManager$2;
.super Ljava/lang/Object;
.source "NianticLocationManager.java"

# interfaces
.implements Lcom/nianticlabs/nia/location/Provider$ProviderListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nianticlabs/nia/location/NianticLocationManager;->addProvider(Ljava/lang/String;Lcom/nianticlabs/nia/location/Provider;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nianticlabs/nia/location/NianticLocationManager;

.field final synthetic val$name:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/nianticlabs/nia/location/NianticLocationManager;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/nianticlabs/nia/location/NianticLocationManager;

    .prologue
    .line 109
    iput-object p1, p0, Lcom/nianticlabs/nia/location/NianticLocationManager$2;->this$0:Lcom/nianticlabs/nia/location/NianticLocationManager;

    iput-object p2, p0, Lcom/nianticlabs/nia/location/NianticLocationManager$2;->val$name:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProviderLocation(Landroid/location/Location;)V
    .locals 2
    .param p1, "location"    # Landroid/location/Location;

    .prologue
    .line 117
    iget-object v0, p0, Lcom/nianticlabs/nia/location/NianticLocationManager$2;->this$0:Lcom/nianticlabs/nia/location/NianticLocationManager;

    iget-object v1, p0, Lcom/nianticlabs/nia/location/NianticLocationManager$2;->this$0:Lcom/nianticlabs/nia/location/NianticLocationManager;

    invoke-static {v1}, Lcom/nianticlabs/nia/location/NianticLocationManager;->access$200(Lcom/nianticlabs/nia/location/NianticLocationManager;)[I

    move-result-object v1

    invoke-static {v0, p1, v1}, Lcom/nianticlabs/nia/location/NianticLocationManager;->access$300(Lcom/nianticlabs/nia/location/NianticLocationManager;Landroid/location/Location;[I)V

    .line 118
    return-void
.end method

.method public onProviderStatus(Lcom/nianticlabs/nia/contextservice/ServiceStatus;)V
    .locals 2
    .param p1, "status"    # Lcom/nianticlabs/nia/contextservice/ServiceStatus;

    .prologue
    .line 112
    iget-object v0, p0, Lcom/nianticlabs/nia/location/NianticLocationManager$2;->this$0:Lcom/nianticlabs/nia/location/NianticLocationManager;

    invoke-static {v0}, Lcom/nianticlabs/nia/location/NianticLocationManager;->access$100(Lcom/nianticlabs/nia/location/NianticLocationManager;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/nianticlabs/nia/location/NianticLocationManager$2;->val$name:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    return-void
.end method
