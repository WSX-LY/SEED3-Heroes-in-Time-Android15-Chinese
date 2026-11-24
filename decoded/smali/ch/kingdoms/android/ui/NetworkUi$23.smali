.class Lch/kingdoms/android/ui/NetworkUi$23;
.super Ljava/lang/Object;
.source "NetworkUi.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lch/kingdoms/android/ui/NetworkUi;->popUpSubTypeMenu(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lch/kingdoms/android/ui/NetworkUi;

.field private final synthetic val$mainType:I


# direct methods
.method constructor <init>(Lch/kingdoms/android/ui/NetworkUi;I)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lch/kingdoms/android/ui/NetworkUi$23;->this$0:Lch/kingdoms/android/ui/NetworkUi;

    iput p2, p0, Lch/kingdoms/android/ui/NetworkUi$23;->val$mainType:I

    .line 1847
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lch/kingdoms/android/ui/NetworkUi$23;)Lch/kingdoms/android/ui/NetworkUi;
    .locals 1

    .prologue
    .line 1847
    iget-object v0, p0, Lch/kingdoms/android/ui/NetworkUi$23;->this$0:Lch/kingdoms/android/ui/NetworkUi;

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 1851
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    .line 1852
    .local v1, "subType":I
    invoke-static {}, Lch/android/api/ui/ChViewGen;->closePopUpView()V

    .line 1853
    iget-object v2, p0, Lch/kingdoms/android/ui/NetworkUi$23;->this$0:Lch/kingdoms/android/ui/NetworkUi;

    invoke-static {v2}, Lch/kingdoms/android/ui/NetworkUi;->access$0(Lch/kingdoms/android/ui/NetworkUi;)Lch/kingdoms/android/network/ChPacketFactory;

    move-result-object v2

    new-instance v3, Lch/kingdoms/android/ui/NetworkUi$23$1;

    iget v4, p0, Lch/kingdoms/android/ui/NetworkUi$23;->val$mainType:I

    invoke-direct {v3, p0, v4, v1}, Lch/kingdoms/android/ui/NetworkUi$23$1;-><init>(Lch/kingdoms/android/ui/NetworkUi$23;II)V

    .line 1869
    iget-object v4, p0, Lch/kingdoms/android/ui/NetworkUi$23;->this$0:Lch/kingdoms/android/ui/NetworkUi;

    invoke-static {v4}, Lch/kingdoms/android/ui/NetworkUi;->access$2(Lch/kingdoms/android/ui/NetworkUi;)Ljava/lang/String;

    move-result-object v4

    .line 1853
    invoke-virtual {v2, v3, v4}, Lch/kingdoms/android/network/ChPacketFactory;->createShowFence(Lch/kingdoms/android/network/ChPacketFactory$OnResultListener;Ljava/lang/String;)Lch/kingdoms/android/network/ChPacketFactory$ShowFence;

    move-result-object v0

    .line 1870
    .local v0, "fencePacket":Lch/kingdoms/android/network/ChPacketFactory$ChPacket;
    iget-object v2, p0, Lch/kingdoms/android/ui/NetworkUi$23;->this$0:Lch/kingdoms/android/ui/NetworkUi;

    invoke-static {v2}, Lch/kingdoms/android/ui/NetworkUi;->access$3(Lch/kingdoms/android/ui/NetworkUi;)Lch/android/api/network/ChNetwork;

    move-result-object v2

    invoke-virtual {v0, v2}, Lch/kingdoms/android/network/ChPacketFactory$ChPacket;->sendPacket(Lch/android/api/network/ChNetwork;)V

    .line 1873
    return-void
.end method
