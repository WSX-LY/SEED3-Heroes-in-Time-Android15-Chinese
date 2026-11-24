.class Lch/kingdoms/android/ui/NewInvenUi$InvenAndInfoView$4$1;
.super Ljava/lang/Object;
.source "NewInvenUi.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lch/kingdoms/android/ui/NewInvenUi$InvenAndInfoView$4;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lch/kingdoms/android/ui/NewInvenUi$InvenAndInfoView$4;

.field private final synthetic val$absoluteIndex:I

.field private final synthetic val$invenOnClickListener:Landroid/view/View$OnClickListener;

.field private final synthetic val$invenView:Lch/android/api/ui/ChInvenView;


# direct methods
.method constructor <init>(Lch/kingdoms/android/ui/NewInvenUi$InvenAndInfoView$4;ILch/android/api/ui/ChInvenView;Landroid/view/View$OnClickListener;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lch/kingdoms/android/ui/NewInvenUi$InvenAndInfoView$4$1;->this$2:Lch/kingdoms/android/ui/NewInvenUi$InvenAndInfoView$4;

    iput p2, p0, Lch/kingdoms/android/ui/NewInvenUi$InvenAndInfoView$4$1;->val$absoluteIndex:I

    iput-object p3, p0, Lch/kingdoms/android/ui/NewInvenUi$InvenAndInfoView$4$1;->val$invenView:Lch/android/api/ui/ChInvenView;

    iput-object p4, p0, Lch/kingdoms/android/ui/NewInvenUi$InvenAndInfoView$4$1;->val$invenOnClickListener:Landroid/view/View$OnClickListener;

    .line 543
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 547
    invoke-static {}, Lch/android/api/ui/ChViewGen;->closePopUpView()V

    .line 548
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    const/16 v3, 0x2742

    if-ne v2, v3, :cond_0

    .line 549
    iget v2, p0, Lch/kingdoms/android/ui/NewInvenUi$InvenAndInfoView$4$1;->val$absoluteIndex:I

    invoke-static {v2}, Lch/kingdoms/ndk/NdkUiEventManager;->useSocketReset(I)Z

    move-result v1

    .line 550
    .local v1, "result":Z
    iget v2, p0, Lch/kingdoms/android/ui/NewInvenUi$InvenAndInfoView$4$1;->val$absoluteIndex:I

    invoke-static {v2}, Lch/kingdoms/ndk/NdkUiEventManager;->checkSocketResetable(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 551
    iget-object v2, p0, Lch/kingdoms/android/ui/NewInvenUi$InvenAndInfoView$4$1;->this$2:Lch/kingdoms/android/ui/NewInvenUi$InvenAndInfoView$4;

    invoke-static {v2}, Lch/kingdoms/android/ui/NewInvenUi$InvenAndInfoView$4;->access$0(Lch/kingdoms/android/ui/NewInvenUi$InvenAndInfoView$4;)Lch/kingdoms/android/ui/NewInvenUi$InvenAndInfoView;

    move-result-object v2

    invoke-virtual {v2}, Lch/kingdoms/android/ui/NewInvenUi$InvenAndInfoView;->refreshInven()V

    .line 553
    iget-object v2, p0, Lch/kingdoms/android/ui/NewInvenUi$InvenAndInfoView$4$1;->val$invenView:Lch/android/api/ui/ChInvenView;

    iget-object v3, p0, Lch/kingdoms/android/ui/NewInvenUi$InvenAndInfoView$4$1;->this$2:Lch/kingdoms/android/ui/NewInvenUi$InvenAndInfoView$4;

    invoke-static {v3}, Lch/kingdoms/android/ui/NewInvenUi$InvenAndInfoView$4;->access$0(Lch/kingdoms/android/ui/NewInvenUi$InvenAndInfoView$4;)Lch/kingdoms/android/ui/NewInvenUi$InvenAndInfoView;

    move-result-object v3

    invoke-static {v3}, Lch/kingdoms/android/ui/NewInvenUi$InvenAndInfoView;->access$1(Lch/kingdoms/android/ui/NewInvenUi$InvenAndInfoView;)[Lch/kingdoms/ndk/data/Inven$Item;

    move-result-object v3

    invoke-virtual {v2, v3}, Lch/android/api/ui/ChInvenView;->update([Lch/kingdoms/ndk/data/Inven$Item;)Z

    .line 554
    iget-object v2, p0, Lch/kingdoms/android/ui/NewInvenUi$InvenAndInfoView$4$1;->val$invenView:Lch/android/api/ui/ChInvenView;

    iget-object v3, p0, Lch/kingdoms/android/ui/NewInvenUi$InvenAndInfoView$4$1;->val$invenOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Lch/android/api/ui/ChInvenView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 560
    :goto_0
    if-eqz v1, :cond_0

    .line 562
    new-instance v0, Lch/android/api/ui/ChPopUpItemInfoView;

    iget-object v2, p0, Lch/kingdoms/android/ui/NewInvenUi$InvenAndInfoView$4$1;->this$2:Lch/kingdoms/android/ui/NewInvenUi$InvenAndInfoView$4;

    invoke-static {v2}, Lch/kingdoms/android/ui/NewInvenUi$InvenAndInfoView$4;->access$0(Lch/kingdoms/android/ui/NewInvenUi$InvenAndInfoView$4;)Lch/kingdoms/android/ui/NewInvenUi$InvenAndInfoView;

    move-result-object v2

    invoke-virtual {v2}, Lch/kingdoms/android/ui/NewInvenUi$InvenAndInfoView;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lch/kingdoms/android/ui/NewInvenUi$InvenAndInfoView$4$1;->this$2:Lch/kingdoms/android/ui/NewInvenUi$InvenAndInfoView$4;

    invoke-static {v3}, Lch/kingdoms/android/ui/NewInvenUi$InvenAndInfoView$4;->access$0(Lch/kingdoms/android/ui/NewInvenUi$InvenAndInfoView$4;)Lch/kingdoms/android/ui/NewInvenUi$InvenAndInfoView;

    move-result-object v3

    invoke-static {v3}, Lch/kingdoms/android/ui/NewInvenUi$InvenAndInfoView;->access$1(Lch/kingdoms/android/ui/NewInvenUi$InvenAndInfoView;)[Lch/kingdoms/ndk/data/Inven$Item;

    move-result-object v3

    iget v4, p0, Lch/kingdoms/android/ui/NewInvenUi$InvenAndInfoView$4$1;->val$absoluteIndex:I

    aget-object v3, v3, v4

    iget-object v4, p0, Lch/kingdoms/android/ui/NewInvenUi$InvenAndInfoView$4$1;->this$2:Lch/kingdoms/android/ui/NewInvenUi$InvenAndInfoView$4;

    invoke-static {v4}, Lch/kingdoms/android/ui/NewInvenUi$InvenAndInfoView$4;->access$0(Lch/kingdoms/android/ui/NewInvenUi$InvenAndInfoView$4;)Lch/kingdoms/android/ui/NewInvenUi$InvenAndInfoView;

    move-result-object v4

    invoke-static {v4}, Lch/kingdoms/android/ui/NewInvenUi$InvenAndInfoView;->access$5(Lch/kingdoms/android/ui/NewInvenUi$InvenAndInfoView;)Lch/kingdoms/android/ui/NewInvenUi;

    move-result-object v4

    invoke-static {v4}, Lch/kingdoms/android/ui/NewInvenUi;->access$1(Lch/kingdoms/android/ui/NewInvenUi;)Lch/android/api/util/DisplayInfo;

    move-result-object v4

    const/4 v5, 0x1

    invoke-direct {v0, v2, v3, v4, v5}, Lch/android/api/ui/ChPopUpItemInfoView;-><init>(Landroid/content/Context;Lch/kingdoms/ndk/data/Inven$Item;Lch/android/api/util/DisplayInfo;Z)V

    .line 563
    .local v0, "popUpItemInfoView":Lch/android/api/ui/ChPopUpItemInfoView;
    iget-object v2, p0, Lch/kingdoms/android/ui/NewInvenUi$InvenAndInfoView$4$1;->this$2:Lch/kingdoms/android/ui/NewInvenUi$InvenAndInfoView$4;

    invoke-static {v2}, Lch/kingdoms/android/ui/NewInvenUi$InvenAndInfoView$4;->access$0(Lch/kingdoms/android/ui/NewInvenUi$InvenAndInfoView$4;)Lch/kingdoms/android/ui/NewInvenUi$InvenAndInfoView;

    move-result-object v2

    invoke-static {v2}, Lch/kingdoms/android/ui/NewInvenUi$InvenAndInfoView;->access$5(Lch/kingdoms/android/ui/NewInvenUi$InvenAndInfoView;)Lch/kingdoms/android/ui/NewInvenUi;

    move-result-object v2

    invoke-static {v2}, Lch/kingdoms/android/ui/NewInvenUi;->access$0(Lch/kingdoms/android/ui/NewInvenUi;)Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2, v0}, Lch/android/api/ui/ChViewGen;->popUp(Landroid/app/Activity;Landroid/view/View;)Landroid/view/View;

    .line 564
    new-instance v2, Lch/kingdoms/android/ui/NewInvenUi$InvenAndInfoView$4$1$1;

    invoke-direct {v2, p0}, Lch/kingdoms/android/ui/NewInvenUi$InvenAndInfoView$4$1$1;-><init>(Lch/kingdoms/android/ui/NewInvenUi$InvenAndInfoView$4$1;)V

    invoke-virtual {v0, v2}, Lch/android/api/ui/ChPopUpItemInfoView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 577
    .end local v0    # "popUpItemInfoView":Lch/android/api/ui/ChPopUpItemInfoView;
    .end local v1    # "result":Z
    :cond_0
    return-void

    .line 557
    .restart local v1    # "result":Z
    :cond_1
    iget-object v2, p0, Lch/kingdoms/android/ui/NewInvenUi$InvenAndInfoView$4$1;->this$2:Lch/kingdoms/android/ui/NewInvenUi$InvenAndInfoView$4;

    invoke-static {v2}, Lch/kingdoms/android/ui/NewInvenUi$InvenAndInfoView$4;->access$0(Lch/kingdoms/android/ui/NewInvenUi$InvenAndInfoView$4;)Lch/kingdoms/android/ui/NewInvenUi$InvenAndInfoView;

    move-result-object v2

    invoke-static {v2}, Lch/kingdoms/android/ui/NewInvenUi$InvenAndInfoView;->access$5(Lch/kingdoms/android/ui/NewInvenUi$InvenAndInfoView;)Lch/kingdoms/android/ui/NewInvenUi;

    move-result-object v2

    invoke-static {v2}, Lch/kingdoms/android/ui/NewInvenUi;->access$0(Lch/kingdoms/android/ui/NewInvenUi;)Landroid/app/Activity;

    move-result-object v2

    const/16 v3, 0x7f

    invoke-static {v3}, Lch/kingdoms/ndk/NdkTextLoader;->getGameMenuTxt(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lch/android/api/ui/ChViewGen;->popUpOkView(Landroid/app/Activity;Ljava/lang/String;)Landroid/view/View;

    .line 558
    iget-object v2, p0, Lch/kingdoms/android/ui/NewInvenUi$InvenAndInfoView$4$1;->this$2:Lch/kingdoms/android/ui/NewInvenUi$InvenAndInfoView$4;

    invoke-static {v2}, Lch/kingdoms/android/ui/NewInvenUi$InvenAndInfoView$4;->access$0(Lch/kingdoms/android/ui/NewInvenUi$InvenAndInfoView$4;)Lch/kingdoms/android/ui/NewInvenUi$InvenAndInfoView;

    move-result-object v2

    invoke-virtual {v2}, Lch/kingdoms/android/ui/NewInvenUi$InvenAndInfoView;->refreshInven()V

    goto :goto_0
.end method
