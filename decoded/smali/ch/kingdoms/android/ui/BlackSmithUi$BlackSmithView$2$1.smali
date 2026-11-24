.class Lch/kingdoms/android/ui/BlackSmithUi$BlackSmithView$2$1;
.super Ljava/lang/Object;
.source "BlackSmithUi.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lch/kingdoms/android/ui/BlackSmithUi$BlackSmithView$2;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private isClicked:Z

.field final synthetic this$2:Lch/kingdoms/android/ui/BlackSmithUi$BlackSmithView$2;

.field private final synthetic val$loadTxt:Ljava/lang/String;

.field private final synthetic val$resultType:I


# direct methods
.method constructor <init>(Lch/kingdoms/android/ui/BlackSmithUi$BlackSmithView$2;ILjava/lang/String;)V
    .locals 1

    .prologue
    .line 1
    iput-object p1, p0, Lch/kingdoms/android/ui/BlackSmithUi$BlackSmithView$2$1;->this$2:Lch/kingdoms/android/ui/BlackSmithUi$BlackSmithView$2;

    iput p2, p0, Lch/kingdoms/android/ui/BlackSmithUi$BlackSmithView$2$1;->val$resultType:I

    iput-object p3, p0, Lch/kingdoms/android/ui/BlackSmithUi$BlackSmithView$2$1;->val$loadTxt:Ljava/lang/String;

    .line 323
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 324
    const/4 v0, 0x0

    iput-boolean v0, p0, Lch/kingdoms/android/ui/BlackSmithUi$BlackSmithView$2$1;->isClicked:Z

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x0

    .line 328
    iget-boolean v1, p0, Lch/kingdoms/android/ui/BlackSmithUi$BlackSmithView$2$1;->isClicked:Z

    if-nez v1, :cond_0

    .line 329
    const/4 v1, 0x1

    iput-boolean v1, p0, Lch/kingdoms/android/ui/BlackSmithUi$BlackSmithView$2$1;->isClicked:Z

    .line 330
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 366
    :cond_0
    :goto_0
    return-void

    .line 332
    :pswitch_0
    invoke-static {}, Lch/android/api/ui/ChViewGen;->closePopUpView()V

    .line 333
    iget-object v1, p0, Lch/kingdoms/android/ui/BlackSmithUi$BlackSmithView$2$1;->this$2:Lch/kingdoms/android/ui/BlackSmithUi$BlackSmithView$2;

    invoke-static {v1, v2}, Lch/kingdoms/android/ui/BlackSmithUi$BlackSmithView$2;->access$0(Lch/kingdoms/android/ui/BlackSmithUi$BlackSmithView$2;Z)V

    .line 334
    iget-object v1, p0, Lch/kingdoms/android/ui/BlackSmithUi$BlackSmithView$2$1;->this$2:Lch/kingdoms/android/ui/BlackSmithUi$BlackSmithView$2;

    invoke-static {v1}, Lch/kingdoms/android/ui/BlackSmithUi$BlackSmithView$2;->access$1(Lch/kingdoms/android/ui/BlackSmithUi$BlackSmithView$2;)Lch/kingdoms/android/ui/BlackSmithUi$BlackSmithView;

    move-result-object v1

    invoke-static {v1, v2}, Lch/kingdoms/android/ui/BlackSmithUi$BlackSmithView;->access$1(Lch/kingdoms/android/ui/BlackSmithUi$BlackSmithView;Z)V

    .line 335
    iget v1, p0, Lch/kingdoms/android/ui/BlackSmithUi$BlackSmithView$2$1;->val$resultType:I

    iget-object v2, p0, Lch/kingdoms/android/ui/BlackSmithUi$BlackSmithView$2$1;->this$2:Lch/kingdoms/android/ui/BlackSmithUi$BlackSmithView$2;

    invoke-static {v2}, Lch/kingdoms/android/ui/BlackSmithUi$BlackSmithView$2;->access$1(Lch/kingdoms/android/ui/BlackSmithUi$BlackSmithView$2;)Lch/kingdoms/android/ui/BlackSmithUi$BlackSmithView;

    move-result-object v2

    invoke-static {v2}, Lch/kingdoms/android/ui/BlackSmithUi$BlackSmithView;->access$12(Lch/kingdoms/android/ui/BlackSmithUi$BlackSmithView;)Lch/kingdoms/android/ui/BlackSmithUi;

    move-result-object v2

    invoke-static {v2}, Lch/kingdoms/android/ui/BlackSmithUi;->access$4(Lch/kingdoms/android/ui/BlackSmithUi;)I

    move-result v2

    iget-object v3, p0, Lch/kingdoms/android/ui/BlackSmithUi$BlackSmithView$2$1;->this$2:Lch/kingdoms/android/ui/BlackSmithUi$BlackSmithView$2;

    invoke-static {v3}, Lch/kingdoms/android/ui/BlackSmithUi$BlackSmithView$2;->access$1(Lch/kingdoms/android/ui/BlackSmithUi$BlackSmithView$2;)Lch/kingdoms/android/ui/BlackSmithUi$BlackSmithView;

    move-result-object v3

    invoke-static {v3}, Lch/kingdoms/android/ui/BlackSmithUi$BlackSmithView;->access$12(Lch/kingdoms/android/ui/BlackSmithUi$BlackSmithView;)Lch/kingdoms/android/ui/BlackSmithUi;

    move-result-object v3

    invoke-static {v3}, Lch/kingdoms/android/ui/BlackSmithUi;->access$5(Lch/kingdoms/android/ui/BlackSmithUi;)I

    move-result v3

    invoke-static {v1, v2, v3}, Lch/kingdoms/ndk/NdkUiEventManager;->callNativeGetBlackSmithResult(III)I

    move-result v0

    .line 336
    .local v0, "result":I
    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 337
    iget-object v1, p0, Lch/kingdoms/android/ui/BlackSmithUi$BlackSmithView$2$1;->this$2:Lch/kingdoms/android/ui/BlackSmithUi$BlackSmithView$2;

    invoke-static {v1}, Lch/kingdoms/android/ui/BlackSmithUi$BlackSmithView$2;->access$1(Lch/kingdoms/android/ui/BlackSmithUi$BlackSmithView$2;)Lch/kingdoms/android/ui/BlackSmithUi$BlackSmithView;

    move-result-object v1

    invoke-static {v1}, Lch/kingdoms/android/ui/BlackSmithUi$BlackSmithView;->access$12(Lch/kingdoms/android/ui/BlackSmithUi$BlackSmithView;)Lch/kingdoms/android/ui/BlackSmithUi;

    move-result-object v1

    invoke-static {v1}, Lch/kingdoms/android/ui/BlackSmithUi;->access$3(Lch/kingdoms/android/ui/BlackSmithUi;)Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f050048

    new-instance v3, Lch/kingdoms/android/ui/BlackSmithUi$BlackSmithView$2$1$1;

    invoke-direct {v3, p0}, Lch/kingdoms/android/ui/BlackSmithUi$BlackSmithView$2$1$1;-><init>(Lch/kingdoms/android/ui/BlackSmithUi$BlackSmithView$2$1;)V

    invoke-static {v1, v2, v3}, Lch/android/api/ui/ChViewGen;->popUpOkView(Landroid/app/Activity;ILandroid/view/View$OnClickListener;)Landroid/view/View;

    goto :goto_0

    .line 344
    :cond_1
    const/4 v1, 0x4

    if-ne v0, v1, :cond_2

    .line 345
    iget-object v1, p0, Lch/kingdoms/android/ui/BlackSmithUi$BlackSmithView$2$1;->this$2:Lch/kingdoms/android/ui/BlackSmithUi$BlackSmithView$2;

    invoke-static {v1}, Lch/kingdoms/android/ui/BlackSmithUi$BlackSmithView$2;->access$1(Lch/kingdoms/android/ui/BlackSmithUi$BlackSmithView$2;)Lch/kingdoms/android/ui/BlackSmithUi$BlackSmithView;

    move-result-object v1

    invoke-static {v1}, Lch/kingdoms/android/ui/BlackSmithUi$BlackSmithView;->access$12(Lch/kingdoms/android/ui/BlackSmithUi$BlackSmithView;)Lch/kingdoms/android/ui/BlackSmithUi;

    move-result-object v1

    invoke-static {v1}, Lch/kingdoms/android/ui/BlackSmithUi;->access$3(Lch/kingdoms/android/ui/BlackSmithUi;)Landroid/app/Activity;

    move-result-object v1

    const/16 v2, 0x53

    invoke-static {v2}, Lch/kingdoms/ndk/NdkTextLoader;->getGameMenuTxt(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lch/kingdoms/android/ui/BlackSmithUi$BlackSmithView$2$1$2;

    invoke-direct {v3, p0}, Lch/kingdoms/android/ui/BlackSmithUi$BlackSmithView$2$1$2;-><init>(Lch/kingdoms/android/ui/BlackSmithUi$BlackSmithView$2$1;)V

    invoke-static {v1, v2, v3}, Lch/android/api/ui/ChViewGen;->popUpOkView(Landroid/app/Activity;Ljava/lang/String;Landroid/view/View$OnClickListener;)Landroid/view/View;

    goto :goto_0

    .line 353
    :cond_2
    const/4 v1, 0x5

    if-ne v0, v1, :cond_3

    .line 354
    const/4 v0, 0x2

    .line 356
    :cond_3
    iget-object v1, p0, Lch/kingdoms/android/ui/BlackSmithUi$BlackSmithView$2$1;->this$2:Lch/kingdoms/android/ui/BlackSmithUi$BlackSmithView$2;

    invoke-static {v1}, Lch/kingdoms/android/ui/BlackSmithUi$BlackSmithView$2;->access$1(Lch/kingdoms/android/ui/BlackSmithUi$BlackSmithView$2;)Lch/kingdoms/android/ui/BlackSmithUi$BlackSmithView;

    move-result-object v1

    iget-object v2, p0, Lch/kingdoms/android/ui/BlackSmithUi$BlackSmithView$2$1;->val$loadTxt:Ljava/lang/String;

    invoke-static {v1, v0, v2}, Lch/kingdoms/android/ui/BlackSmithUi$BlackSmithView;->access$2(Lch/kingdoms/android/ui/BlackSmithUi$BlackSmithView;ILjava/lang/String;)V

    goto :goto_0

    .line 360
    .end local v0    # "result":I
    :pswitch_1
    invoke-static {}, Lch/android/api/ui/ChViewGen;->closePopUpView()V

    .line 361
    iget-object v1, p0, Lch/kingdoms/android/ui/BlackSmithUi$BlackSmithView$2$1;->this$2:Lch/kingdoms/android/ui/BlackSmithUi$BlackSmithView$2;

    invoke-static {v1, v2}, Lch/kingdoms/android/ui/BlackSmithUi$BlackSmithView$2;->access$0(Lch/kingdoms/android/ui/BlackSmithUi$BlackSmithView$2;Z)V

    .line 362
    iget-object v1, p0, Lch/kingdoms/android/ui/BlackSmithUi$BlackSmithView$2$1;->this$2:Lch/kingdoms/android/ui/BlackSmithUi$BlackSmithView$2;

    invoke-static {v1}, Lch/kingdoms/android/ui/BlackSmithUi$BlackSmithView$2;->access$1(Lch/kingdoms/android/ui/BlackSmithUi$BlackSmithView$2;)Lch/kingdoms/android/ui/BlackSmithUi$BlackSmithView;

    move-result-object v1

    invoke-static {v1, v2}, Lch/kingdoms/android/ui/BlackSmithUi$BlackSmithView;->access$1(Lch/kingdoms/android/ui/BlackSmithUi$BlackSmithView;Z)V

    goto/16 :goto_0

    .line 330
    nop

    :pswitch_data_0
    .packed-switch 0x2742
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
