.class public Lch/kingdoms/android/ui/StatusUi;
.super Ljava/lang/Object;
.source "StatusUi.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lch/kingdoms/android/ui/StatusUi$StatusView;
    }
.end annotation


# instance fields
.field private final ID_DEX_BTN:I

.field private final ID_INT_BTN:I

.field private final ID_STR_BTN:I

.field private final ID_VIT_BTN:I

.field private final f_activity:Landroid/app/Activity;

.field private final f_confirmObject:Lch/android/api/ui/ICheckConfirmObject;

.field private final f_view:Lch/kingdoms/android/ui/StatusUi$StatusView;

.field private layerLavel:I

.field private newestDat:Lch/kingdoms/ndk/data/HeroStatus;

.field private originalDat:Lch/kingdoms/ndk/data/HeroStatus;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lch/android/api/util/DisplayInfo;Lch/kingdoms/ndk/data/HeroStatus;Lch/android/api/ui/ICheckConfirmObject;)V
    .locals 2
    .param p1, "_activity"    # Landroid/app/Activity;
    .param p2, "_di"    # Lch/android/api/util/DisplayInfo;
    .param p3, "_original"    # Lch/kingdoms/ndk/data/HeroStatus;
    .param p4, "_cco"    # Lch/android/api/ui/ICheckConfirmObject;

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    const/16 v0, 0x64

    iput v0, p0, Lch/kingdoms/android/ui/StatusUi;->ID_STR_BTN:I

    .line 33
    const/16 v0, 0x65

    iput v0, p0, Lch/kingdoms/android/ui/StatusUi;->ID_VIT_BTN:I

    .line 34
    const/16 v0, 0x66

    iput v0, p0, Lch/kingdoms/android/ui/StatusUi;->ID_DEX_BTN:I

    .line 35
    const/16 v0, 0x67

    iput v0, p0, Lch/kingdoms/android/ui/StatusUi;->ID_INT_BTN:I

    .line 49
    iput-object p1, p0, Lch/kingdoms/android/ui/StatusUi;->f_activity:Landroid/app/Activity;

    .line 50
    iput-object p3, p0, Lch/kingdoms/android/ui/StatusUi;->originalDat:Lch/kingdoms/ndk/data/HeroStatus;

    .line 51
    iget-object v0, p0, Lch/kingdoms/android/ui/StatusUi;->originalDat:Lch/kingdoms/ndk/data/HeroStatus;

    if-eqz v0, :cond_0

    .line 52
    iget-object v0, p0, Lch/kingdoms/android/ui/StatusUi;->originalDat:Lch/kingdoms/ndk/data/HeroStatus;

    invoke-virtual {v0}, Lch/kingdoms/ndk/data/HeroStatus;->copy()Lch/kingdoms/ndk/data/HeroStatus;

    move-result-object v0

    iput-object v0, p0, Lch/kingdoms/android/ui/StatusUi;->newestDat:Lch/kingdoms/ndk/data/HeroStatus;

    .line 54
    :cond_0
    iput-object p4, p0, Lch/kingdoms/android/ui/StatusUi;->f_confirmObject:Lch/android/api/ui/ICheckConfirmObject;

    .line 56
    new-instance v0, Lch/kingdoms/android/ui/StatusUi$StatusView;

    iget v1, p2, Lch/android/api/util/DisplayInfo;->density:F

    invoke-direct {v0, p0, p1, v1}, Lch/kingdoms/android/ui/StatusUi$StatusView;-><init>(Lch/kingdoms/android/ui/StatusUi;Landroid/app/Activity;F)V

    iput-object v0, p0, Lch/kingdoms/android/ui/StatusUi;->f_view:Lch/kingdoms/android/ui/StatusUi$StatusView;

    .line 58
    invoke-static {}, Lch/android/api/ui/ChViewGen;->getEventLayerLevel()I

    move-result v0

    iput v0, p0, Lch/kingdoms/android/ui/StatusUi;->layerLavel:I

    .line 59
    invoke-direct {p0}, Lch/kingdoms/android/ui/StatusUi;->updateStat()V

    .line 60
    return-void
.end method

.method static synthetic access$0(Lch/kingdoms/android/ui/StatusUi;)Lch/kingdoms/ndk/data/HeroStatus;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lch/kingdoms/android/ui/StatusUi;->newestDat:Lch/kingdoms/ndk/data/HeroStatus;

    return-object v0
.end method

.method static synthetic access$1(Lch/kingdoms/android/ui/StatusUi;)V
    .locals 0

    .prologue
    .line 127
    invoke-direct {p0}, Lch/kingdoms/android/ui/StatusUi;->updateStat()V

    return-void
.end method

.method static synthetic access$2(Lch/kingdoms/android/ui/StatusUi;)Lch/kingdoms/ndk/data/HeroStatus;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lch/kingdoms/android/ui/StatusUi;->originalDat:Lch/kingdoms/ndk/data/HeroStatus;

    return-object v0
.end method

.method private updateStat()V
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Lch/kingdoms/android/ui/StatusUi;->newestDat:Lch/kingdoms/ndk/data/HeroStatus;

    if-eqz v0, :cond_0

    .line 129
    iget-object v0, p0, Lch/kingdoms/android/ui/StatusUi;->f_view:Lch/kingdoms/android/ui/StatusUi$StatusView;

    invoke-virtual {v0}, Lch/kingdoms/android/ui/StatusUi$StatusView;->updateStat()V

    .line 130
    iget-object v0, p0, Lch/kingdoms/android/ui/StatusUi;->newestDat:Lch/kingdoms/ndk/data/HeroStatus;

    invoke-virtual {v0}, Lch/kingdoms/ndk/data/HeroStatus;->getStatPoints()I

    move-result v0

    if-nez v0, :cond_0

    .line 131
    iget-object v0, p0, Lch/kingdoms/android/ui/StatusUi;->f_view:Lch/kingdoms/android/ui/StatusUi$StatusView;

    invoke-virtual {v0}, Lch/kingdoms/android/ui/StatusUi$StatusView;->lockStatBtns()V

    .line 134
    :cond_0
    return-void
.end method


# virtual methods
.method public getViewGroup()Landroid/view/ViewGroup;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lch/kingdoms/android/ui/StatusUi;->f_view:Lch/kingdoms/android/ui/StatusUi$StatusView;

    return-object v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 79
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 80
    .local v0, "id":I
    invoke-static {}, Lch/android/api/ui/ChViewGen;->getEventLayerLevel()I

    move-result v1

    .line 82
    .local v1, "layerLevel":I
    iget-object v2, p0, Lch/kingdoms/android/ui/StatusUi;->newestDat:Lch/kingdoms/ndk/data/HeroStatus;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lch/kingdoms/android/ui/StatusUi;->originalDat:Lch/kingdoms/ndk/data/HeroStatus;

    if-eqz v2, :cond_0

    .line 83
    iget v2, p0, Lch/kingdoms/android/ui/StatusUi;->layerLavel:I

    if-ne v1, v2, :cond_1

    .line 84
    packed-switch v0, :pswitch_data_0

    .line 102
    :goto_0
    invoke-direct {p0}, Lch/kingdoms/android/ui/StatusUi;->updateStat()V

    .line 119
    :cond_0
    :goto_1
    return-void

    .line 86
    :pswitch_0
    iget-object v2, p0, Lch/kingdoms/android/ui/StatusUi;->newestDat:Lch/kingdoms/ndk/data/HeroStatus;

    invoke-virtual {v2}, Lch/kingdoms/ndk/data/HeroStatus;->plusStr()V

    .line 87
    iget-object v2, p0, Lch/kingdoms/android/ui/StatusUi;->newestDat:Lch/kingdoms/ndk/data/HeroStatus;

    invoke-static {v2}, Lch/kingdoms/ndk/NdkUiEventManager;->callNativeCalHeroInfo(Lch/kingdoms/ndk/data/HeroStatus;)V

    goto :goto_0

    .line 90
    :pswitch_1
    iget-object v2, p0, Lch/kingdoms/android/ui/StatusUi;->newestDat:Lch/kingdoms/ndk/data/HeroStatus;

    invoke-virtual {v2}, Lch/kingdoms/ndk/data/HeroStatus;->plusVit()V

    .line 91
    iget-object v2, p0, Lch/kingdoms/android/ui/StatusUi;->newestDat:Lch/kingdoms/ndk/data/HeroStatus;

    invoke-static {v2}, Lch/kingdoms/ndk/NdkUiEventManager;->callNativeCalHeroInfo(Lch/kingdoms/ndk/data/HeroStatus;)V

    goto :goto_0

    .line 94
    :pswitch_2
    iget-object v2, p0, Lch/kingdoms/android/ui/StatusUi;->newestDat:Lch/kingdoms/ndk/data/HeroStatus;

    invoke-virtual {v2}, Lch/kingdoms/ndk/data/HeroStatus;->plushDex()V

    .line 95
    iget-object v2, p0, Lch/kingdoms/android/ui/StatusUi;->newestDat:Lch/kingdoms/ndk/data/HeroStatus;

    invoke-static {v2}, Lch/kingdoms/ndk/NdkUiEventManager;->callNativeCalHeroInfo(Lch/kingdoms/ndk/data/HeroStatus;)V

    goto :goto_0

    .line 98
    :pswitch_3
    iget-object v2, p0, Lch/kingdoms/android/ui/StatusUi;->newestDat:Lch/kingdoms/ndk/data/HeroStatus;

    invoke-virtual {v2}, Lch/kingdoms/ndk/data/HeroStatus;->plusInt()V

    .line 99
    iget-object v2, p0, Lch/kingdoms/android/ui/StatusUi;->newestDat:Lch/kingdoms/ndk/data/HeroStatus;

    invoke-static {v2}, Lch/kingdoms/ndk/NdkUiEventManager;->callNativeCalHeroInfo(Lch/kingdoms/ndk/data/HeroStatus;)V

    goto :goto_0

    .line 104
    :cond_1
    iget v2, p0, Lch/kingdoms/android/ui/StatusUi;->layerLavel:I

    add-int/lit8 v2, v2, 0x1

    if-ne v1, v2, :cond_0

    .line 105
    packed-switch v0, :pswitch_data_1

    goto :goto_1

    .line 107
    :pswitch_4
    iget-object v2, p0, Lch/kingdoms/android/ui/StatusUi;->newestDat:Lch/kingdoms/ndk/data/HeroStatus;

    invoke-static {v2}, Lch/kingdoms/ndk/NdkUiEventManager;->callNativeCalHeroInfo(Lch/kingdoms/ndk/data/HeroStatus;)V

    .line 108
    iget-object v2, p0, Lch/kingdoms/android/ui/StatusUi;->f_confirmObject:Lch/android/api/ui/ICheckConfirmObject;

    invoke-interface {v2}, Lch/android/api/ui/ICheckConfirmObject;->pushChecked()V

    .line 109
    invoke-static {}, Lch/android/api/ui/ChViewGen;->closePopUpView()V

    goto :goto_1

    .line 112
    :pswitch_5
    iget-object v2, p0, Lch/kingdoms/android/ui/StatusUi;->originalDat:Lch/kingdoms/ndk/data/HeroStatus;

    invoke-static {v2}, Lch/kingdoms/ndk/NdkUiEventManager;->callNativeCalHeroInfo(Lch/kingdoms/ndk/data/HeroStatus;)V

    .line 113
    iget-object v2, p0, Lch/kingdoms/android/ui/StatusUi;->f_confirmObject:Lch/android/api/ui/ICheckConfirmObject;

    invoke-interface {v2}, Lch/android/api/ui/ICheckConfirmObject;->pushChecked()V

    .line 114
    invoke-static {}, Lch/android/api/ui/ChViewGen;->closePopUpView()V

    goto :goto_1

    .line 84
    nop

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch

    .line 105
    :pswitch_data_1
    .packed-switch 0x2742
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public popUpConfirmView()V
    .locals 2

    .prologue
    .line 123
    iget-object v0, p0, Lch/kingdoms/android/ui/StatusUi;->f_activity:Landroid/app/Activity;

    const v1, 0x7f050035

    invoke-static {v0, v1, p0}, Lch/android/api/ui/ChViewGen;->popUpConfirmYesNoView(Landroid/app/Activity;ILandroid/view/View$OnClickListener;)Landroid/view/View;

    .line 125
    return-void
.end method

.method public updateStatus(Lch/kingdoms/ndk/data/HeroStatus;)V
    .locals 1
    .param p1, "_original"    # Lch/kingdoms/ndk/data/HeroStatus;

    .prologue
    .line 63
    iput-object p1, p0, Lch/kingdoms/android/ui/StatusUi;->originalDat:Lch/kingdoms/ndk/data/HeroStatus;

    .line 64
    iget-object v0, p0, Lch/kingdoms/android/ui/StatusUi;->originalDat:Lch/kingdoms/ndk/data/HeroStatus;

    if-eqz v0, :cond_0

    .line 65
    iget-object v0, p0, Lch/kingdoms/android/ui/StatusUi;->originalDat:Lch/kingdoms/ndk/data/HeroStatus;

    invoke-virtual {v0}, Lch/kingdoms/ndk/data/HeroStatus;->copy()Lch/kingdoms/ndk/data/HeroStatus;

    move-result-object v0

    iput-object v0, p0, Lch/kingdoms/android/ui/StatusUi;->newestDat:Lch/kingdoms/ndk/data/HeroStatus;

    .line 67
    :cond_0
    iget-object v0, p0, Lch/kingdoms/android/ui/StatusUi;->f_view:Lch/kingdoms/android/ui/StatusUi$StatusView;

    invoke-virtual {v0}, Lch/kingdoms/android/ui/StatusUi$StatusView;->invalidate()V

    .line 68
    invoke-static {}, Lch/android/api/ui/ChViewGen;->getEventLayerLevel()I

    move-result v0

    iput v0, p0, Lch/kingdoms/android/ui/StatusUi;->layerLavel:I

    .line 69
    return-void
.end method
