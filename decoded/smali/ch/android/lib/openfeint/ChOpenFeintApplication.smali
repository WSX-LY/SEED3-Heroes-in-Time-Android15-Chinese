.class public Lch/android/lib/openfeint/ChOpenFeintApplication;
.super Landroid/app/Application;
.source "ChOpenFeintApplication.java"


# static fields
.field public static achievements:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/openfeint/api/resource/Achievement;",
            ">;"
        }
    .end annotation
.end field

.field public static leaderboards:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/openfeint/api/resource/Leaderboard;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final appName:Ljava/lang/String;

.field private final id:Ljava/lang/String;

.field private final key:Ljava/lang/String;

.field private final secret:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 22
    sput-object v0, Lch/android/lib/openfeint/ChOpenFeintApplication;->achievements:Ljava/util/List;

    .line 23
    sput-object v0, Lch/android/lib/openfeint/ChOpenFeintApplication;->leaderboards:Ljava/util/List;

    .line 21
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    .line 25
    const-string v0, "Seed3"

    iput-object v0, p0, Lch/android/lib/openfeint/ChOpenFeintApplication;->appName:Ljava/lang/String;

    .line 26
    const-string v0, "8Um0C2ddwWAwKscM9z70qQ"

    iput-object v0, p0, Lch/android/lib/openfeint/ChOpenFeintApplication;->key:Ljava/lang/String;

    .line 27
    const-string v0, "eTt45KFKaFVwfpQp1dceGLgFwwNxf1DcMl75sjQbs"

    iput-object v0, p0, Lch/android/lib/openfeint/ChOpenFeintApplication;->secret:Ljava/lang/String;

    .line 28
    const-string v0, "471213"

    iput-object v0, p0, Lch/android/lib/openfeint/ChOpenFeintApplication;->id:Ljava/lang/String;

    .line 21
    return-void
.end method


# virtual methods
.method public onCreate()V
    .locals 6

    .prologue
    .line 33
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 35
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 36
    .local v5, "options":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v1, "RequestedOrientation"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v5, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    new-instance v0, Lcom/openfeint/api/OpenFeintSettings;

    const-string v1, "Seed3"

    const-string v2, "8Um0C2ddwWAwKscM9z70qQ"

    const-string v3, "eTt45KFKaFVwfpQp1dceGLgFwwNxf1DcMl75sjQbs"

    const-string v4, "471213"

    invoke-direct/range {v0 .. v5}, Lcom/openfeint/api/OpenFeintSettings;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 40
    .local v0, "settings":Lcom/openfeint/api/OpenFeintSettings;
    new-instance v1, Lch/android/lib/openfeint/ChOpenFeintApplication$1;

    invoke-direct {v1, p0}, Lch/android/lib/openfeint/ChOpenFeintApplication$1;-><init>(Lch/android/lib/openfeint/ChOpenFeintApplication;)V

    invoke-static {p0, v0, v1}, Lcom/openfeint/api/OpenFeint;->initialize(Landroid/content/Context;Lcom/openfeint/api/OpenFeintSettings;Lcom/openfeint/api/OpenFeintDelegate;)V

    .line 45
    new-instance v1, Lch/android/lib/openfeint/ChOpenFeintApplication$2;

    invoke-direct {v1, p0}, Lch/android/lib/openfeint/ChOpenFeintApplication$2;-><init>(Lch/android/lib/openfeint/ChOpenFeintApplication;)V

    invoke-static {v1}, Lcom/openfeint/api/resource/Achievement;->list(Lcom/openfeint/api/resource/Achievement$ListCB;)V

    .line 51
    new-instance v1, Lch/android/lib/openfeint/ChOpenFeintApplication$3;

    invoke-direct {v1, p0}, Lch/android/lib/openfeint/ChOpenFeintApplication$3;-><init>(Lch/android/lib/openfeint/ChOpenFeintApplication;)V

    invoke-static {v1}, Lcom/openfeint/api/resource/Leaderboard;->list(Lcom/openfeint/api/resource/Leaderboard$ListCB;)V

    .line 56
    return-void
.end method
