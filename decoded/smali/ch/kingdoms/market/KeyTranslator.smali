.class public Lch/kingdoms/market/KeyTranslator;
.super Ljava/lang/Object;
.source "KeyTranslator.java"


# static fields
.field public static final CLR:I = 0x1c

.field public static final DOWN:I = 0x14

.field public static final FIRE:I = 0x2f

.field public static final KEY_PRESS:I = 0x3e8

.field public static final KEY_RELEASE:I = 0x3e7

.field public static final LEFT:I = 0x15

.field public static final POUND:I = 0x12

.field public static final RIGHT:I = 0x16

.field public static final UP:I = 0x13


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    return-void
.end method


# virtual methods
.method public translateKey(II)I
    .locals 1
    .param p1, "type_"    # I
    .param p2, "input_"    # I

    .prologue
    .line 27
    sparse-switch p2, :sswitch_data_0

    .line 62
    :goto_0
    const/4 v0, 0x0

    return v0

    .line 31
    :sswitch_0
    const/16 v0, 0x45f

    invoke-static {p1, v0}, Lch/kingdoms/ndk/NdkInputManager;->input(II)V

    goto :goto_0

    .line 35
    :sswitch_1
    const/16 v0, 0x460

    invoke-static {p1, v0}, Lch/kingdoms/ndk/NdkInputManager;->input(II)V

    goto :goto_0

    .line 39
    :sswitch_2
    const/16 v0, 0x44d

    invoke-static {p1, v0}, Lch/kingdoms/ndk/NdkInputManager;->input(II)V

    goto :goto_0

    .line 43
    :sswitch_3
    const/16 v0, 0x44c

    invoke-static {p1, v0}, Lch/kingdoms/ndk/NdkInputManager;->input(II)V

    goto :goto_0

    .line 48
    :sswitch_4
    const/16 v0, 0x45b

    invoke-static {p1, v0}, Lch/kingdoms/ndk/NdkInputManager;->input(II)V

    goto :goto_0

    .line 52
    :sswitch_5
    const/16 v0, 0x45c

    invoke-static {p1, v0}, Lch/kingdoms/ndk/NdkInputManager;->input(II)V

    goto :goto_0

    .line 56
    :sswitch_6
    const/16 v0, 0x45a

    invoke-static {p1, v0}, Lch/kingdoms/ndk/NdkInputManager;->input(II)V

    goto :goto_0

    .line 27
    nop

    :sswitch_data_0
    .sparse-switch
        0x12 -> :sswitch_6
        0x13 -> :sswitch_0
        0x14 -> :sswitch_1
        0x15 -> :sswitch_2
        0x16 -> :sswitch_3
        0x1c -> :sswitch_5
        0x2f -> :sswitch_4
    .end sparse-switch
.end method
