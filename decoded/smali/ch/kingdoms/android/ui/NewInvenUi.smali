.class public Lch/kingdoms/android/ui/NewInvenUi;
.super Ljava/lang/Object;
.source "NewInvenUi.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lch/kingdoms/android/ui/NewInvenUi$FilterTabView;,
        Lch/kingdoms/android/ui/NewInvenUi$InfoView;,
        Lch/kingdoms/android/ui/NewInvenUi$InvenAndInfoView;
    }
.end annotation


# instance fields
.field private final ACTIVITY:Landroid/app/Activity;

.field private final DI:Lch/android/api/util/DisplayInfo;

.field private final GAMEMENU_UI:Lch/kingdoms/android/ui/IGameMenu;

.field private final ID_TAB_ALL:I

.field private final ID_TAB_EQUIP:I

.field private final ID_TAB_ITEM:I

.field private final ID_TAB_QUEST:I

.field private final ID_TAB_RING:I

.field private final h:I

.field private final invenAndInfoView:Lch/kingdoms/android/ui/NewInvenUi$InvenAndInfoView;

.field private layerLevel:I

.field private final w:I


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lch/android/api/util/DisplayInfo;Lch/kingdoms/android/ui/IGameMenu;)V
    .locals 3
    .param p1, "_activity"    # Landroid/app/Activity;
    .param p2, "_di"    # Lch/android/api/util/DisplayInfo;
    .param p3, "gameMenuUi"    # Lch/kingdoms/android/ui/IGameMenu;

    .prologue
    const v2, 0x7f0202bb

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    const/16 v1, 0x3e8

    iput v1, p0, Lch/kingdoms/android/ui/NewInvenUi;->ID_TAB_ALL:I

    .line 31
    const/16 v1, 0x3e9

    iput v1, p0, Lch/kingdoms/android/ui/NewInvenUi;->ID_TAB_EQUIP:I

    .line 32
    const/16 v1, 0x3ea

    iput v1, p0, Lch/kingdoms/android/ui/NewInvenUi;->ID_TAB_RING:I

    .line 33
    const/16 v1, 0x3eb

    iput v1, p0, Lch/kingdoms/android/ui/NewInvenUi;->ID_TAB_ITEM:I

    .line 34
    const/16 v1, 0x3ec

    iput v1, p0, Lch/kingdoms/android/ui/NewInvenUi;->ID_TAB_QUEST:I

    .line 50
    iput-object p1, p0, Lch/kingdoms/android/ui/NewInvenUi;->ACTIVITY:Landroid/app/Activity;

    .line 51
    iput-object p2, p0, Lch/kingdoms/android/ui/NewInvenUi;->DI:Lch/android/api/util/DisplayInfo;

    .line 52
    iput-object p3, p0, Lch/kingdoms/android/ui/NewInvenUi;->GAMEMENU_UI:Lch/kingdoms/android/ui/IGameMenu;

    .line 54
    iget-object v1, p0, Lch/kingdoms/android/ui/NewInvenUi;->ACTIVITY:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 56
    .local v0, "context":Landroid/content/Context;
    new-instance v1, Lch/kingdoms/android/ui/NewInvenUi$InvenAndInfoView;

    invoke-direct {v1, p0, v0}, Lch/kingdoms/android/ui/NewInvenUi$InvenAndInfoView;-><init>(Lch/kingdoms/android/ui/NewInvenUi;Landroid/content/Context;)V

    iput-object v1, p0, Lch/kingdoms/android/ui/NewInvenUi;->invenAndInfoView:Lch/kingdoms/android/ui/NewInvenUi$InvenAndInfoView;

    .line 58
    iget-object v1, p0, Lch/kingdoms/android/ui/NewInvenUi;->ACTIVITY:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v1, v2}, Lch/android/api/util/BmpUtil;->getBmpWidth(Landroid/content/res/Resources;I)I

    move-result v1

    iput v1, p0, Lch/kingdoms/android/ui/NewInvenUi;->w:I

    .line 59
    iget-object v1, p0, Lch/kingdoms/android/ui/NewInvenUi;->ACTIVITY:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v1, v2}, Lch/android/api/util/BmpUtil;->getBmpHeight(Landroid/content/res/Resources;I)I

    move-result v1

    iput v1, p0, Lch/kingdoms/android/ui/NewInvenUi;->h:I

    .line 60
    return-void
.end method

.method static synthetic access$0(Lch/kingdoms/android/ui/NewInvenUi;)Landroid/app/Activity;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lch/kingdoms/android/ui/NewInvenUi;->ACTIVITY:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$1(Lch/kingdoms/android/ui/NewInvenUi;)Lch/android/api/util/DisplayInfo;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lch/kingdoms/android/ui/NewInvenUi;->DI:Lch/android/api/util/DisplayInfo;

    return-object v0
.end method

.method static synthetic access$2(Lch/kingdoms/android/ui/NewInvenUi;)I
    .locals 1

    .prologue
    .line 44
    iget v0, p0, Lch/kingdoms/android/ui/NewInvenUi;->w:I

    return v0
.end method

.method static synthetic access$3(Lch/kingdoms/android/ui/NewInvenUi;)I
    .locals 1

    .prologue
    .line 45
    iget v0, p0, Lch/kingdoms/android/ui/NewInvenUi;->h:I

    return v0
.end method

.method static synthetic access$4(Lch/kingdoms/android/ui/NewInvenUi;)I
    .locals 1

    .prologue
    .line 47
    iget v0, p0, Lch/kingdoms/android/ui/NewInvenUi;->layerLevel:I

    return v0
.end method

.method static synthetic access$5(Lch/kingdoms/android/ui/NewInvenUi;)Lch/kingdoms/android/ui/IGameMenu;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lch/kingdoms/android/ui/NewInvenUi;->GAMEMENU_UI:Lch/kingdoms/android/ui/IGameMenu;

    return-object v0
.end method


# virtual methods
.method public getView()Landroid/view/View;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lch/kingdoms/android/ui/NewInvenUi;->invenAndInfoView:Lch/kingdoms/android/ui/NewInvenUi$InvenAndInfoView;

    return-object v0
.end method

.method public initInven()V
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lch/kingdoms/android/ui/NewInvenUi;->invenAndInfoView:Lch/kingdoms/android/ui/NewInvenUi$InvenAndInfoView;

    invoke-virtual {v0}, Lch/kingdoms/android/ui/NewInvenUi$InvenAndInfoView;->initIven()V

    .line 68
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 89
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 90
    .local v0, "id":I
    const/16 v1, 0x3e8

    if-lt v0, v1, :cond_0

    invoke-static {}, Lch/android/api/ui/ChViewGen;->getEventLayerLevel()I

    move-result v1

    iget v2, p0, Lch/kingdoms/android/ui/NewInvenUi;->layerLevel:I

    if-ne v1, v2, :cond_0

    .line 91
    packed-switch v0, :pswitch_data_0

    .line 109
    :cond_0
    :goto_0
    return-void

    .line 93
    :pswitch_0
    iget-object v1, p0, Lch/kingdoms/android/ui/NewInvenUi;->invenAndInfoView:Lch/kingdoms/android/ui/NewInvenUi$InvenAndInfoView;

    invoke-virtual {v1}, Lch/kingdoms/android/ui/NewInvenUi$InvenAndInfoView;->filterDefault()V

    goto :goto_0

    .line 96
    :pswitch_1
    iget-object v1, p0, Lch/kingdoms/android/ui/NewInvenUi;->invenAndInfoView:Lch/kingdoms/android/ui/NewInvenUi$InvenAndInfoView;

    invoke-virtual {v1}, Lch/kingdoms/android/ui/NewInvenUi$InvenAndInfoView;->filterEquip()V

    goto :goto_0

    .line 99
    :pswitch_2
    iget-object v1, p0, Lch/kingdoms/android/ui/NewInvenUi;->invenAndInfoView:Lch/kingdoms/android/ui/NewInvenUi$InvenAndInfoView;

    invoke-virtual {v1}, Lch/kingdoms/android/ui/NewInvenUi$InvenAndInfoView;->filterRing()V

    goto :goto_0

    .line 102
    :pswitch_3
    iget-object v1, p0, Lch/kingdoms/android/ui/NewInvenUi;->invenAndInfoView:Lch/kingdoms/android/ui/NewInvenUi$InvenAndInfoView;

    invoke-virtual {v1}, Lch/kingdoms/android/ui/NewInvenUi$InvenAndInfoView;->filterItem()V

    goto :goto_0

    .line 105
    :pswitch_4
    iget-object v1, p0, Lch/kingdoms/android/ui/NewInvenUi;->invenAndInfoView:Lch/kingdoms/android/ui/NewInvenUi$InvenAndInfoView;

    invoke-virtual {v1}, Lch/kingdoms/android/ui/NewInvenUi$InvenAndInfoView;->filterQuest()V

    goto :goto_0

    .line 91
    :pswitch_data_0
    .packed-switch 0x3e8
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public setLayerLevel(I)V
    .locals 0
    .param p1, "layerLevel"    # I

    .prologue
    .line 63
    iput p1, p0, Lch/kingdoms/android/ui/NewInvenUi;->layerLevel:I

    .line 64
    return-void
.end method
