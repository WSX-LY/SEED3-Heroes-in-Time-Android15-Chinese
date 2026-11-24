.class public Lch/kingdoms/android/ui/GameMenuUi;
.super Ljava/lang/Object;
.source "GameMenuUi.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lch/kingdoms/android/ui/IGameMenu;


# instance fields
.field private currentCenterView:Landroid/view/View;

.field private final f_activity:Landroid/app/Activity;

.field private final f_buyPointBtn:Landroid/widget/ImageButton;

.field private final f_di:Lch/android/api/util/DisplayInfo;

.field private final f_gameMenuLayout:Lch/android/api/ui/ChRelativeLayout;

.field private final f_infoBtn:Landroid/widget/ImageButton;

.field private final f_quickSaveBtn:Landroid/widget/ImageButton;

.field private final f_wolrdMapBtn:Landroid/widget/ImageButton;

.field private m_info:Landroid/view/View;

.field private m_isExistViewInCenter:Z

.field private reservedUiId:I


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lch/android/api/util/DisplayInfo;)V
    .locals 13
    .param p1, "_activity"    # Landroid/app/Activity;
    .param p2, "_di"    # Lch/android/api/util/DisplayInfo;

    .prologue
    const/16 v12, 0x272f

    const/4 v11, 0x0

    const/16 v10, 0xa

    const/high16 v9, 0x40a00000    # 5.0f

    const/4 v8, -0x2

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lch/kingdoms/android/ui/GameMenuUi;->f_activity:Landroid/app/Activity;

    .line 40
    iput-object p2, p0, Lch/kingdoms/android/ui/GameMenuUi;->f_di:Lch/android/api/util/DisplayInfo;

    .line 41
    invoke-static {p1, v8, v8}, Lch/android/api/ui/ChViewGen;->createRelativeLayout(Landroid/app/Activity;II)Lch/android/api/ui/ChRelativeLayout;

    move-result-object v4

    iput-object v4, p0, Lch/kingdoms/android/ui/GameMenuUi;->f_gameMenuLayout:Lch/android/api/ui/ChRelativeLayout;

    .line 43
    iget-object v4, p0, Lch/kingdoms/android/ui/GameMenuUi;->f_activity:Landroid/app/Activity;

    const/16 v5, 0x2731

    const v6, 0x7f020065

    const v7, 0x7f020065

    invoke-static {v4, v5, v6, v7, p0}, Lch/android/api/ui/ChViewGen;->createImageButton(Landroid/app/Activity;IIILandroid/view/View$OnClickListener;)Lch/android/api/ui/ChImageButton;

    move-result-object v4

    iput-object v4, p0, Lch/kingdoms/android/ui/GameMenuUi;->f_buyPointBtn:Landroid/widget/ImageButton;

    .line 44
    const/16 v4, 0x272e

    const v5, 0x7f02024e

    const v6, 0x7f02024e

    invoke-static {p1, v4, v5, v6, p0}, Lch/android/api/ui/ChViewGen;->createImageButton(Landroid/app/Activity;IIILandroid/view/View$OnClickListener;)Lch/android/api/ui/ChImageButton;

    move-result-object v4

    iput-object v4, p0, Lch/kingdoms/android/ui/GameMenuUi;->f_infoBtn:Landroid/widget/ImageButton;

    .line 45
    const v4, 0x7f0202dc

    const v5, 0x7f0202dc

    invoke-static {p1, v12, v4, v5, p0}, Lch/android/api/ui/ChViewGen;->createImageButton(Landroid/app/Activity;IIILandroid/view/View$OnClickListener;)Lch/android/api/ui/ChImageButton;

    move-result-object v4

    iput-object v4, p0, Lch/kingdoms/android/ui/GameMenuUi;->f_wolrdMapBtn:Landroid/widget/ImageButton;

    .line 46
    const/16 v4, 0x2730

    const v5, 0x7f020269

    const v6, 0x7f020269

    invoke-static {p1, v4, v5, v6, p0}, Lch/android/api/ui/ChViewGen;->createImageButton(Landroid/app/Activity;IIILandroid/view/View$OnClickListener;)Lch/android/api/ui/ChImageButton;

    move-result-object v4

    iput-object v4, p0, Lch/kingdoms/android/ui/GameMenuUi;->f_quickSaveBtn:Landroid/widget/ImageButton;

    .line 48
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v8, v8}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 49
    .local v0, "rlp0":Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {v0, v10}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 50
    const/16 v4, 0x2731

    invoke-virtual {v0, v11, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 51
    iget-object v4, p0, Lch/kingdoms/android/ui/GameMenuUi;->f_di:Lch/android/api/util/DisplayInfo;

    iget v4, v4, Lch/android/api/util/DisplayInfo;->density:F

    mul-float/2addr v4, v9

    float-to-int v4, v4

    iput v4, v0, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    iput v4, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 52
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v8, v8}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 53
    .local v1, "rlp1":Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {v1, v10}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 54
    invoke-virtual {v1, v11, v12}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 55
    iget-object v4, p0, Lch/kingdoms/android/ui/GameMenuUi;->f_di:Lch/android/api/util/DisplayInfo;

    iget v4, v4, Lch/android/api/util/DisplayInfo;->density:F

    mul-float/2addr v4, v9

    float-to-int v4, v4

    iput v4, v1, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    iput v4, v1, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 56
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v8, v8}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 57
    .local v2, "rlp2":Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {v2, v10}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 58
    const/16 v4, 0xe

    invoke-virtual {v2, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 59
    iget-object v4, p0, Lch/kingdoms/android/ui/GameMenuUi;->f_di:Lch/android/api/util/DisplayInfo;

    iget v4, v4, Lch/android/api/util/DisplayInfo;->density:F

    mul-float/2addr v4, v9

    float-to-int v4, v4

    iput v4, v2, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    iput v4, v2, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 60
    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v3, v8, v8}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 61
    .local v3, "rlp3":Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {v3, v10}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 62
    const/4 v4, 0x1

    invoke-virtual {v3, v4, v12}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 63
    iget-object v4, p0, Lch/kingdoms/android/ui/GameMenuUi;->f_di:Lch/android/api/util/DisplayInfo;

    iget v4, v4, Lch/android/api/util/DisplayInfo;->density:F

    mul-float/2addr v4, v9

    float-to-int v4, v4

    iput v4, v3, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    iput v4, v3, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 65
    iget-object v4, p0, Lch/kingdoms/android/ui/GameMenuUi;->f_gameMenuLayout:Lch/android/api/ui/ChRelativeLayout;

    iget-object v5, p0, Lch/kingdoms/android/ui/GameMenuUi;->f_infoBtn:Landroid/widget/ImageButton;

    invoke-virtual {v4, v5, v0}, Lch/android/api/ui/ChRelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 66
    iget-object v4, p0, Lch/kingdoms/android/ui/GameMenuUi;->f_gameMenuLayout:Lch/android/api/ui/ChRelativeLayout;

    iget-object v5, p0, Lch/kingdoms/android/ui/GameMenuUi;->f_buyPointBtn:Landroid/widget/ImageButton;

    invoke-virtual {v4, v5, v1}, Lch/android/api/ui/ChRelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 67
    iget-object v4, p0, Lch/kingdoms/android/ui/GameMenuUi;->f_gameMenuLayout:Lch/android/api/ui/ChRelativeLayout;

    iget-object v5, p0, Lch/kingdoms/android/ui/GameMenuUi;->f_wolrdMapBtn:Landroid/widget/ImageButton;

    invoke-virtual {v4, v5, v2}, Lch/android/api/ui/ChRelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 68
    iget-object v4, p0, Lch/kingdoms/android/ui/GameMenuUi;->f_gameMenuLayout:Lch/android/api/ui/ChRelativeLayout;

    iget-object v5, p0, Lch/kingdoms/android/ui/GameMenuUi;->f_quickSaveBtn:Landroid/widget/ImageButton;

    invoke-virtual {v4, v5, v3}, Lch/android/api/ui/ChRelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 70
    iput-boolean v11, p0, Lch/kingdoms/android/ui/GameMenuUi;->m_isExistViewInCenter:Z

    .line 72
    iget-object v4, p0, Lch/kingdoms/android/ui/GameMenuUi;->f_activity:Landroid/app/Activity;

    iget-object v5, p0, Lch/kingdoms/android/ui/GameMenuUi;->f_di:Lch/android/api/util/DisplayInfo;

    invoke-static {v4, v5, p0}, Lch/kingdoms/android/ui/StaticTabMenu;->getInstance(Landroid/app/Activity;Lch/android/api/util/DisplayInfo;Lch/kingdoms/android/ui/IGameMenu;)Lch/kingdoms/android/ui/StaticTabMenu;

    move-result-object v4

    invoke-virtual {v4}, Lch/kingdoms/android/ui/StaticTabMenu;->getView()Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lch/kingdoms/android/ui/GameMenuUi;->m_info:Landroid/view/View;

    .line 73
    iget-object v4, p0, Lch/kingdoms/android/ui/GameMenuUi;->m_info:Landroid/view/View;

    const/4 v5, 0x4

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 75
    const/4 v4, -0x1

    iput v4, p0, Lch/kingdoms/android/ui/GameMenuUi;->reservedUiId:I

    .line 76
    return-void
.end method

.method private AddViewInCenter(Landroid/view/View;Landroid/widget/RelativeLayout$LayoutParams;)V
    .locals 4
    .param p1, "_view"    # Landroid/view/View;
    .param p2, "_rlp"    # Landroid/widget/RelativeLayout$LayoutParams;

    .prologue
    const/4 v3, -0x2

    .line 275
    iget-object v1, p0, Lch/kingdoms/android/ui/GameMenuUi;->m_info:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    .line 276
    iget-object v1, p0, Lch/kingdoms/android/ui/GameMenuUi;->m_info:Landroid/view/View;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 279
    :cond_0
    if-eqz p2, :cond_1

    .line 280
    move-object v0, p2

    .line 285
    .local v0, "rlp":Landroid/widget/RelativeLayout$LayoutParams;
    :goto_0
    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 288
    iget-object v1, p0, Lch/kingdoms/android/ui/GameMenuUi;->f_activity:Landroid/app/Activity;

    invoke-static {v1, p1}, Lch/android/api/ui/ChViewGen;->popUp(Landroid/app/Activity;Landroid/view/View;)Landroid/view/View;

    .line 289
    const/4 v1, 0x1

    iput-boolean v1, p0, Lch/kingdoms/android/ui/GameMenuUi;->m_isExistViewInCenter:Z

    .line 290
    iput-object p1, p0, Lch/kingdoms/android/ui/GameMenuUi;->currentCenterView:Landroid/view/View;

    .line 291
    return-void

    .line 283
    .end local v0    # "rlp":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_1
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .restart local v0    # "rlp":Landroid/widget/RelativeLayout$LayoutParams;
    goto :goto_0
.end method


# virtual methods
.method public closeInfo()V
    .locals 2

    .prologue
    .line 228
    iget-object v0, p0, Lch/kingdoms/android/ui/GameMenuUi;->m_info:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lch/kingdoms/android/ui/GameMenuUi;->m_info:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 229
    iget-object v0, p0, Lch/kingdoms/android/ui/GameMenuUi;->m_info:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 230
    iget-object v0, p0, Lch/kingdoms/android/ui/GameMenuUi;->f_activity:Landroid/app/Activity;

    iget-object v1, p0, Lch/kingdoms/android/ui/GameMenuUi;->f_di:Lch/android/api/util/DisplayInfo;

    invoke-static {v0, v1, p0}, Lch/kingdoms/android/ui/StaticTabMenu;->getInstance(Landroid/app/Activity;Lch/android/api/util/DisplayInfo;Lch/kingdoms/android/ui/IGameMenu;)Lch/kingdoms/android/ui/StaticTabMenu;

    move-result-object v0

    invoke-virtual {v0}, Lch/kingdoms/android/ui/StaticTabMenu;->close()V

    .line 231
    invoke-static {}, Lch/kingdoms/ndk/NdkInputManager;->inputCancel()V

    .line 232
    const/4 v0, 0x0

    iput-boolean v0, p0, Lch/kingdoms/android/ui/GameMenuUi;->m_isExistViewInCenter:Z

    .line 234
    :cond_0
    return-void
.end method

.method public closeViewInCenter(Landroid/view/View;)V
    .locals 2
    .param p1, "_view"    # Landroid/view/View;

    .prologue
    .line 258
    iget-object v0, p0, Lch/kingdoms/android/ui/GameMenuUi;->m_info:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 259
    iget-object v0, p0, Lch/kingdoms/android/ui/GameMenuUi;->m_info:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 261
    :cond_0
    iget-object v0, p0, Lch/kingdoms/android/ui/GameMenuUi;->currentCenterView:Landroid/view/View;

    if-ne v0, p1, :cond_1

    .line 262
    const/4 v0, 0x0

    iput-object v0, p0, Lch/kingdoms/android/ui/GameMenuUi;->currentCenterView:Landroid/view/View;

    .line 266
    :cond_1
    invoke-static {}, Lch/android/api/ui/ChViewGen;->closePopUpView()V

    .line 268
    const/4 v0, 0x0

    iput-boolean v0, p0, Lch/kingdoms/android/ui/GameMenuUi;->m_isExistViewInCenter:Z

    .line 270
    invoke-static {}, Lch/kingdoms/ndk/NdkInputManager;->inputCancel()V

    .line 272
    return-void
.end method

.method public getButtonsVisibility()I
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lch/kingdoms/android/ui/GameMenuUi;->f_buyPointBtn:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->getVisibility()I

    move-result v0

    return v0
.end method

.method public getViewGroup()Landroid/view/ViewGroup;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lch/kingdoms/android/ui/GameMenuUi;->f_gameMenuLayout:Lch/android/api/ui/ChRelativeLayout;

    return-object v0
.end method

.method public hideViewInCenter()V
    .locals 2

    .prologue
    const/4 v1, 0x4

    .line 237
    iget-boolean v0, p0, Lch/kingdoms/android/ui/GameMenuUi;->m_isExistViewInCenter:Z

    if-eqz v0, :cond_1

    .line 238
    iget-object v0, p0, Lch/kingdoms/android/ui/GameMenuUi;->currentCenterView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 239
    iget-object v0, p0, Lch/kingdoms/android/ui/GameMenuUi;->currentCenterView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 241
    :cond_0
    iget-object v0, p0, Lch/kingdoms/android/ui/GameMenuUi;->m_info:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 242
    iget-object v0, p0, Lch/kingdoms/android/ui/GameMenuUi;->m_info:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 246
    :cond_1
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 9
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v3, 0x4

    const/16 v2, 0x19

    const/16 v1, 0x18

    .line 100
    iget-object v8, p0, Lch/kingdoms/android/ui/GameMenuUi;->f_gameMenuLayout:Lch/android/api/ui/ChRelativeLayout;

    monitor-enter v8

    .line 101
    :try_start_0
    invoke-static {}, Lch/kingdoms/ndk/NdkUiEventManager;->getMainState()I

    move-result v7

    .line 102
    .local v7, "mainState":I
    iget-boolean v0, p0, Lch/kingdoms/android/ui/GameMenuUi;->m_isExistViewInCenter:Z

    if-nez v0, :cond_0

    const/16 v0, 0xd

    if-eq v7, v0, :cond_0

    .line 105
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v6

    .line 106
    .local v6, "id":I
    sparse-switch v6, :sswitch_data_0

    .line 100
    .end local v6    # "id":I
    :cond_0
    :goto_0
    monitor-exit v8

    .line 168
    return-void

    .line 108
    .restart local v6    # "id":I
    :sswitch_0
    if-eq v7, v1, :cond_0

    .line 109
    if-eq v7, v2, :cond_0

    .line 110
    invoke-static {}, Lch/kingdoms/ndk/NdkInputManager;->inputCancel()V

    .line 111
    iput v6, p0, Lch/kingdoms/android/ui/GameMenuUi;->reservedUiId:I

    goto :goto_0

    .line 100
    .end local v6    # "id":I
    .end local v7    # "mainState":I
    :catchall_0
    move-exception v0

    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 126
    .restart local v6    # "id":I
    .restart local v7    # "mainState":I
    :sswitch_1
    :try_start_1
    invoke-static {}, Lch/kingdoms/ndk/NdkInputManager;->inputCancel()V

    .line 127
    iget-object v0, p0, Lch/kingdoms/android/ui/GameMenuUi;->m_info:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-ne v0, v3, :cond_0

    .line 128
    iput v6, p0, Lch/kingdoms/android/ui/GameMenuUi;->reservedUiId:I

    goto :goto_0

    .line 135
    :sswitch_2
    invoke-static {}, Lch/kingdoms/ndk/NdkInputManager;->inputCancel()V

    .line 136
    iget-object v0, p0, Lch/kingdoms/android/ui/GameMenuUi;->m_info:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-ne v0, v3, :cond_0

    .line 137
    iput v6, p0, Lch/kingdoms/android/ui/GameMenuUi;->reservedUiId:I

    goto :goto_0

    .line 144
    :sswitch_3
    if-eq v7, v1, :cond_0

    .line 145
    if-eq v7, v2, :cond_0

    .line 146
    invoke-static {}, Lch/kingdoms/ndk/NdkInputManager;->inputCancel()V

    .line 147
    iput v6, p0, Lch/kingdoms/android/ui/GameMenuUi;->reservedUiId:I

    goto :goto_0

    .line 153
    :sswitch_4
    if-eq v7, v1, :cond_0

    .line 154
    if-eq v7, v2, :cond_0

    .line 155
    invoke-static {}, Lch/kingdoms/ndk/NdkUiEventManager;->saveGame()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 156
    iget-object v0, p0, Lch/kingdoms/android/ui/GameMenuUi;->f_activity:Landroid/app/Activity;

    const-string v1, "1116937"

    invoke-static {}, Lch/kingdoms/ndk/NdkUiEventManager;->getHeroScore()I

    move-result v2

    int-to-long v2, v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lch/android/lib/openfeint/ChOpenFeint;->registerScore(Landroid/app/Activity;Ljava/lang/String;JLjava/lang/String;Lcom/openfeint/api/resource/Score$SubmitToCB;)V

    .line 157
    const/16 v0, 0x48

    invoke-static {v0}, Lch/kingdoms/ndk/NdkTextLoader;->getGameMenuTxt(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lch/android/api/ui/ChGamePlayMessage;->popUpMapName(Ljava/lang/String;)V

    goto :goto_0

    .line 159
    :cond_1
    const/16 v0, 0x54

    invoke-static {v0}, Lch/kingdoms/ndk/NdkTextLoader;->getGameMenuTxt(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lch/android/api/ui/ChGamePlayMessage;->popUpMapName(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 106
    :sswitch_data_0
    .sparse-switch
        0x272e -> :sswitch_2
        0x272f -> :sswitch_3
        0x2730 -> :sswitch_4
        0x2731 -> :sswitch_0
        0x2760 -> :sswitch_1
    .end sparse-switch
.end method

.method public popUpReservedUi()V
    .locals 8

    .prologue
    const/16 v7, 0x19

    const/16 v6, 0x18

    const/4 v5, 0x4

    .line 171
    iget-object v4, p0, Lch/kingdoms/android/ui/GameMenuUi;->f_gameMenuLayout:Lch/android/api/ui/ChRelativeLayout;

    monitor-enter v4

    .line 172
    :try_start_0
    invoke-static {}, Lch/kingdoms/ndk/NdkUiEventManager;->getMainState()I

    move-result v1

    .line 173
    .local v1, "mainState":I
    iget-boolean v3, p0, Lch/kingdoms/android/ui/GameMenuUi;->m_isExistViewInCenter:Z

    if-nez v3, :cond_1

    const/16 v3, 0xd

    if-ne v1, v3, :cond_1

    .line 174
    iget v3, p0, Lch/kingdoms/android/ui/GameMenuUi;->reservedUiId:I

    sparse-switch v3, :sswitch_data_0

    .line 222
    :cond_0
    :goto_0
    const/4 v3, -0x1

    iput v3, p0, Lch/kingdoms/android/ui/GameMenuUi;->reservedUiId:I

    .line 171
    :cond_1
    monitor-exit v4

    .line 225
    return-void

    .line 176
    :sswitch_0
    if-eq v1, v6, :cond_0

    if-eq v1, v7, :cond_0

    .line 177
    new-instance v0, Lch/kingdoms/android/ui/BrandShopUi;

    iget-object v3, p0, Lch/kingdoms/android/ui/GameMenuUi;->f_di:Lch/android/api/util/DisplayInfo;

    new-instance v5, Lch/kingdoms/android/ui/GameMenuUi$1;

    invoke-direct {v5, p0}, Lch/kingdoms/android/ui/GameMenuUi$1;-><init>(Lch/kingdoms/android/ui/GameMenuUi;)V

    invoke-direct {v0, v3, v5}, Lch/kingdoms/android/ui/BrandShopUi;-><init>(Lch/android/api/util/DisplayInfo;Landroid/view/View$OnClickListener;)V

    .line 189
    .local v0, "brandShopUi":Lch/kingdoms/android/ui/BrandShopUi;
    iget-object v3, p0, Lch/kingdoms/android/ui/GameMenuUi;->f_activity:Landroid/app/Activity;

    invoke-virtual {v0}, Lch/kingdoms/android/ui/BrandShopUi;->getView()Landroid/view/View;

    move-result-object v5

    invoke-static {v3, v5}, Lch/android/api/ui/ChViewGen;->popUp(Landroid/app/Activity;Landroid/view/View;)Landroid/view/View;

    goto :goto_0

    .line 171
    .end local v0    # "brandShopUi":Lch/kingdoms/android/ui/BrandShopUi;
    .end local v1    # "mainState":I
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 193
    .restart local v1    # "mainState":I
    :sswitch_1
    :try_start_1
    iget-object v3, p0, Lch/kingdoms/android/ui/GameMenuUi;->m_info:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-ne v3, v5, :cond_0

    .line 194
    iget-object v3, p0, Lch/kingdoms/android/ui/GameMenuUi;->m_info:Landroid/view/View;

    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    .line 195
    const/4 v3, 0x1

    iput-boolean v3, p0, Lch/kingdoms/android/ui/GameMenuUi;->m_isExistViewInCenter:Z

    .line 196
    iget-object v3, p0, Lch/kingdoms/android/ui/GameMenuUi;->f_activity:Landroid/app/Activity;

    iget-object v5, p0, Lch/kingdoms/android/ui/GameMenuUi;->f_di:Lch/android/api/util/DisplayInfo;

    invoke-static {v3, v5, p0}, Lch/kingdoms/android/ui/StaticTabMenu;->getInstance(Landroid/app/Activity;Lch/android/api/util/DisplayInfo;Lch/kingdoms/android/ui/IGameMenu;)Lch/kingdoms/android/ui/StaticTabMenu;

    move-result-object v3

    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Lch/kingdoms/android/ui/StaticTabMenu;->selectPage(I)V

    goto :goto_0

    .line 200
    :sswitch_2
    iget-object v3, p0, Lch/kingdoms/android/ui/GameMenuUi;->m_info:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-ne v3, v5, :cond_0

    .line 201
    iget-object v3, p0, Lch/kingdoms/android/ui/GameMenuUi;->m_info:Landroid/view/View;

    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    .line 202
    const/4 v3, 0x1

    iput-boolean v3, p0, Lch/kingdoms/android/ui/GameMenuUi;->m_isExistViewInCenter:Z

    .line 203
    iget-object v3, p0, Lch/kingdoms/android/ui/GameMenuUi;->f_activity:Landroid/app/Activity;

    iget-object v5, p0, Lch/kingdoms/android/ui/GameMenuUi;->f_di:Lch/android/api/util/DisplayInfo;

    invoke-static {v3, v5, p0}, Lch/kingdoms/android/ui/StaticTabMenu;->getInstance(Landroid/app/Activity;Lch/android/api/util/DisplayInfo;Lch/kingdoms/android/ui/IGameMenu;)Lch/kingdoms/android/ui/StaticTabMenu;

    move-result-object v3

    const/4 v5, 0x4

    invoke-virtual {v3, v5}, Lch/kingdoms/android/ui/StaticTabMenu;->selectPage(I)V

    goto :goto_0

    .line 207
    :sswitch_3
    if-eq v1, v6, :cond_0

    if-eq v1, v7, :cond_0

    .line 208
    new-instance v2, Lch/kingdoms/android/ui/WorldMapUi;

    iget-object v3, p0, Lch/kingdoms/android/ui/GameMenuUi;->f_activity:Landroid/app/Activity;

    iget-object v5, p0, Lch/kingdoms/android/ui/GameMenuUi;->f_di:Lch/android/api/util/DisplayInfo;

    invoke-direct {v2, v3, v5, p0}, Lch/kingdoms/android/ui/WorldMapUi;-><init>(Landroid/app/Activity;Lch/android/api/util/DisplayInfo;Lch/kingdoms/android/ui/GameMenuUi;)V

    .line 209
    .local v2, "worldMapUi":Lch/kingdoms/android/ui/WorldMapUi;
    invoke-virtual {v2}, Lch/kingdoms/android/ui/WorldMapUi;->getView()Landroid/view/View;

    move-result-object v3

    const/4 v5, 0x0

    invoke-direct {p0, v3, v5}, Lch/kingdoms/android/ui/GameMenuUi;->AddViewInCenter(Landroid/view/View;Landroid/widget/RelativeLayout$LayoutParams;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 174
    nop

    :sswitch_data_0
    .sparse-switch
        0x272e -> :sswitch_2
        0x272f -> :sswitch_3
        0x2731 -> :sswitch_0
        0x2760 -> :sswitch_1
    .end sparse-switch
.end method

.method public setButtonsVisibility(I)V
    .locals 1
    .param p1, "v"    # I

    .prologue
    .line 87
    iget-object v0, p0, Lch/kingdoms/android/ui/GameMenuUi;->f_buyPointBtn:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 88
    iget-object v0, p0, Lch/kingdoms/android/ui/GameMenuUi;->f_infoBtn:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 89
    iget-object v0, p0, Lch/kingdoms/android/ui/GameMenuUi;->f_wolrdMapBtn:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 90
    iget-object v0, p0, Lch/kingdoms/android/ui/GameMenuUi;->f_quickSaveBtn:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 91
    return-void
.end method

.method public setMainState(I)V
    .locals 2
    .param p1, "mainState"    # I

    .prologue
    .line 79
    iget-object v0, p0, Lch/kingdoms/android/ui/GameMenuUi;->f_activity:Landroid/app/Activity;

    iget-object v1, p0, Lch/kingdoms/android/ui/GameMenuUi;->f_di:Lch/android/api/util/DisplayInfo;

    invoke-static {v0, v1, p0}, Lch/kingdoms/android/ui/StaticTabMenu;->getInstance(Landroid/app/Activity;Lch/android/api/util/DisplayInfo;Lch/kingdoms/android/ui/IGameMenu;)Lch/kingdoms/android/ui/StaticTabMenu;

    move-result-object v0

    invoke-virtual {v0, p1}, Lch/kingdoms/android/ui/StaticTabMenu;->setMainState(I)V

    .line 80
    return-void
.end method

.method public showViewInCenter()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 249
    iget-boolean v0, p0, Lch/kingdoms/android/ui/GameMenuUi;->m_isExistViewInCenter:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lch/kingdoms/android/ui/GameMenuUi;->currentCenterView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 250
    iget-object v0, p0, Lch/kingdoms/android/ui/GameMenuUi;->currentCenterView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 252
    :cond_0
    iget-object v0, p0, Lch/kingdoms/android/ui/GameMenuUi;->m_info:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    .line 253
    iget-object v0, p0, Lch/kingdoms/android/ui/GameMenuUi;->m_info:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 255
    :cond_1
    return-void
.end method
