.class Lch/kingdoms/ndk/NdkUiEventManager$29$1;
.super Ljava/lang/Object;
.source "NdkUiEventManager.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lch/kingdoms/ndk/NdkUiEventManager$29;->onResult(Lch/android/api/network/ChResultPacket;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private isClicked:Z

.field final synthetic this$1:Lch/kingdoms/ndk/NdkUiEventManager$29;

.field private final synthetic val$network:Lch/android/api/network/ChNetwork;

.field private final synthetic val$packetFac:Lch/kingdoms/android/network/ChPacketFactory;

.field private final synthetic val$phoneNumber:Ljava/lang/String;


# direct methods
.method constructor <init>(Lch/kingdoms/ndk/NdkUiEventManager$29;Lch/android/api/network/ChNetwork;Lch/kingdoms/android/network/ChPacketFactory;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 1
    iput-object p1, p0, Lch/kingdoms/ndk/NdkUiEventManager$29$1;->this$1:Lch/kingdoms/ndk/NdkUiEventManager$29;

    iput-object p2, p0, Lch/kingdoms/ndk/NdkUiEventManager$29$1;->val$network:Lch/android/api/network/ChNetwork;

    iput-object p3, p0, Lch/kingdoms/ndk/NdkUiEventManager$29$1;->val$packetFac:Lch/kingdoms/android/network/ChPacketFactory;

    iput-object p4, p0, Lch/kingdoms/ndk/NdkUiEventManager$29$1;->val$phoneNumber:Ljava/lang/String;

    .line 826
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 827
    const/4 v0, 0x0

    iput-boolean v0, p0, Lch/kingdoms/ndk/NdkUiEventManager$29$1;->isClicked:Z

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 831
    iget-boolean v0, p0, Lch/kingdoms/ndk/NdkUiEventManager$29$1;->isClicked:Z

    if-nez v0, :cond_0

    .line 832
    const/4 v0, 0x1

    iput-boolean v0, p0, Lch/kingdoms/ndk/NdkUiEventManager$29$1;->isClicked:Z

    .line 833
    invoke-static {}, Lch/android/api/ui/ChViewGen;->closePopUpView()V

    .line 834
    invoke-static {}, Lch/android/api/ui/ChViewGen;->closePopUpView()V

    .line 836
    iget-object v0, p0, Lch/kingdoms/ndk/NdkUiEventManager$29$1;->val$network:Lch/android/api/network/ChNetwork;

    iget-object v1, p0, Lch/kingdoms/ndk/NdkUiEventManager$29$1;->val$packetFac:Lch/kingdoms/android/network/ChPacketFactory;

    iget-object v2, p0, Lch/kingdoms/ndk/NdkUiEventManager$29$1;->val$phoneNumber:Ljava/lang/String;

    .line 837
    invoke-static {}, Lch/kingdoms/ndk/NdkUiEventManager;->access$8()Lch/kingdoms/kor/KingdomsActivity;

    move-result-object v3

    const/16 v4, 0xbd

    invoke-static {v4}, Lch/kingdoms/ndk/NdkTextLoader;->getGameMenuTxt(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x2

    invoke-static {v5}, Lch/kingdoms/ndk/NdkTextLoader;->getNetworkTxt(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/app/ProgressDialog;

    move-result-object v3

    .line 836
    invoke-static {v0, v1, v2, v3}, Lch/kingdoms/ndk/NdkUiEventManager;->access$15(Lch/android/api/network/ChNetwork;Lch/kingdoms/android/network/ChPacketFactory;Ljava/lang/String;Landroid/app/ProgressDialog;)V

    .line 839
    :cond_0
    return-void
.end method
