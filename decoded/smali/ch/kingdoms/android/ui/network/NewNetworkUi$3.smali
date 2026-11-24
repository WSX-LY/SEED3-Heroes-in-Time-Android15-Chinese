.class Lch/kingdoms/android/ui/network/NewNetworkUi$3;
.super Ljava/lang/Object;
.source "NewNetworkUi.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lch/kingdoms/android/ui/network/NewNetworkUi;->popUpNetworkError(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lch/kingdoms/android/ui/network/NewNetworkUi;

.field private final synthetic val$result:I


# direct methods
.method constructor <init>(Lch/kingdoms/android/ui/network/NewNetworkUi;I)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lch/kingdoms/android/ui/network/NewNetworkUi$3;->this$0:Lch/kingdoms/android/ui/network/NewNetworkUi;

    iput p2, p0, Lch/kingdoms/android/ui/network/NewNetworkUi$3;->val$result:I

    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/16 v4, 0x5d

    const/16 v3, 0x42

    const/16 v2, 0xd0

    .line 101
    iget v1, p0, Lch/kingdoms/android/ui/network/NewNetworkUi$3;->val$result:I

    packed-switch v1, :pswitch_data_0

    .line 200
    :goto_0
    :pswitch_0
    invoke-static {}, Lch/android/api/ui/ChViewGen;->getEventLayerLevel()I

    move-result v1

    if-gtz v1, :cond_1

    .line 203
    iget-object v1, p0, Lch/kingdoms/android/ui/network/NewNetworkUi$3;->this$0:Lch/kingdoms/android/ui/network/NewNetworkUi;

    invoke-static {v1}, Lch/kingdoms/android/ui/network/NewNetworkUi;->access$4(Lch/kingdoms/android/ui/network/NewNetworkUi;)Lch/kingdoms/android/ui/IGameMenu;

    move-result-object v1

    invoke-interface {v1}, Lch/kingdoms/android/ui/IGameMenu;->showViewInCenter()V

    .line 204
    invoke-static {v2}, Lch/kingdoms/ndk/NdkTextLoader;->getGameMenuTxt(I)Ljava/lang/String;

    move-result-object v0

    .line 207
    .local v0, "txt":Ljava/lang/String;
    :goto_1
    iget-object v1, p0, Lch/kingdoms/android/ui/network/NewNetworkUi$3;->this$0:Lch/kingdoms/android/ui/network/NewNetworkUi;

    invoke-static {v1}, Lch/kingdoms/android/ui/network/NewNetworkUi;->access$3(Lch/kingdoms/android/ui/network/NewNetworkUi;)Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1, v0}, Lch/kingdoms/android/ui/network/NewNetworkUi;->popUpOkNetworkView(Landroid/app/Activity;Ljava/lang/String;)V

    .line 208
    return-void

    .line 103
    .end local v0    # "txt":Ljava/lang/String;
    :pswitch_1
    const/16 v1, 0x16

    invoke-static {v1}, Lch/kingdoms/ndk/NdkTextLoader;->getNetworkTxt(I)Ljava/lang/String;

    move-result-object v0

    .line 104
    .restart local v0    # "txt":Ljava/lang/String;
    goto :goto_1

    .line 106
    .end local v0    # "txt":Ljava/lang/String;
    :pswitch_2
    const/16 v1, 0x108

    invoke-static {v1}, Lch/kingdoms/ndk/NdkTextLoader;->getGameMenuTxt(I)Ljava/lang/String;

    move-result-object v0

    .line 107
    .restart local v0    # "txt":Ljava/lang/String;
    goto :goto_1

    .line 109
    .end local v0    # "txt":Ljava/lang/String;
    :pswitch_3
    invoke-static {v2}, Lch/kingdoms/ndk/NdkTextLoader;->getGameMenuTxt(I)Ljava/lang/String;

    move-result-object v0

    .line 110
    .restart local v0    # "txt":Ljava/lang/String;
    goto :goto_1

    .line 112
    .end local v0    # "txt":Ljava/lang/String;
    :pswitch_4
    const/16 v1, 0xd8

    invoke-static {v1}, Lch/kingdoms/ndk/NdkTextLoader;->getGameMenuTxt(I)Ljava/lang/String;

    move-result-object v0

    .line 113
    .restart local v0    # "txt":Ljava/lang/String;
    goto :goto_1

    .line 115
    .end local v0    # "txt":Ljava/lang/String;
    :pswitch_5
    const/16 v1, 0x1b

    invoke-static {v1}, Lch/kingdoms/ndk/NdkTextLoader;->getNetworkTxt(I)Ljava/lang/String;

    move-result-object v0

    .line 116
    .restart local v0    # "txt":Ljava/lang/String;
    goto :goto_1

    .line 118
    .end local v0    # "txt":Ljava/lang/String;
    :pswitch_6
    invoke-static {v3}, Lch/kingdoms/ndk/NdkTextLoader;->getNetworkTxt(I)Ljava/lang/String;

    move-result-object v0

    .line 119
    .restart local v0    # "txt":Ljava/lang/String;
    goto :goto_1

    .line 121
    .end local v0    # "txt":Ljava/lang/String;
    :pswitch_7
    const/16 v1, 0x41

    invoke-static {v1}, Lch/kingdoms/ndk/NdkTextLoader;->getNetworkTxt(I)Ljava/lang/String;

    move-result-object v0

    .line 122
    .restart local v0    # "txt":Ljava/lang/String;
    goto :goto_1

    .line 124
    .end local v0    # "txt":Ljava/lang/String;
    :pswitch_8
    invoke-static {v3}, Lch/kingdoms/ndk/NdkTextLoader;->getNetworkTxt(I)Ljava/lang/String;

    move-result-object v0

    .line 125
    .restart local v0    # "txt":Ljava/lang/String;
    goto :goto_1

    .line 127
    .end local v0    # "txt":Ljava/lang/String;
    :pswitch_9
    const/16 v1, 0x60

    invoke-static {v1}, Lch/kingdoms/ndk/NdkTextLoader;->getNetworkTxt(I)Ljava/lang/String;

    move-result-object v0

    .line 128
    .restart local v0    # "txt":Ljava/lang/String;
    goto :goto_1

    .line 130
    .end local v0    # "txt":Ljava/lang/String;
    :pswitch_a
    invoke-static {v2}, Lch/kingdoms/ndk/NdkTextLoader;->getGameMenuTxt(I)Ljava/lang/String;

    move-result-object v0

    .line 131
    .restart local v0    # "txt":Ljava/lang/String;
    goto :goto_1

    .line 133
    .end local v0    # "txt":Ljava/lang/String;
    :pswitch_b
    const/16 v1, 0x5f

    invoke-static {v1}, Lch/kingdoms/ndk/NdkTextLoader;->getNetworkTxt(I)Ljava/lang/String;

    move-result-object v0

    .line 134
    .restart local v0    # "txt":Ljava/lang/String;
    goto :goto_1

    .line 136
    .end local v0    # "txt":Ljava/lang/String;
    :pswitch_c
    invoke-static {v4}, Lch/kingdoms/ndk/NdkTextLoader;->getNetworkTxt(I)Ljava/lang/String;

    move-result-object v0

    .line 137
    .restart local v0    # "txt":Ljava/lang/String;
    goto :goto_1

    .line 139
    .end local v0    # "txt":Ljava/lang/String;
    :pswitch_d
    const/16 v1, 0x51

    invoke-static {v1}, Lch/kingdoms/ndk/NdkTextLoader;->getGameMenuTxt(I)Ljava/lang/String;

    move-result-object v0

    .line 140
    .restart local v0    # "txt":Ljava/lang/String;
    goto :goto_1

    .line 142
    .end local v0    # "txt":Ljava/lang/String;
    :pswitch_e
    const/16 v1, 0x53

    invoke-static {v1}, Lch/kingdoms/ndk/NdkTextLoader;->getNetworkTxt(I)Ljava/lang/String;

    move-result-object v0

    .line 143
    .restart local v0    # "txt":Ljava/lang/String;
    goto :goto_1

    .line 145
    .end local v0    # "txt":Ljava/lang/String;
    :pswitch_f
    const/16 v1, 0x64

    invoke-static {v1}, Lch/kingdoms/ndk/NdkTextLoader;->getNetworkTxt(I)Ljava/lang/String;

    move-result-object v0

    .line 146
    .restart local v0    # "txt":Ljava/lang/String;
    goto :goto_1

    .line 148
    .end local v0    # "txt":Ljava/lang/String;
    :pswitch_10
    const/16 v1, 0xfb

    invoke-static {v1}, Lch/kingdoms/ndk/NdkTextLoader;->getGameMenuTxt(I)Ljava/lang/String;

    move-result-object v0

    .line 149
    .restart local v0    # "txt":Ljava/lang/String;
    goto :goto_1

    .line 151
    .end local v0    # "txt":Ljava/lang/String;
    :pswitch_11
    const/16 v1, 0x6d

    invoke-static {v1}, Lch/kingdoms/ndk/NdkTextLoader;->getNetworkTxt(I)Ljava/lang/String;

    move-result-object v0

    .line 152
    .restart local v0    # "txt":Ljava/lang/String;
    goto :goto_1

    .line 154
    .end local v0    # "txt":Ljava/lang/String;
    :pswitch_12
    const/16 v1, 0x17

    invoke-static {v1}, Lch/kingdoms/ndk/NdkTextLoader;->getNetworkTxt(I)Ljava/lang/String;

    move-result-object v0

    .line 155
    .restart local v0    # "txt":Ljava/lang/String;
    goto :goto_1

    .line 157
    .end local v0    # "txt":Ljava/lang/String;
    :pswitch_13
    const-string v0, "RESULT_NO_DATA"

    .line 158
    .restart local v0    # "txt":Ljava/lang/String;
    goto :goto_1

    .line 160
    .end local v0    # "txt":Ljava/lang/String;
    :pswitch_14
    const-string v0, "RESULT_NO_EQUAL_ITEM"

    .line 161
    .restart local v0    # "txt":Ljava/lang/String;
    goto/16 :goto_1

    .line 163
    .end local v0    # "txt":Ljava/lang/String;
    :pswitch_15
    const-string v0, "RESULT_NO_EVENT"

    .line 164
    .restart local v0    # "txt":Ljava/lang/String;
    goto/16 :goto_1

    .line 166
    .end local v0    # "txt":Ljava/lang/String;
    :pswitch_16
    const/16 v1, 0x5e

    invoke-static {v1}, Lch/kingdoms/ndk/NdkTextLoader;->getNetworkTxt(I)Ljava/lang/String;

    move-result-object v0

    .line 167
    .restart local v0    # "txt":Ljava/lang/String;
    goto/16 :goto_1

    .line 169
    .end local v0    # "txt":Ljava/lang/String;
    :pswitch_17
    invoke-static {v2}, Lch/kingdoms/ndk/NdkTextLoader;->getNetworkTxt(I)Ljava/lang/String;

    move-result-object v0

    .line 170
    .restart local v0    # "txt":Ljava/lang/String;
    goto/16 :goto_1

    .line 172
    .end local v0    # "txt":Ljava/lang/String;
    :pswitch_18
    const/16 v1, 0x40

    invoke-static {v1}, Lch/kingdoms/ndk/NdkTextLoader;->getNetworkTxt(I)Ljava/lang/String;

    move-result-object v0

    .line 173
    .restart local v0    # "txt":Ljava/lang/String;
    goto/16 :goto_1

    .line 175
    .end local v0    # "txt":Ljava/lang/String;
    :pswitch_19
    const-string v0, "RESULT_OVERWRITE"

    .line 176
    .restart local v0    # "txt":Ljava/lang/String;
    goto/16 :goto_1

    .line 178
    .end local v0    # "txt":Ljava/lang/String;
    :pswitch_1a
    invoke-static {v4}, Lch/kingdoms/ndk/NdkTextLoader;->getNetworkTxt(I)Ljava/lang/String;

    move-result-object v0

    .line 179
    .restart local v0    # "txt":Ljava/lang/String;
    goto/16 :goto_1

    .line 181
    .end local v0    # "txt":Ljava/lang/String;
    :pswitch_1b
    invoke-static {v2}, Lch/kingdoms/ndk/NdkTextLoader;->getNetworkTxt(I)Ljava/lang/String;

    move-result-object v0

    .line 182
    .restart local v0    # "txt":Ljava/lang/String;
    goto/16 :goto_1

    .line 184
    .end local v0    # "txt":Ljava/lang/String;
    :pswitch_1c
    invoke-static {v2}, Lch/kingdoms/ndk/NdkTextLoader;->getNetworkTxt(I)Ljava/lang/String;

    move-result-object v0

    .line 185
    .restart local v0    # "txt":Ljava/lang/String;
    goto/16 :goto_1

    .line 187
    .end local v0    # "txt":Ljava/lang/String;
    :pswitch_1d
    const/16 v1, 0x54

    invoke-static {v1}, Lch/kingdoms/ndk/NdkTextLoader;->getNetworkTxt(I)Ljava/lang/String;

    move-result-object v0

    .line 188
    .restart local v0    # "txt":Ljava/lang/String;
    goto/16 :goto_1

    .line 190
    .end local v0    # "txt":Ljava/lang/String;
    :pswitch_1e
    const-string v0, "ALREADY REGISTERED"

    .line 191
    .restart local v0    # "txt":Ljava/lang/String;
    goto/16 :goto_1

    .line 194
    .end local v0    # "txt":Ljava/lang/String;
    :cond_0
    invoke-static {}, Lch/android/api/ui/ChViewGen;->closePopUpView()V

    .line 193
    :pswitch_1f
    invoke-static {}, Lch/android/api/ui/ChViewGen;->getEventLayerLevel()I

    move-result v1

    if-gtz v1, :cond_0

    .line 196
    iget-object v1, p0, Lch/kingdoms/android/ui/network/NewNetworkUi$3;->this$0:Lch/kingdoms/android/ui/network/NewNetworkUi;

    invoke-static {v1}, Lch/kingdoms/android/ui/network/NewNetworkUi;->access$4(Lch/kingdoms/android/ui/network/NewNetworkUi;)Lch/kingdoms/android/ui/IGameMenu;

    move-result-object v1

    invoke-interface {v1}, Lch/kingdoms/android/ui/IGameMenu;->showViewInCenter()V

    .line 197
    const/4 v1, 0x1

    invoke-static {v1}, Lch/kingdoms/ndk/NdkTextLoader;->getNetworkTxt(I)Ljava/lang/String;

    move-result-object v0

    .line 198
    .restart local v0    # "txt":Ljava/lang/String;
    goto/16 :goto_1

    .line 201
    .end local v0    # "txt":Ljava/lang/String;
    :cond_1
    invoke-static {}, Lch/android/api/ui/ChViewGen;->closePopUpView()V

    goto/16 :goto_0

    .line 101
    nop

    :pswitch_data_0
    .packed-switch 0x2713
        :pswitch_2
        :pswitch_a
        :pswitch_3
        :pswitch_4
        :pswitch_1
        :pswitch_17
        :pswitch_15
        :pswitch_5
        :pswitch_10
        :pswitch_d
        :pswitch_c
        :pswitch_0
        :pswitch_1a
        :pswitch_14
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_12
        :pswitch_18
        :pswitch_1b
        :pswitch_e
        :pswitch_9
        :pswitch_b
        :pswitch_16
        :pswitch_19
        :pswitch_13
        :pswitch_1c
        :pswitch_11
        :pswitch_1d
        :pswitch_f
        :pswitch_0
        :pswitch_1e
        :pswitch_1f
    .end packed-switch
.end method
