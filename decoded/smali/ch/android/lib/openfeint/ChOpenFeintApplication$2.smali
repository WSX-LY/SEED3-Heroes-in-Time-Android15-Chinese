.class Lch/android/lib/openfeint/ChOpenFeintApplication$2;
.super Lcom/openfeint/api/resource/Achievement$ListCB;
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
    iput-object p1, p0, Lch/android/lib/openfeint/ChOpenFeintApplication$2;->this$0:Lch/android/lib/openfeint/ChOpenFeintApplication;

    .line 45
    invoke-direct {p0}, Lcom/openfeint/api/resource/Achievement$ListCB;-><init>()V

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
            "Lcom/openfeint/api/resource/Achievement;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 47
    .local p1, "_achievements":Ljava/util/List;, "Ljava/util/List<Lcom/openfeint/api/resource/Achievement;>;"
    sput-object p1, Lch/android/lib/openfeint/ChOpenFeintApplication;->achievements:Ljava/util/List;

    .line 48
    return-void
.end method
