.class public interface abstract Lcom/upsight/android/UpsightCoreComponent;
.super Ljava/lang/Object;
.source "UpsightCoreComponent.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/upsight/android/UpsightCoreComponent$Factory;
    }
.end annotation


# virtual methods
.method public abstract applicationContext()Landroid/content/Context;
.end method

.method public abstract backgroundDataStore()Lcom/upsight/android/persistence/UpsightDataStore;
.end method

.method public abstract bus()Lcom/squareup/otto/Bus;
.end method

.method public abstract gson()Lcom/google/gson/Gson;
.end method

.method public abstract jsonParser()Lcom/google/gson/JsonParser;
.end method

.method public abstract observeOnScheduler()Lrx/Scheduler;
.end method

.method public abstract subscribeOnScheduler()Lrx/Scheduler;
.end method

.method public abstract upsightContext()Lcom/upsight/android/UpsightContext;
.end method
