.class Lch/kingdoms/android/ui/NetworkUi$MyInvenView;
.super Lch/android/api/ui/ChCustomIvenView;
.source "NetworkUi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lch/kingdoms/android/ui/NetworkUi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyInvenView"
.end annotation


# instance fields
.field final synthetic this$0:Lch/kingdoms/android/ui/NetworkUi;


# direct methods
.method public constructor <init>(Lch/kingdoms/android/ui/NetworkUi;)V
    .locals 7

    .prologue
    .line 1083
    iput-object p1, p0, Lch/kingdoms/android/ui/NetworkUi$MyInvenView;->this$0:Lch/kingdoms/android/ui/NetworkUi;

    .line 1084
    invoke-static {p1}, Lch/kingdoms/android/ui/NetworkUi;->access$4(Lch/kingdoms/android/ui/NetworkUi;)Landroid/app/Activity;

    move-result-object v1

    invoke-static {p1}, Lch/kingdoms/android/ui/NetworkUi;->access$10(Lch/kingdoms/android/ui/NetworkUi;)Lch/android/api/util/DisplayInfo;

    move-result-object v2

    const/16 v0, 0x12

    invoke-static {v0}, Lch/kingdoms/ndk/NdkTextLoader;->getNetworkTxt(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lch/kingdoms/ndk/NdkUiEventManager;->callNativeGetHeroInfo()Lch/kingdoms/ndk/data/HeroStatus;

    move-result-object v0

    invoke-virtual {v0}, Lch/kingdoms/ndk/data/HeroStatus;->getMoney()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    .line 1085
    const/4 v5, 0x4

    const v6, 0x7f0202bb

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lch/android/api/ui/ChCustomIvenView;-><init>(Landroid/app/Activity;Lch/android/api/util/DisplayInfo;Ljava/lang/String;Ljava/lang/String;II)V

    .line 1087
    invoke-static {}, Lch/kingdoms/ndk/NdkUiEventManager;->callNativeGetEquipItems()[S

    move-result-object v0

    invoke-static {}, Lch/kingdoms/ndk/NdkUiEventManager;->callNativeGetInven()Lch/kingdoms/ndk/data/Inven;

    move-result-object v1

    invoke-virtual {v1}, Lch/kingdoms/ndk/data/Inven;->getItems()[Lch/kingdoms/ndk/data/Inven$Item;

    move-result-object v1

    invoke-super {p0, v0, v1}, Lch/android/api/ui/ChCustomIvenView;->update([S[Lch/kingdoms/ndk/data/Inven$Item;)V

    .line 1088
    const/4 v0, 0x0

    invoke-static {v0}, Lch/kingdoms/android/ui/NetworkUi;->access$11(Z)V

    .line 1089
    return-void
.end method

.method static synthetic access$0(Lch/kingdoms/android/ui/NetworkUi$MyInvenView;)Lch/kingdoms/android/ui/NetworkUi;
    .locals 1

    .prologue
    .line 1082
    iget-object v0, p0, Lch/kingdoms/android/ui/NetworkUi$MyInvenView;->this$0:Lch/kingdoms/android/ui/NetworkUi;

    return-object v0
.end method


# virtual methods
.method protected getInvenLayoutParams()Landroid/widget/RelativeLayout$LayoutParams;
    .locals 2

    .prologue
    const/4 v1, -0x2

    .line 1232
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 1233
    .local v0, "rlp":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 1234
    return-object v0
.end method

.method protected onBackButtonClick()V
    .locals 1

    .prologue
    .line 1223
    invoke-static {}, Lch/kingdoms/android/ui/NetworkUi;->access$12()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1224
    invoke-static {}, Lch/android/api/ui/ChViewGen;->closePopUpView()V

    .line 1225
    iget-object v0, p0, Lch/kingdoms/android/ui/NetworkUi$MyInvenView;->this$0:Lch/kingdoms/android/ui/NetworkUi;

    invoke-static {v0}, Lch/kingdoms/android/ui/NetworkUi;->access$14(Lch/kingdoms/android/ui/NetworkUi;)V

    .line 1227
    :cond_0
    return-void
.end method

.method protected onItemSelect(Landroid/view/View;Lch/kingdoms/ndk/data/Inven$Item;)V
    .locals 8
    .param p1, "view"    # Landroid/view/View;
    .param p2, "item"    # Lch/kingdoms/ndk/data/Inven$Item;

    .prologue
    .line 1094
    invoke-static {}, Lch/kingdoms/android/ui/NetworkUi;->access$12()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1095
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 1167
    :cond_0
    :goto_0
    return-void

    .line 1097
    :pswitch_0
    iget-object v0, p0, Lch/kingdoms/android/ui/NetworkUi$MyInvenView;->this$0:Lch/kingdoms/android/ui/NetworkUi;

    invoke-static {v0}, Lch/kingdoms/android/ui/NetworkUi;->access$4(Lch/kingdoms/android/ui/NetworkUi;)Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lch/kingdoms/android/ui/NetworkUi$MyInvenView;->this$0:Lch/kingdoms/android/ui/NetworkUi;

    invoke-static {v1}, Lch/kingdoms/android/ui/NetworkUi;->access$10(Lch/kingdoms/android/ui/NetworkUi;)Lch/android/api/util/DisplayInfo;

    move-result-object v1

    const/4 v2, 0x0

    const/16 v3, 0xc

    .line 1098
    invoke-static {}, Lch/kingdoms/ndk/NdkUiEventManager;->callNativeGetInven()Lch/kingdoms/ndk/data/Inven;

    move-result-object v4

    invoke-virtual {v4}, Lch/kingdoms/ndk/data/Inven;->getItems()[Lch/kingdoms/ndk/data/Inven$Item;

    move-result-object v5

    const/4 v6, 0x0

    move-object v4, p2

    .line 1097
    invoke-static/range {v0 .. v6}, Lch/android/api/ui/ChViewGen;->popUpTradeItemView(Landroid/app/Activity;Lch/android/api/util/DisplayInfo;IILch/kingdoms/ndk/data/Inven$Item;[Lch/kingdoms/ndk/data/Inven$Item;Landroid/view/View$OnClickListener;)Lch/android/api/ui/ChPopUpTradeItemView;

    move-result-object v7

    .line 1099
    .local v7, "tradePopUp":Lch/android/api/ui/ChPopUpTradeItemView;
    const/4 v0, 0x1

    invoke-static {v0}, Lch/kingdoms/android/ui/NetworkUi;->access$11(Z)V

    .line 1100
    new-instance v0, Lch/kingdoms/android/ui/NetworkUi$MyInvenView$1;

    invoke-direct {v0, p0, p2, v7}, Lch/kingdoms/android/ui/NetworkUi$MyInvenView$1;-><init>(Lch/kingdoms/android/ui/NetworkUi$MyInvenView;Lch/kingdoms/ndk/data/Inven$Item;Lch/android/api/ui/ChPopUpTradeItemView;)V

    invoke-virtual {v7, v0}, Lch/android/api/ui/ChPopUpTradeItemView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 1095
    :pswitch_data_0
    .packed-switch 0x2753
        :pswitch_0
    .end packed-switch
.end method

.method protected onMoneyClick(Lch/android/api/ui/ChTextView;)V
    .locals 9
    .param p1, "moneyView"    # Lch/android/api/ui/ChTextView;

    .prologue
    .line 1172
    invoke-static {}, Lch/kingdoms/ndk/NdkUiEventManager;->callNativeGetHeroInfo()Lch/kingdoms/ndk/data/HeroStatus;

    move-result-object v7

    .line 1173
    .local v7, "hero":Lch/kingdoms/ndk/data/HeroStatus;
    iget-object v0, p0, Lch/kingdoms/android/ui/NetworkUi$MyInvenView;->this$0:Lch/kingdoms/android/ui/NetworkUi;

    invoke-static {v0}, Lch/kingdoms/android/ui/NetworkUi;->access$4(Lch/kingdoms/android/ui/NetworkUi;)Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lch/kingdoms/android/ui/NetworkUi$MyInvenView;->this$0:Lch/kingdoms/android/ui/NetworkUi;

    invoke-static {v1}, Lch/kingdoms/android/ui/NetworkUi;->access$10(Lch/kingdoms/android/ui/NetworkUi;)Lch/android/api/util/DisplayInfo;

    move-result-object v1

    invoke-virtual {v7}, Lch/kingdoms/ndk/data/HeroStatus;->getMoney()I

    move-result v2

    const/16 v3, 0xe

    .line 1174
    new-instance v4, Lch/kingdoms/ndk/data/Inven;

    invoke-direct {v4}, Lch/kingdoms/ndk/data/Inven;-><init>()V

    invoke-virtual {v4}, Lch/kingdoms/ndk/data/Inven;->getNullItem()Lch/kingdoms/ndk/data/Inven$Item;

    move-result-object v4

    invoke-static {}, Lch/kingdoms/ndk/NdkUiEventManager;->callNativeGetInven()Lch/kingdoms/ndk/data/Inven;

    move-result-object v5

    invoke-virtual {v5}, Lch/kingdoms/ndk/data/Inven;->getItems()[Lch/kingdoms/ndk/data/Inven$Item;

    move-result-object v5

    const/4 v6, 0x0

    .line 1173
    invoke-static/range {v0 .. v6}, Lch/android/api/ui/ChViewGen;->popUpTradeItemView(Landroid/app/Activity;Lch/android/api/util/DisplayInfo;IILch/kingdoms/ndk/data/Inven$Item;[Lch/kingdoms/ndk/data/Inven$Item;Landroid/view/View$OnClickListener;)Lch/android/api/ui/ChPopUpTradeItemView;

    move-result-object v8

    .line 1175
    .local v8, "tradePopUp":Lch/android/api/ui/ChPopUpTradeItemView;
    const/4 v0, 0x1

    invoke-static {v0}, Lch/kingdoms/android/ui/NetworkUi;->access$11(Z)V

    .line 1176
    new-instance v0, Lch/kingdoms/android/ui/NetworkUi$MyInvenView$2;

    invoke-direct {v0, p0, v8, p1}, Lch/kingdoms/android/ui/NetworkUi$MyInvenView$2;-><init>(Lch/kingdoms/android/ui/NetworkUi$MyInvenView;Lch/android/api/ui/ChPopUpTradeItemView;Lch/android/api/ui/ChTextView;)V

    invoke-virtual {v8, v0}, Lch/android/api/ui/ChPopUpTradeItemView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1218
    return-void
.end method
