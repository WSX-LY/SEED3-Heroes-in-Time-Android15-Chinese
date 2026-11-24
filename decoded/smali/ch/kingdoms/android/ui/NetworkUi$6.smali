.class Lch/kingdoms/android/ui/NetworkUi$6;
.super Ljava/lang/Object;
.source "NetworkUi.java"

# interfaces
.implements Lch/kingdoms/android/network/ChPacketFactory$OnResultListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lch/kingdoms/android/ui/NetworkUi;->popUpRegisterId(Lch/android/api/ui/ChPopUpEditTextView;)V
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
    iput-object p1, p0, Lch/kingdoms/android/ui/NetworkUi$6;->this$0:Lch/kingdoms/android/ui/NetworkUi;

    .line 329
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lch/kingdoms/android/ui/NetworkUi$6;)Lch/kingdoms/android/ui/NetworkUi;
    .locals 1

    .prologue
    .line 329
    iget-object v0, p0, Lch/kingdoms/android/ui/NetworkUi$6;->this$0:Lch/kingdoms/android/ui/NetworkUi;

    return-object v0
.end method


# virtual methods
.method public onResult(Lch/android/api/network/ChResultPacket;)V
    .locals 3
    .param p1, "resultPacket"    # Lch/android/api/network/ChResultPacket;

    .prologue
    .line 333
    invoke-virtual {p1}, Lch/android/api/network/ChResultPacket;->getResult()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 351
    :goto_0
    return-void

    .line 335
    :sswitch_0
    iget-object v0, p0, Lch/kingdoms/android/ui/NetworkUi$6;->this$0:Lch/kingdoms/android/ui/NetworkUi;

    invoke-static {v0}, Lch/kingdoms/android/ui/NetworkUi;->access$4(Lch/kingdoms/android/ui/NetworkUi;)Landroid/app/Activity;

    move-result-object v0

    const/16 v1, 0xd7

    invoke-static {v1}, Lch/kingdoms/ndk/NdkTextLoader;->getGameMenuTxt(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lch/kingdoms/android/ui/NetworkUi$6$1;

    invoke-direct {v2, p0}, Lch/kingdoms/android/ui/NetworkUi$6$1;-><init>(Lch/kingdoms/android/ui/NetworkUi$6;)V

    invoke-static {v0, v1, v2}, Lch/kingdoms/android/ui/NetworkUi;->access$15(Landroid/app/Activity;Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 345
    :sswitch_1
    iget-object v0, p0, Lch/kingdoms/android/ui/NetworkUi$6;->this$0:Lch/kingdoms/android/ui/NetworkUi;

    invoke-static {v0}, Lch/kingdoms/android/ui/NetworkUi;->access$4(Lch/kingdoms/android/ui/NetworkUi;)Landroid/app/Activity;

    move-result-object v0

    const/16 v1, 0xd9

    invoke-static {v1}, Lch/kingdoms/ndk/NdkTextLoader;->getGameMenuTxt(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lch/kingdoms/android/ui/NetworkUi;->access$5(Landroid/app/Activity;Ljava/lang/String;)V

    goto :goto_0

    .line 348
    :sswitch_2
    iget-object v0, p0, Lch/kingdoms/android/ui/NetworkUi$6;->this$0:Lch/kingdoms/android/ui/NetworkUi;

    invoke-static {v0}, Lch/kingdoms/android/ui/NetworkUi;->access$4(Lch/kingdoms/android/ui/NetworkUi;)Landroid/app/Activity;

    move-result-object v0

    const/16 v1, 0xd8

    invoke-static {v1}, Lch/kingdoms/ndk/NdkTextLoader;->getGameMenuTxt(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lch/kingdoms/android/ui/NetworkUi;->access$5(Landroid/app/Activity;Ljava/lang/String;)V

    goto :goto_0

    .line 333
    nop

    :sswitch_data_0
    .sparse-switch
        0x2710 -> :sswitch_0
        0x2716 -> :sswitch_2
        0x2717 -> :sswitch_1
    .end sparse-switch
.end method
