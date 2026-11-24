.class Lch/kingdoms/android/ui/NewInvenUi$InvenAndInfoView$4;
.super Ljava/lang/Object;
.source "NewInvenUi.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lch/kingdoms/android/ui/NewInvenUi$InvenAndInfoView;->useSocketReset(Lch/kingdoms/ndk/data/Inven$Item;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lch/kingdoms/android/ui/NewInvenUi$InvenAndInfoView;

.field private final synthetic val$invenView:Lch/android/api/ui/ChInvenView;

.field private final synthetic val$layerLevel:I


# direct methods
.method constructor <init>(Lch/kingdoms/android/ui/NewInvenUi$InvenAndInfoView;ILch/android/api/ui/ChInvenView;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lch/kingdoms/android/ui/NewInvenUi$InvenAndInfoView$4;->this$1:Lch/kingdoms/android/ui/NewInvenUi$InvenAndInfoView;

    iput p2, p0, Lch/kingdoms/android/ui/NewInvenUi$InvenAndInfoView$4;->val$layerLevel:I

    iput-object p3, p0, Lch/kingdoms/android/ui/NewInvenUi$InvenAndInfoView$4;->val$invenView:Lch/android/api/ui/ChInvenView;

    .line 534
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lch/kingdoms/android/ui/NewInvenUi$InvenAndInfoView$4;)Lch/kingdoms/android/ui/NewInvenUi$InvenAndInfoView;
    .locals 1

    .prologue
    .line 534
    iget-object v0, p0, Lch/kingdoms/android/ui/NewInvenUi$InvenAndInfoView$4;->this$1:Lch/kingdoms/android/ui/NewInvenUi$InvenAndInfoView;

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 538
    iget v3, p0, Lch/kingdoms/android/ui/NewInvenUi$InvenAndInfoView$4;->val$layerLevel:I

    invoke-static {}, Lch/android/api/ui/ChViewGen;->getEventLayerLevel()I

    move-result v4

    if-ne v3, v4, :cond_0

    .line 539
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    .line 540
    .local v1, "index":I
    iget-object v3, p0, Lch/kingdoms/android/ui/NewInvenUi$InvenAndInfoView$4;->val$invenView:Lch/android/api/ui/ChInvenView;

    invoke-virtual {v3, v1}, Lch/android/api/ui/ChInvenView;->setToSelect(I)V

    .line 541
    iget-object v3, p0, Lch/kingdoms/android/ui/NewInvenUi$InvenAndInfoView$4;->val$invenView:Lch/android/api/ui/ChInvenView;

    invoke-virtual {v3, v1}, Lch/android/api/ui/ChInvenView;->getFilteredItemInvenIndex(I)I

    move-result v0

    .line 542
    .local v0, "absoluteIndex":I
    move-object v2, p0

    .line 543
    .local v2, "invenOnClickListener":Landroid/view/View$OnClickListener;
    iget-object v3, p0, Lch/kingdoms/android/ui/NewInvenUi$InvenAndInfoView$4;->this$1:Lch/kingdoms/android/ui/NewInvenUi$InvenAndInfoView;

    invoke-static {v3}, Lch/kingdoms/android/ui/NewInvenUi$InvenAndInfoView;->access$5(Lch/kingdoms/android/ui/NewInvenUi$InvenAndInfoView;)Lch/kingdoms/android/ui/NewInvenUi;

    move-result-object v3

    invoke-static {v3}, Lch/kingdoms/android/ui/NewInvenUi;->access$0(Lch/kingdoms/android/ui/NewInvenUi;)Landroid/app/Activity;

    move-result-object v3

    const/16 v4, 0x82

    invoke-static {v4}, Lch/kingdoms/ndk/NdkTextLoader;->getGameMenuTxt(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lch/kingdoms/android/ui/NewInvenUi$InvenAndInfoView$4$1;

    iget-object v6, p0, Lch/kingdoms/android/ui/NewInvenUi$InvenAndInfoView$4;->val$invenView:Lch/android/api/ui/ChInvenView;

    invoke-direct {v5, p0, v0, v6, v2}, Lch/kingdoms/android/ui/NewInvenUi$InvenAndInfoView$4$1;-><init>(Lch/kingdoms/android/ui/NewInvenUi$InvenAndInfoView$4;ILch/android/api/ui/ChInvenView;Landroid/view/View$OnClickListener;)V

    invoke-static {v3, v4, v5}, Lch/android/api/ui/ChViewGen;->popUpConfirmYesNoView(Landroid/app/Activity;Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;)Landroid/view/View;

    .line 580
    .end local v0    # "absoluteIndex":I
    .end local v1    # "index":I
    .end local v2    # "invenOnClickListener":Landroid/view/View$OnClickListener;
    :cond_0
    return-void
.end method
