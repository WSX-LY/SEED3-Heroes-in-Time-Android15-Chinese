.class Lch/android/api/ui/ChItemInfoView$ItemButton;
.super Lch/android/api/ui/ChImageButton;
.source "ChItemInfoView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lch/android/api/ui/ChItemInfoView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ItemButton"
.end annotation


# instance fields
.field final synthetic this$0:Lch/android/api/ui/ChItemInfoView;


# direct methods
.method public constructor <init>(Lch/android/api/ui/ChItemInfoView;Landroid/content/Context;II)V
    .locals 0
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "_upDrawable"    # I
    .param p4, "_downDrawable"    # I

    .prologue
    .line 617
    iput-object p1, p0, Lch/android/api/ui/ChItemInfoView$ItemButton;->this$0:Lch/android/api/ui/ChItemInfoView;

    .line 618
    invoke-direct {p0, p2, p3, p4}, Lch/android/api/ui/ChImageButton;-><init>(Landroid/content/Context;II)V

    .line 620
    return-void
.end method


# virtual methods
.method protected onMeasure(II)V
    .locals 3
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 625
    invoke-super {p0, p1, p2}, Lch/android/api/ui/ChImageButton;->onMeasure(II)V

    .line 626
    invoke-virtual {p0}, Lch/android/api/ui/ChItemInfoView$ItemButton;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v1, p0, Lch/android/api/ui/ChItemInfoView$ItemButton;->f_upDrawable:I

    invoke-static {v0, v1}, Lch/android/api/util/BmpUtil;->getBmpWidth(Landroid/content/res/Resources;I)I

    move-result v0

    .line 627
    invoke-virtual {p0}, Lch/android/api/ui/ChItemInfoView$ItemButton;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget v2, p0, Lch/android/api/ui/ChItemInfoView$ItemButton;->f_upDrawable:I

    invoke-static {v1, v2}, Lch/android/api/util/BmpUtil;->getBmpHeight(Landroid/content/res/Resources;I)I

    move-result v1

    .line 626
    invoke-super {p0, v0, v1}, Lch/android/api/ui/ChImageButton;->setMeasuredDimension(II)V

    .line 628
    return-void
.end method
