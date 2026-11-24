.class Lch/kingdoms/ndk/NdkUiEventManager$22$1;
.super Ljava/lang/Object;
.source "NdkUiEventManager.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lch/kingdoms/ndk/NdkUiEventManager$22;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private isClicked:Z

.field final synthetic this$1:Lch/kingdoms/ndk/NdkUiEventManager$22;


# direct methods
.method constructor <init>(Lch/kingdoms/ndk/NdkUiEventManager$22;)V
    .locals 1

    .prologue
    .line 1
    iput-object p1, p0, Lch/kingdoms/ndk/NdkUiEventManager$22$1;->this$1:Lch/kingdoms/ndk/NdkUiEventManager$22;

    .line 677
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 678
    const/4 v0, 0x0

    iput-boolean v0, p0, Lch/kingdoms/ndk/NdkUiEventManager$22$1;->isClicked:Z

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 682
    iget-boolean v0, p0, Lch/kingdoms/ndk/NdkUiEventManager$22$1;->isClicked:Z

    if-nez v0, :cond_0

    .line 683
    const/4 v0, 0x1

    iput-boolean v0, p0, Lch/kingdoms/ndk/NdkUiEventManager$22$1;->isClicked:Z

    .line 684
    invoke-static {}, Lch/android/api/ui/ChViewGen;->closePopUpView()V

    .line 685
    invoke-static {}, Lch/kingdoms/ndk/NdkInputManager;->inputOk()V

    .line 687
    :cond_0
    return-void
.end method
