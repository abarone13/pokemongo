.class public Lcom/nianticproject/holoholo/libholoholo/unity/UnityMainActivity;
.super Lcom/unity3d/player/UnityPlayerActivity;
.source "UnityMainActivity.java"

# interfaces
.implements Landroid/arch/lifecycle/LifecycleOwner;


# static fields
.field private static final ANDROID_PERMISSION_SERVICE_CALLBACK:Ljava/lang/String; = "OnPermissionDialogResponse"

.field private static final ANDROID_PERMISSION_SERVICE_GAME_OBJECT:Ljava/lang/String; = "AndroidPermissionService"

.field private static final TAG:Ljava/lang/String; = "UnityMainActivity"


# instance fields
.field private final components:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Lcom/nianticproject/holoholo/libholoholo/unity/component/GameComponent;",
            ">;"
        }
    .end annotation
.end field

.field private final lifecycleRegistry:Landroid/arch/lifecycle/LifecycleRegistry;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 63
    invoke-direct {p0}, Lcom/unity3d/player/UnityPlayerActivity;-><init>()V

    .line 64
    new-instance v0, Landroid/arch/lifecycle/LifecycleRegistry;

    invoke-direct {v0, p0}, Landroid/arch/lifecycle/LifecycleRegistry;-><init>(Landroid/arch/lifecycle/LifecycleOwner;)V

    iput-object v0, p0, Lcom/nianticproject/holoholo/libholoholo/unity/UnityMainActivity;->lifecycleRegistry:Landroid/arch/lifecycle/LifecycleRegistry;

    .line 65
    iget-object v0, p0, Lcom/nianticproject/holoholo/libholoholo/unity/UnityMainActivity;->lifecycleRegistry:Landroid/arch/lifecycle/LifecycleRegistry;

    sget-object v1, Landroid/arch/lifecycle/Lifecycle$State;->INITIALIZED:Landroid/arch/lifecycle/Lifecycle$State;

    invoke-virtual {v0, v1}, Landroid/arch/lifecycle/LifecycleRegistry;->markState(Landroid/arch/lifecycle/Lifecycle$State;)V

    .line 68
    invoke-static {}, Lcom/nianticproject/holoholo/libholoholo/unity/GameModule;->create()Ljava/util/Collection;

    move-result-object v0

    iput-object v0, p0, Lcom/nianticproject/holoholo/libholoholo/unity/UnityMainActivity;->components:Ljava/util/Collection;

    .line 69
    return-void
.end method


# virtual methods
.method public getComponent(Ljava/lang/Class;)Lcom/nianticproject/holoholo/libholoholo/unity/component/GameComponent;
    .locals 3
    .param p1, "clazz"    # Ljava/lang/Class;

    .prologue
    .line 75
    iget-object v1, p0, Lcom/nianticproject/holoholo/libholoholo/unity/UnityMainActivity;->components:Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/holoholo/libholoholo/unity/component/GameComponent;

    .line 76
    .local v0, "comp":Lcom/nianticproject/holoholo/libholoholo/unity/component/GameComponent;
    invoke-virtual {p1, v0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 81
    .end local v0    # "comp":Lcom/nianticproject/holoholo/libholoholo/unity/component/GameComponent;
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getLifecycle()Landroid/arch/lifecycle/Lifecycle;
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lcom/nianticproject/holoholo/libholoholo/unity/UnityMainActivity;->lifecycleRegistry:Landroid/arch/lifecycle/LifecycleRegistry;

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 86
    invoke-super {p0, p1}, Lcom/unity3d/player/UnityPlayerActivity;->onCreate(Landroid/os/Bundle;)V

    .line 90
    iget-object v1, p0, Lcom/nianticproject/holoholo/libholoholo/unity/UnityMainActivity;->components:Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/holoholo/libholoholo/unity/component/GameComponent;

    .line 91
    .local v0, "comp":Lcom/nianticproject/holoholo/libholoholo/unity/component/GameComponent;
    invoke-interface {v0, p0, p0}, Lcom/nianticproject/holoholo/libholoholo/unity/component/GameComponent;->initialize(Landroid/content/Context;Landroid/arch/lifecycle/LifecycleOwner;)V

    goto :goto_0

    .line 94
    .end local v0    # "comp":Lcom/nianticproject/holoholo/libholoholo/unity/component/GameComponent;
    :cond_0
    iget-object v1, p0, Lcom/nianticproject/holoholo/libholoholo/unity/UnityMainActivity;->lifecycleRegistry:Landroid/arch/lifecycle/LifecycleRegistry;

    sget-object v2, Landroid/arch/lifecycle/Lifecycle$State;->CREATED:Landroid/arch/lifecycle/Lifecycle$State;

    invoke-virtual {v1, v2}, Landroid/arch/lifecycle/LifecycleRegistry;->markState(Landroid/arch/lifecycle/Lifecycle$State;)V

    .line 95
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 99
    invoke-super {p0}, Lcom/unity3d/player/UnityPlayerActivity;->onDestroy()V

    .line 100
    iget-object v0, p0, Lcom/nianticproject/holoholo/libholoholo/unity/UnityMainActivity;->lifecycleRegistry:Landroid/arch/lifecycle/LifecycleRegistry;

    sget-object v1, Landroid/arch/lifecycle/Lifecycle$State;->DESTROYED:Landroid/arch/lifecycle/Lifecycle$State;

    invoke-virtual {v0, v1}, Landroid/arch/lifecycle/LifecycleRegistry;->markState(Landroid/arch/lifecycle/Lifecycle$State;)V

    .line 101
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 105
    invoke-super {p0}, Lcom/unity3d/player/UnityPlayerActivity;->onPause()V

    .line 106
    iget-object v0, p0, Lcom/nianticproject/holoholo/libholoholo/unity/UnityMainActivity;->lifecycleRegistry:Landroid/arch/lifecycle/LifecycleRegistry;

    sget-object v1, Landroid/arch/lifecycle/Lifecycle$State;->STARTED:Landroid/arch/lifecycle/Lifecycle$State;

    invoke-virtual {v0, v1}, Landroid/arch/lifecycle/LifecycleRegistry;->markState(Landroid/arch/lifecycle/Lifecycle$State;)V

    .line 107
    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 3
    .param p1, "requestCode"    # I
    .param p2, "permissions"    # [Ljava/lang/String;
    .param p3, "grantResults"    # [I

    .prologue
    .line 53
    const-string v0, "AndroidPermissionService"

    const-string v1, "OnPermissionDialogResponse"

    .line 56
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    .line 53
    invoke-static {v0, v1, v2}, Lcom/unity3d/player/UnityPlayer;->UnitySendMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 111
    invoke-super {p0}, Lcom/unity3d/player/UnityPlayerActivity;->onResume()V

    .line 112
    iget-object v0, p0, Lcom/nianticproject/holoholo/libholoholo/unity/UnityMainActivity;->lifecycleRegistry:Landroid/arch/lifecycle/LifecycleRegistry;

    sget-object v1, Landroid/arch/lifecycle/Lifecycle$State;->RESUMED:Landroid/arch/lifecycle/Lifecycle$State;

    invoke-virtual {v0, v1}, Landroid/arch/lifecycle/LifecycleRegistry;->markState(Landroid/arch/lifecycle/Lifecycle$State;)V

    .line 113
    return-void
.end method

.method public onStart()V
    .locals 2

    .prologue
    .line 117
    invoke-super {p0}, Lcom/unity3d/player/UnityPlayerActivity;->onStart()V

    .line 118
    iget-object v0, p0, Lcom/nianticproject/holoholo/libholoholo/unity/UnityMainActivity;->lifecycleRegistry:Landroid/arch/lifecycle/LifecycleRegistry;

    sget-object v1, Landroid/arch/lifecycle/Lifecycle$State;->STARTED:Landroid/arch/lifecycle/Lifecycle$State;

    invoke-virtual {v0, v1}, Landroid/arch/lifecycle/LifecycleRegistry;->markState(Landroid/arch/lifecycle/Lifecycle$State;)V

    .line 119
    return-void
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 123
    invoke-super {p0}, Lcom/unity3d/player/UnityPlayerActivity;->onStop()V

    .line 124
    iget-object v0, p0, Lcom/nianticproject/holoholo/libholoholo/unity/UnityMainActivity;->lifecycleRegistry:Landroid/arch/lifecycle/LifecycleRegistry;

    sget-object v1, Landroid/arch/lifecycle/Lifecycle$State;->CREATED:Landroid/arch/lifecycle/Lifecycle$State;

    invoke-virtual {v0, v1}, Landroid/arch/lifecycle/LifecycleRegistry;->markState(Landroid/arch/lifecycle/Lifecycle$State;)V

    .line 125
    return-void
.end method
