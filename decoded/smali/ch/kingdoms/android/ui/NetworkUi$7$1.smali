.class Lch/kingdoms/android/ui/NetworkUi$7$1;
.super Ljava/lang/Object;
.source "NetworkUi.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lch/kingdoms/android/ui/NetworkUi$7;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lch/kingdoms/android/ui/NetworkUi$7;


# direct methods
.method constructor <init>(Lch/kingdoms/android/ui/NetworkUi$7;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lch/kingdoms/android/ui/NetworkUi$7$1;->this$1:Lch/kingdoms/android/ui/NetworkUi$7;

    .line 375
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 379
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 398
    :goto_0
    return-void

    .line 381
    :sswitch_0
    invoke-static {}, Lch/android/api/ui/ChViewGen;->closePopUpView()V

    .line 382
    iget-object v0, p0, Lch/kingdoms/android/ui/NetworkUi$7$1;->this$1:Lch/kingdoms/android/ui/NetworkUi$7;

    invoke-static {v0}, Lch/kingdoms/android/ui/NetworkUi$7;->access$0(Lch/kingdoms/android/ui/NetworkUi$7;)Lch/kingdoms/android/ui/NetworkUi;

    move-result-object v0

    invoke-static {v0}, Lch/kingdoms/android/ui/NetworkUi;->access$14(Lch/kingdoms/android/ui/NetworkUi;)V

    goto :goto_0

    .line 385
    :sswitch_1
    invoke-static {}, Lch/android/api/ui/ChViewGen;->closePopUpView()V

    .line 386
    iget-object v0, p0, Lch/kingdoms/android/ui/NetworkUi$7$1;->this$1:Lch/kingdoms/android/ui/NetworkUi$7;

    invoke-static {v0}, Lch/kingdoms/android/ui/NetworkUi$7;->access$0(Lch/kingdoms/android/ui/NetworkUi$7;)Lch/kingdoms/android/ui/NetworkUi;

    move-result-object v0

    invoke-static {v0}, Lch/kingdoms/android/ui/NetworkUi;->access$19(Lch/kingdoms/android/ui/NetworkUi;)V

    goto :goto_0

    .line 389
    :sswitch_2
    invoke-static {}, Lch/android/api/ui/ChViewGen;->closePopUpView()V

    .line 390
    iget-object v0, p0, Lch/kingdoms/android/ui/NetworkUi$7$1;->this$1:Lch/kingdoms/android/ui/NetworkUi$7;

    invoke-static {v0}, Lch/kingdoms/android/ui/NetworkUi$7;->access$0(Lch/kingdoms/android/ui/NetworkUi$7;)Lch/kingdoms/android/ui/NetworkUi;

    move-result-object v0

    invoke-static {v0}, Lch/kingdoms/android/ui/NetworkUi;->access$9(Lch/kingdoms/android/ui/NetworkUi;)V

    goto :goto_0

    .line 393
    :sswitch_3
    invoke-static {}, Lch/android/api/ui/ChViewGen;->closePopUpView()V

    .line 394
    iget-object v0, p0, Lch/kingdoms/android/ui/NetworkUi$7$1;->this$1:Lch/kingdoms/android/ui/NetworkUi$7;

    invoke-static {v0}, Lch/kingdoms/android/ui/NetworkUi$7;->access$0(Lch/kingdoms/android/ui/NetworkUi$7;)Lch/kingdoms/android/ui/NetworkUi;

    move-result-object v0

    invoke-static {v0}, Lch/kingdoms/android/ui/NetworkUi;->access$3(Lch/kingdoms/android/ui/NetworkUi;)Lch/android/api/network/ChNetwork;

    move-result-object v0

    invoke-virtual {v0}, Lch/android/api/network/ChNetwork;->disconnect()V

    .line 395
    iget-object v0, p0, Lch/kingdoms/android/ui/NetworkUi$7$1;->this$1:Lch/kingdoms/android/ui/NetworkUi$7;

    invoke-static {v0}, Lch/kingdoms/android/ui/NetworkUi$7;->access$0(Lch/kingdoms/android/ui/NetworkUi$7;)Lch/kingdoms/android/ui/NetworkUi;

    move-result-object v0

    invoke-static {v0}, Lch/kingdoms/android/ui/NetworkUi;->access$13(Lch/kingdoms/android/ui/NetworkUi;)Lch/kingdoms/android/ui/IGameMenu;

    move-result-object v0

    invoke-interface {v0}, Lch/kingdoms/android/ui/IGameMenu;->showViewInCenter()V

    goto :goto_0

    .line 379
    nop

    :sswitch_data_0
    .sparse-switch
        0x64 -> :sswitch_0
        0x65 -> :sswitch_1
        0x66 -> :sswitch_2
        0x2744 -> :sswitch_3
    .end sparse-switch
.end method
