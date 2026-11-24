.class public final Lch/kingdoms/ndk/NdkVibManager;
.super Ljava/lang/Object;
.source "NdkVibManager.java"


# static fields
.field private static final VIBE_TIME:I = 0x64

.field private static f_vib:Landroid/os/Vibrator;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static init(Landroid/content/Context;)V
    .locals 1
    .param p0, "_context"    # Landroid/content/Context;

    .prologue
    .line 12
    const-string v0, "vibrator"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    sput-object v0, Lch/kingdoms/ndk/NdkVibManager;->f_vib:Landroid/os/Vibrator;

    .line 13
    return-void
.end method

.method public static vibe(I)V
    .locals 3
    .param p0, "_time"    # I

    .prologue
    .line 16
    sget-object v0, Lch/kingdoms/ndk/NdkVibManager;->f_vib:Landroid/os/Vibrator;

    mul-int/lit8 v1, p0, 0x64

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/os/Vibrator;->vibrate(J)V

    .line 17
    return-void
.end method
