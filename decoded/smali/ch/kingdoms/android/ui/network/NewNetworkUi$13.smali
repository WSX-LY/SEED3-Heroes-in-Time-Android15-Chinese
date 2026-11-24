.class Lch/kingdoms/android/ui/network/NewNetworkUi$13;
.super Ljava/lang/Object;
.source "NewNetworkUi.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lch/kingdoms/android/ui/network/NewNetworkUi;->popUpColosseumMenu()V
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
    iput-object p1, p0, Lch/kingdoms/android/ui/network/NewNetworkUi$13;->this$0:Lch/kingdoms/android/ui/network/NewNetworkUi;

    .line 915
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 919
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 925
    :goto_0
    return-void

    .line 921
    :pswitch_0
    invoke-static {}, Lch/android/api/ui/ChViewGen;->closePopUpView()V

    .line 922
    iget-object v0, p0, Lch/kingdoms/android/ui/network/NewNetworkUi$13;->this$0:Lch/kingdoms/android/ui/network/NewNetworkUi;

    invoke-static {v0}, Lch/kingdoms/android/ui/network/NewNetworkUi;->access$10(Lch/kingdoms/android/ui/network/NewNetworkUi;)V

    goto :goto_0

    .line 919
    nop

    :pswitch_data_0
    .packed-switch 0x2744
        :pswitch_0
    .end packed-switch
.end method
