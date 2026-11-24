.class Lch/kingdoms/android/ui/BrandShopUi$ContentsGalleryView;
.super Lch/android/api/ui/ChRelativeLayout;
.source "BrandShopUi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lch/kingdoms/android/ui/BrandShopUi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ContentsGalleryView"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lch/kingdoms/android/ui/BrandShopUi$ContentsGalleryView$ChItemGallery;
    }
.end annotation


# instance fields
.field final synthetic this$0:Lch/kingdoms/android/ui/BrandShopUi;


# direct methods
.method public constructor <init>(Lch/kingdoms/android/ui/BrandShopUi;Landroid/content/Context;)V
    .locals 18
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 458
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lch/kingdoms/android/ui/BrandShopUi$ContentsGalleryView;->this$0:Lch/kingdoms/android/ui/BrandShopUi;

    .line 459
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lch/android/api/ui/ChRelativeLayout;-><init>(Landroid/content/Context;)V

    .line 462
    invoke-static {}, Lch/kingdoms/android/db/DBAdapter;->getInstance()Lch/kingdoms/android/db/DBAdapter;

    move-result-object v13

    .line 464
    .local v13, "dba":Lch/kingdoms/android/db/DBAdapter;
    new-instance v3, Lch/android/api/ui/ChPaidContentView;

    invoke-static/range {p1 .. p1}, Lch/kingdoms/android/ui/BrandShopUi;->access$0(Lch/kingdoms/android/ui/BrandShopUi;)Lch/android/api/util/DisplayInfo;

    move-result-object v5

    const/16 v6, 0x114

    invoke-static {v6}, Lch/kingdoms/ndk/NdkTextLoader;->getGameMenuTxt(I)Ljava/lang/String;

    move-result-object v6

    .line 465
    const/16 v7, 0x116

    invoke-static {v7}, Lch/kingdoms/ndk/NdkTextLoader;->getGameMenuTxt(I)Ljava/lang/String;

    move-result-object v7

    const v8, 0x7f0202d6

    const v9, 0x7f020027

    const-string v10, "WARPGATE"

    invoke-virtual {v13, v10}, Lch/kingdoms/android/db/DBAdapter;->isPurchased(Ljava/lang/String;)Z

    move-result v10

    .line 466
    new-instance v11, Lch/kingdoms/android/ui/BrandShopUi$ContentsGalleryView$1;

    move-object/from16 v0, p0

    invoke-direct {v11, v0}, Lch/kingdoms/android/ui/BrandShopUi$ContentsGalleryView$1;-><init>(Lch/kingdoms/android/ui/BrandShopUi$ContentsGalleryView;)V

    move-object/from16 v4, p2

    .line 464
    invoke-direct/range {v3 .. v11}, Lch/android/api/ui/ChPaidContentView;-><init>(Landroid/content/Context;Lch/android/api/util/DisplayInfo;Ljava/lang/String;Ljava/lang/String;IIZLandroid/view/View$OnClickListener;)V

    .line 478
    .local v3, "warpContentView":Lch/android/api/ui/ChPaidContentView;
    invoke-virtual {v3}, Lch/android/api/ui/ChPaidContentView;->startAnimation()V

    .line 480
    new-instance v4, Lch/android/api/ui/ChPaidContentView;

    invoke-static/range {p1 .. p1}, Lch/kingdoms/android/ui/BrandShopUi;->access$0(Lch/kingdoms/android/ui/BrandShopUi;)Lch/android/api/util/DisplayInfo;

    move-result-object v6

    const/16 v5, 0x117

    invoke-static {v5}, Lch/kingdoms/ndk/NdkTextLoader;->getGameMenuTxt(I)Ljava/lang/String;

    move-result-object v7

    .line 481
    const/16 v5, 0x119

    invoke-static {v5}, Lch/kingdoms/ndk/NdkTextLoader;->getGameMenuTxt(I)Ljava/lang/String;

    move-result-object v8

    const v9, 0x7f020085

    const v10, 0x7f02020d

    const-string v5, "COLOSSEUM"

    invoke-virtual {v13, v5}, Lch/kingdoms/android/db/DBAdapter;->isPurchased(Ljava/lang/String;)Z

    move-result v11

    .line 482
    new-instance v12, Lch/kingdoms/android/ui/BrandShopUi$ContentsGalleryView$2;

    move-object/from16 v0, p0

    invoke-direct {v12, v0}, Lch/kingdoms/android/ui/BrandShopUi$ContentsGalleryView$2;-><init>(Lch/kingdoms/android/ui/BrandShopUi$ContentsGalleryView;)V

    move-object/from16 v5, p2

    .line 480
    invoke-direct/range {v4 .. v12}, Lch/android/api/ui/ChPaidContentView;-><init>(Landroid/content/Context;Lch/android/api/util/DisplayInfo;Ljava/lang/String;Ljava/lang/String;IIZLandroid/view/View$OnClickListener;)V

    .line 494
    .local v4, "colosseumContentView":Lch/android/api/ui/ChPaidContentView;
    invoke-virtual {v4}, Lch/android/api/ui/ChPaidContentView;->startAnimation()V

    .line 495
    const/4 v5, 0x2

    new-array v0, v5, [Landroid/view/View;

    move-object/from16 v17, v0

    const/4 v5, 0x0

    aput-object v3, v17, v5

    const/4 v5, 0x1

    aput-object v4, v17, v5

    .line 497
    .local v17, "views":[Landroid/view/View;
    new-instance v14, Lch/kingdoms/android/ui/BrandShopUi$ContentsGalleryView$ChItemGallery;

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, v17

    invoke-direct {v14, v0, v1, v2}, Lch/kingdoms/android/ui/BrandShopUi$ContentsGalleryView$ChItemGallery;-><init>(Lch/kingdoms/android/ui/BrandShopUi$ContentsGalleryView;Landroid/content/Context;[Landroid/view/View;)V

    .line 498
    .local v14, "itemGallery":Lch/kingdoms/android/ui/BrandShopUi$ContentsGalleryView$ChItemGallery;
    invoke-virtual {v14}, Lch/kingdoms/android/ui/BrandShopUi$ContentsGalleryView$ChItemGallery;->initAdapter()V

    .line 499
    invoke-static/range {p1 .. p1}, Lch/kingdoms/android/ui/BrandShopUi;->access$0(Lch/kingdoms/android/ui/BrandShopUi;)Lch/android/api/util/DisplayInfo;

    move-result-object v5

    iget v5, v5, Lch/android/api/util/DisplayInfo;->density:F

    const/high16 v6, 0x40a00000    # 5.0f

    mul-float/2addr v5, v6

    float-to-int v5, v5

    invoke-virtual {v14, v5}, Lch/kingdoms/android/ui/BrandShopUi$ContentsGalleryView$ChItemGallery;->setSpacing(I)V

    .line 501
    new-instance v5, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v6, -0x1

    const/4 v7, -0x1

    invoke-direct {v5, v6, v7}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v5}, Lch/kingdoms/android/ui/BrandShopUi$ContentsGalleryView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 503
    new-instance v15, Lch/android/api/ui/ChTextSlimButton;

    const v5, 0x7f020205

    const v6, 0x7f020204

    .line 504
    invoke-virtual/range {p2 .. p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0500a4

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 503
    move-object/from16 v0, p2

    invoke-direct {v15, v0, v5, v6, v7}, Lch/android/api/ui/ChTextSlimButton;-><init>(Landroid/content/Context;IILjava/lang/String;)V

    .line 505
    .local v15, "restoreBtn":Lch/android/api/ui/ChTextSlimButton;
    new-instance v5, Lch/kingdoms/android/ui/BrandShopUi$ContentsGalleryView$3;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Lch/kingdoms/android/ui/BrandShopUi$ContentsGalleryView$3;-><init>(Lch/kingdoms/android/ui/BrandShopUi$ContentsGalleryView;)V

    invoke-virtual {v15, v5}, Lch/android/api/ui/ChTextSlimButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 528
    new-instance v16, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v5, -0x2

    const/4 v6, -0x2

    move-object/from16 v0, v16

    invoke-direct {v0, v5, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 529
    .local v16, "rlp":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v5, 0xc

    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 530
    const/16 v5, 0x9

    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 531
    invoke-static/range {p1 .. p1}, Lch/kingdoms/android/ui/BrandShopUi;->access$0(Lch/kingdoms/android/ui/BrandShopUi;)Lch/android/api/util/DisplayInfo;

    move-result-object v5

    iget v5, v5, Lch/android/api/util/DisplayInfo;->density:F

    const/high16 v6, 0x40a00000    # 5.0f

    mul-float/2addr v5, v6

    float-to-int v5, v5

    move-object/from16 v0, v16

    iput v5, v0, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 532
    invoke-static/range {p1 .. p1}, Lch/kingdoms/android/ui/BrandShopUi;->access$0(Lch/kingdoms/android/ui/BrandShopUi;)Lch/android/api/util/DisplayInfo;

    move-result-object v5

    iget v5, v5, Lch/android/api/util/DisplayInfo;->density:F

    const/high16 v6, 0x40a00000    # 5.0f

    mul-float/2addr v5, v6

    float-to-int v5, v5

    move-object/from16 v0, v16

    iput v5, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 533
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v15, v1}, Lch/kingdoms/android/ui/BrandShopUi$ContentsGalleryView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 534
    return-void
.end method
