.class public Lcom/openfeint/internal/analytics/AnalyticsManager;
.super Ljava/lang/Object;
.source "AnalyticsManager.java"


# static fields
.field private static final BATCH_UPLOAD_NUM_MAX:I = 0x64

.field private static final DEFALUT_BATCH_UPLOAD_TRIGGER:I = 0xa

.field private static batch_num_trigger:I

.field private static instance:Lcom/openfeint/internal/analytics/AnalyticsManager;


# instance fields
.field private client_application_id:Ljava/lang/String;

.field private count:I

.field private country:Ljava/lang/String;

.field private hardware:Ljava/lang/String;

.field private info:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private locale:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private of_version:Ljava/lang/String;

.field private os_version:Ljava/lang/String;

.field private platform:Ljava/lang/String;

.field private tag:Ljava/lang/String;

.field private version:Ljava/lang/String;

.field private waiting:Z


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    const-string v0, "AnalyticsManager"

    iput-object v0, p0, Lcom/openfeint/internal/analytics/AnalyticsManager;->tag:Ljava/lang/String;

    .line 43
    iput-object p1, p0, Lcom/openfeint/internal/analytics/AnalyticsManager;->mContext:Landroid/content/Context;

    .line 44
    iput v1, p0, Lcom/openfeint/internal/analytics/AnalyticsManager;->count:I

    .line 45
    sget v0, Lcom/openfeint/internal/analytics/AnalyticsManager;->batch_num_trigger:I

    if-nez v0, :cond_0

    .line 46
    const/16 v0, 0xa

    sput v0, Lcom/openfeint/internal/analytics/AnalyticsManager;->batch_num_trigger:I

    .line 48
    :cond_0
    iput-boolean v1, p0, Lcom/openfeint/internal/analytics/AnalyticsManager;->waiting:Z

    .line 49
    invoke-direct {p0}, Lcom/openfeint/internal/analytics/AnalyticsManager;->initInfo()V

    .line 50
    return-void
.end method

.method public static getBatch_num_trigger()I
    .locals 1

    .prologue
    .line 250
    sget v0, Lcom/openfeint/internal/analytics/AnalyticsManager;->batch_num_trigger:I

    return v0
.end method

.method private initInfo()V
    .locals 3

    .prologue
    .line 52
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/openfeint/internal/analytics/AnalyticsManager;->info:Ljava/util/Map;

    .line 53
    invoke-static {}, Lcom/openfeint/internal/OpenFeintInternal;->getModelString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/openfeint/internal/analytics/AnalyticsManager;->hardware:Ljava/lang/String;

    .line 54
    invoke-static {}, Lcom/openfeint/internal/OpenFeintInternal;->getInstance()Lcom/openfeint/internal/OpenFeintInternal;

    move-result-object v0

    invoke-virtual {v0}, Lcom/openfeint/internal/OpenFeintInternal;->getAppID()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/openfeint/internal/analytics/AnalyticsManager;->client_application_id:Ljava/lang/String;

    .line 55
    invoke-static {}, Lcom/openfeint/internal/OpenFeintInternal;->getInstance()Lcom/openfeint/internal/OpenFeintInternal;

    move-result-object v0

    invoke-virtual {v0}, Lcom/openfeint/internal/OpenFeintInternal;->getAppVersion()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/openfeint/internal/analytics/AnalyticsManager;->version:Ljava/lang/String;

    .line 56
    invoke-static {}, Lcom/openfeint/internal/OpenFeintInternal;->getInstance()Lcom/openfeint/internal/OpenFeintInternal;

    move-result-object v0

    invoke-virtual {v0}, Lcom/openfeint/internal/OpenFeintInternal;->getOFVersion()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/openfeint/internal/analytics/AnalyticsManager;->of_version:Ljava/lang/String;

    .line 57
    invoke-static {}, Lcom/openfeint/internal/OpenFeintInternal;->getOSVersionString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/openfeint/internal/analytics/AnalyticsManager;->os_version:Ljava/lang/String;

    .line 58
    const-string v0, "Android"

    iput-object v0, p0, Lcom/openfeint/internal/analytics/AnalyticsManager;->platform:Ljava/lang/String;

    .line 59
    invoke-static {}, Lcom/openfeint/internal/OpenFeintInternal;->getInstance()Lcom/openfeint/internal/OpenFeintInternal;

    move-result-object v0

    invoke-virtual {v0}, Lcom/openfeint/internal/OpenFeintInternal;->getLocaleString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/openfeint/internal/analytics/AnalyticsManager;->locale:Ljava/lang/String;

    .line 60
    invoke-static {}, Lcom/openfeint/internal/OpenFeintInternal;->getInstance()Lcom/openfeint/internal/OpenFeintInternal;

    move-result-object v0

    invoke-virtual {v0}, Lcom/openfeint/internal/OpenFeintInternal;->getCountryString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/openfeint/internal/analytics/AnalyticsManager;->country:Ljava/lang/String;

    .line 61
    iget-object v0, p0, Lcom/openfeint/internal/analytics/AnalyticsManager;->tag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "hardware:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/openfeint/internal/analytics/AnalyticsManager;->hardware:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/openfeint/internal/logcat/OFLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    iget-object v0, p0, Lcom/openfeint/internal/analytics/AnalyticsManager;->tag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "client_application_id:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/openfeint/internal/analytics/AnalyticsManager;->client_application_id:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/openfeint/internal/logcat/OFLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    iget-object v0, p0, Lcom/openfeint/internal/analytics/AnalyticsManager;->tag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "version:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/openfeint/internal/analytics/AnalyticsManager;->version:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/openfeint/internal/logcat/OFLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    iget-object v0, p0, Lcom/openfeint/internal/analytics/AnalyticsManager;->tag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "of_version:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/openfeint/internal/analytics/AnalyticsManager;->of_version:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/openfeint/internal/logcat/OFLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    iget-object v0, p0, Lcom/openfeint/internal/analytics/AnalyticsManager;->tag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "os_version:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/openfeint/internal/analytics/AnalyticsManager;->os_version:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/openfeint/internal/logcat/OFLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    iget-object v0, p0, Lcom/openfeint/internal/analytics/AnalyticsManager;->tag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "platform:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/openfeint/internal/analytics/AnalyticsManager;->platform:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/openfeint/internal/logcat/OFLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    iget-object v0, p0, Lcom/openfeint/internal/analytics/AnalyticsManager;->tag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "locale:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/openfeint/internal/analytics/AnalyticsManager;->locale:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/openfeint/internal/logcat/OFLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    iget-object v0, p0, Lcom/openfeint/internal/analytics/AnalyticsManager;->tag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "country:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/openfeint/internal/analytics/AnalyticsManager;->country:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/openfeint/internal/logcat/OFLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    iget-object v0, p0, Lcom/openfeint/internal/analytics/AnalyticsManager;->info:Ljava/util/Map;

    const-string v1, "hardware"

    iget-object v2, p0, Lcom/openfeint/internal/analytics/AnalyticsManager;->hardware:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    iget-object v0, p0, Lcom/openfeint/internal/analytics/AnalyticsManager;->info:Ljava/util/Map;

    const-string v1, "client_application_id"

    iget-object v2, p0, Lcom/openfeint/internal/analytics/AnalyticsManager;->client_application_id:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    iget-object v0, p0, Lcom/openfeint/internal/analytics/AnalyticsManager;->info:Ljava/util/Map;

    const-string v1, "version"

    iget-object v2, p0, Lcom/openfeint/internal/analytics/AnalyticsManager;->version:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    iget-object v0, p0, Lcom/openfeint/internal/analytics/AnalyticsManager;->info:Ljava/util/Map;

    const-string v1, "of_version"

    iget-object v2, p0, Lcom/openfeint/internal/analytics/AnalyticsManager;->of_version:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    iget-object v0, p0, Lcom/openfeint/internal/analytics/AnalyticsManager;->info:Ljava/util/Map;

    const-string v1, "os_version"

    iget-object v2, p0, Lcom/openfeint/internal/analytics/AnalyticsManager;->os_version:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    iget-object v0, p0, Lcom/openfeint/internal/analytics/AnalyticsManager;->info:Ljava/util/Map;

    const-string v1, "platform"

    iget-object v2, p0, Lcom/openfeint/internal/analytics/AnalyticsManager;->platform:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    iget-object v0, p0, Lcom/openfeint/internal/analytics/AnalyticsManager;->info:Ljava/util/Map;

    const-string v1, "locale"

    iget-object v2, p0, Lcom/openfeint/internal/analytics/AnalyticsManager;->locale:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    iget-object v0, p0, Lcom/openfeint/internal/analytics/AnalyticsManager;->info:Ljava/util/Map;

    const-string v1, "country"

    iget-object v2, p0, Lcom/openfeint/internal/analytics/AnalyticsManager;->country:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    return-void
.end method

.method public static instance()Lcom/openfeint/internal/analytics/AnalyticsManager;
    .locals 1

    .prologue
    .line 87
    sget-object v0, Lcom/openfeint/internal/analytics/AnalyticsManager;->instance:Lcom/openfeint/internal/analytics/AnalyticsManager;

    return-object v0
.end method

.method public static instance(Landroid/content/Context;)Lcom/openfeint/internal/analytics/AnalyticsManager;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 80
    sget-object v0, Lcom/openfeint/internal/analytics/AnalyticsManager;->instance:Lcom/openfeint/internal/analytics/AnalyticsManager;

    if-nez v0, :cond_0

    .line 81
    new-instance v0, Lcom/openfeint/internal/analytics/AnalyticsManager;

    invoke-direct {v0, p0}, Lcom/openfeint/internal/analytics/AnalyticsManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/openfeint/internal/analytics/AnalyticsManager;->instance:Lcom/openfeint/internal/analytics/AnalyticsManager;

    .line 83
    :cond_0
    sget-object v0, Lcom/openfeint/internal/analytics/AnalyticsManager;->instance:Lcom/openfeint/internal/analytics/AnalyticsManager;

    return-object v0
.end method

.method private log_(Lcom/openfeint/internal/analytics/IAnalyticsLogger;)Ljava/lang/String;
    .locals 4
    .param p1, "logger"    # Lcom/openfeint/internal/analytics/IAnalyticsLogger;

    .prologue
    .line 119
    invoke-interface {p1}, Lcom/openfeint/internal/analytics/IAnalyticsLogger;->getMap()Ljava/util/Map;

    move-result-object v1

    .line 120
    .local v1, "o":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-static {v1}, Lcom/openfeint/internal/JsonCoder;->generateJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 121
    .local v0, "_log":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/openfeint/internal/analytics/AnalyticsManager;->store(Ljava/lang/String;)V

    .line 122
    iget v2, p0, Lcom/openfeint/internal/analytics/AnalyticsManager;->count:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/openfeint/internal/analytics/AnalyticsManager;->count:I

    .line 123
    iget v2, p0, Lcom/openfeint/internal/analytics/AnalyticsManager;->count:I

    sget v3, Lcom/openfeint/internal/analytics/AnalyticsManager;->batch_num_trigger:I

    if-lt v2, v3, :cond_0

    .line 124
    iget-object v2, p0, Lcom/openfeint/internal/analytics/AnalyticsManager;->tag:Ljava/lang/String;

    const-string v3, "log batch upload triggered"

    invoke-static {v2, v3}, Lcom/openfeint/internal/logcat/OFLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    invoke-virtual {p0}, Lcom/openfeint/internal/analytics/AnalyticsManager;->upload()V

    .line 126
    const/4 v2, 0x0

    iput v2, p0, Lcom/openfeint/internal/analytics/AnalyticsManager;->count:I

    .line 128
    :cond_0
    return-object v0
.end method

.method public static setBatch_num_trigger(I)V
    .locals 0
    .param p0, "batch_num_trigger"    # I

    .prologue
    .line 246
    sput p0, Lcom/openfeint/internal/analytics/AnalyticsManager;->batch_num_trigger:I

    .line 247
    return-void
.end method


# virtual methods
.method public deleteLog(Ljava/lang/Long;)V
    .locals 3
    .param p1, "id"    # Ljava/lang/Long;

    .prologue
    .line 238
    iget-object v0, p0, Lcom/openfeint/internal/analytics/AnalyticsManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/openfeint/internal/analytics/db/AnalyticsDBManager;->instance(Landroid/content/Context;)Lcom/openfeint/internal/analytics/db/AnalyticsDBManager;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/openfeint/internal/analytics/db/AnalyticsDBManager;->removeLog(J)Z

    .line 239
    return-void
.end method

.method public deleteLog(Ljava/lang/Long;Ljava/lang/Long;)V
    .locals 5
    .param p1, "startid"    # Ljava/lang/Long;
    .param p2, "endid"    # Ljava/lang/Long;

    .prologue
    .line 242
    iget-object v0, p0, Lcom/openfeint/internal/analytics/AnalyticsManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/openfeint/internal/analytics/db/AnalyticsDBManager;->instance(Landroid/content/Context;)Lcom/openfeint/internal/analytics/db/AnalyticsDBManager;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/openfeint/internal/analytics/db/AnalyticsDBManager;->removeLog(JJ)Z

    .line 243
    return-void
.end method

.method public getInfo()Ljava/util/Map;
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
    .line 132
    iget-object v0, p0, Lcom/openfeint/internal/analytics/AnalyticsManager;->info:Ljava/util/Map;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/openfeint/internal/analytics/AnalyticsManager;->info:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 133
    :cond_0
    invoke-direct {p0}, Lcom/openfeint/internal/analytics/AnalyticsManager;->initInfo()V

    .line 134
    :cond_1
    iget-object v0, p0, Lcom/openfeint/internal/analytics/AnalyticsManager;->info:Ljava/util/Map;

    return-object v0
.end method

.method public makelog(Lcom/openfeint/internal/analytics/IAnalyticsLogger;Ljava/lang/String;)V
    .locals 3
    .param p1, "event"    # Lcom/openfeint/internal/analytics/IAnalyticsLogger;
    .param p2, "loggerTag"    # Ljava/lang/String;

    .prologue
    .line 92
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Log:\n"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/openfeint/internal/analytics/AnalyticsManager;->log_(Lcom/openfeint/internal/analytics/IAnalyticsLogger;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, v1}, Lcom/openfeint/internal/logcat/OFLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 96
    :goto_0
    return-void

    .line 93
    :catch_0
    move-exception v0

    .line 94
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "log save failed"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, v1}, Lcom/openfeint/internal/logcat/OFLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public makelog(Lcom/openfeint/internal/analytics/IAnalyticsLogger;Ljava/lang/String;I)V
    .locals 3
    .param p1, "event"    # Lcom/openfeint/internal/analytics/IAnalyticsLogger;
    .param p2, "loggerTag"    # Ljava/lang/String;
    .param p3, "level"    # I

    .prologue
    .line 100
    const/4 v1, 0x2

    if-ne p3, v1, :cond_1

    .line 101
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Log:\n"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/openfeint/internal/analytics/AnalyticsManager;->log_(Lcom/openfeint/internal/analytics/IAnalyticsLogger;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, v1}, Lcom/openfeint/internal/logcat/OFLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    :cond_0
    :goto_0
    return-void

    .line 103
    :cond_1
    const/4 v1, 0x3

    if-ne p3, v1, :cond_2

    .line 104
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Log:\n"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/openfeint/internal/analytics/AnalyticsManager;->log_(Lcom/openfeint/internal/analytics/IAnalyticsLogger;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, v1}, Lcom/openfeint/internal/logcat/OFLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 113
    :catch_0
    move-exception v0

    .line 114
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "log save failed"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, v1}, Lcom/openfeint/internal/logcat/OFLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 105
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_2
    const/4 v1, 0x4

    if-ne p3, v1, :cond_3

    .line 106
    :try_start_1
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Log:\n"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/openfeint/internal/analytics/AnalyticsManager;->log_(Lcom/openfeint/internal/analytics/IAnalyticsLogger;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, v1}, Lcom/openfeint/internal/logcat/OFLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 107
    :cond_3
    const/4 v1, 0x5

    if-ne p3, v1, :cond_4

    .line 108
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Log:\n"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/openfeint/internal/analytics/AnalyticsManager;->log_(Lcom/openfeint/internal/analytics/IAnalyticsLogger;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, v1}, Lcom/openfeint/internal/logcat/OFLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 110
    :cond_4
    const/4 v1, 0x6

    if-ne p3, v1, :cond_0

    .line 111
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Log:\n"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/openfeint/internal/analytics/AnalyticsManager;->log_(Lcom/openfeint/internal/analytics/IAnalyticsLogger;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, v1}, Lcom/openfeint/internal/logcat/OFLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public store(Ljava/lang/String;)V
    .locals 2
    .param p1, "eventJSON"    # Ljava/lang/String;

    .prologue
    .line 138
    if-nez p1, :cond_0

    .line 142
    :goto_0
    return-void

    .line 140
    :cond_0
    iget-object v1, p0, Lcom/openfeint/internal/analytics/AnalyticsManager;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/openfeint/internal/analytics/db/AnalyticsDBManager;->instance(Landroid/content/Context;)Lcom/openfeint/internal/analytics/db/AnalyticsDBManager;

    move-result-object v0

    .line 141
    .local v0, "manager":Lcom/openfeint/internal/analytics/db/AnalyticsDBManager;
    invoke-virtual {v0, p1}, Lcom/openfeint/internal/analytics/db/AnalyticsDBManager;->insertLog(Ljava/lang/String;)J

    goto :goto_0
.end method

.method public unlock()V
    .locals 1

    .prologue
    .line 254
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/openfeint/internal/analytics/AnalyticsManager;->waiting:Z

    .line 255
    return-void
.end method

.method public upload()V
    .locals 25

    .prologue
    .line 146
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/openfeint/internal/analytics/AnalyticsManager;->waiting:Z

    move/from16 v21, v0

    if-eqz v21, :cond_1

    .line 148
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/openfeint/internal/analytics/AnalyticsManager;->tag:Ljava/lang/String;

    move-object/from16 v21, v0

    const-string v22, "Waiting for response,skip upload this time"

    invoke-static/range {v21 .. v22}, Lcom/openfeint/internal/logcat/OFLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 235
    :cond_0
    :goto_0
    return-void

    .line 152
    :cond_1
    const/16 v21, 0x1

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/openfeint/internal/analytics/AnalyticsManager;->waiting:Z

    .line 153
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/openfeint/internal/analytics/AnalyticsManager;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/openfeint/internal/analytics/db/AnalyticsDBManager;->instance(Landroid/content/Context;)Lcom/openfeint/internal/analytics/db/AnalyticsDBManager;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lcom/openfeint/internal/analytics/db/AnalyticsDBManager;->getAllItems()Ljava/util/List;

    move-result-object v15

    .line 154
    .local v15, "readyLog":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;>;"
    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v12

    .line 155
    .local v12, "len":I
    const/16 v18, 0x0

    .line 156
    .local v18, "startid":Ljava/lang/Long;
    const/4 v8, 0x0

    .line 157
    .local v8, "endid":Ljava/lang/Long;
    invoke-interface {v15}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .line 158
    .local v11, "itor":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;>;"
    new-instance v3, Ljava/util/ArrayList;

    const/16 v21, 0x64

    move/from16 v0, v21

    invoke-direct {v3, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 159
    .local v3, "array":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;>;"
    const/4 v4, 0x0

    .line 160
    .local v4, "count":I
    :cond_2
    :goto_1
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-nez v21, :cond_3

    .line 218
    if-lez v12, :cond_0

    .line 220
    add-int/lit8 v21, v12, -0x1

    move/from16 v0, v21

    invoke-interface {v15, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/Map;

    .line 221
    .local v10, "item":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v21, "log_id"

    move-object/from16 v0, v21

    invoke-interface {v10, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    .end local v8    # "endid":Ljava/lang/Long;
    check-cast v8, Ljava/lang/Long;

    .line 222
    .restart local v8    # "endid":Ljava/lang/Long;
    new-instance v2, Lcom/openfeint/internal/request/OrderedArgList;

    invoke-direct {v2}, Lcom/openfeint/internal/request/OrderedArgList;-><init>()V

    .line 224
    .local v2, "arguments":Lcom/openfeint/internal/request/OrderedArgList;
    const-string v21, "event"

    invoke-static {v3}, Lcom/openfeint/internal/JsonCoder;->generateJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v2, v0, v1}, Lcom/openfeint/internal/request/OrderedArgList;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 225
    const-string v21, "info"

    invoke-virtual/range {p0 .. p0}, Lcom/openfeint/internal/analytics/AnalyticsManager;->getInfo()Ljava/util/Map;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Lcom/openfeint/internal/JsonCoder;->generateJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v2, v0, v1}, Lcom/openfeint/internal/request/OrderedArgList;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 228
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/openfeint/internal/analytics/AnalyticsManager;->tag:Ljava/lang/String;

    move-object/from16 v21, v0

    const-string v22, "try upload from %d to %d :"

    const/16 v23, 0x2

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    aput-object v18, v23, v24

    const/16 v24, 0x1

    aput-object v8, v23, v24

    invoke-static/range {v22 .. v23}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Lcom/openfeint/internal/logcat/OFLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 229
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/openfeint/internal/analytics/AnalyticsManager;->tag:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {p0 .. p0}, Lcom/openfeint/internal/analytics/AnalyticsManager;->getInfo()Ljava/util/Map;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Lcom/openfeint/internal/JsonCoder;->generateJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Lcom/openfeint/internal/logcat/OFLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 230
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/openfeint/internal/analytics/AnalyticsManager;->tag:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-static {v3}, Lcom/openfeint/internal/JsonCoder;->generateJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Lcom/openfeint/internal/logcat/OFLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 232
    new-instance v16, Lcom/openfeint/internal/analytics/internal/AnalyticsRequest;

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-direct {v0, v1, v8, v2}, Lcom/openfeint/internal/analytics/internal/AnalyticsRequest;-><init>(Ljava/lang/Long;Ljava/lang/Long;Lcom/openfeint/internal/request/OrderedArgList;)V

    .line 233
    .local v16, "req":Lcom/openfeint/internal/analytics/internal/AnalyticsRequest;
    invoke-virtual/range {v16 .. v16}, Lcom/openfeint/internal/analytics/internal/AnalyticsRequest;->launch()V

    goto/16 :goto_0

    .line 162
    .end local v2    # "arguments":Lcom/openfeint/internal/request/OrderedArgList;
    .end local v10    # "item":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v16    # "req":Lcom/openfeint/internal/analytics/internal/AnalyticsRequest;
    :cond_3
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/Map;

    .line 163
    .restart local v10    # "item":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v21, "json"

    move-object/from16 v0, v21

    invoke-interface {v10, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    .line 164
    .local v13, "logJson":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/openfeint/internal/analytics/AnalyticsManager;->tag:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-static {v0, v13}, Lcom/openfeint/internal/logcat/OFLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/openfeint/internal/analytics/AnalyticsManager;->tag:Ljava/lang/String;

    move-object/from16 v21, v0

    const-string v22, "--------"

    invoke-static/range {v21 .. v22}, Lcom/openfeint/internal/logcat/OFLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    const-string v21, "log_time"

    move-object/from16 v0, v21

    invoke-interface {v10, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Long;

    .line 169
    .local v14, "logTime":Ljava/lang/Long;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v21

    invoke-virtual {v14}, Ljava/lang/Long;->longValue()J

    move-result-wide v23

    sub-long v21, v21, v23

    invoke-static/range {v21 .. v22}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    .line 170
    .local v5, "deltaMillis":Ljava/lang/Long;
    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v21

    move-wide/from16 v0, v21

    long-to-float v0, v0

    move/from16 v21, v0

    const/high16 v22, 0x447a0000    # 1000.0f

    div-float v21, v21, v22

    move/from16 v0, v21

    float-to-double v6, v0

    .line 172
    .local v6, "deltaSeconds":D
    invoke-static {v13}, Lcom/openfeint/internal/JsonCoder;->parse(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/util/Map;

    .line 177
    .local v17, "single":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface/range {v17 .. v17}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v21

    invoke-interface/range {v21 .. v21}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v21

    :cond_4
    :goto_2
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-nez v22, :cond_7

    .line 185
    move-object/from16 v0, v17

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 186
    add-int/lit8 v4, v4, 0x1

    .line 189
    const/16 v21, 0x1

    move/from16 v0, v21

    if-ne v4, v0, :cond_5

    .line 191
    const-string v21, "log_id"

    move-object/from16 v0, v21

    invoke-interface {v10, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    .end local v18    # "startid":Ljava/lang/Long;
    check-cast v18, Ljava/lang/Long;

    .line 193
    .restart local v18    # "startid":Ljava/lang/Long;
    :cond_5
    const/16 v21, 0x64

    move/from16 v0, v21

    if-ne v4, v0, :cond_2

    .line 195
    const-string v21, "log_id"

    move-object/from16 v0, v21

    invoke-interface {v10, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    .end local v8    # "endid":Ljava/lang/Long;
    check-cast v8, Ljava/lang/Long;

    .line 196
    .restart local v8    # "endid":Ljava/lang/Long;
    new-instance v2, Lcom/openfeint/internal/request/OrderedArgList;

    invoke-direct {v2}, Lcom/openfeint/internal/request/OrderedArgList;-><init>()V

    .line 199
    .restart local v2    # "arguments":Lcom/openfeint/internal/request/OrderedArgList;
    const-string v21, "event"

    invoke-static {v3}, Lcom/openfeint/internal/JsonCoder;->generateJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v2, v0, v1}, Lcom/openfeint/internal/request/OrderedArgList;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 200
    const-string v21, "info"

    invoke-virtual/range {p0 .. p0}, Lcom/openfeint/internal/analytics/AnalyticsManager;->getInfo()Ljava/util/Map;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Lcom/openfeint/internal/JsonCoder;->generateJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v2, v0, v1}, Lcom/openfeint/internal/request/OrderedArgList;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 203
    const/16 v21, 0x3

    invoke-static/range {v21 .. v21}, Lcom/openfeint/internal/logcat/OFLog;->willLog(I)Z

    move-result v21

    if-eqz v21, :cond_6

    .line 204
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/openfeint/internal/analytics/AnalyticsManager;->tag:Ljava/lang/String;

    move-object/from16 v21, v0

    const-string v22, "try upload from %d to %d :"

    const/16 v23, 0x2

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    aput-object v18, v23, v24

    const/16 v24, 0x1

    aput-object v8, v23, v24

    invoke-static/range {v22 .. v23}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Lcom/openfeint/internal/logcat/OFLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 205
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/openfeint/internal/analytics/AnalyticsManager;->tag:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {p0 .. p0}, Lcom/openfeint/internal/analytics/AnalyticsManager;->getInfo()Ljava/util/Map;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Lcom/openfeint/internal/JsonCoder;->generateJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Lcom/openfeint/internal/logcat/OFLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/openfeint/internal/analytics/AnalyticsManager;->tag:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-static {v3}, Lcom/openfeint/internal/JsonCoder;->generateJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Lcom/openfeint/internal/logcat/OFLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 209
    :cond_6
    new-instance v16, Lcom/openfeint/internal/analytics/internal/AnalyticsRequest;

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-direct {v0, v1, v8, v2}, Lcom/openfeint/internal/analytics/internal/AnalyticsRequest;-><init>(Ljava/lang/Long;Ljava/lang/Long;Lcom/openfeint/internal/request/OrderedArgList;)V

    .line 210
    .restart local v16    # "req":Lcom/openfeint/internal/analytics/internal/AnalyticsRequest;
    invoke-virtual/range {v16 .. v16}, Lcom/openfeint/internal/analytics/internal/AnalyticsRequest;->launch()V

    .line 213
    new-instance v3, Ljava/util/ArrayList;

    .end local v3    # "array":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;>;"
    const/16 v21, 0x64

    move/from16 v0, v21

    invoke-direct {v3, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 214
    .restart local v3    # "array":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;>;"
    const/4 v4, 0x0

    goto/16 :goto_1

    .line 177
    .end local v2    # "arguments":Lcom/openfeint/internal/request/OrderedArgList;
    .end local v16    # "req":Lcom/openfeint/internal/analytics/internal/AnalyticsRequest;
    :cond_7
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/String;

    .line 178
    .local v19, "wrapperKey":Ljava/lang/String;
    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/util/Map;

    .line 179
    .local v20, "wrapperObject":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v22, "event"

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Map;

    .line 180
    .local v9, "event":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    if-eqz v9, :cond_4

    .line 181
    const-string v22, "time_delta"

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v23

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-interface {v9, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2
.end method
