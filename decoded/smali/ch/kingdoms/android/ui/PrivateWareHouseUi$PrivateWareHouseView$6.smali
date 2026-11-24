.class Lch/kingdoms/android/ui/PrivateWareHouseUi$PrivateWareHouseView$6;
.super Ljava/lang/Object;
.source "PrivateWareHouseUi.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lch/kingdoms/android/ui/PrivateWareHouseUi$PrivateWareHouseView;->popUpConfirm(ZLch/kingdoms/ndk/data/Inven$Item;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private isClicked:Z

.field final synthetic this$1:Lch/kingdoms/android/ui/PrivateWareHouseUi$PrivateWareHouseView;

.field private final synthetic val$cnt:I

.field private final synthetic val$isDeposit:Z

.field private final synthetic val$item:Lch/kingdoms/ndk/data/Inven$Item;


# direct methods
.method constructor <init>(Lch/kingdoms/android/ui/PrivateWareHouseUi$PrivateWareHouseView;ZLch/kingdoms/ndk/data/Inven$Item;I)V
    .locals 1

    .prologue
    .line 1
    iput-object p1, p0, Lch/kingdoms/android/ui/PrivateWareHouseUi$PrivateWareHouseView$6;->this$1:Lch/kingdoms/android/ui/PrivateWareHouseUi$PrivateWareHouseView;

    iput-boolean p2, p0, Lch/kingdoms/android/ui/PrivateWareHouseUi$PrivateWareHouseView$6;->val$isDeposit:Z

    iput-object p3, p0, Lch/kingdoms/android/ui/PrivateWareHouseUi$PrivateWareHouseView$6;->val$item:Lch/kingdoms/ndk/data/Inven$Item;

    iput p4, p0, Lch/kingdoms/android/ui/PrivateWareHouseUi$PrivateWareHouseView$6;->val$cnt:I

    .line 348
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 349
    const/4 v0, 0x0

    iput-boolean v0, p0, Lch/kingdoms/android/ui/PrivateWareHouseUi$PrivateWareHouseView$6;->isClicked:Z

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/16 v3, 0x54

    const/16 v2, 0x48

    .line 353
    iget-boolean v0, p0, Lch/kingdoms/android/ui/PrivateWareHouseUi$PrivateWareHouseView$6;->isClicked:Z

    if-nez v0, :cond_0

    .line 354
    const/4 v0, 0x1

    iput-boolean v0, p0, Lch/kingdoms/android/ui/PrivateWareHouseUi$PrivateWareHouseView$6;->isClicked:Z

    .line 355
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 378
    :goto_0
    invoke-static {}, Lch/android/api/ui/ChViewGen;->closePopUpView()V

    .line 379
    invoke-static {}, Lch/android/api/ui/ChViewGen;->closePopUpView()V

    .line 380
    iget-object v0, p0, Lch/kingdoms/android/ui/PrivateWareHouseUi$PrivateWareHouseView$6;->this$1:Lch/kingdoms/android/ui/PrivateWareHouseUi$PrivateWareHouseView;

    invoke-static {v0}, Lch/kingdoms/android/ui/PrivateWareHouseUi$PrivateWareHouseView;->access$3(Lch/kingdoms/android/ui/PrivateWareHouseUi$PrivateWareHouseView;)Lch/kingdoms/android/ui/PrivateWareHouseUi;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lch/kingdoms/android/ui/PrivateWareHouseUi;->access$6(Lch/kingdoms/android/ui/PrivateWareHouseUi;Z)V

    .line 382
    :cond_0
    return-void

    .line 357
    :pswitch_0
    iget-boolean v0, p0, Lch/kingdoms/android/ui/PrivateWareHouseUi$PrivateWareHouseView$6;->val$isDeposit:Z

    if-eqz v0, :cond_2

    .line 358
    iget-object v0, p0, Lch/kingdoms/android/ui/PrivateWareHouseUi$PrivateWareHouseView$6;->val$item:Lch/kingdoms/ndk/data/Inven$Item;

    iget v0, v0, Lch/kingdoms/ndk/data/Inven$Item;->index:I

    iget v1, p0, Lch/kingdoms/android/ui/PrivateWareHouseUi$PrivateWareHouseView$6;->val$cnt:I

    invoke-static {v0, v1}, Lch/kingdoms/ndk/NdkUiEventManager;->callNativeInWareHouseItem(II)I

    .line 359
    invoke-static {}, Lch/kingdoms/ndk/NdkUiEventManager;->saveGame()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 360
    invoke-static {v2}, Lch/kingdoms/ndk/NdkTextLoader;->getGameMenuTxt(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lch/android/api/ui/ChGamePlayMessage;->popUpMapName(Ljava/lang/String;)V

    .line 364
    :goto_1
    iget-object v0, p0, Lch/kingdoms/android/ui/PrivateWareHouseUi$PrivateWareHouseView$6;->this$1:Lch/kingdoms/android/ui/PrivateWareHouseUi$PrivateWareHouseView;

    invoke-static {v0}, Lch/kingdoms/android/ui/PrivateWareHouseUi$PrivateWareHouseView;->access$2(Lch/kingdoms/android/ui/PrivateWareHouseUi$PrivateWareHouseView;)Lch/android/api/ui/ChInvenAndInfoView;

    move-result-object v0

    invoke-static {}, Lch/kingdoms/ndk/NdkUiEventManager;->callNativeGetEquipItems()[S

    move-result-object v1

    invoke-static {}, Lch/kingdoms/ndk/NdkUiEventManager;->callNativeGetInven()Lch/kingdoms/ndk/data/Inven;

    move-result-object v2

    invoke-virtual {v2}, Lch/kingdoms/ndk/data/Inven;->getItems()[Lch/kingdoms/ndk/data/Inven$Item;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lch/android/api/ui/ChInvenAndInfoView;->update([S[Lch/kingdoms/ndk/data/Inven$Item;)V

    goto :goto_0

    .line 362
    :cond_1
    invoke-static {v3}, Lch/kingdoms/ndk/NdkTextLoader;->getGameMenuTxt(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lch/android/api/ui/ChGamePlayMessage;->popUpMapName(Ljava/lang/String;)V

    goto :goto_1

    .line 366
    :cond_2
    iget-object v0, p0, Lch/kingdoms/android/ui/PrivateWareHouseUi$PrivateWareHouseView$6;->val$item:Lch/kingdoms/ndk/data/Inven$Item;

    iget v0, v0, Lch/kingdoms/ndk/data/Inven$Item;->index:I

    iget v1, p0, Lch/kingdoms/android/ui/PrivateWareHouseUi$PrivateWareHouseView$6;->val$cnt:I

    invoke-static {v0, v1}, Lch/kingdoms/ndk/NdkUiEventManager;->callNativeOutWareHouseItem(II)I

    .line 367
    invoke-static {}, Lch/kingdoms/ndk/NdkUiEventManager;->saveGame()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 368
    invoke-static {v2}, Lch/kingdoms/ndk/NdkTextLoader;->getGameMenuTxt(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lch/android/api/ui/ChGamePlayMessage;->popUpMapName(Ljava/lang/String;)V

    .line 372
    :goto_2
    iget-object v0, p0, Lch/kingdoms/android/ui/PrivateWareHouseUi$PrivateWareHouseView$6;->this$1:Lch/kingdoms/android/ui/PrivateWareHouseUi$PrivateWareHouseView;

    invoke-static {v0}, Lch/kingdoms/android/ui/PrivateWareHouseUi$PrivateWareHouseView;->access$2(Lch/kingdoms/android/ui/PrivateWareHouseUi$PrivateWareHouseView;)Lch/android/api/ui/ChInvenAndInfoView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {}, Lch/kingdoms/ndk/NdkUiEventManager;->callNativeWareHouseInven()Lch/kingdoms/ndk/data/Inven;

    move-result-object v2

    invoke-virtual {v2}, Lch/kingdoms/ndk/data/Inven;->getItems()[Lch/kingdoms/ndk/data/Inven$Item;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lch/android/api/ui/ChInvenAndInfoView;->update([S[Lch/kingdoms/ndk/data/Inven$Item;)V

    goto :goto_0

    .line 370
    :cond_3
    invoke-static {v3}, Lch/kingdoms/ndk/NdkTextLoader;->getGameMenuTxt(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lch/android/api/ui/ChGamePlayMessage;->popUpMapName(Ljava/lang/String;)V

    goto :goto_2

    .line 355
    :pswitch_data_0
    .packed-switch 0x2742
        :pswitch_0
    .end packed-switch
.end method
