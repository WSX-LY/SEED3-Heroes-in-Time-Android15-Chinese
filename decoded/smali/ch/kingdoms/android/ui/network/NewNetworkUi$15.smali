.class Lch/kingdoms/android/ui/network/NewNetworkUi$15;
.super Ljava/lang/Object;
.source "NewNetworkUi.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lch/kingdoms/android/ui/network/NewNetworkUi;->popUpRegisterNewMember()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lch/kingdoms/android/ui/network/NewNetworkUi;


# direct methods
.method constructor <init>(Lch/kingdoms/android/ui/network/NewNetworkUi;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lch/kingdoms/android/ui/network/NewNetworkUi$15;->this$0:Lch/kingdoms/android/ui/network/NewNetworkUi;

    .line 1169
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lch/kingdoms/android/ui/network/NewNetworkUi$15;)Lch/kingdoms/android/ui/network/NewNetworkUi;
    .locals 1

    .prologue
    .line 1169
    iget-object v0, p0, Lch/kingdoms/android/ui/network/NewNetworkUi$15;->this$0:Lch/kingdoms/android/ui/network/NewNetworkUi;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 1173
    iget-object v0, p0, Lch/kingdoms/android/ui/network/NewNetworkUi$15;->this$0:Lch/kingdoms/android/ui/network/NewNetworkUi;

    invoke-static {v0}, Lch/kingdoms/android/ui/network/NewNetworkUi;->access$6(Lch/kingdoms/android/ui/network/NewNetworkUi;)Lch/kingdoms/android/network/ChPacketFactory;

    move-result-object v0

    new-instance v1, Lch/kingdoms/android/ui/network/NewNetworkUi$15$1;

    invoke-direct {v1, p0}, Lch/kingdoms/android/ui/network/NewNetworkUi$15$1;-><init>(Lch/kingdoms/android/ui/network/NewNetworkUi$15;)V

    .line 1203
    iget-object v2, p0, Lch/kingdoms/android/ui/network/NewNetworkUi$15;->this$0:Lch/kingdoms/android/ui/network/NewNetworkUi;

    invoke-static {v2}, Lch/kingdoms/android/ui/network/NewNetworkUi;->access$7(Lch/kingdoms/android/ui/network/NewNetworkUi;)Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lch/android/lib/openfeint/ChOpenFeint;->getCurrentUserName()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Landroid/os/Build;->MODEL:Ljava/lang/String;

    iget-object v5, p0, Lch/kingdoms/android/ui/network/NewNetworkUi$15;->this$0:Lch/kingdoms/android/ui/network/NewNetworkUi;

    invoke-static {v5}, Lch/kingdoms/android/ui/network/NewNetworkUi;->access$8(Lch/kingdoms/android/ui/network/NewNetworkUi;)I

    move-result v5

    .line 1173
    invoke-virtual/range {v0 .. v5}, Lch/kingdoms/android/network/ChPacketFactory;->createRegisterMember(Lch/kingdoms/android/network/ChPacketFactory$OnResultListener;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Lch/kingdoms/android/network/ChPacketFactory$RegisterMember;

    move-result-object v6

    .line 1204
    .local v6, "packet":Lch/kingdoms/android/network/ChPacketFactory$ChPacket;
    iget-object v0, p0, Lch/kingdoms/android/ui/network/NewNetworkUi$15;->this$0:Lch/kingdoms/android/ui/network/NewNetworkUi;

    invoke-static {v0}, Lch/kingdoms/android/ui/network/NewNetworkUi;->access$5(Lch/kingdoms/android/ui/network/NewNetworkUi;)Lch/android/api/network/ChNetwork;

    move-result-object v0

    invoke-virtual {v6, v0}, Lch/kingdoms/android/network/ChPacketFactory$ChPacket;->sendPacket(Lch/android/api/network/ChNetwork;)V

    .line 1229
    return-void
.end method
