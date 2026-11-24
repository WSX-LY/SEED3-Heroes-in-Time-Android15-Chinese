.class Lch/kingdoms/ndk/NdkUiEventManager$53$1;
.super Ljava/lang/Object;
.source "NdkUiEventManager.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lch/kingdoms/ndk/NdkUiEventManager$53;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field isClick:Z

.field final synthetic this$1:Lch/kingdoms/ndk/NdkUiEventManager$53;


# direct methods
.method constructor <init>(Lch/kingdoms/ndk/NdkUiEventManager$53;)V
    .locals 1

    .prologue
    .line 1
    iput-object p1, p0, Lch/kingdoms/ndk/NdkUiEventManager$53$1;->this$1:Lch/kingdoms/ndk/NdkUiEventManager$53;

    .line 1462
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1463
    const/4 v0, 0x0

    iput-boolean v0, p0, Lch/kingdoms/ndk/NdkUiEventManager$53$1;->isClick:Z

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 1467
    iget-boolean v0, p0, Lch/kingdoms/ndk/NdkUiEventManager$53$1;->isClick:Z

    if-nez v0, :cond_0

    .line 1468
    const/4 v0, 0x1

    iput-boolean v0, p0, Lch/kingdoms/ndk/NdkUiEventManager$53$1;->isClick:Z

    .line 1469
    invoke-static {}, Lch/android/api/ui/ChViewGen;->closePopUpView()V

    .line 1470
    const/4 v0, 0x0

    invoke-static {v0}, Lch/kingdoms/ndk/NdkUiEventManager;->access$23(Lch/android/api/ui/ChDungeonResultView;)V

    .line 1471
    invoke-static {}, Lch/kingdoms/ndk/NdkUiEventManager;->endShowDungeonReward()V

    .line 1473
    :cond_0
    return-void
.end method
