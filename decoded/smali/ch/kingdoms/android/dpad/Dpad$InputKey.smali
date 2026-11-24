.class Lch/kingdoms/android/dpad/Dpad$InputKey;
.super Ljava/lang/Object;
.source "Dpad.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lch/kingdoms/android/dpad/Dpad;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "InputKey"
.end annotation


# instance fields
.field private m_curDir:I

.field private m_preDir:I

.field final synthetic this$0:Lch/kingdoms/android/dpad/Dpad;


# direct methods
.method private constructor <init>(Lch/kingdoms/android/dpad/Dpad;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 490
    iput-object p1, p0, Lch/kingdoms/android/dpad/Dpad$InputKey;->this$0:Lch/kingdoms/android/dpad/Dpad;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 491
    iput v0, p0, Lch/kingdoms/android/dpad/Dpad$InputKey;->m_curDir:I

    .line 492
    iput v0, p0, Lch/kingdoms/android/dpad/Dpad$InputKey;->m_preDir:I

    return-void
.end method

.method synthetic constructor <init>(Lch/kingdoms/android/dpad/Dpad;Lch/kingdoms/android/dpad/Dpad$InputKey;)V
    .locals 0

    .prologue
    .line 490
    invoke-direct {p0, p1}, Lch/kingdoms/android/dpad/Dpad$InputKey;-><init>(Lch/kingdoms/android/dpad/Dpad;)V

    return-void
.end method


# virtual methods
.method public getCurDirection()I
    .locals 1

    .prologue
    .line 609
    iget v0, p0, Lch/kingdoms/android/dpad/Dpad$InputKey;->m_curDir:I

    return v0
.end method

.method public inputKey(III)Z
    .locals 7
    .param p1, "_viewId"    # I
    .param p2, "_action"    # I
    .param p3, "_direction"    # I

    .prologue
    const/16 v6, 0x3e8

    const/4 v1, 0x0

    const/16 v5, 0x3e7

    const/4 v2, 0x1

    .line 498
    if-eqz p2, :cond_0

    const/4 v3, 0x5

    if-ne p2, v3, :cond_2

    .line 499
    :cond_0
    const/16 v0, 0x3e8

    .line 506
    .local v0, "type":I
    :goto_0
    packed-switch p1, :pswitch_data_0

    .line 601
    :pswitch_0
    iget-object v3, p0, Lch/kingdoms/android/dpad/Dpad$InputKey;->this$0:Lch/kingdoms/android/dpad/Dpad;

    invoke-static {v3}, Lch/kingdoms/android/dpad/Dpad;->access$5(Lch/kingdoms/android/dpad/Dpad;)Lch/kingdoms/market/KeyTranslator;

    move-result-object v3

    iget v4, p0, Lch/kingdoms/android/dpad/Dpad$InputKey;->m_curDir:I

    invoke-virtual {v3, v5, v4}, Lch/kingdoms/market/KeyTranslator;->translateKey(II)I

    .line 602
    iget-object v3, p0, Lch/kingdoms/android/dpad/Dpad$InputKey;->this$0:Lch/kingdoms/android/dpad/Dpad;

    invoke-static {v3}, Lch/kingdoms/android/dpad/Dpad;->access$10(Lch/kingdoms/android/dpad/Dpad;)Lch/kingdoms/android/dpad/DirectionButtons;

    move-result-object v3

    invoke-virtual {v3, v2, v1}, Lch/kingdoms/android/dpad/DirectionButtons;->updateButtonBmp(II)V

    .line 603
    iput v1, p0, Lch/kingdoms/android/dpad/Dpad$InputKey;->m_curDir:I

    iput v1, p0, Lch/kingdoms/android/dpad/Dpad$InputKey;->m_preDir:I

    .line 604
    :cond_1
    :goto_1
    return v2

    .line 502
    .end local v0    # "type":I
    :cond_2
    const/16 v0, 0x3e7

    .restart local v0    # "type":I
    goto :goto_0

    .line 508
    :pswitch_1
    packed-switch p3, :pswitch_data_1

    .line 532
    iget v1, p0, Lch/kingdoms/android/dpad/Dpad$InputKey;->m_curDir:I

    iget v3, p0, Lch/kingdoms/android/dpad/Dpad$InputKey;->m_preDir:I

    if-eq v1, v3, :cond_1

    .line 533
    iget-object v1, p0, Lch/kingdoms/android/dpad/Dpad$InputKey;->this$0:Lch/kingdoms/android/dpad/Dpad;

    invoke-static {v1}, Lch/kingdoms/android/dpad/Dpad;->access$5(Lch/kingdoms/android/dpad/Dpad;)Lch/kingdoms/market/KeyTranslator;

    move-result-object v1

    iget v3, p0, Lch/kingdoms/android/dpad/Dpad$InputKey;->m_preDir:I

    invoke-virtual {v1, v5, v3}, Lch/kingdoms/market/KeyTranslator;->translateKey(II)I

    .line 534
    iget v1, p0, Lch/kingdoms/android/dpad/Dpad$InputKey;->m_curDir:I

    iput v1, p0, Lch/kingdoms/android/dpad/Dpad$InputKey;->m_preDir:I

    goto :goto_1

    .line 513
    :pswitch_2
    iput p3, p0, Lch/kingdoms/android/dpad/Dpad$InputKey;->m_curDir:I

    .line 515
    iget v3, p0, Lch/kingdoms/android/dpad/Dpad$InputKey;->m_curDir:I

    iget v4, p0, Lch/kingdoms/android/dpad/Dpad$InputKey;->m_preDir:I

    if-eq v3, v4, :cond_4

    .line 517
    iget v1, p0, Lch/kingdoms/android/dpad/Dpad$InputKey;->m_preDir:I

    if-eqz v1, :cond_3

    .line 519
    iget-object v1, p0, Lch/kingdoms/android/dpad/Dpad$InputKey;->this$0:Lch/kingdoms/android/dpad/Dpad;

    invoke-static {v1}, Lch/kingdoms/android/dpad/Dpad;->access$5(Lch/kingdoms/android/dpad/Dpad;)Lch/kingdoms/market/KeyTranslator;

    move-result-object v1

    iget v3, p0, Lch/kingdoms/android/dpad/Dpad$InputKey;->m_preDir:I

    invoke-virtual {v1, v5, v3}, Lch/kingdoms/market/KeyTranslator;->translateKey(II)I

    .line 521
    :cond_3
    iget-object v1, p0, Lch/kingdoms/android/dpad/Dpad$InputKey;->this$0:Lch/kingdoms/android/dpad/Dpad;

    invoke-static {v1}, Lch/kingdoms/android/dpad/Dpad;->access$5(Lch/kingdoms/android/dpad/Dpad;)Lch/kingdoms/market/KeyTranslator;

    move-result-object v1

    invoke-virtual {v1, v6, p3}, Lch/kingdoms/market/KeyTranslator;->translateKey(II)I

    .line 522
    iget v1, p0, Lch/kingdoms/android/dpad/Dpad$InputKey;->m_curDir:I

    iput v1, p0, Lch/kingdoms/android/dpad/Dpad$InputKey;->m_preDir:I

    goto :goto_1

    .line 524
    :cond_4
    if-eq p2, v2, :cond_5

    const/4 v3, 0x6

    if-ne p2, v3, :cond_1

    .line 526
    :cond_5
    iget-object v3, p0, Lch/kingdoms/android/dpad/Dpad$InputKey;->this$0:Lch/kingdoms/android/dpad/Dpad;

    invoke-static {v3}, Lch/kingdoms/android/dpad/Dpad;->access$5(Lch/kingdoms/android/dpad/Dpad;)Lch/kingdoms/market/KeyTranslator;

    move-result-object v3

    iget v4, p0, Lch/kingdoms/android/dpad/Dpad$InputKey;->m_curDir:I

    invoke-virtual {v3, v0, v4}, Lch/kingdoms/market/KeyTranslator;->translateKey(II)I

    .line 527
    iput v1, p0, Lch/kingdoms/android/dpad/Dpad$InputKey;->m_curDir:I

    iput v1, p0, Lch/kingdoms/android/dpad/Dpad$InputKey;->m_preDir:I

    goto :goto_1

    .line 539
    :pswitch_3
    iget-object v1, p0, Lch/kingdoms/android/dpad/Dpad$InputKey;->this$0:Lch/kingdoms/android/dpad/Dpad;

    invoke-static {v1}, Lch/kingdoms/android/dpad/Dpad;->access$5(Lch/kingdoms/android/dpad/Dpad;)Lch/kingdoms/market/KeyTranslator;

    move-result-object v1

    const/16 v3, 0x2f

    invoke-virtual {v1, v0, v3}, Lch/kingdoms/market/KeyTranslator;->translateKey(II)I

    .line 540
    if-ne v0, v5, :cond_1

    .line 541
    iget-object v1, p0, Lch/kingdoms/android/dpad/Dpad$InputKey;->this$0:Lch/kingdoms/android/dpad/Dpad;

    invoke-static {v1}, Lch/kingdoms/android/dpad/Dpad;->access$6(Lch/kingdoms/android/dpad/Dpad;)Lch/kingdoms/android/dpad/DButton;

    move-result-object v1

    invoke-virtual {v1}, Lch/kingdoms/android/dpad/DButton;->setToUnSelect()V

    goto :goto_1

    .line 545
    :pswitch_4
    iget-object v1, p0, Lch/kingdoms/android/dpad/Dpad$InputKey;->this$0:Lch/kingdoms/android/dpad/Dpad;

    invoke-static {v1}, Lch/kingdoms/android/dpad/Dpad;->access$5(Lch/kingdoms/android/dpad/Dpad;)Lch/kingdoms/market/KeyTranslator;

    move-result-object v1

    const/16 v3, 0x1c

    invoke-virtual {v1, v0, v3}, Lch/kingdoms/market/KeyTranslator;->translateKey(II)I

    goto :goto_1

    .line 548
    :pswitch_5
    iget-object v1, p0, Lch/kingdoms/android/dpad/Dpad$InputKey;->this$0:Lch/kingdoms/android/dpad/Dpad;

    invoke-static {v1}, Lch/kingdoms/android/dpad/Dpad;->access$5(Lch/kingdoms/android/dpad/Dpad;)Lch/kingdoms/market/KeyTranslator;

    move-result-object v1

    const/16 v3, 0x12

    invoke-virtual {v1, v0, v3}, Lch/kingdoms/market/KeyTranslator;->translateKey(II)I

    goto/16 :goto_1

    .line 552
    :pswitch_6
    const/16 v1, 0x44f

    invoke-static {v0, v1}, Lch/kingdoms/ndk/NdkInputManager;->input(II)V

    .line 553
    if-ne v0, v5, :cond_1

    .line 554
    iget-object v1, p0, Lch/kingdoms/android/dpad/Dpad$InputKey;->this$0:Lch/kingdoms/android/dpad/Dpad;

    invoke-static {v1}, Lch/kingdoms/android/dpad/Dpad;->access$7(Lch/kingdoms/android/dpad/Dpad;)Landroid/os/Handler;

    move-result-object v1

    iget-object v3, p0, Lch/kingdoms/android/dpad/Dpad$InputKey;->this$0:Lch/kingdoms/android/dpad/Dpad;

    invoke-static {v3}, Lch/kingdoms/android/dpad/Dpad;->access$8(Lch/kingdoms/android/dpad/Dpad;)Ljava/lang/Runnable;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_1

    .line 559
    :pswitch_7
    const/16 v1, 0x451

    invoke-static {v0, v1}, Lch/kingdoms/ndk/NdkInputManager;->input(II)V

    .line 560
    if-ne v0, v5, :cond_1

    .line 561
    iget-object v1, p0, Lch/kingdoms/android/dpad/Dpad$InputKey;->this$0:Lch/kingdoms/android/dpad/Dpad;

    invoke-static {v1}, Lch/kingdoms/android/dpad/Dpad;->access$7(Lch/kingdoms/android/dpad/Dpad;)Landroid/os/Handler;

    move-result-object v1

    iget-object v3, p0, Lch/kingdoms/android/dpad/Dpad$InputKey;->this$0:Lch/kingdoms/android/dpad/Dpad;

    invoke-static {v3}, Lch/kingdoms/android/dpad/Dpad;->access$8(Lch/kingdoms/android/dpad/Dpad;)Ljava/lang/Runnable;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_1

    .line 566
    :pswitch_8
    const/16 v1, 0x459

    invoke-static {v0, v1}, Lch/kingdoms/ndk/NdkInputManager;->input(II)V

    .line 567
    if-ne v0, v5, :cond_1

    .line 568
    iget-object v1, p0, Lch/kingdoms/android/dpad/Dpad$InputKey;->this$0:Lch/kingdoms/android/dpad/Dpad;

    invoke-static {v1}, Lch/kingdoms/android/dpad/Dpad;->access$7(Lch/kingdoms/android/dpad/Dpad;)Landroid/os/Handler;

    move-result-object v1

    iget-object v3, p0, Lch/kingdoms/android/dpad/Dpad$InputKey;->this$0:Lch/kingdoms/android/dpad/Dpad;

    invoke-static {v3}, Lch/kingdoms/android/dpad/Dpad;->access$8(Lch/kingdoms/android/dpad/Dpad;)Ljava/lang/Runnable;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_1

    .line 573
    :pswitch_9
    const/16 v1, 0x45a

    invoke-static {v0, v1}, Lch/kingdoms/ndk/NdkInputManager;->input(II)V

    .line 574
    if-ne v0, v5, :cond_1

    .line 575
    iget-object v1, p0, Lch/kingdoms/android/dpad/Dpad$InputKey;->this$0:Lch/kingdoms/android/dpad/Dpad;

    invoke-static {v1}, Lch/kingdoms/android/dpad/Dpad;->access$7(Lch/kingdoms/android/dpad/Dpad;)Landroid/os/Handler;

    move-result-object v1

    iget-object v3, p0, Lch/kingdoms/android/dpad/Dpad$InputKey;->this$0:Lch/kingdoms/android/dpad/Dpad;

    invoke-static {v3}, Lch/kingdoms/android/dpad/Dpad;->access$8(Lch/kingdoms/android/dpad/Dpad;)Ljava/lang/Runnable;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_1

    .line 580
    :pswitch_a
    const/16 v1, 0x455

    invoke-static {v0, v1}, Lch/kingdoms/ndk/NdkInputManager;->input(II)V

    .line 581
    if-ne v0, v5, :cond_1

    .line 582
    iget-object v1, p0, Lch/kingdoms/android/dpad/Dpad$InputKey;->this$0:Lch/kingdoms/android/dpad/Dpad;

    invoke-static {v1}, Lch/kingdoms/android/dpad/Dpad;->access$7(Lch/kingdoms/android/dpad/Dpad;)Landroid/os/Handler;

    move-result-object v1

    iget-object v3, p0, Lch/kingdoms/android/dpad/Dpad$InputKey;->this$0:Lch/kingdoms/android/dpad/Dpad;

    invoke-static {v3}, Lch/kingdoms/android/dpad/Dpad;->access$8(Lch/kingdoms/android/dpad/Dpad;)Ljava/lang/Runnable;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_1

    .line 587
    :pswitch_b
    const/16 v1, 0x457

    invoke-static {v0, v1}, Lch/kingdoms/ndk/NdkInputManager;->input(II)V

    .line 588
    if-ne v0, v5, :cond_1

    .line 589
    iget-object v1, p0, Lch/kingdoms/android/dpad/Dpad$InputKey;->this$0:Lch/kingdoms/android/dpad/Dpad;

    invoke-static {v1}, Lch/kingdoms/android/dpad/Dpad;->access$7(Lch/kingdoms/android/dpad/Dpad;)Landroid/os/Handler;

    move-result-object v1

    iget-object v3, p0, Lch/kingdoms/android/dpad/Dpad$InputKey;->this$0:Lch/kingdoms/android/dpad/Dpad;

    invoke-static {v3}, Lch/kingdoms/android/dpad/Dpad;->access$8(Lch/kingdoms/android/dpad/Dpad;)Ljava/lang/Runnable;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_1

    .line 594
    :pswitch_c
    if-ne v0, v6, :cond_6

    .line 595
    iget-object v3, p0, Lch/kingdoms/android/dpad/Dpad$InputKey;->this$0:Lch/kingdoms/android/dpad/Dpad;

    invoke-static {}, Lch/kingdoms/ndk/NdkUiEventManager;->callNativeIsSlotA()Z

    move-result v4

    if-eqz v4, :cond_7

    :goto_2
    invoke-static {v3, v1}, Lch/kingdoms/android/dpad/Dpad;->access$9(Lch/kingdoms/android/dpad/Dpad;Z)V

    .line 596
    iget-object v1, p0, Lch/kingdoms/android/dpad/Dpad$InputKey;->this$0:Lch/kingdoms/android/dpad/Dpad;

    invoke-static {v1}, Lch/kingdoms/android/dpad/Dpad;->access$7(Lch/kingdoms/android/dpad/Dpad;)Landroid/os/Handler;

    move-result-object v1

    iget-object v3, p0, Lch/kingdoms/android/dpad/Dpad$InputKey;->this$0:Lch/kingdoms/android/dpad/Dpad;

    invoke-static {v3}, Lch/kingdoms/android/dpad/Dpad;->access$8(Lch/kingdoms/android/dpad/Dpad;)Ljava/lang/Runnable;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 598
    :cond_6
    const/16 v1, 0x458

    invoke-static {v0, v1}, Lch/kingdoms/ndk/NdkInputManager;->input(II)V

    goto/16 :goto_1

    :cond_7
    move v1, v2

    .line 595
    goto :goto_2

    .line 506
    :pswitch_data_0
    .packed-switch 0x2710
        :pswitch_1
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
    .end packed-switch

    .line 508
    :pswitch_data_1
    .packed-switch 0x13
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method
