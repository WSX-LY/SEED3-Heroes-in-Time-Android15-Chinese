.class Lch/kingdoms/android/ui/EquipUi$EquipInfoView;
.super Lch/android/api/ui/ChLinearLayout;
.source "EquipUi.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lch/kingdoms/android/ui/EquipUi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EquipInfoView"
.end annotation


# instance fields
.field private final ABILITY_VIEW:Lch/android/api/ui/ChStatView;

.field private final CONTEXT:Landroid/content/Context;

.field private final INVEN_VIEW:Lch/android/api/ui/ChInvenView;

.field private final TOP_LAY_OUT:Lch/android/api/ui/ChRelativeLayout;

.field private heroJob:I

.field private m_curItem:I

.field private m_curType:I

.field private m_itemInfoView:Lch/android/api/ui/ChItemInfoView;

.field private m_originItem:I

.field private m_previousBtn:I

.field private m_previousId:I

.field private m_touchCount:I

.field final synthetic this$0:Lch/kingdoms/android/ui/EquipUi;


# direct methods
.method public constructor <init>(Lch/kingdoms/android/ui/EquipUi;Landroid/content/Context;Lch/android/api/util/DisplayInfo;)V
    .locals 12
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "_di"    # Lch/android/api/util/DisplayInfo;

    .prologue
    const v11, 0x7f0200a5

    const/4 v10, 0x1

    const/high16 v7, 0x41a00000    # 20.0f

    const/4 v9, -0x1

    .line 405
    iput-object p1, p0, Lch/kingdoms/android/ui/EquipUi$EquipInfoView;->this$0:Lch/kingdoms/android/ui/EquipUi;

    .line 406
    invoke-direct {p0, p2}, Lch/android/api/ui/ChLinearLayout;-><init>(Landroid/content/Context;)V

    .line 408
    invoke-super {p0, v10}, Lch/android/api/ui/ChLinearLayout;->setOrientation(I)V

    .line 409
    iput-object p2, p0, Lch/kingdoms/android/ui/EquipUi$EquipInfoView;->CONTEXT:Landroid/content/Context;

    .line 410
    new-instance v3, Lch/android/api/ui/ChRelativeLayout;

    invoke-direct {v3, p2}, Lch/android/api/ui/ChRelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lch/kingdoms/android/ui/EquipUi$EquipInfoView;->TOP_LAY_OUT:Lch/android/api/ui/ChRelativeLayout;

    .line 411
    iget-object v3, p0, Lch/kingdoms/android/ui/EquipUi$EquipInfoView;->TOP_LAY_OUT:Lch/android/api/ui/ChRelativeLayout;

    invoke-virtual {v3, v11}, Lch/android/api/ui/ChRelativeLayout;->setBackgroundResource(I)V

    .line 413
    new-instance v3, Lch/android/api/ui/ChInvenView;

    invoke-static {p1}, Lch/kingdoms/android/ui/EquipUi;->access$0(Lch/kingdoms/android/ui/EquipUi;)[S

    move-result-object v4

    invoke-static {p1}, Lch/kingdoms/android/ui/EquipUi;->access$1(Lch/kingdoms/android/ui/EquipUi;)[Lch/kingdoms/ndk/data/Inven$Item;

    move-result-object v5

    invoke-static {p1}, Lch/kingdoms/android/ui/EquipUi;->access$2(Lch/kingdoms/android/ui/EquipUi;)Lch/android/api/util/DisplayInfo;

    move-result-object v6

    iget v6, v6, Lch/android/api/util/DisplayInfo;->density:F

    invoke-direct {v3, p2, v4, v5, v6}, Lch/android/api/ui/ChInvenView;-><init>(Landroid/content/Context;[S[Lch/kingdoms/ndk/data/Inven$Item;F)V

    iput-object v3, p0, Lch/kingdoms/android/ui/EquipUi$EquipInfoView;->INVEN_VIEW:Lch/android/api/ui/ChInvenView;

    .line 414
    iget-object v3, p0, Lch/kingdoms/android/ui/EquipUi$EquipInfoView;->INVEN_VIEW:Lch/android/api/ui/ChInvenView;

    iget v4, p3, Lch/android/api/util/DisplayInfo;->density:F

    mul-float/2addr v4, v7

    float-to-int v4, v4

    const/high16 v5, 0x41880000    # 17.0f

    iget v6, p3, Lch/android/api/util/DisplayInfo;->density:F

    mul-float/2addr v5, v6

    float-to-int v5, v5

    iget v6, p3, Lch/android/api/util/DisplayInfo;->density:F

    mul-float/2addr v6, v7

    float-to-int v6, v6

    const/high16 v7, 0x41700000    # 15.0f

    iget v8, p3, Lch/android/api/util/DisplayInfo;->density:F

    mul-float/2addr v7, v8

    float-to-int v7, v7

    invoke-virtual {v3, v4, v5, v6, v7}, Lch/android/api/ui/ChInvenView;->setPadding(IIII)V

    .line 418
    invoke-static {}, Lch/kingdoms/ndk/NdkUiEventManager;->callNativeGetHeroInfo()Lch/kingdoms/ndk/data/HeroStatus;

    move-result-object v2

    .line 419
    .local v2, "origin":Lch/kingdoms/ndk/data/HeroStatus;
    new-instance v3, Lch/android/api/ui/ChStatView;

    iget-object v4, p0, Lch/kingdoms/android/ui/EquipUi$EquipInfoView;->CONTEXT:Landroid/content/Context;

    invoke-static {p1}, Lch/kingdoms/android/ui/EquipUi;->access$2(Lch/kingdoms/android/ui/EquipUi;)Lch/android/api/util/DisplayInfo;

    move-result-object v5

    iget v5, v5, Lch/android/api/util/DisplayInfo;->density:F

    invoke-direct {v3, v4, v2, v5}, Lch/android/api/ui/ChStatView;-><init>(Landroid/content/Context;Lch/kingdoms/ndk/data/HeroStatus;F)V

    iput-object v3, p0, Lch/kingdoms/android/ui/EquipUi$EquipInfoView;->ABILITY_VIEW:Lch/android/api/ui/ChStatView;

    .line 421
    iget-object v3, p0, Lch/kingdoms/android/ui/EquipUi$EquipInfoView;->ABILITY_VIEW:Lch/android/api/ui/ChStatView;

    const v4, 0x7f0200a4

    invoke-virtual {v3, v4}, Lch/android/api/ui/ChStatView;->setBackgroundResource(I)V

    .line 423
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 424
    .local v1, "options":Landroid/graphics/BitmapFactory$Options;
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-static {v3, v11, v1}, Lch/android/api/util/HdResources;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 425
    iget-object v3, p0, Lch/kingdoms/android/ui/EquipUi$EquipInfoView;->TOP_LAY_OUT:Lch/android/api/ui/ChRelativeLayout;

    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    iget v5, v1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    int-to-float v5, v5

    iget v6, p3, Lch/android/api/util/DisplayInfo;->density:F

    mul-float/2addr v5, v6

    float-to-int v5, v5

    iget v6, v1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    int-to-float v6, v6

    iget v7, p3, Lch/android/api/util/DisplayInfo;->density:F

    mul-float/2addr v6, v7

    float-to-int v6, v6

    invoke-direct {v4, v5, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-super {p0, v3, v4}, Lch/android/api/ui/ChLinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 427
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    iget v3, p3, Lch/android/api/util/DisplayInfo;->density:F

    const/high16 v4, 0x43690000    # 233.0f

    mul-float/2addr v3, v4

    float-to-int v3, v3

    const/4 v4, -0x2

    invoke-direct {v0, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 428
    .local v0, "llp":Landroid/widget/LinearLayout$LayoutParams;
    iput v10, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 429
    iget v3, p3, Lch/android/api/util/DisplayInfo;->density:F

    float-to-double v3, v3

    const-wide/high16 v5, 0x3ff8000000000000L    # 1.5

    mul-double/2addr v3, v5

    double-to-int v3, v3

    iput v3, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 431
    iget-object v3, p0, Lch/kingdoms/android/ui/EquipUi$EquipInfoView;->ABILITY_VIEW:Lch/android/api/ui/ChStatView;

    invoke-super {p0, v3, v0}, Lch/android/api/ui/ChLinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 434
    iput v9, p0, Lch/kingdoms/android/ui/EquipUi$EquipInfoView;->m_previousBtn:I

    .line 435
    iput v9, p0, Lch/kingdoms/android/ui/EquipUi$EquipInfoView;->m_curType:I

    .line 436
    iput v9, p0, Lch/kingdoms/android/ui/EquipUi$EquipInfoView;->m_curItem:I

    .line 437
    iput v9, p0, Lch/kingdoms/android/ui/EquipUi$EquipInfoView;->m_originItem:I

    .line 439
    const/4 v3, 0x0

    iput v3, p0, Lch/kingdoms/android/ui/EquipUi$EquipInfoView;->m_touchCount:I

    .line 440
    iput v9, p0, Lch/kingdoms/android/ui/EquipUi$EquipInfoView;->m_previousId:I

    .line 442
    iget-object v3, p0, Lch/kingdoms/android/ui/EquipUi$EquipInfoView;->ABILITY_VIEW:Lch/android/api/ui/ChStatView;

    invoke-static {}, Lch/kingdoms/ndk/NdkUiEventManager;->callNativeGetHeroInfo()Lch/kingdoms/ndk/data/HeroStatus;

    move-result-object v4

    invoke-virtual {v3, v4}, Lch/android/api/ui/ChStatView;->init(Lch/kingdoms/ndk/data/HeroStatus;)V

    .line 443
    return-void
.end method

.method static synthetic access$0(Lch/kingdoms/android/ui/EquipUi$EquipInfoView;)Lch/android/api/ui/ChInvenView;
    .locals 1

    .prologue
    .line 389
    iget-object v0, p0, Lch/kingdoms/android/ui/EquipUi$EquipInfoView;->INVEN_VIEW:Lch/android/api/ui/ChInvenView;

    return-object v0
.end method

.method static synthetic access$1(Lch/kingdoms/android/ui/EquipUi$EquipInfoView;)I
    .locals 1

    .prologue
    .line 397
    iget v0, p0, Lch/kingdoms/android/ui/EquipUi$EquipInfoView;->m_curItem:I

    return v0
.end method

.method static synthetic access$2(Lch/kingdoms/android/ui/EquipUi$EquipInfoView;)Lch/kingdoms/android/ui/EquipUi;
    .locals 1

    .prologue
    .line 386
    iget-object v0, p0, Lch/kingdoms/android/ui/EquipUi$EquipInfoView;->this$0:Lch/kingdoms/android/ui/EquipUi;

    return-object v0
.end method

.method private updateInvenView(I)Z
    .locals 5
    .param p1, "_selectedEquipButtonId"    # I

    .prologue
    const/4 v4, 0x4

    const/4 v2, 0x0

    .line 502
    const/4 v1, 0x0

    .line 503
    .local v1, "flag":I
    iput p1, p0, Lch/kingdoms/android/ui/EquipUi$EquipInfoView;->m_curType:I

    .line 504
    iget v3, p0, Lch/kingdoms/android/ui/EquipUi$EquipInfoView;->heroJob:I

    if-ne v3, v4, :cond_1

    .line 505
    const v1, -0xfffffcc

    .line 545
    :goto_0
    if-eqz v1, :cond_0

    .line 546
    iget-object v3, p0, Lch/kingdoms/android/ui/EquipUi$EquipInfoView;->INVEN_VIEW:Lch/android/api/ui/ChInvenView;

    invoke-virtual {v3, v1, v4}, Lch/android/api/ui/ChInvenView;->update(II)Z

    move-result v0

    .line 547
    .local v0, "exist":Z
    if-nez v0, :cond_2

    .line 548
    iget-object v3, p0, Lch/kingdoms/android/ui/EquipUi$EquipInfoView;->this$0:Lch/kingdoms/android/ui/EquipUi;

    invoke-virtual {v3}, Lch/kingdoms/android/ui/EquipUi;->popUpConfirmOk()V

    .line 557
    .end local v0    # "exist":Z
    :cond_0
    :goto_1
    return v2

    .line 507
    :cond_1
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 509
    :pswitch_0
    const v1, -0xfffffff

    .line 510
    goto :goto_0

    .line 512
    :pswitch_1
    const v1, -0xffffffe

    .line 513
    goto :goto_0

    .line 516
    :pswitch_2
    const v1, -0xffffffd

    .line 517
    goto :goto_0

    .line 519
    :pswitch_3
    iget v3, p0, Lch/kingdoms/android/ui/EquipUi$EquipInfoView;->heroJob:I

    packed-switch v3, :pswitch_data_1

    .line 533
    :pswitch_4
    const v1, -0xfffffcc

    .line 536
    goto :goto_0

    .line 521
    :pswitch_5
    const v1, -0xfffffd0

    .line 522
    goto :goto_0

    .line 524
    :pswitch_6
    const v1, -0xfffffcf

    .line 525
    goto :goto_0

    .line 527
    :pswitch_7
    const v1, -0xfffffce

    .line 528
    goto :goto_0

    .line 530
    :pswitch_8
    const v1, -0xfffffcd

    .line 531
    goto :goto_0

    .line 538
    :pswitch_9
    const v1, -0xffffffb

    .line 539
    goto :goto_0

    .line 541
    :pswitch_a
    const v1, -0xffffffa

    goto :goto_0

    .line 553
    .restart local v0    # "exist":Z
    :cond_2
    const/4 v2, 0x1

    goto :goto_1

    .line 507
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_9
        :pswitch_2
        :pswitch_a
    .end packed-switch

    .line 519
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_4
        :pswitch_8
    .end packed-switch
.end method


# virtual methods
.method public changeToInfo(I)V
    .locals 7
    .param p1, "_selectedEquipBtnId"    # I

    .prologue
    const/high16 v6, 0x41a00000    # 20.0f

    const/4 v5, -0x1

    const/4 v4, 0x0

    .line 480
    iget-object v0, p0, Lch/kingdoms/android/ui/EquipUi$EquipInfoView;->TOP_LAY_OUT:Lch/android/api/ui/ChRelativeLayout;

    iget-object v1, p0, Lch/kingdoms/android/ui/EquipUi$EquipInfoView;->m_itemInfoView:Lch/android/api/ui/ChItemInfoView;

    invoke-virtual {v0, v1}, Lch/android/api/ui/ChRelativeLayout;->removeView(Landroid/view/View;)V

    .line 481
    iget-object v0, p0, Lch/kingdoms/android/ui/EquipUi$EquipInfoView;->TOP_LAY_OUT:Lch/android/api/ui/ChRelativeLayout;

    iget-object v1, p0, Lch/kingdoms/android/ui/EquipUi$EquipInfoView;->INVEN_VIEW:Lch/android/api/ui/ChInvenView;

    invoke-virtual {v0, v1}, Lch/android/api/ui/ChRelativeLayout;->removeView(Landroid/view/View;)V

    .line 482
    iget-object v0, p0, Lch/kingdoms/android/ui/EquipUi$EquipInfoView;->this$0:Lch/kingdoms/android/ui/EquipUi;

    invoke-static {v0}, Lch/kingdoms/android/ui/EquipUi;->access$0(Lch/kingdoms/android/ui/EquipUi;)[S

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lch/kingdoms/android/ui/EquipUi$EquipInfoView;->this$0:Lch/kingdoms/android/ui/EquipUi;

    invoke-static {v0}, Lch/kingdoms/android/ui/EquipUi;->access$1(Lch/kingdoms/android/ui/EquipUi;)[Lch/kingdoms/ndk/data/Inven$Item;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lch/kingdoms/android/ui/EquipUi$EquipInfoView;->this$0:Lch/kingdoms/android/ui/EquipUi;

    invoke-static {v0}, Lch/kingdoms/android/ui/EquipUi;->access$0(Lch/kingdoms/android/ui/EquipUi;)[S

    move-result-object v0

    aget-short v0, v0, p1

    if-le v0, v5, :cond_0

    .line 483
    new-instance v0, Lch/android/api/ui/ChItemInfoView;

    iget-object v1, p0, Lch/kingdoms/android/ui/EquipUi$EquipInfoView;->CONTEXT:Landroid/content/Context;

    iget-object v2, p0, Lch/kingdoms/android/ui/EquipUi$EquipInfoView;->this$0:Lch/kingdoms/android/ui/EquipUi;

    invoke-static {v2}, Lch/kingdoms/android/ui/EquipUi;->access$1(Lch/kingdoms/android/ui/EquipUi;)[Lch/kingdoms/ndk/data/Inven$Item;

    move-result-object v2

    iget-object v3, p0, Lch/kingdoms/android/ui/EquipUi$EquipInfoView;->this$0:Lch/kingdoms/android/ui/EquipUi;

    invoke-static {v3}, Lch/kingdoms/android/ui/EquipUi;->access$0(Lch/kingdoms/android/ui/EquipUi;)[S

    move-result-object v3

    aget-short v3, v3, p1

    aget-object v2, v2, v3

    invoke-direct {v0, v1, v2, v4}, Lch/android/api/ui/ChItemInfoView;-><init>(Landroid/content/Context;Lch/kingdoms/ndk/data/Inven$Item;I)V

    iput-object v0, p0, Lch/kingdoms/android/ui/EquipUi$EquipInfoView;->m_itemInfoView:Lch/android/api/ui/ChItemInfoView;

    .line 484
    iget-object v0, p0, Lch/kingdoms/android/ui/EquipUi$EquipInfoView;->m_itemInfoView:Lch/android/api/ui/ChItemInfoView;

    iget-object v1, p0, Lch/kingdoms/android/ui/EquipUi$EquipInfoView;->this$0:Lch/kingdoms/android/ui/EquipUi;

    invoke-static {v1}, Lch/kingdoms/android/ui/EquipUi;->access$2(Lch/kingdoms/android/ui/EquipUi;)Lch/android/api/util/DisplayInfo;

    move-result-object v1

    iget v1, v1, Lch/android/api/util/DisplayInfo;->density:F

    mul-float/2addr v1, v6

    float-to-int v1, v1

    iget-object v2, p0, Lch/kingdoms/android/ui/EquipUi$EquipInfoView;->this$0:Lch/kingdoms/android/ui/EquipUi;

    invoke-static {v2}, Lch/kingdoms/android/ui/EquipUi;->access$2(Lch/kingdoms/android/ui/EquipUi;)Lch/android/api/util/DisplayInfo;

    move-result-object v2

    iget v2, v2, Lch/android/api/util/DisplayInfo;->density:F

    mul-float/2addr v2, v6

    float-to-int v2, v2

    invoke-virtual {v0, v1, v2, v4, v4}, Lch/android/api/ui/ChItemInfoView;->setPadding(IIII)V

    .line 485
    iget-object v0, p0, Lch/kingdoms/android/ui/EquipUi$EquipInfoView;->TOP_LAY_OUT:Lch/android/api/ui/ChRelativeLayout;

    iget-object v1, p0, Lch/kingdoms/android/ui/EquipUi$EquipInfoView;->m_itemInfoView:Lch/android/api/ui/ChItemInfoView;

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v5, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Lch/android/api/ui/ChRelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 487
    :cond_0
    iget-object v0, p0, Lch/kingdoms/android/ui/EquipUi$EquipInfoView;->ABILITY_VIEW:Lch/android/api/ui/ChStatView;

    invoke-static {}, Lch/kingdoms/ndk/NdkUiEventManager;->callNativeGetHeroInfo()Lch/kingdoms/ndk/data/HeroStatus;

    move-result-object v1

    invoke-virtual {v0, v1}, Lch/android/api/ui/ChStatView;->init(Lch/kingdoms/ndk/data/HeroStatus;)V

    .line 488
    iput v4, p0, Lch/kingdoms/android/ui/EquipUi$EquipInfoView;->m_touchCount:I

    .line 489
    return-void
.end method

.method public changeToInven(I)V
    .locals 2
    .param p1, "_selectedEquipButtonId"    # I

    .prologue
    .line 492
    invoke-direct {p0, p1}, Lch/kingdoms/android/ui/EquipUi$EquipInfoView;->updateInvenView(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 493
    iget-object v0, p0, Lch/kingdoms/android/ui/EquipUi$EquipInfoView;->TOP_LAY_OUT:Lch/android/api/ui/ChRelativeLayout;

    iget-object v1, p0, Lch/kingdoms/android/ui/EquipUi$EquipInfoView;->m_itemInfoView:Lch/android/api/ui/ChItemInfoView;

    invoke-virtual {v0, v1}, Lch/android/api/ui/ChRelativeLayout;->removeView(Landroid/view/View;)V

    .line 494
    iget-object v0, p0, Lch/kingdoms/android/ui/EquipUi$EquipInfoView;->TOP_LAY_OUT:Lch/android/api/ui/ChRelativeLayout;

    iget-object v1, p0, Lch/kingdoms/android/ui/EquipUi$EquipInfoView;->INVEN_VIEW:Lch/android/api/ui/ChInvenView;

    invoke-virtual {v0, v1}, Lch/android/api/ui/ChRelativeLayout;->removeView(Landroid/view/View;)V

    .line 495
    iget-object v0, p0, Lch/kingdoms/android/ui/EquipUi$EquipInfoView;->TOP_LAY_OUT:Lch/android/api/ui/ChRelativeLayout;

    iget-object v1, p0, Lch/kingdoms/android/ui/EquipUi$EquipInfoView;->INVEN_VIEW:Lch/android/api/ui/ChInvenView;

    invoke-virtual {v0, v1}, Lch/android/api/ui/ChRelativeLayout;->addView(Landroid/view/View;)V

    .line 496
    iget-object v0, p0, Lch/kingdoms/android/ui/EquipUi$EquipInfoView;->INVEN_VIEW:Lch/android/api/ui/ChInvenView;

    invoke-virtual {v0}, Lch/android/api/ui/ChInvenView;->getEquipedItemIndexInFiltered()I

    move-result v0

    iput v0, p0, Lch/kingdoms/android/ui/EquipUi$EquipInfoView;->m_originItem:I

    .line 497
    iget-object v0, p0, Lch/kingdoms/android/ui/EquipUi$EquipInfoView;->INVEN_VIEW:Lch/android/api/ui/ChInvenView;

    invoke-virtual {v0, p0}, Lch/android/api/ui/ChInvenView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 499
    :cond_0
    return-void
.end method

.method public clickEquipedItem(I)V
    .locals 1
    .param p1, "_selectedEquipBtnId"    # I

    .prologue
    .line 470
    iget v0, p0, Lch/kingdoms/android/ui/EquipUi$EquipInfoView;->m_previousBtn:I

    if-ne v0, p1, :cond_0

    .line 471
    invoke-virtual {p0, p1}, Lch/kingdoms/android/ui/EquipUi$EquipInfoView;->changeToInven(I)V

    .line 476
    :goto_0
    iput p1, p0, Lch/kingdoms/android/ui/EquipUi$EquipInfoView;->m_previousBtn:I

    .line 477
    return-void

    .line 474
    :cond_0
    invoke-virtual {p0, p1}, Lch/kingdoms/android/ui/EquipUi$EquipInfoView;->changeToInfo(I)V

    goto :goto_0
.end method

.method public closePopUpItemInfoView()V
    .locals 0

    .prologue
    .line 610
    invoke-static {}, Lch/android/api/ui/ChViewGen;->closePopUpView()V

    .line 611
    return-void
.end method

.method public deleteItem()V
    .locals 3

    .prologue
    .line 646
    iget-object v1, p0, Lch/kingdoms/android/ui/EquipUi$EquipInfoView;->this$0:Lch/kingdoms/android/ui/EquipUi;

    invoke-static {v1}, Lch/kingdoms/android/ui/EquipUi;->access$1(Lch/kingdoms/android/ui/EquipUi;)[Lch/kingdoms/ndk/data/Inven$Item;

    move-result-object v1

    if-eqz v1, :cond_0

    iget v1, p0, Lch/kingdoms/android/ui/EquipUi$EquipInfoView;->m_curItem:I

    const/4 v2, -0x1

    if-le v1, v2, :cond_0

    .line 647
    iget-object v1, p0, Lch/kingdoms/android/ui/EquipUi$EquipInfoView;->INVEN_VIEW:Lch/android/api/ui/ChInvenView;

    iget v2, p0, Lch/kingdoms/android/ui/EquipUi$EquipInfoView;->m_curItem:I

    invoke-virtual {v1, v2}, Lch/android/api/ui/ChInvenView;->getFilteredItemInvenIndex(I)I

    move-result v0

    .line 649
    .local v0, "invenNum":I
    iget-object v1, p0, Lch/kingdoms/android/ui/EquipUi$EquipInfoView;->this$0:Lch/kingdoms/android/ui/EquipUi;

    invoke-static {v1}, Lch/kingdoms/android/ui/EquipUi;->access$1(Lch/kingdoms/android/ui/EquipUi;)[Lch/kingdoms/ndk/data/Inven$Item;

    move-result-object v1

    aget-object v1, v1, v0

    new-instance v2, Lch/kingdoms/android/ui/EquipUi$EquipInfoView$2;

    invoke-direct {v2, p0}, Lch/kingdoms/android/ui/EquipUi$EquipInfoView$2;-><init>(Lch/kingdoms/android/ui/EquipUi$EquipInfoView;)V

    invoke-static {v1, v2}, Lch/kingdoms/ndk/NdkUiEventManager;->deleteItem(Lch/kingdoms/ndk/data/Inven$Item;Landroid/view/View$OnClickListener;)Z

    .line 672
    .end local v0    # "invenNum":I
    :cond_0
    return-void
.end method

.method public equip()V
    .locals 4

    .prologue
    .line 614
    iget-object v1, p0, Lch/kingdoms/android/ui/EquipUi$EquipInfoView;->this$0:Lch/kingdoms/android/ui/EquipUi;

    invoke-static {v1}, Lch/kingdoms/android/ui/EquipUi;->access$0(Lch/kingdoms/android/ui/EquipUi;)[S

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lch/kingdoms/android/ui/EquipUi$EquipInfoView;->this$0:Lch/kingdoms/android/ui/EquipUi;

    invoke-static {v1}, Lch/kingdoms/android/ui/EquipUi;->access$1(Lch/kingdoms/android/ui/EquipUi;)[Lch/kingdoms/ndk/data/Inven$Item;

    move-result-object v1

    if-eqz v1, :cond_0

    iget v1, p0, Lch/kingdoms/android/ui/EquipUi$EquipInfoView;->m_curItem:I

    const/4 v2, -0x1

    if-le v1, v2, :cond_0

    .line 616
    iget-object v1, p0, Lch/kingdoms/android/ui/EquipUi$EquipInfoView;->this$0:Lch/kingdoms/android/ui/EquipUi;

    invoke-static {v1}, Lch/kingdoms/android/ui/EquipUi;->access$1(Lch/kingdoms/android/ui/EquipUi;)[Lch/kingdoms/ndk/data/Inven$Item;

    move-result-object v1

    iget-object v2, p0, Lch/kingdoms/android/ui/EquipUi$EquipInfoView;->INVEN_VIEW:Lch/android/api/ui/ChInvenView;

    iget v3, p0, Lch/kingdoms/android/ui/EquipUi$EquipInfoView;->m_curItem:I

    invoke-virtual {v2, v3}, Lch/android/api/ui/ChInvenView;->getFilteredItemInvenIndex(I)I

    move-result v2

    aget-object v1, v1, v2

    iget v2, p0, Lch/kingdoms/android/ui/EquipUi$EquipInfoView;->m_curType:I

    new-instance v3, Lch/kingdoms/android/ui/EquipUi$EquipInfoView$1;

    invoke-direct {v3, p0}, Lch/kingdoms/android/ui/EquipUi$EquipInfoView$1;-><init>(Lch/kingdoms/android/ui/EquipUi$EquipInfoView;)V

    invoke-static {v1, v2, v3}, Lch/kingdoms/ndk/NdkUiEventManager;->equipItem(Lch/kingdoms/ndk/data/Inven$Item;ILandroid/view/View$OnClickListener;)Z

    move-result v0

    .line 624
    .local v0, "result":Z
    if-eqz v0, :cond_0

    .line 625
    iget-object v1, p0, Lch/kingdoms/android/ui/EquipUi$EquipInfoView;->this$0:Lch/kingdoms/android/ui/EquipUi;

    invoke-static {v1}, Lch/kingdoms/android/ui/EquipUi;->access$7(Lch/kingdoms/android/ui/EquipUi;)V

    .line 626
    iget-object v1, p0, Lch/kingdoms/android/ui/EquipUi$EquipInfoView;->this$0:Lch/kingdoms/android/ui/EquipUi;

    invoke-static {v1}, Lch/kingdoms/android/ui/EquipUi;->access$8(Lch/kingdoms/android/ui/EquipUi;)V

    .line 627
    iget-object v1, p0, Lch/kingdoms/android/ui/EquipUi$EquipInfoView;->INVEN_VIEW:Lch/android/api/ui/ChInvenView;

    iget-object v2, p0, Lch/kingdoms/android/ui/EquipUi$EquipInfoView;->this$0:Lch/kingdoms/android/ui/EquipUi;

    invoke-static {v2}, Lch/kingdoms/android/ui/EquipUi;->access$0(Lch/kingdoms/android/ui/EquipUi;)[S

    move-result-object v2

    iget-object v3, p0, Lch/kingdoms/android/ui/EquipUi$EquipInfoView;->this$0:Lch/kingdoms/android/ui/EquipUi;

    invoke-static {v3}, Lch/kingdoms/android/ui/EquipUi;->access$1(Lch/kingdoms/android/ui/EquipUi;)[Lch/kingdoms/ndk/data/Inven$Item;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lch/android/api/ui/ChInvenView;->update([S[Lch/kingdoms/ndk/data/Inven$Item;)Z

    .line 628
    iget-object v1, p0, Lch/kingdoms/android/ui/EquipUi$EquipInfoView;->INVEN_VIEW:Lch/android/api/ui/ChInvenView;

    invoke-virtual {v1, p0}, Lch/android/api/ui/ChInvenView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 629
    invoke-static {}, Lch/android/api/ui/ChViewGen;->closePopUpView()V

    .line 630
    iget-object v1, p0, Lch/kingdoms/android/ui/EquipUi$EquipInfoView;->INVEN_VIEW:Lch/android/api/ui/ChInvenView;

    invoke-virtual {v1}, Lch/android/api/ui/ChInvenView;->getEquipedItemIndexInFiltered()I

    move-result v1

    iput v1, p0, Lch/kingdoms/android/ui/EquipUi$EquipInfoView;->m_originItem:I

    .line 631
    iget-object v1, p0, Lch/kingdoms/android/ui/EquipUi$EquipInfoView;->ABILITY_VIEW:Lch/android/api/ui/ChStatView;

    invoke-static {}, Lch/kingdoms/ndk/NdkUiEventManager;->callNativeGetHeroInfo()Lch/kingdoms/ndk/data/HeroStatus;

    move-result-object v2

    invoke-virtual {v1, v2}, Lch/android/api/ui/ChStatView;->init(Lch/kingdoms/ndk/data/HeroStatus;)V

    .line 634
    .end local v0    # "result":Z
    :cond_0
    return-void
.end method

.method public init()V
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 446
    iput v2, p0, Lch/kingdoms/android/ui/EquipUi$EquipInfoView;->m_previousBtn:I

    .line 447
    iput v2, p0, Lch/kingdoms/android/ui/EquipUi$EquipInfoView;->m_curType:I

    .line 448
    iput v2, p0, Lch/kingdoms/android/ui/EquipUi$EquipInfoView;->m_curItem:I

    .line 449
    iput v2, p0, Lch/kingdoms/android/ui/EquipUi$EquipInfoView;->m_originItem:I

    .line 451
    const/4 v1, 0x0

    iput v1, p0, Lch/kingdoms/android/ui/EquipUi$EquipInfoView;->m_touchCount:I

    .line 452
    iput v2, p0, Lch/kingdoms/android/ui/EquipUi$EquipInfoView;->m_previousId:I

    .line 453
    iget-object v1, p0, Lch/kingdoms/android/ui/EquipUi$EquipInfoView;->TOP_LAY_OUT:Lch/android/api/ui/ChRelativeLayout;

    iget-object v2, p0, Lch/kingdoms/android/ui/EquipUi$EquipInfoView;->m_itemInfoView:Lch/android/api/ui/ChItemInfoView;

    invoke-virtual {v1, v2}, Lch/android/api/ui/ChRelativeLayout;->removeView(Landroid/view/View;)V

    .line 454
    iget-object v1, p0, Lch/kingdoms/android/ui/EquipUi$EquipInfoView;->TOP_LAY_OUT:Lch/android/api/ui/ChRelativeLayout;

    iget-object v2, p0, Lch/kingdoms/android/ui/EquipUi$EquipInfoView;->INVEN_VIEW:Lch/android/api/ui/ChInvenView;

    invoke-virtual {v1, v2}, Lch/android/api/ui/ChRelativeLayout;->removeView(Landroid/view/View;)V

    .line 455
    iget-object v1, p0, Lch/kingdoms/android/ui/EquipUi$EquipInfoView;->ABILITY_VIEW:Lch/android/api/ui/ChStatView;

    invoke-static {}, Lch/kingdoms/ndk/NdkUiEventManager;->callNativeGetHeroInfo()Lch/kingdoms/ndk/data/HeroStatus;

    move-result-object v2

    invoke-virtual {v1, v2}, Lch/android/api/ui/ChStatView;->init(Lch/kingdoms/ndk/data/HeroStatus;)V

    .line 457
    invoke-static {}, Lch/kingdoms/ndk/NdkUiEventManager;->callNativeGetHeroInfo()Lch/kingdoms/ndk/data/HeroStatus;

    move-result-object v0

    .line 458
    .local v0, "hero":Lch/kingdoms/ndk/data/HeroStatus;
    invoke-virtual {v0}, Lch/kingdoms/ndk/data/HeroStatus;->getJob()I

    move-result v1

    iput v1, p0, Lch/kingdoms/android/ui/EquipUi$EquipInfoView;->heroJob:I

    .line 459
    iget v1, p0, Lch/kingdoms/android/ui/EquipUi$EquipInfoView;->heroJob:I

    const/4 v2, 0x5

    if-eq v1, v2, :cond_0

    iget v1, p0, Lch/kingdoms/android/ui/EquipUi$EquipInfoView;->heroJob:I

    const/4 v2, 0x6

    if-ne v1, v2, :cond_1

    :cond_0
    invoke-virtual {v0}, Lch/kingdoms/ndk/data/HeroStatus;->getTmpJob()I

    move-result v1

    :goto_0
    iput v1, p0, Lch/kingdoms/android/ui/EquipUi$EquipInfoView;->heroJob:I

    .line 460
    return-void

    .line 459
    :cond_1
    iget v1, p0, Lch/kingdoms/android/ui/EquipUi$EquipInfoView;->heroJob:I

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 7
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v5, 0x1

    .line 567
    invoke-static {}, Lch/android/api/ui/ChViewGen;->getEventLayerLevel()I

    move-result v3

    iget-object v4, p0, Lch/kingdoms/android/ui/EquipUi$EquipInfoView;->this$0:Lch/kingdoms/android/ui/EquipUi;

    invoke-static {v4}, Lch/kingdoms/android/ui/EquipUi;->access$5(Lch/kingdoms/android/ui/EquipUi;)I

    move-result v4

    if-ne v3, v4, :cond_2

    .line 568
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 572
    .local v0, "index":I
    iget v3, p0, Lch/kingdoms/android/ui/EquipUi$EquipInfoView;->m_touchCount:I

    if-eqz v3, :cond_0

    iget v3, p0, Lch/kingdoms/android/ui/EquipUi$EquipInfoView;->m_previousId:I

    if-eq v0, v3, :cond_4

    .line 573
    :cond_0
    iput v5, p0, Lch/kingdoms/android/ui/EquipUi$EquipInfoView;->m_touchCount:I

    .line 574
    iget-object v3, p0, Lch/kingdoms/android/ui/EquipUi$EquipInfoView;->INVEN_VIEW:Lch/android/api/ui/ChInvenView;

    invoke-virtual {v3, v0}, Lch/android/api/ui/ChInvenView;->setToSelect(I)V

    .line 575
    iput v0, p0, Lch/kingdoms/android/ui/EquipUi$EquipInfoView;->m_previousId:I

    .line 577
    iget-object v3, p0, Lch/kingdoms/android/ui/EquipUi$EquipInfoView;->INVEN_VIEW:Lch/android/api/ui/ChInvenView;

    invoke-virtual {v3}, Lch/android/api/ui/ChInvenView;->getEquipedItemIndexInFiltered()I

    move-result v3

    iput v3, p0, Lch/kingdoms/android/ui/EquipUi$EquipInfoView;->m_originItem:I

    .line 578
    iget v3, p0, Lch/kingdoms/android/ui/EquipUi$EquipInfoView;->m_originItem:I

    if-eq v3, v0, :cond_3

    .line 584
    iget-object v3, p0, Lch/kingdoms/android/ui/EquipUi$EquipInfoView;->INVEN_VIEW:Lch/android/api/ui/ChInvenView;

    invoke-virtual {v3, v0}, Lch/android/api/ui/ChInvenView;->getFilteredItem(I)Lch/kingdoms/ndk/data/Inven$Item;

    move-result-object v1

    .line 585
    .local v1, "item":Lch/kingdoms/ndk/data/Inven$Item;
    iget-boolean v3, v1, Lch/kingdoms/ndk/data/Inven$Item;->identity:Z

    if-eqz v3, :cond_1

    .line 586
    iget v3, p0, Lch/kingdoms/android/ui/EquipUi$EquipInfoView;->m_curType:I

    iget v4, v1, Lch/kingdoms/ndk/data/Inven$Item;->index:I

    invoke-static {v3, v4}, Lch/kingdoms/ndk/NdkUiEventManager;->callNativeGetTempHeroInfo(II)Lch/kingdoms/ndk/data/HeroStatus;

    move-result-object v2

    .line 587
    .local v2, "newest":Lch/kingdoms/ndk/data/HeroStatus;
    iget-object v3, p0, Lch/kingdoms/android/ui/EquipUi$EquipInfoView;->ABILITY_VIEW:Lch/android/api/ui/ChStatView;

    invoke-virtual {v3, v2}, Lch/android/api/ui/ChStatView;->update(Lch/kingdoms/ndk/data/HeroStatus;)V

    .line 589
    .end local v2    # "newest":Lch/kingdoms/ndk/data/HeroStatus;
    :cond_1
    sget-boolean v3, Lch/android/api/util/Consts;->DEBUG:Z

    if-eqz v3, :cond_2

    .line 590
    const-string v3, "KD"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "m_originItem:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v5, p0, Lch/kingdoms/android/ui/EquipUi$EquipInfoView;->m_originItem:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",index:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",m_curType"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lch/kingdoms/android/ui/EquipUi$EquipInfoView;->m_curType:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 607
    .end local v0    # "index":I
    .end local v1    # "item":Lch/kingdoms/ndk/data/Inven$Item;
    :cond_2
    :goto_0
    return-void

    .line 594
    .restart local v0    # "index":I
    :cond_3
    iget-object v3, p0, Lch/kingdoms/android/ui/EquipUi$EquipInfoView;->ABILITY_VIEW:Lch/android/api/ui/ChStatView;

    invoke-virtual {v3}, Lch/android/api/ui/ChStatView;->init()V

    goto :goto_0

    .line 597
    :cond_4
    iget v3, p0, Lch/kingdoms/android/ui/EquipUi$EquipInfoView;->m_touchCount:I

    if-ne v3, v5, :cond_2

    iget v3, p0, Lch/kingdoms/android/ui/EquipUi$EquipInfoView;->m_previousId:I

    if-ne v0, v3, :cond_2

    .line 598
    iput v0, p0, Lch/kingdoms/android/ui/EquipUi$EquipInfoView;->m_curItem:I

    .line 600
    iget-object v3, p0, Lch/kingdoms/android/ui/EquipUi$EquipInfoView;->this$0:Lch/kingdoms/android/ui/EquipUi;

    invoke-static {v3}, Lch/kingdoms/android/ui/EquipUi;->access$6(Lch/kingdoms/android/ui/EquipUi;)Landroid/app/Activity;

    move-result-object v3

    iget-object v4, p0, Lch/kingdoms/android/ui/EquipUi$EquipInfoView;->INVEN_VIEW:Lch/android/api/ui/ChInvenView;

    invoke-virtual {v4, v0}, Lch/android/api/ui/ChInvenView;->getFilteredItem(I)Lch/kingdoms/ndk/data/Inven$Item;

    move-result-object v4

    iget-object v5, p0, Lch/kingdoms/android/ui/EquipUi$EquipInfoView;->this$0:Lch/kingdoms/android/ui/EquipUi;

    invoke-static {v5}, Lch/kingdoms/android/ui/EquipUi;->access$2(Lch/kingdoms/android/ui/EquipUi;)Lch/android/api/util/DisplayInfo;

    move-result-object v5

    iget-object v6, p0, Lch/kingdoms/android/ui/EquipUi$EquipInfoView;->this$0:Lch/kingdoms/android/ui/EquipUi;

    invoke-static {v3, v4, v5, v6}, Lch/android/api/ui/ChViewGen;->popUpItemInfoView(Landroid/app/Activity;Lch/kingdoms/ndk/data/Inven$Item;Lch/android/api/util/DisplayInfo;Landroid/view/View$OnClickListener;)Landroid/view/View;

    .line 602
    iget-object v3, p0, Lch/kingdoms/android/ui/EquipUi$EquipInfoView;->INVEN_VIEW:Lch/android/api/ui/ChInvenView;

    invoke-virtual {v3, v0}, Lch/android/api/ui/ChInvenView;->setToUnselect(I)V

    .line 603
    const/4 v3, 0x0

    iput v3, p0, Lch/kingdoms/android/ui/EquipUi$EquipInfoView;->m_touchCount:I

    .line 604
    const/4 v3, -0x1

    iput v3, p0, Lch/kingdoms/android/ui/EquipUi$EquipInfoView;->m_previousId:I

    goto :goto_0
.end method

.method public updateInven([S[Lch/kingdoms/ndk/data/Inven$Item;)V
    .locals 3
    .param p1, "equipedItemIndices"    # [S
    .param p2, "invenItems"    # [Lch/kingdoms/ndk/data/Inven$Item;

    .prologue
    .line 463
    iget-object v0, p0, Lch/kingdoms/android/ui/EquipUi$EquipInfoView;->this$0:Lch/kingdoms/android/ui/EquipUi;

    invoke-static {v0, p1}, Lch/kingdoms/android/ui/EquipUi;->access$3(Lch/kingdoms/android/ui/EquipUi;[S)V

    .line 464
    iget-object v0, p0, Lch/kingdoms/android/ui/EquipUi$EquipInfoView;->this$0:Lch/kingdoms/android/ui/EquipUi;

    invoke-static {v0, p2}, Lch/kingdoms/android/ui/EquipUi;->access$4(Lch/kingdoms/android/ui/EquipUi;[Lch/kingdoms/ndk/data/Inven$Item;)V

    .line 465
    iget-object v0, p0, Lch/kingdoms/android/ui/EquipUi$EquipInfoView;->INVEN_VIEW:Lch/android/api/ui/ChInvenView;

    iget-object v1, p0, Lch/kingdoms/android/ui/EquipUi$EquipInfoView;->this$0:Lch/kingdoms/android/ui/EquipUi;

    invoke-static {v1}, Lch/kingdoms/android/ui/EquipUi;->access$0(Lch/kingdoms/android/ui/EquipUi;)[S

    move-result-object v1

    iget-object v2, p0, Lch/kingdoms/android/ui/EquipUi$EquipInfoView;->this$0:Lch/kingdoms/android/ui/EquipUi;

    invoke-static {v2}, Lch/kingdoms/android/ui/EquipUi;->access$1(Lch/kingdoms/android/ui/EquipUi;)[Lch/kingdoms/ndk/data/Inven$Item;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lch/android/api/ui/ChInvenView;->update([S[Lch/kingdoms/ndk/data/Inven$Item;)Z

    .line 466
    iget-object v0, p0, Lch/kingdoms/android/ui/EquipUi$EquipInfoView;->INVEN_VIEW:Lch/android/api/ui/ChInvenView;

    invoke-virtual {v0, p0}, Lch/android/api/ui/ChInvenView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 467
    return-void
.end method
