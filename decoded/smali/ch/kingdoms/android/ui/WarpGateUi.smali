.class public Lch/kingdoms/android/ui/WarpGateUi;
.super Ljava/lang/Object;
.source "WarpGateUi.java"


# instance fields
.field private final ACTIVITY:Landroid/app/Activity;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lch/kingdoms/android/ui/WarpGateUi;->ACTIVITY:Landroid/app/Activity;

    .line 24
    return-void
.end method

.method static synthetic access$0(Lch/kingdoms/android/ui/WarpGateUi;)Landroid/app/Activity;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lch/kingdoms/android/ui/WarpGateUi;->ACTIVITY:Landroid/app/Activity;

    return-object v0
.end method


# virtual methods
.method public popUp()V
    .locals 14

    .prologue
    .line 27
    iget-object v3, p0, Lch/kingdoms/android/ui/WarpGateUi;->ACTIVITY:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 28
    .local v1, "context":Landroid/content/Context;
    const/4 v12, 0x1

    .line 29
    .local v12, "isWarpGateUsable":Z
    if-eqz v12, :cond_3

    .line 30
    invoke-static {}, Lch/kingdoms/ndk/NdkUiEventManager;->getWarpGateNum()I

    move-result v13

    .line 31
    .local v13, "warpGateNum":I
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 32
    .local v8, "btns":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    new-instance v9, Lch/kingdoms/android/ui/WarpGateUi$1;

    invoke-direct {v9, p0, v13}, Lch/kingdoms/android/ui/WarpGateUi$1;-><init>(Lch/kingdoms/android/ui/WarpGateUi;I)V

    .line 46
    .local v9, "btnsOnClickListener":Landroid/view/View$OnClickListener;
    const/4 v10, 0x0

    .line 47
    .local v10, "count":I
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_0
    const/16 v3, 0x8

    if-lt v11, v3, :cond_0

    .line 60
    invoke-static {}, Lch/android/api/util/DisplayInfo;->getInstance()Lch/android/api/util/DisplayInfo;

    move-result-object v2

    .line 61
    .local v2, "di":Lch/android/api/util/DisplayInfo;
    new-instance v0, Lch/android/api/ui/ChPopUpMenuView;

    const v3, 0x7f0202d7

    const v4, 0x7f0200c8

    const/4 v5, 0x0

    new-array v5, v5, [Landroid/view/View;

    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Landroid/view/View;

    .line 62
    new-instance v6, Lch/kingdoms/android/ui/WarpGateUi$2;

    invoke-direct {v6, p0}, Lch/kingdoms/android/ui/WarpGateUi$2;-><init>(Lch/kingdoms/android/ui/WarpGateUi;)V

    .line 61
    invoke-direct/range {v0 .. v6}, Lch/android/api/ui/ChPopUpMenuView;-><init>(Landroid/content/Context;Lch/android/api/util/DisplayInfo;II[Landroid/view/View;Landroid/view/View$OnClickListener;)V

    .line 73
    .local v0, "warpGateMenu":Lch/android/api/ui/ChPopUpMenuView;
    iget-object v3, p0, Lch/kingdoms/android/ui/WarpGateUi;->ACTIVITY:Landroid/app/Activity;

    invoke-static {v3, v0}, Lch/android/api/ui/ChViewGen;->popUp(Landroid/app/Activity;Landroid/view/View;)Landroid/view/View;

    .line 87
    .end local v0    # "warpGateMenu":Lch/android/api/ui/ChPopUpMenuView;
    .end local v2    # "di":Lch/android/api/util/DisplayInfo;
    .end local v8    # "btns":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .end local v9    # "btnsOnClickListener":Landroid/view/View$OnClickListener;
    .end local v10    # "count":I
    .end local v11    # "i":I
    .end local v13    # "warpGateNum":I
    :goto_1
    return-void

    .line 48
    .restart local v8    # "btns":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .restart local v9    # "btnsOnClickListener":Landroid/view/View$OnClickListener;
    .restart local v10    # "count":I
    .restart local v11    # "i":I
    .restart local v13    # "warpGateNum":I
    :cond_0
    if-eq v13, v11, :cond_2

    .line 49
    new-instance v7, Lch/android/api/ui/ChTextSlimButton;

    const v3, 0x7f0201fc

    const v4, 0x7f0201fb

    .line 50
    add-int/lit16 v5, v11, 0xbe

    invoke-static {v5}, Lch/kingdoms/ndk/NdkTextLoader;->getGameMenuTxt(I)Ljava/lang/String;

    move-result-object v5

    .line 49
    invoke-direct {v7, v1, v3, v4, v5}, Lch/android/api/ui/ChTextSlimButton;-><init>(Landroid/content/Context;IILjava/lang/String;)V

    .line 51
    .local v7, "btn":Lch/android/api/ui/ChTextSlimButton;
    invoke-virtual {v7, v10}, Lch/android/api/ui/ChTextSlimButton;->setId(I)V

    .line 52
    invoke-virtual {v7, v9}, Lch/android/api/ui/ChTextSlimButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 53
    invoke-static {v10}, Lch/kingdoms/ndk/NdkUiEventManager;->isWarpGateUsable(I)Z

    move-result v3

    if-nez v3, :cond_1

    .line 54
    const v3, -0x777778

    invoke-virtual {v7, v3}, Lch/android/api/ui/ChTextSlimButton;->setTextColor(I)V

    .line 56
    :cond_1
    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 57
    add-int/lit8 v10, v10, 0x1

    .line 47
    .end local v7    # "btn":Lch/android/api/ui/ChTextSlimButton;
    :cond_2
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 75
    .end local v8    # "btns":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .end local v9    # "btnsOnClickListener":Landroid/view/View$OnClickListener;
    .end local v10    # "count":I
    .end local v11    # "i":I
    .end local v13    # "warpGateNum":I
    :cond_3
    iget-object v3, p0, Lch/kingdoms/android/ui/WarpGateUi;->ACTIVITY:Landroid/app/Activity;

    const/16 v4, 0x115

    invoke-static {v4}, Lch/kingdoms/ndk/NdkTextLoader;->getGameMenuTxt(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lch/kingdoms/android/ui/WarpGateUi$3;

    invoke-direct {v5, p0}, Lch/kingdoms/android/ui/WarpGateUi$3;-><init>(Lch/kingdoms/android/ui/WarpGateUi;)V

    invoke-static {v3, v4, v5}, Lch/android/api/ui/ChViewGen;->popUpConfirmYesNoView(Landroid/app/Activity;Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;)Landroid/view/View;

    goto :goto_1
.end method
