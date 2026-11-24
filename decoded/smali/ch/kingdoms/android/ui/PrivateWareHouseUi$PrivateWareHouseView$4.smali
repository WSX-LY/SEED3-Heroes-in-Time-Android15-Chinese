.class Lch/kingdoms/android/ui/PrivateWareHouseUi$PrivateWareHouseView$4;
.super Ljava/lang/Object;
.source "PrivateWareHouseUi.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lch/kingdoms/android/ui/PrivateWareHouseUi$PrivateWareHouseView;->processWareHouse(ZLch/kingdoms/ndk/data/Inven$Item;)Z
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

.field private final synthetic val$wareHousPopUp:Lch/android/api/ui/ChPopUpTradeItemView;


# direct methods
.method constructor <init>(Lch/kingdoms/android/ui/PrivateWareHouseUi$PrivateWareHouseView;ZLch/kingdoms/ndk/data/Inven$Item;Lch/android/api/ui/ChPopUpTradeItemView;)V
    .locals 1

    .prologue
    .line 1
    iput-object p1, p0, Lch/kingdoms/android/ui/PrivateWareHouseUi$PrivateWareHouseView$4;->this$1:Lch/kingdoms/android/ui/PrivateWareHouseUi$PrivateWareHouseView;

    iput-boolean p2, p0, Lch/kingdoms/android/ui/PrivateWareHouseUi$PrivateWareHouseView$4;->val$_isDeposit:Z

    iput-object p3, p0, Lch/kingdoms/android/ui/PrivateWareHouseUi$PrivateWareHouseView$4;->val$item:Lch/kingdoms/ndk/data/Inven$Item;

    iput-object p4, p0, Lch/kingdoms/android/ui/PrivateWareHouseUi$PrivateWareHouseView$4;->val$wareHousPopUp:Lch/android/api/ui/ChPopUpTradeItemView;

    .line 246
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 247
    const/4 v0, 0x0

    iput-boolean v0, p0, Lch/kingdoms/android/ui/PrivateWareHouseUi$PrivateWareHouseView$4;->isClicked:Z

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 251
    iget-boolean v0, p0, Lch/kingdoms/android/ui/PrivateWareHouseUi$PrivateWareHouseView$4;->isClicked:Z

    if-nez v0, :cond_0

    .line 252
    const/4 v0, 0x1

    iput-boolean v0, p0, Lch/kingdoms/android/ui/PrivateWareHouseUi$PrivateWareHouseView$4;->isClicked:Z

    .line 256
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 266
    :cond_0
    :goto_0
    return-void

    .line 258
    :pswitch_0
    iget-object v0, p0, Lch/kingdoms/android/ui/PrivateWareHouseUi$PrivateWareHouseView$4;->this$1:Lch/kingdoms/android/ui/PrivateWareHouseUi$PrivateWareHouseView;

    iget-boolean v1, p0, Lch/kingdoms/android/ui/PrivateWareHouseUi$PrivateWareHouseView$4;->val$_isDeposit:Z

    iget-object v2, p0, Lch/kingdoms/android/ui/PrivateWareHouseUi$PrivateWareHouseView$4;->val$item:Lch/kingdoms/ndk/data/Inven$Item;

    iget-object v3, p0, Lch/kingdoms/android/ui/PrivateWareHouseUi$PrivateWareHouseView$4;->val$wareHousPopUp:Lch/android/api/ui/ChPopUpTradeItemView;

    invoke-virtual {v3}, Lch/android/api/ui/ChPopUpTradeItemView;->getQuantity()I

    move-result v3

    invoke-static {v0, v1, v2, v3}, Lch/kingdoms/android/ui/PrivateWareHouseUi$PrivateWareHouseView;->access$0(Lch/kingdoms/android/ui/PrivateWareHouseUi$PrivateWareHouseView;ZLch/kingdoms/ndk/data/Inven$Item;I)V

    goto :goto_0

    .line 261
    :pswitch_1
    invoke-static {}, Lch/android/api/ui/ChViewGen;->closePopUpView()V

    .line 262
    iget-object v0, p0, Lch/kingdoms/android/ui/PrivateWareHouseUi$PrivateWareHouseView$4;->this$1:Lch/kingdoms/android/ui/PrivateWareHouseUi$PrivateWareHouseView;

    invoke-static {v0}, Lch/kingdoms/android/ui/PrivateWareHouseUi$PrivateWareHouseView;->access$3(Lch/kingdoms/android/ui/PrivateWareHouseUi$PrivateWareHouseView;)Lch/kingdoms/android/ui/PrivateWareHouseUi;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lch/kingdoms/android/ui/PrivateWareHouseUi;->access$6(Lch/kingdoms/android/ui/PrivateWareHouseUi;Z)V

    goto :goto_0

    .line 256
    nop

    :pswitch_data_0
    .packed-switch 0x2742
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
