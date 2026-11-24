.class public Lch/android/api/ui/ChTypingAndScrollTextView;
.super Landroid/widget/ImageView;
.source "ChTypingAndScrollTextView.java"


# instance fields
.field private final H:I

.field private final W:I

.field private curIndex:I

.field private curLine:I

.field private delayMills:I

.field private isEnd:Z

.field private isTyping:Z

.field private final onEndRunnable:Ljava/lang/Runnable;

.field private final paint:Landroid/graphics/Paint;

.field private scrollY:I

.field private final textDrawRunnable:Ljava/lang/Runnable;

.field private final textList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private texts:[Ljava/lang/String;

.field private final uiHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;IILjava/lang/Runnable;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "w"    # I
    .param p3, "h"    # I
    .param p4, "onEndRunnable"    # Ljava/lang/Runnable;

    .prologue
    .line 37
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 24
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lch/android/api/ui/ChTypingAndScrollTextView;->textList:Ljava/util/ArrayList;

    .line 87
    new-instance v0, Lch/android/api/ui/ChTypingAndScrollTextView$1;

    invoke-direct {v0, p0}, Lch/android/api/ui/ChTypingAndScrollTextView$1;-><init>(Lch/android/api/ui/ChTypingAndScrollTextView;)V

    iput-object v0, p0, Lch/android/api/ui/ChTypingAndScrollTextView;->textDrawRunnable:Ljava/lang/Runnable;

    .line 39
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lch/android/api/ui/ChTypingAndScrollTextView;->uiHandler:Landroid/os/Handler;

    .line 41
    iput p2, p0, Lch/android/api/ui/ChTypingAndScrollTextView;->W:I

    .line 42
    iput p3, p0, Lch/android/api/ui/ChTypingAndScrollTextView;->H:I

    .line 44
    iput-object p4, p0, Lch/android/api/ui/ChTypingAndScrollTextView;->onEndRunnable:Ljava/lang/Runnable;

    .line 46
    invoke-static {}, Lch/android/api/util/TextPaints;->getDefault()Landroid/graphics/Paint;

    move-result-object v0

    iput-object v0, p0, Lch/android/api/ui/ChTypingAndScrollTextView;->paint:Landroid/graphics/Paint;

    .line 47
    iget-object v0, p0, Lch/android/api/ui/ChTypingAndScrollTextView;->paint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 48
    iget-object v0, p0, Lch/android/api/ui/ChTypingAndScrollTextView;->paint:Landroid/graphics/Paint;

    invoke-static {}, Lch/android/api/util/TextPaints;->getBigNormalSize()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 49
    iget-object v0, p0, Lch/android/api/ui/ChTypingAndScrollTextView;->paint:Landroid/graphics/Paint;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 50
    iget-object v0, p0, Lch/android/api/ui/ChTypingAndScrollTextView;->paint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 51
    iget-object v0, p0, Lch/android/api/ui/ChTypingAndScrollTextView;->paint:Landroid/graphics/Paint;

    sget-object v1, Lch/android/api/util/TextPaints;->TYPE_FACE_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 53
    const/high16 v0, -0x1000000

    invoke-virtual {p0, v0}, Lch/android/api/ui/ChTypingAndScrollTextView;->setBackgroundColor(I)V

    .line 54
    return-void
.end method

.method static synthetic access$0(Lch/android/api/ui/ChTypingAndScrollTextView;)[Ljava/lang/String;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lch/android/api/ui/ChTypingAndScrollTextView;->texts:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1(Lch/android/api/ui/ChTypingAndScrollTextView;)Z
    .locals 1

    .prologue
    .line 28
    iget-boolean v0, p0, Lch/android/api/ui/ChTypingAndScrollTextView;->isTyping:Z

    return v0
.end method

.method static synthetic access$10(Lch/android/api/ui/ChTypingAndScrollTextView;)I
    .locals 1

    .prologue
    .line 27
    iget v0, p0, Lch/android/api/ui/ChTypingAndScrollTextView;->delayMills:I

    return v0
.end method

.method static synthetic access$11(Lch/android/api/ui/ChTypingAndScrollTextView;)I
    .locals 1

    .prologue
    .line 34
    iget v0, p0, Lch/android/api/ui/ChTypingAndScrollTextView;->scrollY:I

    return v0
.end method

.method static synthetic access$12(Lch/android/api/ui/ChTypingAndScrollTextView;)Landroid/graphics/Paint;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lch/android/api/ui/ChTypingAndScrollTextView;->paint:Landroid/graphics/Paint;

    return-object v0
.end method

.method static synthetic access$13(Lch/android/api/ui/ChTypingAndScrollTextView;)I
    .locals 1

    .prologue
    .line 19
    iget v0, p0, Lch/android/api/ui/ChTypingAndScrollTextView;->H:I

    return v0
.end method

.method static synthetic access$2(Lch/android/api/ui/ChTypingAndScrollTextView;)I
    .locals 1

    .prologue
    .line 32
    iget v0, p0, Lch/android/api/ui/ChTypingAndScrollTextView;->curIndex:I

    return v0
.end method

.method static synthetic access$3(Lch/android/api/ui/ChTypingAndScrollTextView;I)V
    .locals 0

    .prologue
    .line 32
    iput p1, p0, Lch/android/api/ui/ChTypingAndScrollTextView;->curIndex:I

    return-void
.end method

.method static synthetic access$4(Lch/android/api/ui/ChTypingAndScrollTextView;)I
    .locals 1

    .prologue
    .line 33
    iget v0, p0, Lch/android/api/ui/ChTypingAndScrollTextView;->curLine:I

    return v0
.end method

.method static synthetic access$5(Lch/android/api/ui/ChTypingAndScrollTextView;I)V
    .locals 0

    .prologue
    .line 33
    iput p1, p0, Lch/android/api/ui/ChTypingAndScrollTextView;->curLine:I

    return-void
.end method

.method static synthetic access$6(Lch/android/api/ui/ChTypingAndScrollTextView;Z)V
    .locals 0

    .prologue
    .line 29
    iput-boolean p1, p0, Lch/android/api/ui/ChTypingAndScrollTextView;->isEnd:Z

    return-void
.end method

.method static synthetic access$7(Lch/android/api/ui/ChTypingAndScrollTextView;)Ljava/lang/Runnable;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lch/android/api/ui/ChTypingAndScrollTextView;->onEndRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$8(Lch/android/api/ui/ChTypingAndScrollTextView;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lch/android/api/ui/ChTypingAndScrollTextView;->uiHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$9(Lch/android/api/ui/ChTypingAndScrollTextView;)Ljava/lang/Runnable;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lch/android/api/ui/ChTypingAndScrollTextView;->textDrawRunnable:Ljava/lang/Runnable;

    return-object v0
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 9
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/high16 v8, 0x437f0000    # 255.0f

    .line 149
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V

    .line 150
    iget-object v4, p0, Lch/android/api/ui/ChTypingAndScrollTextView;->texts:[Ljava/lang/String;

    if-eqz v4, :cond_0

    iget v4, p0, Lch/android/api/ui/ChTypingAndScrollTextView;->curLine:I

    iget-object v5, p0, Lch/android/api/ui/ChTypingAndScrollTextView;->texts:[Ljava/lang/String;

    array-length v5, v5

    if-ge v4, v5, :cond_0

    .line 151
    iget-boolean v4, p0, Lch/android/api/ui/ChTypingAndScrollTextView;->isTyping:Z

    if-eqz v4, :cond_2

    .line 152
    iget v4, p0, Lch/android/api/ui/ChTypingAndScrollTextView;->W:I

    div-int/lit8 v2, v4, 0x2

    .line 153
    .local v2, "x":I
    iget v4, p0, Lch/android/api/ui/ChTypingAndScrollTextView;->H:I

    div-int/lit8 v3, v4, 0x2

    .line 154
    .local v3, "y":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v4, p0, Lch/android/api/ui/ChTypingAndScrollTextView;->curLine:I

    if-lt v0, v4, :cond_1

    .line 158
    iget-object v4, p0, Lch/android/api/ui/ChTypingAndScrollTextView;->texts:[Ljava/lang/String;

    iget v5, p0, Lch/android/api/ui/ChTypingAndScrollTextView;->curLine:I

    aget-object v4, v4, v5

    const/4 v5, 0x0

    iget v6, p0, Lch/android/api/ui/ChTypingAndScrollTextView;->curIndex:I

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 159
    .local v1, "str":Ljava/lang/String;
    int-to-float v4, v2

    int-to-float v5, v3

    iget-object v6, p0, Lch/android/api/ui/ChTypingAndScrollTextView;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v4, v5, v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 181
    .end local v0    # "i":I
    .end local v1    # "str":Ljava/lang/String;
    .end local v2    # "x":I
    .end local v3    # "y":I
    :cond_0
    return-void

    .line 155
    .restart local v0    # "i":I
    .restart local v2    # "x":I
    .restart local v3    # "y":I
    :cond_1
    iget-object v4, p0, Lch/android/api/ui/ChTypingAndScrollTextView;->texts:[Ljava/lang/String;

    aget-object v4, v4, v0

    int-to-float v5, v2

    int-to-float v6, v3

    iget-object v7, p0, Lch/android/api/ui/ChTypingAndScrollTextView;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v4, v5, v6, v7}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 156
    int-to-float v4, v3

    iget-object v5, p0, Lch/android/api/ui/ChTypingAndScrollTextView;->paint:Landroid/graphics/Paint;

    invoke-virtual {v5}, Landroid/graphics/Paint;->getTextSize()F

    move-result v5

    add-float/2addr v4, v5

    float-to-int v3, v4

    .line 154
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 161
    .end local v0    # "i":I
    .end local v2    # "x":I
    .end local v3    # "y":I
    :cond_2
    iget v4, p0, Lch/android/api/ui/ChTypingAndScrollTextView;->W:I

    div-int/lit8 v2, v4, 0x2

    .line 162
    .restart local v2    # "x":I
    iget v3, p0, Lch/android/api/ui/ChTypingAndScrollTextView;->scrollY:I

    .line 163
    .restart local v3    # "y":I
    iget v4, p0, Lch/android/api/ui/ChTypingAndScrollTextView;->scrollY:I

    add-int/lit8 v4, v4, -0x2

    iput v4, p0, Lch/android/api/ui/ChTypingAndScrollTextView;->scrollY:I

    .line 164
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_1
    iget-object v4, p0, Lch/android/api/ui/ChTypingAndScrollTextView;->texts:[Ljava/lang/String;

    array-length v4, v4

    if-ge v0, v4, :cond_0

    .line 165
    iget v4, p0, Lch/android/api/ui/ChTypingAndScrollTextView;->H:I

    div-int/lit8 v4, v4, 0x4

    if-le v3, v4, :cond_3

    iget v4, p0, Lch/android/api/ui/ChTypingAndScrollTextView;->H:I

    mul-int/lit8 v4, v4, 0x3

    div-int/lit8 v4, v4, 0x4

    if-ge v3, v4, :cond_3

    .line 166
    iget v4, p0, Lch/android/api/ui/ChTypingAndScrollTextView;->H:I

    mul-int/lit8 v4, v4, 0x3

    div-int/lit8 v4, v4, 0x8

    if-ge v3, v4, :cond_4

    .line 167
    iget-object v4, p0, Lch/android/api/ui/ChTypingAndScrollTextView;->paint:Landroid/graphics/Paint;

    mul-int/lit8 v5, v3, 0x8

    int-to-float v5, v5

    iget v6, p0, Lch/android/api/ui/ChTypingAndScrollTextView;->H:I

    int-to-float v6, v6

    div-float/2addr v5, v6

    const/high16 v6, 0x40000000    # 2.0f

    sub-float/2addr v5, v6

    mul-float/2addr v5, v8

    float-to-int v5, v5

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 168
    iget-object v4, p0, Lch/android/api/ui/ChTypingAndScrollTextView;->texts:[Ljava/lang/String;

    aget-object v4, v4, v0

    int-to-float v5, v2

    int-to-float v6, v3

    iget-object v7, p0, Lch/android/api/ui/ChTypingAndScrollTextView;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v4, v5, v6, v7}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 177
    :cond_3
    :goto_2
    int-to-float v4, v3

    iget-object v5, p0, Lch/android/api/ui/ChTypingAndScrollTextView;->paint:Landroid/graphics/Paint;

    invoke-virtual {v5}, Landroid/graphics/Paint;->getTextSize()F

    move-result v5

    add-float/2addr v4, v5

    float-to-int v3, v4

    .line 164
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 169
    :cond_4
    iget v4, p0, Lch/android/api/ui/ChTypingAndScrollTextView;->H:I

    mul-int/lit8 v4, v4, 0x5

    div-int/lit8 v4, v4, 0x8

    if-le v3, v4, :cond_5

    .line 170
    iget-object v4, p0, Lch/android/api/ui/ChTypingAndScrollTextView;->paint:Landroid/graphics/Paint;

    const/high16 v5, 0x40c00000    # 6.0f

    mul-int/lit8 v6, v3, 0x8

    int-to-float v6, v6

    iget v7, p0, Lch/android/api/ui/ChTypingAndScrollTextView;->H:I

    int-to-float v7, v7

    div-float/2addr v6, v7

    sub-float/2addr v5, v6

    mul-float/2addr v5, v8

    float-to-int v5, v5

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 171
    iget-object v4, p0, Lch/android/api/ui/ChTypingAndScrollTextView;->texts:[Ljava/lang/String;

    aget-object v4, v4, v0

    int-to-float v5, v2

    int-to-float v6, v3

    iget-object v7, p0, Lch/android/api/ui/ChTypingAndScrollTextView;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v4, v5, v6, v7}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_2

    .line 173
    :cond_5
    iget-object v4, p0, Lch/android/api/ui/ChTypingAndScrollTextView;->paint:Landroid/graphics/Paint;

    const/16 v5, 0xff

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 174
    iget-object v4, p0, Lch/android/api/ui/ChTypingAndScrollTextView;->texts:[Ljava/lang/String;

    aget-object v4, v4, v0

    int-to-float v5, v2

    int-to-float v6, v3

    iget-object v7, p0, Lch/android/api/ui/ChTypingAndScrollTextView;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v4, v5, v6, v7}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_2
.end method

.method protected onMeasure(II)V
    .locals 2
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 59
    invoke-super {p0, p1, p2}, Landroid/widget/ImageView;->onMeasure(II)V

    .line 60
    iget v0, p0, Lch/android/api/ui/ChTypingAndScrollTextView;->W:I

    iget v1, p0, Lch/android/api/ui/ChTypingAndScrollTextView;->H:I

    invoke-super {p0, v0, v1}, Landroid/widget/ImageView;->setMeasuredDimension(II)V

    .line 61
    return-void
.end method

.method public putString(Ljava/lang/String;)V
    .locals 1
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 75
    iget-object v0, p0, Lch/android/api/ui/ChTypingAndScrollTextView;->textList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 76
    return-void
.end method

.method public setTextType(Z)V
    .locals 1
    .param p1, "isTyping"    # Z

    .prologue
    .line 64
    iput-boolean p1, p0, Lch/android/api/ui/ChTypingAndScrollTextView;->isTyping:Z

    .line 65
    if-eqz p1, :cond_0

    .line 66
    const/16 v0, 0x78

    iput v0, p0, Lch/android/api/ui/ChTypingAndScrollTextView;->delayMills:I

    .line 70
    :goto_0
    iget-object v0, p0, Lch/android/api/ui/ChTypingAndScrollTextView;->textList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 71
    const/4 v0, 0x0

    iput-object v0, p0, Lch/android/api/ui/ChTypingAndScrollTextView;->texts:[Ljava/lang/String;

    .line 72
    return-void

    .line 68
    :cond_0
    const/16 v0, 0x32

    iput v0, p0, Lch/android/api/ui/ChTypingAndScrollTextView;->delayMills:I

    goto :goto_0
.end method

.method public start()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 79
    iput-boolean v2, p0, Lch/android/api/ui/ChTypingAndScrollTextView;->isEnd:Z

    .line 80
    iget-object v0, p0, Lch/android/api/ui/ChTypingAndScrollTextView;->textList:Ljava/util/ArrayList;

    new-array v1, v2, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p0, Lch/android/api/ui/ChTypingAndScrollTextView;->texts:[Ljava/lang/String;

    .line 81
    iput v2, p0, Lch/android/api/ui/ChTypingAndScrollTextView;->curIndex:I

    .line 82
    iput v2, p0, Lch/android/api/ui/ChTypingAndScrollTextView;->curLine:I

    .line 83
    iget v0, p0, Lch/android/api/ui/ChTypingAndScrollTextView;->H:I

    mul-int/lit8 v0, v0, 0x3

    div-int/lit8 v0, v0, 0x4

    iput v0, p0, Lch/android/api/ui/ChTypingAndScrollTextView;->scrollY:I

    .line 84
    iget-object v0, p0, Lch/android/api/ui/ChTypingAndScrollTextView;->uiHandler:Landroid/os/Handler;

    iget-object v1, p0, Lch/android/api/ui/ChTypingAndScrollTextView;->textDrawRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 85
    return-void
.end method
