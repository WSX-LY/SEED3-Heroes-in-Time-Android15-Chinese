.class Lch/kingdoms/android/ui/OptionUi$4;
.super Ljava/lang/Object;
.source "OptionUi.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lch/kingdoms/android/ui/OptionUi;-><init>(Landroid/app/Activity;Lch/android/api/util/DisplayInfo;IZLandroid/view/View$OnClickListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lch/kingdoms/android/ui/OptionUi;


# direct methods
.method constructor <init>(Lch/kingdoms/android/ui/OptionUi;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lch/kingdoms/android/ui/OptionUi$4;->this$0:Lch/kingdoms/android/ui/OptionUi;

    .line 156
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 160
    iget-object v0, p0, Lch/kingdoms/android/ui/OptionUi$4;->this$0:Lch/kingdoms/android/ui/OptionUi;

    invoke-static {v0}, Lch/kingdoms/android/ui/OptionUi;->access$1(Lch/kingdoms/android/ui/OptionUi;)Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lch/kingdoms/android/ui/OptionUi$DpadCutomizingLayout;

    iget-object v2, p0, Lch/kingdoms/android/ui/OptionUi$4;->this$0:Lch/kingdoms/android/ui/OptionUi;

    iget-object v3, p0, Lch/kingdoms/android/ui/OptionUi$4;->this$0:Lch/kingdoms/android/ui/OptionUi;

    invoke-static {v3}, Lch/kingdoms/android/ui/OptionUi;->access$1(Lch/kingdoms/android/ui/OptionUi;)Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lch/kingdoms/android/ui/OptionUi$DpadCutomizingLayout;-><init>(Lch/kingdoms/android/ui/OptionUi;Landroid/content/Context;)V

    invoke-static {v0, v1}, Lch/android/api/ui/ChViewGen;->popUp(Landroid/app/Activity;Landroid/view/View;)Landroid/view/View;

    .line 161
    return-void
.end method
