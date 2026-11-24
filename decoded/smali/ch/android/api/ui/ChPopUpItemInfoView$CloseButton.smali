.class Lch/android/api/ui/ChPopUpItemInfoView$CloseButton;
.super Lch/android/api/ui/ChImageButton;
.source "ChPopUpItemInfoView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lch/android/api/ui/ChPopUpItemInfoView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CloseButton"
.end annotation


# instance fields
.field final synthetic this$0:Lch/android/api/ui/ChPopUpItemInfoView;


# direct methods
.method public constructor <init>(Lch/android/api/ui/ChPopUpItemInfoView;Landroid/content/Context;)V
    .locals 1
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    const v0, 0x7f02007a

    .line 79
    iput-object p1, p0, Lch/android/api/ui/ChPopUpItemInfoView$CloseButton;->this$0:Lch/android/api/ui/ChPopUpItemInfoView;

    .line 80
    invoke-direct {p0, p2, v0, v0}, Lch/android/api/ui/ChImageButton;-><init>(Landroid/content/Context;II)V

    .line 82
    return-void
.end method


# virtual methods
.method protected onMeasure(II)V
    .locals 3
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const v2, 0x7f02007a

    .line 87
    invoke-super {p0, p1, p2}, Lch/android/api/ui/ChImageButton;->onMeasure(II)V

    .line 88
    invoke-virtual {p0}, Lch/android/api/ui/ChPopUpItemInfoView$CloseButton;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0, v2}, Lch/android/api/util/BmpUtil;->getBmpWidth(Landroid/content/res/Resources;I)I

    move-result v0

    .line 89
    invoke-virtual {p0}, Lch/android/api/ui/ChPopUpItemInfoView$CloseButton;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v1, v2}, Lch/android/api/util/BmpUtil;->getBmpHeight(Landroid/content/res/Resources;I)I

    move-result v1

    .line 88
    invoke-super {p0, v0, v1}, Lch/android/api/ui/ChImageButton;->setMeasuredDimension(II)V

    .line 90
    return-void
.end method
