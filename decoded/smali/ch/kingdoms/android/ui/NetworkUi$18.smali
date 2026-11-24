.class Lch/kingdoms/android/ui/NetworkUi$18;
.super Ljava/lang/Object;
.source "NetworkUi.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lch/kingdoms/android/ui/NetworkUi;->popUpItemManageMenu()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lch/kingdoms/android/ui/NetworkUi;


# direct methods
.method constructor <init>(Lch/kingdoms/android/ui/NetworkUi;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lch/kingdoms/android/ui/NetworkUi$18;->this$0:Lch/kingdoms/android/ui/NetworkUi;

    .line 1027
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lch/kingdoms/android/ui/NetworkUi$18;)Lch/kingdoms/android/ui/NetworkUi;
    .locals 1

    .prologue
    .line 1027
    iget-object v0, p0, Lch/kingdoms/android/ui/NetworkUi$18;->this$0:Lch/kingdoms/android/ui/NetworkUi;

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 1031
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 1065
    :goto_0
    return-void

    .line 1033
    :pswitch_0
    invoke-static {}, Lch/android/api/ui/ChViewGen;->closePopUpView()V

    .line 1034
    iget-object v1, p0, Lch/kingdoms/android/ui/NetworkUi$18;->this$0:Lch/kingdoms/android/ui/NetworkUi;

    invoke-static {v1}, Lch/kingdoms/android/ui/NetworkUi;->access$4(Lch/kingdoms/android/ui/NetworkUi;)Landroid/app/Activity;

    move-result-object v1

    new-instance v2, Lch/kingdoms/android/ui/NetworkUi$MyInvenView;

    iget-object v3, p0, Lch/kingdoms/android/ui/NetworkUi$18;->this$0:Lch/kingdoms/android/ui/NetworkUi;

    invoke-direct {v2, v3}, Lch/kingdoms/android/ui/NetworkUi$MyInvenView;-><init>(Lch/kingdoms/android/ui/NetworkUi;)V

    invoke-static {v1, v2}, Lch/android/api/ui/ChViewGen;->popUp(Landroid/app/Activity;Landroid/view/View;)Landroid/view/View;

    goto :goto_0

    .line 1037
    :pswitch_1
    iget-object v1, p0, Lch/kingdoms/android/ui/NetworkUi$18;->this$0:Lch/kingdoms/android/ui/NetworkUi;

    invoke-static {v1}, Lch/kingdoms/android/ui/NetworkUi;->access$0(Lch/kingdoms/android/ui/NetworkUi;)Lch/kingdoms/android/network/ChPacketFactory;

    move-result-object v1

    new-instance v2, Lch/kingdoms/android/ui/NetworkUi$18$1;

    invoke-direct {v2, p0}, Lch/kingdoms/android/ui/NetworkUi$18$1;-><init>(Lch/kingdoms/android/ui/NetworkUi$18;)V

    .line 1053
    iget-object v3, p0, Lch/kingdoms/android/ui/NetworkUi$18;->this$0:Lch/kingdoms/android/ui/NetworkUi;

    invoke-static {v3}, Lch/kingdoms/android/ui/NetworkUi;->access$2(Lch/kingdoms/android/ui/NetworkUi;)Ljava/lang/String;

    move-result-object v3

    .line 1037
    invoke-virtual {v1, v2, v3}, Lch/kingdoms/android/network/ChPacketFactory;->createShowFence(Lch/kingdoms/android/network/ChPacketFactory$OnResultListener;Ljava/lang/String;)Lch/kingdoms/android/network/ChPacketFactory$ShowFence;

    move-result-object v0

    .line 1054
    .local v0, "fencePacket":Lch/kingdoms/android/network/ChPacketFactory$ChPacket;
    iget-object v1, p0, Lch/kingdoms/android/ui/NetworkUi$18;->this$0:Lch/kingdoms/android/ui/NetworkUi;

    invoke-static {v1}, Lch/kingdoms/android/ui/NetworkUi;->access$3(Lch/kingdoms/android/ui/NetworkUi;)Lch/android/api/network/ChNetwork;

    move-result-object v1

    invoke-virtual {v0, v1}, Lch/kingdoms/android/network/ChPacketFactory$ChPacket;->sendPacket(Lch/android/api/network/ChNetwork;)V

    goto :goto_0

    .line 1057
    .end local v0    # "fencePacket":Lch/kingdoms/android/network/ChPacketFactory$ChPacket;
    :pswitch_2
    invoke-static {}, Lch/android/api/ui/ChViewGen;->closePopUpView()V

    .line 1058
    iget-object v1, p0, Lch/kingdoms/android/ui/NetworkUi$18;->this$0:Lch/kingdoms/android/ui/NetworkUi;

    invoke-static {v1}, Lch/kingdoms/android/ui/NetworkUi;->access$30(Lch/kingdoms/android/ui/NetworkUi;)V

    goto :goto_0

    .line 1061
    :pswitch_3
    invoke-static {}, Lch/android/api/ui/ChViewGen;->closePopUpView()V

    .line 1062
    iget-object v1, p0, Lch/kingdoms/android/ui/NetworkUi$18;->this$0:Lch/kingdoms/android/ui/NetworkUi;

    invoke-static {v1}, Lch/kingdoms/android/ui/NetworkUi;->access$31(Lch/kingdoms/android/ui/NetworkUi;)V

    goto :goto_0

    .line 1031
    nop

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
