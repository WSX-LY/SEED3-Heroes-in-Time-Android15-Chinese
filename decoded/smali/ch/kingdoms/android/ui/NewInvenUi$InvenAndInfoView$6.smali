.class Lch/kingdoms/android/ui/NewInvenUi$InvenAndInfoView$6;
.super Ljava/lang/Object;
.source "NewInvenUi.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lch/kingdoms/android/ui/NewInvenUi$InvenAndInfoView;->useIdentity(Lch/kingdoms/ndk/data/Inven$Item;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lch/kingdoms/android/ui/NewInvenUi$InvenAndInfoView;

.field private final synthetic val$identityItem:Lch/kingdoms/ndk/data/Inven$Item;

.field private final synthetic val$invenView:Lch/android/api/ui/ChInvenView;

.field private final synthetic val$layerLevel:I


# direct methods
.method constructor <init>(Lch/kingdoms/android/ui/NewInvenUi$InvenAndInfoView;ILch/android/api/ui/ChInvenView;Lch/kingdoms/ndk/data/Inven$Item;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lch/kingdoms/android/ui/NewInvenUi$InvenAndInfoView$6;->this$1:Lch/kingdoms/android/ui/NewInvenUi$InvenAndInfoView;

    iput p2, p0, Lch/kingdoms/android/ui/NewInvenUi$InvenAndInfoView$6;->val$layerLevel:I

    iput-object p3, p0, Lch/kingdoms/android/ui/NewInvenUi$InvenAndInfoView$6;->val$invenView:Lch/android/api/ui/ChInvenView;

    iput-object p4, p0, Lch/kingdoms/android/ui/NewInvenUi$InvenAndInfoView$6;->val$identityItem:Lch/kingdoms/ndk/data/Inven$Item;

    .line 655
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lch/kingdoms/android/ui/NewInvenUi$InvenAndInfoView$6;)Lch/kingdoms/android/ui/NewInvenUi$InvenAndInfoView;
    .locals 1

    .prologue
    .line 655
    iget-object v0, p0, Lch/kingdoms/android/ui/NewInvenUi$InvenAndInfoView$6;->this$1:Lch/kingdoms/android/ui/NewInvenUi$InvenAndInfoView;

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 9
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 659
    iget v5, p0, Lch/kingdoms/android/ui/NewInvenUi$InvenAndInfoView$6;->val$layerLevel:I

    invoke-static {}, Lch/android/api/ui/ChViewGen;->getEventLayerLevel()I

    move-result v6

    if-ne v5, v6, :cond_0

    .line 660
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    .line 661
    .local v1, "index":I
    iget-object v5, p0, Lch/kingdoms/android/ui/NewInvenUi$InvenAndInfoView$6;->val$invenView:Lch/android/api/ui/ChInvenView;

    invoke-virtual {v5, v1}, Lch/android/api/ui/ChInvenView;->setToSelect(I)V

    .line 662
    iget-object v5, p0, Lch/kingdoms/android/ui/NewInvenUi$InvenAndInfoView$6;->val$invenView:Lch/android/api/ui/ChInvenView;

    invoke-virtual {v5, v1}, Lch/android/api/ui/ChInvenView;->getFilteredItemInvenIndex(I)I

    move-result v0

    .line 663
    .local v0, "absoluteIndex":I
    iget-object v5, p0, Lch/kingdoms/android/ui/NewInvenUi$InvenAndInfoView$6;->val$identityItem:Lch/kingdoms/ndk/data/Inven$Item;

    iget v5, v5, Lch/kingdoms/ndk/data/Inven$Item;->index:I

    invoke-static {v0, v5}, Lch/kingdoms/ndk/NdkUiEventManager;->identifyItem(II)Z

    move-result v4

    .line 664
    .local v4, "result":Z
    invoke-static {}, Lch/kingdoms/ndk/NdkUiEventManager;->isIdentityUsable()Z

    move-result v2

    .line 665
    .local v2, "isExistUnidentifiedItem":Z
    if-eqz v2, :cond_1

    .line 666
    iget-object v5, p0, Lch/kingdoms/android/ui/NewInvenUi$InvenAndInfoView$6;->this$1:Lch/kingdoms/android/ui/NewInvenUi$InvenAndInfoView;

    invoke-virtual {v5}, Lch/kingdoms/android/ui/NewInvenUi$InvenAndInfoView;->refreshInven()V

    .line 667
    iget-object v5, p0, Lch/kingdoms/android/ui/NewInvenUi$InvenAndInfoView$6;->this$1:Lch/kingdoms/android/ui/NewInvenUi$InvenAndInfoView;

    invoke-static {v5}, Lch/kingdoms/android/ui/NewInvenUi$InvenAndInfoView;->access$2(Lch/kingdoms/android/ui/NewInvenUi$InvenAndInfoView;)Lch/android/api/ui/ChInvenView;

    move-result-object v5

    iget-object v6, p0, Lch/kingdoms/android/ui/NewInvenUi$InvenAndInfoView$6;->this$1:Lch/kingdoms/android/ui/NewInvenUi$InvenAndInfoView;

    invoke-static {v6}, Lch/kingdoms/android/ui/NewInvenUi$InvenAndInfoView;->access$3(Lch/kingdoms/android/ui/NewInvenUi$InvenAndInfoView;)[S

    move-result-object v6

    iget-object v7, p0, Lch/kingdoms/android/ui/NewInvenUi$InvenAndInfoView$6;->this$1:Lch/kingdoms/android/ui/NewInvenUi$InvenAndInfoView;

    invoke-static {v7}, Lch/kingdoms/android/ui/NewInvenUi$InvenAndInfoView;->access$1(Lch/kingdoms/android/ui/NewInvenUi$InvenAndInfoView;)[Lch/kingdoms/ndk/data/Inven$Item;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lch/android/api/ui/ChInvenView;->update([S[Lch/kingdoms/ndk/data/Inven$Item;)Z

    .line 668
    iget-object v5, p0, Lch/kingdoms/android/ui/NewInvenUi$InvenAndInfoView$6;->this$1:Lch/kingdoms/android/ui/NewInvenUi$InvenAndInfoView;

    invoke-static {v5}, Lch/kingdoms/android/ui/NewInvenUi$InvenAndInfoView;->access$2(Lch/kingdoms/android/ui/NewInvenUi$InvenAndInfoView;)Lch/android/api/ui/ChInvenView;

    move-result-object v5

    iget-object v6, p0, Lch/kingdoms/android/ui/NewInvenUi$InvenAndInfoView$6;->this$1:Lch/kingdoms/android/ui/NewInvenUi$InvenAndInfoView;

    invoke-virtual {v5, v6}, Lch/android/api/ui/ChInvenView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 670
    iget-object v5, p0, Lch/kingdoms/android/ui/NewInvenUi$InvenAndInfoView$6;->val$invenView:Lch/android/api/ui/ChInvenView;

    iget-object v6, p0, Lch/kingdoms/android/ui/NewInvenUi$InvenAndInfoView$6;->this$1:Lch/kingdoms/android/ui/NewInvenUi$InvenAndInfoView;

    invoke-static {v6}, Lch/kingdoms/android/ui/NewInvenUi$InvenAndInfoView;->access$1(Lch/kingdoms/android/ui/NewInvenUi$InvenAndInfoView;)[Lch/kingdoms/ndk/data/Inven$Item;

    move-result-object v6

    invoke-virtual {v5, v6}, Lch/android/api/ui/ChInvenView;->update([Lch/kingdoms/ndk/data/Inven$Item;)Z

    .line 671
    iget-object v5, p0, Lch/kingdoms/android/ui/NewInvenUi$InvenAndInfoView$6;->val$invenView:Lch/android/api/ui/ChInvenView;

    invoke-virtual {v5, p0}, Lch/android/api/ui/ChInvenView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 677
    :goto_0
    if-eqz v4, :cond_0

    .line 679
    new-instance v3, Lch/android/api/ui/ChPopUpItemInfoView;

    iget-object v5, p0, Lch/kingdoms/android/ui/NewInvenUi$InvenAndInfoView$6;->this$1:Lch/kingdoms/android/ui/NewInvenUi$InvenAndInfoView;

    invoke-virtual {v5}, Lch/kingdoms/android/ui/NewInvenUi$InvenAndInfoView;->getContext()Landroid/content/Context;

    move-result-object v5

    iget-object v6, p0, Lch/kingdoms/android/ui/NewInvenUi$InvenAndInfoView$6;->this$1:Lch/kingdoms/android/ui/NewInvenUi$InvenAndInfoView;

    invoke-static {v6}, Lch/kingdoms/android/ui/NewInvenUi$InvenAndInfoView;->access$1(Lch/kingdoms/android/ui/NewInvenUi$InvenAndInfoView;)[Lch/kingdoms/ndk/data/Inven$Item;

    move-result-object v6

    aget-object v6, v6, v0

    iget-object v7, p0, Lch/kingdoms/android/ui/NewInvenUi$InvenAndInfoView$6;->this$1:Lch/kingdoms/android/ui/NewInvenUi$InvenAndInfoView;

    invoke-static {v7}, Lch/kingdoms/android/ui/NewInvenUi$InvenAndInfoView;->access$5(Lch/kingdoms/android/ui/NewInvenUi$InvenAndInfoView;)Lch/kingdoms/android/ui/NewInvenUi;

    move-result-object v7

    invoke-static {v7}, Lch/kingdoms/android/ui/NewInvenUi;->access$1(Lch/kingdoms/android/ui/NewInvenUi;)Lch/android/api/util/DisplayInfo;

    move-result-object v7

    const/4 v8, 0x1

    invoke-direct {v3, v5, v6, v7, v8}, Lch/android/api/ui/ChPopUpItemInfoView;-><init>(Landroid/content/Context;Lch/kingdoms/ndk/data/Inven$Item;Lch/android/api/util/DisplayInfo;Z)V

    .line 680
    .local v3, "popUpItemInfoView":Lch/android/api/ui/ChPopUpItemInfoView;
    iget-object v5, p0, Lch/kingdoms/android/ui/NewInvenUi$InvenAndInfoView$6;->this$1:Lch/kingdoms/android/ui/NewInvenUi$InvenAndInfoView;

    invoke-static {v5}, Lch/kingdoms/android/ui/NewInvenUi$InvenAndInfoView;->access$5(Lch/kingdoms/android/ui/NewInvenUi$InvenAndInfoView;)Lch/kingdoms/android/ui/NewInvenUi;

    move-result-object v5

    invoke-static {v5}, Lch/kingdoms/android/ui/NewInvenUi;->access$0(Lch/kingdoms/android/ui/NewInvenUi;)Landroid/app/Activity;

    move-result-object v5

    invoke-static {v5, v3}, Lch/android/api/ui/ChViewGen;->popUp(Landroid/app/Activity;Landroid/view/View;)Landroid/view/View;

    .line 681
    new-instance v5, Lch/kingdoms/android/ui/NewInvenUi$InvenAndInfoView$6$1;

    invoke-direct {v5, p0, v2}, Lch/kingdoms/android/ui/NewInvenUi$InvenAndInfoView$6$1;-><init>(Lch/kingdoms/android/ui/NewInvenUi$InvenAndInfoView$6;Z)V

    invoke-virtual {v3, v5}, Lch/android/api/ui/ChPopUpItemInfoView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 698
    .end local v0    # "absoluteIndex":I
    .end local v1    # "index":I
    .end local v2    # "isExistUnidentifiedItem":Z
    .end local v3    # "popUpItemInfoView":Lch/android/api/ui/ChPopUpItemInfoView;
    .end local v4    # "result":Z
    :cond_0
    return-void

    .line 673
    .restart local v0    # "absoluteIndex":I
    .restart local v1    # "index":I
    .restart local v2    # "isExistUnidentifiedItem":Z
    .restart local v4    # "result":Z
    :cond_1
    iget-object v5, p0, Lch/kingdoms/android/ui/NewInvenUi$InvenAndInfoView$6;->this$1:Lch/kingdoms/android/ui/NewInvenUi$InvenAndInfoView;

    invoke-virtual {v5}, Lch/kingdoms/android/ui/NewInvenUi$InvenAndInfoView;->refreshInven()V

    .line 674
    iget-object v5, p0, Lch/kingdoms/android/ui/NewInvenUi$InvenAndInfoView$6;->this$1:Lch/kingdoms/android/ui/NewInvenUi$InvenAndInfoView;

    invoke-static {v5}, Lch/kingdoms/android/ui/NewInvenUi$InvenAndInfoView;->access$2(Lch/kingdoms/android/ui/NewInvenUi$InvenAndInfoView;)Lch/android/api/ui/ChInvenView;

    move-result-object v5

    invoke-static {}, Lch/kingdoms/ndk/NdkUiEventManager;->callNativeGetEquipItems()[S

    move-result-object v6

    invoke-static {}, Lch/kingdoms/ndk/NdkUiEventManager;->callNativeGetInven()Lch/kingdoms/ndk/data/Inven;

    move-result-object v7

    invoke-virtual {v7}, Lch/kingdoms/ndk/data/Inven;->getItems()[Lch/kingdoms/ndk/data/Inven$Item;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lch/android/api/ui/ChInvenView;->update([S[Lch/kingdoms/ndk/data/Inven$Item;)Z

    .line 675
    iget-object v5, p0, Lch/kingdoms/android/ui/NewInvenUi$InvenAndInfoView$6;->this$1:Lch/kingdoms/android/ui/NewInvenUi$InvenAndInfoView;

    invoke-static {v5}, Lch/kingdoms/android/ui/NewInvenUi$InvenAndInfoView;->access$2(Lch/kingdoms/android/ui/NewInvenUi$InvenAndInfoView;)Lch/android/api/ui/ChInvenView;

    move-result-object v5

    iget-object v6, p0, Lch/kingdoms/android/ui/NewInvenUi$InvenAndInfoView$6;->this$1:Lch/kingdoms/android/ui/NewInvenUi$InvenAndInfoView;

    invoke-virtual {v5, v6}, Lch/android/api/ui/ChInvenView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method
