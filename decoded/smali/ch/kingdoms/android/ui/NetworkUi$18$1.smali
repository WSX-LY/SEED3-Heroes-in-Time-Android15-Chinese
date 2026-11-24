.class Lch/kingdoms/android/ui/NetworkUi$18$1;
.super Ljava/lang/Object;
.source "NetworkUi.java"

# interfaces
.implements Lch/kingdoms/android/network/ChPacketFactory$OnResultListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lch/kingdoms/android/ui/NetworkUi$18;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lch/kingdoms/android/ui/NetworkUi$18;


# direct methods
.method constructor <init>(Lch/kingdoms/android/ui/NetworkUi$18;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lch/kingdoms/android/ui/NetworkUi$18$1;->this$1:Lch/kingdoms/android/ui/NetworkUi$18;

    .line 1037
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(Lch/android/api/network/ChResultPacket;)V
    .locals 4
    .param p1, "resultPacket"    # Lch/android/api/network/ChResultPacket;

    .prologue
    .line 1041
    invoke-virtual {p1}, Lch/android/api/network/ChResultPacket;->getResult()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 1048
    iget-object v1, p0, Lch/kingdoms/android/ui/NetworkUi$18$1;->this$1:Lch/kingdoms/android/ui/NetworkUi$18;

    invoke-static {v1}, Lch/kingdoms/android/ui/NetworkUi$18;->access$0(Lch/kingdoms/android/ui/NetworkUi$18;)Lch/kingdoms/android/ui/NetworkUi;

    move-result-object v1

    invoke-static {v1}, Lch/kingdoms/android/ui/NetworkUi;->access$13(Lch/kingdoms/android/ui/NetworkUi;)Lch/kingdoms/android/ui/IGameMenu;

    move-result-object v1

    invoke-interface {v1}, Lch/kingdoms/android/ui/IGameMenu;->showViewInCenter()V

    .line 1049
    iget-object v1, p0, Lch/kingdoms/android/ui/NetworkUi$18$1;->this$1:Lch/kingdoms/android/ui/NetworkUi$18;

    invoke-static {v1}, Lch/kingdoms/android/ui/NetworkUi$18;->access$0(Lch/kingdoms/android/ui/NetworkUi$18;)Lch/kingdoms/android/ui/NetworkUi;

    move-result-object v1

    invoke-static {v1}, Lch/kingdoms/android/ui/NetworkUi;->access$4(Lch/kingdoms/android/ui/NetworkUi;)Landroid/app/Activity;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v2}, Lch/kingdoms/ndk/NdkTextLoader;->getNetworkTxt(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lch/kingdoms/android/ui/NetworkUi;->access$5(Landroid/app/Activity;Ljava/lang/String;)V

    .line 1052
    :goto_0
    return-void

    .line 1043
    :pswitch_0
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lch/android/api/network/ChResultPacket;->get(I)Ljava/lang/String;

    move-result-object v0

    .line 1044
    .local v0, "money":Ljava/lang/String;
    invoke-static {}, Lch/android/api/ui/ChViewGen;->closePopUpView()V

    .line 1045
    iget-object v1, p0, Lch/kingdoms/android/ui/NetworkUi$18$1;->this$1:Lch/kingdoms/android/ui/NetworkUi$18;

    invoke-static {v1}, Lch/kingdoms/android/ui/NetworkUi$18;->access$0(Lch/kingdoms/android/ui/NetworkUi$18;)Lch/kingdoms/android/ui/NetworkUi;

    move-result-object v1

    invoke-static {v1}, Lch/kingdoms/android/ui/NetworkUi;->access$4(Lch/kingdoms/android/ui/NetworkUi;)Landroid/app/Activity;

    move-result-object v1

    new-instance v2, Lch/kingdoms/android/ui/NetworkUi$NetworkInvenView;

    iget-object v3, p0, Lch/kingdoms/android/ui/NetworkUi$18$1;->this$1:Lch/kingdoms/android/ui/NetworkUi$18;

    invoke-static {v3}, Lch/kingdoms/android/ui/NetworkUi$18;->access$0(Lch/kingdoms/android/ui/NetworkUi$18;)Lch/kingdoms/android/ui/NetworkUi;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Lch/kingdoms/android/ui/NetworkUi$NetworkInvenView;-><init>(Lch/kingdoms/android/ui/NetworkUi;Ljava/lang/String;)V

    invoke-static {v1, v2}, Lch/android/api/ui/ChViewGen;->popUp(Landroid/app/Activity;Landroid/view/View;)Landroid/view/View;

    goto :goto_0

    .line 1041
    :pswitch_data_0
    .packed-switch 0x2710
        :pswitch_0
    .end packed-switch
.end method
