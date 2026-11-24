.class Lch/kingdoms/ndk/NdkUiEventManager$26;
.super Ljava/lang/Object;
.source "NdkUiEventManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lch/kingdoms/ndk/NdkUiEventManager;->popUpRegisterNewMember(Lch/android/api/network/ChNetwork;Lch/kingdoms/android/network/ChPacketFactory;Ljava/lang/String;Landroid/app/ProgressDialog;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$network:Lch/android/api/network/ChNetwork;

.field private final synthetic val$packetFac:Lch/kingdoms/android/network/ChPacketFactory;

.field private final synthetic val$pd:Landroid/app/ProgressDialog;

.field private final synthetic val$phoneNumber:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/app/ProgressDialog;Lch/android/api/network/ChNetwork;Lch/kingdoms/android/network/ChPacketFactory;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lch/kingdoms/ndk/NdkUiEventManager$26;->val$pd:Landroid/app/ProgressDialog;

    iput-object p2, p0, Lch/kingdoms/ndk/NdkUiEventManager$26;->val$network:Lch/android/api/network/ChNetwork;

    iput-object p3, p0, Lch/kingdoms/ndk/NdkUiEventManager$26;->val$packetFac:Lch/kingdoms/android/network/ChPacketFactory;

    iput-object p4, p0, Lch/kingdoms/ndk/NdkUiEventManager$26;->val$phoneNumber:Ljava/lang/String;

    .line 756
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 760
    invoke-static {}, Lch/android/api/ui/ChViewGen;->getEventLayerLevel()I

    move-result v0

    add-int/lit8 v2, v0, 0x1

    .line 761
    .local v2, "layerLvel":I
    new-instance v3, Lch/android/api/ui/ChPopUpEditTextView;

    invoke-static {}, Lch/kingdoms/ndk/NdkUiEventManager;->access$8()Lch/kingdoms/kor/KingdomsActivity;

    move-result-object v0

    invoke-virtual {v0}, Lch/kingdoms/kor/KingdomsActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {}, Lch/kingdoms/ndk/NdkUiEventManager;->access$9()Lch/android/api/util/DisplayInfo;

    move-result-object v1

    const v4, 0x7f020246

    const/16 v5, 0xda

    invoke-static {v5}, Lch/kingdoms/ndk/NdkTextLoader;->getGameMenuTxt(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v0, v1, v4, v5}, Lch/android/api/ui/ChPopUpEditTextView;-><init>(Landroid/content/Context;Lch/android/api/util/DisplayInfo;ILjava/lang/String;)V

    .line 762
    .local v3, "editTxtPopUp":Lch/android/api/ui/ChPopUpEditTextView;
    invoke-static {}, Lch/kingdoms/ndk/NdkUiEventManager;->access$8()Lch/kingdoms/kor/KingdomsActivity;

    move-result-object v0

    invoke-static {v0, v3}, Lch/android/api/ui/ChViewGen;->popUp(Landroid/app/Activity;Landroid/view/View;)Landroid/view/View;

    .line 763
    iget-object v0, p0, Lch/kingdoms/ndk/NdkUiEventManager$26;->val$pd:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 764
    new-instance v0, Lch/kingdoms/ndk/NdkUiEventManager$26$1;

    iget-object v4, p0, Lch/kingdoms/ndk/NdkUiEventManager$26;->val$network:Lch/android/api/network/ChNetwork;

    iget-object v5, p0, Lch/kingdoms/ndk/NdkUiEventManager$26;->val$packetFac:Lch/kingdoms/android/network/ChPacketFactory;

    iget-object v6, p0, Lch/kingdoms/ndk/NdkUiEventManager$26;->val$phoneNumber:Ljava/lang/String;

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lch/kingdoms/ndk/NdkUiEventManager$26$1;-><init>(Lch/kingdoms/ndk/NdkUiEventManager$26;ILch/android/api/ui/ChPopUpEditTextView;Lch/android/api/network/ChNetwork;Lch/kingdoms/android/network/ChPacketFactory;Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Lch/android/api/ui/ChPopUpEditTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 781
    return-void
.end method
