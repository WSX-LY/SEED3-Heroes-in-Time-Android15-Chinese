.class Lch/kingdoms/android/ui/NetworkUi$1;
.super Ljava/lang/Object;
.source "NetworkUi.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lch/kingdoms/android/ui/NetworkUi;->popUpNetworkError(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lch/kingdoms/android/ui/NetworkUi;

.field private final synthetic val$result:I


# direct methods
.method constructor <init>(Lch/kingdoms/android/ui/NetworkUi;I)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lch/kingdoms/android/ui/NetworkUi$1;->this$0:Lch/kingdoms/android/ui/NetworkUi;

    iput p2, p0, Lch/kingdoms/android/ui/NetworkUi$1;->val$result:I

    .line 83
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

    .line 89
    iget v1, p0, Lch/kingdoms/android/ui/NetworkUi$1;->val$result:I

    packed-switch v1, :pswitch_data_0

    .line 191
    :pswitch_0
    invoke-static {v2}, Lch/kingdoms/ndk/NdkTextLoader;->getGameMenuTxt(I)Ljava/lang/String;

    move-result-object v0

    .line 194
    .local v0, "txt":Ljava/lang/String;
    :goto_0
    iget-object v1, p0, Lch/kingdoms/android/ui/NetworkUi$1;->this$0:Lch/kingdoms/android/ui/NetworkUi;

    invoke-static {v1}, Lch/kingdoms/android/ui/NetworkUi;->access$4(Lch/kingdoms/android/ui/NetworkUi;)Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1, v0}, Lch/kingdoms/android/ui/NetworkUi;->access$5(Landroid/app/Activity;Ljava/lang/String;)V

    .line 195
    return-void

    .line 91
    .end local v0    # "txt":Ljava/lang/String;
    :pswitch_1
    const/16 v1, 0x16

    invoke-static {v1}, Lch/kingdoms/ndk/NdkTextLoader;->getNetworkTxt(I)Ljava/lang/String;

    move-result-object v0

    .line 92
    .restart local v0    # "txt":Ljava/lang/String;
    goto :goto_0

    .line 94
    .end local v0    # "txt":Ljava/lang/String;
    :pswitch_2
    const/16 v1, 0x108

    invoke-static {v1}, Lch/kingdoms/ndk/NdkTextLoader;->getGameMenuTxt(I)Ljava/lang/String;

    move-result-object v0

    .line 95
    .restart local v0    # "txt":Ljava/lang/String;
    goto :goto_0

    .line 97
    .end local v0    # "txt":Ljava/lang/String;
    :pswitch_3
    invoke-static {v2}, Lch/kingdoms/ndk/NdkTextLoader;->getGameMenuTxt(I)Ljava/lang/String;

    move-result-object v0

    .line 98
    .restart local v0    # "txt":Ljava/lang/String;
    goto :goto_0

    .line 100
    .end local v0    # "txt":Ljava/lang/String;
    :pswitch_4
    const/16 v1, 0xd8

    invoke-static {v1}, Lch/kingdoms/ndk/NdkTextLoader;->getGameMenuTxt(I)Ljava/lang/String;

    move-result-object v0

    .line 101
    .restart local v0    # "txt":Ljava/lang/String;
    goto :goto_0

    .line 103
    .end local v0    # "txt":Ljava/lang/String;
    :pswitch_5
    const/16 v1, 0x1b

    invoke-static {v1}, Lch/kingdoms/ndk/NdkTextLoader;->getNetworkTxt(I)Ljava/lang/String;

    move-result-object v0

    .line 104
    .restart local v0    # "txt":Ljava/lang/String;
    goto :goto_0

    .line 106
    .end local v0    # "txt":Ljava/lang/String;
    :pswitch_6
    invoke-static {v3}, Lch/kingdoms/ndk/NdkTextLoader;->getNetworkTxt(I)Ljava/lang/String;

    move-result-object v0

    .line 107
    .restart local v0    # "txt":Ljava/lang/String;
    goto :goto_0

    .line 109
    .end local v0    # "txt":Ljava/lang/String;
    :pswitch_7
    const/16 v1, 0x41

    invoke-static {v1}, Lch/kingdoms/ndk/NdkTextLoader;->getNetworkTxt(I)Ljava/lang/String;

    move-result-object v0

    .line 110
    .restart local v0    # "txt":Ljava/lang/String;
    goto :goto_0

    .line 112
    .end local v0    # "txt":Ljava/lang/String;
    :pswitch_8
    invoke-static {v3}, Lch/kingdoms/ndk/NdkTextLoader;->getNetworkTxt(I)Ljava/lang/String;

    move-result-object v0

    .line 113
    .restart local v0    # "txt":Ljava/lang/String;
    goto :goto_0

    .line 115
    .end local v0    # "txt":Ljava/lang/String;
    :pswitch_9
    const/16 v1, 0x60

    invoke-static {v1}, Lch/kingdoms/ndk/NdkTextLoader;->getNetworkTxt(I)Ljava/lang/String;

    move-result-object v0

    .line 117
    .restart local v0    # "txt":Ljava/lang/String;
    goto :goto_0

    .line 119
    .end local v0    # "txt":Ljava/lang/String;
    :pswitch_a
    invoke-static {v2}, Lch/kingdoms/ndk/NdkTextLoader;->getGameMenuTxt(I)Ljava/lang/String;

    move-result-object v0

    .line 120
    .restart local v0    # "txt":Ljava/lang/String;
    goto :goto_0

    .line 122
    .end local v0    # "txt":Ljava/lang/String;
    :pswitch_b
    const/16 v1, 0x5f

    invoke-static {v1}, Lch/kingdoms/ndk/NdkTextLoader;->getNetworkTxt(I)Ljava/lang/String;

    move-result-object v0

    .line 123
    .restart local v0    # "txt":Ljava/lang/String;
    goto :goto_0

    .line 125
    .end local v0    # "txt":Ljava/lang/String;
    :pswitch_c
    invoke-static {v4}, Lch/kingdoms/ndk/NdkTextLoader;->getNetworkTxt(I)Ljava/lang/String;

    move-result-object v0

    .line 126
    .restart local v0    # "txt":Ljava/lang/String;
    goto :goto_0

    .line 128
    .end local v0    # "txt":Ljava/lang/String;
    :pswitch_d
    const/16 v1, 0x51

    invoke-static {v1}, Lch/kingdoms/ndk/NdkTextLoader;->getGameMenuTxt(I)Ljava/lang/String;

    move-result-object v0

    .line 129
    .restart local v0    # "txt":Ljava/lang/String;
    goto :goto_0

    .line 131
    .end local v0    # "txt":Ljava/lang/String;
    :pswitch_e
    const/16 v1, 0x53

    invoke-static {v1}, Lch/kingdoms/ndk/NdkTextLoader;->getNetworkTxt(I)Ljava/lang/String;

    move-result-object v0

    .line 132
    .restart local v0    # "txt":Ljava/lang/String;
    goto :goto_0

    .line 134
    .end local v0    # "txt":Ljava/lang/String;
    :pswitch_f
    const/16 v1, 0x64

    invoke-static {v1}, Lch/kingdoms/ndk/NdkTextLoader;->getNetworkTxt(I)Ljava/lang/String;

    move-result-object v0

    .line 135
    .restart local v0    # "txt":Ljava/lang/String;
    goto :goto_0

    .line 137
    .end local v0    # "txt":Ljava/lang/String;
    :pswitch_10
    const/16 v1, 0xfb

    invoke-static {v1}, Lch/kingdoms/ndk/NdkTextLoader;->getGameMenuTxt(I)Ljava/lang/String;

    move-result-object v0

    .line 138
    .restart local v0    # "txt":Ljava/lang/String;
    goto :goto_0

    .line 140
    .end local v0    # "txt":Ljava/lang/String;
    :pswitch_11
    const/16 v1, 0x6d

    invoke-static {v1}, Lch/kingdoms/ndk/NdkTextLoader;->getNetworkTxt(I)Ljava/lang/String;

    move-result-object v0

    .line 141
    .restart local v0    # "txt":Ljava/lang/String;
    goto :goto_0

    .line 143
    .end local v0    # "txt":Ljava/lang/String;
    :pswitch_12
    const/16 v1, 0x17

    invoke-static {v1}, Lch/kingdoms/ndk/NdkTextLoader;->getNetworkTxt(I)Ljava/lang/String;

    move-result-object v0

    .line 144
    .restart local v0    # "txt":Ljava/lang/String;
    goto :goto_0

    .line 146
    .end local v0    # "txt":Ljava/lang/String;
    :pswitch_13
    const-string v0, "RESULT_NO_DATA"

    .line 147
    .restart local v0    # "txt":Ljava/lang/String;
    goto :goto_0

    .line 149
    .end local v0    # "txt":Ljava/lang/String;
    :pswitch_14
    const-string v0, "RESULT_NO_EQUAL_ITEM"

    .line 150
    .restart local v0    # "txt":Ljava/lang/String;
    goto/16 :goto_0

    .line 152
    .end local v0    # "txt":Ljava/lang/String;
    :pswitch_15
    const-string v0, "RESULT_NO_EVENT"

    .line 153
    .restart local v0    # "txt":Ljava/lang/String;
    goto/16 :goto_0

    .line 155
    .end local v0    # "txt":Ljava/lang/String;
    :pswitch_16
    const/16 v1, 0x5e

    invoke-static {v1}, Lch/kingdoms/ndk/NdkTextLoader;->getNetworkTxt(I)Ljava/lang/String;

    move-result-object v0

    .line 156
    .restart local v0    # "txt":Ljava/lang/String;
    goto/16 :goto_0

    .line 159
    .end local v0    # "txt":Ljava/lang/String;
    :pswitch_17
    invoke-static {v2}, Lch/kingdoms/ndk/NdkTextLoader;->getNetworkTxt(I)Ljava/lang/String;

    move-result-object v0

    .line 160
    .restart local v0    # "txt":Ljava/lang/String;
    goto/16 :goto_0

    .line 162
    .end local v0    # "txt":Ljava/lang/String;
    :pswitch_18
    const/16 v1, 0x40

    invoke-static {v1}, Lch/kingdoms/ndk/NdkTextLoader;->getNetworkTxt(I)Ljava/lang/String;

    move-result-object v0

    .line 163
    .restart local v0    # "txt":Ljava/lang/String;
    goto/16 :goto_0

    .line 165
    .end local v0    # "txt":Ljava/lang/String;
    :pswitch_19
    const-string v0, "RESULT_OVERWRITE"

    .line 166
    .restart local v0    # "txt":Ljava/lang/String;
    goto/16 :goto_0

    .line 168
    .end local v0    # "txt":Ljava/lang/String;
    :pswitch_1a
    invoke-static {v4}, Lch/kingdoms/ndk/NdkTextLoader;->getNetworkTxt(I)Ljava/lang/String;

    move-result-object v0

    .line 169
    .restart local v0    # "txt":Ljava/lang/String;
    goto/16 :goto_0

    .line 171
    .end local v0    # "txt":Ljava/lang/String;
    :pswitch_1b
    invoke-static {v2}, Lch/kingdoms/ndk/NdkTextLoader;->getNetworkTxt(I)Ljava/lang/String;

    move-result-object v0

    .line 172
    .restart local v0    # "txt":Ljava/lang/String;
    goto/16 :goto_0

    .line 174
    .end local v0    # "txt":Ljava/lang/String;
    :pswitch_1c
    invoke-static {v2}, Lch/kingdoms/ndk/NdkTextLoader;->getNetworkTxt(I)Ljava/lang/String;

    move-result-object v0

    .line 175
    .restart local v0    # "txt":Ljava/lang/String;
    goto/16 :goto_0

    .line 177
    .end local v0    # "txt":Ljava/lang/String;
    :pswitch_1d
    const/16 v1, 0x54

    invoke-static {v1}, Lch/kingdoms/ndk/NdkTextLoader;->getNetworkTxt(I)Ljava/lang/String;

    move-result-object v0

    .line 178
    .restart local v0    # "txt":Ljava/lang/String;
    goto/16 :goto_0

    .line 180
    .end local v0    # "txt":Ljava/lang/String;
    :pswitch_1e
    const-string v0, "ALREADY REGISTERED"

    .line 181
    .restart local v0    # "txt":Ljava/lang/String;
    goto/16 :goto_0

    .line 184
    .end local v0    # "txt":Ljava/lang/String;
    :cond_0
    invoke-static {}, Lch/android/api/ui/ChViewGen;->closePopUpView()V

    .line 183
    :pswitch_1f
    invoke-static {}, Lch/android/api/ui/ChViewGen;->getEventLayerLevel()I

    move-result v1

    if-nez v1, :cond_0

    .line 186
    iget-object v1, p0, Lch/kingdoms/android/ui/NetworkUi$1;->this$0:Lch/kingdoms/android/ui/NetworkUi;

    invoke-static {v1}, Lch/kingdoms/android/ui/NetworkUi;->access$13(Lch/kingdoms/android/ui/NetworkUi;)Lch/kingdoms/android/ui/IGameMenu;

    move-result-object v1

    invoke-interface {v1}, Lch/kingdoms/android/ui/IGameMenu;->showViewInCenter()V

    .line 187
    const/4 v1, 0x1

    invoke-static {v1}, Lch/kingdoms/ndk/NdkTextLoader;->getNetworkTxt(I)Ljava/lang/String;

    move-result-object v0

    .line 188
    .restart local v0    # "txt":Ljava/lang/String;
    goto/16 :goto_0

    .line 89
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
