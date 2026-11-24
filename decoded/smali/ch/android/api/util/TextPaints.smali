.class public Lch/android/api/util/TextPaints;
.super Ljava/lang/Object;
.source "TextPaints.java"


# static fields
.field private static final FONT_BIG:I = 0x10

.field private static final FONT_BIGNORMAL:I = 0xe

.field private static final FONT_NORMAL:I = 0xc

.field private static final FONT_SMALL:I = 0x8

.field private static final FONT_SNORMAL:I = 0xa

.field private static final TYPE_FACE:Landroid/graphics/Typeface;

.field public static final TYPE_FACE_BOLD:Landroid/graphics/Typeface;

.field private static s_di:Lch/android/api/util/DisplayInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 23
    sget-object v0, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-static {v0, v1}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v0

    sput-object v0, Lch/android/api/util/TextPaints;->TYPE_FACE:Landroid/graphics/Typeface;

    .line 24
    sget-object v0, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-static {v0, v1}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v0

    sput-object v0, Lch/android/api/util/TextPaints;->TYPE_FACE_BOLD:Landroid/graphics/Typeface;

    .line 9
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static calDensityFontSize(I)I
    .locals 2
    .param p0, "_size"    # I

    .prologue
    .line 32
    sget-object v0, Lch/android/api/util/TextPaints;->s_di:Lch/android/api/util/DisplayInfo;

    if-eqz v0, :cond_0

    .line 33
    sget-object v0, Lch/android/api/util/TextPaints;->s_di:Lch/android/api/util/DisplayInfo;

    iget v0, v0, Lch/android/api/util/DisplayInfo;->density:F

    int-to-float v1, p0

    mul-float/2addr v0, v1

    float-to-int p0, v0

    .line 37
    .end local p0    # "_size":I
    :cond_0
    return p0
.end method

.method public static getBig()Landroid/graphics/Paint;
    .locals 2

    .prologue
    .line 92
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 93
    .local v0, "BIG":Landroid/graphics/Paint;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 94
    sget-object v1, Lch/android/api/util/TextPaints;->TYPE_FACE:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 95
    sget-object v1, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 96
    const/16 v1, 0x10

    invoke-static {v1}, Lch/android/api/util/TextPaints;->calDensityFontSize(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 97
    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 98
    return-object v0
.end method

.method public static getBigNormalSize()I
    .locals 1

    .prologue
    .line 46
    const/16 v0, 0xe

    invoke-static {v0}, Lch/android/api/util/TextPaints;->calDensityFontSize(I)I

    move-result v0

    return v0
.end method

.method public static getBigSize()I
    .locals 1

    .prologue
    .line 42
    const/16 v0, 0x10

    invoke-static {v0}, Lch/android/api/util/TextPaints;->calDensityFontSize(I)I

    move-result v0

    return v0
.end method

.method public static getCyanBold()Landroid/graphics/Paint;
    .locals 2

    .prologue
    .line 112
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 113
    .local v0, "CYAN_BOLD":Landroid/graphics/Paint;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 114
    sget-object v1, Lch/android/api/util/TextPaints;->TYPE_FACE_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 115
    sget-object v1, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 116
    const/16 v1, 0xc

    invoke-static {v1}, Lch/android/api/util/TextPaints;->calDensityFontSize(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 117
    const v1, -0xff0001

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 118
    return-object v0
.end method

.method public static getDefault()Landroid/graphics/Paint;
    .locals 2

    .prologue
    .line 62
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 63
    .local v0, "DEFAULT":Landroid/graphics/Paint;
    sget-object v1, Lch/android/api/util/TextPaints;->TYPE_FACE:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 64
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 65
    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 66
    const/16 v1, 0xc

    invoke-static {v1}, Lch/android/api/util/TextPaints;->calDensityFontSize(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 67
    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 68
    return-object v0
.end method

.method public static getLeftAlign()Landroid/graphics/Paint;
    .locals 2

    .prologue
    .line 72
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 73
    .local v0, "LEFT_ALIGN":Landroid/graphics/Paint;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 74
    sget-object v1, Lch/android/api/util/TextPaints;->TYPE_FACE:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 75
    sget-object v1, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 76
    const/16 v1, 0xc

    invoke-static {v1}, Lch/android/api/util/TextPaints;->calDensityFontSize(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 77
    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 78
    return-object v0
.end method

.method public static getNormalSize()I
    .locals 1

    .prologue
    .line 50
    const/16 v0, 0xc

    invoke-static {v0}, Lch/android/api/util/TextPaints;->calDensityFontSize(I)I

    move-result v0

    return v0
.end method

.method public static getRedBold()Landroid/graphics/Paint;
    .locals 2

    .prologue
    .line 102
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 103
    .local v0, "RED_BOLD":Landroid/graphics/Paint;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 104
    sget-object v1, Lch/android/api/util/TextPaints;->TYPE_FACE_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 105
    sget-object v1, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 106
    const/16 v1, 0xc

    invoke-static {v1}, Lch/android/api/util/TextPaints;->calDensityFontSize(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 107
    const/high16 v1, -0x10000

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 108
    return-object v0
.end method

.method public static getSNormalSize()I
    .locals 1

    .prologue
    .line 58
    const/16 v0, 0xa

    invoke-static {v0}, Lch/android/api/util/TextPaints;->calDensityFontSize(I)I

    move-result v0

    return v0
.end method

.method public static getSmall()Landroid/graphics/Paint;
    .locals 2

    .prologue
    .line 82
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 83
    .local v0, "SMALL":Landroid/graphics/Paint;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 84
    sget-object v1, Lch/android/api/util/TextPaints;->TYPE_FACE:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 85
    sget-object v1, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 86
    const/16 v1, 0x8

    invoke-static {v1}, Lch/android/api/util/TextPaints;->calDensityFontSize(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 87
    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 88
    return-object v0
.end method

.method public static getSmallSize()I
    .locals 1

    .prologue
    .line 54
    const/16 v0, 0x8

    invoke-static {v0}, Lch/android/api/util/TextPaints;->calDensityFontSize(I)I

    move-result v0

    return v0
.end method

.method public static init(Lch/android/api/util/DisplayInfo;)V
    .locals 0
    .param p0, "_di"    # Lch/android/api/util/DisplayInfo;

    .prologue
    .line 28
    sput-object p0, Lch/android/api/util/TextPaints;->s_di:Lch/android/api/util/DisplayInfo;

    .line 29
    return-void
.end method
