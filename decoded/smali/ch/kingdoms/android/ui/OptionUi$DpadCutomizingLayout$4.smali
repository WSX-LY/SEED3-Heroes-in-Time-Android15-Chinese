.class Lch/kingdoms/android/ui/OptionUi$DpadCutomizingLayout$4;
.super Ljava/lang/Object;
.source "OptionUi.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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

.field private final synthetic val$alphaSeekBar:Landroid/widget/SeekBar;


# direct methods
.method constructor <init>(Lch/kingdoms/android/ui/OptionUi$DpadCutomizingLayout;Landroid/widget/SeekBar;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lch/kingdoms/android/ui/OptionUi$DpadCutomizingLayout$4;->this$1:Lch/kingdoms/android/ui/OptionUi$DpadCutomizingLayout;

    iput-object p2, p0, Lch/kingdoms/android/ui/OptionUi$DpadCutomizingLayout$4;->val$alphaSeekBar:Landroid/widget/SeekBar;

    .line 411
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 416
    invoke-static {}, Lch/kingdoms/android/db/DBAdapter;->getInstance()Lch/kingdoms/android/db/DBAdapter;

    move-result-object v0

    .line 417
    .local v0, "dba":Lch/kingdoms/android/db/DBAdapter;
    iget-object v1, p0, Lch/kingdoms/android/ui/OptionUi$DpadCutomizingLayout$4;->this$1:Lch/kingdoms/android/ui/OptionUi$DpadCutomizingLayout;

    invoke-static {v1}, Lch/kingdoms/android/ui/OptionUi$DpadCutomizingLayout;->access$0(Lch/kingdoms/android/ui/OptionUi$DpadCutomizingLayout;)Lch/kingdoms/android/dpad/DpadCustomizingView;

    move-result-object v1

    invoke-virtual {v1}, Lch/kingdoms/android/dpad/DpadCustomizingView;->getDirPosition()Landroid/graphics/Point;

    move-result-object v1

    invoke-virtual {v0, v1}, Lch/kingdoms/android/db/DBAdapter;->setDirPosition(Landroid/graphics/Point;)V

    .line 418
    iget-object v1, p0, Lch/kingdoms/android/ui/OptionUi$DpadCutomizingLayout$4;->this$1:Lch/kingdoms/android/ui/OptionUi$DpadCutomizingLayout;

    invoke-static {v1}, Lch/kingdoms/android/ui/OptionUi$DpadCutomizingLayout;->access$0(Lch/kingdoms/android/ui/OptionUi$DpadCutomizingLayout;)Lch/kingdoms/android/dpad/DpadCustomizingView;

    move-result-object v1

    invoke-virtual {v1}, Lch/kingdoms/android/dpad/DpadCustomizingView;->getFirePosition()Landroid/graphics/Point;

    move-result-object v1

    invoke-virtual {v0, v1}, Lch/kingdoms/android/db/DBAdapter;->setFirePosition(Landroid/graphics/Point;)V

    .line 419
    iget-object v1, p0, Lch/kingdoms/android/ui/OptionUi$DpadCutomizingLayout$4;->this$1:Lch/kingdoms/android/ui/OptionUi$DpadCutomizingLayout;

    invoke-static {v1}, Lch/kingdoms/android/ui/OptionUi$DpadCutomizingLayout;->access$0(Lch/kingdoms/android/ui/OptionUi$DpadCutomizingLayout;)Lch/kingdoms/android/dpad/DpadCustomizingView;

    move-result-object v1

    invoke-virtual {v1}, Lch/kingdoms/android/dpad/DpadCustomizingView;->getSlotPositions()[Landroid/graphics/Point;

    move-result-object v1

    invoke-virtual {v0, v1}, Lch/kingdoms/android/db/DBAdapter;->setSlotPosition([Landroid/graphics/Point;)V

    .line 420
    iget-object v1, p0, Lch/kingdoms/android/ui/OptionUi$DpadCutomizingLayout$4;->val$alphaSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v1

    mul-int/lit8 v1, v1, 0x19

    add-int/lit8 v1, v1, 0x5

    invoke-virtual {v0, v1}, Lch/kingdoms/android/db/DBAdapter;->setAlpha(I)V

    .line 421
    invoke-static {}, Lch/android/api/ui/ChViewGen;->closePopUpView()V

    .line 422
    return-void
.end method
