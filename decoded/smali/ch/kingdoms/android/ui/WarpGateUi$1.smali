.class Lch/kingdoms/android/ui/WarpGateUi$1;
.super Ljava/lang/Object;
.source "WarpGateUi.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lch/kingdoms/android/ui/WarpGateUi;->popUp()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lch/kingdoms/android/ui/WarpGateUi;

.field private final synthetic val$warpGateNum:I


# direct methods
.method constructor <init>(Lch/kingdoms/android/ui/WarpGateUi;I)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lch/kingdoms/android/ui/WarpGateUi$1;->this$0:Lch/kingdoms/android/ui/WarpGateUi;

    iput p2, p0, Lch/kingdoms/android/ui/WarpGateUi$1;->val$warpGateNum:I

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 36
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 37
    .local v0, "index":I
    invoke-static {v0}, Lch/kingdoms/ndk/NdkUiEventManager;->isWarpGateUsable(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 39
    invoke-static {}, Lch/android/api/ui/ChViewGen;->closeAllPopUpViews()V

    .line 40
    iget v1, p0, Lch/kingdoms/android/ui/WarpGateUi$1;->val$warpGateNum:I

    if-ge v0, v1, :cond_0

    .end local v0    # "index":I
    :goto_0
    invoke-static {v0}, Lch/kingdoms/ndk/NdkUiEventManager;->useWarpGate(I)V

    .line 44
    :goto_1
    return-void

    .line 40
    .restart local v0    # "index":I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 42
    :cond_1
    iget-object v1, p0, Lch/kingdoms/android/ui/WarpGateUi$1;->this$0:Lch/kingdoms/android/ui/WarpGateUi;

    invoke-static {v1}, Lch/kingdoms/android/ui/WarpGateUi;->access$0(Lch/kingdoms/android/ui/WarpGateUi;)Landroid/app/Activity;

    move-result-object v1

    const/16 v2, 0xc6

    invoke-static {v2}, Lch/kingdoms/ndk/NdkTextLoader;->getGameMenuTxt(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lch/android/api/ui/ChViewGen;->popUpOkView(Landroid/app/Activity;Ljava/lang/String;)Landroid/view/View;

    goto :goto_1
.end method
