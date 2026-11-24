.class Lch/kingdoms/android/ui/MainStateUi$1;
.super Ljava/lang/Object;
.source "MainStateUi.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lch/kingdoms/android/ui/MainStateUi;->showTownPortalUi(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$activity:Landroid/app/Activity;

.field private final synthetic val$di:Lch/android/api/util/DisplayInfo;

.field private final synthetic val$layerLevel:I


# direct methods
.method constructor <init>(ILandroid/app/Activity;Lch/android/api/util/DisplayInfo;)V
    .locals 0

    .prologue
    .line 1
    iput p1, p0, Lch/kingdoms/android/ui/MainStateUi$1;->val$layerLevel:I

    iput-object p2, p0, Lch/kingdoms/android/ui/MainStateUi$1;->val$activity:Landroid/app/Activity;

    iput-object p3, p0, Lch/kingdoms/android/ui/MainStateUi$1;->val$di:Lch/android/api/util/DisplayInfo;

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 45
    iget v2, p0, Lch/kingdoms/android/ui/MainStateUi$1;->val$layerLevel:I

    invoke-static {}, Lch/android/api/ui/ChViewGen;->getEventLayerLevel()I

    move-result v3

    if-ne v2, v3, :cond_0

    .line 46
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 47
    .local v0, "id":I
    const/16 v2, 0x64

    if-ne v0, v2, :cond_1

    .line 48
    invoke-static {}, Lch/kingdoms/ndk/NdkUiEventManager;->setTownPortal()V

    .line 49
    iget-object v2, p0, Lch/kingdoms/android/ui/MainStateUi$1;->val$activity:Landroid/app/Activity;

    invoke-static {v2}, Lch/kingdoms/android/ui/MainStateUi;->access$0(Landroid/app/Activity;)V

    .line 73
    .end local v0    # "id":I
    :cond_0
    :goto_0
    return-void

    .line 51
    .restart local v0    # "id":I
    :cond_1
    invoke-static {}, Lch/kingdoms/ndk/NdkUiEventManager;->setSecondPlay()V

    .line 52
    invoke-static {}, Lch/android/api/ui/ChViewGen;->getEventLayerLevel()I

    move-result v2

    add-int/lit8 v1, v2, 0x1

    .line 53
    .local v1, "layerLevel":I
    iget-object v2, p0, Lch/kingdoms/android/ui/MainStateUi$1;->val$activity:Landroid/app/Activity;

    const/16 v3, 0xbb

    invoke-static {v3}, Lch/kingdoms/ndk/NdkTextLoader;->getGameMenuTxt(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lch/kingdoms/android/ui/MainStateUi$1$1;

    invoke-direct {v4, p0, v1}, Lch/kingdoms/android/ui/MainStateUi$1$1;-><init>(Lch/kingdoms/android/ui/MainStateUi$1;I)V

    invoke-static {v2, v3, v4}, Lch/android/api/ui/ChViewGen;->popUpConfirmYesNoView(Landroid/app/Activity;Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;)Landroid/view/View;

    .line 70
    iget-object v2, p0, Lch/kingdoms/android/ui/MainStateUi$1;->val$activity:Landroid/app/Activity;

    iget-object v3, p0, Lch/kingdoms/android/ui/MainStateUi$1;->val$di:Lch/android/api/util/DisplayInfo;

    const/16 v4, 0xba

    invoke-static {v4}, Lch/kingdoms/ndk/NdkTextLoader;->getGameMenuTxt(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v2, v3, v4, v5}, Lch/android/api/ui/ChViewGen;->popUpGameTipView(Landroid/app/Activity;Lch/android/api/util/DisplayInfo;Ljava/lang/String;Z)Landroid/view/View;

    goto :goto_0
.end method
