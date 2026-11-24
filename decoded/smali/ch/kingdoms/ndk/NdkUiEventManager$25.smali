.class Lch/kingdoms/ndk/NdkUiEventManager$25;
.super Ljava/lang/Object;
.source "NdkUiEventManager.java"

# interfaces
.implements Lch/kingdoms/android/network/ChPacketFactory$OnResultListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lch/kingdoms/ndk/NdkUiEventManager;->registerRank(Lch/android/api/network/ChNetwork;Lch/kingdoms/android/network/ChPacketFactory;Ljava/lang/String;Landroid/app/ProgressDialog;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$pd:Landroid/app/ProgressDialog;


# direct methods
.method constructor <init>(Landroid/app/ProgressDialog;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lch/kingdoms/ndk/NdkUiEventManager$25;->val$pd:Landroid/app/ProgressDialog;

    .line 718
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(Lch/android/api/network/ChResultPacket;)V
    .locals 2
    .param p1, "resultPacket"    # Lch/android/api/network/ChResultPacket;

    .prologue
    .line 723
    invoke-virtual {p1}, Lch/android/api/network/ChResultPacket;->getResult()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 743
    invoke-static {}, Lch/kingdoms/ndk/NdkUiEventManager;->access$13()V

    .line 746
    :goto_0
    invoke-static {}, Lch/kingdoms/ndk/NdkInputManager;->inputCancel()V

    .line 747
    iget-object v0, p0, Lch/kingdoms/ndk/NdkUiEventManager$25;->val$pd:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 748
    return-void

    .line 725
    :sswitch_0
    invoke-static {}, Lch/kingdoms/ndk/NdkUiEventManager;->access$12()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lch/kingdoms/ndk/NdkUiEventManager$25$1;

    invoke-direct {v1, p0}, Lch/kingdoms/ndk/NdkUiEventManager$25$1;-><init>(Lch/kingdoms/ndk/NdkUiEventManager$25;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 734
    :sswitch_1
    invoke-static {}, Lch/kingdoms/ndk/NdkUiEventManager;->access$12()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lch/kingdoms/ndk/NdkUiEventManager$25$2;

    invoke-direct {v1, p0}, Lch/kingdoms/ndk/NdkUiEventManager$25$2;-><init>(Lch/kingdoms/ndk/NdkUiEventManager$25;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 723
    nop

    :sswitch_data_0
    .sparse-switch
        0x2710 -> :sswitch_0
        0x272e -> :sswitch_1
    .end sparse-switch
.end method
