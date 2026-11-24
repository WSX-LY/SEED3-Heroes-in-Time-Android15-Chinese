.class Lch/kingdoms/android/ui/MainStateUi$1$1;
.super Ljava/lang/Object;
.source "MainStateUi.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lch/kingdoms/android/ui/MainStateUi$1;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lch/kingdoms/android/ui/MainStateUi$1;

.field private final synthetic val$layerLevel:I


# direct methods
.method constructor <init>(Lch/kingdoms/android/ui/MainStateUi$1;I)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lch/kingdoms/android/ui/MainStateUi$1$1;->this$1:Lch/kingdoms/android/ui/MainStateUi$1;

    iput p2, p0, Lch/kingdoms/android/ui/MainStateUi$1$1;->val$layerLevel:I

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 57
    iget v0, p0, Lch/kingdoms/android/ui/MainStateUi$1$1;->val$layerLevel:I

    invoke-static {}, Lch/android/api/ui/ChViewGen;->getEventLayerLevel()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 58
    invoke-static {}, Lch/android/api/ui/ChViewGen;->closePopUpView()V

    .line 59
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const/16 v1, 0x2742

    if-ne v0, v1, :cond_2

    .line 60
    invoke-static {}, Lch/kingdoms/ndk/NdkInputManager;->inputOk()V

    .line 61
    :goto_0
    invoke-static {}, Lch/android/api/ui/ChViewGen;->getEventLayerLevel()I

    move-result v0

    if-gtz v0, :cond_1

    .line 68
    :cond_0
    :goto_1
    return-void

    .line 62
    :cond_1
    invoke-static {}, Lch/android/api/ui/ChViewGen;->closePopUpView()V

    goto :goto_0

    .line 65
    :cond_2
    invoke-static {}, Lch/kingdoms/ndk/NdkInputManager;->inputCancel()V

    goto :goto_1
.end method
