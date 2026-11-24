.class Lch/kingdoms/android/ui/NetworkUi$NetworkInvenView$4$1;
.super Ljava/lang/Object;
.source "NetworkUi.java"

# interfaces
.implements Lch/kingdoms/android/network/ChPacketFactory$OnResultListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lch/kingdoms/android/ui/NetworkUi$NetworkInvenView$4;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lch/kingdoms/android/ui/NetworkUi$NetworkInvenView$4;


# direct methods
.method constructor <init>(Lch/kingdoms/android/ui/NetworkUi$NetworkInvenView$4;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lch/kingdoms/android/ui/NetworkUi$NetworkInvenView$4$1;->this$2:Lch/kingdoms/android/ui/NetworkUi$NetworkInvenView$4;

    .line 1353
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(Lch/android/api/network/ChResultPacket;)V
    .locals 2
    .param p1, "resultPacket"    # Lch/android/api/network/ChResultPacket;

    .prologue
    .line 1357
    invoke-virtual {p1}, Lch/android/api/network/ChResultPacket;->getResult()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 1374
    iget-object v0, p0, Lch/kingdoms/android/ui/NetworkUi$NetworkInvenView$4$1;->this$2:Lch/kingdoms/android/ui/NetworkUi$NetworkInvenView$4;

    invoke-static {v0}, Lch/kingdoms/android/ui/NetworkUi$NetworkInvenView$4;->access$0(Lch/kingdoms/android/ui/NetworkUi$NetworkInvenView$4;)Lch/kingdoms/android/ui/NetworkUi$NetworkInvenView;

    move-result-object v0

    invoke-static {v0}, Lch/kingdoms/android/ui/NetworkUi$NetworkInvenView;->access$8(Lch/kingdoms/android/ui/NetworkUi$NetworkInvenView;)Lch/kingdoms/android/ui/NetworkUi;

    move-result-object v0

    invoke-virtual {p1}, Lch/android/api/network/ChResultPacket;->getResult()I

    move-result v1

    invoke-static {v0, v1}, Lch/kingdoms/android/ui/NetworkUi;->access$1(Lch/kingdoms/android/ui/NetworkUi;I)V

    .line 1377
    :goto_0
    return-void

    .line 1359
    :sswitch_0
    iget-object v0, p0, Lch/kingdoms/android/ui/NetworkUi$NetworkInvenView$4$1;->this$2:Lch/kingdoms/android/ui/NetworkUi$NetworkInvenView$4;

    invoke-static {v0}, Lch/kingdoms/android/ui/NetworkUi$NetworkInvenView$4;->access$0(Lch/kingdoms/android/ui/NetworkUi$NetworkInvenView$4;)Lch/kingdoms/android/ui/NetworkUi$NetworkInvenView;

    move-result-object v0

    invoke-static {v0}, Lch/kingdoms/android/ui/NetworkUi$NetworkInvenView;->access$3(Lch/kingdoms/android/ui/NetworkUi$NetworkInvenView;)V

    .line 1360
    invoke-static {}, Lch/kingdoms/ndk/NdkUiEventManager;->saveGame()Z

    goto :goto_0

    .line 1363
    :sswitch_1
    iget-object v0, p0, Lch/kingdoms/android/ui/NetworkUi$NetworkInvenView$4$1;->this$2:Lch/kingdoms/android/ui/NetworkUi$NetworkInvenView$4;

    invoke-static {v0}, Lch/kingdoms/android/ui/NetworkUi$NetworkInvenView$4;->access$0(Lch/kingdoms/android/ui/NetworkUi$NetworkInvenView$4;)Lch/kingdoms/android/ui/NetworkUi$NetworkInvenView;

    move-result-object v0

    invoke-static {v0}, Lch/kingdoms/android/ui/NetworkUi$NetworkInvenView;->access$8(Lch/kingdoms/android/ui/NetworkUi$NetworkInvenView;)Lch/kingdoms/android/ui/NetworkUi;

    move-result-object v0

    invoke-static {v0}, Lch/kingdoms/android/ui/NetworkUi;->access$4(Lch/kingdoms/android/ui/NetworkUi;)Landroid/app/Activity;

    move-result-object v0

    const/16 v1, 0x14

    invoke-static {v1}, Lch/kingdoms/ndk/NdkTextLoader;->getNetworkTxt(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lch/kingdoms/android/ui/NetworkUi;->access$5(Landroid/app/Activity;Ljava/lang/String;)V

    .line 1364
    iget-object v0, p0, Lch/kingdoms/android/ui/NetworkUi$NetworkInvenView$4$1;->this$2:Lch/kingdoms/android/ui/NetworkUi$NetworkInvenView$4;

    invoke-static {v0}, Lch/kingdoms/android/ui/NetworkUi$NetworkInvenView$4;->access$0(Lch/kingdoms/android/ui/NetworkUi$NetworkInvenView$4;)Lch/kingdoms/android/ui/NetworkUi$NetworkInvenView;

    move-result-object v0

    invoke-static {v0}, Lch/kingdoms/android/ui/NetworkUi$NetworkInvenView;->access$3(Lch/kingdoms/android/ui/NetworkUi$NetworkInvenView;)V

    .line 1365
    invoke-static {}, Lch/kingdoms/ndk/NdkUiEventManager;->saveGame()Z

    goto :goto_0

    .line 1368
    :sswitch_2
    iget-object v0, p0, Lch/kingdoms/android/ui/NetworkUi$NetworkInvenView$4$1;->this$2:Lch/kingdoms/android/ui/NetworkUi$NetworkInvenView$4;

    invoke-static {v0}, Lch/kingdoms/android/ui/NetworkUi$NetworkInvenView$4;->access$0(Lch/kingdoms/android/ui/NetworkUi$NetworkInvenView$4;)Lch/kingdoms/android/ui/NetworkUi$NetworkInvenView;

    move-result-object v0

    invoke-static {v0}, Lch/kingdoms/android/ui/NetworkUi$NetworkInvenView;->access$8(Lch/kingdoms/android/ui/NetworkUi$NetworkInvenView;)Lch/kingdoms/android/ui/NetworkUi;

    move-result-object v0

    invoke-static {v0}, Lch/kingdoms/android/ui/NetworkUi;->access$4(Lch/kingdoms/android/ui/NetworkUi;)Landroid/app/Activity;

    move-result-object v0

    const/16 v1, 0x53

    invoke-static {v1}, Lch/kingdoms/ndk/NdkTextLoader;->getGameMenuTxt(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lch/kingdoms/android/ui/NetworkUi;->access$5(Landroid/app/Activity;Ljava/lang/String;)V

    goto :goto_0

    .line 1371
    :sswitch_3
    iget-object v0, p0, Lch/kingdoms/android/ui/NetworkUi$NetworkInvenView$4$1;->this$2:Lch/kingdoms/android/ui/NetworkUi$NetworkInvenView$4;

    invoke-static {v0}, Lch/kingdoms/android/ui/NetworkUi$NetworkInvenView$4;->access$0(Lch/kingdoms/android/ui/NetworkUi$NetworkInvenView$4;)Lch/kingdoms/android/ui/NetworkUi$NetworkInvenView;

    move-result-object v0

    invoke-static {v0}, Lch/kingdoms/android/ui/NetworkUi$NetworkInvenView;->access$8(Lch/kingdoms/android/ui/NetworkUi$NetworkInvenView;)Lch/kingdoms/android/ui/NetworkUi;

    move-result-object v0

    invoke-static {v0}, Lch/kingdoms/android/ui/NetworkUi;->access$4(Lch/kingdoms/android/ui/NetworkUi;)Landroid/app/Activity;

    move-result-object v0

    const-string v1, "RESULT_NO_EQUAL_ITEM"

    invoke-static {v0, v1}, Lch/kingdoms/android/ui/NetworkUi;->access$5(Landroid/app/Activity;Ljava/lang/String;)V

    goto :goto_0

    .line 1357
    :sswitch_data_0
    .sparse-switch
        0x2710 -> :sswitch_0
        0x271e -> :sswitch_1
        0x2720 -> :sswitch_3
        0x2721 -> :sswitch_2
    .end sparse-switch
.end method
