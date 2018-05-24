.class Lcom/upsight/android/analytics/internal/Analytics;
.super Ljava/lang/Object;
.source "Analytics.java"

# interfaces
.implements Lcom/upsight/android/analytics/UpsightAnalyticsApi;


# static fields
.field private static final SEQUENCE_ID_FIELD_NAME:Ljava/lang/String; = "seq_id"

.field private static final USER_ATTRIBUTES_FIELD_NAME:Ljava/lang/String; = "user_attributes"


# instance fields
.field private final mAssociationManager:Lcom/upsight/android/analytics/internal/association/AssociationManager;

.field private final mDataStore:Lcom/upsight/android/persistence/UpsightDataStore;

.field private final mDefaultUserAttributes:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/upsight/android/analytics/provider/UpsightUserAttributes$Entry;",
            ">;"
        }
    .end annotation
.end field

.field private final mGooglePlayHelper:Lcom/upsight/android/analytics/UpsightGooglePlayHelper;

.field private final mGson:Lcom/google/gson/Gson;

.field private final mLifeCycleTracker:Lcom/upsight/android/analytics/UpsightLifeCycleTracker;

.field private final mLocationTracker:Lcom/upsight/android/analytics/provider/UpsightLocationTracker;

.field private final mOptOutStatus:Lcom/upsight/android/analytics/provider/UpsightOptOutStatus;

.field private final mSchemaSelector:Lcom/upsight/android/analytics/internal/dispatcher/schema/SchemaSelectorBuilder;

.field private final mSessionManager:Lcom/upsight/android/analytics/internal/session/SessionManager;

.field private final mUpsight:Lcom/upsight/android/UpsightContext;

.field private final mUserAttributes:Lcom/upsight/android/analytics/provider/UpsightUserAttributes;


# direct methods
.method public constructor <init>(Lcom/upsight/android/UpsightContext;Lcom/upsight/android/analytics/UpsightLifeCycleTracker;Lcom/upsight/android/analytics/internal/session/SessionManager;Lcom/upsight/android/analytics/internal/dispatcher/schema/SchemaSelectorBuilder;Lcom/upsight/android/analytics/internal/association/AssociationManager;Lcom/upsight/android/analytics/provider/UpsightOptOutStatus;Lcom/upsight/android/analytics/provider/UpsightLocationTracker;Lcom/upsight/android/analytics/provider/UpsightUserAttributes;Lcom/upsight/android/analytics/UpsightGooglePlayHelper;)V
    .locals 1
    .param p1, "upsight"    # Lcom/upsight/android/UpsightContext;
    .param p2, "lifeCycleTracker"    # Lcom/upsight/android/analytics/UpsightLifeCycleTracker;
    .param p3, "sessionManager"    # Lcom/upsight/android/analytics/internal/session/SessionManager;
    .param p4, "schemaSelector"    # Lcom/upsight/android/analytics/internal/dispatcher/schema/SchemaSelectorBuilder;
    .param p5, "associationManager"    # Lcom/upsight/android/analytics/internal/association/AssociationManager;
    .param p6, "optOutStatus"    # Lcom/upsight/android/analytics/provider/UpsightOptOutStatus;
    .param p7, "locationTracker"    # Lcom/upsight/android/analytics/provider/UpsightLocationTracker;
    .param p8, "userAttributes"    # Lcom/upsight/android/analytics/provider/UpsightUserAttributes;
    .param p9, "googlePlayHelper"    # Lcom/upsight/android/analytics/UpsightGooglePlayHelper;

    .prologue
    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    iput-object p1, p0, Lcom/upsight/android/analytics/internal/Analytics;->mUpsight:Lcom/upsight/android/UpsightContext;

    .line 85
    invoke-virtual {p1}, Lcom/upsight/android/UpsightContext;->getDataStore()Lcom/upsight/android/persistence/UpsightDataStore;

    move-result-object v0

    iput-object v0, p0, Lcom/upsight/android/analytics/internal/Analytics;->mDataStore:Lcom/upsight/android/persistence/UpsightDataStore;

    .line 86
    iput-object p2, p0, Lcom/upsight/android/analytics/internal/Analytics;->mLifeCycleTracker:Lcom/upsight/android/analytics/UpsightLifeCycleTracker;

    .line 87
    iput-object p3, p0, Lcom/upsight/android/analytics/internal/Analytics;->mSessionManager:Lcom/upsight/android/analytics/internal/session/SessionManager;

    .line 88
    invoke-virtual {p1}, Lcom/upsight/android/UpsightContext;->getCoreComponent()Lcom/upsight/android/UpsightCoreComponent;

    move-result-object v0

    invoke-interface {v0}, Lcom/upsight/android/UpsightCoreComponent;->gson()Lcom/google/gson/Gson;

    move-result-object v0

    iput-object v0, p0, Lcom/upsight/android/analytics/internal/Analytics;->mGson:Lcom/google/gson/Gson;

    .line 89
    iput-object p4, p0, Lcom/upsight/android/analytics/internal/Analytics;->mSchemaSelector:Lcom/upsight/android/analytics/internal/dispatcher/schema/SchemaSelectorBuilder;

    .line 90
    iput-object p5, p0, Lcom/upsight/android/analytics/internal/Analytics;->mAssociationManager:Lcom/upsight/android/analytics/internal/association/AssociationManager;

    .line 91
    iput-object p6, p0, Lcom/upsight/android/analytics/internal/Analytics;->mOptOutStatus:Lcom/upsight/android/analytics/provider/UpsightOptOutStatus;

    .line 92
    iput-object p7, p0, Lcom/upsight/android/analytics/internal/Analytics;->mLocationTracker:Lcom/upsight/android/analytics/provider/UpsightLocationTracker;

    .line 93
    iput-object p8, p0, Lcom/upsight/android/analytics/internal/Analytics;->mUserAttributes:Lcom/upsight/android/analytics/provider/UpsightUserAttributes;

    .line 94
    iget-object v0, p0, Lcom/upsight/android/analytics/internal/Analytics;->mUserAttributes:Lcom/upsight/android/analytics/provider/UpsightUserAttributes;

    invoke-virtual {v0}, Lcom/upsight/android/analytics/provider/UpsightUserAttributes;->getDefault()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/upsight/android/analytics/internal/Analytics;->mDefaultUserAttributes:Ljava/util/Set;

    .line 95
    iput-object p9, p0, Lcom/upsight/android/analytics/internal/Analytics;->mGooglePlayHelper:Lcom/upsight/android/analytics/UpsightGooglePlayHelper;

    .line 96
    return-void
.end method

.method private appendAssociationData(Ljava/lang/String;Lcom/google/gson/JsonObject;)V
    .locals 1
    .param p1, "eventType"    # Ljava/lang/String;
    .param p2, "eventNode"    # Lcom/google/gson/JsonObject;

    .prologue
    .line 121
    iget-object v0, p0, Lcom/upsight/android/analytics/internal/Analytics;->mAssociationManager:Lcom/upsight/android/analytics/internal/association/AssociationManager;

    invoke-interface {v0, p1, p2}, Lcom/upsight/android/analytics/internal/association/AssociationManager;->associate(Ljava/lang/String;Lcom/google/gson/JsonObject;)V

    .line 122
    return-void
.end method

.method private getAllAsJsonElement(Ljava/util/Set;)Lcom/google/gson/JsonElement;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Lcom/upsight/android/analytics/provider/UpsightUserAttributes$Entry;",
            ">;)",
            "Lcom/google/gson/JsonElement;"
        }
    .end annotation

    .prologue
    .line 250
    .local p1, "defaultUserAttributes":Ljava/util/Set;, "Ljava/util/Set<Lcom/upsight/android/analytics/provider/UpsightUserAttributes$Entry;>;"
    new-instance v6, Lcom/google/gson/JsonObject;

    invoke-direct {v6}, Lcom/google/gson/JsonObject;-><init>()V

    .line 251
    .local v6, "o":Lcom/google/gson/JsonObject;
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_0
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/upsight/android/analytics/provider/UpsightUserAttributes$Entry;

    .line 252
    .local v3, "entry":Lcom/upsight/android/analytics/provider/UpsightUserAttributes$Entry;
    const-class v7, Ljava/lang/String;

    invoke-virtual {v3}, Lcom/upsight/android/analytics/provider/UpsightUserAttributes$Entry;->getType()Ljava/lang/Class;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 253
    invoke-virtual {v3}, Lcom/upsight/android/analytics/provider/UpsightUserAttributes$Entry;->getKey()Ljava/lang/String;

    move-result-object v9

    iget-object v10, p0, Lcom/upsight/android/analytics/internal/Analytics;->mUpsight:Lcom/upsight/android/UpsightContext;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "com.upsight.user_attribute."

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 254
    invoke-virtual {v3}, Lcom/upsight/android/analytics/provider/UpsightUserAttributes$Entry;->getKey()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 255
    invoke-virtual {v3}, Lcom/upsight/android/analytics/provider/UpsightUserAttributes$Entry;->getDefaultValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 253
    invoke-static {v10, v11, v7}, Lcom/upsight/android/internal/util/PreferencesHelper;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v9, v7}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 256
    :cond_1
    const-class v7, Ljava/lang/Integer;

    invoke-virtual {v3}, Lcom/upsight/android/analytics/provider/UpsightUserAttributes$Entry;->getType()Ljava/lang/Class;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 257
    invoke-virtual {v3}, Lcom/upsight/android/analytics/provider/UpsightUserAttributes$Entry;->getKey()Ljava/lang/String;

    move-result-object v9

    iget-object v10, p0, Lcom/upsight/android/analytics/internal/Analytics;->mUpsight:Lcom/upsight/android/UpsightContext;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "com.upsight.user_attribute."

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 258
    invoke-virtual {v3}, Lcom/upsight/android/analytics/provider/UpsightUserAttributes$Entry;->getKey()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 259
    invoke-virtual {v3}, Lcom/upsight/android/analytics/provider/UpsightUserAttributes$Entry;->getDefaultValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 257
    invoke-static {v10, v11, v7}, Lcom/upsight/android/internal/util/PreferencesHelper;->getInt(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v9, v7}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    goto/16 :goto_0

    .line 260
    :cond_2
    const-class v7, Ljava/lang/Boolean;

    invoke-virtual {v3}, Lcom/upsight/android/analytics/provider/UpsightUserAttributes$Entry;->getType()Ljava/lang/Class;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 261
    invoke-virtual {v3}, Lcom/upsight/android/analytics/provider/UpsightUserAttributes$Entry;->getKey()Ljava/lang/String;

    move-result-object v9

    iget-object v10, p0, Lcom/upsight/android/analytics/internal/Analytics;->mUpsight:Lcom/upsight/android/UpsightContext;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "com.upsight.user_attribute."

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 262
    invoke-virtual {v3}, Lcom/upsight/android/analytics/provider/UpsightUserAttributes$Entry;->getKey()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 263
    invoke-virtual {v3}, Lcom/upsight/android/analytics/provider/UpsightUserAttributes$Entry;->getDefaultValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    .line 261
    invoke-static {v10, v11, v7}, Lcom/upsight/android/internal/util/PreferencesHelper;->getBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v7

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v6, v9, v7}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Boolean;)V

    goto/16 :goto_0

    .line 264
    :cond_3
    const-class v7, Ljava/lang/Float;

    invoke-virtual {v3}, Lcom/upsight/android/analytics/provider/UpsightUserAttributes$Entry;->getType()Ljava/lang/Class;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 265
    invoke-virtual {v3}, Lcom/upsight/android/analytics/provider/UpsightUserAttributes$Entry;->getKey()Ljava/lang/String;

    move-result-object v9

    iget-object v10, p0, Lcom/upsight/android/analytics/internal/Analytics;->mUpsight:Lcom/upsight/android/UpsightContext;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "com.upsight.user_attribute."

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 266
    invoke-virtual {v3}, Lcom/upsight/android/analytics/provider/UpsightUserAttributes$Entry;->getKey()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 267
    invoke-virtual {v3}, Lcom/upsight/android/analytics/provider/UpsightUserAttributes$Entry;->getDefaultValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Float;

    invoke-virtual {v7}, Ljava/lang/Float;->floatValue()F

    move-result v7

    .line 265
    invoke-static {v10, v11, v7}, Lcom/upsight/android/internal/util/PreferencesHelper;->getFloat(Landroid/content/Context;Ljava/lang/String;F)F

    move-result v7

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    invoke-virtual {v6, v9, v7}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    goto/16 :goto_0

    .line 268
    :cond_4
    const-class v7, Ljava/util/Date;

    invoke-virtual {v3}, Lcom/upsight/android/analytics/provider/UpsightUserAttributes$Entry;->getType()Ljava/lang/Class;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 269
    invoke-virtual {v3}, Lcom/upsight/android/analytics/provider/UpsightUserAttributes$Entry;->getDefaultValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Date;

    .line 270
    .local v2, "defaultDatetime":Ljava/util/Date;
    sget-object v7, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v10

    sget-object v9, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v7, v10, v11, v9}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v4

    .line 271
    .local v4, "defaultDatetimeS":J
    iget-object v7, p0, Lcom/upsight/android/analytics/internal/Analytics;->mUpsight:Lcom/upsight/android/UpsightContext;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "com.upsight.user_attribute."

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v3}, Lcom/upsight/android/analytics/provider/UpsightUserAttributes$Entry;->getKey()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9, v4, v5}, Lcom/upsight/android/internal/util/PreferencesHelper;->getLong(Landroid/content/Context;Ljava/lang/String;J)J

    move-result-wide v0

    .line 275
    .local v0, "datetimeS":J
    const-wide v10, 0x3afff4417fL

    cmp-long v7, v0, v10

    if-eqz v7, :cond_5

    .line 276
    invoke-virtual {v3}, Lcom/upsight/android/analytics/provider/UpsightUserAttributes$Entry;->getKey()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v6, v7, v9}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    goto/16 :goto_0

    .line 278
    :cond_5
    invoke-virtual {v3}, Lcom/upsight/android/analytics/provider/UpsightUserAttributes$Entry;->getKey()Ljava/lang/String;

    move-result-object v9

    const/4 v7, 0x0

    check-cast v7, Ljava/lang/Long;

    invoke-virtual {v6, v9, v7}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    goto/16 :goto_0

    .line 282
    .end local v0    # "datetimeS":J
    .end local v2    # "defaultDatetime":Ljava/util/Date;
    .end local v3    # "entry":Lcom/upsight/android/analytics/provider/UpsightUserAttributes$Entry;
    .end local v4    # "defaultDatetimeS":J
    :cond_6
    return-object v6
.end method

.method private record(Lcom/upsight/android/analytics/event/UpsightAnalyticsEvent;Lcom/upsight/android/analytics/internal/session/Session;)V
    .locals 11
    .param p1, "event"    # Lcom/upsight/android/analytics/event/UpsightAnalyticsEvent;
    .param p2, "session"    # Lcom/upsight/android/analytics/internal/session/Session;

    .prologue
    .line 223
    iget-object v0, p0, Lcom/upsight/android/analytics/internal/Analytics;->mUpsight:Lcom/upsight/android/UpsightContext;

    invoke-static {v0}, Lcom/upsight/android/Upsight;->isEnabled(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 224
    iget-object v0, p0, Lcom/upsight/android/analytics/internal/Analytics;->mUpsight:Lcom/upsight/android/UpsightContext;

    invoke-virtual {v0}, Lcom/upsight/android/UpsightContext;->getLogger()Lcom/upsight/android/logger/UpsightLogger;

    move-result-object v0

    const-string v6, "Upsight"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Recording of "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p1}, Lcom/upsight/android/analytics/event/UpsightAnalyticsEvent;->getType()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v10, " event failed because SDK is disabled"

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/Object;

    invoke-interface {v0, v6, v7, v10}, Lcom/upsight/android/logger/UpsightLogger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 244
    .end local p1    # "event":Lcom/upsight/android/analytics/event/UpsightAnalyticsEvent;
    :goto_0
    return-void

    .line 229
    .restart local p1    # "event":Lcom/upsight/android/analytics/event/UpsightAnalyticsEvent;
    :cond_0
    invoke-interface {p2}, Lcom/upsight/android/analytics/internal/session/Session;->getStartTimestamp()Ljava/lang/Long;

    move-result-object v1

    .line 230
    .local v1, "sessionStart":Ljava/lang/Long;
    invoke-interface {p2}, Lcom/upsight/android/analytics/internal/session/Session;->getMessageID()Ljava/lang/Integer;

    move-result-object v2

    .line 231
    .local v2, "messageID":Ljava/lang/Integer;
    invoke-interface {p2}, Lcom/upsight/android/analytics/internal/session/Session;->getCampaignID()Ljava/lang/Integer;

    move-result-object v3

    .line 232
    .local v3, "campaignID":Ljava/lang/Integer;
    invoke-interface {p2}, Lcom/upsight/android/analytics/internal/session/Session;->getSessionNumber()Ljava/lang/Integer;

    move-result-object v4

    .line 233
    .local v4, "sessionNum":Ljava/lang/Integer;
    invoke-interface {p2}, Lcom/upsight/android/analytics/internal/session/Session;->getPreviousTos()Ljava/lang/Long;

    move-result-object v5

    .line 235
    .local v5, "prevTos":Ljava/lang/Long;
    invoke-direct {p0, p1}, Lcom/upsight/android/analytics/internal/Analytics;->toJsonElement(Lcom/upsight/android/analytics/event/UpsightAnalyticsEvent;)Lcom/google/gson/JsonObject;

    move-result-object v8

    .line 236
    .local v8, "eventNode":Lcom/google/gson/JsonObject;
    invoke-virtual {p1}, Lcom/upsight/android/analytics/event/UpsightAnalyticsEvent;->getType()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, v8}, Lcom/upsight/android/analytics/internal/Analytics;->appendAssociationData(Ljava/lang/String;Lcom/google/gson/JsonObject;)V

    .line 238
    sget-object v0, Lcom/upsight/android/analytics/internal/DataStoreRecord$Action;->Created:Lcom/upsight/android/analytics/internal/DataStoreRecord$Action;

    .line 239
    invoke-virtual {v8}, Lcom/google/gson/JsonObject;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1}, Lcom/upsight/android/analytics/event/UpsightAnalyticsEvent;->getType()Ljava/lang/String;

    move-result-object v7

    .line 238
    invoke-static/range {v0 .. v7}, Lcom/upsight/android/analytics/internal/DataStoreRecord;->create(Lcom/upsight/android/analytics/internal/DataStoreRecord$Action;Ljava/lang/Long;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;)Lcom/upsight/android/analytics/internal/DataStoreRecord;

    move-result-object v9

    .line 240
    .local v9, "record":Lcom/upsight/android/analytics/internal/DataStoreRecord;
    instance-of v0, p1, Lcom/upsight/android/analytics/internal/DynamicIdentifiers;

    if-eqz v0, :cond_1

    .line 241
    check-cast p1, Lcom/upsight/android/analytics/internal/DynamicIdentifiers;

    .end local p1    # "event":Lcom/upsight/android/analytics/event/UpsightAnalyticsEvent;
    invoke-interface {p1}, Lcom/upsight/android/analytics/internal/DynamicIdentifiers;->getIdentifiersName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Lcom/upsight/android/analytics/internal/DataStoreRecord;->setIdentifiers(Ljava/lang/String;)V

    .line 243
    :cond_1
    iget-object v0, p0, Lcom/upsight/android/analytics/internal/Analytics;->mDataStore:Lcom/upsight/android/persistence/UpsightDataStore;

    invoke-interface {v0, v9}, Lcom/upsight/android/persistence/UpsightDataStore;->store(Ljava/lang/Object;)Lcom/upsight/android/persistence/UpsightSubscription;

    goto :goto_0
.end method

.method private toJsonElement(Lcom/upsight/android/analytics/event/UpsightAnalyticsEvent;)Lcom/google/gson/JsonObject;
    .locals 4
    .param p1, "event"    # Lcom/upsight/android/analytics/event/UpsightAnalyticsEvent;

    .prologue
    .line 114
    iget-object v1, p0, Lcom/upsight/android/analytics/internal/Analytics;->mGson:Lcom/google/gson/Gson;

    invoke-virtual {v1, p1}, Lcom/google/gson/Gson;->toJsonTree(Ljava/lang/Object;)Lcom/google/gson/JsonElement;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v0

    .line 115
    .local v0, "node":Lcom/google/gson/JsonObject;
    const-string v1, "seq_id"

    iget-object v2, p0, Lcom/upsight/android/analytics/internal/Analytics;->mUpsight:Lcom/upsight/android/UpsightContext;

    invoke-static {v2}, Lcom/upsight/android/analytics/internal/EventSequenceId;->getAndIncrement(Landroid/content/Context;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 116
    const-string v1, "user_attributes"

    iget-object v2, p0, Lcom/upsight/android/analytics/internal/Analytics;->mDefaultUserAttributes:Ljava/util/Set;

    invoke-direct {p0, v2}, Lcom/upsight/android/analytics/internal/Analytics;->getAllAsJsonElement(Ljava/util/Set;)Lcom/google/gson/JsonElement;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/google/gson/JsonElement;)V

    .line 117
    return-object v0
.end method


# virtual methods
.method public getBooleanUserAttribute(Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 191
    iget-object v0, p0, Lcom/upsight/android/analytics/internal/Analytics;->mUserAttributes:Lcom/upsight/android/analytics/provider/UpsightUserAttributes;

    invoke-virtual {v0, p1}, Lcom/upsight/android/analytics/provider/UpsightUserAttributes;->getBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public getDatetimeUserAttribute(Ljava/lang/String;)Ljava/util/Date;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 201
    iget-object v0, p0, Lcom/upsight/android/analytics/internal/Analytics;->mUserAttributes:Lcom/upsight/android/analytics/provider/UpsightUserAttributes;

    invoke-virtual {v0, p1}, Lcom/upsight/android/analytics/provider/UpsightUserAttributes;->getDatetime(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultUserAttributes()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Lcom/upsight/android/analytics/provider/UpsightUserAttributes$Entry;",
            ">;"
        }
    .end annotation

    .prologue
    .line 206
    iget-object v0, p0, Lcom/upsight/android/analytics/internal/Analytics;->mUserAttributes:Lcom/upsight/android/analytics/provider/UpsightUserAttributes;

    invoke-virtual {v0}, Lcom/upsight/android/analytics/provider/UpsightUserAttributes;->getDefault()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getFloatUserAttribute(Ljava/lang/String;)Ljava/lang/Float;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 196
    iget-object v0, p0, Lcom/upsight/android/analytics/internal/Analytics;->mUserAttributes:Lcom/upsight/android/analytics/provider/UpsightUserAttributes;

    invoke-virtual {v0, p1}, Lcom/upsight/android/analytics/provider/UpsightUserAttributes;->getFloat(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method

.method public getIntUserAttribute(Ljava/lang/String;)Ljava/lang/Integer;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 186
    iget-object v0, p0, Lcom/upsight/android/analytics/internal/Analytics;->mUserAttributes:Lcom/upsight/android/analytics/provider/UpsightUserAttributes;

    invoke-virtual {v0, p1}, Lcom/upsight/android/analytics/provider/UpsightUserAttributes;->getInt(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getLatestSessionInfo()Lcom/upsight/android/analytics/session/UpsightSessionInfo;
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lcom/upsight/android/analytics/internal/Analytics;->mSessionManager:Lcom/upsight/android/analytics/internal/session/SessionManager;

    invoke-interface {v0}, Lcom/upsight/android/analytics/internal/session/SessionManager;->getLatestSessionInfo()Lcom/upsight/android/analytics/session/UpsightSessionInfo;

    move-result-object v0

    return-object v0
.end method

.method public getOptOutStatus()Z
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lcom/upsight/android/analytics/internal/Analytics;->mOptOutStatus:Lcom/upsight/android/analytics/provider/UpsightOptOutStatus;

    invoke-virtual {v0}, Lcom/upsight/android/analytics/provider/UpsightOptOutStatus;->get()Z

    move-result v0

    return v0
.end method

.method public getStringUserAttribute(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 181
    iget-object v0, p0, Lcom/upsight/android/analytics/internal/Analytics;->mUserAttributes:Lcom/upsight/android/analytics/provider/UpsightUserAttributes;

    invoke-virtual {v0, p1}, Lcom/upsight/android/analytics/provider/UpsightUserAttributes;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public purgeLocation()V
    .locals 1

    .prologue
    .line 151
    iget-object v0, p0, Lcom/upsight/android/analytics/internal/Analytics;->mLocationTracker:Lcom/upsight/android/analytics/provider/UpsightLocationTracker;

    invoke-virtual {v0}, Lcom/upsight/android/analytics/provider/UpsightLocationTracker;->purge()V

    .line 152
    return-void
.end method

.method public putUserAttribute(Ljava/lang/String;Ljava/lang/Boolean;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Boolean;

    .prologue
    .line 166
    iget-object v0, p0, Lcom/upsight/android/analytics/internal/Analytics;->mUserAttributes:Lcom/upsight/android/analytics/provider/UpsightUserAttributes;

    invoke-virtual {v0, p1, p2}, Lcom/upsight/android/analytics/provider/UpsightUserAttributes;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 167
    return-void
.end method

.method public putUserAttribute(Ljava/lang/String;Ljava/lang/Float;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Float;

    .prologue
    .line 171
    iget-object v0, p0, Lcom/upsight/android/analytics/internal/Analytics;->mUserAttributes:Lcom/upsight/android/analytics/provider/UpsightUserAttributes;

    invoke-virtual {v0, p1, p2}, Lcom/upsight/android/analytics/provider/UpsightUserAttributes;->put(Ljava/lang/String;Ljava/lang/Float;)V

    .line 172
    return-void
.end method

.method public putUserAttribute(Ljava/lang/String;Ljava/lang/Integer;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Integer;

    .prologue
    .line 161
    iget-object v0, p0, Lcom/upsight/android/analytics/internal/Analytics;->mUserAttributes:Lcom/upsight/android/analytics/provider/UpsightUserAttributes;

    invoke-virtual {v0, p1, p2}, Lcom/upsight/android/analytics/provider/UpsightUserAttributes;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 162
    return-void
.end method

.method public putUserAttribute(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 156
    iget-object v0, p0, Lcom/upsight/android/analytics/internal/Analytics;->mUserAttributes:Lcom/upsight/android/analytics/provider/UpsightUserAttributes;

    invoke-virtual {v0, p1, p2}, Lcom/upsight/android/analytics/provider/UpsightUserAttributes;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    return-void
.end method

.method public putUserAttribute(Ljava/lang/String;Ljava/util/Date;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/util/Date;

    .prologue
    .line 176
    iget-object v0, p0, Lcom/upsight/android/analytics/internal/Analytics;->mUserAttributes:Lcom/upsight/android/analytics/provider/UpsightUserAttributes;

    invoke-virtual {v0, p1, p2}, Lcom/upsight/android/analytics/provider/UpsightUserAttributes;->put(Ljava/lang/String;Ljava/util/Date;)V

    .line 177
    return-void
.end method

.method public record(Lcom/upsight/android/analytics/event/UpsightAnalyticsEvent;)V
    .locals 1
    .param p1, "event"    # Lcom/upsight/android/analytics/event/UpsightAnalyticsEvent;

    .prologue
    .line 110
    iget-object v0, p0, Lcom/upsight/android/analytics/internal/Analytics;->mSessionManager:Lcom/upsight/android/analytics/internal/session/SessionManager;

    invoke-interface {v0}, Lcom/upsight/android/analytics/internal/session/SessionManager;->getSession()Lcom/upsight/android/analytics/internal/session/Session;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/upsight/android/analytics/internal/Analytics;->record(Lcom/upsight/android/analytics/event/UpsightAnalyticsEvent;Lcom/upsight/android/analytics/internal/session/Session;)V

    .line 111
    return-void
.end method

.method public recordSessionless(Lcom/upsight/android/analytics/event/UpsightAnalyticsEvent;)V
    .locals 1
    .param p1, "event"    # Lcom/upsight/android/analytics/event/UpsightAnalyticsEvent;

    .prologue
    .line 105
    iget-object v0, p0, Lcom/upsight/android/analytics/internal/Analytics;->mSessionManager:Lcom/upsight/android/analytics/internal/session/SessionManager;

    invoke-interface {v0}, Lcom/upsight/android/analytics/internal/session/SessionManager;->getBackgroundSession()Lcom/upsight/android/analytics/internal/session/Session;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/upsight/android/analytics/internal/Analytics;->record(Lcom/upsight/android/analytics/event/UpsightAnalyticsEvent;Lcom/upsight/android/analytics/internal/session/Session;)V

    .line 106
    return-void
.end method

.method public registerDataProvider(Lcom/upsight/android/analytics/provider/UpsightDataProvider;)V
    .locals 1
    .param p1, "provider"    # Lcom/upsight/android/analytics/provider/UpsightDataProvider;

    .prologue
    .line 136
    iget-object v0, p0, Lcom/upsight/android/analytics/internal/Analytics;->mSchemaSelector:Lcom/upsight/android/analytics/internal/dispatcher/schema/SchemaSelectorBuilder;

    invoke-virtual {v0, p1}, Lcom/upsight/android/analytics/internal/dispatcher/schema/SchemaSelectorBuilder;->registerDataProvider(Lcom/upsight/android/analytics/provider/UpsightDataProvider;)V

    .line 137
    return-void
.end method

.method public setOptOutStatus(Z)V
    .locals 1
    .param p1, "optOut"    # Z

    .prologue
    .line 126
    iget-object v0, p0, Lcom/upsight/android/analytics/internal/Analytics;->mOptOutStatus:Lcom/upsight/android/analytics/provider/UpsightOptOutStatus;

    invoke-virtual {v0, p1}, Lcom/upsight/android/analytics/provider/UpsightOptOutStatus;->set(Z)V

    .line 127
    return-void
.end method

.method public trackActivity(Landroid/app/Activity;Lcom/upsight/android/analytics/UpsightLifeCycleTracker$ActivityState;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "activityState"    # Lcom/upsight/android/analytics/UpsightLifeCycleTracker$ActivityState;

    .prologue
    .line 141
    iget-object v0, p0, Lcom/upsight/android/analytics/internal/Analytics;->mLifeCycleTracker:Lcom/upsight/android/analytics/UpsightLifeCycleTracker;

    new-instance v1, Lcom/upsight/android/analytics/internal/session/StandardSessionInitializer;

    invoke-direct {v1}, Lcom/upsight/android/analytics/internal/session/StandardSessionInitializer;-><init>()V

    invoke-virtual {v0, p1, p2, v1}, Lcom/upsight/android/analytics/UpsightLifeCycleTracker;->track(Landroid/app/Activity;Lcom/upsight/android/analytics/UpsightLifeCycleTracker$ActivityState;Lcom/upsight/android/analytics/internal/session/SessionInitializer;)V

    .line 142
    return-void
.end method

.method public trackLocation(Lcom/upsight/android/analytics/provider/UpsightLocationTracker$Data;)V
    .locals 1
    .param p1, "locationData"    # Lcom/upsight/android/analytics/provider/UpsightLocationTracker$Data;

    .prologue
    .line 146
    iget-object v0, p0, Lcom/upsight/android/analytics/internal/Analytics;->mLocationTracker:Lcom/upsight/android/analytics/provider/UpsightLocationTracker;

    invoke-virtual {v0, p1}, Lcom/upsight/android/analytics/provider/UpsightLocationTracker;->track(Lcom/upsight/android/analytics/provider/UpsightLocationTracker$Data;)V

    .line 147
    return-void
.end method

.method public trackPurchase(ILjava/lang/String;DDLjava/lang/String;Landroid/content/Intent;Lcom/upsight/android/analytics/event/UpsightPublisherData;)V
    .locals 11
    .param p1, "quantity"    # I
    .param p2, "currency"    # Ljava/lang/String;
    .param p3, "price"    # D
    .param p5, "totalPrice"    # D
    .param p7, "product"    # Ljava/lang/String;
    .param p8, "responseData"    # Landroid/content/Intent;
    .param p9, "publisherData"    # Lcom/upsight/android/analytics/event/UpsightPublisherData;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/upsight/android/UpsightException;
        }
    .end annotation

    .prologue
    .line 212
    iget-object v1, p0, Lcom/upsight/android/analytics/internal/Analytics;->mGooglePlayHelper:Lcom/upsight/android/analytics/UpsightGooglePlayHelper;

    move v2, p1

    move-object v3, p2

    move-wide v4, p3

    move-wide/from16 v6, p5

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    invoke-virtual/range {v1 .. v10}, Lcom/upsight/android/analytics/UpsightGooglePlayHelper;->trackPurchase(ILjava/lang/String;DDLjava/lang/String;Landroid/content/Intent;Lcom/upsight/android/analytics/event/UpsightPublisherData;)V

    .line 213
    return-void
.end method
