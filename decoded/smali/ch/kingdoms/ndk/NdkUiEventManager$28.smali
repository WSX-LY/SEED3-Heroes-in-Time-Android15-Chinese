.class Lch/kingdoms/ndk/NdkUiEventManager$28;
.super Ljava/lang/Object;
.source "NdkUiEventManager.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lch/kingdoms/ndk/NdkUiEventManager;->popUpRegisterId(Lch/android/api/ui/ChPopUpEditTextView;Lch/android/api/network/ChNetwork;Lch/kingdoms/android/network/ChPacketFactory;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private isClicked:Z


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 800
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 801
    const/4 v0, 0x0

    iput-boolean v0, p0, Lch/kingdoms/ndk/NdkUiEventManager$28;->isClicked:Z

    .line 1
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 805
    iget-boolean v0, p0, Lch/kingdoms/ndk/NdkUiEventManager$28;->isClicked:Z

    if-nez v0, :cond_0

    .line 806
    const/4 v0, 0x1

    iput-boolean v0, p0, Lch/kingdoms/ndk/NdkUiEventManager$28;->isClicked:Z

    .line 807
    invoke-static {}, Lch/android/api/ui/ChViewGen;->closePopUpView()V

    .line 809
    :cond_0
    return-void
.end method
