.class Lch/kingdoms/android/ui/MainStateUi$18;
.super Ljava/lang/Object;
.source "MainStateUi.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lch/kingdoms/android/ui/MainStateUi;->ShowBlackSmithUi(Landroid/app/Activity;Lch/android/api/util/DisplayInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$_activity:Landroid/app/Activity;

.field private final synthetic val$_di:Lch/android/api/util/DisplayInfo;

.field private final synthetic val$res:Landroid/content/res/Resources;


# direct methods
.method constructor <init>(Landroid/app/Activity;Lch/android/api/util/DisplayInfo;Landroid/content/res/Resources;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lch/kingdoms/android/ui/MainStateUi$18;->val$_activity:Landroid/app/Activity;

    iput-object p2, p0, Lch/kingdoms/android/ui/MainStateUi$18;->val$_di:Lch/android/api/util/DisplayInfo;

    iput-object p3, p0, Lch/kingdoms/android/ui/MainStateUi$18;->val$res:Landroid/content/res/Resources;

    .line 501
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 12
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v11, 0x3

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    const/4 v2, -0x1

    .line 505
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 543
    :goto_0
    return-void

    .line 507
    :pswitch_0
    invoke-static {v8}, Lch/kingdoms/ndk/NdkUiEventManager;->callNativeIsBlackSmithAvailable(I)I

    move-result v6

    .line 508
    .local v6, "result":I
    if-nez v6, :cond_0

    .line 509
    iget-object v0, p0, Lch/kingdoms/android/ui/MainStateUi$18;->val$_activity:Landroid/app/Activity;

    new-instance v1, Lch/kingdoms/android/ui/BlackSmithUi;

    iget-object v3, p0, Lch/kingdoms/android/ui/MainStateUi$18;->val$_activity:Landroid/app/Activity;

    iget-object v4, p0, Lch/kingdoms/android/ui/MainStateUi$18;->val$_di:Lch/android/api/util/DisplayInfo;

    iget-object v5, p0, Lch/kingdoms/android/ui/MainStateUi$18;->val$res:Landroid/content/res/Resources;

    const v7, 0x7f050049

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v3, v4, v8, v5}, Lch/kingdoms/android/ui/BlackSmithUi;-><init>(Landroid/app/Activity;Lch/android/api/util/DisplayInfo;ILjava/lang/String;)V

    invoke-virtual {v1}, Lch/kingdoms/android/ui/BlackSmithUi;->getView()Landroid/view/View;

    move-result-object v1

    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v3, v2, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v3}, Landroid/app/Activity;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 510
    invoke-static {}, Lch/android/api/ui/ChViewGen;->closePopUpView()V

    goto :goto_0

    .line 512
    :cond_0
    iget-object v0, p0, Lch/kingdoms/android/ui/MainStateUi$18;->val$_activity:Landroid/app/Activity;

    iget-object v1, p0, Lch/kingdoms/android/ui/MainStateUi$18;->val$_di:Lch/android/api/util/DisplayInfo;

    const/16 v3, 0x71

    invoke-static {v3}, Lch/kingdoms/ndk/NdkTextLoader;->getGameMenuTxt(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, ""

    move v3, v2

    invoke-static/range {v0 .. v5}, Lch/android/api/ui/ChViewGen;->popUpAlarmViewWithoutOK(Landroid/app/Activity;Lch/android/api/util/DisplayInfo;IILjava/lang/String;Ljava/lang/String;)Landroid/view/View;

    goto :goto_0

    .line 516
    .end local v6    # "result":I
    :pswitch_1
    invoke-static {v9}, Lch/kingdoms/ndk/NdkUiEventManager;->callNativeIsBlackSmithAvailable(I)I

    move-result v6

    .line 517
    .restart local v6    # "result":I
    if-nez v6, :cond_1

    .line 518
    iget-object v0, p0, Lch/kingdoms/android/ui/MainStateUi$18;->val$_activity:Landroid/app/Activity;

    new-instance v1, Lch/kingdoms/android/ui/BlackSmithUi;

    iget-object v3, p0, Lch/kingdoms/android/ui/MainStateUi$18;->val$_activity:Landroid/app/Activity;

    iget-object v4, p0, Lch/kingdoms/android/ui/MainStateUi$18;->val$_di:Lch/android/api/util/DisplayInfo;

    iget-object v5, p0, Lch/kingdoms/android/ui/MainStateUi$18;->val$res:Landroid/content/res/Resources;

    const v7, 0x7f05004a

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v3, v4, v9, v5}, Lch/kingdoms/android/ui/BlackSmithUi;-><init>(Landroid/app/Activity;Lch/android/api/util/DisplayInfo;ILjava/lang/String;)V

    invoke-virtual {v1}, Lch/kingdoms/android/ui/BlackSmithUi;->getView()Landroid/view/View;

    move-result-object v1

    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v3, v2, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v3}, Landroid/app/Activity;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 519
    invoke-static {}, Lch/android/api/ui/ChViewGen;->closePopUpView()V

    goto :goto_0

    .line 521
    :cond_1
    iget-object v0, p0, Lch/kingdoms/android/ui/MainStateUi$18;->val$_activity:Landroid/app/Activity;

    iget-object v1, p0, Lch/kingdoms/android/ui/MainStateUi$18;->val$_di:Lch/android/api/util/DisplayInfo;

    const/16 v3, 0x78

    invoke-static {v3}, Lch/kingdoms/ndk/NdkTextLoader;->getGameMenuTxt(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, ""

    move v3, v2

    invoke-static/range {v0 .. v5}, Lch/android/api/ui/ChViewGen;->popUpAlarmViewWithoutOK(Landroid/app/Activity;Lch/android/api/util/DisplayInfo;IILjava/lang/String;Ljava/lang/String;)Landroid/view/View;

    goto :goto_0

    .line 525
    .end local v6    # "result":I
    :pswitch_2
    invoke-static {v10}, Lch/kingdoms/ndk/NdkUiEventManager;->callNativeIsBlackSmithAvailable(I)I

    move-result v6

    .line 526
    .restart local v6    # "result":I
    if-nez v6, :cond_2

    .line 527
    iget-object v0, p0, Lch/kingdoms/android/ui/MainStateUi$18;->val$_activity:Landroid/app/Activity;

    new-instance v1, Lch/kingdoms/android/ui/BlackSmithUi;

    iget-object v3, p0, Lch/kingdoms/android/ui/MainStateUi$18;->val$_activity:Landroid/app/Activity;

    iget-object v4, p0, Lch/kingdoms/android/ui/MainStateUi$18;->val$_di:Lch/android/api/util/DisplayInfo;

    iget-object v5, p0, Lch/kingdoms/android/ui/MainStateUi$18;->val$res:Landroid/content/res/Resources;

    const v7, 0x7f05004b

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v3, v4, v10, v5}, Lch/kingdoms/android/ui/BlackSmithUi;-><init>(Landroid/app/Activity;Lch/android/api/util/DisplayInfo;ILjava/lang/String;)V

    invoke-virtual {v1}, Lch/kingdoms/android/ui/BlackSmithUi;->getView()Landroid/view/View;

    move-result-object v1

    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v3, v2, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v3}, Landroid/app/Activity;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 528
    invoke-static {}, Lch/android/api/ui/ChViewGen;->closePopUpView()V

    goto/16 :goto_0

    .line 530
    :cond_2
    iget-object v0, p0, Lch/kingdoms/android/ui/MainStateUi$18;->val$_activity:Landroid/app/Activity;

    iget-object v1, p0, Lch/kingdoms/android/ui/MainStateUi$18;->val$_di:Lch/android/api/util/DisplayInfo;

    const/16 v3, 0x7a

    invoke-static {v3}, Lch/kingdoms/ndk/NdkTextLoader;->getGameMenuTxt(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, ""

    move v3, v2

    invoke-static/range {v0 .. v5}, Lch/android/api/ui/ChViewGen;->popUpAlarmViewWithoutOK(Landroid/app/Activity;Lch/android/api/util/DisplayInfo;IILjava/lang/String;Ljava/lang/String;)Landroid/view/View;

    goto/16 :goto_0

    .line 534
    .end local v6    # "result":I
    :pswitch_3
    invoke-static {v11}, Lch/kingdoms/ndk/NdkUiEventManager;->callNativeIsBlackSmithAvailable(I)I

    move-result v6

    .line 535
    .restart local v6    # "result":I
    if-nez v6, :cond_3

    .line 536
    iget-object v0, p0, Lch/kingdoms/android/ui/MainStateUi$18;->val$_activity:Landroid/app/Activity;

    new-instance v1, Lch/kingdoms/android/ui/BlackSmithUi;

    iget-object v3, p0, Lch/kingdoms/android/ui/MainStateUi$18;->val$_activity:Landroid/app/Activity;

    iget-object v4, p0, Lch/kingdoms/android/ui/MainStateUi$18;->val$_di:Lch/android/api/util/DisplayInfo;

    iget-object v5, p0, Lch/kingdoms/android/ui/MainStateUi$18;->val$res:Landroid/content/res/Resources;

    const v7, 0x7f05004c

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v3, v4, v11, v5}, Lch/kingdoms/android/ui/BlackSmithUi;-><init>(Landroid/app/Activity;Lch/android/api/util/DisplayInfo;ILjava/lang/String;)V

    invoke-virtual {v1}, Lch/kingdoms/android/ui/BlackSmithUi;->getView()Landroid/view/View;

    move-result-object v1

    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v3, v2, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v3}, Landroid/app/Activity;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 537
    invoke-static {}, Lch/android/api/ui/ChViewGen;->closePopUpView()V

    goto/16 :goto_0

    .line 539
    :cond_3
    iget-object v0, p0, Lch/kingdoms/android/ui/MainStateUi$18;->val$_activity:Landroid/app/Activity;

    iget-object v1, p0, Lch/kingdoms/android/ui/MainStateUi$18;->val$_di:Lch/android/api/util/DisplayInfo;

    const/16 v3, 0x74

    invoke-static {v3}, Lch/kingdoms/ndk/NdkTextLoader;->getGameMenuTxt(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, ""

    move v3, v2

    invoke-static/range {v0 .. v5}, Lch/android/api/ui/ChViewGen;->popUpAlarmViewWithoutOK(Landroid/app/Activity;Lch/android/api/util/DisplayInfo;IILjava/lang/String;Ljava/lang/String;)Landroid/view/View;

    goto/16 :goto_0

    .line 505
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
