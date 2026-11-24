.class Lch/kingdoms/android/ui/network/NewNetworkUi$2;
.super Ljava/lang/Object;
.source "NewNetworkUi.java"

# interfaces
.implements Lch/android/api/pipelinethread/MessageHandlable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lch/kingdoms/android/ui/network/NewNetworkUi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lch/kingdoms/android/ui/network/NewNetworkUi$2$ConcreteOnNetworkMessageResultListener;
    }
.end annotation


# instance fields
.field final synthetic this$0:Lch/kingdoms/android/ui/network/NewNetworkUi;


# direct methods
.method constructor <init>(Lch/kingdoms/android/ui/network/NewNetworkUi;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lch/kingdoms/android/ui/network/NewNetworkUi$2;->this$0:Lch/kingdoms/android/ui/network/NewNetworkUi;

    .line 281
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lch/kingdoms/android/ui/network/NewNetworkUi$2;)Lch/kingdoms/android/ui/network/NewNetworkUi;
    .locals 1

    .prologue
    .line 281
    iget-object v0, p0, Lch/kingdoms/android/ui/network/NewNetworkUi$2;->this$0:Lch/kingdoms/android/ui/network/NewNetworkUi;

    return-object v0
.end method


# virtual methods
.method public handle(Landroid/os/Message;)V
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 285
    const/4 v1, 0x0

    .line 286
    .local v1, "packet":Lch/kingdoms/android/network/ChPacketFactory$ChPacket;
    new-instance v0, Lch/kingdoms/android/ui/network/NewNetworkUi$2$ConcreteOnNetworkMessageResultListener;

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-direct {v0, p0, v2}, Lch/kingdoms/android/ui/network/NewNetworkUi$2$ConcreteOnNetworkMessageResultListener;-><init>(Lch/kingdoms/android/ui/network/NewNetworkUi$2;I)V

    .line 287
    .local v0, "listener":Lch/kingdoms/android/ui/network/NewNetworkUi$2$ConcreteOnNetworkMessageResultListener;
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 379
    :goto_0
    :pswitch_0
    if-eqz v1, :cond_0

    .line 380
    iget-object v2, p0, Lch/kingdoms/android/ui/network/NewNetworkUi$2;->this$0:Lch/kingdoms/android/ui/network/NewNetworkUi;

    invoke-static {v2}, Lch/kingdoms/android/ui/network/NewNetworkUi;->access$5(Lch/kingdoms/android/ui/network/NewNetworkUi;)Lch/android/api/network/ChNetwork;

    move-result-object v2

    invoke-virtual {v1, v2}, Lch/kingdoms/android/network/ChPacketFactory$ChPacket;->sendPacket(Lch/android/api/network/ChNetwork;)V

    .line 382
    :cond_0
    return-void

    .line 289
    :pswitch_1
    iget-object v2, p0, Lch/kingdoms/android/ui/network/NewNetworkUi$2;->this$0:Lch/kingdoms/android/ui/network/NewNetworkUi;

    invoke-static {v2}, Lch/kingdoms/android/ui/network/NewNetworkUi;->access$5(Lch/kingdoms/android/ui/network/NewNetworkUi;)Lch/android/api/network/ChNetwork;

    move-result-object v2

    invoke-virtual {v2}, Lch/android/api/network/ChNetwork;->connect()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 290
    iget-object v2, p0, Lch/kingdoms/android/ui/network/NewNetworkUi$2;->this$0:Lch/kingdoms/android/ui/network/NewNetworkUi;

    invoke-static {v2}, Lch/kingdoms/android/ui/network/NewNetworkUi;->access$6(Lch/kingdoms/android/ui/network/NewNetworkUi;)Lch/kingdoms/android/network/ChPacketFactory;

    move-result-object v2

    iget-object v3, p0, Lch/kingdoms/android/ui/network/NewNetworkUi$2;->this$0:Lch/kingdoms/android/ui/network/NewNetworkUi;

    invoke-static {v3}, Lch/kingdoms/android/ui/network/NewNetworkUi;->access$7(Lch/kingdoms/android/ui/network/NewNetworkUi;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Lch/kingdoms/android/network/ChPacketFactory;->createConnect(Lch/kingdoms/android/network/ChPacketFactory$OnResultListener;Ljava/lang/String;)Lch/kingdoms/android/network/ChPacketFactory$Connect;

    move-result-object v1

    goto :goto_0

    .line 292
    :cond_1
    iget-object v2, p0, Lch/kingdoms/android/ui/network/NewNetworkUi$2;->this$0:Lch/kingdoms/android/ui/network/NewNetworkUi;

    iget-object v2, v2, Lch/kingdoms/android/ui/network/NewNetworkUi;->handler:Landroid/os/Handler;

    new-instance v3, Lch/kingdoms/android/ui/network/NewNetworkUi$2$1;

    invoke-direct {v3, p0}, Lch/kingdoms/android/ui/network/NewNetworkUi$2$1;-><init>(Lch/kingdoms/android/ui/network/NewNetworkUi$2;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 311
    :pswitch_2
    iget-object v2, p0, Lch/kingdoms/android/ui/network/NewNetworkUi$2;->this$0:Lch/kingdoms/android/ui/network/NewNetworkUi;

    invoke-static {v2}, Lch/kingdoms/android/ui/network/NewNetworkUi;->access$6(Lch/kingdoms/android/ui/network/NewNetworkUi;)Lch/kingdoms/android/network/ChPacketFactory;

    move-result-object v2

    iget-object v3, p0, Lch/kingdoms/android/ui/network/NewNetworkUi$2;->this$0:Lch/kingdoms/android/ui/network/NewNetworkUi;

    invoke-static {v3}, Lch/kingdoms/android/ui/network/NewNetworkUi;->access$7(Lch/kingdoms/android/ui/network/NewNetworkUi;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Lch/kingdoms/android/network/ChPacketFactory;->createSynchronize(Lch/kingdoms/android/network/ChPacketFactory$OnResultListener;Ljava/lang/String;)Lch/kingdoms/android/network/ChPacketFactory$Synchronize;

    move-result-object v1

    .line 312
    goto :goto_0

    .line 314
    :pswitch_3
    iget-object v2, p0, Lch/kingdoms/android/ui/network/NewNetworkUi$2;->this$0:Lch/kingdoms/android/ui/network/NewNetworkUi;

    invoke-static {v2}, Lch/kingdoms/android/ui/network/NewNetworkUi;->access$5(Lch/kingdoms/android/ui/network/NewNetworkUi;)Lch/android/api/network/ChNetwork;

    move-result-object v2

    invoke-virtual {v2}, Lch/android/api/network/ChNetwork;->disconnect()V

    .line 315
    iget-object v2, p0, Lch/kingdoms/android/ui/network/NewNetworkUi$2;->this$0:Lch/kingdoms/android/ui/network/NewNetworkUi;

    invoke-static {v2}, Lch/kingdoms/android/ui/network/NewNetworkUi;->access$4(Lch/kingdoms/android/ui/network/NewNetworkUi;)Lch/kingdoms/android/ui/IGameMenu;

    move-result-object v2

    invoke-interface {v2}, Lch/kingdoms/android/ui/IGameMenu;->showViewInCenter()V

    goto :goto_0

    .line 318
    :pswitch_4
    iget-object v2, p0, Lch/kingdoms/android/ui/network/NewNetworkUi$2;->this$0:Lch/kingdoms/android/ui/network/NewNetworkUi;

    invoke-static {v2}, Lch/kingdoms/android/ui/network/NewNetworkUi;->access$6(Lch/kingdoms/android/ui/network/NewNetworkUi;)Lch/kingdoms/android/network/ChPacketFactory;

    move-result-object v2

    iget-object v3, p0, Lch/kingdoms/android/ui/network/NewNetworkUi$2;->this$0:Lch/kingdoms/android/ui/network/NewNetworkUi;

    invoke-static {v3}, Lch/kingdoms/android/ui/network/NewNetworkUi;->access$7(Lch/kingdoms/android/ui/network/NewNetworkUi;)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Landroid/os/Build;->MODEL:Ljava/lang/String;

    iget-object v5, p0, Lch/kingdoms/android/ui/network/NewNetworkUi$2;->this$0:Lch/kingdoms/android/ui/network/NewNetworkUi;

    invoke-static {v5}, Lch/kingdoms/android/ui/network/NewNetworkUi;->access$8(Lch/kingdoms/android/ui/network/NewNetworkUi;)I

    move-result v5

    invoke-virtual {v2, v0, v3, v4, v5}, Lch/kingdoms/android/network/ChPacketFactory;->createInfoUpdateRequest(Lch/kingdoms/android/network/ChPacketFactory$OnResultListener;Ljava/lang/String;Ljava/lang/String;I)Lch/kingdoms/android/network/ChPacketFactory$InfoUpdateRequest;

    move-result-object v1

    .line 319
    goto :goto_0

    .line 324
    :pswitch_5
    iget-object v2, p0, Lch/kingdoms/android/ui/network/NewNetworkUi$2;->this$0:Lch/kingdoms/android/ui/network/NewNetworkUi;

    invoke-static {v2}, Lch/kingdoms/android/ui/network/NewNetworkUi;->access$6(Lch/kingdoms/android/ui/network/NewNetworkUi;)Lch/kingdoms/android/network/ChPacketFactory;

    move-result-object v2

    iget-object v3, p0, Lch/kingdoms/android/ui/network/NewNetworkUi$2;->this$0:Lch/kingdoms/android/ui/network/NewNetworkUi;

    invoke-static {v3}, Lch/kingdoms/android/ui/network/NewNetworkUi;->access$7(Lch/kingdoms/android/ui/network/NewNetworkUi;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    invoke-virtual {v2, v0, v3, v4}, Lch/kingdoms/android/network/ChPacketFactory;->createShowNotice(Lch/kingdoms/android/network/ChPacketFactory$OnResultListener;Ljava/lang/String;B)Lch/kingdoms/android/network/ChPacketFactory$ShowNotice;

    move-result-object v1

    .line 325
    goto/16 :goto_0

    .line 327
    :pswitch_6
    iget-object v2, p0, Lch/kingdoms/android/ui/network/NewNetworkUi$2;->this$0:Lch/kingdoms/android/ui/network/NewNetworkUi;

    invoke-static {v2}, Lch/kingdoms/android/ui/network/NewNetworkUi;->access$6(Lch/kingdoms/android/ui/network/NewNetworkUi;)Lch/kingdoms/android/network/ChPacketFactory;

    move-result-object v2

    iget-object v3, p0, Lch/kingdoms/android/ui/network/NewNetworkUi$2;->this$0:Lch/kingdoms/android/ui/network/NewNetworkUi;

    invoke-static {v3}, Lch/kingdoms/android/ui/network/NewNetworkUi;->access$7(Lch/kingdoms/android/ui/network/NewNetworkUi;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Lch/kingdoms/android/network/ChPacketFactory;->createReceivedItem(Lch/kingdoms/android/network/ChPacketFactory$OnResultListener;Ljava/lang/String;)Lch/kingdoms/android/network/ChPacketFactory$CheckReceivedItem;

    move-result-object v1

    .line 328
    goto/16 :goto_0

    .line 330
    :pswitch_7
    iget-object v2, p0, Lch/kingdoms/android/ui/network/NewNetworkUi$2;->this$0:Lch/kingdoms/android/ui/network/NewNetworkUi;

    invoke-static {v2}, Lch/kingdoms/android/ui/network/NewNetworkUi;->access$6(Lch/kingdoms/android/ui/network/NewNetworkUi;)Lch/kingdoms/android/network/ChPacketFactory;

    move-result-object v2

    iget-object v3, p0, Lch/kingdoms/android/ui/network/NewNetworkUi$2;->this$0:Lch/kingdoms/android/ui/network/NewNetworkUi;

    invoke-static {v3}, Lch/kingdoms/android/ui/network/NewNetworkUi;->access$7(Lch/kingdoms/android/ui/network/NewNetworkUi;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Lch/kingdoms/android/network/ChPacketFactory;->createReceivedFence(Lch/kingdoms/android/network/ChPacketFactory$OnResultListener;Ljava/lang/String;)Lch/kingdoms/android/network/ChPacketFactory$CheckReceivedFence;

    move-result-object v1

    .line 331
    goto/16 :goto_0

    .line 333
    :pswitch_8
    iget-object v2, p0, Lch/kingdoms/android/ui/network/NewNetworkUi$2;->this$0:Lch/kingdoms/android/ui/network/NewNetworkUi;

    invoke-static {v2}, Lch/kingdoms/android/ui/network/NewNetworkUi;->access$6(Lch/kingdoms/android/ui/network/NewNetworkUi;)Lch/kingdoms/android/network/ChPacketFactory;

    move-result-object v2

    iget-object v3, p0, Lch/kingdoms/android/ui/network/NewNetworkUi$2;->this$0:Lch/kingdoms/android/ui/network/NewNetworkUi;

    invoke-static {v3}, Lch/kingdoms/android/ui/network/NewNetworkUi;->access$7(Lch/kingdoms/android/ui/network/NewNetworkUi;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Lch/kingdoms/android/network/ChPacketFactory;->createCheckGiftCashPoint(Lch/kingdoms/android/network/ChPacketFactory$OnResultListener;Ljava/lang/String;)Lch/kingdoms/android/network/ChPacketFactory$CheckGiftCashPoint;

    move-result-object v1

    .line 334
    goto/16 :goto_0

    .line 336
    :pswitch_9
    iget-object v2, p0, Lch/kingdoms/android/ui/network/NewNetworkUi$2;->this$0:Lch/kingdoms/android/ui/network/NewNetworkUi;

    invoke-static {v2}, Lch/kingdoms/android/ui/network/NewNetworkUi;->access$6(Lch/kingdoms/android/ui/network/NewNetworkUi;)Lch/kingdoms/android/network/ChPacketFactory;

    move-result-object v2

    iget-object v3, p0, Lch/kingdoms/android/ui/network/NewNetworkUi$2;->this$0:Lch/kingdoms/android/ui/network/NewNetworkUi;

    invoke-static {v3}, Lch/kingdoms/android/ui/network/NewNetworkUi;->access$7(Lch/kingdoms/android/ui/network/NewNetworkUi;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Lch/kingdoms/android/network/ChPacketFactory;->createCheckCashPoint(Lch/kingdoms/android/network/ChPacketFactory$OnResultListener;Ljava/lang/String;)Lch/kingdoms/android/network/ChPacketFactory$CheckCashPoint;

    move-result-object v1

    .line 337
    goto/16 :goto_0

    .line 339
    :pswitch_a
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local v1    # "packet":Lch/kingdoms/android/network/ChPacketFactory$ChPacket;
    check-cast v1, Lch/kingdoms/android/network/ChPacketFactory$ChPacket;

    .line 340
    .restart local v1    # "packet":Lch/kingdoms/android/network/ChPacketFactory$ChPacket;
    invoke-virtual {v1, v0}, Lch/kingdoms/android/network/ChPacketFactory$ChPacket;->setOnResultListener(Lch/kingdoms/android/network/ChPacketFactory$OnResultListener;)V

    goto/16 :goto_0

    .line 350
    :pswitch_b
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local v1    # "packet":Lch/kingdoms/android/network/ChPacketFactory$ChPacket;
    check-cast v1, Lch/kingdoms/android/network/ChPacketFactory$ChPacket;

    .line 351
    .restart local v1    # "packet":Lch/kingdoms/android/network/ChPacketFactory$ChPacket;
    invoke-virtual {v1, v0}, Lch/kingdoms/android/network/ChPacketFactory$ChPacket;->setOnResultListener(Lch/kingdoms/android/network/ChPacketFactory$OnResultListener;)V

    goto/16 :goto_0

    .line 354
    :pswitch_c
    iget-object v2, p0, Lch/kingdoms/android/ui/network/NewNetworkUi$2;->this$0:Lch/kingdoms/android/ui/network/NewNetworkUi;

    invoke-static {v2}, Lch/kingdoms/android/ui/network/NewNetworkUi;->access$6(Lch/kingdoms/android/ui/network/NewNetworkUi;)Lch/kingdoms/android/network/ChPacketFactory;

    move-result-object v2

    iget-object v3, p0, Lch/kingdoms/android/ui/network/NewNetworkUi$2;->this$0:Lch/kingdoms/android/ui/network/NewNetworkUi;

    invoke-static {v3}, Lch/kingdoms/android/ui/network/NewNetworkUi;->access$7(Lch/kingdoms/android/ui/network/NewNetworkUi;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Lch/kingdoms/android/network/ChPacketFactory;->createNetworkInven(Lch/kingdoms/android/network/ChPacketFactory$OnResultListener;Ljava/lang/String;)Lch/kingdoms/android/network/ChPacketFactory$ShowNetworkInven;

    move-result-object v1

    .line 355
    goto/16 :goto_0

    .line 359
    :pswitch_d
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local v1    # "packet":Lch/kingdoms/android/network/ChPacketFactory$ChPacket;
    check-cast v1, Lch/kingdoms/android/network/ChPacketFactory$ChPacket;

    .line 360
    .restart local v1    # "packet":Lch/kingdoms/android/network/ChPacketFactory$ChPacket;
    invoke-virtual {v1, v0}, Lch/kingdoms/android/network/ChPacketFactory$ChPacket;->setOnResultListener(Lch/kingdoms/android/network/ChPacketFactory$OnResultListener;)V

    goto/16 :goto_0

    .line 363
    :pswitch_e
    iget-object v2, p0, Lch/kingdoms/android/ui/network/NewNetworkUi$2;->this$0:Lch/kingdoms/android/ui/network/NewNetworkUi;

    invoke-static {v2}, Lch/kingdoms/android/ui/network/NewNetworkUi;->access$6(Lch/kingdoms/android/ui/network/NewNetworkUi;)Lch/kingdoms/android/network/ChPacketFactory;

    move-result-object v2

    iget-object v3, p0, Lch/kingdoms/android/ui/network/NewNetworkUi$2;->this$0:Lch/kingdoms/android/ui/network/NewNetworkUi;

    invoke-static {v3}, Lch/kingdoms/android/ui/network/NewNetworkUi;->access$7(Lch/kingdoms/android/ui/network/NewNetworkUi;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Lch/kingdoms/android/network/ChPacketFactory;->createShowSaleItems(Lch/kingdoms/android/network/ChPacketFactory$OnResultListener;Ljava/lang/String;)Lch/kingdoms/android/network/ChPacketFactory$ShowSaleItems;

    move-result-object v1

    .line 364
    goto/16 :goto_0

    .line 367
    :pswitch_f
    iget-object v2, p0, Lch/kingdoms/android/ui/network/NewNetworkUi$2;->this$0:Lch/kingdoms/android/ui/network/NewNetworkUi;

    invoke-static {v2}, Lch/kingdoms/android/ui/network/NewNetworkUi;->access$6(Lch/kingdoms/android/ui/network/NewNetworkUi;)Lch/kingdoms/android/network/ChPacketFactory;

    move-result-object v2

    iget-object v3, p0, Lch/kingdoms/android/ui/network/NewNetworkUi$2;->this$0:Lch/kingdoms/android/ui/network/NewNetworkUi;

    invoke-static {v3}, Lch/kingdoms/android/ui/network/NewNetworkUi;->access$7(Lch/kingdoms/android/ui/network/NewNetworkUi;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Lch/kingdoms/android/network/ChPacketFactory;->createShowFence(Lch/kingdoms/android/network/ChPacketFactory$OnResultListener;Ljava/lang/String;)Lch/kingdoms/android/network/ChPacketFactory$ShowFence;

    move-result-object v1

    .line 368
    goto/16 :goto_0

    .line 370
    :pswitch_10
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local v1    # "packet":Lch/kingdoms/android/network/ChPacketFactory$ChPacket;
    check-cast v1, Lch/kingdoms/android/network/ChPacketFactory$ChPacket;

    .line 371
    .restart local v1    # "packet":Lch/kingdoms/android/network/ChPacketFactory$ChPacket;
    invoke-virtual {v1, v0}, Lch/kingdoms/android/network/ChPacketFactory$ChPacket;->setOnResultListener(Lch/kingdoms/android/network/ChPacketFactory$OnResultListener;)V

    goto/16 :goto_0

    .line 374
    :pswitch_11
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local v1    # "packet":Lch/kingdoms/android/network/ChPacketFactory$ChPacket;
    check-cast v1, Lch/kingdoms/android/network/ChPacketFactory$ChPacket;

    .line 375
    .restart local v1    # "packet":Lch/kingdoms/android/network/ChPacketFactory$ChPacket;
    invoke-virtual {v1, v0}, Lch/kingdoms/android/network/ChPacketFactory$ChPacket;->setOnResultListener(Lch/kingdoms/android/network/ChPacketFactory$OnResultListener;)V

    goto/16 :goto_0

    .line 287
    :pswitch_data_0
    .packed-switch 0x4a38
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_c
        :pswitch_0
        :pswitch_a
        :pswitch_e
        :pswitch_d
        :pswitch_d
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_10
        :pswitch_11
        :pswitch_f
    .end packed-switch
.end method
