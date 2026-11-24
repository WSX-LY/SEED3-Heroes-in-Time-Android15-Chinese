.class public Lcom/openfeint/internal/OpenFeintInternal;
.super Ljava/lang/Object;
.source "OpenFeintInternal.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/openfeint/internal/OpenFeintInternal$IUploadDelegate;,
        Lcom/openfeint/internal/OpenFeintInternal$LoginDelegate;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "OpenFeintInternal"

.field private static createUserSource:Ljava/lang/String;

.field private static sInstance:Lcom/openfeint/internal/OpenFeintInternal;

.field private static userEnableSource:Ljava/lang/String;


# instance fields
.field mAdServerUrl:Ljava/lang/String;

.field mAppVersion:I

.field private mApproved:Z

.field private mBanned:Z

.field mClient:Lcom/openfeint/internal/request/Client;

.field private mContext:Landroid/content/Context;

.field private mCreatingDeviceSession:Z

.field private mCurrentUser:Lcom/openfeint/api/resource/CurrentUser;

.field private mCurrentlyLoggingIn:Z

.field private mDeclined:Z

.field mDelegate:Lcom/openfeint/api/OpenFeintDelegate;

.field private mDeserializedAlready:Z

.field private mDeviceSessionCreated:Z

.field private mGSDI:Ljava/lang/String;

.field mInternalProperties:Ljava/util/Properties;

.field private mLoginDelegate:Lcom/openfeint/internal/OpenFeintInternal$LoginDelegate;

.field mMainThreadHandler:Landroid/os/Handler;

.field private mParentalControlsEnabled:Z

.field private mPostDeviceSessionRunnable:Ljava/lang/Runnable;

.field private mPostLoginRunnable:Ljava/lang/Runnable;

.field private mPrefs:Lcom/openfeint/internal/SyncedStore;

.field private mQueuedPostDeviceSessionRunnables:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private mQueuedPostLoginRunnables:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field mServerUrl:Ljava/lang/String;

.field private mSessionID:Ljava/lang/String;

.field private mSessionStartDate:Ljava/util/Date;

.field mSettings:Lcom/openfeint/api/OpenFeintSettings;

.field private mUDID:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lcom/openfeint/api/OpenFeintSettings;Landroid/content/Context;)V
    .locals 6
    .param p1, "settings"    # Lcom/openfeint/api/OpenFeintSettings;
    .param p2, "ctx"    # Landroid/content/Context;

    .prologue
    .line 937
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 114
    const/4 v2, -0x1

    iput v2, p0, Lcom/openfeint/internal/OpenFeintInternal;->mAppVersion:I

    .line 939
    sput-object p0, Lcom/openfeint/internal/OpenFeintInternal;->sInstance:Lcom/openfeint/internal/OpenFeintInternal;

    .line 940
    iput-object p2, p0, Lcom/openfeint/internal/OpenFeintInternal;->mContext:Landroid/content/Context;

    .line 942
    iput-object p1, p0, Lcom/openfeint/internal/OpenFeintInternal;->mSettings:Lcom/openfeint/api/OpenFeintSettings;

    .line 944
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    iput-object v2, p0, Lcom/openfeint/internal/OpenFeintInternal;->mSessionStartDate:Ljava/util/Date;

    .line 945
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/openfeint/internal/OpenFeintInternal;->mSessionID:Ljava/lang/String;

    .line 947
    invoke-virtual {p0}, Lcom/openfeint/internal/OpenFeintInternal;->getPrefs()Lcom/openfeint/internal/SyncedStore;

    move-result-object v2

    invoke-virtual {v2}, Lcom/openfeint/internal/SyncedStore;->read()Lcom/openfeint/internal/SyncedStore$Reader;

    move-result-object v1

    .line 949
    .local v1, "r":Lcom/openfeint/internal/SyncedStore$Reader;
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/openfeint/internal/OpenFeintInternal;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, ".of_declined"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/openfeint/internal/SyncedStore$Reader;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    :goto_0
    iput-boolean v2, p0, Lcom/openfeint/internal/OpenFeintInternal;->mDeclined:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 951
    invoke-virtual {v1}, Lcom/openfeint/internal/SyncedStore$Reader;->complete()V

    .line 954
    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    iput-object v2, p0, Lcom/openfeint/internal/OpenFeintInternal;->mMainThreadHandler:Landroid/os/Handler;

    .line 955
    new-instance v2, Ljava/util/Properties;

    invoke-direct {v2}, Ljava/util/Properties;-><init>()V

    iput-object v2, p0, Lcom/openfeint/internal/OpenFeintInternal;->mInternalProperties:Ljava/util/Properties;

    .line 956
    iget-object v2, p0, Lcom/openfeint/internal/OpenFeintInternal;->mInternalProperties:Ljava/util/Properties;

    const-string v3, "server-url"

    const-string v4, "https://api.openfeint.com"

    invoke-virtual {v2, v3, v4}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 957
    iget-object v2, p0, Lcom/openfeint/internal/OpenFeintInternal;->mInternalProperties:Ljava/util/Properties;

    const-string v3, "ad-server-url"

    const-string v4, "http://ads.openfeint.com"

    invoke-virtual {v2, v3, v4}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 958
    iget-object v2, p0, Lcom/openfeint/internal/OpenFeintInternal;->mInternalProperties:Ljava/util/Properties;

    const-string v3, "of-version"

    const-string v4, "1.10.2"

    invoke-virtual {v2, v3, v4}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 960
    iget-object v2, p0, Lcom/openfeint/internal/OpenFeintInternal;->mInternalProperties:Ljava/util/Properties;

    const-string v3, "@xml/openfeint_internal_settings"

    invoke-virtual {p0, v3}, Lcom/openfeint/internal/OpenFeintInternal;->getResource(Ljava/lang/String;)I

    move-result v3

    invoke-direct {p0, v2, v3}, Lcom/openfeint/internal/OpenFeintInternal;->loadPropertiesFromXMLResource(Ljava/util/Properties;I)V

    .line 962
    const-string v2, "OpenFeintInternal"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Using OpenFeint version "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/openfeint/internal/OpenFeintInternal;->mInternalProperties:Ljava/util/Properties;

    const-string v5, "of-version"

    invoke-virtual {v4, v5}, Ljava/util/Properties;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/openfeint/internal/OpenFeintInternal;->mInternalProperties:Ljava/util/Properties;

    const-string v5, "server-url"

    invoke-virtual {v4, v5}, Ljava/util/Properties;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 964
    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    .line 965
    .local v0, "appProperties":Ljava/util/Properties;
    const-string v2, "@xml/openfeint_app_settings"

    invoke-virtual {p0, v2}, Lcom/openfeint/internal/OpenFeintInternal;->getResource(Ljava/lang/String;)I

    move-result v2

    invoke-direct {p0, v0, v2}, Lcom/openfeint/internal/OpenFeintInternal;->loadPropertiesFromXMLResource(Ljava/util/Properties;I)V

    .line 966
    iget-object v2, p0, Lcom/openfeint/internal/OpenFeintInternal;->mSettings:Lcom/openfeint/api/OpenFeintSettings;

    invoke-virtual {v2, v0}, Lcom/openfeint/api/OpenFeintSettings;->applyOverrides(Ljava/util/Properties;)V

    .line 968
    iget-object v2, p0, Lcom/openfeint/internal/OpenFeintInternal;->mSettings:Lcom/openfeint/api/OpenFeintSettings;

    invoke-virtual {v2}, Lcom/openfeint/api/OpenFeintSettings;->verify()V

    .line 970
    invoke-static {}, Lcom/openfeint/internal/Encryption;->initialized()Z

    move-result v2

    if-nez v2, :cond_0

    .line 971
    iget-object v2, p0, Lcom/openfeint/internal/OpenFeintInternal;->mSettings:Lcom/openfeint/api/OpenFeintSettings;

    iget-object v2, v2, Lcom/openfeint/api/OpenFeintSettings;->secret:Ljava/lang/String;

    invoke-static {v2}, Lcom/openfeint/internal/Encryption;->init(Ljava/lang/String;)Z

    .line 974
    :cond_0
    new-instance v2, Lcom/openfeint/internal/request/Client;

    iget-object v3, p0, Lcom/openfeint/internal/OpenFeintInternal;->mSettings:Lcom/openfeint/api/OpenFeintSettings;

    iget-object v3, v3, Lcom/openfeint/api/OpenFeintSettings;->key:Ljava/lang/String;

    iget-object v4, p0, Lcom/openfeint/internal/OpenFeintInternal;->mSettings:Lcom/openfeint/api/OpenFeintSettings;

    iget-object v4, v4, Lcom/openfeint/api/OpenFeintSettings;->secret:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/openfeint/internal/OpenFeintInternal;->getPrefs()Lcom/openfeint/internal/SyncedStore;

    move-result-object v5

    invoke-direct {v2, v3, v4, v5}, Lcom/openfeint/internal/request/Client;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/openfeint/internal/SyncedStore;)V

    iput-object v2, p0, Lcom/openfeint/internal/OpenFeintInternal;->mClient:Lcom/openfeint/internal/request/Client;

    .line 975
    invoke-static {p2}, Lcom/openfeint/internal/Util;->moveWebCache(Landroid/content/Context;)V

    .line 977
    invoke-static {p2}, Lcom/openfeint/internal/ui/WebViewCache;->initialize(Landroid/content/Context;)Lcom/openfeint/internal/ui/WebViewCache;

    .line 980
    invoke-static {p2}, Lcom/openfeint/internal/db/DB;->createDB(Landroid/content/Context;)V

    .line 981
    invoke-static {}, Lcom/openfeint/internal/ui/WebViewCache;->start()V

    .line 984
    invoke-static {}, Lcom/openfeint/internal/OpenFeintInternal;->initEventDispatchSystem()V

    .line 985
    iget-object v2, p0, Lcom/openfeint/internal/OpenFeintInternal;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/openfeint/internal/analytics/AnalyticsManager;->instance(Landroid/content/Context;)Lcom/openfeint/internal/analytics/AnalyticsManager;

    .line 986
    return-void

    .line 949
    .end local v0    # "appProperties":Ljava/util/Properties;
    :cond_1
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 950
    :catchall_0
    move-exception v2

    .line 951
    invoke-virtual {v1}, Lcom/openfeint/internal/SyncedStore$Reader;->complete()V

    .line 952
    throw v2
.end method

.method private final _makeRequest(Lcom/openfeint/internal/request/BaseRequest;)V
    .locals 2
    .param p1, "req"    # Lcom/openfeint/internal/request/BaseRequest;

    .prologue
    .line 741
    invoke-virtual {p0}, Lcom/openfeint/internal/OpenFeintInternal;->isUserLoggedIn()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/openfeint/internal/request/BaseRequest;->wantsLogin()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/openfeint/internal/OpenFeintInternal;->lastLoggedInUser()Lcom/openfeint/api/resource/User;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/openfeint/internal/OpenFeintInternal;->isFeintServerReachable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 744
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/openfeint/internal/OpenFeintInternal;->login(Z)V

    .line 745
    iget-object v0, p0, Lcom/openfeint/internal/OpenFeintInternal;->mQueuedPostLoginRunnables:Ljava/util/List;

    if-nez v0, :cond_0

    .line 746
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/openfeint/internal/OpenFeintInternal;->mQueuedPostLoginRunnables:Ljava/util/List;

    .line 748
    :cond_0
    iget-object v0, p0, Lcom/openfeint/internal/OpenFeintInternal;->mQueuedPostLoginRunnables:Ljava/util/List;

    new-instance v1, Lcom/openfeint/internal/OpenFeintInternal$7;

    invoke-direct {v1, p0, p1}, Lcom/openfeint/internal/OpenFeintInternal$7;-><init>(Lcom/openfeint/internal/OpenFeintInternal;Lcom/openfeint/internal/request/BaseRequest;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 768
    :goto_0
    return-void

    .line 753
    :cond_1
    iget-boolean v0, p0, Lcom/openfeint/internal/OpenFeintInternal;->mDeviceSessionCreated:Z

    if-nez v0, :cond_3

    invoke-virtual {p1}, Lcom/openfeint/internal/request/BaseRequest;->needsDeviceSession()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 755
    invoke-virtual {p0}, Lcom/openfeint/internal/OpenFeintInternal;->createDeviceSession()V

    .line 757
    iget-object v0, p0, Lcom/openfeint/internal/OpenFeintInternal;->mQueuedPostDeviceSessionRunnables:Ljava/util/List;

    if-nez v0, :cond_2

    .line 758
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/openfeint/internal/OpenFeintInternal;->mQueuedPostDeviceSessionRunnables:Ljava/util/List;

    .line 760
    :cond_2
    iget-object v0, p0, Lcom/openfeint/internal/OpenFeintInternal;->mQueuedPostDeviceSessionRunnables:Ljava/util/List;

    new-instance v1, Lcom/openfeint/internal/OpenFeintInternal$8;

    invoke-direct {v1, p0, p1}, Lcom/openfeint/internal/OpenFeintInternal$8;-><init>(Lcom/openfeint/internal/OpenFeintInternal;Lcom/openfeint/internal/request/BaseRequest;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 766
    :cond_3
    iget-object v0, p0, Lcom/openfeint/internal/OpenFeintInternal;->mClient:Lcom/openfeint/internal/request/Client;

    invoke-virtual {v0, p1}, Lcom/openfeint/internal/request/Client;->makeRequest(Lcom/openfeint/internal/request/BaseRequest;)V

    goto :goto_0
.end method

.method private _restoreInstanceState(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "inState"    # Landroid/os/Bundle;

    .prologue
    .line 148
    iget-boolean v0, p0, Lcom/openfeint/internal/OpenFeintInternal;->mDeserializedAlready:Z

    if-nez v0, :cond_1

    if-eqz p1, :cond_1

    .line 149
    const-string v0, "mCurrentUser"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/openfeint/internal/OpenFeintInternal;->userFromString(Ljava/lang/String;)Lcom/openfeint/api/resource/User;

    move-result-object v0

    check-cast v0, Lcom/openfeint/api/resource/CurrentUser;

    iput-object v0, p0, Lcom/openfeint/internal/OpenFeintInternal;->mCurrentUser:Lcom/openfeint/api/resource/CurrentUser;

    .line 150
    iget-object v0, p0, Lcom/openfeint/internal/OpenFeintInternal;->mClient:Lcom/openfeint/internal/request/Client;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/openfeint/internal/OpenFeintInternal;->mClient:Lcom/openfeint/internal/request/Client;

    invoke-virtual {v0, p1}, Lcom/openfeint/internal/request/Client;->restoreInstanceState(Landroid/os/Bundle;)V

    .line 151
    :cond_0
    const-string v0, "mCurrentlyLoggingIn"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/openfeint/internal/OpenFeintInternal;->mCurrentlyLoggingIn:Z

    .line 152
    const-string v0, "mCreatingDeviceSession"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/openfeint/internal/OpenFeintInternal;->mCreatingDeviceSession:Z

    .line 153
    const-string v0, "mDeviceSessionCreated"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/openfeint/internal/OpenFeintInternal;->mDeviceSessionCreated:Z

    .line 154
    const-string v0, "mBanned"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/openfeint/internal/OpenFeintInternal;->mBanned:Z

    .line 155
    const-string v0, "mParentalControlsEnabled"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/openfeint/internal/OpenFeintInternal;->mParentalControlsEnabled:Z

    .line 156
    const-string v0, "mApproved"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/openfeint/internal/OpenFeintInternal;->mApproved:Z

    .line 157
    const-string v0, "mDeclined"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/openfeint/internal/OpenFeintInternal;->mDeclined:Z

    .line 158
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/openfeint/internal/OpenFeintInternal;->mDeserializedAlready:Z

    .line 160
    :cond_1
    return-void
.end method

.method private _saveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 136
    iget-object v0, p0, Lcom/openfeint/internal/OpenFeintInternal;->mCurrentUser:Lcom/openfeint/api/resource/CurrentUser;

    if-eqz v0, :cond_0

    const-string v0, "mCurrentUser"

    iget-object v1, p0, Lcom/openfeint/internal/OpenFeintInternal;->mCurrentUser:Lcom/openfeint/api/resource/CurrentUser;

    invoke-virtual {v1}, Lcom/openfeint/api/resource/CurrentUser;->generate()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    :cond_0
    iget-object v0, p0, Lcom/openfeint/internal/OpenFeintInternal;->mClient:Lcom/openfeint/internal/request/Client;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/openfeint/internal/OpenFeintInternal;->mClient:Lcom/openfeint/internal/request/Client;

    invoke-virtual {v0, p1}, Lcom/openfeint/internal/request/Client;->saveInstanceState(Landroid/os/Bundle;)V

    .line 138
    :cond_1
    const-string v0, "mCurrentlyLoggingIn"

    iget-boolean v1, p0, Lcom/openfeint/internal/OpenFeintInternal;->mCurrentlyLoggingIn:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 139
    const-string v0, "mCreatingDeviceSession"

    iget-boolean v1, p0, Lcom/openfeint/internal/OpenFeintInternal;->mCreatingDeviceSession:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 140
    const-string v0, "mDeviceSessionCreated"

    iget-boolean v1, p0, Lcom/openfeint/internal/OpenFeintInternal;->mDeviceSessionCreated:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 141
    const-string v0, "mBanned"

    iget-boolean v1, p0, Lcom/openfeint/internal/OpenFeintInternal;->mBanned:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 142
    const-string v0, "mParentalControlsEnabled"

    iget-boolean v1, p0, Lcom/openfeint/internal/OpenFeintInternal;->mParentalControlsEnabled:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 143
    const-string v0, "mApproved"

    iget-boolean v1, p0, Lcom/openfeint/internal/OpenFeintInternal;->mApproved:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 144
    const-string v0, "mDeclined"

    iget-boolean v1, p0, Lcom/openfeint/internal/OpenFeintInternal;->mDeclined:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 145
    return-void
.end method

.method static synthetic access$0()Ljava/lang/String;
    .locals 1

    .prologue
    .line 81
    sget-object v0, Lcom/openfeint/internal/OpenFeintInternal;->createUserSource:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1(Lcom/openfeint/internal/OpenFeintInternal;Lcom/openfeint/api/resource/User;)V
    .locals 0

    .prologue
    .line 223
    invoke-direct {p0, p1}, Lcom/openfeint/internal/OpenFeintInternal;->userLoggedIn(Lcom/openfeint/api/resource/User;)V

    return-void
.end method

.method static synthetic access$10(Lcom/openfeint/internal/OpenFeintInternal;Ljava/util/List;)V
    .locals 0

    .prologue
    .line 109
    iput-object p1, p0, Lcom/openfeint/internal/OpenFeintInternal;->mQueuedPostDeviceSessionRunnables:Ljava/util/List;

    return-void
.end method

.method static synthetic access$11(Lcom/openfeint/internal/OpenFeintInternal;Z)V
    .locals 0

    .prologue
    .line 90
    iput-boolean p1, p0, Lcom/openfeint/internal/OpenFeintInternal;->mCurrentlyLoggingIn:Z

    return-void
.end method

.method static synthetic access$12(Lcom/openfeint/internal/OpenFeintInternal;)Ljava/lang/Runnable;
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lcom/openfeint/internal/OpenFeintInternal;->mPostLoginRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$13(Lcom/openfeint/internal/OpenFeintInternal;)Ljava/util/List;
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lcom/openfeint/internal/OpenFeintInternal;->mQueuedPostLoginRunnables:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$14(Lcom/openfeint/internal/OpenFeintInternal;Ljava/util/List;)V
    .locals 0

    .prologue
    .line 111
    iput-object p1, p0, Lcom/openfeint/internal/OpenFeintInternal;->mQueuedPostLoginRunnables:Ljava/util/List;

    return-void
.end method

.method static synthetic access$15(Lcom/openfeint/internal/OpenFeintInternal;Lcom/openfeint/internal/request/BaseRequest;)V
    .locals 0

    .prologue
    .line 740
    invoke-direct {p0, p1}, Lcom/openfeint/internal/OpenFeintInternal;->_makeRequest(Lcom/openfeint/internal/request/BaseRequest;)V

    return-void
.end method

.method static synthetic access$16(Lcom/openfeint/internal/OpenFeintInternal;)Z
    .locals 1

    .prologue
    .line 97
    iget-boolean v0, p0, Lcom/openfeint/internal/OpenFeintInternal;->mDeclined:Z

    return v0
.end method

.method static synthetic access$17(Lcom/openfeint/internal/OpenFeintInternal;)Z
    .locals 1

    .prologue
    .line 90
    iget-boolean v0, p0, Lcom/openfeint/internal/OpenFeintInternal;->mCurrentlyLoggingIn:Z

    return v0
.end method

.method static synthetic access$18(Lcom/openfeint/internal/OpenFeintInternal;Z)V
    .locals 0

    .prologue
    .line 103
    iput-boolean p1, p0, Lcom/openfeint/internal/OpenFeintInternal;->mDeserializedAlready:Z

    return-void
.end method

.method static synthetic access$19(Lcom/openfeint/internal/OpenFeintInternal;)Lcom/openfeint/api/resource/User;
    .locals 1

    .prologue
    .line 998
    invoke-direct {p0}, Lcom/openfeint/internal/OpenFeintInternal;->lastLoggedInUser()Lcom/openfeint/api/resource/User;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2(Lcom/openfeint/internal/OpenFeintInternal;Z)V
    .locals 0

    .prologue
    .line 91
    iput-boolean p1, p0, Lcom/openfeint/internal/OpenFeintInternal;->mCreatingDeviceSession:Z

    return-void
.end method

.method static synthetic access$20(Lcom/openfeint/internal/OpenFeintInternal;Z)V
    .locals 0

    .prologue
    .line 93
    iput-boolean p1, p0, Lcom/openfeint/internal/OpenFeintInternal;->mBanned:Z

    return-void
.end method

.method static synthetic access$21(Lcom/openfeint/internal/OpenFeintInternal;)V
    .locals 0

    .prologue
    .line 276
    invoke-direct {p0}, Lcom/openfeint/internal/OpenFeintInternal;->clearPrefs()V

    return-void
.end method

.method static synthetic access$22(Lcom/openfeint/internal/OpenFeintInternal;)Z
    .locals 1

    .prologue
    .line 96
    iget-boolean v0, p0, Lcom/openfeint/internal/OpenFeintInternal;->mApproved:Z

    return v0
.end method

.method static synthetic access$3(Lcom/openfeint/internal/OpenFeintInternal;Z)V
    .locals 0

    .prologue
    .line 94
    iput-boolean p1, p0, Lcom/openfeint/internal/OpenFeintInternal;->mParentalControlsEnabled:Z

    return-void
.end method

.method static synthetic access$4(Lcom/openfeint/internal/OpenFeintInternal;Z)V
    .locals 0

    .prologue
    .line 92
    iput-boolean p1, p0, Lcom/openfeint/internal/OpenFeintInternal;->mDeviceSessionCreated:Z

    return-void
.end method

.method static synthetic access$5(Lcom/openfeint/internal/OpenFeintInternal;)Ljava/lang/Runnable;
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lcom/openfeint/internal/OpenFeintInternal;->mPostDeviceSessionRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$6(Lcom/openfeint/internal/OpenFeintInternal;Ljava/lang/Runnable;)V
    .locals 0

    .prologue
    .line 110
    iput-object p1, p0, Lcom/openfeint/internal/OpenFeintInternal;->mPostLoginRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$7(Lcom/openfeint/internal/OpenFeintInternal;ILjava/lang/Object;)V
    .locals 0

    .prologue
    .line 1115
    invoke-direct {p0, p1, p2}, Lcom/openfeint/internal/OpenFeintInternal;->showOfflineNotification(ILjava/lang/Object;)V

    return-void
.end method

.method static synthetic access$8(Lcom/openfeint/internal/OpenFeintInternal;)Ljava/util/List;
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lcom/openfeint/internal/OpenFeintInternal;->mQueuedPostDeviceSessionRunnables:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$9(Lcom/openfeint/internal/OpenFeintInternal;Ljava/lang/Runnable;)V
    .locals 0

    .prologue
    .line 108
    iput-object p1, p0, Lcom/openfeint/internal/OpenFeintInternal;->mPostDeviceSessionRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method private static cat(Ljava/lang/String;)Ljava/util/List;
    .locals 6
    .param p0, "filename"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 360
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 362
    .local v3, "rv":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 363
    .local v1, "f":Ljava/io/FileInputStream;
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/InputStreamReader;

    invoke-direct {v4, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    const/16 v5, 0x2000

    invoke-direct {v0, v4, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    .line 364
    .local v0, "br":Ljava/io/BufferedReader;
    const/4 v2, 0x0

    .line 365
    .local v2, "line":Ljava/lang/String;
    :goto_0
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    .line 368
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    .line 373
    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v1    # "f":Ljava/io/FileInputStream;
    .end local v2    # "line":Ljava/lang/String;
    :goto_1
    return-object v3

    .line 366
    .restart local v0    # "br":Ljava/io/BufferedReader;
    .restart local v1    # "f":Ljava/io/FileInputStream;
    .restart local v2    # "line":Ljava/lang/String;
    :cond_0
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 369
    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v1    # "f":Ljava/io/FileInputStream;
    .end local v2    # "line":Ljava/lang/String;
    :catch_0
    move-exception v4

    goto :goto_1
.end method

.method private checkBan()Z
    .locals 2

    .prologue
    .line 1062
    iget-boolean v0, p0, Lcom/openfeint/internal/OpenFeintInternal;->mBanned:Z

    if-eqz v0, :cond_0

    .line 1063
    invoke-virtual {p0}, Lcom/openfeint/internal/OpenFeintInternal;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "of_banned_dialog"

    invoke-static {v1}, Lcom/openfeint/internal/RR;->string(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/openfeint/internal/OpenFeintInternal;->displayErrorDialog(Ljava/lang/CharSequence;)V

    .line 1064
    const/4 v0, 0x1

    .line 1066
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private clearPrefs()V
    .locals 2

    .prologue
    .line 277
    invoke-virtual {p0}, Lcom/openfeint/internal/OpenFeintInternal;->getPrefs()Lcom/openfeint/internal/SyncedStore;

    move-result-object v1

    invoke-virtual {v1}, Lcom/openfeint/internal/SyncedStore;->edit()Lcom/openfeint/internal/SyncedStore$Editor;

    move-result-object v0

    .line 279
    .local v0, "e":Lcom/openfeint/internal/SyncedStore$Editor;
    :try_start_0
    const-string v1, "last_logged_in_server"

    invoke-virtual {v0, v1}, Lcom/openfeint/internal/SyncedStore$Editor;->remove(Ljava/lang/String;)V

    .line 280
    const-string v1, "last_logged_in_user_name"

    invoke-virtual {v0, v1}, Lcom/openfeint/internal/SyncedStore$Editor;->remove(Ljava/lang/String;)V

    .line 282
    invoke-direct {p0, v0}, Lcom/openfeint/internal/OpenFeintInternal;->clearUser(Lcom/openfeint/internal/SyncedStore$Editor;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 284
    invoke-virtual {v0}, Lcom/openfeint/internal/SyncedStore$Editor;->commit()V

    .line 286
    return-void

    .line 283
    :catchall_0
    move-exception v1

    .line 284
    invoke-virtual {v0}, Lcom/openfeint/internal/SyncedStore$Editor;->commit()V

    .line 285
    throw v1
.end method

.method private clearUser(Lcom/openfeint/internal/SyncedStore$Editor;)V
    .locals 1
    .param p1, "e"    # Lcom/openfeint/internal/SyncedStore$Editor;

    .prologue
    .line 192
    const-string v0, "last_logged_in_user"

    invoke-virtual {p1, v0}, Lcom/openfeint/internal/SyncedStore$Editor;->remove(Ljava/lang/String;)V

    .line 193
    return-void
.end method

.method private findGSDI()Ljava/lang/String;
    .locals 6

    .prologue
    .line 689
    invoke-virtual {p0}, Lcom/openfeint/internal/OpenFeintInternal;->getUDID()Ljava/lang/String;

    move-result-object v2

    .line 690
    .local v2, "tUDID":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/openfeint/internal/OpenFeintInternal;->getAppID()Ljava/lang/String;

    move-result-object v1

    .line 691
    .local v1, "tAppID":Ljava/lang/String;
    const-string v3, "OFGSDI.%s.%s"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v2, v4, v5

    const/4 v5, 0x1

    aput-object v1, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 692
    .local v0, "raw":Ljava/lang/String;
    invoke-static {v0}, Lcom/openfeint/internal/Util;->hexSHA1(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method private findUDID()Ljava/lang/String;
    .locals 8

    .prologue
    .line 697
    invoke-virtual {p0}, Lcom/openfeint/internal/OpenFeintInternal;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "android_id"

    invoke-static {v4, v5}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 700
    .local v0, "androidID":Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v4, "9774d56d682e549c"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 701
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "android-id-"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 724
    :goto_0
    return-object v4

    .line 704
    :cond_0
    invoke-virtual {p0}, Lcom/openfeint/internal/OpenFeintInternal;->getPrefs()Lcom/openfeint/internal/SyncedStore;

    move-result-object v4

    invoke-virtual {v4}, Lcom/openfeint/internal/SyncedStore;->read()Lcom/openfeint/internal/SyncedStore$Reader;

    move-result-object v2

    .line 706
    .local v2, "r":Lcom/openfeint/internal/SyncedStore$Reader;
    :try_start_0
    const-string v4, "udid"

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Lcom/openfeint/internal/SyncedStore$Reader;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 708
    invoke-virtual {v2}, Lcom/openfeint/internal/SyncedStore$Reader;->complete()V

    .line 711
    if-nez v0, :cond_1

    .line 712
    const/16 v4, 0x10

    new-array v3, v4, [B

    .line 713
    .local v3, "randomBytes":[B
    new-instance v4, Ljava/util/Random;

    invoke-direct {v4}, Ljava/util/Random;-><init>()V

    invoke-virtual {v4, v3}, Ljava/util/Random;->nextBytes([B)V

    .line 714
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "android-emu-"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v5, Ljava/lang/String;

    invoke-static {v3}, Lcom/openfeint/internal/vendor/org/apache/commons/codec/binary/Hex;->encodeHex([B)[C

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/String;-><init>([C)V

    const-string v6, "\r\n"

    const-string v7, ""

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 716
    invoke-virtual {p0}, Lcom/openfeint/internal/OpenFeintInternal;->getPrefs()Lcom/openfeint/internal/SyncedStore;

    move-result-object v4

    invoke-virtual {v4}, Lcom/openfeint/internal/SyncedStore;->edit()Lcom/openfeint/internal/SyncedStore$Editor;

    move-result-object v1

    .line 718
    .local v1, "e":Lcom/openfeint/internal/SyncedStore$Editor;
    :try_start_1
    const-string v4, "udid"

    invoke-virtual {v1, v4, v0}, Lcom/openfeint/internal/SyncedStore$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 720
    invoke-virtual {v1}, Lcom/openfeint/internal/SyncedStore$Editor;->commit()V

    .end local v1    # "e":Lcom/openfeint/internal/SyncedStore$Editor;
    .end local v3    # "randomBytes":[B
    :cond_1
    move-object v4, v0

    .line 724
    goto :goto_0

    .line 707
    :catchall_0
    move-exception v4

    .line 708
    invoke-virtual {v2}, Lcom/openfeint/internal/SyncedStore$Reader;->complete()V

    .line 709
    throw v4

    .line 719
    .restart local v1    # "e":Lcom/openfeint/internal/SyncedStore$Editor;
    .restart local v3    # "randomBytes":[B
    :catchall_1
    move-exception v4

    .line 720
    invoke-virtual {v1}, Lcom/openfeint/internal/SyncedStore$Editor;->commit()V

    .line 721
    throw v4
.end method

.method public static genericRequest(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Lcom/openfeint/internal/request/IRawRequestDelegate;)V
    .locals 6
    .param p0, "path"    # Ljava/lang/String;
    .param p1, "method"    # Ljava/lang/String;
    .param p4, "delegate"    # Lcom/openfeint/internal/request/IRawRequestDelegate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/openfeint/internal/request/IRawRequestDelegate;",
            ")V"
        }
    .end annotation

    .prologue
    .line 569
    .local p2, "args":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .local p3, "httpParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    new-instance v0, Lcom/openfeint/internal/request/GenericRequest;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/openfeint/internal/request/GenericRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Lcom/openfeint/internal/request/IRawRequestDelegate;)V

    invoke-static {v0}, Lcom/openfeint/internal/OpenFeintInternal;->makeRequest(Lcom/openfeint/internal/request/BaseRequest;)V

    .line 570
    return-void
.end method

.method public static getCreateUserSource()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1184
    sget-object v0, Lcom/openfeint/internal/OpenFeintInternal;->createUserSource:Ljava/lang/String;

    return-object v0
.end method

.method public static getInstance()Lcom/openfeint/internal/OpenFeintInternal;
    .locals 1

    .prologue
    .line 177
    sget-object v0, Lcom/openfeint/internal/OpenFeintInternal;->sInstance:Lcom/openfeint/internal/OpenFeintInternal;

    return-object v0
.end method

.method public static getInstance(Lcom/openfeint/api/OpenFeintSettings;Landroid/content/Context;)Lcom/openfeint/internal/OpenFeintInternal;
    .locals 1
    .param p0, "settings"    # Lcom/openfeint/api/OpenFeintSettings;
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    .line 172
    sget-object v0, Lcom/openfeint/internal/OpenFeintInternal;->sInstance:Lcom/openfeint/internal/OpenFeintInternal;

    if-nez v0, :cond_0

    .line 173
    new-instance v0, Lcom/openfeint/internal/OpenFeintInternal;

    invoke-direct {v0, p0, p1}, Lcom/openfeint/internal/OpenFeintInternal;-><init>(Lcom/openfeint/api/OpenFeintSettings;Landroid/content/Context;)V

    sput-object v0, Lcom/openfeint/internal/OpenFeintInternal;->sInstance:Lcom/openfeint/internal/OpenFeintInternal;

    .line 174
    :cond_0
    sget-object v0, Lcom/openfeint/internal/OpenFeintInternal;->sInstance:Lcom/openfeint/internal/OpenFeintInternal;

    return-object v0
.end method

.method public static getModelString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 324
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "p("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")/m("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getOSVersionString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 328
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "v"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Landroid/os/Build$VERSION;->INCREMENTAL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getProcessorInfo()Ljava/lang/String;
    .locals 7

    .prologue
    .line 337
    const-string v0, "unknown"

    .line 339
    .local v0, "family":Ljava/lang/String;
    :try_start_0
    const-string v2, "/proc/cpuinfo"

    invoke-static {v2}, Lcom/openfeint/internal/OpenFeintInternal;->cat(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_1

    .line 346
    :goto_0
    const-string v2, "family(%s) min(%s) max(%s)"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    .line 347
    aput-object v0, v3, v4

    const/4 v4, 0x1

    .line 348
    const-string v5, "/sys/devices/system/cpu/cpu0/cpufreq/cpuinfo_min_freq"

    invoke-static {v5}, Lcom/openfeint/internal/OpenFeintInternal;->cat(Ljava/lang/String;)Ljava/util/List;

    move-result-object v5

    const/4 v6, 0x0

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    .line 349
    const-string v5, "/sys/devices/system/cpu/cpu0/cpufreq/cpuinfo_max_freq"

    invoke-static {v5}, Lcom/openfeint/internal/OpenFeintInternal;->cat(Ljava/lang/String;)Ljava/util/List;

    move-result-object v5

    const/4 v6, 0x0

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    aput-object v5, v3, v4

    .line 346
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 355
    :goto_1
    return-object v2

    .line 339
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 340
    .local v1, "l":Ljava/lang/String;
    const-string v3, "Processor\t"

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 341
    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    aget-object v2, v2, v3

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 342
    goto :goto_0

    .line 351
    .end local v1    # "l":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 355
    const-string v2, "family(unknown) min(unknown) max(unknown)"

    goto :goto_1
.end method

.method public static getRString(I)Ljava/lang/String;
    .locals 3
    .param p0, "id"    # I

    .prologue
    .line 821
    invoke-static {}, Lcom/openfeint/internal/OpenFeintInternal;->getInstance()Lcom/openfeint/internal/OpenFeintInternal;

    move-result-object v1

    .line 822
    .local v1, "ofi":Lcom/openfeint/internal/OpenFeintInternal;
    invoke-virtual {v1}, Lcom/openfeint/internal/OpenFeintInternal;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 823
    .local v0, "ctx":Landroid/content/Context;
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, p0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static getScreenInfo()Ljava/lang/String;
    .locals 5

    .prologue
    .line 332
    invoke-static {}, Lcom/openfeint/internal/Util;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 333
    .local v0, "metrics":Landroid/util/DisplayMetrics;
    const-string v1, "%dx%d (%f dpi)"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget v4, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget v4, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    iget v4, v0, Landroid/util/DisplayMetrics;->density:F

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getUserEnableSource()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1192
    sget-object v0, Lcom/openfeint/internal/OpenFeintInternal;->userEnableSource:Ljava/lang/String;

    return-object v0
.end method

.method private static initEventDispatchSystem()V
    .locals 3

    .prologue
    .line 863
    const-string v1, "OpenFeintInternal"

    const-string v2, "init EventDispacherSystem"

    invoke-static {v1, v2}, Lcom/openfeint/internal/logcat/OFLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 864
    new-instance v0, Lcom/openfeint/internal/eventlog/SDKEventListener;

    invoke-direct {v0}, Lcom/openfeint/internal/eventlog/SDKEventListener;-><init>()V

    .line 866
    .local v0, "sdkEventListener":Lcom/openfeint/internal/eventlog/SDKEventListener;
    invoke-static {}, Lcom/openfeint/internal/eventlog/EventLogDispatcher;->getInstance()Lcom/openfeint/internal/eventlog/EventLogDispatcher;

    move-result-object v1

    const-string v2, "prompt_enable_of.openfeint.com"

    invoke-virtual {v1, v2, v0}, Lcom/openfeint/internal/eventlog/EventLogDispatcher;->subscribe(Ljava/lang/String;Lcom/openfeint/internal/eventlog/IEventListener;)Z

    .line 867
    invoke-static {}, Lcom/openfeint/internal/eventlog/EventLogDispatcher;->getInstance()Lcom/openfeint/internal/eventlog/EventLogDispatcher;

    move-result-object v1

    const-string v2, "accepted_of.openfeint.com"

    invoke-virtual {v1, v2, v0}, Lcom/openfeint/internal/eventlog/EventLogDispatcher;->subscribe(Ljava/lang/String;Lcom/openfeint/internal/eventlog/IEventListener;)Z

    .line 868
    invoke-static {}, Lcom/openfeint/internal/eventlog/EventLogDispatcher;->getInstance()Lcom/openfeint/internal/eventlog/EventLogDispatcher;

    move-result-object v1

    const-string v2, "declined_of.openfeint.com"

    invoke-virtual {v1, v2, v0}, Lcom/openfeint/internal/eventlog/EventLogDispatcher;->subscribe(Ljava/lang/String;Lcom/openfeint/internal/eventlog/IEventListener;)Z

    .line 869
    invoke-static {}, Lcom/openfeint/internal/eventlog/EventLogDispatcher;->getInstance()Lcom/openfeint/internal/eventlog/EventLogDispatcher;

    move-result-object v1

    const-string v2, "enabled_of.openfeint.com"

    invoke-virtual {v1, v2, v0}, Lcom/openfeint/internal/eventlog/EventLogDispatcher;->subscribe(Ljava/lang/String;Lcom/openfeint/internal/eventlog/IEventListener;)Z

    .line 870
    invoke-static {}, Lcom/openfeint/internal/eventlog/EventLogDispatcher;->getInstance()Lcom/openfeint/internal/eventlog/EventLogDispatcher;

    move-result-object v1

    const-string v2, "new_user.openfeint.com"

    invoke-virtual {v1, v2, v0}, Lcom/openfeint/internal/eventlog/EventLogDispatcher;->subscribe(Ljava/lang/String;Lcom/openfeint/internal/eventlog/IEventListener;)Z

    .line 871
    invoke-static {}, Lcom/openfeint/internal/eventlog/EventLogDispatcher;->getInstance()Lcom/openfeint/internal/eventlog/EventLogDispatcher;

    move-result-object v1

    const-string v2, "dashboard_start.openfeint.com"

    invoke-virtual {v1, v2, v0}, Lcom/openfeint/internal/eventlog/EventLogDispatcher;->subscribe(Ljava/lang/String;Lcom/openfeint/internal/eventlog/IEventListener;)Z

    .line 872
    invoke-static {}, Lcom/openfeint/internal/eventlog/EventLogDispatcher;->getInstance()Lcom/openfeint/internal/eventlog/EventLogDispatcher;

    move-result-object v1

    const-string v2, "dashboard_end.openfeint.com"

    invoke-virtual {v1, v2, v0}, Lcom/openfeint/internal/eventlog/EventLogDispatcher;->subscribe(Ljava/lang/String;Lcom/openfeint/internal/eventlog/IEventListener;)Z

    .line 873
    invoke-static {}, Lcom/openfeint/internal/eventlog/EventLogDispatcher;->getInstance()Lcom/openfeint/internal/eventlog/EventLogDispatcher;

    move-result-object v1

    const-string v2, "game_start.openfeint.com"

    invoke-virtual {v1, v2, v0}, Lcom/openfeint/internal/eventlog/EventLogDispatcher;->subscribe(Ljava/lang/String;Lcom/openfeint/internal/eventlog/IEventListener;)Z

    .line 874
    invoke-static {}, Lcom/openfeint/internal/eventlog/EventLogDispatcher;->getInstance()Lcom/openfeint/internal/eventlog/EventLogDispatcher;

    move-result-object v1

    const-string v2, "game_background.openfeint.com"

    invoke-virtual {v1, v2, v0}, Lcom/openfeint/internal/eventlog/EventLogDispatcher;->subscribe(Ljava/lang/String;Lcom/openfeint/internal/eventlog/IEventListener;)Z

    .line 875
    invoke-static {}, Lcom/openfeint/internal/eventlog/EventLogDispatcher;->getInstance()Lcom/openfeint/internal/eventlog/EventLogDispatcher;

    move-result-object v1

    const-string v2, "game_foreground.openfeint.com"

    invoke-virtual {v1, v2, v0}, Lcom/openfeint/internal/eventlog/EventLogDispatcher;->subscribe(Ljava/lang/String;Lcom/openfeint/internal/eventlog/IEventListener;)Z

    .line 876
    invoke-static {}, Lcom/openfeint/internal/eventlog/EventLogDispatcher;->getInstance()Lcom/openfeint/internal/eventlog/EventLogDispatcher;

    move-result-object v1

    const-string v2, "game_exit.openfeint.com"

    invoke-virtual {v1, v2, v0}, Lcom/openfeint/internal/eventlog/EventLogDispatcher;->subscribe(Ljava/lang/String;Lcom/openfeint/internal/eventlog/IEventListener;)Z

    .line 877
    return-void
.end method

.method public static initialize(Landroid/content/Context;Lcom/openfeint/api/OpenFeintSettings;Lcom/openfeint/api/OpenFeintDelegate;)V
    .locals 2
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "settings"    # Lcom/openfeint/api/OpenFeintSettings;
    .param p2, "delegate"    # Lcom/openfeint/api/OpenFeintDelegate;

    .prologue
    .line 852
    invoke-static {p0, p1, p2}, Lcom/openfeint/internal/OpenFeintInternal;->initializeWithoutLoggingIn(Landroid/content/Context;Lcom/openfeint/api/OpenFeintSettings;Lcom/openfeint/api/OpenFeintDelegate;)V

    .line 853
    invoke-static {}, Lcom/openfeint/internal/OpenFeintInternal;->getInstance()Lcom/openfeint/internal/OpenFeintInternal;

    move-result-object v0

    .line 854
    .local v0, "ofi":Lcom/openfeint/internal/OpenFeintInternal;
    if-eqz v0, :cond_0

    .line 855
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/openfeint/internal/OpenFeintInternal;->login(Z)V

    .line 859
    :cond_0
    return-void
.end method

.method public static initializeWithoutLoggingIn(Landroid/content/Context;Lcom/openfeint/api/OpenFeintSettings;Lcom/openfeint/api/OpenFeintDelegate;)V
    .locals 4
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "settings"    # Lcom/openfeint/api/OpenFeintSettings;
    .param p2, "delegate"    # Lcom/openfeint/api/OpenFeintDelegate;

    .prologue
    .line 829
    invoke-static {p0}, Lcom/openfeint/internal/OpenFeintInternal;->validateManifest(Landroid/content/Context;)Z

    .line 831
    sget-object v1, Lcom/openfeint/internal/OpenFeintInternal;->sInstance:Lcom/openfeint/internal/OpenFeintInternal;

    if-nez v1, :cond_0

    .line 832
    new-instance v1, Lcom/openfeint/internal/OpenFeintInternal;

    invoke-direct {v1, p1, p0}, Lcom/openfeint/internal/OpenFeintInternal;-><init>(Lcom/openfeint/api/OpenFeintSettings;Landroid/content/Context;)V

    sput-object v1, Lcom/openfeint/internal/OpenFeintInternal;->sInstance:Lcom/openfeint/internal/OpenFeintInternal;

    .line 835
    :cond_0
    sget-object v1, Lcom/openfeint/internal/OpenFeintInternal;->sInstance:Lcom/openfeint/internal/OpenFeintInternal;

    iput-object p2, v1, Lcom/openfeint/internal/OpenFeintInternal;->mDelegate:Lcom/openfeint/api/OpenFeintDelegate;

    .line 837
    sget-object v1, Lcom/openfeint/internal/OpenFeintInternal;->sInstance:Lcom/openfeint/internal/OpenFeintInternal;

    iget-boolean v1, v1, Lcom/openfeint/internal/OpenFeintInternal;->mDeclined:Z

    if-nez v1, :cond_2

    .line 838
    sget-object v1, Lcom/openfeint/internal/OpenFeintInternal;->sInstance:Lcom/openfeint/internal/OpenFeintInternal;

    invoke-virtual {v1}, Lcom/openfeint/internal/OpenFeintInternal;->getUserID()Ljava/lang/String;

    move-result-object v0

    .line 839
    .local v0, "userID":Ljava/lang/String;
    if-nez v0, :cond_1

    .line 840
    invoke-static {}, Lcom/openfeint/internal/offline/OfflineSupport;->setUserTemporary()V

    .line 844
    :goto_0
    sget-object v1, Lcom/openfeint/internal/OpenFeintInternal;->sInstance:Lcom/openfeint/internal/OpenFeintInternal;

    invoke-virtual {v1}, Lcom/openfeint/internal/OpenFeintInternal;->createDeviceSession()V

    .line 848
    .end local v0    # "userID":Ljava/lang/String;
    :goto_1
    invoke-static {}, Lcom/openfeint/internal/eventlog/EventLogDispatcher;->getInstance()Lcom/openfeint/internal/eventlog/EventLogDispatcher;

    move-result-object v1

    const-string v2, "game_start.openfeint.com"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/openfeint/internal/eventlog/EventLogDispatcher;->postEvent(Ljava/lang/String;Ljava/lang/Object;)V

    .line 849
    return-void

    .line 842
    .restart local v0    # "userID":Ljava/lang/String;
    :cond_1
    invoke-static {v0}, Lcom/openfeint/internal/offline/OfflineSupport;->setUserID(Ljava/lang/String;)V

    goto :goto_0

    .line 846
    .end local v0    # "userID":Ljava/lang/String;
    :cond_2
    invoke-static {}, Lcom/openfeint/internal/offline/OfflineSupport;->setUserDeclined()V

    goto :goto_1
.end method

.method private final lastLoggedInUser()Lcom/openfeint/api/resource/User;
    .locals 6

    .prologue
    .line 999
    invoke-direct {p0}, Lcom/openfeint/internal/OpenFeintInternal;->loadUser()Lcom/openfeint/api/resource/User;

    move-result-object v3

    .line 1001
    .local v3, "savedUser":Lcom/openfeint/api/resource/User;
    invoke-virtual {p0}, Lcom/openfeint/internal/OpenFeintInternal;->getPrefs()Lcom/openfeint/internal/SyncedStore;

    move-result-object v4

    invoke-virtual {v4}, Lcom/openfeint/internal/SyncedStore;->read()Lcom/openfeint/internal/SyncedStore$Reader;

    move-result-object v1

    .line 1004
    .local v1, "r":Lcom/openfeint/internal/SyncedStore$Reader;
    :try_start_0
    new-instance v2, Ljava/net/URL;

    invoke-virtual {p0}, Lcom/openfeint/internal/OpenFeintInternal;->getServerUrl()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 1005
    .local v2, "saved":Ljava/net/URL;
    new-instance v0, Ljava/net/URL;

    const-string v4, "last_logged_in_server"

    const-string v5, ""

    invoke-virtual {v1, v4, v5}, Lcom/openfeint/internal/SyncedStore$Reader;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 1006
    .local v0, "loaded":Ljava/net/URL;
    if-eqz v3, :cond_0

    invoke-virtual {v2, v0}, Ljava/net/URL;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    if-eqz v4, :cond_0

    .line 1010
    invoke-virtual {v1}, Lcom/openfeint/internal/SyncedStore$Reader;->complete()V

    .line 1013
    .end local v0    # "loaded":Ljava/net/URL;
    .end local v2    # "saved":Ljava/net/URL;
    .end local v3    # "savedUser":Lcom/openfeint/api/resource/User;
    :goto_0
    return-object v3

    .line 1008
    .restart local v3    # "savedUser":Lcom/openfeint/api/resource/User;
    :catch_0
    move-exception v4

    .line 1010
    invoke-virtual {v1}, Lcom/openfeint/internal/SyncedStore$Reader;->complete()V

    .line 1013
    :goto_1
    const/4 v3, 0x0

    goto :goto_0

    .line 1009
    :catchall_0
    move-exception v4

    .line 1010
    invoke-virtual {v1}, Lcom/openfeint/internal/SyncedStore$Reader;->complete()V

    .line 1011
    throw v4

    .line 1010
    .restart local v0    # "loaded":Ljava/net/URL;
    .restart local v2    # "saved":Ljava/net/URL;
    :cond_0
    invoke-virtual {v1}, Lcom/openfeint/internal/SyncedStore$Reader;->complete()V

    goto :goto_1
.end method

.method private loadPropertiesFromXMLResource(Ljava/util/Properties;I)V
    .locals 6
    .param p1, "defaults"    # Ljava/util/Properties;
    .param p2, "resourceID"    # I

    .prologue
    .line 1138
    const/4 v3, 0x0

    .line 1140
    .local v3, "xml":Landroid/content/res/XmlResourceParser;
    :try_start_0
    invoke-virtual {p0}, Lcom/openfeint/internal/OpenFeintInternal;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, p2}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v3

    .line 1143
    :goto_0
    if-eqz v3, :cond_0

    .line 1146
    const/4 v2, 0x0

    .line 1147
    .local v2, "k":Ljava/lang/String;
    :try_start_1
    invoke-interface {v3}, Landroid/content/res/XmlResourceParser;->getEventType()I

    move-result v1

    .local v1, "eventType":I
    :goto_1
    invoke-interface {v3}, Landroid/content/res/XmlResourceParser;->getEventType()I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_1

    .line 1158
    invoke-interface {v3}, Landroid/content/res/XmlResourceParser;->close()V

    .line 1160
    .end local v1    # "eventType":I
    .end local v2    # "k":Ljava/lang/String;
    :cond_0
    return-void

    .line 1148
    .restart local v1    # "eventType":I
    .restart local v2    # "k":Ljava/lang/String;
    :cond_1
    const/4 v4, 0x2

    if-ne v1, v4, :cond_3

    .line 1149
    :try_start_2
    invoke-interface {v3}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v2

    .line 1147
    :cond_2
    :goto_2
    invoke-interface {v3}, Landroid/content/res/XmlResourceParser;->next()I

    invoke-interface {v3}, Landroid/content/res/XmlResourceParser;->getEventType()I

    move-result v1

    goto :goto_1

    .line 1150
    :cond_3
    invoke-interface {v3}, Landroid/content/res/XmlResourceParser;->getEventType()I

    move-result v4

    const/4 v5, 0x4

    if-ne v4, v5, :cond_2

    .line 1151
    invoke-interface {v3}, Landroid/content/res/XmlResourceParser;->getText()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v2, v4}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    .line 1154
    .end local v1    # "eventType":I
    :catch_0
    move-exception v0

    .line 1155
    .local v0, "e":Ljava/lang/Exception;
    new-instance v4, Ljava/lang/RuntimeException;

    invoke-direct {v4, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v4

    .line 1141
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v2    # "k":Ljava/lang/String;
    :catch_1
    move-exception v4

    goto :goto_0
.end method

.method private loadUser()Lcom/openfeint/api/resource/User;
    .locals 4

    .prologue
    .line 196
    const/4 v1, 0x0

    .line 197
    .local v1, "urep":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/openfeint/internal/OpenFeintInternal;->getPrefs()Lcom/openfeint/internal/SyncedStore;

    move-result-object v2

    invoke-virtual {v2}, Lcom/openfeint/internal/SyncedStore;->read()Lcom/openfeint/internal/SyncedStore$Reader;

    move-result-object v0

    .line 199
    .local v0, "r":Lcom/openfeint/internal/SyncedStore$Reader;
    :try_start_0
    const-string v2, "last_logged_in_user"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Lcom/openfeint/internal/SyncedStore$Reader;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 201
    invoke-virtual {v0}, Lcom/openfeint/internal/SyncedStore$Reader;->complete()V

    .line 203
    invoke-static {v1}, Lcom/openfeint/internal/OpenFeintInternal;->userFromString(Ljava/lang/String;)Lcom/openfeint/api/resource/User;

    move-result-object v2

    return-object v2

    .line 200
    :catchall_0
    move-exception v2

    .line 201
    invoke-virtual {v0}, Lcom/openfeint/internal/SyncedStore$Reader;->complete()V

    .line 202
    throw v2
.end method

.method public static makeRequest(Lcom/openfeint/internal/request/BaseRequest;)V
    .locals 4
    .param p0, "req"    # Lcom/openfeint/internal/request/BaseRequest;

    .prologue
    .line 729
    invoke-static {}, Lcom/openfeint/internal/OpenFeintInternal;->getInstance()Lcom/openfeint/internal/OpenFeintInternal;

    move-result-object v1

    .line 730
    .local v1, "ofi":Lcom/openfeint/internal/OpenFeintInternal;
    if-nez v1, :cond_0

    .line 731
    new-instance v0, Lcom/openfeint/internal/resource/ServerException;

    invoke-direct {v0}, Lcom/openfeint/internal/resource/ServerException;-><init>()V

    .line 732
    .local v0, "e":Lcom/openfeint/internal/resource/ServerException;
    const-string v2, "NoFeint"

    iput-object v2, v0, Lcom/openfeint/internal/resource/ServerException;->exceptionClass:Ljava/lang/String;

    .line 733
    const-string v2, "OpenFeint has not been initialized."

    iput-object v2, v0, Lcom/openfeint/internal/resource/ServerException;->message:Ljava/lang/String;

    .line 734
    const/4 v2, 0x0

    invoke-virtual {v0}, Lcom/openfeint/internal/resource/ServerException;->generate()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/openfeint/internal/request/BaseRequest;->onResponse(I[B)V

    .line 738
    .end local v0    # "e":Lcom/openfeint/internal/resource/ServerException;
    :goto_0
    return-void

    .line 736
    :cond_0
    invoke-direct {v1, p0}, Lcom/openfeint/internal/OpenFeintInternal;->_makeRequest(Lcom/openfeint/internal/request/BaseRequest;)V

    goto :goto_0
.end method

.method private normalizeUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "raw"    # Ljava/lang/String;

    .prologue
    .line 633
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 634
    const-string v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 635
    const/4 v0, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 637
    .end local p1    # "raw":Ljava/lang/String;
    :cond_0
    return-object p1
.end method

.method public static restoreInstanceState(Landroid/os/Bundle;)V
    .locals 1
    .param p0, "inState"    # Landroid/os/Bundle;

    .prologue
    .line 167
    invoke-static {}, Lcom/openfeint/internal/OpenFeintInternal;->getInstance()Lcom/openfeint/internal/OpenFeintInternal;

    move-result-object v0

    invoke-direct {v0, p0}, Lcom/openfeint/internal/OpenFeintInternal;->_restoreInstanceState(Landroid/os/Bundle;)V

    .line 168
    return-void
.end method

.method public static saveInstanceState(Landroid/os/Bundle;)V
    .locals 1
    .param p0, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 163
    invoke-static {}, Lcom/openfeint/internal/OpenFeintInternal;->getInstance()Lcom/openfeint/internal/OpenFeintInternal;

    move-result-object v0

    invoke-direct {v0, p0}, Lcom/openfeint/internal/OpenFeintInternal;->_saveInstanceState(Landroid/os/Bundle;)V

    .line 164
    return-void
.end method

.method private saveUser(Lcom/openfeint/internal/SyncedStore$Editor;Lcom/openfeint/api/resource/User;)V
    .locals 2
    .param p1, "e"    # Lcom/openfeint/internal/SyncedStore$Editor;
    .param p2, "u"    # Lcom/openfeint/api/resource/User;

    .prologue
    .line 188
    const-string v0, "last_logged_in_user"

    invoke-virtual {p2}, Lcom/openfeint/api/resource/User;->generate()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/openfeint/internal/SyncedStore$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    return-void
.end method

.method private saveUserApproval(Lcom/openfeint/internal/SyncedStore$Editor;)V
    .locals 2
    .param p1, "e"    # Lcom/openfeint/internal/SyncedStore$Editor;

    .prologue
    .line 590
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/openfeint/internal/OpenFeintInternal;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ".of_declined"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/openfeint/internal/SyncedStore$Editor;->remove(Ljava/lang/String;)V

    .line 591
    return-void
.end method

.method public static setCreateUserSource(Ljava/lang/String;)V
    .locals 0
    .param p0, "createUserSource"    # Ljava/lang/String;

    .prologue
    .line 1180
    sput-object p0, Lcom/openfeint/internal/OpenFeintInternal;->createUserSource:Ljava/lang/String;

    .line 1181
    return-void
.end method

.method public static setUserEnableSource(Ljava/lang/String;)V
    .locals 0
    .param p0, "userEnableSource"    # Ljava/lang/String;

    .prologue
    .line 1188
    sput-object p0, Lcom/openfeint/internal/OpenFeintInternal;->userEnableSource:Ljava/lang/String;

    .line 1189
    return-void
.end method

.method private showOfflineNotification(ILjava/lang/Object;)V
    .locals 5
    .param p1, "httpCode"    # I
    .param p2, "responseBody"    # Ljava/lang/Object;

    .prologue
    .line 1117
    invoke-virtual {p0}, Lcom/openfeint/internal/OpenFeintInternal;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 1118
    .local v0, "r":Landroid/content/res/Resources;
    const-string v2, "of_offline_notification_line2"

    invoke-static {v2}, Lcom/openfeint/internal/RR;->string(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1120
    .local v1, "serverMessage":Ljava/lang/String;
    if-eqz p1, :cond_1

    .line 1121
    const/16 v2, 0x193

    if-ne v2, p1, :cond_0

    .line 1122
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/openfeint/internal/OpenFeintInternal;->mBanned:Z

    .line 1125
    :cond_0
    instance-of v2, p2, Lcom/openfeint/internal/resource/ServerException;

    if-eqz v2, :cond_1

    .line 1126
    check-cast p2, Lcom/openfeint/internal/resource/ServerException;

    .end local p2    # "responseBody":Ljava/lang/Object;
    iget-object v1, p2, Lcom/openfeint/internal/resource/ServerException;->message:Ljava/lang/String;

    .line 1130
    :cond_1
    const-string v2, "of_offline_notification"

    invoke-static {v2}, Lcom/openfeint/internal/RR;->string(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1132
    sget-object v3, Lcom/openfeint/api/Notification$Category;->Foreground:Lcom/openfeint/api/Notification$Category;

    sget-object v4, Lcom/openfeint/api/Notification$Type;->NetworkOffline:Lcom/openfeint/api/Notification$Type;

    .line 1130
    invoke-static {v2, v1, v3, v4}, Lcom/openfeint/internal/notifications/TwoLineNotification;->show(Ljava/lang/String;Ljava/lang/String;Lcom/openfeint/api/Notification$Category;Lcom/openfeint/api/Notification$Type;)V

    .line 1134
    const-string v2, "Reachability"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Unable to launch IntroFlow because: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/openfeint/internal/logcat/OFLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1135
    return-void
.end method

.method private static userFromString(Ljava/lang/String;)Lcom/openfeint/api/resource/User;
    .locals 7
    .param p0, "urep"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 207
    if-nez p0, :cond_0

    move-object v3, v4

    .line 220
    :goto_0
    return-object v3

    .line 210
    :cond_0
    :try_start_0
    new-instance v2, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonFactory;

    invoke-direct {v2}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonFactory;-><init>()V

    .line 211
    .local v2, "jsonFactory":Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonFactory;
    new-instance v5, Ljava/io/ByteArrayInputStream;

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {v2, v5}, Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonFactory;->createJsonParser(Ljava/io/InputStream;)Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonParser;

    move-result-object v0

    .line 212
    .local v0, "jp":Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonParser;
    new-instance v1, Lcom/openfeint/internal/JsonResourceParser;

    invoke-direct {v1, v0}, Lcom/openfeint/internal/JsonResourceParser;-><init>(Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonParser;)V

    .line 213
    .local v1, "jrp":Lcom/openfeint/internal/JsonResourceParser;
    invoke-virtual {v1}, Lcom/openfeint/internal/JsonResourceParser;->parse()Ljava/lang/Object;

    move-result-object v3

    .line 215
    .local v3, "responseBody":Ljava/lang/Object;
    if-eqz v3, :cond_1

    instance-of v5, v3, Lcom/openfeint/api/resource/User;

    if-eqz v5, :cond_1

    .line 216
    check-cast v3, Lcom/openfeint/api/resource/User;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 218
    .end local v0    # "jp":Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonParser;
    .end local v1    # "jrp":Lcom/openfeint/internal/JsonResourceParser;
    .end local v2    # "jsonFactory":Lcom/openfeint/internal/vendor/org/codehaus/jackson/JsonFactory;
    .end local v3    # "responseBody":Ljava/lang/Object;
    :catch_0
    move-exception v5

    :cond_1
    move-object v3, v4

    .line 220
    goto :goto_0
.end method

.method private userLoggedIn(Lcom/openfeint/api/resource/User;)V
    .locals 5
    .param p1, "loggedInUser"    # Lcom/openfeint/api/resource/User;

    .prologue
    const/4 v4, 0x0

    .line 225
    new-instance v2, Lcom/openfeint/api/resource/CurrentUser;

    invoke-direct {v2}, Lcom/openfeint/api/resource/CurrentUser;-><init>()V

    iput-object v2, p0, Lcom/openfeint/internal/OpenFeintInternal;->mCurrentUser:Lcom/openfeint/api/resource/CurrentUser;

    .line 226
    iget-object v2, p0, Lcom/openfeint/internal/OpenFeintInternal;->mCurrentUser:Lcom/openfeint/api/resource/CurrentUser;

    invoke-virtual {v2, p1}, Lcom/openfeint/api/resource/CurrentUser;->shallowCopyAncestorType(Lcom/openfeint/internal/resource/Resource;)V

    .line 228
    invoke-static {}, Lcom/openfeint/internal/eventlog/EventLogDispatcher;->getInstance()Lcom/openfeint/internal/eventlog/EventLogDispatcher;

    move-result-object v2

    const-string v3, "login_success.openfeint.com"

    invoke-virtual {v2, v3, v4}, Lcom/openfeint/internal/eventlog/EventLogDispatcher;->postEvent(Ljava/lang/String;Ljava/lang/Object;)V

    .line 230
    invoke-direct {p0}, Lcom/openfeint/internal/OpenFeintInternal;->lastLoggedInUser()Lcom/openfeint/api/resource/User;

    move-result-object v1

    .line 231
    .local v1, "lliu":Lcom/openfeint/api/resource/User;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/openfeint/api/resource/User;->resourceID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/openfeint/api/resource/User;->resourceID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 234
    :cond_0
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/webkit/CookieManager;->removeAllCookie()V

    .line 237
    :cond_1
    invoke-virtual {p0}, Lcom/openfeint/internal/OpenFeintInternal;->getPrefs()Lcom/openfeint/internal/SyncedStore;

    move-result-object v2

    invoke-virtual {v2}, Lcom/openfeint/internal/SyncedStore;->edit()Lcom/openfeint/internal/SyncedStore$Editor;

    move-result-object v0

    .line 239
    .local v0, "e":Lcom/openfeint/internal/SyncedStore$Editor;
    :try_start_0
    const-string v2, "last_logged_in_server"

    invoke-virtual {p0}, Lcom/openfeint/internal/OpenFeintInternal;->getServerUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/openfeint/internal/SyncedStore$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 240
    invoke-direct {p0, v0}, Lcom/openfeint/internal/OpenFeintInternal;->saveUserApproval(Lcom/openfeint/internal/SyncedStore$Editor;)V

    .line 242
    invoke-direct {p0, v0, p1}, Lcom/openfeint/internal/OpenFeintInternal;->saveUser(Lcom/openfeint/internal/SyncedStore$Editor;Lcom/openfeint/api/resource/User;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 244
    invoke-virtual {v0}, Lcom/openfeint/internal/SyncedStore$Editor;->commit()V

    .line 247
    iget-object v2, p0, Lcom/openfeint/internal/OpenFeintInternal;->mDelegate:Lcom/openfeint/api/OpenFeintDelegate;

    if-eqz v2, :cond_2

    .line 248
    iget-object v2, p0, Lcom/openfeint/internal/OpenFeintInternal;->mDelegate:Lcom/openfeint/api/OpenFeintDelegate;

    iget-object v3, p0, Lcom/openfeint/internal/OpenFeintInternal;->mCurrentUser:Lcom/openfeint/api/resource/CurrentUser;

    invoke-virtual {v2, v3}, Lcom/openfeint/api/OpenFeintDelegate;->userLoggedIn(Lcom/openfeint/api/resource/CurrentUser;)V

    .line 250
    :cond_2
    iget-object v2, p0, Lcom/openfeint/internal/OpenFeintInternal;->mLoginDelegate:Lcom/openfeint/internal/OpenFeintInternal$LoginDelegate;

    if-eqz v2, :cond_3

    .line 251
    iget-object v2, p0, Lcom/openfeint/internal/OpenFeintInternal;->mLoginDelegate:Lcom/openfeint/internal/OpenFeintInternal$LoginDelegate;

    iget-object v3, p0, Lcom/openfeint/internal/OpenFeintInternal;->mCurrentUser:Lcom/openfeint/api/resource/CurrentUser;

    invoke-interface {v2, v3}, Lcom/openfeint/internal/OpenFeintInternal$LoginDelegate;->login(Lcom/openfeint/api/resource/User;)V

    .line 253
    :cond_3
    iget-object v2, p0, Lcom/openfeint/internal/OpenFeintInternal;->mPostLoginRunnable:Ljava/lang/Runnable;

    if-eqz v2, :cond_4

    .line 254
    iget-object v2, p0, Lcom/openfeint/internal/OpenFeintInternal;->mMainThreadHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/openfeint/internal/OpenFeintInternal;->mPostLoginRunnable:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 255
    iput-object v4, p0, Lcom/openfeint/internal/OpenFeintInternal;->mPostLoginRunnable:Ljava/lang/Runnable;

    .line 257
    :cond_4
    invoke-virtual {p1}, Lcom/openfeint/api/resource/User;->resourceID()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/openfeint/internal/offline/OfflineSupport;->setUserID(Ljava/lang/String;)V

    .line 258
    return-void

    .line 243
    :catchall_0
    move-exception v2

    .line 244
    invoke-virtual {v0}, Lcom/openfeint/internal/SyncedStore$Editor;->commit()V

    .line 245
    throw v2
.end method

.method private userLoggedOut()V
    .locals 2

    .prologue
    .line 261
    iget-object v0, p0, Lcom/openfeint/internal/OpenFeintInternal;->mCurrentUser:Lcom/openfeint/api/resource/CurrentUser;

    .line 262
    .local v0, "previousLocalUser":Lcom/openfeint/api/resource/User;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/openfeint/internal/OpenFeintInternal;->mCurrentUser:Lcom/openfeint/api/resource/CurrentUser;

    .line 264
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/openfeint/internal/OpenFeintInternal;->mDeviceSessionCreated:Z

    .line 266
    invoke-direct {p0}, Lcom/openfeint/internal/OpenFeintInternal;->clearPrefs()V

    .line 268
    iget-object v1, p0, Lcom/openfeint/internal/OpenFeintInternal;->mDelegate:Lcom/openfeint/api/OpenFeintDelegate;

    if-eqz v1, :cond_0

    .line 269
    iget-object v1, p0, Lcom/openfeint/internal/OpenFeintInternal;->mDelegate:Lcom/openfeint/api/OpenFeintDelegate;

    invoke-virtual {v1, v0}, Lcom/openfeint/api/OpenFeintDelegate;->userLoggedOut(Lcom/openfeint/api/resource/User;)V

    .line 273
    :cond_0
    invoke-static {}, Lcom/openfeint/internal/offline/OfflineSupport;->setUserDeclined()V

    .line 274
    return-void
.end method

.method private static validateManifest(Landroid/content/Context;)Z
    .locals 14
    .param p0, "appContext"    # Landroid/content/Context;

    .prologue
    .line 885
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    .line 887
    .local v6, "packageManager":Landroid/content/pm/PackageManager;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x1

    invoke-virtual {v6, v8, v9}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v5

    .line 889
    .local v5, "packageInfo":Landroid/content/pm/PackageInfo;
    const/4 v8, 0x4

    new-array v3, v8, [Ljava/lang/String;

    const/4 v8, 0x0

    .line 890
    const-string v9, "com.openfeint.api.ui.Dashboard"

    aput-object v9, v3, v8

    const/4 v8, 0x1

    .line 891
    const-string v9, "com.openfeint.internal.ui.IntroFlow"

    aput-object v9, v3, v8

    const/4 v8, 0x2

    .line 892
    const-string v9, "com.openfeint.internal.ui.Settings"

    aput-object v9, v3, v8

    const/4 v8, 0x3

    .line 893
    const-string v9, "com.openfeint.internal.ui.NativeBrowser"

    aput-object v9, v3, v8

    .line 896
    .local v3, "neededActivityInfo":[Ljava/lang/String;
    array-length v10, v3

    const/4 v8, 0x0

    move v9, v8

    :goto_0
    if-lt v9, v10, :cond_0

    .line 917
    const/4 v8, 0x1

    new-array v4, v8, [Ljava/lang/String;

    const/4 v8, 0x0

    .line 918
    const-string v9, "android.permission.INTERNET"

    aput-object v9, v4, v8

    .line 921
    .local v4, "neededPermissionInfo":[Ljava/lang/String;
    array-length v9, v4

    const/4 v8, 0x0

    :goto_1
    if-lt v8, v9, :cond_5

    .line 934
    const/4 v8, 0x1

    .end local v3    # "neededActivityInfo":[Ljava/lang/String;
    .end local v4    # "neededPermissionInfo":[Ljava/lang/String;
    .end local v5    # "packageInfo":Landroid/content/pm/PackageInfo;
    :goto_2
    return v8

    .line 896
    .restart local v3    # "neededActivityInfo":[Ljava/lang/String;
    .restart local v5    # "packageInfo":Landroid/content/pm/PackageInfo;
    :cond_0
    aget-object v2, v3, v9

    .line 897
    .local v2, "n":Ljava/lang/String;
    const/4 v7, 0x0

    .line 898
    .local v7, "victory":Z
    iget-object v11, v5, Landroid/content/pm/PackageInfo;->activities:[Landroid/content/pm/ActivityInfo;

    array-length v12, v11

    const/4 v8, 0x0

    :goto_3
    if-lt v8, v12, :cond_1

    .line 910
    :goto_4
    if-nez v7, :cond_4

    .line 911
    const-string v8, "OpenFeintInternal"

    const-string v9, "Couldn\'t find ActivityInfo for %s.\nPlease consult README.txt for the correct configuration."

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object v2, v10, v11

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 912
    const/4 v8, 0x0

    goto :goto_2

    .line 898
    :cond_1
    aget-object v0, v11, v8

    .line 899
    .local v0, "ai":Landroid/content/pm/ActivityInfo;
    iget-object v13, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v13, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_3

    .line 900
    iget v8, v0, Landroid/content/pm/ActivityInfo;->configChanges:I

    and-int/lit16 v8, v8, 0x80

    if-nez v8, :cond_2

    .line 902
    const-string v8, "OpenFeintInternal"

    const-string v9, "ActivityInfo for %s has the wrong configChanges.\nPlease consult README.txt for the correct configuration."

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object v2, v10, v11

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 903
    const/4 v8, 0x0

    goto :goto_2

    .line 906
    :cond_2
    const/4 v7, 0x1

    .line 907
    goto :goto_4

    .line 898
    :cond_3
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    .line 896
    .end local v0    # "ai":Landroid/content/pm/ActivityInfo;
    :cond_4
    add-int/lit8 v8, v9, 0x1

    move v9, v8

    goto :goto_0

    .line 921
    .end local v2    # "n":Ljava/lang/String;
    .end local v7    # "victory":Z
    .restart local v4    # "neededPermissionInfo":[Ljava/lang/String;
    :cond_5
    aget-object v2, v4, v8

    .line 922
    .restart local v2    # "n":Ljava/lang/String;
    invoke-static {v2, p0}, Lcom/openfeint/internal/Util;->noPermission(Ljava/lang/String;Landroid/content/Context;)Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v10

    if-eqz v10, :cond_6

    .line 925
    const/4 v8, 0x0

    goto :goto_2

    .line 921
    :cond_6
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 929
    .end local v2    # "n":Ljava/lang/String;
    .end local v3    # "neededActivityInfo":[Ljava/lang/String;
    .end local v4    # "neededPermissionInfo":[Ljava/lang/String;
    .end local v5    # "packageInfo":Landroid/content/pm/PackageInfo;
    :catch_0
    move-exception v1

    .line 930
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v8, "OpenFeintInternal"

    const-string v9, "Couldn\'t find PackageInfo for %s.\nPlease initialize OF with an Activity that lives in your root package."

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 931
    const/4 v8, 0x0

    goto :goto_2
.end method


# virtual methods
.method public createDeviceSession()V
    .locals 5

    .prologue
    .line 395
    iget-boolean v3, p0, Lcom/openfeint/internal/OpenFeintInternal;->mCreatingDeviceSession:Z

    if-nez v3, :cond_0

    iget-boolean v3, p0, Lcom/openfeint/internal/OpenFeintInternal;->mDeviceSessionCreated:Z

    if-eqz v3, :cond_1

    .line 447
    :cond_0
    :goto_0
    return-void

    .line 397
    :cond_1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 398
    .local v0, "argMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v3, "platform"

    const-string v4, "android"

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 399
    const-string v3, "device"

    invoke-virtual {p0}, Lcom/openfeint/internal/OpenFeintInternal;->getDeviceParams()Ljava/util/Map;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 400
    const-string v3, "of-version"

    invoke-virtual {p0}, Lcom/openfeint/internal/OpenFeintInternal;->getOFVersion()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 401
    const-string v3, "game_version"

    invoke-virtual {p0}, Lcom/openfeint/internal/OpenFeintInternal;->getAppVersion()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 402
    const-string v3, "protocol_version"

    const-string v4, "1.0"

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 403
    const-string v3, "gsdi"

    invoke-virtual {p0}, Lcom/openfeint/internal/OpenFeintInternal;->getGSDI()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 405
    new-instance v1, Lcom/openfeint/internal/request/OrderedArgList;

    invoke-direct {v1, v0}, Lcom/openfeint/internal/request/OrderedArgList;-><init>(Ljava/util/Map;)V

    .line 407
    .local v1, "args":Lcom/openfeint/internal/request/OrderedArgList;
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/openfeint/internal/OpenFeintInternal;->mCreatingDeviceSession:Z

    .line 411
    new-instance v2, Lcom/openfeint/internal/OpenFeintInternal$2;

    invoke-direct {v2, p0, v1}, Lcom/openfeint/internal/OpenFeintInternal$2;-><init>(Lcom/openfeint/internal/OpenFeintInternal;Lcom/openfeint/internal/request/OrderedArgList;)V

    .line 446
    .local v2, "deviceSession":Lcom/openfeint/internal/request/RawRequest;
    invoke-direct {p0, v2}, Lcom/openfeint/internal/OpenFeintInternal;->_makeRequest(Lcom/openfeint/internal/request/BaseRequest;)V

    goto :goto_0
.end method

.method public createUser(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/openfeint/internal/request/IRawRequestDelegate;)V
    .locals 3
    .param p1, "userName"    # Ljava/lang/String;
    .param p2, "email"    # Ljava/lang/String;
    .param p3, "password"    # Ljava/lang/String;
    .param p4, "passwordConfirmation"    # Ljava/lang/String;
    .param p5, "delegate"    # Lcom/openfeint/internal/request/IRawRequestDelegate;

    .prologue
    .line 289
    new-instance v0, Lcom/openfeint/internal/request/OrderedArgList;

    invoke-direct {v0}, Lcom/openfeint/internal/request/OrderedArgList;-><init>()V

    .line 290
    .local v0, "bootstrapArgs":Lcom/openfeint/internal/request/OrderedArgList;
    const-string v2, "user[name]"

    invoke-virtual {v0, v2, p1}, Lcom/openfeint/internal/request/OrderedArgList;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 291
    const-string v2, "user[http_basic_credential_attributes][email]"

    invoke-virtual {v0, v2, p2}, Lcom/openfeint/internal/request/OrderedArgList;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 292
    const-string v2, "user[http_basic_credential_attributes][password]"

    invoke-virtual {v0, v2, p3}, Lcom/openfeint/internal/request/OrderedArgList;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 293
    const-string v2, "user[http_basic_credential_attributes][password_confirmation]"

    invoke-virtual {v0, v2, p4}, Lcom/openfeint/internal/request/OrderedArgList;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 295
    new-instance v1, Lcom/openfeint/internal/OpenFeintInternal$1;

    invoke-direct {v1, p0, v0}, Lcom/openfeint/internal/OpenFeintInternal$1;-><init>(Lcom/openfeint/internal/OpenFeintInternal;Lcom/openfeint/internal/request/OrderedArgList;)V

    .line 311
    .local v1, "userCreate":Lcom/openfeint/internal/request/RawRequest;
    invoke-virtual {v1, p5}, Lcom/openfeint/internal/request/RawRequest;->setDelegate(Lcom/openfeint/internal/request/IRawRequestDelegate;)V

    .line 312
    invoke-direct {p0, v1}, Lcom/openfeint/internal/OpenFeintInternal;->_makeRequest(Lcom/openfeint/internal/request/BaseRequest;)V

    .line 313
    return-void
.end method

.method public currentlyLoggingIn()Z
    .locals 1

    .prologue
    .line 609
    iget-boolean v0, p0, Lcom/openfeint/internal/OpenFeintInternal;->mCurrentlyLoggingIn:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/openfeint/internal/OpenFeintInternal;->mCreatingDeviceSession:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public displayErrorDialog(Ljava/lang/CharSequence;)V
    .locals 3
    .param p1, "errorMessage"    # Ljava/lang/CharSequence;

    .prologue
    .line 675
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/openfeint/api/Notification$Category;->Foreground:Lcom/openfeint/api/Notification$Category;

    sget-object v2, Lcom/openfeint/api/Notification$Type;->Error:Lcom/openfeint/api/Notification$Type;

    invoke-static {v0, v1, v2}, Lcom/openfeint/internal/notifications/SimpleNotification;->show(Ljava/lang/String;Lcom/openfeint/api/Notification$Category;Lcom/openfeint/api/Notification$Type;)V

    .line 686
    return-void
.end method

.method public getAdServerUrl()Ljava/lang/String;
    .locals 2

    .prologue
    .line 641
    iget-object v0, p0, Lcom/openfeint/internal/OpenFeintInternal;->mAdServerUrl:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 642
    invoke-virtual {p0}, Lcom/openfeint/internal/OpenFeintInternal;->getInternalProperties()Ljava/util/Properties;

    move-result-object v0

    const-string v1, "ad-server-url"

    invoke-virtual {v0, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/openfeint/internal/OpenFeintInternal;->normalizeUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/openfeint/internal/OpenFeintInternal;->mAdServerUrl:Ljava/lang/String;

    .line 644
    :cond_0
    iget-object v0, p0, Lcom/openfeint/internal/OpenFeintInternal;->mAdServerUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getAppID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 657
    iget-object v0, p0, Lcom/openfeint/internal/OpenFeintInternal;->mSettings:Lcom/openfeint/api/OpenFeintSettings;

    iget-object v0, v0, Lcom/openfeint/api/OpenFeintSettings;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getAppName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 656
    iget-object v0, p0, Lcom/openfeint/internal/OpenFeintInternal;->mSettings:Lcom/openfeint/api/OpenFeintSettings;

    iget-object v0, v0, Lcom/openfeint/api/OpenFeintSettings;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getAppVersion()I
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 660
    iget v3, p0, Lcom/openfeint/internal/OpenFeintInternal;->mAppVersion:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_0

    .line 661
    invoke-virtual {p0}, Lcom/openfeint/internal/OpenFeintInternal;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 663
    .local v0, "c":Landroid/content/Context;
    :try_start_0
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    .line 664
    .local v2, "p":Landroid/content/pm/PackageInfo;
    iget v3, v2, Landroid/content/pm/PackageInfo;->versionCode:I

    iput v3, p0, Lcom/openfeint/internal/OpenFeintInternal;->mAppVersion:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 669
    .end local v0    # "c":Landroid/content/Context;
    .end local v2    # "p":Landroid/content/pm/PackageInfo;
    :cond_0
    :goto_0
    iget v3, p0, Lcom/openfeint/internal/OpenFeintInternal;->mAppVersion:I

    return v3

    .line 665
    .restart local v0    # "c":Landroid/content/Context;
    :catch_0
    move-exception v1

    .line 666
    .local v1, "e":Ljava/lang/Exception;
    iput v6, p0, Lcom/openfeint/internal/OpenFeintInternal;->mAppVersion:I

    goto :goto_0
.end method

.method public getClient()Lorg/apache/http/impl/client/AbstractHttpClient;
    .locals 1

    .prologue
    .line 179
    iget-object v0, p0, Lcom/openfeint/internal/OpenFeintInternal;->mClient:Lcom/openfeint/internal/request/Client;

    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 672
    iget-object v0, p0, Lcom/openfeint/internal/OpenFeintInternal;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getCountryString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 320
    iget-object v0, p0, Lcom/openfeint/internal/OpenFeintInternal;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentUser()Lcom/openfeint/api/resource/CurrentUser;
    .locals 1

    .prologue
    .line 612
    iget-object v0, p0, Lcom/openfeint/internal/OpenFeintInternal;->mCurrentUser:Lcom/openfeint/api/resource/CurrentUser;

    return-object v0
.end method

.method public getDelegate()Lcom/openfeint/api/OpenFeintDelegate;
    .locals 1

    .prologue
    .line 178
    iget-object v0, p0, Lcom/openfeint/internal/OpenFeintInternal;->mDelegate:Lcom/openfeint/api/OpenFeintDelegate;

    return-object v0
.end method

.method public getDeviceParams()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 377
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 378
    .local v0, "device":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v1, "identifier"

    invoke-virtual {p0}, Lcom/openfeint/internal/OpenFeintInternal;->getUDID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 379
    const-string v1, "hardware"

    invoke-static {}, Lcom/openfeint/internal/OpenFeintInternal;->getModelString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 380
    const-string v1, "os"

    invoke-static {}, Lcom/openfeint/internal/OpenFeintInternal;->getOSVersionString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 381
    const-string v1, "screen_resolution"

    invoke-static {}, Lcom/openfeint/internal/OpenFeintInternal;->getScreenInfo()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 382
    const-string v1, "processor"

    invoke-static {}, Lcom/openfeint/internal/OpenFeintInternal;->getProcessorInfo()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 383
    return-object v0
.end method

.method public getGSDI()Ljava/lang/String;
    .locals 1

    .prologue
    .line 624
    iget-object v0, p0, Lcom/openfeint/internal/OpenFeintInternal;->mGSDI:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 625
    invoke-direct {p0}, Lcom/openfeint/internal/OpenFeintInternal;->findGSDI()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/openfeint/internal/OpenFeintInternal;->mGSDI:Ljava/lang/String;

    .line 626
    :cond_0
    iget-object v0, p0, Lcom/openfeint/internal/OpenFeintInternal;->mGSDI:Ljava/lang/String;

    return-object v0
.end method

.method public getInternalProperties()Ljava/util/Properties;
    .locals 1

    .prologue
    .line 630
    iget-object v0, p0, Lcom/openfeint/internal/OpenFeintInternal;->mInternalProperties:Ljava/util/Properties;

    return-object v0
.end method

.method public getLocaleString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 316
    iget-object v0, p0, Lcom/openfeint/internal/OpenFeintInternal;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getOFVersion()Ljava/lang/String;
    .locals 2

    .prologue
    .line 654
    invoke-virtual {p0}, Lcom/openfeint/internal/OpenFeintInternal;->getInternalProperties()Ljava/util/Properties;

    move-result-object v0

    const-string v1, "of-version"

    invoke-virtual {v0, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPrefs()Lcom/openfeint/internal/SyncedStore;
    .locals 2

    .prologue
    .line 181
    iget-object v0, p0, Lcom/openfeint/internal/OpenFeintInternal;->mPrefs:Lcom/openfeint/internal/SyncedStore;

    if-nez v0, :cond_0

    .line 182
    new-instance v0, Lcom/openfeint/internal/SyncedStore;

    invoke-virtual {p0}, Lcom/openfeint/internal/OpenFeintInternal;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/openfeint/internal/SyncedStore;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/openfeint/internal/OpenFeintInternal;->mPrefs:Lcom/openfeint/internal/SyncedStore;

    .line 184
    :cond_0
    iget-object v0, p0, Lcom/openfeint/internal/OpenFeintInternal;->mPrefs:Lcom/openfeint/internal/SyncedStore;

    return-object v0
.end method

.method public getResource(Ljava/lang/String;)I
    .locals 3
    .param p1, "resourceName"    # Ljava/lang/String;

    .prologue
    .line 816
    invoke-virtual {p0}, Lcom/openfeint/internal/OpenFeintInternal;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 817
    .local v0, "packageName":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/openfeint/internal/OpenFeintInternal;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2, v0}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    return v1
.end method

.method public getServerUrl()Ljava/lang/String;
    .locals 2

    .prologue
    .line 648
    iget-object v0, p0, Lcom/openfeint/internal/OpenFeintInternal;->mServerUrl:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 649
    invoke-virtual {p0}, Lcom/openfeint/internal/OpenFeintInternal;->getInternalProperties()Ljava/util/Properties;

    move-result-object v0

    const-string v1, "server-url"

    invoke-virtual {v0, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/openfeint/internal/OpenFeintInternal;->normalizeUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/openfeint/internal/OpenFeintInternal;->mServerUrl:Ljava/lang/String;

    .line 651
    :cond_0
    iget-object v0, p0, Lcom/openfeint/internal/OpenFeintInternal;->mServerUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getSessionID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1176
    iget-object v0, p0, Lcom/openfeint/internal/OpenFeintInternal;->mSessionID:Ljava/lang/String;

    return-object v0
.end method

.method public getSessionStartDate()Ljava/util/Date;
    .locals 1

    .prologue
    .line 1172
    iget-object v0, p0, Lcom/openfeint/internal/OpenFeintInternal;->mSessionStartDate:Ljava/util/Date;

    return-object v0
.end method

.method public getSettings()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 658
    iget-object v0, p0, Lcom/openfeint/internal/OpenFeintInternal;->mSettings:Lcom/openfeint/api/OpenFeintSettings;

    iget-object v0, v0, Lcom/openfeint/api/OpenFeintSettings;->settings:Ljava/util/Map;

    return-object v0
.end method

.method public getUDID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 617
    iget-object v0, p0, Lcom/openfeint/internal/OpenFeintInternal;->mUDID:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 618
    invoke-direct {p0}, Lcom/openfeint/internal/OpenFeintInternal;->findUDID()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/openfeint/internal/OpenFeintInternal;->mUDID:Ljava/lang/String;

    .line 620
    :cond_0
    iget-object v0, p0, Lcom/openfeint/internal/OpenFeintInternal;->mUDID:Ljava/lang/String;

    return-object v0
.end method

.method public getUserID()Ljava/lang/String;
    .locals 2

    .prologue
    .line 991
    invoke-virtual {p0}, Lcom/openfeint/internal/OpenFeintInternal;->getCurrentUser()Lcom/openfeint/api/resource/CurrentUser;

    move-result-object v0

    .line 992
    .local v0, "user":Lcom/openfeint/api/resource/User;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/openfeint/api/resource/User;->userID()Ljava/lang/String;

    move-result-object v1

    .line 995
    :goto_0
    return-object v1

    .line 993
    :cond_0
    invoke-direct {p0}, Lcom/openfeint/internal/OpenFeintInternal;->lastLoggedInUser()Lcom/openfeint/api/resource/User;

    move-result-object v0

    .line 994
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/openfeint/api/resource/User;->userID()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 995
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isFeintServerReachable()Z
    .locals 5

    .prologue
    const/4 v2, 0x1

    .line 1163
    const-string v3, "android.permission.ACCESS_NETWORK_STATE"

    invoke-virtual {p0}, Lcom/openfeint/internal/OpenFeintInternal;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/openfeint/internal/Util;->noPermission(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1168
    :cond_0
    :goto_0
    return v2

    .line 1166
    :cond_1
    invoke-virtual {p0}, Lcom/openfeint/internal/OpenFeintInternal;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "connectivity"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    .line 1167
    .local v1, "conMan":Landroid/net/ConnectivityManager;
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 1168
    .local v0, "activeNetwork":Landroid/net/NetworkInfo;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v3

    if-nez v3, :cond_0

    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public isUserLoggedIn()Z
    .locals 1

    .prologue
    .line 614
    invoke-virtual {p0}, Lcom/openfeint/internal/OpenFeintInternal;->getCurrentUser()Lcom/openfeint/api/resource/CurrentUser;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public launchIntroFlow(Z)V
    .locals 4
    .param p1, "spotlight"    # Z

    .prologue
    .line 1070
    invoke-direct {p0}, Lcom/openfeint/internal/OpenFeintInternal;->checkBan()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1113
    :cond_0
    :goto_0
    return-void

    .line 1072
    :cond_1
    invoke-virtual {p0}, Lcom/openfeint/internal/OpenFeintInternal;->isFeintServerReachable()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1073
    invoke-virtual {p0}, Lcom/openfeint/internal/OpenFeintInternal;->getDelegate()Lcom/openfeint/api/OpenFeintDelegate;

    move-result-object v0

    .line 1074
    .local v0, "d":Lcom/openfeint/api/OpenFeintDelegate;
    iget-boolean v2, p0, Lcom/openfeint/internal/OpenFeintInternal;->mApproved:Z

    if-nez v2, :cond_2

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/openfeint/internal/OpenFeintInternal;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/openfeint/api/OpenFeintDelegate;->showCustomApprovalFlow(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1079
    :cond_2
    new-instance v1, Lcom/openfeint/internal/OpenFeintInternal$11;

    invoke-direct {v1, p0, p1}, Lcom/openfeint/internal/OpenFeintInternal$11;-><init>(Lcom/openfeint/internal/OpenFeintInternal;Z)V

    .line 1098
    .local v1, "r":Ljava/lang/Runnable;
    iget-boolean v2, p0, Lcom/openfeint/internal/OpenFeintInternal;->mCreatingDeviceSession:Z

    if-nez v2, :cond_3

    iget-boolean v2, p0, Lcom/openfeint/internal/OpenFeintInternal;->mDeviceSessionCreated:Z

    if-nez v2, :cond_5

    .line 1099
    :cond_3
    iget-boolean v2, p0, Lcom/openfeint/internal/OpenFeintInternal;->mCreatingDeviceSession:Z

    if-nez v2, :cond_4

    .line 1100
    invoke-virtual {p0}, Lcom/openfeint/internal/OpenFeintInternal;->createDeviceSession()V

    .line 1103
    :cond_4
    iput-object v1, p0, Lcom/openfeint/internal/OpenFeintInternal;->mPostDeviceSessionRunnable:Ljava/lang/Runnable;

    goto :goto_0

    .line 1106
    :cond_5
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 1111
    .end local v0    # "d":Lcom/openfeint/api/OpenFeintDelegate;
    .end local v1    # "r":Ljava/lang/Runnable;
    :cond_6
    const/4 v2, 0x0

    const-string v3, ""

    invoke-direct {p0, v2, v3}, Lcom/openfeint/internal/OpenFeintInternal;->showOfflineNotification(ILjava/lang/Object;)V

    goto :goto_0
.end method

.method public login(Z)V
    .locals 2
    .param p1, "spotlight"    # Z

    .prologue
    .line 1020
    new-instance v0, Lcom/openfeint/internal/OpenFeintInternal$10;

    invoke-direct {v0, p0, p1}, Lcom/openfeint/internal/OpenFeintInternal$10;-><init>(Lcom/openfeint/internal/OpenFeintInternal;Z)V

    .line 1058
    .local v0, "r":Ljava/lang/Runnable;
    iget-object v1, p0, Lcom/openfeint/internal/OpenFeintInternal;->mMainThreadHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1059
    return-void
.end method

.method public loginUser(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/openfeint/internal/request/IRawRequestDelegate;)V
    .locals 10
    .param p1, "userName"    # Ljava/lang/String;
    .param p2, "password"    # Ljava/lang/String;
    .param p3, "userID"    # Ljava/lang/String;
    .param p4, "delegate"    # Lcom/openfeint/internal/request/IRawRequestDelegate;

    .prologue
    .line 454
    invoke-direct {p0}, Lcom/openfeint/internal/OpenFeintInternal;->checkBan()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 524
    :goto_0
    return-void

    .line 456
    :cond_0
    iget-boolean v0, p0, Lcom/openfeint/internal/OpenFeintInternal;->mCreatingDeviceSession:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/openfeint/internal/OpenFeintInternal;->mDeviceSessionCreated:Z

    if-nez v0, :cond_3

    .line 457
    :cond_1
    iget-boolean v0, p0, Lcom/openfeint/internal/OpenFeintInternal;->mCreatingDeviceSession:Z

    if-nez v0, :cond_2

    .line 458
    invoke-virtual {p0}, Lcom/openfeint/internal/OpenFeintInternal;->createDeviceSession()V

    .line 462
    :cond_2
    const-string v0, "OpenFeintInternal"

    const-string v1, "No device session yet - queueing login."

    invoke-static {v0, v1}, Lcom/openfeint/internal/logcat/OFLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 464
    new-instance v0, Lcom/openfeint/internal/OpenFeintInternal$3;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/openfeint/internal/OpenFeintInternal$3;-><init>(Lcom/openfeint/internal/OpenFeintInternal;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/openfeint/internal/request/IRawRequestDelegate;)V

    iput-object v0, p0, Lcom/openfeint/internal/OpenFeintInternal;->mPostDeviceSessionRunnable:Ljava/lang/Runnable;

    goto :goto_0

    .line 472
    :cond_3
    const/4 v6, 0x1

    .line 474
    .local v6, "allowToast":Z
    new-instance v7, Lcom/openfeint/internal/request/OrderedArgList;

    invoke-direct {v7}, Lcom/openfeint/internal/request/OrderedArgList;-><init>()V

    .line 475
    .local v7, "bootstrapArgs":Lcom/openfeint/internal/request/OrderedArgList;
    if-eqz p1, :cond_4

    if-eqz p2, :cond_4

    .line 476
    const-string v0, "login"

    invoke-virtual {v7, v0, p1}, Lcom/openfeint/internal/request/OrderedArgList;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 477
    const-string v0, "password"

    invoke-virtual {v7, v0, p2}, Lcom/openfeint/internal/request/OrderedArgList;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 478
    const/4 v6, 0x0

    .line 483
    :cond_4
    if-eqz p3, :cond_5

    if-eqz p2, :cond_5

    .line 484
    const-string v0, "user_id"

    invoke-virtual {v7, v0, p3}, Lcom/openfeint/internal/request/OrderedArgList;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 485
    const-string v0, "password"

    invoke-virtual {v7, v0, p2}, Lcom/openfeint/internal/request/OrderedArgList;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 486
    const/4 v6, 0x0

    .line 489
    :cond_5
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/openfeint/internal/OpenFeintInternal;->mCurrentlyLoggingIn:Z

    .line 491
    move v8, v6

    .line 493
    .local v8, "finalToast":Z
    new-instance v9, Lcom/openfeint/internal/OpenFeintInternal$4;

    invoke-direct {v9, p0, v7, v8}, Lcom/openfeint/internal/OpenFeintInternal$4;-><init>(Lcom/openfeint/internal/OpenFeintInternal;Lcom/openfeint/internal/request/OrderedArgList;Z)V

    .line 522
    .local v9, "userLogin":Lcom/openfeint/internal/request/RawRequest;
    invoke-virtual {v9, p4}, Lcom/openfeint/internal/request/RawRequest;->setDelegate(Lcom/openfeint/internal/request/IRawRequestDelegate;)V

    .line 523
    invoke-direct {p0, v9}, Lcom/openfeint/internal/OpenFeintInternal;->_makeRequest(Lcom/openfeint/internal/request/BaseRequest;)V

    goto :goto_0
.end method

.method public logoutUser(Lcom/openfeint/internal/request/IRawRequestDelegate;)V
    .locals 4
    .param p1, "delegate"    # Lcom/openfeint/internal/request/IRawRequestDelegate;

    .prologue
    .line 553
    new-instance v0, Lcom/openfeint/internal/request/OrderedArgList;

    invoke-direct {v0}, Lcom/openfeint/internal/request/OrderedArgList;-><init>()V

    .line 554
    .local v0, "bootstrapArgs":Lcom/openfeint/internal/request/OrderedArgList;
    const-string v2, "platform"

    const-string v3, "android"

    invoke-virtual {v0, v2, v3}, Lcom/openfeint/internal/request/OrderedArgList;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 556
    new-instance v1, Lcom/openfeint/internal/OpenFeintInternal$6;

    invoke-direct {v1, p0, v0}, Lcom/openfeint/internal/OpenFeintInternal$6;-><init>(Lcom/openfeint/internal/OpenFeintInternal;Lcom/openfeint/internal/request/OrderedArgList;)V

    .line 561
    .local v1, "userLogout":Lcom/openfeint/internal/request/RawRequest;
    invoke-virtual {v1, p1}, Lcom/openfeint/internal/request/RawRequest;->setDelegate(Lcom/openfeint/internal/request/IRawRequestDelegate;)V

    .line 562
    invoke-direct {p0, v1}, Lcom/openfeint/internal/OpenFeintInternal;->_makeRequest(Lcom/openfeint/internal/request/BaseRequest;)V

    .line 565
    invoke-direct {p0}, Lcom/openfeint/internal/OpenFeintInternal;->userLoggedOut()V

    .line 566
    return-void
.end method

.method public parentalControlsEnabled()Z
    .locals 1

    .prologue
    .line 387
    iget-boolean v0, p0, Lcom/openfeint/internal/OpenFeintInternal;->mParentalControlsEnabled:Z

    return v0
.end method

.method public final runOnUiThread(Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "action"    # Ljava/lang/Runnable;

    .prologue
    .line 450
    iget-object v0, p0, Lcom/openfeint/internal/OpenFeintInternal;->mMainThreadHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 451
    return-void
.end method

.method public setDelegate(Lcom/openfeint/api/OpenFeintDelegate;)V
    .locals 0
    .param p1, "delegate"    # Lcom/openfeint/api/OpenFeintDelegate;

    .prologue
    .line 880
    iput-object p1, p0, Lcom/openfeint/internal/OpenFeintInternal;->mDelegate:Lcom/openfeint/api/OpenFeintDelegate;

    .line 881
    return-void
.end method

.method public setLoginDelegate(Lcom/openfeint/internal/OpenFeintInternal$LoginDelegate;)V
    .locals 0
    .param p1, "delegate"    # Lcom/openfeint/internal/OpenFeintInternal$LoginDelegate;

    .prologue
    .line 128
    iput-object p1, p0, Lcom/openfeint/internal/OpenFeintInternal;->mLoginDelegate:Lcom/openfeint/internal/OpenFeintInternal$LoginDelegate;

    .line 129
    return-void
.end method

.method public setParentalControlsEnabled(Z)V
    .locals 0
    .param p1, "parentalControlsEnabled"    # Z

    .prologue
    .line 391
    iput-boolean p1, p0, Lcom/openfeint/internal/OpenFeintInternal;->mParentalControlsEnabled:Z

    .line 392
    return-void
.end method

.method public submitIntent(Landroid/content/Intent;Z)V
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "spotlight"    # Z

    .prologue
    .line 532
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/openfeint/internal/OpenFeintInternal;->mDeclined:Z

    .line 534
    new-instance v0, Lcom/openfeint/internal/OpenFeintInternal$5;

    invoke-direct {v0, p0, p1}, Lcom/openfeint/internal/OpenFeintInternal$5;-><init>(Lcom/openfeint/internal/OpenFeintInternal;Landroid/content/Intent;)V

    .line 541
    .local v0, "r":Ljava/lang/Runnable;
    invoke-virtual {p0}, Lcom/openfeint/internal/OpenFeintInternal;->isUserLoggedIn()Z

    move-result v1

    if-nez v1, :cond_1

    .line 542
    const-string v1, "OpenFeintInternal"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Not logged in yet - queueing intent "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " for now."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/openfeint/internal/logcat/OFLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 543
    iput-object v0, p0, Lcom/openfeint/internal/OpenFeintInternal;->mPostLoginRunnable:Ljava/lang/Runnable;

    .line 544
    invoke-virtual {p0}, Lcom/openfeint/internal/OpenFeintInternal;->currentlyLoggingIn()Z

    move-result v1

    if-nez v1, :cond_0

    .line 545
    invoke-virtual {p0, p2}, Lcom/openfeint/internal/OpenFeintInternal;->login(Z)V

    .line 550
    :cond_0
    :goto_0
    return-void

    .line 548
    :cond_1
    iget-object v1, p0, Lcom/openfeint/internal/OpenFeintInternal;->mMainThreadHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public uploadFile(Ljava/lang/String;Lcom/openfeint/internal/request/multipart/PartSource;Ljava/lang/String;Lcom/openfeint/internal/OpenFeintInternal$IUploadDelegate;)V
    .locals 6
    .param p1, "xpApiPath"    # Ljava/lang/String;
    .param p2, "partSource"    # Lcom/openfeint/internal/request/multipart/PartSource;
    .param p3, "contentType"    # Ljava/lang/String;
    .param p4, "delegate"    # Lcom/openfeint/internal/OpenFeintInternal$IUploadDelegate;

    .prologue
    .line 792
    new-instance v0, Lcom/openfeint/internal/OpenFeintInternal$9;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/openfeint/internal/OpenFeintInternal$9;-><init>(Lcom/openfeint/internal/OpenFeintInternal;Ljava/lang/String;Lcom/openfeint/internal/request/multipart/PartSource;Ljava/lang/String;Lcom/openfeint/internal/OpenFeintInternal$IUploadDelegate;)V

    .line 812
    .local v0, "xpRequest":Lcom/openfeint/internal/request/JSONRequest;
    invoke-direct {p0, v0}, Lcom/openfeint/internal/OpenFeintInternal;->_makeRequest(Lcom/openfeint/internal/request/BaseRequest;)V

    .line 813
    return-void
.end method

.method public uploadFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/openfeint/internal/OpenFeintInternal$IUploadDelegate;)V
    .locals 5
    .param p1, "xpApiPath"    # Ljava/lang/String;
    .param p2, "filePath"    # Ljava/lang/String;
    .param p3, "contentType"    # Ljava/lang/String;
    .param p4, "delegate"    # Lcom/openfeint/internal/OpenFeintInternal$IUploadDelegate;

    .prologue
    .line 776
    move-object v1, p2

    .line 777
    .local v1, "fileName":Ljava/lang/String;
    :try_start_0
    const-string v3, "/"

    invoke-virtual {p2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 778
    .local v2, "parts":[Ljava/lang/String;
    array-length v3, v2

    if-lez v3, :cond_0

    .line 779
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    aget-object v1, v2, v3

    .line 781
    :cond_0
    new-instance v3, Lcom/openfeint/internal/request/multipart/FilePartSource;

    new-instance v4, Ljava/io/File;

    invoke-direct {v4, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v1, v4}, Lcom/openfeint/internal/request/multipart/FilePartSource;-><init>(Ljava/lang/String;Ljava/io/File;)V

    invoke-virtual {p0, p1, v3, p3, p4}, Lcom/openfeint/internal/OpenFeintInternal;->uploadFile(Ljava/lang/String;Lcom/openfeint/internal/request/multipart/PartSource;Ljava/lang/String;Lcom/openfeint/internal/OpenFeintInternal$IUploadDelegate;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 785
    .end local v2    # "parts":[Ljava/lang/String;
    :goto_0
    return-void

    .line 782
    :catch_0
    move-exception v0

    .line 783
    .local v0, "e":Ljava/io/FileNotFoundException;
    const-string v3, ""

    const/4 v4, 0x0

    invoke-interface {p4, v3, v4}, Lcom/openfeint/internal/OpenFeintInternal$IUploadDelegate;->fileUploadedTo(Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method public uploadFile(Ljava/lang/String;Ljava/lang/String;[BLjava/lang/String;Lcom/openfeint/internal/OpenFeintInternal$IUploadDelegate;)V
    .locals 1
    .param p1, "xpApiPath"    # Ljava/lang/String;
    .param p2, "fileName"    # Ljava/lang/String;
    .param p3, "fileData"    # [B
    .param p4, "contentType"    # Ljava/lang/String;
    .param p5, "delegate"    # Lcom/openfeint/internal/OpenFeintInternal$IUploadDelegate;

    .prologue
    .line 788
    new-instance v0, Lcom/openfeint/internal/request/multipart/ByteArrayPartSource;

    invoke-direct {v0, p2, p3}, Lcom/openfeint/internal/request/multipart/ByteArrayPartSource;-><init>(Ljava/lang/String;[B)V

    invoke-virtual {p0, p1, v0, p4, p5}, Lcom/openfeint/internal/OpenFeintInternal;->uploadFile(Ljava/lang/String;Lcom/openfeint/internal/request/multipart/PartSource;Ljava/lang/String;Lcom/openfeint/internal/OpenFeintInternal$IUploadDelegate;)V

    .line 789
    return-void
.end method

.method public userApprovedFeint()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 573
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/openfeint/internal/OpenFeintInternal;->mApproved:Z

    .line 574
    iput-boolean v4, p0, Lcom/openfeint/internal/OpenFeintInternal;->mDeclined:Z

    .line 576
    invoke-static {}, Lcom/openfeint/internal/eventlog/EventLogDispatcher;->getInstance()Lcom/openfeint/internal/eventlog/EventLogDispatcher;

    move-result-object v1

    const-string v2, "accepted_of.openfeint.com"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/openfeint/internal/eventlog/EventLogDispatcher;->postEvent(Ljava/lang/String;Ljava/lang/Object;)V

    .line 577
    invoke-virtual {p0}, Lcom/openfeint/internal/OpenFeintInternal;->getPrefs()Lcom/openfeint/internal/SyncedStore;

    move-result-object v1

    invoke-virtual {v1}, Lcom/openfeint/internal/SyncedStore;->edit()Lcom/openfeint/internal/SyncedStore$Editor;

    move-result-object v0

    .line 580
    .local v0, "e":Lcom/openfeint/internal/SyncedStore$Editor;
    :try_start_0
    invoke-direct {p0, v0}, Lcom/openfeint/internal/OpenFeintInternal;->saveUserApproval(Lcom/openfeint/internal/SyncedStore$Editor;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 582
    invoke-virtual {v0}, Lcom/openfeint/internal/SyncedStore$Editor;->commit()V

    .line 585
    invoke-virtual {p0, v4}, Lcom/openfeint/internal/OpenFeintInternal;->launchIntroFlow(Z)V

    .line 586
    invoke-static {}, Lcom/openfeint/internal/offline/OfflineSupport;->setUserTemporary()V

    .line 587
    return-void

    .line 581
    :catchall_0
    move-exception v1

    .line 582
    invoke-virtual {v0}, Lcom/openfeint/internal/SyncedStore$Editor;->commit()V

    .line 583
    throw v1
.end method

.method public userDeclinedFeint()V
    .locals 4

    .prologue
    .line 594
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/openfeint/internal/OpenFeintInternal;->mApproved:Z

    .line 595
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/openfeint/internal/OpenFeintInternal;->mDeclined:Z

    .line 597
    invoke-static {}, Lcom/openfeint/internal/eventlog/EventLogDispatcher;->getInstance()Lcom/openfeint/internal/eventlog/EventLogDispatcher;

    move-result-object v1

    const-string v2, "declined_of.openfeint.com"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/openfeint/internal/eventlog/EventLogDispatcher;->postEvent(Ljava/lang/String;Ljava/lang/Object;)V

    .line 598
    invoke-virtual {p0}, Lcom/openfeint/internal/OpenFeintInternal;->getPrefs()Lcom/openfeint/internal/SyncedStore;

    move-result-object v1

    invoke-virtual {v1}, Lcom/openfeint/internal/SyncedStore;->edit()Lcom/openfeint/internal/SyncedStore$Editor;

    move-result-object v0

    .line 600
    .local v0, "e":Lcom/openfeint/internal/SyncedStore$Editor;
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/openfeint/internal/OpenFeintInternal;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, ".of_declined"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "sadly"

    invoke-virtual {v0, v1, v2}, Lcom/openfeint/internal/SyncedStore$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 602
    invoke-virtual {v0}, Lcom/openfeint/internal/SyncedStore$Editor;->commit()V

    .line 605
    invoke-static {}, Lcom/openfeint/internal/offline/OfflineSupport;->setUserDeclined()V

    .line 606
    return-void

    .line 601
    :catchall_0
    move-exception v1

    .line 602
    invoke-virtual {v0}, Lcom/openfeint/internal/SyncedStore$Editor;->commit()V

    .line 603
    throw v1
.end method
