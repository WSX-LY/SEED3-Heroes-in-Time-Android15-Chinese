.class Lch/kingdoms/ndk/NdkUiEventManager$29;
.super Ljava/lang/Object;
.source "NdkUiEventManager.java"

# interfaces
.implements Lch/kingdoms/android/network/ChPacketFactory$OnResultListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lch/kingdoms/ndk/NdkUiEventManager;->popUpRegisterId(Lch/android/api/ui/ChPopUpEditTextView;Lch/android/api/network/ChNetwork;Lch/kingdoms/android/network/ChPacketFactory;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$network:Lch/android/api/network/ChNetwork;

.field private final synthetic val$packetFac:Lch/kingdoms/android/network/ChPacketFactory;

.field private final synthetic val$phoneNumber:Ljava/lang/String;


# direct methods
.method constructor <init>(Lch/android/api/network/ChNetwork;Lch/kingdoms/android/network/ChPacketFactory;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lch/kingdoms/ndk/NdkUiEventManager$29;->val$network:Lch/android/api/network/ChNetwork;

    iput-object p2, p0, Lch/kingdoms/ndk/NdkUiEventManager$29;->val$packetFac:Lch/kingdoms/android/network/ChPacketFactory;

    iput-object p3, p0, Lch/kingdoms/ndk/NdkUiEventManager$29;->val$phoneNumber:Ljava/lang/String;

    .line 820
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(Lch/android/api/network/ChResultPacket;)V
    .locals 6
    .param p1, "resultPacket"    # Lch/android/api/network/ChResultPacket;

    .prologue
    .line 824
    invoke-virtual {p1}, Lch/android/api/network/ChResultPacket;->getResult()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 869
    :goto_0
    return-void

    .line 826
    :sswitch_0
    invoke-static {}, Lch/kingdoms/ndk/NdkUiEventManager;->access$8()Lch/kingdoms/kor/KingdomsActivity;

    move-result-object v0

    const/16 v1, 0xd7

    invoke-static {v1}, Lch/kingdoms/ndk/NdkTextLoader;->getGameMenuTxt(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lch/kingdoms/ndk/NdkUiEventManager$29$1;

    iget-object v3, p0, Lch/kingdoms/ndk/NdkUiEventManager$29;->val$network:Lch/android/api/network/ChNetwork;

    iget-object v4, p0, Lch/kingdoms/ndk/NdkUiEventManager$29;->val$packetFac:Lch/kingdoms/android/network/ChPacketFactory;

    iget-object v5, p0, Lch/kingdoms/ndk/NdkUiEventManager$29;->val$phoneNumber:Ljava/lang/String;

    invoke-direct {v2, p0, v3, v4, v5}, Lch/kingdoms/ndk/NdkUiEventManager$29$1;-><init>(Lch/kingdoms/ndk/NdkUiEventManager$29;Lch/android/api/network/ChNetwork;Lch/kingdoms/android/network/ChPacketFactory;Ljava/lang/String;)V

    invoke-static {v0, v1, v2}, Lch/android/api/ui/ChViewGen;->popUpOkView(Landroid/app/Activity;Ljava/lang/String;Landroid/view/View$OnClickListener;)Landroid/view/View;

    goto :goto_0

    .line 843
    :sswitch_1
    invoke-static {}, Lch/kingdoms/ndk/NdkUiEventManager;->access$8()Lch/kingdoms/kor/KingdomsActivity;

    move-result-object v0

    const/16 v1, 0xd9

    invoke-static {v1}, Lch/kingdoms/ndk/NdkTextLoader;->getGameMenuTxt(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lch/kingdoms/ndk/NdkUiEventManager$29$2;

    invoke-direct {v2, p0}, Lch/kingdoms/ndk/NdkUiEventManager$29$2;-><init>(Lch/kingdoms/ndk/NdkUiEventManager$29;)V

    invoke-static {v0, v1, v2}, Lch/android/api/ui/ChViewGen;->popUpOkView(Landroid/app/Activity;Ljava/lang/String;Landroid/view/View$OnClickListener;)Landroid/view/View;

    goto :goto_0

    .line 856
    :sswitch_2
    invoke-static {}, Lch/kingdoms/ndk/NdkUiEventManager;->access$8()Lch/kingdoms/kor/KingdomsActivity;

    move-result-object v0

    const/16 v1, 0xd8

    invoke-static {v1}, Lch/kingdoms/ndk/NdkTextLoader;->getGameMenuTxt(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lch/kingdoms/ndk/NdkUiEventManager$29$3;

    invoke-direct {v2, p0}, Lch/kingdoms/ndk/NdkUiEventManager$29$3;-><init>(Lch/kingdoms/ndk/NdkUiEventManager$29;)V

    invoke-static {v0, v1, v2}, Lch/android/api/ui/ChViewGen;->popUpOkView(Landroid/app/Activity;Ljava/lang/String;Landroid/view/View$OnClickListener;)Landroid/view/View;

    goto :goto_0

    .line 824
    nop

    :sswitch_data_0
    .sparse-switch
        0x2710 -> :sswitch_0
        0x2716 -> :sswitch_2
        0x2717 -> :sswitch_1
    .end sparse-switch
.end method
