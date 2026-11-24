.class Lch/kingdoms/android/ui/NetworkUi$21;
.super Ljava/lang/Object;
.source "NetworkUi.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lch/kingdoms/android/ui/NetworkUi;->popUpMainTypeMenu()V
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
    iput-object p1, p0, Lch/kingdoms/android/ui/NetworkUi$21;->this$0:Lch/kingdoms/android/ui/NetworkUi;

    .line 1775
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 1779
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 1785
    :goto_0
    return-void

    .line 1781
    :pswitch_0
    invoke-static {}, Lch/android/api/ui/ChViewGen;->closePopUpView()V

    .line 1782
    iget-object v0, p0, Lch/kingdoms/android/ui/NetworkUi$21;->this$0:Lch/kingdoms/android/ui/NetworkUi;

    invoke-static {v0}, Lch/kingdoms/android/ui/NetworkUi;->access$14(Lch/kingdoms/android/ui/NetworkUi;)V

    goto :goto_0

    .line 1779
    nop

    :pswitch_data_0
    .packed-switch 0x2744
        :pswitch_0
    .end packed-switch
.end method
