.class Lch/kingdoms/android/ui/EquipUi$EquipInfoView$2;
.super Ljava/lang/Object;
.source "EquipUi.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lch/kingdoms/android/ui/EquipUi$EquipInfoView;->deleteItem()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lch/kingdoms/android/ui/EquipUi$EquipInfoView;


# direct methods
.method constructor <init>(Lch/kingdoms/android/ui/EquipUi$EquipInfoView;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lch/kingdoms/android/ui/EquipUi$EquipInfoView$2;->this$1:Lch/kingdoms/android/ui/EquipUi$EquipInfoView;

    .line 649
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 653
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 669
    :goto_0
    return-void

    .line 655
    :pswitch_0
    invoke-static {}, Lch/android/api/ui/ChViewGen;->closePopUpView()V

    goto :goto_0

    .line 658
    :pswitch_1
    invoke-static {}, Lch/android/api/ui/ChViewGen;->closePopUpView()V

    .line 659
    invoke-static {}, Lch/android/api/ui/ChViewGen;->closePopUpView()V

    .line 660
    iget-object v0, p0, Lch/kingdoms/android/ui/EquipUi$EquipInfoView$2;->this$1:Lch/kingdoms/android/ui/EquipUi$EquipInfoView;

    invoke-static {v0}, Lch/kingdoms/android/ui/EquipUi$EquipInfoView;->access$0(Lch/kingdoms/android/ui/EquipUi$EquipInfoView;)Lch/android/api/ui/ChInvenView;

    move-result-object v0

    iget-object v1, p0, Lch/kingdoms/android/ui/EquipUi$EquipInfoView$2;->this$1:Lch/kingdoms/android/ui/EquipUi$EquipInfoView;

    invoke-static {v1}, Lch/kingdoms/android/ui/EquipUi$EquipInfoView;->access$1(Lch/kingdoms/android/ui/EquipUi$EquipInfoView;)I

    move-result v1

    invoke-virtual {v0, v1}, Lch/android/api/ui/ChInvenView;->getFilteredItemInvenIndex(I)I

    move-result v0

    const/4 v1, -0x1

    invoke-static {v0, v1}, Lch/kingdoms/ndk/NdkUiEventManager;->callNativeDeleteItem(II)Z

    move-result v0

    if-nez v0, :cond_0

    .line 661
    iget-object v0, p0, Lch/kingdoms/android/ui/EquipUi$EquipInfoView$2;->this$1:Lch/kingdoms/android/ui/EquipUi$EquipInfoView;

    invoke-static {v0}, Lch/kingdoms/android/ui/EquipUi$EquipInfoView;->access$2(Lch/kingdoms/android/ui/EquipUi$EquipInfoView;)Lch/kingdoms/android/ui/EquipUi;

    move-result-object v0

    invoke-static {v0}, Lch/kingdoms/android/ui/EquipUi;->access$6(Lch/kingdoms/android/ui/EquipUi;)Landroid/app/Activity;

    move-result-object v0

    const/16 v1, 0x34

    invoke-static {v1}, Lch/kingdoms/ndk/NdkTextLoader;->getGameMenuTxt(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lch/android/api/ui/ChViewGen;->popUpOkView(Landroid/app/Activity;Ljava/lang/String;)Landroid/view/View;

    .line 663
    :cond_0
    iget-object v0, p0, Lch/kingdoms/android/ui/EquipUi$EquipInfoView$2;->this$1:Lch/kingdoms/android/ui/EquipUi$EquipInfoView;

    invoke-static {v0}, Lch/kingdoms/android/ui/EquipUi$EquipInfoView;->access$2(Lch/kingdoms/android/ui/EquipUi$EquipInfoView;)Lch/kingdoms/android/ui/EquipUi;

    move-result-object v0

    invoke-static {v0}, Lch/kingdoms/android/ui/EquipUi;->access$8(Lch/kingdoms/android/ui/EquipUi;)V

    .line 664
    iget-object v0, p0, Lch/kingdoms/android/ui/EquipUi$EquipInfoView$2;->this$1:Lch/kingdoms/android/ui/EquipUi$EquipInfoView;

    invoke-static {v0}, Lch/kingdoms/android/ui/EquipUi$EquipInfoView;->access$2(Lch/kingdoms/android/ui/EquipUi$EquipInfoView;)Lch/kingdoms/android/ui/EquipUi;

    move-result-object v0

    invoke-static {}, Lch/kingdoms/ndk/NdkUiEventManager;->callNativeGetEquipItems()[S

    move-result-object v1

    invoke-static {v0, v1}, Lch/kingdoms/android/ui/EquipUi;->access$3(Lch/kingdoms/android/ui/EquipUi;[S)V

    .line 665
    iget-object v0, p0, Lch/kingdoms/android/ui/EquipUi$EquipInfoView$2;->this$1:Lch/kingdoms/android/ui/EquipUi$EquipInfoView;

    invoke-static {v0}, Lch/kingdoms/android/ui/EquipUi$EquipInfoView;->access$0(Lch/kingdoms/android/ui/EquipUi$EquipInfoView;)Lch/android/api/ui/ChInvenView;

    move-result-object v0

    iget-object v1, p0, Lch/kingdoms/android/ui/EquipUi$EquipInfoView$2;->this$1:Lch/kingdoms/android/ui/EquipUi$EquipInfoView;

    invoke-static {v1}, Lch/kingdoms/android/ui/EquipUi$EquipInfoView;->access$2(Lch/kingdoms/android/ui/EquipUi$EquipInfoView;)Lch/kingdoms/android/ui/EquipUi;

    move-result-object v1

    invoke-static {v1}, Lch/kingdoms/android/ui/EquipUi;->access$0(Lch/kingdoms/android/ui/EquipUi;)[S

    move-result-object v1

    iget-object v2, p0, Lch/kingdoms/android/ui/EquipUi$EquipInfoView$2;->this$1:Lch/kingdoms/android/ui/EquipUi$EquipInfoView;

    invoke-static {v2}, Lch/kingdoms/android/ui/EquipUi$EquipInfoView;->access$2(Lch/kingdoms/android/ui/EquipUi$EquipInfoView;)Lch/kingdoms/android/ui/EquipUi;

    move-result-object v2

    invoke-static {v2}, Lch/kingdoms/android/ui/EquipUi;->access$1(Lch/kingdoms/android/ui/EquipUi;)[Lch/kingdoms/ndk/data/Inven$Item;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lch/android/api/ui/ChInvenView;->update([S[Lch/kingdoms/ndk/data/Inven$Item;)Z

    .line 666
    iget-object v0, p0, Lch/kingdoms/android/ui/EquipUi$EquipInfoView$2;->this$1:Lch/kingdoms/android/ui/EquipUi$EquipInfoView;

    invoke-static {v0}, Lch/kingdoms/android/ui/EquipUi$EquipInfoView;->access$0(Lch/kingdoms/android/ui/EquipUi$EquipInfoView;)Lch/android/api/ui/ChInvenView;

    move-result-object v0

    invoke-virtual {v0, p0}, Lch/android/api/ui/ChInvenView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 653
    nop

    :pswitch_data_0
    .packed-switch 0x2742
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
