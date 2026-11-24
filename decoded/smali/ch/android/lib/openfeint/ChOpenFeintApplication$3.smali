.class Lch/android/lib/openfeint/ChOpenFeintApplication$3;
.super Lcom/openfeint/api/resource/Leaderboard$ListCB;
.source "ChOpenFeintApplication.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lch/android/lib/openfeint/ChOpenFeintApplication;->onCreate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lch/android/lib/openfeint/ChOpenFeintApplication;


# direct methods
.method constructor <init>(Lch/android/lib/openfeint/ChOpenFeintApplication;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lch/android/lib/openfeint/ChOpenFeintApplication$3;->this$0:Lch/android/lib/openfeint/ChOpenFeintApplication;

    .line 51
    invoke-direct {p0}, Lcom/openfeint/api/resource/Leaderboard$ListCB;-><init>()V

    return-void
.end method


# virtual methods
.method public onSuccess(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/openfeint/api/resource/Leaderboard;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 53
    .local p1, "_leaderboards":Ljava/util/List;, "Ljava/util/List<Lcom/openfeint/api/resource/Leaderboard;>;"
    sput-object p1, Lch/android/lib/openfeint/ChOpenFeintApplication;->leaderboards:Ljava/util/List;

    .line 54
    return-void
.end method
