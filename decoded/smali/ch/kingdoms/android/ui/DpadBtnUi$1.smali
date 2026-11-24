.class Lch/kingdoms/android/ui/DpadBtnUi$1;
.super Ljava/lang/Object;
.source "DpadBtnUi.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lch/kingdoms/android/ui/DpadBtnUi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lch/kingdoms/android/ui/DpadBtnUi;


# direct methods
.method constructor <init>(Lch/kingdoms/android/ui/DpadBtnUi;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lch/kingdoms/android/ui/DpadBtnUi$1;->this$0:Lch/kingdoms/android/ui/DpadBtnUi;

    .line 135
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/16 v5, 0x455

    const/16 v4, 0x451

    const/16 v3, 0x44f

    const/16 v2, 0x3e8

    const/16 v1, 0x3e7

    .line 139
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 173
    :goto_0
    :pswitch_0
    return-void

    .line 141
    :pswitch_1
    const/16 v0, 0x457

    invoke-static {v2, v0}, Lch/kingdoms/ndk/NdkInputManager;->input(II)V

    .line 142
    const/16 v0, 0x457

    invoke-static {v1, v0}, Lch/kingdoms/ndk/NdkInputManager;->input(II)V

    goto :goto_0

    .line 145
    :pswitch_2
    invoke-static {v2, v5}, Lch/kingdoms/ndk/NdkInputManager;->input(II)V

    .line 146
    invoke-static {v1, v5}, Lch/kingdoms/ndk/NdkInputManager;->input(II)V

    goto :goto_0

    .line 149
    :pswitch_3
    const/16 v0, 0x45a

    invoke-static {v2, v0}, Lch/kingdoms/ndk/NdkInputManager;->input(II)V

    .line 150
    const/16 v0, 0x45a

    invoke-static {v1, v0}, Lch/kingdoms/ndk/NdkInputManager;->input(II)V

    goto :goto_0

    .line 153
    :pswitch_4
    const/16 v0, 0x459

    invoke-static {v2, v0}, Lch/kingdoms/ndk/NdkInputManager;->input(II)V

    .line 154
    const/16 v0, 0x459

    invoke-static {v1, v0}, Lch/kingdoms/ndk/NdkInputManager;->input(II)V

    goto :goto_0

    .line 157
    :pswitch_5
    invoke-static {v2, v4}, Lch/kingdoms/ndk/NdkInputManager;->input(II)V

    .line 158
    invoke-static {v1, v4}, Lch/kingdoms/ndk/NdkInputManager;->input(II)V

    goto :goto_0

    .line 161
    :pswitch_6
    invoke-static {v2, v3}, Lch/kingdoms/ndk/NdkInputManager;->input(II)V

    .line 162
    invoke-static {v1, v3}, Lch/kingdoms/ndk/NdkInputManager;->input(II)V

    goto :goto_0

    .line 165
    :pswitch_7
    const/16 v0, 0x458

    invoke-static {v2, v0}, Lch/kingdoms/ndk/NdkInputManager;->input(II)V

    .line 166
    const/16 v0, 0x458

    invoke-static {v1, v0}, Lch/kingdoms/ndk/NdkInputManager;->input(II)V

    goto :goto_0

    .line 169
    :pswitch_8
    const/16 v0, 0x45b

    invoke-static {v2, v0}, Lch/kingdoms/ndk/NdkInputManager;->input(II)V

    .line 170
    const/16 v0, 0x45b

    invoke-static {v1, v0}, Lch/kingdoms/ndk/NdkInputManager;->input(II)V

    goto :goto_0

    .line 139
    :pswitch_data_0
    .packed-switch 0x2711
        :pswitch_8
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method
