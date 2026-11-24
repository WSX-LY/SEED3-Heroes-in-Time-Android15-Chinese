.class Lch/kingdoms/android/ui/NewInvenUi$InvenAndInfoView$6$1;
.super Ljava/lang/Object;
.source "NewInvenUi.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lch/kingdoms/android/ui/NewInvenUi$InvenAndInfoView$6;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lch/kingdoms/android/ui/NewInvenUi$InvenAndInfoView$6;

.field private final synthetic val$isExistUnidentifiedItem:Z


# direct methods
.method constructor <init>(Lch/kingdoms/android/ui/NewInvenUi$InvenAndInfoView$6;Z)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lch/kingdoms/android/ui/NewInvenUi$InvenAndInfoView$6$1;->this$2:Lch/kingdoms/android/ui/NewInvenUi$InvenAndInfoView$6;

    iput-boolean p2, p0, Lch/kingdoms/android/ui/NewInvenUi$InvenAndInfoView$6$1;->val$isExistUnidentifiedItem:Z

    .line 681
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 685
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 694
    :cond_0
    :goto_0
    return-void

    .line 687
    :pswitch_0
    invoke-static {}, Lch/android/api/ui/ChViewGen;->closePopUpView()V

    .line 688
    iget-boolean v0, p0, Lch/kingdoms/android/ui/NewInvenUi$InvenAndInfoView$6$1;->val$isExistUnidentifiedItem:Z

    if-nez v0, :cond_0

    .line 689
    iget-object v0, p0, Lch/kingdoms/android/ui/NewInvenUi$InvenAndInfoView$6$1;->this$2:Lch/kingdoms/android/ui/NewInvenUi$InvenAndInfoView$6;

    invoke-static {v0}, Lch/kingdoms/android/ui/NewInvenUi$InvenAndInfoView$6;->access$0(Lch/kingdoms/android/ui/NewInvenUi$InvenAndInfoView$6;)Lch/kingdoms/android/ui/NewInvenUi$InvenAndInfoView;

    move-result-object v0

    invoke-static {v0}, Lch/kingdoms/android/ui/NewInvenUi$InvenAndInfoView;->access$5(Lch/kingdoms/android/ui/NewInvenUi$InvenAndInfoView;)Lch/kingdoms/android/ui/NewInvenUi;

    move-result-object v0

    invoke-static {v0}, Lch/kingdoms/android/ui/NewInvenUi;->access$0(Lch/kingdoms/android/ui/NewInvenUi;)Landroid/app/Activity;

    move-result-object v0

    const/16 v1, 0x39

    invoke-static {v1}, Lch/kingdoms/ndk/NdkTextLoader;->getGameMenuTxt(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lch/android/api/ui/ChViewGen;->popUpOkView(Landroid/app/Activity;Ljava/lang/String;)Landroid/view/View;

    .line 690
    iget-object v0, p0, Lch/kingdoms/android/ui/NewInvenUi$InvenAndInfoView$6$1;->this$2:Lch/kingdoms/android/ui/NewInvenUi$InvenAndInfoView$6;

    invoke-static {v0}, Lch/kingdoms/android/ui/NewInvenUi$InvenAndInfoView$6;->access$0(Lch/kingdoms/android/ui/NewInvenUi$InvenAndInfoView$6;)Lch/kingdoms/android/ui/NewInvenUi$InvenAndInfoView;

    move-result-object v0

    invoke-static {v0}, Lch/kingdoms/android/ui/NewInvenUi$InvenAndInfoView;->access$4(Lch/kingdoms/android/ui/NewInvenUi$InvenAndInfoView;)Lch/android/api/ui/ChLinearLayout;

    move-result-object v0

    invoke-virtual {v0}, Lch/android/api/ui/ChLinearLayout;->removeAllViews()V

    goto :goto_0

    .line 685
    :pswitch_data_0
    .packed-switch 0x2750
        :pswitch_0
    .end packed-switch
.end method
