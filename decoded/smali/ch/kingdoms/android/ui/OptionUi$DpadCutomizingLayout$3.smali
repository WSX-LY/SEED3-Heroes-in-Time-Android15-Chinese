.class Lch/kingdoms/android/ui/OptionUi$DpadCutomizingLayout$3;
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


# direct methods
.method constructor <init>(Lch/kingdoms/android/ui/OptionUi$DpadCutomizingLayout;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lch/kingdoms/android/ui/OptionUi$DpadCutomizingLayout$3;->this$1:Lch/kingdoms/android/ui/OptionUi$DpadCutomizingLayout;

    .line 403
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 407
    iget-object v0, p0, Lch/kingdoms/android/ui/OptionUi$DpadCutomizingLayout$3;->this$1:Lch/kingdoms/android/ui/OptionUi$DpadCutomizingLayout;

    invoke-static {v0}, Lch/kingdoms/android/ui/OptionUi$DpadCutomizingLayout;->access$0(Lch/kingdoms/android/ui/OptionUi$DpadCutomizingLayout;)Lch/kingdoms/android/dpad/DpadCustomizingView;

    move-result-object v0

    invoke-virtual {v0}, Lch/kingdoms/android/dpad/DpadCustomizingView;->resetPositions()V

    .line 408
    return-void
.end method
