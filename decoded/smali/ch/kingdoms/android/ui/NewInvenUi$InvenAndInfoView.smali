.class Lch/kingdoms/android/ui/NewInvenUi$InvenAndInfoView;
.super Lch/android/api/ui/ChRelativeLayout;
.source "NewInvenUi.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lch/kingdoms/android/ui/NewInvenUi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "InvenAndInfoView"
.end annotation


# instance fields
.field private final FILTER_TAB_VIEW:Lch/kingdoms/android/ui/NewInvenUi$FilterTabView;

.field private final INFO_VIEW:Lch/kingdoms/android/ui/NewInvenUi$InfoView;

.field private final INVEN_VIEW:Lch/android/api/ui/ChInvenView;

.field private final ITEMINFO_LAYOUT:Lch/android/api/ui/ChLinearLayout;

.field private itemInfoView:Lch/android/api/ui/ChItemInfoView;

.field private m_equipedItemIndices:[S

.field private m_invenItems:[Lch/kingdoms/ndk/data/Inven$Item;

.field private selectedItem:Lch/kingdoms/ndk/data/Inven$Item;

.field final synthetic this$0:Lch/kingdoms/android/ui/NewInvenUi;


# direct methods
.method public constructor <init>(Lch/kingdoms/android/ui/NewInvenUi;Landroid/content/Context;)V
    .locals 12
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    const/4 v6, 0x0

    const/16 v5, 0x11

    const/4 v11, 0x0

    const/4 v10, -0x1

    const/4 v9, -0x2

    .line 214
    iput-object p1, p0, Lch/kingdoms/android/ui/NewInvenUi$InvenAndInfoView;->this$0:Lch/kingdoms/android/ui/NewInvenUi;

    .line 215
    invoke-direct {p0, p2}, Lch/android/api/ui/ChRelativeLayout;-><init>(Landroid/content/Context;)V

    .line 217
    const v4, 0x7f0202bb

    invoke-super {p0, v4}, Lch/android/api/ui/ChRelativeLayout;->setBackgroundResource(I)V

    .line 219
    new-instance v2, Lch/android/api/ui/ChLinearLayout;

    invoke-direct {v2, p2}, Lch/android/api/ui/ChLinearLayout;-><init>(Landroid/content/Context;)V

    .line 220
    .local v2, "mainLayout":Lch/android/api/ui/ChLinearLayout;
    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Lch/android/api/ui/ChLinearLayout;->setOrientation(I)V

    .line 222
    new-instance v4, Lch/kingdoms/android/ui/NewInvenUi$FilterTabView;

    invoke-direct {v4, p1, p2}, Lch/kingdoms/android/ui/NewInvenUi$FilterTabView;-><init>(Lch/kingdoms/android/ui/NewInvenUi;Landroid/content/Context;)V

    iput-object v4, p0, Lch/kingdoms/android/ui/NewInvenUi$InvenAndInfoView;->FILTER_TAB_VIEW:Lch/kingdoms/android/ui/NewInvenUi$FilterTabView;

    .line 223
    new-instance v4, Lch/kingdoms/android/ui/NewInvenUi$InfoView;

    invoke-direct {v4, p1, p2}, Lch/kingdoms/android/ui/NewInvenUi$InfoView;-><init>(Lch/kingdoms/android/ui/NewInvenUi;Landroid/content/Context;)V

    iput-object v4, p0, Lch/kingdoms/android/ui/NewInvenUi$InvenAndInfoView;->INFO_VIEW:Lch/kingdoms/android/ui/NewInvenUi$InfoView;

    .line 225
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v9, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 226
    .local v1, "llp":Landroid/widget/LinearLayout$LayoutParams;
    iput v5, v1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 227
    iget-object v4, p0, Lch/kingdoms/android/ui/NewInvenUi$InvenAndInfoView;->FILTER_TAB_VIEW:Lch/kingdoms/android/ui/NewInvenUi$FilterTabView;

    invoke-virtual {v2, v4, v1}, Lch/android/api/ui/ChLinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 230
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    .end local v1    # "llp":Landroid/widget/LinearLayout$LayoutParams;
    invoke-direct {v1, v9, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 231
    .restart local v1    # "llp":Landroid/widget/LinearLayout$LayoutParams;
    iput v5, v1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 232
    iget-object v4, p0, Lch/kingdoms/android/ui/NewInvenUi$InvenAndInfoView;->INFO_VIEW:Lch/kingdoms/android/ui/NewInvenUi$InfoView;

    invoke-virtual {v2, v4, v1}, Lch/android/api/ui/ChLinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 235
    new-instance v4, Lch/android/api/ui/ChInvenView;

    invoke-static {p1}, Lch/kingdoms/android/ui/NewInvenUi;->access$1(Lch/kingdoms/android/ui/NewInvenUi;)Lch/android/api/util/DisplayInfo;

    move-result-object v5

    iget v5, v5, Lch/android/api/util/DisplayInfo;->density:F

    invoke-direct {v4, p2, v6, v6, v5}, Lch/android/api/ui/ChInvenView;-><init>(Landroid/content/Context;[S[Lch/kingdoms/ndk/data/Inven$Item;F)V

    iput-object v4, p0, Lch/kingdoms/android/ui/NewInvenUi$InvenAndInfoView;->INVEN_VIEW:Lch/android/api/ui/ChInvenView;

    .line 237
    iget-object v4, p0, Lch/kingdoms/android/ui/NewInvenUi$InvenAndInfoView;->INVEN_VIEW:Lch/android/api/ui/ChInvenView;

    const/high16 v5, 0x41700000    # 15.0f

    invoke-static {p1}, Lch/kingdoms/android/ui/NewInvenUi;->access$1(Lch/kingdoms/android/ui/NewInvenUi;)Lch/android/api/util/DisplayInfo;

    move-result-object v6

    iget v6, v6, Lch/android/api/util/DisplayInfo;->density:F

    mul-float/2addr v5, v6

    float-to-int v5, v5

    const/high16 v6, 0x41400000    # 12.0f

    invoke-static {p1}, Lch/kingdoms/android/ui/NewInvenUi;->access$1(Lch/kingdoms/android/ui/NewInvenUi;)Lch/android/api/util/DisplayInfo;

    move-result-object v7

    iget v7, v7, Lch/android/api/util/DisplayInfo;->density:F

    mul-float/2addr v6, v7

    float-to-int v6, v6

    const/high16 v7, 0x40a00000    # 5.0f

    invoke-static {p1}, Lch/kingdoms/android/ui/NewInvenUi;->access$1(Lch/kingdoms/android/ui/NewInvenUi;)Lch/android/api/util/DisplayInfo;

    move-result-object v8

    iget v8, v8, Lch/android/api/util/DisplayInfo;->density:F

    mul-float/2addr v7, v8

    float-to-int v7, v7

    invoke-virtual {v4, v5, v6, v7, v11}, Lch/android/api/ui/ChInvenView;->setPadding(IIII)V

    .line 238
    iget-object v4, p0, Lch/kingdoms/android/ui/NewInvenUi$InvenAndInfoView;->INVEN_VIEW:Lch/android/api/ui/ChInvenView;

    invoke-virtual {v4, p0}, Lch/android/api/ui/ChInvenView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 240
    new-instance v4, Lch/android/api/ui/ChLinearLayout;

    invoke-direct {v4, p2}, Lch/android/api/ui/ChLinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lch/kingdoms/android/ui/NewInvenUi$InvenAndInfoView;->ITEMINFO_LAYOUT:Lch/android/api/ui/ChLinearLayout;

    .line 241
    iget-object v4, p0, Lch/kingdoms/android/ui/NewInvenUi$InvenAndInfoView;->ITEMINFO_LAYOUT:Lch/android/api/ui/ChLinearLayout;

    const v5, 0x7f0200a5

    invoke-virtual {v4, v5}, Lch/android/api/ui/ChLinearLayout;->setBackgroundResource(I)V

    .line 243
    new-instance v0, Lch/android/api/ui/ChLinearLayout;

    invoke-direct {v0, p2}, Lch/android/api/ui/ChLinearLayout;-><init>(Landroid/content/Context;)V

    .line 244
    .local v0, "ll":Lch/android/api/ui/ChLinearLayout;
    invoke-virtual {v0, v11}, Lch/android/api/ui/ChLinearLayout;->setOrientation(I)V

    .line 245
    iget-object v4, p0, Lch/kingdoms/android/ui/NewInvenUi$InvenAndInfoView;->INVEN_VIEW:Lch/android/api/ui/ChInvenView;

    new-instance v5, Landroid/widget/RelativeLayout$LayoutParams;

    const/high16 v6, 0x432c0000    # 172.0f

    invoke-static {p1}, Lch/kingdoms/android/ui/NewInvenUi;->access$1(Lch/kingdoms/android/ui/NewInvenUi;)Lch/android/api/util/DisplayInfo;

    move-result-object v7

    iget v7, v7, Lch/android/api/util/DisplayInfo;->density:F

    mul-float/2addr v6, v7

    float-to-int v6, v6

    const/high16 v7, 0x43140000    # 148.0f

    invoke-static {p1}, Lch/kingdoms/android/ui/NewInvenUi;->access$1(Lch/kingdoms/android/ui/NewInvenUi;)Lch/android/api/util/DisplayInfo;

    move-result-object v8

    iget v8, v8, Lch/android/api/util/DisplayInfo;->density:F

    mul-float/2addr v7, v8

    float-to-int v7, v7

    invoke-direct {v5, v6, v7}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v4, v5}, Lch/android/api/ui/ChLinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 246
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    .end local v1    # "llp":Landroid/widget/LinearLayout$LayoutParams;
    invoke-direct {v1, v9, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 247
    .restart local v1    # "llp":Landroid/widget/LinearLayout$LayoutParams;
    iget-object v4, p0, Lch/kingdoms/android/ui/NewInvenUi$InvenAndInfoView;->ITEMINFO_LAYOUT:Lch/android/api/ui/ChLinearLayout;

    invoke-virtual {v0, v4, v1}, Lch/android/api/ui/ChLinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 248
    invoke-virtual {v2, v0}, Lch/android/api/ui/ChLinearLayout;->addView(Landroid/view/View;)V

    .line 250
    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v3, v10, v10}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 251
    .local v3, "rlp":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v4, 0xd

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 253
    invoke-virtual {p0, v2, v3}, Lch/kingdoms/android/ui/NewInvenUi$InvenAndInfoView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 255
    return-void
.end method

.method static synthetic access$0(Lch/kingdoms/android/ui/NewInvenUi$InvenAndInfoView;)Lch/kingdoms/android/ui/NewInvenUi$InfoView;
    .locals 1

    .prologue
    .line 205
    iget-object v0, p0, Lch/kingdoms/android/ui/NewInvenUi$InvenAndInfoView;->INFO_VIEW:Lch/kingdoms/android/ui/NewInvenUi$InfoView;

    return-object v0
.end method

.method static synthetic access$1(Lch/kingdoms/android/ui/NewInvenUi$InvenAndInfoView;)[Lch/kingdoms/ndk/data/Inven$Item;
    .locals 1

    .prologue
    .line 210
    iget-object v0, p0, Lch/kingdoms/android/ui/NewInvenUi$InvenAndInfoView;->m_invenItems:[Lch/kingdoms/ndk/data/Inven$Item;

    return-object v0
.end method

.method static synthetic access$2(Lch/kingdoms/android/ui/NewInvenUi$InvenAndInfoView;)Lch/android/api/ui/ChInvenView;
    .locals 1

    .prologue
    .line 206
    iget-object v0, p0, Lch/kingdoms/android/ui/NewInvenUi$InvenAndInfoView;->INVEN_VIEW:Lch/android/api/ui/ChInvenView;

    return-object v0
.end method

.method static synthetic access$3(Lch/kingdoms/android/ui/NewInvenUi$InvenAndInfoView;)[S
    .locals 1

    .prologue
    .line 209
    iget-object v0, p0, Lch/kingdoms/android/ui/NewInvenUi$InvenAndInfoView;->m_equipedItemIndices:[S

    return-object v0
.end method

.method static synthetic access$4(Lch/kingdoms/android/ui/NewInvenUi$InvenAndInfoView;)Lch/android/api/ui/ChLinearLayout;
    .locals 1

    .prologue
    .line 207
    iget-object v0, p0, Lch/kingdoms/android/ui/NewInvenUi$InvenAndInfoView;->ITEMINFO_LAYOUT:Lch/android/api/ui/ChLinearLayout;

    return-object v0
.end method

.method static synthetic access$5(Lch/kingdoms/android/ui/NewInvenUi$InvenAndInfoView;)Lch/kingdoms/android/ui/NewInvenUi;
    .locals 1

    .prologue
    .line 203
    iget-object v0, p0, Lch/kingdoms/android/ui/NewInvenUi$InvenAndInfoView;->this$0:Lch/kingdoms/android/ui/NewInvenUi;

    return-object v0
.end method

.method private getItemType(Lch/kingdoms/ndk/data/Inven$Item;)I
    .locals 4
    .param p1, "_item"    # Lch/kingdoms/ndk/data/Inven$Item;

    .prologue
    const/4 v0, 0x3

    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 497
    iget v3, p1, Lch/kingdoms/ndk/data/Inven$Item;->mainType:I

    if-ne v3, v1, :cond_0

    iget v3, p1, Lch/kingdoms/ndk/data/Inven$Item;->subType:I

    if-nez v3, :cond_0

    .line 514
    :goto_0
    return v0

    .line 500
    :cond_0
    iget v3, p1, Lch/kingdoms/ndk/data/Inven$Item;->mainType:I

    if-ne v3, v1, :cond_5

    iget v3, p1, Lch/kingdoms/ndk/data/Inven$Item;->subType:I

    if-eq v3, v1, :cond_1

    iget v3, p1, Lch/kingdoms/ndk/data/Inven$Item;->subType:I

    if-ne v3, v2, :cond_5

    .line 501
    :cond_1
    iget v3, p1, Lch/kingdoms/ndk/data/Inven$Item;->secondSubType:I

    if-nez v3, :cond_2

    .line 502
    const/4 v0, 0x0

    goto :goto_0

    .line 504
    :cond_2
    iget v3, p1, Lch/kingdoms/ndk/data/Inven$Item;->secondSubType:I

    if-ne v3, v1, :cond_3

    move v0, v1

    .line 505
    goto :goto_0

    .line 507
    :cond_3
    iget v1, p1, Lch/kingdoms/ndk/data/Inven$Item;->secondSubType:I

    if-ne v1, v2, :cond_4

    .line 508
    const/4 v0, 0x4

    goto :goto_0

    .line 510
    :cond_4
    iget v1, p1, Lch/kingdoms/ndk/data/Inven$Item;->secondSubType:I

    if-ne v1, v0, :cond_5

    .line 511
    const/4 v0, 0x6

    goto :goto_0

    :cond_5
    move v0, v2

    .line 514
    goto :goto_0
.end method

.method private useIdentity(Lch/kingdoms/ndk/data/Inven$Item;)V
    .locals 7
    .param p1, "identityItem"    # Lch/kingdoms/ndk/data/Inven$Item;

    .prologue
    const/high16 v6, 0x41700000    # 15.0f

    .line 647
    invoke-static {}, Lch/kingdoms/ndk/NdkUiEventManager;->isIdentityUsable()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 648
    new-instance v0, Lch/android/api/ui/ChInvenView;

    iget-object v2, p0, Lch/kingdoms/android/ui/NewInvenUi$InvenAndInfoView;->this$0:Lch/kingdoms/android/ui/NewInvenUi;

    invoke-static {v2}, Lch/kingdoms/android/ui/NewInvenUi;->access$0(Lch/kingdoms/android/ui/NewInvenUi;)Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    iget-object v4, p0, Lch/kingdoms/android/ui/NewInvenUi$InvenAndInfoView;->m_invenItems:[Lch/kingdoms/ndk/data/Inven$Item;

    iget-object v5, p0, Lch/kingdoms/android/ui/NewInvenUi$InvenAndInfoView;->this$0:Lch/kingdoms/android/ui/NewInvenUi;

    invoke-static {v5}, Lch/kingdoms/android/ui/NewInvenUi;->access$1(Lch/kingdoms/android/ui/NewInvenUi;)Lch/android/api/util/DisplayInfo;

    move-result-object v5

    iget v5, v5, Lch/android/api/util/DisplayInfo;->density:F

    invoke-direct {v0, v2, v3, v4, v5}, Lch/android/api/ui/ChInvenView;-><init>(Landroid/content/Context;[S[Lch/kingdoms/ndk/data/Inven$Item;F)V

    .line 649
    .local v0, "invenView":Lch/android/api/ui/ChInvenView;
    const v2, -0xfffffe7

    const/4 v3, 0x4

    invoke-virtual {v0, v2, v3}, Lch/android/api/ui/ChInvenView;->update(II)Z

    .line 650
    iget-object v2, p0, Lch/kingdoms/android/ui/NewInvenUi$InvenAndInfoView;->this$0:Lch/kingdoms/android/ui/NewInvenUi;

    invoke-static {v2}, Lch/kingdoms/android/ui/NewInvenUi;->access$1(Lch/kingdoms/android/ui/NewInvenUi;)Lch/android/api/util/DisplayInfo;

    move-result-object v2

    iget v2, v2, Lch/android/api/util/DisplayInfo;->density:F

    mul-float/2addr v2, v6

    float-to-int v2, v2

    iget-object v3, p0, Lch/kingdoms/android/ui/NewInvenUi$InvenAndInfoView;->this$0:Lch/kingdoms/android/ui/NewInvenUi;

    invoke-static {v3}, Lch/kingdoms/android/ui/NewInvenUi;->access$1(Lch/kingdoms/android/ui/NewInvenUi;)Lch/android/api/util/DisplayInfo;

    move-result-object v3

    iget v3, v3, Lch/android/api/util/DisplayInfo;->density:F

    mul-float/2addr v3, v6

    float-to-int v3, v3

    iget-object v4, p0, Lch/kingdoms/android/ui/NewInvenUi$InvenAndInfoView;->this$0:Lch/kingdoms/android/ui/NewInvenUi;

    invoke-static {v4}, Lch/kingdoms/android/ui/NewInvenUi;->access$1(Lch/kingdoms/android/ui/NewInvenUi;)Lch/android/api/util/DisplayInfo;

    move-result-object v4

    iget v4, v4, Lch/android/api/util/DisplayInfo;->density:F

    mul-float/2addr v4, v6

    float-to-int v4, v4

    const/4 v5, 0x0

    invoke-virtual {v0, v2, v3, v4, v5}, Lch/android/api/ui/ChInvenView;->setPadding(IIII)V

    .line 652
    iget-object v2, p0, Lch/kingdoms/android/ui/NewInvenUi$InvenAndInfoView;->ITEMINFO_LAYOUT:Lch/android/api/ui/ChLinearLayout;

    invoke-virtual {v2}, Lch/android/api/ui/ChLinearLayout;->removeAllViews()V

    .line 653
    iget-object v2, p0, Lch/kingdoms/android/ui/NewInvenUi$InvenAndInfoView;->ITEMINFO_LAYOUT:Lch/android/api/ui/ChLinearLayout;

    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    const/high16 v4, 0x43700000    # 240.0f

    iget-object v5, p0, Lch/kingdoms/android/ui/NewInvenUi$InvenAndInfoView;->this$0:Lch/kingdoms/android/ui/NewInvenUi;

    invoke-static {v5}, Lch/kingdoms/android/ui/NewInvenUi;->access$1(Lch/kingdoms/android/ui/NewInvenUi;)Lch/android/api/util/DisplayInfo;

    move-result-object v5

    iget v5, v5, Lch/android/api/util/DisplayInfo;->density:F

    mul-float/2addr v4, v5

    float-to-int v4, v4

    const/high16 v5, 0x43140000    # 148.0f

    iget-object v6, p0, Lch/kingdoms/android/ui/NewInvenUi$InvenAndInfoView;->this$0:Lch/kingdoms/android/ui/NewInvenUi;

    invoke-static {v6}, Lch/kingdoms/android/ui/NewInvenUi;->access$1(Lch/kingdoms/android/ui/NewInvenUi;)Lch/android/api/util/DisplayInfo;

    move-result-object v6

    iget v6, v6, Lch/android/api/util/DisplayInfo;->density:F

    mul-float/2addr v5, v6

    float-to-int v5, v5

    invoke-direct {v3, v4, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v0, v3}, Lch/android/api/ui/ChLinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 654
    invoke-static {}, Lch/android/api/ui/ChViewGen;->getEventLayerLevel()I

    move-result v1

    .line 655
    .local v1, "layerLevel":I
    new-instance v2, Lch/kingdoms/android/ui/NewInvenUi$InvenAndInfoView$6;

    invoke-direct {v2, p0, v1, v0, p1}, Lch/kingdoms/android/ui/NewInvenUi$InvenAndInfoView$6;-><init>(Lch/kingdoms/android/ui/NewInvenUi$InvenAndInfoView;ILch/android/api/ui/ChInvenView;Lch/kingdoms/ndk/data/Inven$Item;)V

    invoke-virtual {v0, v2}, Lch/android/api/ui/ChInvenView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 703
    .end local v0    # "invenView":Lch/android/api/ui/ChInvenView;
    .end local v1    # "layerLevel":I
    :goto_0
    return-void

    .line 701
    :cond_0
    iget-object v2, p0, Lch/kingdoms/android/ui/NewInvenUi$InvenAndInfoView;->this$0:Lch/kingdoms/android/ui/NewInvenUi;

    invoke-static {v2}, Lch/kingdoms/android/ui/NewInvenUi;->access$0(Lch/kingdoms/android/ui/NewInvenUi;)Landroid/app/Activity;

    move-result-object v2

    const/16 v3, 0x39

    invoke-static {v3}, Lch/kingdoms/ndk/NdkTextLoader;->getGameMenuTxt(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lch/android/api/ui/ChViewGen;->popUpOkView(Landroid/app/Activity;Ljava/lang/String;)Landroid/view/View;

    goto :goto_0
.end method

.method private useSocketOpen(Lch/kingdoms/ndk/data/Inven$Item;)V
    .locals 11
    .param p1, "socketOpenItem"    # Lch/kingdoms/ndk/data/Inven$Item;

    .prologue
    const/4 v5, 0x0

    const/high16 v10, 0x41700000    # 15.0f

    .line 588
    const/4 v1, 0x0

    .line 589
    .local v1, "isExist":Z
    iget-object v6, p0, Lch/kingdoms/android/ui/NewInvenUi$InvenAndInfoView;->m_invenItems:[Lch/kingdoms/ndk/data/Inven$Item;

    array-length v7, v6

    move v4, v5

    :goto_0
    if-lt v4, v7, :cond_0

    .line 596
    :goto_1
    if-eqz v1, :cond_3

    .line 597
    new-instance v0, Lch/android/api/ui/ChInvenView;

    invoke-virtual {p0}, Lch/kingdoms/android/ui/NewInvenUi$InvenAndInfoView;->getContext()Landroid/content/Context;

    move-result-object v4

    const/4 v6, 0x0

    iget-object v7, p0, Lch/kingdoms/android/ui/NewInvenUi$InvenAndInfoView;->m_invenItems:[Lch/kingdoms/ndk/data/Inven$Item;

    iget-object v8, p0, Lch/kingdoms/android/ui/NewInvenUi$InvenAndInfoView;->this$0:Lch/kingdoms/android/ui/NewInvenUi;

    invoke-static {v8}, Lch/kingdoms/android/ui/NewInvenUi;->access$1(Lch/kingdoms/android/ui/NewInvenUi;)Lch/android/api/util/DisplayInfo;

    move-result-object v8

    iget v8, v8, Lch/android/api/util/DisplayInfo;->density:F

    invoke-direct {v0, v4, v6, v7, v8}, Lch/android/api/ui/ChInvenView;-><init>(Landroid/content/Context;[S[Lch/kingdoms/ndk/data/Inven$Item;F)V

    .line 598
    .local v0, "invenView":Lch/android/api/ui/ChInvenView;
    const v4, -0xfffffe0

    const/4 v6, 0x4

    invoke-virtual {v0, v4, v6}, Lch/android/api/ui/ChInvenView;->update(II)Z

    .line 599
    iget-object v4, p0, Lch/kingdoms/android/ui/NewInvenUi$InvenAndInfoView;->this$0:Lch/kingdoms/android/ui/NewInvenUi;

    invoke-static {v4}, Lch/kingdoms/android/ui/NewInvenUi;->access$1(Lch/kingdoms/android/ui/NewInvenUi;)Lch/android/api/util/DisplayInfo;

    move-result-object v4

    iget v4, v4, Lch/android/api/util/DisplayInfo;->density:F

    mul-float/2addr v4, v10

    float-to-int v4, v4

    iget-object v6, p0, Lch/kingdoms/android/ui/NewInvenUi$InvenAndInfoView;->this$0:Lch/kingdoms/android/ui/NewInvenUi;

    invoke-static {v6}, Lch/kingdoms/android/ui/NewInvenUi;->access$1(Lch/kingdoms/android/ui/NewInvenUi;)Lch/android/api/util/DisplayInfo;

    move-result-object v6

    iget v6, v6, Lch/android/api/util/DisplayInfo;->density:F

    mul-float/2addr v6, v10

    float-to-int v6, v6

    iget-object v7, p0, Lch/kingdoms/android/ui/NewInvenUi$InvenAndInfoView;->this$0:Lch/kingdoms/android/ui/NewInvenUi;

    invoke-static {v7}, Lch/kingdoms/android/ui/NewInvenUi;->access$1(Lch/kingdoms/android/ui/NewInvenUi;)Lch/android/api/util/DisplayInfo;

    move-result-object v7

    iget v7, v7, Lch/android/api/util/DisplayInfo;->density:F

    mul-float/2addr v7, v10

    float-to-int v7, v7

    invoke-virtual {v0, v4, v6, v7, v5}, Lch/android/api/ui/ChInvenView;->setPadding(IIII)V

    .line 600
    iget-object v4, p0, Lch/kingdoms/android/ui/NewInvenUi$InvenAndInfoView;->ITEMINFO_LAYOUT:Lch/android/api/ui/ChLinearLayout;

    invoke-virtual {v4}, Lch/android/api/ui/ChLinearLayout;->removeAllViews()V

    .line 601
    iget-object v4, p0, Lch/kingdoms/android/ui/NewInvenUi$InvenAndInfoView;->ITEMINFO_LAYOUT:Lch/android/api/ui/ChLinearLayout;

    new-instance v5, Landroid/widget/RelativeLayout$LayoutParams;

    const/high16 v6, 0x43700000    # 240.0f

    iget-object v7, p0, Lch/kingdoms/android/ui/NewInvenUi$InvenAndInfoView;->this$0:Lch/kingdoms/android/ui/NewInvenUi;

    invoke-static {v7}, Lch/kingdoms/android/ui/NewInvenUi;->access$1(Lch/kingdoms/android/ui/NewInvenUi;)Lch/android/api/util/DisplayInfo;

    move-result-object v7

    iget v7, v7, Lch/android/api/util/DisplayInfo;->density:F

    mul-float/2addr v6, v7

    float-to-int v6, v6

    const/high16 v7, 0x43140000    # 148.0f

    iget-object v8, p0, Lch/kingdoms/android/ui/NewInvenUi$InvenAndInfoView;->this$0:Lch/kingdoms/android/ui/NewInvenUi;

    invoke-static {v8}, Lch/kingdoms/android/ui/NewInvenUi;->access$1(Lch/kingdoms/android/ui/NewInvenUi;)Lch/android/api/util/DisplayInfo;

    move-result-object v8

    iget v8, v8, Lch/android/api/util/DisplayInfo;->density:F

    mul-float/2addr v7, v8

    float-to-int v7, v7

    invoke-direct {v5, v6, v7}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v4, v0, v5}, Lch/android/api/ui/ChLinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 603
    invoke-static {}, Lch/android/api/ui/ChViewGen;->getEventLayerLevel()I

    move-result v3

    .line 604
    .local v3, "layerLevel":I
    new-instance v4, Lch/kingdoms/android/ui/NewInvenUi$InvenAndInfoView$5;

    invoke-direct {v4, p0, v3, v0}, Lch/kingdoms/android/ui/NewInvenUi$InvenAndInfoView$5;-><init>(Lch/kingdoms/android/ui/NewInvenUi$InvenAndInfoView;ILch/android/api/ui/ChInvenView;)V

    invoke-virtual {v0, v4}, Lch/android/api/ui/ChInvenView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 644
    .end local v0    # "invenView":Lch/android/api/ui/ChInvenView;
    .end local v3    # "layerLevel":I
    :goto_2
    return-void

    .line 589
    :cond_0
    aget-object v2, v6, v4

    .line 590
    .local v2, "item":Lch/kingdoms/ndk/data/Inven$Item;
    iget-boolean v8, v2, Lch/kingdoms/ndk/data/Inven$Item;->exist:Z

    if-eqz v8, :cond_2

    iget v8, v2, Lch/kingdoms/ndk/data/Inven$Item;->mainType:I

    const/4 v9, 0x1

    if-ne v8, v9, :cond_2

    iget v8, v2, Lch/kingdoms/ndk/data/Inven$Item;->subType:I

    const/4 v9, 0x3

    if-eq v8, v9, :cond_2

    .line 591
    iget-boolean v8, v2, Lch/kingdoms/ndk/data/Inven$Item;->firstExist:Z

    if-eqz v8, :cond_1

    iget-boolean v8, v2, Lch/kingdoms/ndk/data/Inven$Item;->secondExist:Z

    if-nez v8, :cond_2

    .line 592
    :cond_1
    const/4 v1, 0x1

    .line 593
    goto/16 :goto_1

    .line 589
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    .line 642
    .end local v2    # "item":Lch/kingdoms/ndk/data/Inven$Item;
    :cond_3
    iget-object v4, p0, Lch/kingdoms/android/ui/NewInvenUi$InvenAndInfoView;->this$0:Lch/kingdoms/android/ui/NewInvenUi;

    invoke-static {v4}, Lch/kingdoms/android/ui/NewInvenUi;->access$0(Lch/kingdoms/android/ui/NewInvenUi;)Landroid/app/Activity;

    move-result-object v4

    const/16 v5, 0x7e

    invoke-static {v5}, Lch/kingdoms/ndk/NdkTextLoader;->getGameMenuTxt(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lch/android/api/ui/ChViewGen;->popUpOkView(Landroid/app/Activity;Ljava/lang/String;)Landroid/view/View;

    goto :goto_2
.end method

.method private useSocketReset(Lch/kingdoms/ndk/data/Inven$Item;)V
    .locals 11
    .param p1, "socketResetItem"    # Lch/kingdoms/ndk/data/Inven$Item;

    .prologue
    const/4 v5, 0x0

    const/high16 v10, 0x41700000    # 15.0f

    .line 518
    const/4 v1, 0x0

    .line 519
    .local v1, "isExist":Z
    iget-object v6, p0, Lch/kingdoms/android/ui/NewInvenUi$InvenAndInfoView;->m_invenItems:[Lch/kingdoms/ndk/data/Inven$Item;

    array-length v7, v6

    move v4, v5

    :goto_0
    if-lt v4, v7, :cond_0

    .line 526
    :goto_1
    if-eqz v1, :cond_3

    .line 527
    new-instance v0, Lch/android/api/ui/ChInvenView;

    iget-object v4, p0, Lch/kingdoms/android/ui/NewInvenUi$InvenAndInfoView;->this$0:Lch/kingdoms/android/ui/NewInvenUi;

    invoke-static {v4}, Lch/kingdoms/android/ui/NewInvenUi;->access$0(Lch/kingdoms/android/ui/NewInvenUi;)Landroid/app/Activity;

    move-result-object v4

    const/4 v6, 0x0

    iget-object v7, p0, Lch/kingdoms/android/ui/NewInvenUi$InvenAndInfoView;->m_invenItems:[Lch/kingdoms/ndk/data/Inven$Item;

    iget-object v8, p0, Lch/kingdoms/android/ui/NewInvenUi$InvenAndInfoView;->this$0:Lch/kingdoms/android/ui/NewInvenUi;

    invoke-static {v8}, Lch/kingdoms/android/ui/NewInvenUi;->access$1(Lch/kingdoms/android/ui/NewInvenUi;)Lch/android/api/util/DisplayInfo;

    move-result-object v8

    iget v8, v8, Lch/android/api/util/DisplayInfo;->density:F

    invoke-direct {v0, v4, v6, v7, v8}, Lch/android/api/ui/ChInvenView;-><init>(Landroid/content/Context;[S[Lch/kingdoms/ndk/data/Inven$Item;F)V

    .line 528
    .local v0, "invenView":Lch/android/api/ui/ChInvenView;
    const v4, -0xfffffdf

    const/4 v6, 0x4

    invoke-virtual {v0, v4, v6}, Lch/android/api/ui/ChInvenView;->update(II)Z

    .line 529
    iget-object v4, p0, Lch/kingdoms/android/ui/NewInvenUi$InvenAndInfoView;->this$0:Lch/kingdoms/android/ui/NewInvenUi;

    invoke-static {v4}, Lch/kingdoms/android/ui/NewInvenUi;->access$1(Lch/kingdoms/android/ui/NewInvenUi;)Lch/android/api/util/DisplayInfo;

    move-result-object v4

    iget v4, v4, Lch/android/api/util/DisplayInfo;->density:F

    mul-float/2addr v4, v10

    float-to-int v4, v4

    iget-object v6, p0, Lch/kingdoms/android/ui/NewInvenUi$InvenAndInfoView;->this$0:Lch/kingdoms/android/ui/NewInvenUi;

    invoke-static {v6}, Lch/kingdoms/android/ui/NewInvenUi;->access$1(Lch/kingdoms/android/ui/NewInvenUi;)Lch/android/api/util/DisplayInfo;

    move-result-object v6

    iget v6, v6, Lch/android/api/util/DisplayInfo;->density:F

    mul-float/2addr v6, v10

    float-to-int v6, v6

    iget-object v7, p0, Lch/kingdoms/android/ui/NewInvenUi$InvenAndInfoView;->this$0:Lch/kingdoms/android/ui/NewInvenUi;

    invoke-static {v7}, Lch/kingdoms/android/ui/NewInvenUi;->access$1(Lch/kingdoms/android/ui/NewInvenUi;)Lch/android/api/util/DisplayInfo;

    move-result-object v7

    iget v7, v7, Lch/android/api/util/DisplayInfo;->density:F

    mul-float/2addr v7, v10

    float-to-int v7, v7

    invoke-virtual {v0, v4, v6, v7, v5}, Lch/android/api/ui/ChInvenView;->setPadding(IIII)V

    .line 530
    iget-object v4, p0, Lch/kingdoms/android/ui/NewInvenUi$InvenAndInfoView;->ITEMINFO_LAYOUT:Lch/android/api/ui/ChLinearLayout;

    invoke-virtual {v4}, Lch/android/api/ui/ChLinearLayout;->removeAllViews()V

    .line 531
    iget-object v4, p0, Lch/kingdoms/android/ui/NewInvenUi$InvenAndInfoView;->ITEMINFO_LAYOUT:Lch/android/api/ui/ChLinearLayout;

    new-instance v5, Landroid/widget/RelativeLayout$LayoutParams;

    const/high16 v6, 0x43700000    # 240.0f

    iget-object v7, p0, Lch/kingdoms/android/ui/NewInvenUi$InvenAndInfoView;->this$0:Lch/kingdoms/android/ui/NewInvenUi;

    invoke-static {v7}, Lch/kingdoms/android/ui/NewInvenUi;->access$1(Lch/kingdoms/android/ui/NewInvenUi;)Lch/android/api/util/DisplayInfo;

    move-result-object v7

    iget v7, v7, Lch/android/api/util/DisplayInfo;->density:F

    mul-float/2addr v6, v7

    float-to-int v6, v6

    const/high16 v7, 0x43140000    # 148.0f

    iget-object v8, p0, Lch/kingdoms/android/ui/NewInvenUi$InvenAndInfoView;->this$0:Lch/kingdoms/android/ui/NewInvenUi;

    invoke-static {v8}, Lch/kingdoms/android/ui/NewInvenUi;->access$1(Lch/kingdoms/android/ui/NewInvenUi;)Lch/android/api/util/DisplayInfo;

    move-result-object v8

    iget v8, v8, Lch/android/api/util/DisplayInfo;->density:F

    mul-float/2addr v7, v8

    float-to-int v7, v7

    invoke-direct {v5, v6, v7}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v4, v0, v5}, Lch/android/api/ui/ChLinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 533
    invoke-static {}, Lch/android/api/ui/ChViewGen;->getEventLayerLevel()I

    move-result v3

    .line 534
    .local v3, "layerLevel":I
    new-instance v4, Lch/kingdoms/android/ui/NewInvenUi$InvenAndInfoView$4;

    invoke-direct {v4, p0, v3, v0}, Lch/kingdoms/android/ui/NewInvenUi$InvenAndInfoView$4;-><init>(Lch/kingdoms/android/ui/NewInvenUi$InvenAndInfoView;ILch/android/api/ui/ChInvenView;)V

    invoke-virtual {v0, v4}, Lch/android/api/ui/ChInvenView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 585
    .end local v0    # "invenView":Lch/android/api/ui/ChInvenView;
    .end local v3    # "layerLevel":I
    :goto_2
    return-void

    .line 519
    :cond_0
    aget-object v2, v6, v4

    .line 520
    .local v2, "item":Lch/kingdoms/ndk/data/Inven$Item;
    iget-boolean v8, v2, Lch/kingdoms/ndk/data/Inven$Item;->exist:Z

    if-eqz v8, :cond_2

    iget v8, v2, Lch/kingdoms/ndk/data/Inven$Item;->mainType:I

    const/4 v9, 0x1

    if-ne v8, v9, :cond_2

    iget v8, v2, Lch/kingdoms/ndk/data/Inven$Item;->subType:I

    const/4 v9, 0x3

    if-eq v8, v9, :cond_2

    .line 521
    iget-boolean v8, v2, Lch/kingdoms/ndk/data/Inven$Item;->firstExist:Z

    if-nez v8, :cond_1

    iget-boolean v8, v2, Lch/kingdoms/ndk/data/Inven$Item;->secondExist:Z

    if-eqz v8, :cond_2

    .line 522
    :cond_1
    const/4 v1, 0x1

    .line 523
    goto/16 :goto_1

    .line 519
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    .line 583
    .end local v2    # "item":Lch/kingdoms/ndk/data/Inven$Item;
    :cond_3
    iget-object v4, p0, Lch/kingdoms/android/ui/NewInvenUi$InvenAndInfoView;->this$0:Lch/kingdoms/android/ui/NewInvenUi;

    invoke-static {v4}, Lch/kingdoms/android/ui/NewInvenUi;->access$0(Lch/kingdoms/android/ui/NewInvenUi;)Landroid/app/Activity;

    move-result-object v4

    const/16 v5, 0x7f

    invoke-static {v5}, Lch/kingdoms/ndk/NdkTextLoader;->getGameMenuTxt(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lch/android/api/ui/ChViewGen;->popUpOkView(Landroid/app/Activity;Ljava/lang/String;)Landroid/view/View;

    goto :goto_2
.end method


# virtual methods
.method public empty()V
    .locals 3

    .prologue
    .line 449
    iget-object v0, p0, Lch/kingdoms/android/ui/NewInvenUi$InvenAndInfoView;->ITEMINFO_LAYOUT:Lch/android/api/ui/ChLinearLayout;

    invoke-virtual {v0}, Lch/android/api/ui/ChLinearLayout;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 450
    iget-object v0, p0, Lch/kingdoms/android/ui/NewInvenUi$InvenAndInfoView;->ITEMINFO_LAYOUT:Lch/android/api/ui/ChLinearLayout;

    iget-object v1, p0, Lch/kingdoms/android/ui/NewInvenUi$InvenAndInfoView;->ITEMINFO_LAYOUT:Lch/android/api/ui/ChLinearLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lch/android/api/ui/ChLinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lch/android/api/ui/ChLinearLayout;->removeView(Landroid/view/View;)V

    .line 452
    :cond_0
    iget-object v0, p0, Lch/kingdoms/android/ui/NewInvenUi$InvenAndInfoView;->INVEN_VIEW:Lch/android/api/ui/ChInvenView;

    invoke-virtual {v0, p0}, Lch/android/api/ui/ChInvenView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 453
    return-void
.end method

.method public filterDefault()V
    .locals 2

    .prologue
    .line 471
    iget-object v0, p0, Lch/kingdoms/android/ui/NewInvenUi$InvenAndInfoView;->FILTER_TAB_VIEW:Lch/kingdoms/android/ui/NewInvenUi$FilterTabView;

    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Lch/kingdoms/android/ui/NewInvenUi$FilterTabView;->selectBtn(I)V

    .line 472
    sget v0, Lch/android/api/ui/ChInvenView;->FLAG_DEFAULT:I

    invoke-virtual {p0, v0}, Lch/kingdoms/android/ui/NewInvenUi$InvenAndInfoView;->refreshInven(I)V

    .line 473
    return-void
.end method

.method public filterEquip()V
    .locals 2

    .prologue
    .line 476
    iget-object v0, p0, Lch/kingdoms/android/ui/NewInvenUi$InvenAndInfoView;->FILTER_TAB_VIEW:Lch/kingdoms/android/ui/NewInvenUi$FilterTabView;

    const/16 v1, 0x3e9

    invoke-virtual {v0, v1}, Lch/kingdoms/android/ui/NewInvenUi$FilterTabView;->selectBtn(I)V

    .line 477
    const v0, -0xffffff9

    invoke-virtual {p0, v0}, Lch/kingdoms/android/ui/NewInvenUi$InvenAndInfoView;->refreshInven(I)V

    .line 478
    return-void
.end method

.method public filterItem()V
    .locals 2

    .prologue
    .line 486
    iget-object v0, p0, Lch/kingdoms/android/ui/NewInvenUi$InvenAndInfoView;->FILTER_TAB_VIEW:Lch/kingdoms/android/ui/NewInvenUi$FilterTabView;

    const/16 v1, 0x3eb

    invoke-virtual {v0, v1}, Lch/kingdoms/android/ui/NewInvenUi$FilterTabView;->selectBtn(I)V

    .line 487
    const v0, -0xffffff8

    invoke-virtual {p0, v0}, Lch/kingdoms/android/ui/NewInvenUi$InvenAndInfoView;->refreshInven(I)V

    .line 488
    return-void
.end method

.method public filterQuest()V
    .locals 2

    .prologue
    .line 491
    iget-object v0, p0, Lch/kingdoms/android/ui/NewInvenUi$InvenAndInfoView;->FILTER_TAB_VIEW:Lch/kingdoms/android/ui/NewInvenUi$FilterTabView;

    const/16 v1, 0x3ec

    invoke-virtual {v0, v1}, Lch/kingdoms/android/ui/NewInvenUi$FilterTabView;->selectBtn(I)V

    .line 492
    const v0, -0xffffff7

    invoke-virtual {p0, v0}, Lch/kingdoms/android/ui/NewInvenUi$InvenAndInfoView;->refreshInven(I)V

    .line 493
    return-void
.end method

.method public filterRing()V
    .locals 2

    .prologue
    .line 481
    iget-object v0, p0, Lch/kingdoms/android/ui/NewInvenUi$InvenAndInfoView;->FILTER_TAB_VIEW:Lch/kingdoms/android/ui/NewInvenUi$FilterTabView;

    const/16 v1, 0x3ea

    invoke-virtual {v0, v1}, Lch/kingdoms/android/ui/NewInvenUi$FilterTabView;->selectBtn(I)V

    .line 482
    const v0, -0xffffffd

    invoke-virtual {p0, v0}, Lch/kingdoms/android/ui/NewInvenUi$InvenAndInfoView;->refreshInven(I)V

    .line 483
    return-void
.end method

.method public initIven()V
    .locals 1

    .prologue
    .line 443
    iget-object v0, p0, Lch/kingdoms/android/ui/NewInvenUi$InvenAndInfoView;->INFO_VIEW:Lch/kingdoms/android/ui/NewInvenUi$InfoView;

    invoke-virtual {v0}, Lch/kingdoms/android/ui/NewInvenUi$InfoView;->update()V

    .line 444
    invoke-virtual {p0}, Lch/kingdoms/android/ui/NewInvenUi$InvenAndInfoView;->filterDefault()V

    .line 445
    invoke-virtual {p0}, Lch/kingdoms/android/ui/NewInvenUi$InvenAndInfoView;->refreshInven()V

    .line 446
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 20
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 267
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getId()I

    move-result v12

    .line 271
    .local v12, "index":I
    invoke-static {}, Lch/android/api/ui/ChViewGen;->getEventLayerLevel()I

    move-result v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lch/kingdoms/android/ui/NewInvenUi$InvenAndInfoView;->this$0:Lch/kingdoms/android/ui/NewInvenUi;

    invoke-static {v4}, Lch/kingdoms/android/ui/NewInvenUi;->access$4(Lch/kingdoms/android/ui/NewInvenUi;)I

    move-result v4

    if-ne v3, v4, :cond_0

    .line 272
    const/16 v3, 0x274c

    if-ge v12, v3, :cond_1

    .line 273
    move-object/from16 v0, p0

    iget-object v3, v0, Lch/kingdoms/android/ui/NewInvenUi$InvenAndInfoView;->INVEN_VIEW:Lch/android/api/ui/ChInvenView;

    invoke-virtual {v3, v12}, Lch/android/api/ui/ChInvenView;->getFilteredItem(I)Lch/kingdoms/ndk/data/Inven$Item;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lch/kingdoms/android/ui/NewInvenUi$InvenAndInfoView;->selectedItem:Lch/kingdoms/ndk/data/Inven$Item;

    .line 274
    move-object/from16 v0, p0

    iget-object v3, v0, Lch/kingdoms/android/ui/NewInvenUi$InvenAndInfoView;->selectedItem:Lch/kingdoms/ndk/data/Inven$Item;

    if-eqz v3, :cond_0

    .line 275
    move-object/from16 v0, p0

    iget-object v3, v0, Lch/kingdoms/android/ui/NewInvenUi$InvenAndInfoView;->INVEN_VIEW:Lch/android/api/ui/ChInvenView;

    invoke-virtual {v3, v12}, Lch/android/api/ui/ChInvenView;->setToSelect(I)V

    .line 276
    new-instance v3, Lch/android/api/ui/ChItemInfoView;

    invoke-virtual/range {p0 .. p0}, Lch/kingdoms/android/ui/NewInvenUi$InvenAndInfoView;->getContext()Landroid/content/Context;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lch/kingdoms/android/ui/NewInvenUi$InvenAndInfoView;->selectedItem:Lch/kingdoms/ndk/data/Inven$Item;

    const/4 v6, 0x0

    invoke-direct {v3, v4, v5, v6}, Lch/android/api/ui/ChItemInfoView;-><init>(Landroid/content/Context;Lch/kingdoms/ndk/data/Inven$Item;I)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lch/kingdoms/android/ui/NewInvenUi$InvenAndInfoView;->itemInfoView:Lch/android/api/ui/ChItemInfoView;

    .line 277
    move-object/from16 v0, p0

    iget-object v3, v0, Lch/kingdoms/android/ui/NewInvenUi$InvenAndInfoView;->itemInfoView:Lch/android/api/ui/ChItemInfoView;

    move-object/from16 v0, p0

    iget-object v4, v0, Lch/kingdoms/android/ui/NewInvenUi$InvenAndInfoView;->this$0:Lch/kingdoms/android/ui/NewInvenUi;

    invoke-static {v4}, Lch/kingdoms/android/ui/NewInvenUi;->access$1(Lch/kingdoms/android/ui/NewInvenUi;)Lch/android/api/util/DisplayInfo;

    move-result-object v4

    iget v4, v4, Lch/android/api/util/DisplayInfo;->density:F

    const/high16 v5, 0x41a00000    # 20.0f

    mul-float/2addr v4, v5

    float-to-int v4, v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lch/kingdoms/android/ui/NewInvenUi$InvenAndInfoView;->this$0:Lch/kingdoms/android/ui/NewInvenUi;

    invoke-static {v5}, Lch/kingdoms/android/ui/NewInvenUi;->access$1(Lch/kingdoms/android/ui/NewInvenUi;)Lch/android/api/util/DisplayInfo;

    move-result-object v5

    iget v5, v5, Lch/android/api/util/DisplayInfo;->density:F

    const/high16 v6, 0x41a00000    # 20.0f

    mul-float/2addr v5, v6

    float-to-int v5, v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lch/kingdoms/android/ui/NewInvenUi$InvenAndInfoView;->this$0:Lch/kingdoms/android/ui/NewInvenUi;

    invoke-static {v6}, Lch/kingdoms/android/ui/NewInvenUi;->access$1(Lch/kingdoms/android/ui/NewInvenUi;)Lch/android/api/util/DisplayInfo;

    move-result-object v6

    iget v6, v6, Lch/android/api/util/DisplayInfo;->density:F

    const/high16 v18, 0x41400000    # 12.0f

    mul-float v6, v6, v18

    float-to-int v6, v6

    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-virtual {v3, v4, v5, v6, v0}, Lch/android/api/ui/ChItemInfoView;->setPadding(IIII)V

    .line 278
    move-object/from16 v0, p0

    iget-object v3, v0, Lch/kingdoms/android/ui/NewInvenUi$InvenAndInfoView;->itemInfoView:Lch/android/api/ui/ChItemInfoView;

    move-object/from16 v0, p0

    invoke-virtual {v3, v0}, Lch/android/api/ui/ChItemInfoView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 279
    invoke-virtual/range {p0 .. p0}, Lch/kingdoms/android/ui/NewInvenUi$InvenAndInfoView;->empty()V

    .line 280
    move-object/from16 v0, p0

    iget-object v3, v0, Lch/kingdoms/android/ui/NewInvenUi$InvenAndInfoView;->ITEMINFO_LAYOUT:Lch/android/api/ui/ChLinearLayout;

    move-object/from16 v0, p0

    iget-object v4, v0, Lch/kingdoms/android/ui/NewInvenUi$InvenAndInfoView;->itemInfoView:Lch/android/api/ui/ChItemInfoView;

    new-instance v5, Landroid/widget/RelativeLayout$LayoutParams;

    const/high16 v6, 0x43700000    # 240.0f

    move-object/from16 v0, p0

    iget-object v0, v0, Lch/kingdoms/android/ui/NewInvenUi$InvenAndInfoView;->this$0:Lch/kingdoms/android/ui/NewInvenUi;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lch/kingdoms/android/ui/NewInvenUi;->access$1(Lch/kingdoms/android/ui/NewInvenUi;)Lch/android/api/util/DisplayInfo;

    move-result-object v18

    move-object/from16 v0, v18

    iget v0, v0, Lch/android/api/util/DisplayInfo;->density:F

    move/from16 v18, v0

    mul-float v6, v6, v18

    float-to-int v6, v6

    const/high16 v18, 0x43140000    # 148.0f

    move-object/from16 v0, p0

    iget-object v0, v0, Lch/kingdoms/android/ui/NewInvenUi$InvenAndInfoView;->this$0:Lch/kingdoms/android/ui/NewInvenUi;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lch/kingdoms/android/ui/NewInvenUi;->access$1(Lch/kingdoms/android/ui/NewInvenUi;)Lch/android/api/util/DisplayInfo;

    move-result-object v19

    move-object/from16 v0, v19

    iget v0, v0, Lch/android/api/util/DisplayInfo;->density:F

    move/from16 v19, v0

    mul-float v18, v18, v19

    move/from16 v0, v18

    float-to-int v0, v0

    move/from16 v18, v0

    move/from16 v0, v18

    invoke-direct {v5, v6, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v4, v5}, Lch/android/api/ui/ChLinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 430
    :cond_0
    :goto_0
    return-void

    .line 283
    :cond_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lch/kingdoms/android/ui/NewInvenUi$InvenAndInfoView;->itemInfoView:Lch/android/api/ui/ChItemInfoView;

    if-eqz v3, :cond_0

    move-object/from16 v0, p0

    iget-object v3, v0, Lch/kingdoms/android/ui/NewInvenUi$InvenAndInfoView;->itemInfoView:Lch/android/api/ui/ChItemInfoView;

    invoke-virtual {v3}, Lch/android/api/ui/ChItemInfoView;->getItem()Lch/kingdoms/ndk/data/Inven$Item;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 284
    move-object/from16 v0, p0

    iget-object v3, v0, Lch/kingdoms/android/ui/NewInvenUi$InvenAndInfoView;->itemInfoView:Lch/android/api/ui/ChItemInfoView;

    invoke-virtual {v3}, Lch/android/api/ui/ChItemInfoView;->getItem()Lch/kingdoms/ndk/data/Inven$Item;

    move-result-object v17

    .line 285
    .local v17, "selectedItem":Lch/kingdoms/ndk/data/Inven$Item;
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getId()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    goto :goto_0

    .line 360
    :pswitch_0
    move-object/from16 v0, v17

    iget v3, v0, Lch/kingdoms/ndk/data/Inven$Item;->index:I

    invoke-static {v3}, Lch/kingdoms/ndk/NdkUiEventManager;->callNativeCheckUseItem(I)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 361
    move-object/from16 v0, p0

    iget-object v3, v0, Lch/kingdoms/android/ui/NewInvenUi$InvenAndInfoView;->m_invenItems:[Lch/kingdoms/ndk/data/Inven$Item;

    move-object/from16 v0, v17

    iget v4, v0, Lch/kingdoms/ndk/data/Inven$Item;->index:I

    aget-object v3, v3, v4

    iget v3, v3, Lch/kingdoms/ndk/data/Inven$Item;->subType:I

    const/16 v4, 0xd

    if-eq v3, v4, :cond_2

    .line 362
    move-object/from16 v0, p0

    iget-object v3, v0, Lch/kingdoms/android/ui/NewInvenUi$InvenAndInfoView;->m_invenItems:[Lch/kingdoms/ndk/data/Inven$Item;

    move-object/from16 v0, v17

    iget v4, v0, Lch/kingdoms/ndk/data/Inven$Item;->index:I

    aget-object v3, v3, v4

    iget v3, v3, Lch/kingdoms/ndk/data/Inven$Item;->subType:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_6

    .line 363
    :cond_2
    move-object/from16 v0, v17

    iget v3, v0, Lch/kingdoms/ndk/data/Inven$Item;->index:I

    invoke-static {v3}, Lch/kingdoms/ndk/NdkUiEventManager;->callNativeUseItem(I)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 364
    invoke-static {}, Lch/android/api/ui/ChViewGen;->closeAllPopUpViews()V

    .line 365
    move-object/from16 v0, p0

    iget-object v3, v0, Lch/kingdoms/android/ui/NewInvenUi$InvenAndInfoView;->this$0:Lch/kingdoms/android/ui/NewInvenUi;

    invoke-static {v3}, Lch/kingdoms/android/ui/NewInvenUi;->access$5(Lch/kingdoms/android/ui/NewInvenUi;)Lch/kingdoms/android/ui/IGameMenu;

    move-result-object v3

    invoke-interface {v3}, Lch/kingdoms/android/ui/IGameMenu;->closeInfo()V

    .line 422
    :cond_3
    :goto_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lch/kingdoms/android/ui/NewInvenUi$InvenAndInfoView;->INFO_VIEW:Lch/kingdoms/android/ui/NewInvenUi$InfoView;

    invoke-virtual {v3}, Lch/kingdoms/android/ui/NewInvenUi$InfoView;->update()V

    goto :goto_0

    .line 287
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lch/kingdoms/android/ui/NewInvenUi$InvenAndInfoView;->m_invenItems:[Lch/kingdoms/ndk/data/Inven$Item;

    move-object/from16 v0, v17

    iget v4, v0, Lch/kingdoms/ndk/data/Inven$Item;->index:I

    aget-object v3, v3, v4

    new-instance v4, Lch/kingdoms/android/ui/NewInvenUi$InvenAndInfoView$1;

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v4, v0, v1}, Lch/kingdoms/android/ui/NewInvenUi$InvenAndInfoView$1;-><init>(Lch/kingdoms/android/ui/NewInvenUi$InvenAndInfoView;Lch/kingdoms/ndk/data/Inven$Item;)V

    invoke-static {v3, v4}, Lch/kingdoms/ndk/NdkUiEventManager;->deleteItem(Lch/kingdoms/ndk/data/Inven$Item;Landroid/view/View$OnClickListener;)Z

    .line 307
    move-object/from16 v0, p0

    iget-object v3, v0, Lch/kingdoms/android/ui/NewInvenUi$InvenAndInfoView;->INFO_VIEW:Lch/kingdoms/android/ui/NewInvenUi$InfoView;

    invoke-virtual {v3}, Lch/kingdoms/android/ui/NewInvenUi$InfoView;->update()V

    goto/16 :goto_0

    .line 312
    :pswitch_2
    move-object/from16 v0, v17

    iget v3, v0, Lch/kingdoms/ndk/data/Inven$Item;->subType:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_4

    .line 313
    const/4 v9, 0x1

    .line 314
    .local v9, "ID_LEFT":I
    const/4 v10, 0x2

    .line 315
    .local v10, "ID_RIGHT":I
    new-instance v13, Lch/android/api/ui/ChTextSlimButton;

    invoke-virtual/range {p0 .. p0}, Lch/kingdoms/android/ui/NewInvenUi$InvenAndInfoView;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f020205

    const v5, 0x7f020204

    const/16 v6, 0x3e

    invoke-static {v6}, Lch/kingdoms/ndk/NdkTextLoader;->getGameMenuTxt(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v13, v3, v4, v5, v6}, Lch/android/api/ui/ChTextSlimButton;-><init>(Landroid/content/Context;IILjava/lang/String;)V

    .line 316
    .local v13, "leftBtn":Lch/android/api/ui/ChTextSlimButton;
    const/4 v3, 0x1

    invoke-virtual {v13, v3}, Lch/android/api/ui/ChTextSlimButton;->setId(I)V

    .line 317
    new-instance v15, Lch/android/api/ui/ChTextSlimButton;

    invoke-virtual/range {p0 .. p0}, Lch/kingdoms/android/ui/NewInvenUi$InvenAndInfoView;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f020205

    const v5, 0x7f020204

    const/16 v6, 0x3f

    invoke-static {v6}, Lch/kingdoms/ndk/NdkTextLoader;->getGameMenuTxt(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v15, v3, v4, v5, v6}, Lch/android/api/ui/ChTextSlimButton;-><init>(Landroid/content/Context;IILjava/lang/String;)V

    .line 318
    .local v15, "rightBtn":Lch/android/api/ui/ChTextSlimButton;
    const/4 v3, 0x2

    invoke-virtual {v15, v3}, Lch/android/api/ui/ChTextSlimButton;->setId(I)V

    .line 319
    const/4 v3, 0x2

    new-array v7, v3, [Landroid/view/View;

    const/4 v3, 0x0

    aput-object v13, v7, v3

    const/4 v3, 0x1

    aput-object v15, v7, v3

    .line 320
    .local v7, "views":[Landroid/view/View;
    new-instance v8, Lch/kingdoms/android/ui/NewInvenUi$InvenAndInfoView$2;

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v8, v0, v1}, Lch/kingdoms/android/ui/NewInvenUi$InvenAndInfoView$2;-><init>(Lch/kingdoms/android/ui/NewInvenUi$InvenAndInfoView;Lch/kingdoms/ndk/data/Inven$Item;)V

    .line 341
    .local v8, "ocl":Landroid/view/View$OnClickListener;
    invoke-virtual {v13, v8}, Lch/android/api/ui/ChTextSlimButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 342
    invoke-virtual {v15, v8}, Lch/android/api/ui/ChTextSlimButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 343
    new-instance v2, Lch/android/api/ui/ChPopUpMenuView;

    invoke-virtual/range {p0 .. p0}, Lch/kingdoms/android/ui/NewInvenUi$InvenAndInfoView;->getContext()Landroid/content/Context;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lch/kingdoms/android/ui/NewInvenUi$InvenAndInfoView;->this$0:Lch/kingdoms/android/ui/NewInvenUi;

    invoke-static {v4}, Lch/kingdoms/android/ui/NewInvenUi;->access$1(Lch/kingdoms/android/ui/NewInvenUi;)Lch/android/api/util/DisplayInfo;

    move-result-object v4

    const/4 v5, 0x0

    const v6, 0x7f020248

    invoke-direct/range {v2 .. v8}, Lch/android/api/ui/ChPopUpMenuView;-><init>(Landroid/content/Context;Lch/android/api/util/DisplayInfo;II[Landroid/view/View;Landroid/view/View$OnClickListener;)V

    .line 344
    .local v2, "leftRightView":Lch/android/api/ui/ChPopUpMenuView;
    move-object/from16 v0, p0

    iget-object v3, v0, Lch/kingdoms/android/ui/NewInvenUi$InvenAndInfoView;->this$0:Lch/kingdoms/android/ui/NewInvenUi;

    invoke-static {v3}, Lch/kingdoms/android/ui/NewInvenUi;->access$0(Lch/kingdoms/android/ui/NewInvenUi;)Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3, v2}, Lch/android/api/ui/ChViewGen;->popUp(Landroid/app/Activity;Landroid/view/View;)Landroid/view/View;

    goto/16 :goto_0

    .line 346
    .end local v2    # "leftRightView":Lch/android/api/ui/ChPopUpMenuView;
    .end local v7    # "views":[Landroid/view/View;
    .end local v8    # "ocl":Landroid/view/View$OnClickListener;
    .end local v9    # "ID_LEFT":I
    .end local v10    # "ID_RIGHT":I
    .end local v13    # "leftBtn":Lch/android/api/ui/ChTextSlimButton;
    .end local v15    # "rightBtn":Lch/android/api/ui/ChTextSlimButton;
    :cond_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lch/kingdoms/android/ui/NewInvenUi$InvenAndInfoView;->m_invenItems:[Lch/kingdoms/ndk/data/Inven$Item;

    move-object/from16 v0, v17

    iget v4, v0, Lch/kingdoms/ndk/data/Inven$Item;->index:I

    aget-object v3, v3, v4

    move-object/from16 v0, p0

    iget-object v4, v0, Lch/kingdoms/android/ui/NewInvenUi$InvenAndInfoView;->m_invenItems:[Lch/kingdoms/ndk/data/Inven$Item;

    move-object/from16 v0, v17

    iget v5, v0, Lch/kingdoms/ndk/data/Inven$Item;->index:I

    aget-object v4, v4, v5

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lch/kingdoms/android/ui/NewInvenUi$InvenAndInfoView;->getItemType(Lch/kingdoms/ndk/data/Inven$Item;)I

    move-result v4

    new-instance v5, Lch/kingdoms/android/ui/NewInvenUi$InvenAndInfoView$3;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Lch/kingdoms/android/ui/NewInvenUi$InvenAndInfoView$3;-><init>(Lch/kingdoms/android/ui/NewInvenUi$InvenAndInfoView;)V

    invoke-static {v3, v4, v5}, Lch/kingdoms/ndk/NdkUiEventManager;->equipItem(Lch/kingdoms/ndk/data/Inven$Item;ILandroid/view/View$OnClickListener;)Z

    move-result v14

    .line 353
    .local v14, "result":Z
    if-eqz v14, :cond_0

    .line 354
    invoke-virtual/range {p0 .. p0}, Lch/kingdoms/android/ui/NewInvenUi$InvenAndInfoView;->refreshInven()V

    goto/16 :goto_0

    .line 367
    .end local v14    # "result":Z
    :cond_5
    move-object/from16 v0, p0

    iget-object v3, v0, Lch/kingdoms/android/ui/NewInvenUi$InvenAndInfoView;->this$0:Lch/kingdoms/android/ui/NewInvenUi;

    invoke-static {v3}, Lch/kingdoms/android/ui/NewInvenUi;->access$0(Lch/kingdoms/android/ui/NewInvenUi;)Landroid/app/Activity;

    move-result-object v3

    const/16 v4, 0x32

    invoke-static {v4}, Lch/kingdoms/ndk/NdkTextLoader;->getGameMenuTxt(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lch/android/api/ui/ChViewGen;->popUpOkView(Landroid/app/Activity;Ljava/lang/String;)Landroid/view/View;

    goto/16 :goto_1

    .line 369
    :cond_6
    move-object/from16 v0, p0

    iget-object v3, v0, Lch/kingdoms/android/ui/NewInvenUi$InvenAndInfoView;->m_invenItems:[Lch/kingdoms/ndk/data/Inven$Item;

    move-object/from16 v0, v17

    iget v4, v0, Lch/kingdoms/ndk/data/Inven$Item;->index:I

    aget-object v3, v3, v4

    iget v3, v3, Lch/kingdoms/ndk/data/Inven$Item;->subType:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_7

    .line 370
    move-object/from16 v0, p0

    iget-object v3, v0, Lch/kingdoms/android/ui/NewInvenUi$InvenAndInfoView;->m_invenItems:[Lch/kingdoms/ndk/data/Inven$Item;

    move-object/from16 v0, v17

    iget v4, v0, Lch/kingdoms/ndk/data/Inven$Item;->index:I

    aget-object v3, v3, v4

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lch/kingdoms/android/ui/NewInvenUi$InvenAndInfoView;->useIdentity(Lch/kingdoms/ndk/data/Inven$Item;)V

    goto/16 :goto_1

    .line 371
    :cond_7
    move-object/from16 v0, p0

    iget-object v3, v0, Lch/kingdoms/android/ui/NewInvenUi$InvenAndInfoView;->m_invenItems:[Lch/kingdoms/ndk/data/Inven$Item;

    move-object/from16 v0, v17

    iget v4, v0, Lch/kingdoms/ndk/data/Inven$Item;->index:I

    aget-object v3, v3, v4

    iget v3, v3, Lch/kingdoms/ndk/data/Inven$Item;->subType:I

    const/16 v4, 0xa

    if-ne v3, v4, :cond_8

    .line 372
    move-object/from16 v0, p0

    iget-object v3, v0, Lch/kingdoms/android/ui/NewInvenUi$InvenAndInfoView;->m_invenItems:[Lch/kingdoms/ndk/data/Inven$Item;

    move-object/from16 v0, v17

    iget v4, v0, Lch/kingdoms/ndk/data/Inven$Item;->index:I

    aget-object v3, v3, v4

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lch/kingdoms/android/ui/NewInvenUi$InvenAndInfoView;->useSocketOpen(Lch/kingdoms/ndk/data/Inven$Item;)V

    goto/16 :goto_1

    .line 373
    :cond_8
    move-object/from16 v0, p0

    iget-object v3, v0, Lch/kingdoms/android/ui/NewInvenUi$InvenAndInfoView;->m_invenItems:[Lch/kingdoms/ndk/data/Inven$Item;

    move-object/from16 v0, v17

    iget v4, v0, Lch/kingdoms/ndk/data/Inven$Item;->index:I

    aget-object v3, v3, v4

    iget v3, v3, Lch/kingdoms/ndk/data/Inven$Item;->subType:I

    const/16 v4, 0xb

    if-ne v3, v4, :cond_9

    .line 374
    move-object/from16 v0, p0

    iget-object v3, v0, Lch/kingdoms/android/ui/NewInvenUi$InvenAndInfoView;->m_invenItems:[Lch/kingdoms/ndk/data/Inven$Item;

    move-object/from16 v0, v17

    iget v4, v0, Lch/kingdoms/ndk/data/Inven$Item;->index:I

    aget-object v3, v3, v4

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lch/kingdoms/android/ui/NewInvenUi$InvenAndInfoView;->useSocketReset(Lch/kingdoms/ndk/data/Inven$Item;)V

    goto/16 :goto_1

    .line 375
    :cond_9
    move-object/from16 v0, p0

    iget-object v3, v0, Lch/kingdoms/android/ui/NewInvenUi$InvenAndInfoView;->m_invenItems:[Lch/kingdoms/ndk/data/Inven$Item;

    move-object/from16 v0, v17

    iget v4, v0, Lch/kingdoms/ndk/data/Inven$Item;->index:I

    aget-object v3, v3, v4

    iget v3, v3, Lch/kingdoms/ndk/data/Inven$Item;->subType:I

    const/16 v4, 0xc

    if-eq v3, v4, :cond_a

    .line 376
    move-object/from16 v0, p0

    iget-object v3, v0, Lch/kingdoms/android/ui/NewInvenUi$InvenAndInfoView;->m_invenItems:[Lch/kingdoms/ndk/data/Inven$Item;

    move-object/from16 v0, v17

    iget v4, v0, Lch/kingdoms/ndk/data/Inven$Item;->index:I

    aget-object v3, v3, v4

    iget v3, v3, Lch/kingdoms/ndk/data/Inven$Item;->subType:I

    const/16 v4, 0x12

    if-eq v3, v4, :cond_a

    .line 377
    move-object/from16 v0, p0

    iget-object v3, v0, Lch/kingdoms/android/ui/NewInvenUi$InvenAndInfoView;->m_invenItems:[Lch/kingdoms/ndk/data/Inven$Item;

    move-object/from16 v0, v17

    iget v4, v0, Lch/kingdoms/ndk/data/Inven$Item;->index:I

    aget-object v3, v3, v4

    iget v3, v3, Lch/kingdoms/ndk/data/Inven$Item;->subType:I

    const/16 v4, 0x13

    if-eq v3, v4, :cond_a

    .line 378
    move-object/from16 v0, p0

    iget-object v3, v0, Lch/kingdoms/android/ui/NewInvenUi$InvenAndInfoView;->m_invenItems:[Lch/kingdoms/ndk/data/Inven$Item;

    move-object/from16 v0, v17

    iget v4, v0, Lch/kingdoms/ndk/data/Inven$Item;->index:I

    aget-object v3, v3, v4

    iget v3, v3, Lch/kingdoms/ndk/data/Inven$Item;->subType:I

    const/16 v4, 0x14

    if-ne v3, v4, :cond_d

    .line 379
    :cond_a
    move-object/from16 v0, v17

    iget v3, v0, Lch/kingdoms/ndk/data/Inven$Item;->index:I

    invoke-static {v3}, Lch/kingdoms/ndk/NdkUiEventManager;->useSaveItem(I)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 380
    move-object/from16 v0, p0

    iget-object v3, v0, Lch/kingdoms/android/ui/NewInvenUi$InvenAndInfoView;->m_invenItems:[Lch/kingdoms/ndk/data/Inven$Item;

    move-object/from16 v0, v17

    iget v4, v0, Lch/kingdoms/ndk/data/Inven$Item;->index:I

    aget-object v3, v3, v4

    iget v3, v3, Lch/kingdoms/ndk/data/Inven$Item;->subType:I

    const/16 v4, 0x14

    if-ne v3, v4, :cond_b

    .line 381
    invoke-static {}, Lch/kingdoms/android/db/DBAdapter;->getInstance()Lch/kingdoms/android/db/DBAdapter;

    move-result-object v11

    .line 382
    .local v11, "dba":Lch/kingdoms/android/db/DBAdapter;
    invoke-static {}, Lch/kingdoms/ndk/NdkUiEventManager;->getCurrentSaveSlotIndex()I

    move-result v16

    .line 383
    .local v16, "saveSlot":I
    move/from16 v0, v16

    invoke-virtual {v11, v0}, Lch/kingdoms/android/db/DBAdapter;->purchaseAutoRouting(I)Z

    .line 384
    const/4 v3, 0x1

    move/from16 v0, v16

    invoke-virtual {v11, v0, v3}, Lch/kingdoms/android/db/DBAdapter;->setAutoRouting(IZ)Z

    .line 385
    const/4 v3, 0x1

    invoke-static {v3}, Lch/kingdoms/ndk/NdkUiEventManager;->setAutoRouting(Z)V

    .line 387
    .end local v11    # "dba":Lch/kingdoms/android/db/DBAdapter;
    .end local v16    # "saveSlot":I
    :cond_b
    invoke-virtual/range {p0 .. p0}, Lch/kingdoms/android/ui/NewInvenUi$InvenAndInfoView;->refreshInven()V

    goto/16 :goto_1

    .line 389
    :cond_c
    move-object/from16 v0, p0

    iget-object v3, v0, Lch/kingdoms/android/ui/NewInvenUi$InvenAndInfoView;->this$0:Lch/kingdoms/android/ui/NewInvenUi;

    invoke-static {v3}, Lch/kingdoms/android/ui/NewInvenUi;->access$0(Lch/kingdoms/android/ui/NewInvenUi;)Landroid/app/Activity;

    move-result-object v3

    const/16 v4, 0x58

    invoke-static {v4}, Lch/kingdoms/ndk/NdkTextLoader;->getGameMenuTxt(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lch/android/api/ui/ChViewGen;->popUpOkView(Landroid/app/Activity;Ljava/lang/String;)Landroid/view/View;

    goto/16 :goto_1

    .line 391
    :cond_d
    move-object/from16 v0, p0

    iget-object v3, v0, Lch/kingdoms/android/ui/NewInvenUi$InvenAndInfoView;->m_invenItems:[Lch/kingdoms/ndk/data/Inven$Item;

    move-object/from16 v0, v17

    iget v4, v0, Lch/kingdoms/ndk/data/Inven$Item;->index:I

    aget-object v3, v3, v4

    iget v3, v3, Lch/kingdoms/ndk/data/Inven$Item;->subType:I

    const/16 v4, 0x15

    if-ne v3, v4, :cond_f

    .line 392
    move-object/from16 v0, v17

    iget v3, v0, Lch/kingdoms/ndk/data/Inven$Item;->index:I

    invoke-static {v3}, Lch/kingdoms/ndk/NdkUiEventManager;->useSetGamble(I)Z

    move-result v14

    .line 393
    .restart local v14    # "result":Z
    if-nez v14, :cond_e

    .line 394
    move-object/from16 v0, p0

    iget-object v3, v0, Lch/kingdoms/android/ui/NewInvenUi$InvenAndInfoView;->this$0:Lch/kingdoms/android/ui/NewInvenUi;

    invoke-static {v3}, Lch/kingdoms/android/ui/NewInvenUi;->access$0(Lch/kingdoms/android/ui/NewInvenUi;)Landroid/app/Activity;

    move-result-object v3

    const/16 v4, 0x52

    invoke-static {v4}, Lch/kingdoms/ndk/NdkTextLoader;->getGameMenuTxt(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lch/android/api/ui/ChViewGen;->popUpOkView(Landroid/app/Activity;Ljava/lang/String;)Landroid/view/View;

    .line 396
    :cond_e
    invoke-virtual/range {p0 .. p0}, Lch/kingdoms/android/ui/NewInvenUi$InvenAndInfoView;->refreshInven()V

    goto/16 :goto_1

    .line 397
    .end local v14    # "result":Z
    :cond_f
    move-object/from16 v0, p0

    iget-object v3, v0, Lch/kingdoms/android/ui/NewInvenUi$InvenAndInfoView;->m_invenItems:[Lch/kingdoms/ndk/data/Inven$Item;

    move-object/from16 v0, v17

    iget v4, v0, Lch/kingdoms/ndk/data/Inven$Item;->index:I

    aget-object v3, v3, v4

    iget v3, v3, Lch/kingdoms/ndk/data/Inven$Item;->subType:I

    const/16 v4, 0x16

    if-ne v3, v4, :cond_11

    .line 398
    move-object/from16 v0, v17

    iget v3, v0, Lch/kingdoms/ndk/data/Inven$Item;->index:I

    invoke-static {v3}, Lch/kingdoms/ndk/NdkUiEventManager;->useSetGambleAll(I)Z

    move-result v14

    .line 399
    .restart local v14    # "result":Z
    if-nez v14, :cond_10

    .line 400
    move-object/from16 v0, p0

    iget-object v3, v0, Lch/kingdoms/android/ui/NewInvenUi$InvenAndInfoView;->this$0:Lch/kingdoms/android/ui/NewInvenUi;

    invoke-static {v3}, Lch/kingdoms/android/ui/NewInvenUi;->access$0(Lch/kingdoms/android/ui/NewInvenUi;)Landroid/app/Activity;

    move-result-object v3

    const/16 v4, 0x52

    invoke-static {v4}, Lch/kingdoms/ndk/NdkTextLoader;->getGameMenuTxt(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lch/android/api/ui/ChViewGen;->popUpOkView(Landroid/app/Activity;Ljava/lang/String;)Landroid/view/View;

    .line 402
    :cond_10
    invoke-virtual/range {p0 .. p0}, Lch/kingdoms/android/ui/NewInvenUi$InvenAndInfoView;->refreshInven()V

    goto/16 :goto_1

    .line 403
    .end local v14    # "result":Z
    :cond_11
    move-object/from16 v0, p0

    iget-object v3, v0, Lch/kingdoms/android/ui/NewInvenUi$InvenAndInfoView;->m_invenItems:[Lch/kingdoms/ndk/data/Inven$Item;

    move-object/from16 v0, v17

    iget v4, v0, Lch/kingdoms/ndk/data/Inven$Item;->index:I

    aget-object v3, v3, v4

    iget v3, v3, Lch/kingdoms/ndk/data/Inven$Item;->subType:I

    const/16 v4, 0x18

    if-ne v3, v4, :cond_13

    .line 404
    move-object/from16 v0, v17

    iget v3, v0, Lch/kingdoms/ndk/data/Inven$Item;->index:I

    invoke-static {v3}, Lch/kingdoms/ndk/NdkUiEventManager;->useGambleRing(I)Z

    move-result v14

    .line 405
    .restart local v14    # "result":Z
    if-nez v14, :cond_12

    .line 406
    move-object/from16 v0, p0

    iget-object v3, v0, Lch/kingdoms/android/ui/NewInvenUi$InvenAndInfoView;->this$0:Lch/kingdoms/android/ui/NewInvenUi;

    invoke-static {v3}, Lch/kingdoms/android/ui/NewInvenUi;->access$0(Lch/kingdoms/android/ui/NewInvenUi;)Landroid/app/Activity;

    move-result-object v3

    const/16 v4, 0x52

    invoke-static {v4}, Lch/kingdoms/ndk/NdkTextLoader;->getGameMenuTxt(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lch/android/api/ui/ChViewGen;->popUpOkView(Landroid/app/Activity;Ljava/lang/String;)Landroid/view/View;

    .line 408
    :cond_12
    invoke-virtual/range {p0 .. p0}, Lch/kingdoms/android/ui/NewInvenUi$InvenAndInfoView;->refreshInven()V

    goto/16 :goto_1

    .line 409
    .end local v14    # "result":Z
    :cond_13
    move-object/from16 v0, p0

    iget-object v3, v0, Lch/kingdoms/android/ui/NewInvenUi$InvenAndInfoView;->m_invenItems:[Lch/kingdoms/ndk/data/Inven$Item;

    move-object/from16 v0, v17

    iget v4, v0, Lch/kingdoms/ndk/data/Inven$Item;->index:I

    aget-object v3, v3, v4

    iget v3, v3, Lch/kingdoms/ndk/data/Inven$Item;->subType:I

    const/16 v4, 0xf

    if-ne v3, v4, :cond_14

    .line 410
    invoke-static {}, Lch/android/api/ui/ChViewGen;->closeAllPopUpViews()V

    .line 411
    move-object/from16 v0, p0

    iget-object v3, v0, Lch/kingdoms/android/ui/NewInvenUi$InvenAndInfoView;->this$0:Lch/kingdoms/android/ui/NewInvenUi;

    invoke-static {v3}, Lch/kingdoms/android/ui/NewInvenUi;->access$5(Lch/kingdoms/android/ui/NewInvenUi;)Lch/kingdoms/android/ui/IGameMenu;

    move-result-object v3

    invoke-interface {v3}, Lch/kingdoms/android/ui/IGameMenu;->closeInfo()V

    .line 412
    invoke-static {}, Lch/kingdoms/ndk/NdkUiEventManager;->useCallWhale()Z

    goto/16 :goto_1

    .line 415
    :cond_14
    move-object/from16 v0, v17

    iget v3, v0, Lch/kingdoms/ndk/data/Inven$Item;->index:I

    invoke-static {v3}, Lch/kingdoms/ndk/NdkUiEventManager;->callNativeUseItem(I)Z

    move-result v3

    if-eqz v3, :cond_15

    .line 416
    invoke-virtual/range {p0 .. p0}, Lch/kingdoms/android/ui/NewInvenUi$InvenAndInfoView;->refreshInven()V

    goto/16 :goto_1

    .line 418
    :cond_15
    move-object/from16 v0, p0

    iget-object v3, v0, Lch/kingdoms/android/ui/NewInvenUi$InvenAndInfoView;->this$0:Lch/kingdoms/android/ui/NewInvenUi;

    invoke-static {v3}, Lch/kingdoms/android/ui/NewInvenUi;->access$0(Lch/kingdoms/android/ui/NewInvenUi;)Landroid/app/Activity;

    move-result-object v3

    const/16 v4, 0x32

    invoke-static {v4}, Lch/kingdoms/ndk/NdkTextLoader;->getGameMenuTxt(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lch/android/api/ui/ChViewGen;->popUpOkView(Landroid/app/Activity;Ljava/lang/String;)Landroid/view/View;

    goto/16 :goto_1

    .line 425
    :pswitch_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lch/kingdoms/android/ui/NewInvenUi$InvenAndInfoView;->this$0:Lch/kingdoms/android/ui/NewInvenUi;

    invoke-static {v3}, Lch/kingdoms/android/ui/NewInvenUi;->access$0(Lch/kingdoms/android/ui/NewInvenUi;)Landroid/app/Activity;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lch/kingdoms/android/ui/NewInvenUi$InvenAndInfoView;->this$0:Lch/kingdoms/android/ui/NewInvenUi;

    invoke-static {v4}, Lch/kingdoms/android/ui/NewInvenUi;->access$1(Lch/kingdoms/android/ui/NewInvenUi;)Lch/android/api/util/DisplayInfo;

    move-result-object v4

    const/4 v5, 0x0

    move-object/from16 v0, v17

    iget v6, v0, Lch/kingdoms/ndk/data/Inven$Item;->index:I

    invoke-static {v3, v4, v5, v6}, Lch/android/api/ui/ChViewGen;->popUpQuickSlotsView(Landroid/app/Activity;Lch/android/api/util/DisplayInfo;II)Landroid/view/View;

    goto/16 :goto_0

    .line 285
    :pswitch_data_0
    .packed-switch 0x274c
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_1
    .end packed-switch
.end method

.method protected onMeasure(II)V
    .locals 2
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 260
    invoke-super {p0, p1, p2}, Lch/android/api/ui/ChRelativeLayout;->onMeasure(II)V

    .line 261
    iget-object v0, p0, Lch/kingdoms/android/ui/NewInvenUi$InvenAndInfoView;->this$0:Lch/kingdoms/android/ui/NewInvenUi;

    invoke-static {v0}, Lch/kingdoms/android/ui/NewInvenUi;->access$2(Lch/kingdoms/android/ui/NewInvenUi;)I

    move-result v0

    iget-object v1, p0, Lch/kingdoms/android/ui/NewInvenUi$InvenAndInfoView;->this$0:Lch/kingdoms/android/ui/NewInvenUi;

    invoke-static {v1}, Lch/kingdoms/android/ui/NewInvenUi;->access$3(Lch/kingdoms/android/ui/NewInvenUi;)I

    move-result v1

    invoke-super {p0, v0, v1}, Lch/android/api/ui/ChRelativeLayout;->setMeasuredDimension(II)V

    .line 262
    return-void
.end method

.method public refreshInven()V
    .locals 3

    .prologue
    .line 456
    const/4 v0, 0x0

    iput-object v0, p0, Lch/kingdoms/android/ui/NewInvenUi$InvenAndInfoView;->selectedItem:Lch/kingdoms/ndk/data/Inven$Item;

    .line 457
    invoke-static {}, Lch/kingdoms/ndk/NdkUiEventManager;->callNativeGetInven()Lch/kingdoms/ndk/data/Inven;

    move-result-object v0

    invoke-virtual {v0}, Lch/kingdoms/ndk/data/Inven;->getItems()[Lch/kingdoms/ndk/data/Inven$Item;

    move-result-object v0

    iput-object v0, p0, Lch/kingdoms/android/ui/NewInvenUi$InvenAndInfoView;->m_invenItems:[Lch/kingdoms/ndk/data/Inven$Item;

    .line 458
    invoke-static {}, Lch/kingdoms/ndk/NdkUiEventManager;->callNativeGetEquipItems()[S

    move-result-object v0

    iput-object v0, p0, Lch/kingdoms/android/ui/NewInvenUi$InvenAndInfoView;->m_equipedItemIndices:[S

    .line 459
    iget-object v0, p0, Lch/kingdoms/android/ui/NewInvenUi$InvenAndInfoView;->INVEN_VIEW:Lch/android/api/ui/ChInvenView;

    iget-object v1, p0, Lch/kingdoms/android/ui/NewInvenUi$InvenAndInfoView;->m_equipedItemIndices:[S

    iget-object v2, p0, Lch/kingdoms/android/ui/NewInvenUi$InvenAndInfoView;->m_invenItems:[Lch/kingdoms/ndk/data/Inven$Item;

    invoke-virtual {v0, v1, v2}, Lch/android/api/ui/ChInvenView;->update([S[Lch/kingdoms/ndk/data/Inven$Item;)Z

    .line 460
    iget-object v0, p0, Lch/kingdoms/android/ui/NewInvenUi$InvenAndInfoView;->INVEN_VIEW:Lch/android/api/ui/ChInvenView;

    invoke-virtual {v0, p0}, Lch/android/api/ui/ChInvenView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 461
    invoke-virtual {p0}, Lch/kingdoms/android/ui/NewInvenUi$InvenAndInfoView;->empty()V

    .line 462
    return-void
.end method

.method public refreshInven(I)V
    .locals 2
    .param p1, "flag"    # I

    .prologue
    .line 465
    iget-object v0, p0, Lch/kingdoms/android/ui/NewInvenUi$InvenAndInfoView;->INVEN_VIEW:Lch/android/api/ui/ChInvenView;

    const/4 v1, 0x4

    invoke-virtual {v0, p1, v1}, Lch/android/api/ui/ChInvenView;->update(II)Z

    .line 466
    invoke-virtual {p0}, Lch/kingdoms/android/ui/NewInvenUi$InvenAndInfoView;->empty()V

    .line 467
    iget-object v0, p0, Lch/kingdoms/android/ui/NewInvenUi$InvenAndInfoView;->INVEN_VIEW:Lch/android/api/ui/ChInvenView;

    invoke-virtual {v0, p0}, Lch/android/api/ui/ChInvenView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 468
    return-void
.end method

.method public releaseRsources()V
    .locals 0

    .prologue
    .line 435
    invoke-super {p0}, Lch/android/api/ui/ChRelativeLayout;->releaseRsources()V

    .line 436
    return-void
.end method
