.class public Lch/kingdoms/android/ui/SystemUi;
.super Ljava/lang/Object;
.source "SystemUi.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final ID_BRAND_SHOP_BTN:I = 0x3e9

.field private static final ID_HELP_BTN:I = 0x3ea

.field private static final ID_MAIN_MENU_BTN:I = 0x3ed

.field private static final ID_NETWORK_BTN:I = 0x3ec

.field private static final ID_SAVE_BTN:I = 0x3e8

.field private static final ID_SETTING_BTN:I = 0x3eb


# instance fields
.field private final ACTIVITY:Landroid/app/Activity;

.field private final DI:Lch/android/api/util/DisplayInfo;

.field private final GAMEMENU_UI:Lch/kingdoms/android/ui/IGameMenu;

.field private LAYER_LEVEL:I

.field private final LAYOUT:Lch/android/api/ui/ChLinearLayout;

.field private MAIN_STATE:I


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lch/android/api/util/DisplayInfo;Lch/kingdoms/android/ui/IGameMenu;I)V
    .locals 9
    .param p1, "_activity"    # Landroid/app/Activity;
    .param p2, "_di"    # Lch/android/api/util/DisplayInfo;
    .param p3, "gameMenuUi"    # Lch/kingdoms/android/ui/IGameMenu;
    .param p4, "mainState"    # I

    .prologue
    const/16 v8, 0x11

    const/4 v7, 0x0

    const/4 v6, -0x2

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Lch/kingdoms/android/ui/SystemUi;->ACTIVITY:Landroid/app/Activity;

    .line 42
    iput-object p2, p0, Lch/kingdoms/android/ui/SystemUi;->DI:Lch/android/api/util/DisplayInfo;

    .line 44
    iput-object p3, p0, Lch/kingdoms/android/ui/SystemUi;->GAMEMENU_UI:Lch/kingdoms/android/ui/IGameMenu;

    .line 45
    iput p4, p0, Lch/kingdoms/android/ui/SystemUi;->MAIN_STATE:I

    .line 47
    iget-object v3, p0, Lch/kingdoms/android/ui/SystemUi;->ACTIVITY:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 48
    .local v0, "appContext":Landroid/content/Context;
    new-instance v3, Lch/android/api/ui/ChLinearLayout;

    invoke-direct {v3, v0}, Lch/android/api/ui/ChLinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lch/kingdoms/android/ui/SystemUi;->LAYOUT:Lch/android/api/ui/ChLinearLayout;

    .line 49
    iget-object v3, p0, Lch/kingdoms/android/ui/SystemUi;->LAYOUT:Lch/android/api/ui/ChLinearLayout;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lch/android/api/ui/ChLinearLayout;->setOrientation(I)V

    .line 51
    new-instance v1, Lch/android/api/ui/ChLinearLayout;

    invoke-direct {v1, v0}, Lch/android/api/ui/ChLinearLayout;-><init>(Landroid/content/Context;)V

    .line 52
    .local v1, "line":Lch/android/api/ui/ChLinearLayout;
    invoke-virtual {v1, v7}, Lch/android/api/ui/ChLinearLayout;->setOrientation(I)V

    .line 53
    const/16 v3, 0x3e8

    const v4, 0x7f02026e

    const v5, 0x7f02026b

    invoke-direct {p0, v0, v3, v4, v5}, Lch/kingdoms/android/ui/SystemUi;->createBtn(Landroid/content/Context;III)Landroid/view/View;

    move-result-object v3

    invoke-direct {p0}, Lch/kingdoms/android/ui/SystemUi;->createLp()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lch/android/api/ui/ChLinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 54
    const/16 v3, 0x3e9

    const v4, 0x7f02002f

    const v5, 0x7f02002d

    invoke-direct {p0, v0, v3, v4, v5}, Lch/kingdoms/android/ui/SystemUi;->createBtn(Landroid/content/Context;III)Landroid/view/View;

    move-result-object v3

    invoke-direct {p0}, Lch/kingdoms/android/ui/SystemUi;->createLp()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lch/android/api/ui/ChLinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 55
    const/16 v3, 0x3ea

    const v4, 0x7f0200d1

    const v5, 0x7f0200d0

    invoke-direct {p0, v0, v3, v4, v5}, Lch/kingdoms/android/ui/SystemUi;->createBtn(Landroid/content/Context;III)Landroid/view/View;

    move-result-object v3

    invoke-direct {p0}, Lch/kingdoms/android/ui/SystemUi;->createLp()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lch/android/api/ui/ChLinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 56
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v6, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 57
    .local v2, "lp":Landroid/widget/LinearLayout$LayoutParams;
    iput v8, v2, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 58
    const/high16 v3, 0x41000000    # 8.0f

    iget-object v4, p0, Lch/kingdoms/android/ui/SystemUi;->DI:Lch/android/api/util/DisplayInfo;

    iget v4, v4, Lch/android/api/util/DisplayInfo;->density:F

    mul-float/2addr v3, v4

    float-to-int v3, v3

    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 59
    iget-object v3, p0, Lch/kingdoms/android/ui/SystemUi;->LAYOUT:Lch/android/api/ui/ChLinearLayout;

    invoke-virtual {v3, v1, v2}, Lch/android/api/ui/ChLinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 62
    new-instance v1, Lch/android/api/ui/ChLinearLayout;

    .end local v1    # "line":Lch/android/api/ui/ChLinearLayout;
    invoke-direct {v1, v0}, Lch/android/api/ui/ChLinearLayout;-><init>(Landroid/content/Context;)V

    .line 63
    .restart local v1    # "line":Lch/android/api/ui/ChLinearLayout;
    invoke-virtual {v1, v7}, Lch/android/api/ui/ChLinearLayout;->setOrientation(I)V

    .line 64
    const/16 v3, 0x3eb

    const v4, 0x7f020276

    const v5, 0x7f020275

    invoke-direct {p0, v0, v3, v4, v5}, Lch/kingdoms/android/ui/SystemUi;->createBtn(Landroid/content/Context;III)Landroid/view/View;

    move-result-object v3

    invoke-direct {p0}, Lch/kingdoms/android/ui/SystemUi;->createLp()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lch/android/api/ui/ChLinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 65
    const/16 v3, 0x3ec

    const v4, 0x7f020212

    const v5, 0x7f020211

    invoke-direct {p0, v0, v3, v4, v5}, Lch/kingdoms/android/ui/SystemUi;->createBtn(Landroid/content/Context;III)Landroid/view/View;

    move-result-object v3

    invoke-direct {p0}, Lch/kingdoms/android/ui/SystemUi;->createLp()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lch/android/api/ui/ChLinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 66
    const/16 v3, 0x3ed

    const v4, 0x7f020202

    const v5, 0x7f020201

    invoke-direct {p0, v0, v3, v4, v5}, Lch/kingdoms/android/ui/SystemUi;->createBtn(Landroid/content/Context;III)Landroid/view/View;

    move-result-object v3

    invoke-direct {p0}, Lch/kingdoms/android/ui/SystemUi;->createLp()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lch/android/api/ui/ChLinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 67
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    .end local v2    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    invoke-direct {v2, v6, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 68
    .restart local v2    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    iput v8, v2, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 69
    const/high16 v3, 0x40a00000    # 5.0f

    iget-object v4, p0, Lch/kingdoms/android/ui/SystemUi;->DI:Lch/android/api/util/DisplayInfo;

    iget v4, v4, Lch/android/api/util/DisplayInfo;->density:F

    mul-float/2addr v3, v4

    float-to-int v3, v3

    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 70
    iget-object v3, p0, Lch/kingdoms/android/ui/SystemUi;->LAYOUT:Lch/android/api/ui/ChLinearLayout;

    invoke-virtual {v3, v1, v2}, Lch/android/api/ui/ChLinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 73
    invoke-static {}, Lch/android/api/ui/ChViewGen;->getEventLayerLevel()I

    move-result v3

    iput v3, p0, Lch/kingdoms/android/ui/SystemUi;->LAYER_LEVEL:I

    .line 74
    return-void
.end method

.method static synthetic access$0(Lch/kingdoms/android/ui/SystemUi;)Landroid/app/Activity;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lch/kingdoms/android/ui/SystemUi;->ACTIVITY:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$1(Lch/kingdoms/android/ui/SystemUi;)Lch/android/api/util/DisplayInfo;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lch/kingdoms/android/ui/SystemUi;->DI:Lch/android/api/util/DisplayInfo;

    return-object v0
.end method

.method static synthetic access$2(Lch/kingdoms/android/ui/SystemUi;)Lch/kingdoms/android/ui/IGameMenu;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lch/kingdoms/android/ui/SystemUi;->GAMEMENU_UI:Lch/kingdoms/android/ui/IGameMenu;

    return-object v0
.end method

.method private createBtn(Landroid/content/Context;III)Landroid/view/View;
    .locals 1
    .param p1, "_context"    # Landroid/content/Context;
    .param p2, "_id"    # I
    .param p3, "_upResId"    # I
    .param p4, "_downResId"    # I

    .prologue
    .line 85
    new-instance v0, Lch/android/api/ui/ChImageButton;

    invoke-direct {v0, p1, p3, p4}, Lch/android/api/ui/ChImageButton;-><init>(Landroid/content/Context;II)V

    .line 88
    .local v0, "btn":Lch/android/api/ui/ChImageButton;
    invoke-virtual {v0, p2}, Lch/android/api/ui/ChImageButton;->setId(I)V

    .line 89
    invoke-virtual {v0, p0}, Lch/android/api/ui/ChImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 91
    return-object v0
.end method

.method private createLp()Landroid/widget/LinearLayout$LayoutParams;
    .locals 4

    .prologue
    const/4 v2, -0x1

    .line 95
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 96
    .local v0, "lp":Landroid/widget/LinearLayout$LayoutParams;
    const/high16 v2, 0x3f800000    # 1.0f

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 97
    const/high16 v2, 0x40a00000    # 5.0f

    iget-object v3, p0, Lch/kingdoms/android/ui/SystemUi;->DI:Lch/android/api/util/DisplayInfo;

    iget v3, v3, Lch/android/api/util/DisplayInfo;->density:F

    mul-float/2addr v2, v3

    float-to-int v1, v2

    .line 98
    .local v1, "padding":I
    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 99
    return-object v0
.end method


# virtual methods
.method public getView()Landroid/view/View;
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lch/kingdoms/android/ui/SystemUi;->LAYOUT:Lch/android/api/ui/ChLinearLayout;

    return-object v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 9
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v8, 0x0

    const/16 v5, 0x54

    const/16 v3, 0x19

    const/16 v2, 0x18

    const/4 v4, 0x0

    .line 109
    iget v0, p0, Lch/kingdoms/android/ui/SystemUi;->LAYER_LEVEL:I

    invoke-static {}, Lch/android/api/ui/ChViewGen;->getEventLayerLevel()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 110
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 238
    :cond_0
    :goto_0
    return-void

    .line 112
    :pswitch_0
    iget v0, p0, Lch/kingdoms/android/ui/SystemUi;->MAIN_STATE:I

    if-eq v0, v2, :cond_1

    .line 113
    iget v0, p0, Lch/kingdoms/android/ui/SystemUi;->MAIN_STATE:I

    if-eq v0, v3, :cond_1

    invoke-static {}, Lch/kingdoms/ndk/NdkUiEventManager;->isSaveAvailable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 114
    iget-object v0, p0, Lch/kingdoms/android/ui/SystemUi;->GAMEMENU_UI:Lch/kingdoms/android/ui/IGameMenu;

    invoke-interface {v0}, Lch/kingdoms/android/ui/IGameMenu;->hideViewInCenter()V

    .line 115
    iget-object v0, p0, Lch/kingdoms/android/ui/SystemUi;->ACTIVITY:Landroid/app/Activity;

    invoke-static {v4}, Lch/kingdoms/ndk/NdkTextLoader;->getNetworkTxt(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lch/kingdoms/android/ui/SystemUi$1;

    invoke-direct {v2, p0}, Lch/kingdoms/android/ui/SystemUi$1;-><init>(Lch/kingdoms/android/ui/SystemUi;)V

    invoke-static {v0, v1, v2}, Lch/android/api/ui/ChViewGen;->popUpConfirmYesNoView(Landroid/app/Activity;Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;)Landroid/view/View;

    goto :goto_0

    .line 144
    :cond_1
    iget-object v0, p0, Lch/kingdoms/android/ui/SystemUi;->ACTIVITY:Landroid/app/Activity;

    const/16 v1, 0xa9

    invoke-static {v1}, Lch/kingdoms/ndk/NdkTextLoader;->getGameMenuTxt(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 148
    :pswitch_1
    iget-object v0, p0, Lch/kingdoms/android/ui/SystemUi;->GAMEMENU_UI:Lch/kingdoms/android/ui/IGameMenu;

    invoke-interface {v0}, Lch/kingdoms/android/ui/IGameMenu;->hideViewInCenter()V

    .line 149
    iget-object v8, p0, Lch/kingdoms/android/ui/SystemUi;->ACTIVITY:Landroid/app/Activity;

    new-instance v0, Lch/kingdoms/android/ui/OptionUi;

    iget-object v1, p0, Lch/kingdoms/android/ui/SystemUi;->ACTIVITY:Landroid/app/Activity;

    iget-object v2, p0, Lch/kingdoms/android/ui/SystemUi;->DI:Lch/android/api/util/DisplayInfo;

    const v3, 0x7f02023b

    new-instance v5, Lch/kingdoms/android/ui/SystemUi$2;

    invoke-direct {v5, p0}, Lch/kingdoms/android/ui/SystemUi$2;-><init>(Lch/kingdoms/android/ui/SystemUi;)V

    invoke-direct/range {v0 .. v5}, Lch/kingdoms/android/ui/OptionUi;-><init>(Landroid/app/Activity;Lch/android/api/util/DisplayInfo;IZLandroid/view/View$OnClickListener;)V

    invoke-static {v8, v0}, Lch/android/api/ui/ChViewGen;->popUp(Landroid/app/Activity;Landroid/view/View;)Landroid/view/View;

    goto :goto_0

    .line 164
    :pswitch_2
    iget v0, p0, Lch/kingdoms/android/ui/SystemUi;->MAIN_STATE:I

    if-eq v0, v2, :cond_3

    .line 165
    iget v0, p0, Lch/kingdoms/android/ui/SystemUi;->MAIN_STATE:I

    if-eq v0, v3, :cond_3

    .line 166
    invoke-static {}, Lch/kingdoms/ndk/NdkUiEventManager;->saveGame()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 167
    iget-object v0, p0, Lch/kingdoms/android/ui/SystemUi;->ACTIVITY:Landroid/app/Activity;

    const-string v1, "1116937"

    invoke-static {}, Lch/kingdoms/ndk/NdkUiEventManager;->getHeroScore()I

    move-result v2

    int-to-long v2, v2

    move-object v4, v8

    move-object v5, v8

    invoke-static/range {v0 .. v5}, Lch/android/lib/openfeint/ChOpenFeint;->registerScore(Landroid/app/Activity;Ljava/lang/String;JLjava/lang/String;Lcom/openfeint/api/resource/Score$SubmitToCB;)V

    .line 168
    iget-object v0, p0, Lch/kingdoms/android/ui/SystemUi;->ACTIVITY:Landroid/app/Activity;

    const/16 v1, 0x48

    invoke-static {v1}, Lch/kingdoms/ndk/NdkTextLoader;->getGameMenuTxt(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lch/android/api/ui/ChViewGen;->popUpOkView(Landroid/app/Activity;Ljava/lang/String;)Landroid/view/View;

    goto :goto_0

    .line 170
    :cond_2
    iget-object v0, p0, Lch/kingdoms/android/ui/SystemUi;->ACTIVITY:Landroid/app/Activity;

    invoke-static {v5}, Lch/kingdoms/ndk/NdkTextLoader;->getGameMenuTxt(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lch/android/api/ui/ChViewGen;->popUpOkView(Landroid/app/Activity;Ljava/lang/String;)Landroid/view/View;

    goto :goto_0

    .line 173
    :cond_3
    iget-object v0, p0, Lch/kingdoms/android/ui/SystemUi;->ACTIVITY:Landroid/app/Activity;

    invoke-static {v5}, Lch/kingdoms/ndk/NdkTextLoader;->getGameMenuTxt(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 177
    :pswitch_3
    iget-object v0, p0, Lch/kingdoms/android/ui/SystemUi;->GAMEMENU_UI:Lch/kingdoms/android/ui/IGameMenu;

    invoke-interface {v0}, Lch/kingdoms/android/ui/IGameMenu;->hideViewInCenter()V

    .line 178
    new-instance v7, Lch/kingdoms/android/ui/HelpUi;

    iget-object v0, p0, Lch/kingdoms/android/ui/SystemUi;->ACTIVITY:Landroid/app/Activity;

    iget-object v1, p0, Lch/kingdoms/android/ui/SystemUi;->DI:Lch/android/api/util/DisplayInfo;

    invoke-direct {v7, v0, v1}, Lch/kingdoms/android/ui/HelpUi;-><init>(Landroid/app/Activity;Lch/android/api/util/DisplayInfo;)V

    .line 179
    .local v7, "helpUi":Lch/kingdoms/android/ui/HelpUi;
    new-instance v0, Lch/kingdoms/android/ui/SystemUi$3;

    invoke-direct {v0, p0}, Lch/kingdoms/android/ui/SystemUi$3;-><init>(Lch/kingdoms/android/ui/SystemUi;)V

    invoke-virtual {v7, v0}, Lch/kingdoms/android/ui/HelpUi;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 193
    iget-object v0, p0, Lch/kingdoms/android/ui/SystemUi;->ACTIVITY:Landroid/app/Activity;

    invoke-static {v0, v7}, Lch/android/api/ui/ChViewGen;->popUp(Landroid/app/Activity;Landroid/view/View;)Landroid/view/View;

    goto/16 :goto_0

    .line 196
    .end local v7    # "helpUi":Lch/kingdoms/android/ui/HelpUi;
    :pswitch_4
    iget v0, p0, Lch/kingdoms/android/ui/SystemUi;->MAIN_STATE:I

    if-eq v0, v2, :cond_4

    .line 197
    iget v0, p0, Lch/kingdoms/android/ui/SystemUi;->MAIN_STATE:I

    if-eq v0, v3, :cond_4

    invoke-static {}, Lch/kingdoms/ndk/NdkUiEventManager;->isSaveAvailable()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 198
    iget-object v0, p0, Lch/kingdoms/android/ui/SystemUi;->GAMEMENU_UI:Lch/kingdoms/android/ui/IGameMenu;

    invoke-interface {v0}, Lch/kingdoms/android/ui/IGameMenu;->hideViewInCenter()V

    .line 199
    new-instance v6, Lch/kingdoms/android/ui/BrandShopUi;

    iget-object v0, p0, Lch/kingdoms/android/ui/SystemUi;->DI:Lch/android/api/util/DisplayInfo;

    new-instance v1, Lch/kingdoms/android/ui/SystemUi$4;

    invoke-direct {v1, p0}, Lch/kingdoms/android/ui/SystemUi$4;-><init>(Lch/kingdoms/android/ui/SystemUi;)V

    invoke-direct {v6, v0, v1}, Lch/kingdoms/android/ui/BrandShopUi;-><init>(Lch/android/api/util/DisplayInfo;Landroid/view/View$OnClickListener;)V

    .line 211
    .local v6, "brandShopUi":Lch/kingdoms/android/ui/BrandShopUi;
    iget-object v0, p0, Lch/kingdoms/android/ui/SystemUi;->ACTIVITY:Landroid/app/Activity;

    invoke-virtual {v6}, Lch/kingdoms/android/ui/BrandShopUi;->getView()Landroid/view/View;

    move-result-object v1

    invoke-static {v0, v1}, Lch/android/api/ui/ChViewGen;->popUp(Landroid/app/Activity;Landroid/view/View;)Landroid/view/View;

    goto/16 :goto_0

    .line 213
    .end local v6    # "brandShopUi":Lch/kingdoms/android/ui/BrandShopUi;
    :cond_4
    iget-object v0, p0, Lch/kingdoms/android/ui/SystemUi;->ACTIVITY:Landroid/app/Activity;

    invoke-static {v5}, Lch/kingdoms/ndk/NdkTextLoader;->getGameMenuTxt(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 217
    :pswitch_5
    iget-object v0, p0, Lch/kingdoms/android/ui/SystemUi;->ACTIVITY:Landroid/app/Activity;

    const/16 v1, 0x1c

    invoke-static {v1}, Lch/kingdoms/ndk/NdkTextLoader;->getGameMenuTxt(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lch/kingdoms/android/ui/SystemUi$5;

    invoke-direct {v2, p0}, Lch/kingdoms/android/ui/SystemUi$5;-><init>(Lch/kingdoms/android/ui/SystemUi;)V

    invoke-static {v0, v1, v2}, Lch/android/api/ui/ChViewGen;->popUpConfirmYesNoView(Landroid/app/Activity;Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;)Landroid/view/View;

    goto/16 :goto_0

    .line 110
    nop

    :pswitch_data_0
    .packed-switch 0x3e8
        :pswitch_2
        :pswitch_4
        :pswitch_3
        :pswitch_1
        :pswitch_0
        :pswitch_5
    .end packed-switch
.end method

.method public update(I)V
    .locals 0
    .param p1, "mainState"    # I

    .prologue
    .line 77
    iput p1, p0, Lch/kingdoms/android/ui/SystemUi;->MAIN_STATE:I

    .line 78
    return-void
.end method

.method public updateLayerLevel()V
    .locals 1

    .prologue
    .line 81
    invoke-static {}, Lch/android/api/ui/ChViewGen;->getEventLayerLevel()I

    move-result v0

    iput v0, p0, Lch/kingdoms/android/ui/SystemUi;->LAYER_LEVEL:I

    .line 82
    return-void
.end method
