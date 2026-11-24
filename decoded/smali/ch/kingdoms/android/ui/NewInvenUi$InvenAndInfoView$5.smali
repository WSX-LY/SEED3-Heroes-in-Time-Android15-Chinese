.class Lch/kingdoms/android/ui/NewInvenUi$InvenAndInfoView$5;
.super Ljava/lang/Object;
.source "NewInvenUi.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lch/kingdoms/android/ui/NewInvenUi$InvenAndInfoView;->useSocketOpen(Lch/kingdoms/ndk/data/Inven$Item;)V
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
    iput-object p1, p0, Lch/kingdoms/android/ui/NewInvenUi$InvenAndInfoView$5;->this$1:Lch/kingdoms/android/ui/NewInvenUi$InvenAndInfoView;

    iput p2, p0, Lch/kingdoms/android/ui/NewInvenUi$InvenAndInfoView$5;->val$layerLevel:I

    iput-object p3, p0, Lch/kingdoms/android/ui/NewInvenUi$InvenAndInfoView$5;->val$invenView:Lch/android/api/ui/ChInvenView;

    .line 604
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 8
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 608
    iget v4, p0, Lch/kingdoms/android/ui/NewInvenUi$InvenAndInfoView$5;->val$layerLevel:I

    invoke-static {}, Lch/android/api/ui/ChViewGen;->getEventLayerLevel()I

    move-result v5

    if-ne v4, v5, :cond_0

    .line 609
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    .line 610
    .local v1, "index":I
    iget-object v4, p0, Lch/kingdoms/android/ui/NewInvenUi$InvenAndInfoView$5;->val$invenView:Lch/android/api/ui/ChInvenView;

    invoke-virtual {v4, v1}, Lch/android/api/ui/ChInvenView;->setToSelect(I)V

    .line 611
    iget-object v4, p0, Lch/kingdoms/android/ui/NewInvenUi$InvenAndInfoView$5;->val$invenView:Lch/android/api/ui/ChInvenView;

    invoke-virtual {v4, v1}, Lch/android/api/ui/ChInvenView;->getFilteredItemInvenIndex(I)I

    move-result v0

    .line 612
    .local v0, "absoluteIndex":I
    invoke-static {v0}, Lch/kingdoms/ndk/NdkUiEventManager;->useSocketOpen(I)Z

    move-result v3

    .line 613
    .local v3, "result":Z
    invoke-static {}, Lch/kingdoms/ndk/NdkUiEventManager;->isSocketOpenable()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 614
    iget-object v4, p0, Lch/kingdoms/android/ui/NewInvenUi$InvenAndInfoView$5;->this$1:Lch/kingdoms/android/ui/NewInvenUi$InvenAndInfoView;

    invoke-virtual {v4}, Lch/kingdoms/android/ui/NewInvenUi$InvenAndInfoView;->refreshInven()V

    .line 615
    iget-object v4, p0, Lch/kingdoms/android/ui/NewInvenUi$InvenAndInfoView$5;->val$invenView:Lch/android/api/ui/ChInvenView;

    iget-object v5, p0, Lch/kingdoms/android/ui/NewInvenUi$InvenAndInfoView$5;->this$1:Lch/kingdoms/android/ui/NewInvenUi$InvenAndInfoView;

    invoke-static {v5}, Lch/kingdoms/android/ui/NewInvenUi$InvenAndInfoView;->access$1(Lch/kingdoms/android/ui/NewInvenUi$InvenAndInfoView;)[Lch/kingdoms/ndk/data/Inven$Item;

    move-result-object v5

    invoke-virtual {v4, v5}, Lch/android/api/ui/ChInvenView;->update([Lch/kingdoms/ndk/data/Inven$Item;)Z

    .line 616
    iget-object v4, p0, Lch/kingdoms/android/ui/NewInvenUi$InvenAndInfoView$5;->val$invenView:Lch/android/api/ui/ChInvenView;

    invoke-virtual {v4, p0}, Lch/android/api/ui/ChInvenView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 622
    :goto_0
    if-eqz v3, :cond_0

    .line 624
    new-instance v2, Lch/android/api/ui/ChPopUpItemInfoView;

    iget-object v4, p0, Lch/kingdoms/android/ui/NewInvenUi$InvenAndInfoView$5;->this$1:Lch/kingdoms/android/ui/NewInvenUi$InvenAndInfoView;

    invoke-virtual {v4}, Lch/kingdoms/android/ui/NewInvenUi$InvenAndInfoView;->getContext()Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lch/kingdoms/android/ui/NewInvenUi$InvenAndInfoView$5;->this$1:Lch/kingdoms/android/ui/NewInvenUi$InvenAndInfoView;

    invoke-static {v5}, Lch/kingdoms/android/ui/NewInvenUi$InvenAndInfoView;->access$1(Lch/kingdoms/android/ui/NewInvenUi$InvenAndInfoView;)[Lch/kingdoms/ndk/data/Inven$Item;

    move-result-object v5

    aget-object v5, v5, v0

    iget-object v6, p0, Lch/kingdoms/android/ui/NewInvenUi$InvenAndInfoView$5;->this$1:Lch/kingdoms/android/ui/NewInvenUi$InvenAndInfoView;

    invoke-static {v6}, Lch/kingdoms/android/ui/NewInvenUi$InvenAndInfoView;->access$5(Lch/kingdoms/android/ui/NewInvenUi$InvenAndInfoView;)Lch/kingdoms/android/ui/NewInvenUi;

    move-result-object v6

    invoke-static {v6}, Lch/kingdoms/android/ui/NewInvenUi;->access$1(Lch/kingdoms/android/ui/NewInvenUi;)Lch/android/api/util/DisplayInfo;

    move-result-object v6

    const/4 v7, 0x1

    invoke-direct {v2, v4, v5, v6, v7}, Lch/android/api/ui/ChPopUpItemInfoView;-><init>(Landroid/content/Context;Lch/kingdoms/ndk/data/Inven$Item;Lch/android/api/util/DisplayInfo;Z)V

    .line 625
    .local v2, "popUpItemInfoView":Lch/android/api/ui/ChPopUpItemInfoView;
    iget-object v4, p0, Lch/kingdoms/android/ui/NewInvenUi$InvenAndInfoView$5;->this$1:Lch/kingdoms/android/ui/NewInvenUi$InvenAndInfoView;

    invoke-static {v4}, Lch/kingdoms/android/ui/NewInvenUi$InvenAndInfoView;->access$5(Lch/kingdoms/android/ui/NewInvenUi$InvenAndInfoView;)Lch/kingdoms/android/ui/NewInvenUi;

    move-result-object v4

    invoke-static {v4}, Lch/kingdoms/android/ui/NewInvenUi;->access$0(Lch/kingdoms/android/ui/NewInvenUi;)Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4, v2}, Lch/android/api/ui/ChViewGen;->popUp(Landroid/app/Activity;Landroid/view/View;)Landroid/view/View;

    .line 626
    new-instance v4, Lch/kingdoms/android/ui/NewInvenUi$InvenAndInfoView$5$1;

    invoke-direct {v4, p0}, Lch/kingdoms/android/ui/NewInvenUi$InvenAndInfoView$5$1;-><init>(Lch/kingdoms/android/ui/NewInvenUi$InvenAndInfoView$5;)V

    invoke-virtual {v2, v4}, Lch/android/api/ui/ChPopUpItemInfoView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 639
    .end local v0    # "absoluteIndex":I
    .end local v1    # "index":I
    .end local v2    # "popUpItemInfoView":Lch/android/api/ui/ChPopUpItemInfoView;
    .end local v3    # "result":Z
    :cond_0
    return-void

    .line 619
    .restart local v0    # "absoluteIndex":I
    .restart local v1    # "index":I
    .restart local v3    # "result":Z
    :cond_1
    iget-object v4, p0, Lch/kingdoms/android/ui/NewInvenUi$InvenAndInfoView$5;->this$1:Lch/kingdoms/android/ui/NewInvenUi$InvenAndInfoView;

    invoke-static {v4}, Lch/kingdoms/android/ui/NewInvenUi$InvenAndInfoView;->access$5(Lch/kingdoms/android/ui/NewInvenUi$InvenAndInfoView;)Lch/kingdoms/android/ui/NewInvenUi;

    move-result-object v4

    invoke-static {v4}, Lch/kingdoms/android/ui/NewInvenUi;->access$0(Lch/kingdoms/android/ui/NewInvenUi;)Landroid/app/Activity;

    move-result-object v4

    const/16 v5, 0x81

    invoke-static {v5}, Lch/kingdoms/ndk/NdkTextLoader;->getGameMenuTxt(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lch/android/api/ui/ChViewGen;->popUpOkView(Landroid/app/Activity;Ljava/lang/String;)Landroid/view/View;

    .line 620
    iget-object v4, p0, Lch/kingdoms/android/ui/NewInvenUi$InvenAndInfoView$5;->this$1:Lch/kingdoms/android/ui/NewInvenUi$InvenAndInfoView;

    invoke-virtual {v4}, Lch/kingdoms/android/ui/NewInvenUi$InvenAndInfoView;->refreshInven()V

    goto :goto_0
.end method
