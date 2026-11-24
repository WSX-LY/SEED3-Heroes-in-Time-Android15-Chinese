.class public Lch/android/api/ui/ChTextSlimButton;
.super Lch/android/api/ui/ChSlimImageButton;
.source "ChTextSlimButton.java"


# instance fields
.field private final TXT:Ljava/lang/String;

.field private final TXT_PAINT:Landroid/graphics/Paint;

.field private final pointX:I

.field private final pointY:I


# direct methods
.method public constructor <init>(Landroid/content/Context;IILjava/lang/String;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "_upDrawable"    # I
    .param p3, "_downDrawable"    # I
    .param p4, "_txt"    # Ljava/lang/String;

    .prologue
    .line 17
    invoke-direct {p0, p1, p2, p3}, Lch/android/api/ui/ChSlimImageButton;-><init>(Landroid/content/Context;II)V

    .line 10
    invoke-static {}, Lch/android/api/util/TextPaints;->getDefault()Landroid/graphics/Paint;

    move-result-object v0

    iput-object v0, p0, Lch/android/api/ui/ChTextSlimButton;->TXT_PAINT:Landroid/graphics/Paint;

    .line 19
    iput-object p4, p0, Lch/android/api/ui/ChTextSlimButton;->TXT:Ljava/lang/String;

    .line 20
    invoke-virtual {p0}, Lch/android/api/ui/ChTextSlimButton;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v1, p0, Lch/android/api/ui/ChTextSlimButton;->f_upDrawable:I

    invoke-static {v0, v1}, Lch/android/api/util/BmpUtil;->getBmpWidth(Landroid/content/res/Resources;I)I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lch/android/api/ui/ChTextSlimButton;->pointX:I

    .line 21
    invoke-virtual {p0}, Lch/android/api/ui/ChTextSlimButton;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v1, p0, Lch/android/api/ui/ChTextSlimButton;->f_upDrawable:I

    invoke-static {v0, v1}, Lch/android/api/util/BmpUtil;->getBmpHeight(Landroid/content/res/Resources;I)I

    move-result v0

    mul-int/lit8 v0, v0, 0x7

    div-int/lit8 v0, v0, 0xa

    iput v0, p0, Lch/android/api/ui/ChTextSlimButton;->pointY:I

    .line 22
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 31
    invoke-super {p0, p1}, Lch/android/api/ui/ChSlimImageButton;->onDraw(Landroid/graphics/Canvas;)V

    .line 32
    iget-object v0, p0, Lch/android/api/ui/ChTextSlimButton;->TXT:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 33
    iget-object v0, p0, Lch/android/api/ui/ChTextSlimButton;->TXT:Ljava/lang/String;

    iget v1, p0, Lch/android/api/ui/ChTextSlimButton;->pointX:I

    int-to-float v1, v1

    iget v2, p0, Lch/android/api/ui/ChTextSlimButton;->pointY:I

    int-to-float v2, v2

    iget-object v3, p0, Lch/android/api/ui/ChTextSlimButton;->TXT_PAINT:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 35
    :cond_0
    return-void
.end method

.method public setTextColor(I)V
    .locals 1
    .param p1, "color"    # I

    .prologue
    .line 25
    iget-object v0, p0, Lch/android/api/ui/ChTextSlimButton;->TXT_PAINT:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 26
    return-void
.end method
