.class public Lch/kingdoms/android/ui/PrivateWareHouseUi;
.super Ljava/lang/Object;
.source "PrivateWareHouseUi.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lch/kingdoms/android/ui/PrivateWareHouseUi$PrivateWareHouseView;
    }
.end annotation


# instance fields
.field private final ACTIVITY:Landroid/app/Activity;

.field private final DI:Lch/android/api/util/DisplayInfo;

.field private final ID_DEPOSIT_MONEY:I

.field private final ID_WITHDRAW_MONEY:I

.field private final LAYOUT:Lch/android/api/ui/ChRelativeLayout;

.field private final RESOURCE:Landroid/content/res/Resources;

.field private final STORE_TYPE:I

.field private isConfirmPopUp:Z


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lch/android/api/util/DisplayInfo;I)V
    .locals 6
    .param p1, "_activity"    # Landroid/app/Activity;
    .param p2, "_di"    # Lch/android/api/util/DisplayInfo;
    .param p3, "_storeType"    # I

    .prologue
    const/4 v3, -0x2

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    const/16 v2, 0x4d2

    iput v2, p0, Lch/kingdoms/android/ui/PrivateWareHouseUi;->ID_DEPOSIT_MONEY:I

    .line 39
    const/16 v2, 0x4d3

    iput v2, p0, Lch/kingdoms/android/ui/PrivateWareHouseUi;->ID_WITHDRAW_MONEY:I

    .line 45
    const/4 v2, 0x0

    iput-boolean v2, p0, Lch/kingdoms/android/ui/PrivateWareHouseUi;->isConfirmPopUp:Z

    .line 48
    iput-object p1, p0, Lch/kingdoms/android/ui/PrivateWareHouseUi;->ACTIVITY:Landroid/app/Activity;

    .line 49
    iput-object p2, p0, Lch/kingdoms/android/ui/PrivateWareHouseUi;->DI:Lch/android/api/util/DisplayInfo;

    .line 50
    iget-object v2, p0, Lch/kingdoms/android/ui/PrivateWareHouseUi;->ACTIVITY:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iput-object v2, p0, Lch/kingdoms/android/ui/PrivateWareHouseUi;->RESOURCE:Landroid/content/res/Resources;

    .line 51
    iput p3, p0, Lch/kingdoms/android/ui/PrivateWareHouseUi;->STORE_TYPE:I

    .line 53
    iget-object v2, p0, Lch/kingdoms/android/ui/PrivateWareHouseUi;->ACTIVITY:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 54
    .local v0, "appContext":Landroid/content/Context;
    new-instance v2, Lch/android/api/ui/ChRelativeLayout;

    invoke-direct {v2, v0}, Lch/android/api/ui/ChRelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lch/kingdoms/android/ui/PrivateWareHouseUi;->LAYOUT:Lch/android/api/ui/ChRelativeLayout;

    .line 56
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 57
    .local v1, "rlp":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v2, 0xd

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 58
    iget-object v3, p0, Lch/kingdoms/android/ui/PrivateWareHouseUi;->LAYOUT:Lch/android/api/ui/ChRelativeLayout;

    new-instance v4, Lch/kingdoms/android/ui/PrivateWareHouseUi$PrivateWareHouseView;

    .line 59
    iget v2, p0, Lch/kingdoms/android/ui/PrivateWareHouseUi;->STORE_TYPE:I

    const/4 v5, 0x4

    if-ne v2, v5, :cond_0

    const/16 v2, 0x63

    invoke-static {v2}, Lch/kingdoms/ndk/NdkTextLoader;->getGameMenuTxt(I)Ljava/lang/String;

    move-result-object v2

    :goto_0
    invoke-direct {v4, p0, v0, v2}, Lch/kingdoms/android/ui/PrivateWareHouseUi$PrivateWareHouseView;-><init>(Lch/kingdoms/android/ui/PrivateWareHouseUi;Landroid/content/Context;Ljava/lang/String;)V

    .line 58
    invoke-virtual {v3, v4, v1}, Lch/android/api/ui/ChRelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 60
    return-void

    .line 59
    :cond_0
    const/16 v2, 0x64

    invoke-static {v2}, Lch/kingdoms/ndk/NdkTextLoader;->getGameMenuTxt(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method static synthetic access$0(Lch/kingdoms/android/ui/PrivateWareHouseUi;)Lch/android/api/util/DisplayInfo;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lch/kingdoms/android/ui/PrivateWareHouseUi;->DI:Lch/android/api/util/DisplayInfo;

    return-object v0
.end method

.method static synthetic access$1(Lch/kingdoms/android/ui/PrivateWareHouseUi;)I
    .locals 1

    .prologue
    .line 41
    iget v0, p0, Lch/kingdoms/android/ui/PrivateWareHouseUi;->STORE_TYPE:I

    return v0
.end method

.method static synthetic access$2(Lch/kingdoms/android/ui/PrivateWareHouseUi;)Landroid/content/res/Resources;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lch/kingdoms/android/ui/PrivateWareHouseUi;->RESOURCE:Landroid/content/res/Resources;

    return-object v0
.end method

.method static synthetic access$3(Lch/kingdoms/android/ui/PrivateWareHouseUi;)Z
    .locals 1

    .prologue
    .line 45
    iget-boolean v0, p0, Lch/kingdoms/android/ui/PrivateWareHouseUi;->isConfirmPopUp:Z

    return v0
.end method

.method static synthetic access$4(Lch/kingdoms/android/ui/PrivateWareHouseUi;)Lch/android/api/ui/ChRelativeLayout;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lch/kingdoms/android/ui/PrivateWareHouseUi;->LAYOUT:Lch/android/api/ui/ChRelativeLayout;

    return-object v0
.end method

.method static synthetic access$5(Lch/kingdoms/android/ui/PrivateWareHouseUi;)Landroid/app/Activity;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lch/kingdoms/android/ui/PrivateWareHouseUi;->ACTIVITY:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$6(Lch/kingdoms/android/ui/PrivateWareHouseUi;Z)V
    .locals 0

    .prologue
    .line 45
    iput-boolean p1, p0, Lch/kingdoms/android/ui/PrivateWareHouseUi;->isConfirmPopUp:Z

    return-void
.end method


# virtual methods
.method public getView()Landroid/view/View;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lch/kingdoms/android/ui/PrivateWareHouseUi;->LAYOUT:Lch/android/api/ui/ChRelativeLayout;

    return-object v0
.end method
