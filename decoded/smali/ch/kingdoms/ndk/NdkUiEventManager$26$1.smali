.class Lch/kingdoms/ndk/NdkUiEventManager$26$1;
.super Ljava/lang/Object;
.source "NdkUiEventManager.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lch/kingdoms/ndk/NdkUiEventManager$26;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lch/kingdoms/ndk/NdkUiEventManager$26;

.field private final synthetic val$editTxtPopUp:Lch/android/api/ui/ChPopUpEditTextView;

.field private final synthetic val$layerLvel:I

.field private final synthetic val$network:Lch/android/api/network/ChNetwork;

.field private final synthetic val$packetFac:Lch/kingdoms/android/network/ChPacketFactory;

.field private final synthetic val$phoneNumber:Ljava/lang/String;


# direct methods
.method constructor <init>(Lch/kingdoms/ndk/NdkUiEventManager$26;ILch/android/api/ui/ChPopUpEditTextView;Lch/android/api/network/ChNetwork;Lch/kingdoms/android/network/ChPacketFactory;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lch/kingdoms/ndk/NdkUiEventManager$26$1;->this$1:Lch/kingdoms/ndk/NdkUiEventManager$26;

    iput p2, p0, Lch/kingdoms/ndk/NdkUiEventManager$26$1;->val$layerLvel:I

    iput-object p3, p0, Lch/kingdoms/ndk/NdkUiEventManager$26$1;->val$editTxtPopUp:Lch/android/api/ui/ChPopUpEditTextView;

    iput-object p4, p0, Lch/kingdoms/ndk/NdkUiEventManager$26$1;->val$network:Lch/android/api/network/ChNetwork;

    iput-object p5, p0, Lch/kingdoms/ndk/NdkUiEventManager$26$1;->val$packetFac:Lch/kingdoms/android/network/ChPacketFactory;

    iput-object p6, p0, Lch/kingdoms/ndk/NdkUiEventManager$26$1;->val$phoneNumber:Ljava/lang/String;

    .line 764
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 768
    iget v0, p0, Lch/kingdoms/ndk/NdkUiEventManager$26$1;->val$layerLvel:I

    invoke-static {}, Lch/android/api/ui/ChViewGen;->getEventLayerLevel()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 769
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 779
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 771
    :pswitch_1
    iget-object v0, p0, Lch/kingdoms/ndk/NdkUiEventManager$26$1;->val$editTxtPopUp:Lch/android/api/ui/ChPopUpEditTextView;

    iget-object v1, p0, Lch/kingdoms/ndk/NdkUiEventManager$26$1;->val$network:Lch/android/api/network/ChNetwork;

    iget-object v2, p0, Lch/kingdoms/ndk/NdkUiEventManager$26$1;->val$packetFac:Lch/kingdoms/android/network/ChPacketFactory;

    iget-object v3, p0, Lch/kingdoms/ndk/NdkUiEventManager$26$1;->val$phoneNumber:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Lch/kingdoms/ndk/NdkUiEventManager;->access$14(Lch/android/api/ui/ChPopUpEditTextView;Lch/android/api/network/ChNetwork;Lch/kingdoms/android/network/ChPacketFactory;Ljava/lang/String;)V

    goto :goto_0

    .line 774
    :pswitch_2
    invoke-static {}, Lch/android/api/ui/ChViewGen;->closePopUpView()V

    .line 775
    iget-object v0, p0, Lch/kingdoms/ndk/NdkUiEventManager$26$1;->val$network:Lch/android/api/network/ChNetwork;

    invoke-virtual {v0}, Lch/android/api/network/ChNetwork;->disconnect()V

    goto :goto_0

    .line 769
    nop

    :pswitch_data_0
    .packed-switch 0x2742
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
