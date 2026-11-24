.class Lch/kingdoms/android/ui/BlackSmithUi$ItemSelectView;
.super Lch/android/api/ui/ChRelativeLayout;
.source "BlackSmithUi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lch/kingdoms/android/ui/BlackSmithUi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ItemSelectView"
.end annotation


# instance fields
.field private final invenAndInfoView:Lch/android/api/ui/ChInvenAndInfoView;

.field final synthetic this$0:Lch/kingdoms/android/ui/BlackSmithUi;


# direct methods
.method public constructor <init>(Lch/kingdoms/android/ui/BlackSmithUi;Landroid/content/Context;Lch/android/api/util/DisplayInfo;Ljava/lang/String;I)V
    .locals 8
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "_di"    # Lch/android/api/util/DisplayInfo;
    .param p4, "_txt"    # Ljava/lang/String;
    .param p5, "_storeType"    # I

    .prologue
    const/4 v7, -0x2

    .line 632
    iput-object p1, p0, Lch/kingdoms/android/ui/BlackSmithUi$ItemSelectView;->this$0:Lch/kingdoms/android/ui/BlackSmithUi;

    .line 633
    invoke-direct {p0, p2}, Lch/android/api/ui/ChRelativeLayout;-><init>(Landroid/content/Context;)V

    .line 634
    const v5, 0x7f0202bb

    invoke-super {p0, v5}, Lch/android/api/ui/ChRelativeLayout;->setBackgroundResource(I)V

    .line 636
    new-instance v2, Landroid/widget/LinearLayout;

    invoke-direct {v2, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 637
    .local v2, "lLayout":Landroid/widget/LinearLayout;
    const/4 v5, 0x1

    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 639
    new-instance v4, Lch/android/api/ui/ChTextView;

    invoke-direct {v4, p2}, Lch/android/api/ui/ChTextView;-><init>(Landroid/content/Context;)V

    .line 640
    .local v4, "titleView":Lch/android/api/ui/ChTextView;
    const/16 v5, 0x11

    invoke-virtual {v4, v5}, Lch/android/api/ui/ChTextView;->setGravity(I)V

    .line 641
    invoke-virtual {v4, p4}, Lch/android/api/ui/ChTextView;->setText(Ljava/lang/CharSequence;)V

    .line 642
    const v5, 0x7f0202bd

    invoke-virtual {v4, v5}, Lch/android/api/ui/ChTextView;->setBackgroundResource(I)V

    .line 643
    sget-object v5, Lch/android/api/util/TextPaints;->TYPE_FACE_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v4, v5}, Lch/android/api/ui/ChTextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 644
    const/16 v5, -0x100

    invoke-virtual {v4, v5}, Lch/android/api/ui/ChTextView;->setTextColor(I)V

    .line 646
    new-instance v5, Lch/android/api/ui/ChInvenAndInfoView;

    new-instance v6, Lch/kingdoms/android/ui/BlackSmithUi$ItemSelectView$1;

    invoke-direct {v6, p0}, Lch/kingdoms/android/ui/BlackSmithUi$ItemSelectView$1;-><init>(Lch/kingdoms/android/ui/BlackSmithUi$ItemSelectView;)V

    invoke-direct {v5, p2, p3, p5, v6}, Lch/android/api/ui/ChInvenAndInfoView;-><init>(Landroid/content/Context;Lch/android/api/util/DisplayInfo;ILandroid/view/View$OnClickListener;)V

    iput-object v5, p0, Lch/kingdoms/android/ui/BlackSmithUi$ItemSelectView;->invenAndInfoView:Lch/android/api/ui/ChInvenAndInfoView;

    .line 658
    iget-object v5, p0, Lch/kingdoms/android/ui/BlackSmithUi$ItemSelectView;->invenAndInfoView:Lch/android/api/ui/ChInvenAndInfoView;

    const v6, 0x7f0202bc

    invoke-virtual {v5, v6}, Lch/android/api/ui/ChInvenAndInfoView;->setBackgroundResource(I)V

    .line 660
    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 661
    iget-object v5, p0, Lch/kingdoms/android/ui/BlackSmithUi$ItemSelectView;->invenAndInfoView:Lch/android/api/ui/ChInvenAndInfoView;

    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 664
    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v3, v7, v7}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 665
    .local v3, "rlp":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v5, 0xd

    invoke-virtual {v3, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 667
    invoke-virtual {p0, v2, v3}, Lch/kingdoms/android/ui/BlackSmithUi$ItemSelectView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 671
    new-instance v0, Lch/android/api/ui/ChBackAnimationButton;

    invoke-direct {v0, p2}, Lch/android/api/ui/ChBackAnimationButton;-><init>(Landroid/content/Context;)V

    .line 672
    .local v0, "backBtn":Lch/android/api/ui/ChBackAnimationButton;
    new-instance v5, Lch/kingdoms/android/ui/BlackSmithUi$ItemSelectView$2;

    invoke-direct {v5, p0}, Lch/kingdoms/android/ui/BlackSmithUi$ItemSelectView$2;-><init>(Lch/kingdoms/android/ui/BlackSmithUi$ItemSelectView;)V

    invoke-virtual {v0, v5}, Lch/android/api/ui/ChBackAnimationButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 690
    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    .end local v3    # "rlp":Landroid/widget/RelativeLayout$LayoutParams;
    invoke-direct {v3, v7, v7}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 691
    .restart local v3    # "rlp":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v5, 0xb

    invoke-virtual {v3, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 692
    const/16 v5, 0xa

    invoke-virtual {v3, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 694
    invoke-virtual {p0, v0, v3}, Lch/kingdoms/android/ui/BlackSmithUi$ItemSelectView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 696
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    .line 697
    .local v1, "handler":Landroid/os/Handler;
    new-instance v5, Lch/kingdoms/android/ui/BlackSmithUi$ItemSelectView$3;

    invoke-direct {v5, p0, v0}, Lch/kingdoms/android/ui/BlackSmithUi$ItemSelectView$3;-><init>(Lch/kingdoms/android/ui/BlackSmithUi$ItemSelectView;Lch/android/api/ui/ChBackAnimationButton;)V

    invoke-virtual {v1, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 706
    return-void
.end method

.method static synthetic access$0(Lch/kingdoms/android/ui/BlackSmithUi$ItemSelectView;)Lch/android/api/ui/ChInvenAndInfoView;
    .locals 1

    .prologue
    .line 630
    iget-object v0, p0, Lch/kingdoms/android/ui/BlackSmithUi$ItemSelectView;->invenAndInfoView:Lch/android/api/ui/ChInvenAndInfoView;

    return-object v0
.end method

.method static synthetic access$1(Lch/kingdoms/android/ui/BlackSmithUi$ItemSelectView;)Lch/kingdoms/android/ui/BlackSmithUi;
    .locals 1

    .prologue
    .line 629
    iget-object v0, p0, Lch/kingdoms/android/ui/BlackSmithUi$ItemSelectView;->this$0:Lch/kingdoms/android/ui/BlackSmithUi;

    return-object v0
.end method


# virtual methods
.method public getSelectedItem()Lch/kingdoms/ndk/data/Inven$Item;
    .locals 1

    .prologue
    .line 726
    iget-object v0, p0, Lch/kingdoms/android/ui/BlackSmithUi$ItemSelectView;->invenAndInfoView:Lch/android/api/ui/ChInvenAndInfoView;

    invoke-virtual {v0}, Lch/android/api/ui/ChInvenAndInfoView;->getSelectedItem()Lch/kingdoms/ndk/data/Inven$Item;

    move-result-object v0

    return-object v0
.end method

.method protected onMeasure(II)V
    .locals 3
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const v2, 0x7f0202bb

    .line 715
    invoke-super {p0, p1, p2}, Lch/android/api/ui/ChRelativeLayout;->onMeasure(II)V

    .line 716
    iget-object v0, p0, Lch/kingdoms/android/ui/BlackSmithUi$ItemSelectView;->this$0:Lch/kingdoms/android/ui/BlackSmithUi;

    invoke-static {v0}, Lch/kingdoms/android/ui/BlackSmithUi;->access$13(Lch/kingdoms/android/ui/BlackSmithUi;)Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0, v2}, Lch/android/api/util/BmpUtil;->getBmpWidth(Landroid/content/res/Resources;I)I

    move-result v0

    iget-object v1, p0, Lch/kingdoms/android/ui/BlackSmithUi$ItemSelectView;->this$0:Lch/kingdoms/android/ui/BlackSmithUi;

    invoke-static {v1}, Lch/kingdoms/android/ui/BlackSmithUi;->access$13(Lch/kingdoms/android/ui/BlackSmithUi;)Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v1, v2}, Lch/android/api/util/BmpUtil;->getBmpHeight(Landroid/content/res/Resources;I)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lch/kingdoms/android/ui/BlackSmithUi$ItemSelectView;->setMeasuredDimension(II)V

    .line 717
    return-void
.end method

.method public selectItem(Lch/kingdoms/ndk/data/Inven$Item;)V
    .locals 1
    .param p1, "item"    # Lch/kingdoms/ndk/data/Inven$Item;

    .prologue
    .line 709
    iget-object v0, p0, Lch/kingdoms/android/ui/BlackSmithUi$ItemSelectView;->invenAndInfoView:Lch/android/api/ui/ChInvenAndInfoView;

    invoke-virtual {v0, p1}, Lch/android/api/ui/ChInvenAndInfoView;->selectItem(Lch/kingdoms/ndk/data/Inven$Item;)V

    .line 710
    return-void
.end method

.method public update(I)V
    .locals 3
    .param p1, "_flag"    # I

    .prologue
    .line 720
    invoke-static {}, Lch/kingdoms/ndk/NdkUiEventManager;->callNativeGetInven()Lch/kingdoms/ndk/data/Inven;

    move-result-object v1

    invoke-virtual {v1}, Lch/kingdoms/ndk/data/Inven;->getItems()[Lch/kingdoms/ndk/data/Inven$Item;

    move-result-object v0

    .line 721
    .local v0, "items":[Lch/kingdoms/ndk/data/Inven$Item;
    iget-object v1, p0, Lch/kingdoms/android/ui/BlackSmithUi$ItemSelectView;->invenAndInfoView:Lch/android/api/ui/ChInvenAndInfoView;

    invoke-static {}, Lch/kingdoms/ndk/NdkUiEventManager;->callNativeGetEquipItems()[S

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lch/android/api/ui/ChInvenAndInfoView;->update([S[Lch/kingdoms/ndk/data/Inven$Item;)V

    .line 722
    iget-object v1, p0, Lch/kingdoms/android/ui/BlackSmithUi$ItemSelectView;->invenAndInfoView:Lch/android/api/ui/ChInvenAndInfoView;

    invoke-virtual {v1, p1}, Lch/android/api/ui/ChInvenAndInfoView;->update(I)V

    .line 723
    return-void
.end method
