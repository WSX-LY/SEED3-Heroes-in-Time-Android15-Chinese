.class Lch/kingdoms/android/ui/NetworkUi$4$1;
.super Ljava/lang/Object;
.source "NetworkUi.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lch/kingdoms/android/ui/NetworkUi$4;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lch/kingdoms/android/ui/NetworkUi$4;

.field private final synthetic val$editTxtPopUp:Lch/android/api/ui/ChPopUpEditTextView;

.field private final synthetic val$layerLvel:I


# direct methods
.method constructor <init>(Lch/kingdoms/android/ui/NetworkUi$4;ILch/android/api/ui/ChPopUpEditTextView;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lch/kingdoms/android/ui/NetworkUi$4$1;->this$1:Lch/kingdoms/android/ui/NetworkUi$4;

    iput p2, p0, Lch/kingdoms/android/ui/NetworkUi$4$1;->val$layerLvel:I

    iput-object p3, p0, Lch/kingdoms/android/ui/NetworkUi$4$1;->val$editTxtPopUp:Lch/android/api/ui/ChPopUpEditTextView;

    .line 294
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 298
    iget v0, p0, Lch/kingdoms/android/ui/NetworkUi$4$1;->val$layerLvel:I

    invoke-static {}, Lch/android/api/ui/ChViewGen;->getEventLayerLevel()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 299
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 310
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 301
    :pswitch_1
    iget-object v0, p0, Lch/kingdoms/android/ui/NetworkUi$4$1;->this$1:Lch/kingdoms/android/ui/NetworkUi$4;

    invoke-static {v0}, Lch/kingdoms/android/ui/NetworkUi$4;->access$0(Lch/kingdoms/android/ui/NetworkUi$4;)Lch/kingdoms/android/ui/NetworkUi;

    move-result-object v0

    iget-object v1, p0, Lch/kingdoms/android/ui/NetworkUi$4$1;->val$editTxtPopUp:Lch/android/api/ui/ChPopUpEditTextView;

    invoke-static {v0, v1}, Lch/kingdoms/android/ui/NetworkUi;->access$18(Lch/kingdoms/android/ui/NetworkUi;Lch/android/api/ui/ChPopUpEditTextView;)V

    goto :goto_0

    .line 304
    :pswitch_2
    invoke-static {}, Lch/android/api/ui/ChViewGen;->closePopUpView()V

    .line 305
    iget-object v0, p0, Lch/kingdoms/android/ui/NetworkUi$4$1;->this$1:Lch/kingdoms/android/ui/NetworkUi$4;

    invoke-static {v0}, Lch/kingdoms/android/ui/NetworkUi$4;->access$0(Lch/kingdoms/android/ui/NetworkUi$4;)Lch/kingdoms/android/ui/NetworkUi;

    move-result-object v0

    invoke-static {v0}, Lch/kingdoms/android/ui/NetworkUi;->access$3(Lch/kingdoms/android/ui/NetworkUi;)Lch/android/api/network/ChNetwork;

    move-result-object v0

    invoke-virtual {v0}, Lch/android/api/network/ChNetwork;->disconnect()V

    .line 306
    iget-object v0, p0, Lch/kingdoms/android/ui/NetworkUi$4$1;->this$1:Lch/kingdoms/android/ui/NetworkUi$4;

    invoke-static {v0}, Lch/kingdoms/android/ui/NetworkUi$4;->access$0(Lch/kingdoms/android/ui/NetworkUi$4;)Lch/kingdoms/android/ui/NetworkUi;

    move-result-object v0

    invoke-static {v0}, Lch/kingdoms/android/ui/NetworkUi;->access$13(Lch/kingdoms/android/ui/NetworkUi;)Lch/kingdoms/android/ui/IGameMenu;

    move-result-object v0

    invoke-interface {v0}, Lch/kingdoms/android/ui/IGameMenu;->showViewInCenter()V

    goto :goto_0

    .line 299
    :pswitch_data_0
    .packed-switch 0x2742
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
