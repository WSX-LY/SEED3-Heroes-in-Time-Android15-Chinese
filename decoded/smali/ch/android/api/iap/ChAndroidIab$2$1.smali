.class Lch/android/api/iap/ChAndroidIab$2$1;
.super Ljava/lang/Object;
.source "ChAndroidIab.java"

# interfaces
.implements Lch/android/lib/iab/ChOnPurchaseListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lch/android/api/iap/ChAndroidIab$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lch/android/api/iap/ChAndroidIab$2;


# direct methods
.method constructor <init>(Lch/android/api/iap/ChAndroidIab$2;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lch/android/api/iap/ChAndroidIab$2$1;->this$1:Lch/android/api/iap/ChAndroidIab$2;

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPurchased(ILjava/lang/String;I)V
    .locals 10
    .param p1, "result"    # I
    .param p2, "id"    # Ljava/lang/String;
    .param p3, "quantity"    # I

    .prologue
    .line 87
    const-string v6, "KD"

    invoke-static {v6, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    const/4 v3, 0x1

    .line 89
    .local v3, "isOk":Z
    packed-switch p1, :pswitch_data_0

    .line 143
    :pswitch_0
    const-string v6, "IAB"

    const-string v7, "unknown error"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    const/4 v3, 0x0

    .line 147
    :goto_0
    if-nez p1, :cond_6

    if-eqz v3, :cond_6

    .line 148
    new-instance v5, Ljava/lang/Thread;

    new-instance v6, Lch/android/api/iap/ChAndroidIab$2$1$1;

    invoke-direct {v6, p0, p2, p3}, Lch/android/api/iap/ChAndroidIab$2$1$1;-><init>(Lch/android/api/iap/ChAndroidIab$2$1;Ljava/lang/String;I)V

    invoke-direct {v5, v6}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 160
    .local v5, "thread":Ljava/lang/Thread;
    invoke-virtual {v5}, Ljava/lang/Thread;->run()V

    .line 176
    .end local v5    # "thread":Ljava/lang/Thread;
    :cond_0
    :goto_1
    invoke-static {}, Lch/android/api/iap/ChAndroidIab;->access$1()Landroid/os/Handler;

    move-result-object v6

    new-instance v7, Lch/android/api/iap/ChAndroidIab$2$1$3;

    invoke-direct {v7, p0}, Lch/android/api/iap/ChAndroidIab$2$1$3;-><init>(Lch/android/api/iap/ChAndroidIab$2$1;)V

    .line 183
    const-wide/16 v8, 0xbb8

    .line 176
    invoke-virtual {v6, v7, v8, v9}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 184
    invoke-static {}, Lch/android/api/iap/ChAndroidIab;->access$1()Landroid/os/Handler;

    move-result-object v6

    new-instance v7, Lch/android/api/iap/ChAndroidIab$2$1$4;

    invoke-direct {v7, p0, p1, p2, p3}, Lch/android/api/iap/ChAndroidIab$2$1$4;-><init>(Lch/android/api/iap/ChAndroidIab$2$1;ILjava/lang/String;I)V

    invoke-virtual {v6, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 191
    const/4 v6, 0x0

    invoke-static {v6}, Lch/android/api/iap/ChAndroidIab;->access$6(Z)V

    .line 192
    const/4 v6, 0x0

    invoke-static {v6}, Lch/android/api/iap/ChAndroidIab;->access$7(Lch/android/api/iap/Product;)V

    .line 193
    return-void

    .line 91
    :pswitch_1
    const-string v6, "IAB"

    const-string v7, "ChOnPurchaseListener.RESULT_PURCHASED"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    const-string v6, "item_colosseum_unlock"

    invoke-virtual {p2, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 95
    const/4 v2, 0x1

    .line 96
    .local v2, "isManagedItem":Z
    const-string v0, "COLOSSEUM"

    .line 104
    .local v0, "dbKey":Ljava/lang/String;
    :goto_2
    if-eqz v2, :cond_4

    .line 105
    invoke-static {}, Lch/android/api/iap/ChAndroidIab;->access$0()Lch/kingdoms/android/db/DBAdapter;

    move-result-object v6

    const/4 v7, 0x1

    invoke-virtual {v6, v0, v7}, Lch/kingdoms/android/db/DBAdapter;->setPurchase(Ljava/lang/String;Z)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 107
    const-string v6, "KD"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, " is purchased."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 97
    .end local v0    # "dbKey":Ljava/lang/String;
    .end local v2    # "isManagedItem":Z
    :cond_1
    const-string v6, "item_warpgate_unlock"

    invoke-virtual {p2, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 98
    const/4 v2, 0x1

    .line 99
    .restart local v2    # "isManagedItem":Z
    const-string v0, "WARPGATE"

    .restart local v0    # "dbKey":Ljava/lang/String;
    goto :goto_2

    .line 101
    .end local v0    # "dbKey":Ljava/lang/String;
    .end local v2    # "isManagedItem":Z
    :cond_2
    const/4 v2, 0x0

    .line 102
    .restart local v2    # "isManagedItem":Z
    const/4 v0, 0x0

    .restart local v0    # "dbKey":Ljava/lang/String;
    goto :goto_2

    .line 110
    :cond_3
    const-string v6, "KD"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, " is failed. db write fail."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    const/4 v3, 0x0

    goto/16 :goto_0

    .line 114
    :cond_4
    move v4, p3

    .line 115
    .local v4, "points":I
    invoke-static {}, Lch/kingdoms/ndk/NdkUiEventManager;->callNativeGetHeroInfo()Lch/kingdoms/ndk/data/HeroStatus;

    move-result-object v1

    .line 116
    .local v1, "heroStatus":Lch/kingdoms/ndk/data/HeroStatus;
    invoke-virtual {v1}, Lch/kingdoms/ndk/data/HeroStatus;->getCashPoints()I

    move-result v6

    add-int/2addr v6, v4

    invoke-virtual {v1, v6}, Lch/kingdoms/ndk/data/HeroStatus;->setCashPoins(I)V

    .line 117
    invoke-static {v1}, Lch/kingdoms/ndk/NdkUiEventManager;->callNativeCalHeroInfo(Lch/kingdoms/ndk/data/HeroStatus;)V

    .line 118
    invoke-static {}, Lch/kingdoms/ndk/NdkUiEventManager;->saveGame()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 119
    const-string v6, "KD"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, " is purchased."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 121
    :cond_5
    const-string v6, "KD"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, " is failed. db write fail."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    const/4 v3, 0x0

    .line 125
    goto/16 :goto_0

    .line 127
    .end local v0    # "dbKey":Ljava/lang/String;
    .end local v1    # "heroStatus":Lch/kingdoms/ndk/data/HeroStatus;
    .end local v2    # "isManagedItem":Z
    .end local v4    # "points":I
    :pswitch_2
    const-string v6, "IAB"

    const-string v7, "ChOnPurchaseListener.RESULT_NOT_PURCHASED"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    const/4 v3, 0x0

    .line 129
    goto/16 :goto_0

    .line 131
    :pswitch_3
    const-string v6, "IAB"

    const-string v7, "ChOnPurchaseListener.RESULT_REFUNDED"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    const/4 v3, 0x0

    .line 133
    goto/16 :goto_0

    .line 135
    :pswitch_4
    const-string v6, "IAB"

    const-string v7, "ChOnPurchaseListener.RESULT_REFUNDED"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    const/4 v3, 0x0

    .line 137
    goto/16 :goto_0

    .line 139
    :pswitch_5
    const-string v6, "IAB"

    const-string v7, "ChOnPurchaseListener.RESULT_TIMEOUT"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    const/4 v3, 0x0

    .line 141
    goto/16 :goto_0

    .line 161
    :cond_6
    if-nez p1, :cond_0

    if-nez v3, :cond_0

    .line 162
    new-instance v5, Ljava/lang/Thread;

    new-instance v6, Lch/android/api/iap/ChAndroidIab$2$1$2;

    invoke-direct {v6, p0, p2, p3}, Lch/android/api/iap/ChAndroidIab$2$1$2;-><init>(Lch/android/api/iap/ChAndroidIab$2$1;Ljava/lang/String;I)V

    invoke-direct {v5, v6}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 174
    .restart local v5    # "thread":Ljava/lang/Thread;
    invoke-virtual {v5}, Ljava/lang/Thread;->run()V

    goto/16 :goto_1

    .line 89
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_5
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method
