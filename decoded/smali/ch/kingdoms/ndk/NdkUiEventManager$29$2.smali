.class Lch/kingdoms/ndk/NdkUiEventManager$29$2;
.super Ljava/lang/Object;
.source "NdkUiEventManager.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lch/kingdoms/ndk/NdkUiEventManager$29;->onResult(Lch/android/api/network/ChResultPacket;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private isClicked:Z

.field final synthetic this$1:Lch/kingdoms/ndk/NdkUiEventManager$29;


# direct methods
.method constructor <init>(Lch/kingdoms/ndk/NdkUiEventManager$29;)V
    .locals 1

    .prologue
    .line 1
    iput-object p1, p0, Lch/kingdoms/ndk/NdkUiEventManager$29$2;->this$1:Lch/kingdoms/ndk/NdkUiEventManager$29;

    .line 843
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 844
    const/4 v0, 0x0

    iput-boolean v0, p0, Lch/kingdoms/ndk/NdkUiEventManager$29$2;->isClicked:Z

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 848
    iget-boolean v0, p0, Lch/kingdoms/ndk/NdkUiEventManager$29$2;->isClicked:Z

    if-nez v0, :cond_0

    .line 849
    const/4 v0, 0x1

    iput-boolean v0, p0, Lch/kingdoms/ndk/NdkUiEventManager$29$2;->isClicked:Z

    .line 850
    invoke-static {}, Lch/android/api/ui/ChViewGen;->closePopUpView()V

    .line 852
    :cond_0
    return-void
.end method
