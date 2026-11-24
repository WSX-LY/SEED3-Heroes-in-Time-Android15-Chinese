.class Lch/kingdoms/android/ui/PrivateWareHouseUi$PrivateWareHouseView$5$1;
.super Ljava/lang/Object;
.source "PrivateWareHouseUi.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lch/kingdoms/android/ui/PrivateWareHouseUi$PrivateWareHouseView$5;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private isClicked:Z

.field final synthetic this$2:Lch/kingdoms/android/ui/PrivateWareHouseUi$PrivateWareHouseView$5;

.field private final synthetic val$_isDeposit:Z

.field private final synthetic val$item:Lch/kingdoms/ndk/data/Inven$Item;

.field private final synthetic val$moneyPopUp:Lch/android/api/ui/ChPopUpTradeItemView;


# direct methods
.method constructor <init>(Lch/kingdoms/android/ui/PrivateWareHouseUi$PrivateWareHouseView$5;ZLch/android/api/ui/ChPopUpTradeItemView;Lch/kingdoms/ndk/data/Inven$Item;)V
    .locals 1

    .prologue
    .line 1
    iput-object p1, p0, Lch/kingdoms/android/ui/PrivateWareHouseUi$PrivateWareHouseView$5$1;->this$2:Lch/kingdoms/android/ui/PrivateWareHouseUi$PrivateWareHouseView$5;

    iput-boolean p2, p0, Lch/kingdoms/android/ui/PrivateWareHouseUi$PrivateWareHouseView$5$1;->val$_isDeposit:Z

    iput-object p3, p0, Lch/kingdoms/android/ui/PrivateWareHouseUi$PrivateWareHouseView$5$1;->val$moneyPopUp:Lch/android/api/ui/ChPopUpTradeItemView;

    iput-object p4, p0, Lch/kingdoms/android/ui/PrivateWareHouseUi$PrivateWareHouseView$5$1;->val$item:Lch/kingdoms/ndk/data/Inven$Item;

    .line 295
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 296
    const/4 v0, 0x0

    iput-boolean v0, p0, Lch/kingdoms/android/ui/PrivateWareHouseUi$PrivateWareHouseView$5$1;->isClicked:Z

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/16 v2, 0x54

    const/16 v1, 0x48

    .line 300
    iget-boolean v0, p0, Lch/kingdoms/android/ui/PrivateWareHouseUi$PrivateWareHouseView$5$1;->isClicked:Z

    if-nez v0, :cond_1

    .line 301
    const/4 v0, 0x1

    iput-boolean v0, p0, Lch/kingdoms/android/ui/PrivateWareHouseUi$PrivateWareHouseView$5$1;->isClicked:Z

    .line 305
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 328
    :goto_0
    invoke-static {}, Lch/android/api/ui/ChViewGen;->closePopUpView()V

    .line 329
    iget-object v0, p0, Lch/kingdoms/android/ui/PrivateWareHouseUi$PrivateWareHouseView$5$1;->val$item:Lch/kingdoms/ndk/data/Inven$Item;

    iget-boolean v0, v0, Lch/kingdoms/ndk/data/Inven$Item;->isEquip:Z

    if-nez v0, :cond_0

    .line 330
    invoke-static {}, Lch/android/api/ui/ChViewGen;->closePopUpView()V

    .line 332
    :cond_0
    iget-object v0, p0, Lch/kingdoms/android/ui/PrivateWareHouseUi$PrivateWareHouseView$5$1;->this$2:Lch/kingdoms/android/ui/PrivateWareHouseUi$PrivateWareHouseView$5;

    invoke-static {v0}, Lch/kingdoms/android/ui/PrivateWareHouseUi$PrivateWareHouseView$5;->access$0(Lch/kingdoms/android/ui/PrivateWareHouseUi$PrivateWareHouseView$5;)Lch/kingdoms/android/ui/PrivateWareHouseUi$PrivateWareHouseView;

    move-result-object v0

    invoke-static {v0}, Lch/kingdoms/android/ui/PrivateWareHouseUi$PrivateWareHouseView;->access$3(Lch/kingdoms/android/ui/PrivateWareHouseUi$PrivateWareHouseView;)Lch/kingdoms/android/ui/PrivateWareHouseUi;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lch/kingdoms/android/ui/PrivateWareHouseUi;->access$6(Lch/kingdoms/android/ui/PrivateWareHouseUi;Z)V

    .line 333
    :cond_1
    return-void

    .line 307
    :pswitch_0
    iget-boolean v0, p0, Lch/kingdoms/android/ui/PrivateWareHouseUi$PrivateWareHouseView$5$1;->val$_isDeposit:Z

    if-eqz v0, :cond_3

    .line 308
    iget-object v0, p0, Lch/kingdoms/android/ui/PrivateWareHouseUi$PrivateWareHouseView$5$1;->val$moneyPopUp:Lch/android/api/ui/ChPopUpTradeItemView;

    invoke-virtual {v0}, Lch/android/api/ui/ChPopUpTradeItemView;->getQuantity()I

    move-result v0

    invoke-static {v0}, Lch/kingdoms/ndk/NdkUiEventManager;->callNativePositMoney(I)I

    .line 309
    invoke-static {}, Lch/kingdoms/ndk/NdkUiEventManager;->saveGame()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 310
    invoke-static {v1}, Lch/kingdoms/ndk/NdkTextLoader;->getGameMenuTxt(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lch/android/api/ui/ChGamePlayMessage;->popUpMapName(Ljava/lang/String;)V

    .line 314
    :goto_1
    iget-object v0, p0, Lch/kingdoms/android/ui/PrivateWareHouseUi$PrivateWareHouseView$5$1;->this$2:Lch/kingdoms/android/ui/PrivateWareHouseUi$PrivateWareHouseView$5;

    invoke-static {v0}, Lch/kingdoms/android/ui/PrivateWareHouseUi$PrivateWareHouseView$5;->access$0(Lch/kingdoms/android/ui/PrivateWareHouseUi$PrivateWareHouseView$5;)Lch/kingdoms/android/ui/PrivateWareHouseUi$PrivateWareHouseView;

    move-result-object v0

    invoke-static {v0}, Lch/kingdoms/android/ui/PrivateWareHouseUi$PrivateWareHouseView;->access$1(Lch/kingdoms/android/ui/PrivateWareHouseUi$PrivateWareHouseView;)Lch/android/api/ui/ChTextView;

    move-result-object v0

    invoke-static {}, Lch/kingdoms/ndk/NdkUiEventManager;->callNativeGetHeroInfo()Lch/kingdoms/ndk/data/HeroStatus;

    move-result-object v1

    invoke-virtual {v1}, Lch/kingdoms/ndk/data/HeroStatus;->getMoney()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lch/android/api/ui/ChTextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 312
    :cond_2
    invoke-static {v2}, Lch/kingdoms/ndk/NdkTextLoader;->getGameMenuTxt(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lch/android/api/ui/ChGamePlayMessage;->popUpMapName(Ljava/lang/String;)V

    goto :goto_1

    .line 316
    :cond_3
    iget-object v0, p0, Lch/kingdoms/android/ui/PrivateWareHouseUi$PrivateWareHouseView$5$1;->val$moneyPopUp:Lch/android/api/ui/ChPopUpTradeItemView;

    invoke-virtual {v0}, Lch/android/api/ui/ChPopUpTradeItemView;->getQuantity()I

    move-result v0

    invoke-static {v0}, Lch/kingdoms/ndk/NdkUiEventManager;->callNativeWithdrawMoney(I)I

    .line 317
    invoke-static {}, Lch/kingdoms/ndk/NdkUiEventManager;->saveGame()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 318
    invoke-static {v1}, Lch/kingdoms/ndk/NdkTextLoader;->getGameMenuTxt(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lch/android/api/ui/ChGamePlayMessage;->popUpMapName(Ljava/lang/String;)V

    .line 322
    :goto_2
    iget-object v0, p0, Lch/kingdoms/android/ui/PrivateWareHouseUi$PrivateWareHouseView$5$1;->this$2:Lch/kingdoms/android/ui/PrivateWareHouseUi$PrivateWareHouseView$5;

    invoke-static {v0}, Lch/kingdoms/android/ui/PrivateWareHouseUi$PrivateWareHouseView$5;->access$0(Lch/kingdoms/android/ui/PrivateWareHouseUi$PrivateWareHouseView$5;)Lch/kingdoms/android/ui/PrivateWareHouseUi$PrivateWareHouseView;

    move-result-object v0

    invoke-static {v0}, Lch/kingdoms/android/ui/PrivateWareHouseUi$PrivateWareHouseView;->access$1(Lch/kingdoms/android/ui/PrivateWareHouseUi$PrivateWareHouseView;)Lch/android/api/ui/ChTextView;

    move-result-object v0

    invoke-static {}, Lch/kingdoms/ndk/NdkUiEventManager;->callNativeGetWareHouseMoney()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lch/android/api/ui/ChTextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 320
    :cond_4
    invoke-static {v2}, Lch/kingdoms/ndk/NdkTextLoader;->getGameMenuTxt(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lch/android/api/ui/ChGamePlayMessage;->popUpMapName(Ljava/lang/String;)V

    goto :goto_2

    .line 305
    :pswitch_data_0
    .packed-switch 0x2742
        :pswitch_0
    .end packed-switch
.end method
