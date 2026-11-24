.class public Lcom/openfeint/api/OpenFeintSettings;
.super Ljava/lang/Object;
.source "OpenFeintSettings.java"


# static fields
.field public static final CloudStorageCompressionStrategyDefault:Ljava/lang/String; = "CloudStorageCompressionStrategyDefault"

.field public static final CloudStorageCompressionStrategyLegacyHeaderlessCompression:Ljava/lang/String; = "CloudStorageCompressionStrategyLegacyHeaderlessCompression"

.field public static final CloudStorageCompressionStrategyNoCompression:Ljava/lang/String; = "CloudStorageCompressionStrategyNoCompression"

.field public static final RequestedOrientation:Ljava/lang/String; = "RequestedOrientation"

.field public static final SettingCloudStorageCompressionStrategy:Ljava/lang/String; = "SettingCloudStorageCompressionStrategy"

.field public static tag:Ljava/lang/String;


# instance fields
.field public id:Ljava/lang/String;

.field public key:Ljava/lang/String;

.field public name:Ljava/lang/String;

.field public secret:Ljava/lang/String;

.field public settings:Ljava/util/Map;
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


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    const-string v0, "OpenFeintSettings"

    sput-object v0, Lcom/openfeint/api/OpenFeintSettings;->tag:Ljava/lang/String;

    .line 16
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "_name"    # Ljava/lang/String;
    .param p2, "_key"    # Ljava/lang/String;
    .param p3, "_secret"    # Ljava/lang/String;
    .param p4, "_id"    # Ljava/lang/String;

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/openfeint/api/OpenFeintSettings;->name:Ljava/lang/String;

    .line 30
    iput-object p2, p0, Lcom/openfeint/api/OpenFeintSettings;->key:Ljava/lang/String;

    .line 31
    iput-object p3, p0, Lcom/openfeint/api/OpenFeintSettings;->secret:Ljava/lang/String;

    .line 32
    iput-object p4, p0, Lcom/openfeint/api/OpenFeintSettings;->id:Ljava/lang/String;

    .line 33
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/openfeint/api/OpenFeintSettings;->settings:Ljava/util/Map;

    .line 34
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 0
    .param p1, "_name"    # Ljava/lang/String;
    .param p2, "_key"    # Ljava/lang/String;
    .param p3, "_secret"    # Ljava/lang/String;
    .param p4, "_id"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 46
    .local p5, "_settings":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object p1, p0, Lcom/openfeint/api/OpenFeintSettings;->name:Ljava/lang/String;

    .line 48
    iput-object p2, p0, Lcom/openfeint/api/OpenFeintSettings;->key:Ljava/lang/String;

    .line 49
    iput-object p3, p0, Lcom/openfeint/api/OpenFeintSettings;->secret:Ljava/lang/String;

    .line 50
    iput-object p4, p0, Lcom/openfeint/api/OpenFeintSettings;->id:Ljava/lang/String;

    .line 51
    iput-object p5, p0, Lcom/openfeint/api/OpenFeintSettings;->settings:Ljava/util/Map;

    .line 52
    return-void
.end method


# virtual methods
.method public applyOverrides(Ljava/util/Properties;)V
    .locals 2
    .param p1, "settings"    # Ljava/util/Properties;

    .prologue
    .line 83
    if-nez p1, :cond_1

    .line 98
    :cond_0
    :goto_0
    return-void

    .line 87
    :cond_1
    const-string v1, "app-id"

    invoke-virtual {p1, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 88
    .local v0, "property":Ljava/lang/String;
    if-eqz v0, :cond_2

    iput-object v0, p0, Lcom/openfeint/api/OpenFeintSettings;->id:Ljava/lang/String;

    .line 90
    :cond_2
    const-string v1, "game-name"

    invoke-virtual {p1, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 91
    if-eqz v0, :cond_3

    iput-object v0, p0, Lcom/openfeint/api/OpenFeintSettings;->name:Ljava/lang/String;

    .line 93
    :cond_3
    const-string v1, "app-key"

    invoke-virtual {p1, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 94
    if-eqz v0, :cond_4

    iput-object v0, p0, Lcom/openfeint/api/OpenFeintSettings;->key:Ljava/lang/String;

    .line 96
    :cond_4
    const-string v1, "app-secret"

    invoke-virtual {p1, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 97
    if-eqz v0, :cond_0

    iput-object v0, p0, Lcom/openfeint/api/OpenFeintSettings;->secret:Ljava/lang/String;

    goto :goto_0
.end method

.method public verify()V
    .locals 2

    .prologue
    .line 101
    const/4 v0, 0x0

    .line 103
    .local v0, "verificationError":Ljava/lang/String;
    iget-object v1, p0, Lcom/openfeint/api/OpenFeintSettings;->key:Ljava/lang/String;

    if-nez v1, :cond_2

    .line 105
    const-string v1, "of_key_cannot_be_null"

    invoke-static {v1}, Lcom/openfeint/internal/RR;->string(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Lcom/openfeint/internal/OpenFeintInternal;->getRString(I)Ljava/lang/String;

    move-result-object v0

    .line 113
    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    .line 114
    sget-object v1, Lcom/openfeint/api/OpenFeintSettings;->tag:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/openfeint/internal/logcat/OFLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    invoke-static {}, Lcom/openfeint/internal/OpenFeintInternal;->getInstance()Lcom/openfeint/internal/OpenFeintInternal;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/openfeint/internal/OpenFeintInternal;->displayErrorDialog(Ljava/lang/CharSequence;)V

    .line 117
    :cond_1
    return-void

    .line 106
    :cond_2
    iget-object v1, p0, Lcom/openfeint/api/OpenFeintSettings;->secret:Ljava/lang/String;

    if-nez v1, :cond_3

    .line 107
    const-string v1, "of_secret_cannot_be_null"

    invoke-static {v1}, Lcom/openfeint/internal/RR;->string(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Lcom/openfeint/internal/OpenFeintInternal;->getRString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 108
    :cond_3
    iget-object v1, p0, Lcom/openfeint/api/OpenFeintSettings;->id:Ljava/lang/String;

    if-nez v1, :cond_4

    .line 109
    const-string v1, "of_id_cannot_be_null"

    invoke-static {v1}, Lcom/openfeint/internal/RR;->string(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Lcom/openfeint/internal/OpenFeintInternal;->getRString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 110
    :cond_4
    iget-object v1, p0, Lcom/openfeint/api/OpenFeintSettings;->name:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 111
    const-string v1, "of_name_cannot_be_null"

    invoke-static {v1}, Lcom/openfeint/internal/RR;->string(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Lcom/openfeint/internal/OpenFeintInternal;->getRString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
