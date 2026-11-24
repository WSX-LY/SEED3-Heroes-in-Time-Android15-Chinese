.class Lch/kingdoms/android/ui/PrivateWareHouseUi$PrivateWareHouseView$5;
.super Ljava/lang/Object;
.source "PrivateWareHouseUi.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lch/kingdoms/android/ui/PrivateWareHouseUi$PrivateWareHouseView;->processMoneyBusiness(ZLch/kingdoms/ndk/data/Inven$Item;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private isClicked:Z

.field final synthetic this$1:Lch/kingdoms/android/ui/PrivateWareHouseUi$PrivateWareHouseView;

.field private final synthetic val$_isDeposit:Z

.field private final synthetic val$item:Lch/kingdoms/ndk/data/Inven$Item;

.field private final synthetic val$moneyPopUp:Lch/android/api/ui/ChPopUpTradeItemView;


# direct methods
.method constructor <init>(Lch/kingdoms/android/ui/PrivateWareHouseUi$PrivateWareHouseView;ZLch/android/api/ui/ChPopUpTradeItemView;Lch/kingdoms/ndk/data/Inven$Item;)V
    .locals 1

    .prologue
    .line 1
    iput-object p1, p0, Lch/kingdoms/android/ui/PrivateWareHouseUi$PrivateWareHouseView$5;->this$1:Lch/kingdoms/android/ui/PrivateWareHouseUi$PrivateWareHouseView;

    iput-boolean p2, p0, Lch/kingdoms/android/ui/PrivateWareHouseUi$PrivateWareHouseView$5;->val$_isDeposit:Z

    iput-object p3, p0, Lch/kingdoms/android/ui/PrivateWareHouseUi$PrivateWareHouseView$5;->val$moneyPopUp:Lch/android/api/ui/ChPopUpTradeItemView;

    iput-object p4, p0, Lch/kingdoms/android/ui/PrivateWareHouseUi$PrivateWareHouseView$5;->val$item:Lch/kingdoms/ndk/data/Inven$Item;

    .line 282
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 283
    const/4 v0, 0x0

    iput-boolean v0, p0, Lch/kingdoms/android/ui/PrivateWareHouseUi$PrivateWareHouseView$5;->isClicked:Z

    return-void
.end method

.method static synthetic access$0(Lch/kingdoms/android/ui/PrivateWareHouseUi$PrivateWareHouseView$5;)Lch/kingdoms/android/ui/PrivateWareHouseUi$PrivateWareHouseView;
    .locals 1

    .prologue
    .line 282
    iget-object v0, p0, Lch/kingdoms/android/ui/PrivateWareHouseUi$PrivateWareHouseView$5;->this$1:Lch/kingdoms/android/ui/PrivateWareHouseUi$PrivateWareHouseView;

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 287
    iget-boolean v0, p0, Lch/kingdoms/android/ui/PrivateWareHouseUi$PrivateWareHouseView$5;->isClicked:Z

    if-nez v0, :cond_0

    .line 288
    const/4 v0, 0x1

    iput-boolean v0, p0, Lch/kingdoms/android/ui/PrivateWareHouseUi$PrivateWareHouseView$5;->isClicked:Z

    .line 292
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 341
    :cond_0
    :goto_0
    return-void

    .line 294
    :pswitch_0
    iget-object v0, p0, Lch/kingdoms/android/ui/PrivateWareHouseUi$PrivateWareHouseView$5;->this$1:Lch/kingdoms/android/ui/PrivateWareHouseUi$PrivateWareHouseView;

    invoke-static {v0}, Lch/kingdoms/android/ui/PrivateWareHouseUi$PrivateWareHouseView;->access$3(Lch/kingdoms/android/ui/PrivateWareHouseUi$PrivateWareHouseView;)Lch/kingdoms/android/ui/PrivateWareHouseUi;

    move-result-object v0

    invoke-static {v0}, Lch/kingdoms/android/ui/PrivateWareHouseUi;->access$5(Lch/kingdoms/android/ui/PrivateWareHouseUi;)Landroid/app/Activity;

    move-result-object v1

    iget-boolean v0, p0, Lch/kingdoms/android/ui/PrivateWareHouseUi$PrivateWareHouseView$5;->val$_isDeposit:Z

    if-eqz v0, :cond_1

    const/16 v0, 0x66

    invoke-static {v0}, Lch/kingdoms/ndk/NdkTextLoader;->getGameMenuTxt(I)Ljava/lang/String;

    move-result-object v0

    .line 295
    :goto_1
    new-instance v2, Lch/kingdoms/android/ui/PrivateWareHouseUi$PrivateWareHouseView$5$1;

    iget-boolean v3, p0, Lch/kingdoms/android/ui/PrivateWareHouseUi$PrivateWareHouseView$5;->val$_isDeposit:Z

    iget-object v4, p0, Lch/kingdoms/android/ui/PrivateWareHouseUi$PrivateWareHouseView$5;->val$moneyPopUp:Lch/android/api/ui/ChPopUpTradeItemView;

    iget-object v5, p0, Lch/kingdoms/android/ui/PrivateWareHouseUi$PrivateWareHouseView$5;->val$item:Lch/kingdoms/ndk/data/Inven$Item;

    invoke-direct {v2, p0, v3, v4, v5}, Lch/kingdoms/android/ui/PrivateWareHouseUi$PrivateWareHouseView$5$1;-><init>(Lch/kingdoms/android/ui/PrivateWareHouseUi$PrivateWareHouseView$5;ZLch/android/api/ui/ChPopUpTradeItemView;Lch/kingdoms/ndk/data/Inven$Item;)V

    .line 294
    invoke-static {v1, v0, v2}, Lch/android/api/ui/ChViewGen;->popUpConfirmYesNoView(Landroid/app/Activity;Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;)Landroid/view/View;

    goto :goto_0

    :cond_1
    const/16 v0, 0x6a

    invoke-static {v0}, Lch/kingdoms/ndk/NdkTextLoader;->getGameMenuTxt(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 337
    :pswitch_1
    invoke-static {}, Lch/android/api/ui/ChViewGen;->closePopUpView()V

    .line 338
    iget-object v0, p0, Lch/kingdoms/android/ui/PrivateWareHouseUi$PrivateWareHouseView$5;->this$1:Lch/kingdoms/android/ui/PrivateWareHouseUi$PrivateWareHouseView;

    invoke-static {v0}, Lch/kingdoms/android/ui/PrivateWareHouseUi$PrivateWareHouseView;->access$3(Lch/kingdoms/android/ui/PrivateWareHouseUi$PrivateWareHouseView;)Lch/kingdoms/android/ui/PrivateWareHouseUi;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lch/kingdoms/android/ui/PrivateWareHouseUi;->access$6(Lch/kingdoms/android/ui/PrivateWareHouseUi;Z)V

    goto :goto_0

    .line 292
    nop

    :pswitch_data_0
    .packed-switch 0x2742
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
