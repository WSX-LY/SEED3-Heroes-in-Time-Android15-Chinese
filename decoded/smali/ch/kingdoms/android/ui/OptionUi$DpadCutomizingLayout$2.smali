.class Lch/kingdoms/android/ui/OptionUi$DpadCutomizingLayout$2;
.super Ljava/lang/Object;
.source "OptionUi.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lch/kingdoms/android/ui/OptionUi$DpadCutomizingLayout;-><init>(Lch/kingdoms/android/ui/OptionUi;Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lch/kingdoms/android/ui/OptionUi$DpadCutomizingLayout;


# direct methods
.method constructor <init>(Lch/kingdoms/android/ui/OptionUi$DpadCutomizingLayout;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lch/kingdoms/android/ui/OptionUi$DpadCutomizingLayout$2;->this$1:Lch/kingdoms/android/ui/OptionUi$DpadCutomizingLayout;

    .line 384
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 2
    .param p1, "seekBar"    # Landroid/widget/SeekBar;
    .param p2, "progress"    # I
    .param p3, "fromUser"    # Z

    .prologue
    .line 399
    iget-object v0, p0, Lch/kingdoms/android/ui/OptionUi$DpadCutomizingLayout$2;->this$1:Lch/kingdoms/android/ui/OptionUi$DpadCutomizingLayout;

    invoke-static {v0}, Lch/kingdoms/android/ui/OptionUi$DpadCutomizingLayout;->access$0(Lch/kingdoms/android/ui/OptionUi$DpadCutomizingLayout;)Lch/kingdoms/android/dpad/DpadCustomizingView;

    move-result-object v0

    mul-int/lit8 v1, p2, 0x19

    add-int/lit8 v1, v1, 0x5

    invoke-virtual {v0, v1}, Lch/kingdoms/android/dpad/DpadCustomizingView;->setButtonsAlpha(I)V

    .line 400
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .prologue
    .line 393
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .prologue
    .line 388
    return-void
.end method
