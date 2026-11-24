.class public Lch/android/api/ui/ChStatButton;
.super Lch/android/api/ui/ChOnOffButton;
.source "ChStatButton.java"


# instance fields
.field private final TXT_PAINT:Landroid/graphics/Paint;

.field private m_stat:Ljava/lang/String;

.field private m_txt:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;II)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "_upDrawable"    # I
    .param p3, "_downDrawable"    # I

    .prologue
    .line 15
    invoke-direct {p0, p1, p2, p3}, Lch/android/api/ui/ChOnOffButton;-><init>(Landroid/content/Context;II)V

    .line 12
    invoke-static {}, Lch/android/api/util/TextPaints;->getDefault()Landroid/graphics/Paint;

    move-result-object v0

    iput-object v0, p0, Lch/android/api/ui/ChStatButton;->TXT_PAINT:Landroid/graphics/Paint;

    .line 17
    const/4 v0, 0x0

    iput-object v0, p0, Lch/android/api/ui/ChStatButton;->m_txt:Ljava/lang/String;

    .line 18
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 29
    invoke-super {p0, p1}, Lch/android/api/ui/ChOnOffButton;->onDraw(Landroid/graphics/Canvas;)V

    .line 30
    iget-object v0, p0, Lch/android/api/ui/ChStatButton;->m_txt:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 31
    iget-object v0, p0, Lch/android/api/ui/ChStatButton;->m_txt:Ljava/lang/String;

    invoke-virtual {p0}, Lch/android/api/ui/ChStatButton;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-virtual {p0}, Lch/android/api/ui/ChStatButton;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    iget-object v3, p0, Lch/android/api/ui/ChStatButton;->TXT_PAINT:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 32
    iget-object v0, p0, Lch/android/api/ui/ChStatButton;->m_stat:Ljava/lang/String;

    invoke-virtual {p0}, Lch/android/api/ui/ChStatButton;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-virtual {p0}, Lch/android/api/ui/ChStatButton;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    iget-object v3, p0, Lch/android/api/ui/ChStatButton;->TXT_PAINT:Landroid/graphics/Paint;

    invoke-virtual {v3}, Landroid/graphics/Paint;->getTextSize()F

    move-result v3

    add-float/2addr v2, v3

    iget-object v3, p0, Lch/android/api/ui/ChStatButton;->TXT_PAINT:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 34
    :cond_0
    return-void
.end method

.method public setText(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "_txt"    # Ljava/lang/String;
    .param p2, "_stat"    # Ljava/lang/String;

    .prologue
    .line 21
    iput-object p1, p0, Lch/android/api/ui/ChStatButton;->m_txt:Ljava/lang/String;

    .line 22
    iput-object p2, p0, Lch/android/api/ui/ChStatButton;->m_stat:Ljava/lang/String;

    .line 23
    invoke-virtual {p0}, Lch/android/api/ui/ChStatButton;->invalidate()V

    .line 24
    return-void
.end method
