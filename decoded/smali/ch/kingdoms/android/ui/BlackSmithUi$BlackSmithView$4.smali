.class Lch/kingdoms/android/ui/BlackSmithUi$BlackSmithView$4;
.super Ljava/lang/Object;
.source "BlackSmithUi.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lch/kingdoms/android/ui/BlackSmithUi$BlackSmithView;->setResultAniView(ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lch/kingdoms/android/ui/BlackSmithUi$BlackSmithView;

.field private final synthetic val$_result:I

.field private final synthetic val$ocl:Landroid/view/View$OnClickListener;


# direct methods
.method constructor <init>(Lch/kingdoms/android/ui/BlackSmithUi$BlackSmithView;ILandroid/view/View$OnClickListener;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lch/kingdoms/android/ui/BlackSmithUi$BlackSmithView$4;->this$1:Lch/kingdoms/android/ui/BlackSmithUi$BlackSmithView;

    iput p2, p0, Lch/kingdoms/android/ui/BlackSmithUi$BlackSmithView$4;->val$_result:I

    iput-object p3, p0, Lch/kingdoms/android/ui/BlackSmithUi$BlackSmithView$4;->val$ocl:Landroid/view/View$OnClickListener;

    .line 466
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lch/kingdoms/android/ui/BlackSmithUi$BlackSmithView$4;)Lch/kingdoms/android/ui/BlackSmithUi$BlackSmithView;
    .locals 1

    .prologue
    .line 466
    iget-object v0, p0, Lch/kingdoms/android/ui/BlackSmithUi$BlackSmithView$4;->this$1:Lch/kingdoms/android/ui/BlackSmithUi$BlackSmithView;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 12

    .prologue
    const/4 v8, -0x1

    const/4 v11, 0x2

    const/4 v10, 0x1

    .line 471
    iget v6, p0, Lch/kingdoms/android/ui/BlackSmithUi$BlackSmithView$4;->val$_result:I

    if-eq v6, v11, :cond_0

    iget v6, p0, Lch/kingdoms/android/ui/BlackSmithUi$BlackSmithView$4;->val$_result:I

    if-ne v6, v10, :cond_5

    .line 472
    :cond_0
    iget v6, p0, Lch/kingdoms/android/ui/BlackSmithUi$BlackSmithView$4;->val$_result:I

    if-ne v6, v11, :cond_3

    iget-object v6, p0, Lch/kingdoms/android/ui/BlackSmithUi$BlackSmithView$4;->this$1:Lch/kingdoms/android/ui/BlackSmithUi$BlackSmithView;

    invoke-static {v6}, Lch/kingdoms/android/ui/BlackSmithUi$BlackSmithView;->access$5(Lch/kingdoms/android/ui/BlackSmithUi$BlackSmithView;)Lch/android/api/ui/ChAnimationDrawable;

    move-result-object v0

    .line 473
    .local v0, "animationDrawable":Landroid/graphics/drawable/AnimationDrawable;
    :goto_0
    iget-object v6, p0, Lch/kingdoms/android/ui/BlackSmithUi$BlackSmithView$4;->this$1:Lch/kingdoms/android/ui/BlackSmithUi$BlackSmithView;

    invoke-static {v6}, Lch/kingdoms/android/ui/BlackSmithUi$BlackSmithView;->access$7(Lch/kingdoms/android/ui/BlackSmithUi$BlackSmithView;)Lch/android/api/ui/ChTextView;

    move-result-object v7

    iget v6, p0, Lch/kingdoms/android/ui/BlackSmithUi$BlackSmithView$4;->val$_result:I

    if-ne v6, v11, :cond_4

    const/16 v6, 0x8d

    invoke-static {v6}, Lch/kingdoms/ndk/NdkTextLoader;->getGameMenuTxt(I)Ljava/lang/String;

    move-result-object v6

    :goto_1
    invoke-virtual {v7, v6}, Lch/android/api/ui/ChTextView;->setText(Ljava/lang/CharSequence;)V

    .line 480
    :goto_2
    iget-object v6, p0, Lch/kingdoms/android/ui/BlackSmithUi$BlackSmithView$4;->this$1:Lch/kingdoms/android/ui/BlackSmithUi$BlackSmithView;

    invoke-static {v6}, Lch/kingdoms/android/ui/BlackSmithUi$BlackSmithView;->access$12(Lch/kingdoms/android/ui/BlackSmithUi$BlackSmithView;)Lch/kingdoms/android/ui/BlackSmithUi;

    move-result-object v6

    invoke-static {v6}, Lch/kingdoms/android/ui/BlackSmithUi;->access$0(Lch/kingdoms/android/ui/BlackSmithUi;)I

    move-result v6

    packed-switch v6, :pswitch_data_0

    .line 544
    :cond_1
    :goto_3
    invoke-static {}, Lch/kingdoms/ndk/NdkUiEventManager;->playResultGameEffSound()V

    .line 546
    iget-object v6, p0, Lch/kingdoms/android/ui/BlackSmithUi$BlackSmithView$4;->this$1:Lch/kingdoms/android/ui/BlackSmithUi$BlackSmithView;

    invoke-static {v6}, Lch/kingdoms/android/ui/BlackSmithUi$BlackSmithView;->access$12(Lch/kingdoms/android/ui/BlackSmithUi$BlackSmithView;)Lch/kingdoms/android/ui/BlackSmithUi;

    move-result-object v6

    invoke-static {v6}, Lch/kingdoms/android/ui/BlackSmithUi;->access$0(Lch/kingdoms/android/ui/BlackSmithUi;)I

    move-result v6

    if-eq v6, v11, :cond_2

    .line 547
    iget-object v6, p0, Lch/kingdoms/android/ui/BlackSmithUi$BlackSmithView$4;->this$1:Lch/kingdoms/android/ui/BlackSmithUi$BlackSmithView;

    invoke-static {v6}, Lch/kingdoms/android/ui/BlackSmithUi$BlackSmithView;->access$12(Lch/kingdoms/android/ui/BlackSmithUi$BlackSmithView;)Lch/kingdoms/android/ui/BlackSmithUi;

    move-result-object v6

    const/4 v7, 0x0

    invoke-static {v6, v7}, Lch/kingdoms/android/ui/BlackSmithUi;->access$7(Lch/kingdoms/android/ui/BlackSmithUi;Lch/kingdoms/ndk/data/Inven$Item;)V

    .line 549
    :cond_2
    iget-object v6, p0, Lch/kingdoms/android/ui/BlackSmithUi$BlackSmithView$4;->this$1:Lch/kingdoms/android/ui/BlackSmithUi$BlackSmithView;

    invoke-static {v6}, Lch/kingdoms/android/ui/BlackSmithUi$BlackSmithView;->access$9(Lch/kingdoms/android/ui/BlackSmithUi$BlackSmithView;)Lch/android/api/ui/ChImageView;

    move-result-object v6

    invoke-virtual {v6, v0}, Lch/android/api/ui/ChImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 550
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    .line 551
    .local v1, "handler":Landroid/os/Handler;
    new-instance v6, Lch/kingdoms/android/ui/BlackSmithUi$BlackSmithView$4$2;

    invoke-direct {v6, p0, v0}, Lch/kingdoms/android/ui/BlackSmithUi$BlackSmithView$4$2;-><init>(Lch/kingdoms/android/ui/BlackSmithUi$BlackSmithView$4;Landroid/graphics/drawable/AnimationDrawable;)V

    invoke-virtual {v1, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 560
    iget-object v6, p0, Lch/kingdoms/android/ui/BlackSmithUi$BlackSmithView$4;->this$1:Lch/kingdoms/android/ui/BlackSmithUi$BlackSmithView;

    invoke-static {v6}, Lch/kingdoms/android/ui/BlackSmithUi$BlackSmithView;->access$10(Lch/kingdoms/android/ui/BlackSmithUi$BlackSmithView;)Lch/android/api/ui/ChImageButton;

    move-result-object v6

    iget-object v7, p0, Lch/kingdoms/android/ui/BlackSmithUi$BlackSmithView$4;->val$ocl:Landroid/view/View$OnClickListener;

    invoke-virtual {v6, v7}, Lch/android/api/ui/ChImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 561
    return-void

    .line 472
    .end local v0    # "animationDrawable":Landroid/graphics/drawable/AnimationDrawable;
    .end local v1    # "handler":Landroid/os/Handler;
    :cond_3
    iget-object v6, p0, Lch/kingdoms/android/ui/BlackSmithUi$BlackSmithView$4;->this$1:Lch/kingdoms/android/ui/BlackSmithUi$BlackSmithView;

    invoke-static {v6}, Lch/kingdoms/android/ui/BlackSmithUi$BlackSmithView;->access$6(Lch/kingdoms/android/ui/BlackSmithUi$BlackSmithView;)Lch/android/api/ui/ChAnimationDrawable;

    move-result-object v0

    goto :goto_0

    .line 473
    .restart local v0    # "animationDrawable":Landroid/graphics/drawable/AnimationDrawable;
    :cond_4
    const/16 v6, 0x8c

    invoke-static {v6}, Lch/kingdoms/ndk/NdkTextLoader;->getGameMenuTxt(I)Ljava/lang/String;

    move-result-object v6

    goto :goto_1

    .line 476
    .end local v0    # "animationDrawable":Landroid/graphics/drawable/AnimationDrawable;
    :cond_5
    iget-object v6, p0, Lch/kingdoms/android/ui/BlackSmithUi$BlackSmithView$4;->this$1:Lch/kingdoms/android/ui/BlackSmithUi$BlackSmithView;

    invoke-static {v6}, Lch/kingdoms/android/ui/BlackSmithUi$BlackSmithView;->access$6(Lch/kingdoms/android/ui/BlackSmithUi$BlackSmithView;)Lch/android/api/ui/ChAnimationDrawable;

    move-result-object v0

    .line 477
    .restart local v0    # "animationDrawable":Landroid/graphics/drawable/AnimationDrawable;
    iget-object v6, p0, Lch/kingdoms/android/ui/BlackSmithUi$BlackSmithView$4;->this$1:Lch/kingdoms/android/ui/BlackSmithUi$BlackSmithView;

    invoke-static {v6}, Lch/kingdoms/android/ui/BlackSmithUi$BlackSmithView;->access$7(Lch/kingdoms/android/ui/BlackSmithUi$BlackSmithView;)Lch/android/api/ui/ChTextView;

    move-result-object v6

    const/16 v7, 0x8b

    invoke-static {v7}, Lch/kingdoms/ndk/NdkTextLoader;->getGameMenuTxt(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lch/android/api/ui/ChTextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 484
    :pswitch_0
    iget-object v6, p0, Lch/kingdoms/android/ui/BlackSmithUi$BlackSmithView$4;->this$1:Lch/kingdoms/android/ui/BlackSmithUi$BlackSmithView;

    invoke-static {v6}, Lch/kingdoms/android/ui/BlackSmithUi$BlackSmithView;->access$12(Lch/kingdoms/android/ui/BlackSmithUi$BlackSmithView;)Lch/kingdoms/android/ui/BlackSmithUi;

    move-result-object v6

    invoke-static {v6}, Lch/kingdoms/android/ui/BlackSmithUi;->access$8(Lch/kingdoms/android/ui/BlackSmithUi;)Lch/kingdoms/ndk/data/Inven$Item;

    move-result-object v6

    iget v6, v6, Lch/kingdoms/ndk/data/Inven$Item;->num:I

    const/16 v7, 0x13b

    if-ne v6, v7, :cond_9

    .line 485
    invoke-static {}, Lch/kingdoms/ndk/NdkUiEventManager;->callNativeGetInven()Lch/kingdoms/ndk/data/Inven;

    move-result-object v6

    invoke-virtual {v6}, Lch/kingdoms/ndk/data/Inven;->getItems()[Lch/kingdoms/ndk/data/Inven$Item;

    move-result-object v5

    .line 486
    .local v5, "items":[Lch/kingdoms/ndk/data/Inven$Item;
    array-length v7, v5

    const/4 v6, 0x0

    :goto_4
    if-lt v6, v7, :cond_7

    .line 492
    :goto_5
    iget-object v6, p0, Lch/kingdoms/android/ui/BlackSmithUi$BlackSmithView$4;->this$1:Lch/kingdoms/android/ui/BlackSmithUi$BlackSmithView;

    invoke-static {v6}, Lch/kingdoms/android/ui/BlackSmithUi$BlackSmithView;->access$12(Lch/kingdoms/android/ui/BlackSmithUi$BlackSmithView;)Lch/kingdoms/android/ui/BlackSmithUi;

    move-result-object v6

    iget-object v7, p0, Lch/kingdoms/android/ui/BlackSmithUi$BlackSmithView$4;->this$1:Lch/kingdoms/android/ui/BlackSmithUi$BlackSmithView;

    invoke-static {v7}, Lch/kingdoms/android/ui/BlackSmithUi$BlackSmithView;->access$12(Lch/kingdoms/android/ui/BlackSmithUi$BlackSmithView;)Lch/kingdoms/android/ui/BlackSmithUi;

    move-result-object v7

    invoke-static {v7}, Lch/kingdoms/android/ui/BlackSmithUi;->access$8(Lch/kingdoms/android/ui/BlackSmithUi;)Lch/kingdoms/ndk/data/Inven$Item;

    move-result-object v7

    iget v7, v7, Lch/kingdoms/ndk/data/Inven$Item;->index:I

    invoke-static {v6, v7}, Lch/kingdoms/android/ui/BlackSmithUi;->access$9(Lch/kingdoms/android/ui/BlackSmithUi;I)V

    .line 515
    :goto_6
    iget v6, p0, Lch/kingdoms/android/ui/BlackSmithUi$BlackSmithView$4;->val$_result:I

    if-eq v6, v11, :cond_6

    iget v6, p0, Lch/kingdoms/android/ui/BlackSmithUi$BlackSmithView$4;->val$_result:I

    if-ne v6, v10, :cond_1

    .line 516
    :cond_6
    iget-object v6, p0, Lch/kingdoms/android/ui/BlackSmithUi$BlackSmithView$4;->this$1:Lch/kingdoms/android/ui/BlackSmithUi$BlackSmithView;

    invoke-static {v6, v10}, Lch/kingdoms/android/ui/BlackSmithUi$BlackSmithView;->access$8(Lch/kingdoms/android/ui/BlackSmithUi$BlackSmithView;Z)V

    .line 517
    iget-object v6, p0, Lch/kingdoms/android/ui/BlackSmithUi$BlackSmithView$4;->this$1:Lch/kingdoms/android/ui/BlackSmithUi$BlackSmithView;

    invoke-static {v6}, Lch/kingdoms/android/ui/BlackSmithUi$BlackSmithView;->access$12(Lch/kingdoms/android/ui/BlackSmithUi$BlackSmithView;)Lch/kingdoms/android/ui/BlackSmithUi;

    move-result-object v6

    invoke-static {v6}, Lch/kingdoms/android/ui/BlackSmithUi;->access$3(Lch/kingdoms/android/ui/BlackSmithUi;)Landroid/app/Activity;

    move-result-object v6

    iget-object v7, p0, Lch/kingdoms/android/ui/BlackSmithUi$BlackSmithView$4;->this$1:Lch/kingdoms/android/ui/BlackSmithUi$BlackSmithView;

    invoke-static {v7}, Lch/kingdoms/android/ui/BlackSmithUi$BlackSmithView;->access$12(Lch/kingdoms/android/ui/BlackSmithUi$BlackSmithView;)Lch/kingdoms/android/ui/BlackSmithUi;

    move-result-object v7

    invoke-static {v7}, Lch/kingdoms/android/ui/BlackSmithUi;->access$8(Lch/kingdoms/android/ui/BlackSmithUi;)Lch/kingdoms/ndk/data/Inven$Item;

    move-result-object v7

    iget-object v8, p0, Lch/kingdoms/android/ui/BlackSmithUi$BlackSmithView$4;->this$1:Lch/kingdoms/android/ui/BlackSmithUi$BlackSmithView;

    invoke-static {v8}, Lch/kingdoms/android/ui/BlackSmithUi$BlackSmithView;->access$12(Lch/kingdoms/android/ui/BlackSmithUi$BlackSmithView;)Lch/kingdoms/android/ui/BlackSmithUi;

    move-result-object v8

    invoke-static {v8}, Lch/kingdoms/android/ui/BlackSmithUi;->access$2(Lch/kingdoms/android/ui/BlackSmithUi;)Lch/android/api/util/DisplayInfo;

    move-result-object v8

    new-instance v9, Lch/kingdoms/android/ui/BlackSmithUi$BlackSmithView$4$1;

    invoke-direct {v9, p0}, Lch/kingdoms/android/ui/BlackSmithUi$BlackSmithView$4$1;-><init>(Lch/kingdoms/android/ui/BlackSmithUi$BlackSmithView$4;)V

    invoke-static {v6, v7, v8, v9, v10}, Lch/android/api/ui/ChViewGen;->popUpItemInfoView(Landroid/app/Activity;Lch/kingdoms/ndk/data/Inven$Item;Lch/android/api/util/DisplayInfo;Landroid/view/View$OnClickListener;Z)Landroid/view/View;

    goto/16 :goto_3

    .line 486
    :cond_7
    aget-object v4, v5, v6

    .line 487
    .local v4, "item":Lch/kingdoms/ndk/data/Inven$Item;
    iget v8, v4, Lch/kingdoms/ndk/data/Inven$Item;->num:I

    const/16 v9, 0x13c

    if-ne v8, v9, :cond_8

    .line 488
    iget-object v6, p0, Lch/kingdoms/android/ui/BlackSmithUi$BlackSmithView$4;->this$1:Lch/kingdoms/android/ui/BlackSmithUi$BlackSmithView;

    invoke-static {v6}, Lch/kingdoms/android/ui/BlackSmithUi$BlackSmithView;->access$12(Lch/kingdoms/android/ui/BlackSmithUi$BlackSmithView;)Lch/kingdoms/android/ui/BlackSmithUi;

    move-result-object v6

    invoke-static {v6, v4}, Lch/kingdoms/android/ui/BlackSmithUi;->access$7(Lch/kingdoms/android/ui/BlackSmithUi;Lch/kingdoms/ndk/data/Inven$Item;)V

    goto :goto_5

    .line 486
    :cond_8
    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    .line 494
    .end local v4    # "item":Lch/kingdoms/ndk/data/Inven$Item;
    .end local v5    # "items":[Lch/kingdoms/ndk/data/Inven$Item;
    :cond_9
    invoke-static {}, Lch/kingdoms/ndk/NdkUiEventManager;->callNativeGetInven()Lch/kingdoms/ndk/data/Inven;

    move-result-object v6

    invoke-virtual {v6}, Lch/kingdoms/ndk/data/Inven;->getItems()[Lch/kingdoms/ndk/data/Inven$Item;

    move-result-object v5

    .line 495
    .restart local v5    # "items":[Lch/kingdoms/ndk/data/Inven$Item;
    iget-object v6, p0, Lch/kingdoms/android/ui/BlackSmithUi$BlackSmithView$4;->this$1:Lch/kingdoms/android/ui/BlackSmithUi$BlackSmithView;

    invoke-static {v6}, Lch/kingdoms/android/ui/BlackSmithUi$BlackSmithView;->access$12(Lch/kingdoms/android/ui/BlackSmithUi$BlackSmithView;)Lch/kingdoms/android/ui/BlackSmithUi;

    move-result-object v6

    invoke-static {v6}, Lch/kingdoms/android/ui/BlackSmithUi;->access$0(Lch/kingdoms/android/ui/BlackSmithUi;)I

    move-result v6

    if-eqz v6, :cond_a

    iget-object v6, p0, Lch/kingdoms/android/ui/BlackSmithUi$BlackSmithView$4;->this$1:Lch/kingdoms/android/ui/BlackSmithUi$BlackSmithView;

    invoke-static {v6}, Lch/kingdoms/android/ui/BlackSmithUi$BlackSmithView;->access$12(Lch/kingdoms/android/ui/BlackSmithUi$BlackSmithView;)Lch/kingdoms/android/ui/BlackSmithUi;

    move-result-object v6

    invoke-static {v6}, Lch/kingdoms/android/ui/BlackSmithUi;->access$0(Lch/kingdoms/android/ui/BlackSmithUi;)I

    move-result v6

    if-ne v6, v10, :cond_d

    .line 496
    :cond_a
    iget-object v6, p0, Lch/kingdoms/android/ui/BlackSmithUi$BlackSmithView$4;->this$1:Lch/kingdoms/android/ui/BlackSmithUi$BlackSmithView;

    invoke-static {v6}, Lch/kingdoms/android/ui/BlackSmithUi$BlackSmithView;->access$12(Lch/kingdoms/android/ui/BlackSmithUi$BlackSmithView;)Lch/kingdoms/android/ui/BlackSmithUi;

    move-result-object v6

    invoke-static {v6}, Lch/kingdoms/android/ui/BlackSmithUi;->access$10(Lch/kingdoms/android/ui/BlackSmithUi;)Lch/kingdoms/ndk/data/Inven$Item;

    move-result-object v6

    iget v6, v6, Lch/kingdoms/ndk/data/Inven$Item;->num:I

    invoke-static {v6}, Lch/kingdoms/ndk/NdkUiEventManager;->isItemExist(I)Z

    move-result v3

    .line 497
    .local v3, "isFirstItemExist":Z
    if-nez v3, :cond_c

    iget-object v6, p0, Lch/kingdoms/android/ui/BlackSmithUi$BlackSmithView$4;->this$1:Lch/kingdoms/android/ui/BlackSmithUi$BlackSmithView;

    invoke-static {v6}, Lch/kingdoms/android/ui/BlackSmithUi$BlackSmithView;->access$12(Lch/kingdoms/android/ui/BlackSmithUi$BlackSmithView;)Lch/kingdoms/android/ui/BlackSmithUi;

    move-result-object v6

    invoke-static {v6}, Lch/kingdoms/android/ui/BlackSmithUi;->access$4(Lch/kingdoms/android/ui/BlackSmithUi;)I

    move-result v6

    iget-object v7, p0, Lch/kingdoms/android/ui/BlackSmithUi$BlackSmithView$4;->this$1:Lch/kingdoms/android/ui/BlackSmithUi$BlackSmithView;

    invoke-static {v7}, Lch/kingdoms/android/ui/BlackSmithUi$BlackSmithView;->access$12(Lch/kingdoms/android/ui/BlackSmithUi$BlackSmithView;)Lch/kingdoms/android/ui/BlackSmithUi;

    move-result-object v7

    invoke-static {v7}, Lch/kingdoms/android/ui/BlackSmithUi;->access$5(Lch/kingdoms/android/ui/BlackSmithUi;)I

    move-result v7

    if-ge v6, v7, :cond_c

    .line 498
    iget-object v6, p0, Lch/kingdoms/android/ui/BlackSmithUi$BlackSmithView$4;->this$1:Lch/kingdoms/android/ui/BlackSmithUi$BlackSmithView;

    invoke-static {v6}, Lch/kingdoms/android/ui/BlackSmithUi$BlackSmithView;->access$12(Lch/kingdoms/android/ui/BlackSmithUi$BlackSmithView;)Lch/kingdoms/android/ui/BlackSmithUi;

    move-result-object v6

    iget-object v7, p0, Lch/kingdoms/android/ui/BlackSmithUi$BlackSmithView$4;->this$1:Lch/kingdoms/android/ui/BlackSmithUi$BlackSmithView;

    invoke-static {v7}, Lch/kingdoms/android/ui/BlackSmithUi$BlackSmithView;->access$12(Lch/kingdoms/android/ui/BlackSmithUi$BlackSmithView;)Lch/kingdoms/android/ui/BlackSmithUi;

    move-result-object v7

    invoke-static {v7}, Lch/kingdoms/android/ui/BlackSmithUi;->access$5(Lch/kingdoms/android/ui/BlackSmithUi;)I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    aget-object v7, v5, v7

    invoke-static {v6, v7}, Lch/kingdoms/android/ui/BlackSmithUi;->access$7(Lch/kingdoms/android/ui/BlackSmithUi;Lch/kingdoms/ndk/data/Inven$Item;)V

    .line 512
    .end local v3    # "isFirstItemExist":Z
    :cond_b
    :goto_7
    iget-object v6, p0, Lch/kingdoms/android/ui/BlackSmithUi$BlackSmithView$4;->this$1:Lch/kingdoms/android/ui/BlackSmithUi$BlackSmithView;

    invoke-static {v6}, Lch/kingdoms/android/ui/BlackSmithUi$BlackSmithView;->access$12(Lch/kingdoms/android/ui/BlackSmithUi$BlackSmithView;)Lch/kingdoms/android/ui/BlackSmithUi;

    move-result-object v6

    iget-object v7, p0, Lch/kingdoms/android/ui/BlackSmithUi$BlackSmithView$4;->this$1:Lch/kingdoms/android/ui/BlackSmithUi$BlackSmithView;

    invoke-static {v7}, Lch/kingdoms/android/ui/BlackSmithUi$BlackSmithView;->access$12(Lch/kingdoms/android/ui/BlackSmithUi$BlackSmithView;)Lch/kingdoms/android/ui/BlackSmithUi;

    move-result-object v7

    invoke-static {v7}, Lch/kingdoms/android/ui/BlackSmithUi;->access$10(Lch/kingdoms/android/ui/BlackSmithUi;)Lch/kingdoms/ndk/data/Inven$Item;

    move-result-object v7

    iget v7, v7, Lch/kingdoms/ndk/data/Inven$Item;->index:I

    invoke-static {v6, v7}, Lch/kingdoms/android/ui/BlackSmithUi;->access$11(Lch/kingdoms/android/ui/BlackSmithUi;I)V

    .line 513
    iget-object v6, p0, Lch/kingdoms/android/ui/BlackSmithUi$BlackSmithView$4;->this$1:Lch/kingdoms/android/ui/BlackSmithUi$BlackSmithView;

    invoke-static {v6}, Lch/kingdoms/android/ui/BlackSmithUi$BlackSmithView;->access$12(Lch/kingdoms/android/ui/BlackSmithUi$BlackSmithView;)Lch/kingdoms/android/ui/BlackSmithUi;

    move-result-object v6

    iget-object v7, p0, Lch/kingdoms/android/ui/BlackSmithUi$BlackSmithView$4;->this$1:Lch/kingdoms/android/ui/BlackSmithUi$BlackSmithView;

    invoke-static {v7}, Lch/kingdoms/android/ui/BlackSmithUi$BlackSmithView;->access$12(Lch/kingdoms/android/ui/BlackSmithUi$BlackSmithView;)Lch/kingdoms/android/ui/BlackSmithUi;

    move-result-object v7

    invoke-static {v7}, Lch/kingdoms/android/ui/BlackSmithUi;->access$8(Lch/kingdoms/android/ui/BlackSmithUi;)Lch/kingdoms/ndk/data/Inven$Item;

    move-result-object v7

    iget v7, v7, Lch/kingdoms/ndk/data/Inven$Item;->index:I

    invoke-static {v6, v7}, Lch/kingdoms/android/ui/BlackSmithUi;->access$9(Lch/kingdoms/android/ui/BlackSmithUi;I)V

    goto/16 :goto_6

    .line 500
    .restart local v3    # "isFirstItemExist":Z
    :cond_c
    iget-object v6, p0, Lch/kingdoms/android/ui/BlackSmithUi$BlackSmithView$4;->this$1:Lch/kingdoms/android/ui/BlackSmithUi$BlackSmithView;

    invoke-static {v6}, Lch/kingdoms/android/ui/BlackSmithUi$BlackSmithView;->access$12(Lch/kingdoms/android/ui/BlackSmithUi$BlackSmithView;)Lch/kingdoms/android/ui/BlackSmithUi;

    move-result-object v6

    iget-object v7, p0, Lch/kingdoms/android/ui/BlackSmithUi$BlackSmithView$4;->this$1:Lch/kingdoms/android/ui/BlackSmithUi$BlackSmithView;

    invoke-static {v7}, Lch/kingdoms/android/ui/BlackSmithUi$BlackSmithView;->access$12(Lch/kingdoms/android/ui/BlackSmithUi$BlackSmithView;)Lch/kingdoms/android/ui/BlackSmithUi;

    move-result-object v7

    invoke-static {v7}, Lch/kingdoms/android/ui/BlackSmithUi;->access$5(Lch/kingdoms/android/ui/BlackSmithUi;)I

    move-result v7

    aget-object v7, v5, v7

    invoke-static {v6, v7}, Lch/kingdoms/android/ui/BlackSmithUi;->access$7(Lch/kingdoms/android/ui/BlackSmithUi;Lch/kingdoms/ndk/data/Inven$Item;)V

    goto :goto_7

    .line 505
    .end local v3    # "isFirstItemExist":Z
    :cond_d
    array-length v6, v5

    add-int/lit8 v2, v6, -0x1

    .local v2, "i":I
    :goto_8
    if-le v2, v8, :cond_b

    .line 506
    aget-object v6, v5, v2

    iget-boolean v6, v6, Lch/kingdoms/ndk/data/Inven$Item;->exist:Z

    if-eqz v6, :cond_e

    aget-object v6, v5, v2

    iget v6, v6, Lch/kingdoms/ndk/data/Inven$Item;->num:I

    iget-object v7, p0, Lch/kingdoms/android/ui/BlackSmithUi$BlackSmithView$4;->this$1:Lch/kingdoms/android/ui/BlackSmithUi$BlackSmithView;

    invoke-static {v7}, Lch/kingdoms/android/ui/BlackSmithUi$BlackSmithView;->access$12(Lch/kingdoms/android/ui/BlackSmithUi$BlackSmithView;)Lch/kingdoms/android/ui/BlackSmithUi;

    move-result-object v7

    invoke-static {v7}, Lch/kingdoms/android/ui/BlackSmithUi;->access$8(Lch/kingdoms/android/ui/BlackSmithUi;)Lch/kingdoms/ndk/data/Inven$Item;

    move-result-object v7

    iget v7, v7, Lch/kingdoms/ndk/data/Inven$Item;->num:I

    if-ne v6, v7, :cond_e

    .line 507
    iget-object v6, p0, Lch/kingdoms/android/ui/BlackSmithUi$BlackSmithView$4;->this$1:Lch/kingdoms/android/ui/BlackSmithUi$BlackSmithView;

    invoke-static {v6}, Lch/kingdoms/android/ui/BlackSmithUi$BlackSmithView;->access$12(Lch/kingdoms/android/ui/BlackSmithUi$BlackSmithView;)Lch/kingdoms/android/ui/BlackSmithUi;

    move-result-object v6

    aget-object v7, v5, v2

    invoke-static {v6, v7}, Lch/kingdoms/android/ui/BlackSmithUi;->access$7(Lch/kingdoms/android/ui/BlackSmithUi;Lch/kingdoms/ndk/data/Inven$Item;)V

    goto :goto_7

    .line 505
    :cond_e
    add-int/lit8 v2, v2, -0x1

    goto :goto_8

    .line 532
    .end local v2    # "i":I
    .end local v5    # "items":[Lch/kingdoms/ndk/data/Inven$Item;
    :pswitch_1
    invoke-static {}, Lch/kingdoms/ndk/NdkUiEventManager;->callNativeGetInven()Lch/kingdoms/ndk/data/Inven;

    move-result-object v6

    invoke-virtual {v6}, Lch/kingdoms/ndk/data/Inven;->getItems()[Lch/kingdoms/ndk/data/Inven$Item;

    move-result-object v5

    .line 533
    .restart local v5    # "items":[Lch/kingdoms/ndk/data/Inven$Item;
    iget-object v6, p0, Lch/kingdoms/android/ui/BlackSmithUi$BlackSmithView$4;->this$1:Lch/kingdoms/android/ui/BlackSmithUi$BlackSmithView;

    invoke-static {v6}, Lch/kingdoms/android/ui/BlackSmithUi$BlackSmithView;->access$12(Lch/kingdoms/android/ui/BlackSmithUi$BlackSmithView;)Lch/kingdoms/android/ui/BlackSmithUi;

    move-result-object v6

    invoke-static {v6, v8}, Lch/kingdoms/android/ui/BlackSmithUi;->access$11(Lch/kingdoms/android/ui/BlackSmithUi;I)V

    .line 534
    iget-object v6, p0, Lch/kingdoms/android/ui/BlackSmithUi$BlackSmithView$4;->this$1:Lch/kingdoms/android/ui/BlackSmithUi$BlackSmithView;

    invoke-static {v6}, Lch/kingdoms/android/ui/BlackSmithUi$BlackSmithView;->access$12(Lch/kingdoms/android/ui/BlackSmithUi$BlackSmithView;)Lch/kingdoms/android/ui/BlackSmithUi;

    move-result-object v6

    invoke-static {v6, v8}, Lch/kingdoms/android/ui/BlackSmithUi;->access$9(Lch/kingdoms/android/ui/BlackSmithUi;I)V

    .line 535
    array-length v6, v5

    add-int/lit8 v2, v6, -0x1

    .restart local v2    # "i":I
    :goto_9
    if-le v2, v8, :cond_1

    .line 536
    aget-object v6, v5, v2

    iget-boolean v6, v6, Lch/kingdoms/ndk/data/Inven$Item;->exist:Z

    if-eqz v6, :cond_f

    aget-object v6, v5, v2

    iget v6, v6, Lch/kingdoms/ndk/data/Inven$Item;->num:I

    iget-object v7, p0, Lch/kingdoms/android/ui/BlackSmithUi$BlackSmithView$4;->this$1:Lch/kingdoms/android/ui/BlackSmithUi$BlackSmithView;

    invoke-static {v7}, Lch/kingdoms/android/ui/BlackSmithUi$BlackSmithView;->access$12(Lch/kingdoms/android/ui/BlackSmithUi$BlackSmithView;)Lch/kingdoms/android/ui/BlackSmithUi;

    move-result-object v7

    invoke-static {v7}, Lch/kingdoms/android/ui/BlackSmithUi;->access$10(Lch/kingdoms/android/ui/BlackSmithUi;)Lch/kingdoms/ndk/data/Inven$Item;

    move-result-object v7

    iget v7, v7, Lch/kingdoms/ndk/data/Inven$Item;->num:I

    if-ne v6, v7, :cond_f

    .line 537
    iget-object v6, p0, Lch/kingdoms/android/ui/BlackSmithUi$BlackSmithView$4;->this$1:Lch/kingdoms/android/ui/BlackSmithUi$BlackSmithView;

    invoke-static {v6}, Lch/kingdoms/android/ui/BlackSmithUi$BlackSmithView;->access$12(Lch/kingdoms/android/ui/BlackSmithUi$BlackSmithView;)Lch/kingdoms/android/ui/BlackSmithUi;

    move-result-object v6

    aget-object v7, v5, v2

    invoke-static {v6, v7}, Lch/kingdoms/android/ui/BlackSmithUi;->access$6(Lch/kingdoms/android/ui/BlackSmithUi;Lch/kingdoms/ndk/data/Inven$Item;)V

    .line 538
    iget-object v6, p0, Lch/kingdoms/android/ui/BlackSmithUi$BlackSmithView$4;->this$1:Lch/kingdoms/android/ui/BlackSmithUi$BlackSmithView;

    invoke-static {v6}, Lch/kingdoms/android/ui/BlackSmithUi$BlackSmithView;->access$12(Lch/kingdoms/android/ui/BlackSmithUi$BlackSmithView;)Lch/kingdoms/android/ui/BlackSmithUi;

    move-result-object v6

    iget-object v7, p0, Lch/kingdoms/android/ui/BlackSmithUi$BlackSmithView$4;->this$1:Lch/kingdoms/android/ui/BlackSmithUi$BlackSmithView;

    invoke-static {v7}, Lch/kingdoms/android/ui/BlackSmithUi$BlackSmithView;->access$12(Lch/kingdoms/android/ui/BlackSmithUi$BlackSmithView;)Lch/kingdoms/android/ui/BlackSmithUi;

    move-result-object v7

    invoke-static {v7}, Lch/kingdoms/android/ui/BlackSmithUi;->access$10(Lch/kingdoms/android/ui/BlackSmithUi;)Lch/kingdoms/ndk/data/Inven$Item;

    move-result-object v7

    iget v7, v7, Lch/kingdoms/ndk/data/Inven$Item;->index:I

    invoke-static {v6, v7}, Lch/kingdoms/android/ui/BlackSmithUi;->access$11(Lch/kingdoms/android/ui/BlackSmithUi;I)V

    goto/16 :goto_3

    .line 535
    :cond_f
    add-int/lit8 v2, v2, -0x1

    goto :goto_9

    .line 480
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
