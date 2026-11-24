.class public Lch/android/api/ui/ChStaffRollView;
.super Lch/android/api/ui/ChImageView;
.source "ChStaffRollView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lch/android/api/ui/ChStaffRollView$StaffText;
    }
.end annotation


# instance fields
.field private DISP_PER_UPDATE:F

.field private final FONT_SIZE:I

.field private final HEIGHT:I

.field private final TEXT_X:I

.field private final TOTAL_TEXT_HEIGHT:I

.field private currentIndex:I

.field private final di:Lch/android/api/util/DisplayInfo;

.field private final staffTexts:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lch/android/api/ui/ChStaffRollView$StaffText;",
            ">;"
        }
    .end annotation
.end field

.field private startY:F


# direct methods
.method public constructor <init>(Landroid/content/Context;Lch/android/api/util/DisplayInfo;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "di"    # Lch/android/api/util/DisplayInfo;
    .param p3, "totalFrame"    # I

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lch/android/api/ui/ChImageView;-><init>(Landroid/content/Context;)V

    .line 33
    iput-object p2, p0, Lch/android/api/ui/ChStaffRollView;->di:Lch/android/api/util/DisplayInfo;

    .line 38
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lch/android/api/ui/ChStaffRollView;->staffTexts:Ljava/util/ArrayList;

    .line 39
    invoke-direct {p0}, Lch/android/api/ui/ChStaffRollView;->initStaffs()V

    .line 40
    invoke-static {}, Lch/android/api/util/TextPaints;->getNormalSize()I

    move-result v0

    iget v1, p2, Lch/android/api/util/DisplayInfo;->density:F

    const/high16 v2, 0x41200000    # 10.0f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    add-int/2addr v0, v1

    iput v0, p0, Lch/android/api/ui/ChStaffRollView;->FONT_SIZE:I

    .line 41
    iget-object v0, p0, Lch/android/api/ui/ChStaffRollView;->staffTexts:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget v1, p0, Lch/android/api/ui/ChStaffRollView;->FONT_SIZE:I

    mul-int/2addr v0, v1

    iput v0, p0, Lch/android/api/ui/ChStaffRollView;->TOTAL_TEXT_HEIGHT:I

    .line 43
    iget v0, p2, Lch/android/api/util/DisplayInfo;->heightPixels:I

    iget v1, p0, Lch/android/api/ui/ChStaffRollView;->TOTAL_TEXT_HEIGHT:I

    add-int/2addr v0, v1

    int-to-float v0, v0

    int-to-float v1, p3

    div-float/2addr v0, v1

    iput v0, p0, Lch/android/api/ui/ChStaffRollView;->DISP_PER_UPDATE:F

    .line 45
    const/4 v0, 0x0

    iput v0, p0, Lch/android/api/ui/ChStaffRollView;->currentIndex:I

    .line 46
    iget v0, p2, Lch/android/api/util/DisplayInfo;->heightPixels:I

    int-to-float v0, v0

    iput v0, p0, Lch/android/api/ui/ChStaffRollView;->startY:F

    .line 47
    iget v0, p2, Lch/android/api/util/DisplayInfo;->heightPixels:I

    iput v0, p0, Lch/android/api/ui/ChStaffRollView;->HEIGHT:I

    .line 48
    iget v0, p2, Lch/android/api/util/DisplayInfo;->widthPixels:I

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lch/android/api/ui/ChStaffRollView;->TEXT_X:I

    .line 49
    return-void
.end method

.method private initStaffs()V
    .locals 6

    .prologue
    .line 110
    invoke-static {}, Lch/android/api/util/TextPaints;->getDefault()Landroid/graphics/Paint;

    move-result-object v0

    .line 111
    .local v0, "namePaint":Landroid/graphics/Paint;
    invoke-static {}, Lch/android/api/util/TextPaints;->getDefault()Landroid/graphics/Paint;

    move-result-object v2

    .line 112
    .local v2, "titlePaint":Landroid/graphics/Paint;
    const v3, -0xff0001

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 113
    invoke-virtual {p0}, Lch/android/api/ui/ChStaffRollView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 115
    .local v1, "res":Landroid/content/res/Resources;
    iget-object v3, p0, Lch/android/api/ui/ChStaffRollView;->staffTexts:Ljava/util/ArrayList;

    new-instance v4, Lch/android/api/ui/ChStaffRollView$StaffText;

    const v5, 0x7f05007d

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, p0, v5, v2}, Lch/android/api/ui/ChStaffRollView$StaffText;-><init>(Lch/android/api/ui/ChStaffRollView;Ljava/lang/String;Landroid/graphics/Paint;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 116
    iget-object v3, p0, Lch/android/api/ui/ChStaffRollView;->staffTexts:Ljava/util/ArrayList;

    new-instance v4, Lch/android/api/ui/ChStaffRollView$StaffText;

    const v5, 0x7f05007e

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, p0, v5, v0}, Lch/android/api/ui/ChStaffRollView$StaffText;-><init>(Lch/android/api/ui/ChStaffRollView;Ljava/lang/String;Landroid/graphics/Paint;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 118
    iget-object v3, p0, Lch/android/api/ui/ChStaffRollView;->staffTexts:Ljava/util/ArrayList;

    new-instance v4, Lch/android/api/ui/ChStaffRollView$StaffText;

    const v5, 0x7f05007f

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, p0, v5, v2}, Lch/android/api/ui/ChStaffRollView$StaffText;-><init>(Lch/android/api/ui/ChStaffRollView;Ljava/lang/String;Landroid/graphics/Paint;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 119
    iget-object v3, p0, Lch/android/api/ui/ChStaffRollView;->staffTexts:Ljava/util/ArrayList;

    new-instance v4, Lch/android/api/ui/ChStaffRollView$StaffText;

    const v5, 0x7f050080

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, p0, v5, v0}, Lch/android/api/ui/ChStaffRollView$StaffText;-><init>(Lch/android/api/ui/ChStaffRollView;Ljava/lang/String;Landroid/graphics/Paint;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 121
    iget-object v3, p0, Lch/android/api/ui/ChStaffRollView;->staffTexts:Ljava/util/ArrayList;

    new-instance v4, Lch/android/api/ui/ChStaffRollView$StaffText;

    const v5, 0x7f050081

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, p0, v5, v2}, Lch/android/api/ui/ChStaffRollView$StaffText;-><init>(Lch/android/api/ui/ChStaffRollView;Ljava/lang/String;Landroid/graphics/Paint;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 122
    iget-object v3, p0, Lch/android/api/ui/ChStaffRollView;->staffTexts:Ljava/util/ArrayList;

    new-instance v4, Lch/android/api/ui/ChStaffRollView$StaffText;

    const v5, 0x7f050082

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, p0, v5, v0}, Lch/android/api/ui/ChStaffRollView$StaffText;-><init>(Lch/android/api/ui/ChStaffRollView;Ljava/lang/String;Landroid/graphics/Paint;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 123
    iget-object v3, p0, Lch/android/api/ui/ChStaffRollView;->staffTexts:Ljava/util/ArrayList;

    new-instance v4, Lch/android/api/ui/ChStaffRollView$StaffText;

    const v5, 0x7f050083

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, p0, v5, v0}, Lch/android/api/ui/ChStaffRollView$StaffText;-><init>(Lch/android/api/ui/ChStaffRollView;Ljava/lang/String;Landroid/graphics/Paint;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 124
    iget-object v3, p0, Lch/android/api/ui/ChStaffRollView;->staffTexts:Ljava/util/ArrayList;

    new-instance v4, Lch/android/api/ui/ChStaffRollView$StaffText;

    const v5, 0x7f050084

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, p0, v5, v0}, Lch/android/api/ui/ChStaffRollView$StaffText;-><init>(Lch/android/api/ui/ChStaffRollView;Ljava/lang/String;Landroid/graphics/Paint;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 125
    iget-object v3, p0, Lch/android/api/ui/ChStaffRollView;->staffTexts:Ljava/util/ArrayList;

    new-instance v4, Lch/android/api/ui/ChStaffRollView$StaffText;

    const v5, 0x7f050085

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, p0, v5, v0}, Lch/android/api/ui/ChStaffRollView$StaffText;-><init>(Lch/android/api/ui/ChStaffRollView;Ljava/lang/String;Landroid/graphics/Paint;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 126
    iget-object v3, p0, Lch/android/api/ui/ChStaffRollView;->staffTexts:Ljava/util/ArrayList;

    new-instance v4, Lch/android/api/ui/ChStaffRollView$StaffText;

    const v5, 0x7f050086

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, p0, v5, v0}, Lch/android/api/ui/ChStaffRollView$StaffText;-><init>(Lch/android/api/ui/ChStaffRollView;Ljava/lang/String;Landroid/graphics/Paint;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 127
    iget-object v3, p0, Lch/android/api/ui/ChStaffRollView;->staffTexts:Ljava/util/ArrayList;

    new-instance v4, Lch/android/api/ui/ChStaffRollView$StaffText;

    const v5, 0x7f050087

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, p0, v5, v0}, Lch/android/api/ui/ChStaffRollView$StaffText;-><init>(Lch/android/api/ui/ChStaffRollView;Ljava/lang/String;Landroid/graphics/Paint;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 129
    iget-object v3, p0, Lch/android/api/ui/ChStaffRollView;->staffTexts:Ljava/util/ArrayList;

    new-instance v4, Lch/android/api/ui/ChStaffRollView$StaffText;

    const v5, 0x7f050088

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, p0, v5, v2}, Lch/android/api/ui/ChStaffRollView$StaffText;-><init>(Lch/android/api/ui/ChStaffRollView;Ljava/lang/String;Landroid/graphics/Paint;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 130
    iget-object v3, p0, Lch/android/api/ui/ChStaffRollView;->staffTexts:Ljava/util/ArrayList;

    new-instance v4, Lch/android/api/ui/ChStaffRollView$StaffText;

    const v5, 0x7f050089

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, p0, v5, v0}, Lch/android/api/ui/ChStaffRollView$StaffText;-><init>(Lch/android/api/ui/ChStaffRollView;Ljava/lang/String;Landroid/graphics/Paint;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 131
    iget-object v3, p0, Lch/android/api/ui/ChStaffRollView;->staffTexts:Ljava/util/ArrayList;

    new-instance v4, Lch/android/api/ui/ChStaffRollView$StaffText;

    const v5, 0x7f05008a

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, p0, v5, v0}, Lch/android/api/ui/ChStaffRollView$StaffText;-><init>(Lch/android/api/ui/ChStaffRollView;Ljava/lang/String;Landroid/graphics/Paint;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 132
    iget-object v3, p0, Lch/android/api/ui/ChStaffRollView;->staffTexts:Ljava/util/ArrayList;

    new-instance v4, Lch/android/api/ui/ChStaffRollView$StaffText;

    const v5, 0x7f05008b

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, p0, v5, v0}, Lch/android/api/ui/ChStaffRollView$StaffText;-><init>(Lch/android/api/ui/ChStaffRollView;Ljava/lang/String;Landroid/graphics/Paint;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 133
    iget-object v3, p0, Lch/android/api/ui/ChStaffRollView;->staffTexts:Ljava/util/ArrayList;

    new-instance v4, Lch/android/api/ui/ChStaffRollView$StaffText;

    const v5, 0x7f05008c

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, p0, v5, v0}, Lch/android/api/ui/ChStaffRollView$StaffText;-><init>(Lch/android/api/ui/ChStaffRollView;Ljava/lang/String;Landroid/graphics/Paint;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 135
    iget-object v3, p0, Lch/android/api/ui/ChStaffRollView;->staffTexts:Ljava/util/ArrayList;

    new-instance v4, Lch/android/api/ui/ChStaffRollView$StaffText;

    const v5, 0x7f05008d

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, p0, v5, v2}, Lch/android/api/ui/ChStaffRollView$StaffText;-><init>(Lch/android/api/ui/ChStaffRollView;Ljava/lang/String;Landroid/graphics/Paint;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 136
    iget-object v3, p0, Lch/android/api/ui/ChStaffRollView;->staffTexts:Ljava/util/ArrayList;

    new-instance v4, Lch/android/api/ui/ChStaffRollView$StaffText;

    const v5, 0x7f05008e

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, p0, v5, v0}, Lch/android/api/ui/ChStaffRollView$StaffText;-><init>(Lch/android/api/ui/ChStaffRollView;Ljava/lang/String;Landroid/graphics/Paint;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 138
    iget-object v3, p0, Lch/android/api/ui/ChStaffRollView;->staffTexts:Ljava/util/ArrayList;

    new-instance v4, Lch/android/api/ui/ChStaffRollView$StaffText;

    const v5, 0x7f05008f

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, p0, v5, v2}, Lch/android/api/ui/ChStaffRollView$StaffText;-><init>(Lch/android/api/ui/ChStaffRollView;Ljava/lang/String;Landroid/graphics/Paint;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 139
    iget-object v3, p0, Lch/android/api/ui/ChStaffRollView;->staffTexts:Ljava/util/ArrayList;

    new-instance v4, Lch/android/api/ui/ChStaffRollView$StaffText;

    const v5, 0x7f050090

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, p0, v5, v0}, Lch/android/api/ui/ChStaffRollView$StaffText;-><init>(Lch/android/api/ui/ChStaffRollView;Ljava/lang/String;Landroid/graphics/Paint;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 140
    iget-object v3, p0, Lch/android/api/ui/ChStaffRollView;->staffTexts:Ljava/util/ArrayList;

    new-instance v4, Lch/android/api/ui/ChStaffRollView$StaffText;

    const v5, 0x7f050091

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, p0, v5, v0}, Lch/android/api/ui/ChStaffRollView$StaffText;-><init>(Lch/android/api/ui/ChStaffRollView;Ljava/lang/String;Landroid/graphics/Paint;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 142
    iget-object v3, p0, Lch/android/api/ui/ChStaffRollView;->staffTexts:Ljava/util/ArrayList;

    new-instance v4, Lch/android/api/ui/ChStaffRollView$StaffText;

    const v5, 0x7f050092

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, p0, v5, v2}, Lch/android/api/ui/ChStaffRollView$StaffText;-><init>(Lch/android/api/ui/ChStaffRollView;Ljava/lang/String;Landroid/graphics/Paint;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 143
    iget-object v3, p0, Lch/android/api/ui/ChStaffRollView;->staffTexts:Ljava/util/ArrayList;

    new-instance v4, Lch/android/api/ui/ChStaffRollView$StaffText;

    const v5, 0x7f050093

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, p0, v5, v0}, Lch/android/api/ui/ChStaffRollView$StaffText;-><init>(Lch/android/api/ui/ChStaffRollView;Ljava/lang/String;Landroid/graphics/Paint;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 145
    iget-object v3, p0, Lch/android/api/ui/ChStaffRollView;->staffTexts:Ljava/util/ArrayList;

    new-instance v4, Lch/android/api/ui/ChStaffRollView$StaffText;

    const v5, 0x7f050094

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, p0, v5, v2}, Lch/android/api/ui/ChStaffRollView$StaffText;-><init>(Lch/android/api/ui/ChStaffRollView;Ljava/lang/String;Landroid/graphics/Paint;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 146
    iget-object v3, p0, Lch/android/api/ui/ChStaffRollView;->staffTexts:Ljava/util/ArrayList;

    new-instance v4, Lch/android/api/ui/ChStaffRollView$StaffText;

    const v5, 0x7f050095

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, p0, v5, v0}, Lch/android/api/ui/ChStaffRollView$StaffText;-><init>(Lch/android/api/ui/ChStaffRollView;Ljava/lang/String;Landroid/graphics/Paint;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 147
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 8
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 63
    invoke-super {p0, p1}, Lch/android/api/ui/ChImageView;->onDraw(Landroid/graphics/Canvas;)V

    .line 64
    iget v0, p0, Lch/android/api/ui/ChStaffRollView;->currentIndex:I

    .local v0, "i":I
    iget-object v4, p0, Lch/android/api/ui/ChStaffRollView;->staffTexts:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v1

    .local v1, "size":I
    :goto_0
    if-lt v0, v1, :cond_1

    .line 75
    :cond_0
    return-void

    .line 65
    :cond_1
    iget v4, p0, Lch/android/api/ui/ChStaffRollView;->startY:F

    iget v5, p0, Lch/android/api/ui/ChStaffRollView;->FONT_SIZE:I

    mul-int/2addr v5, v0

    int-to-float v5, v5

    add-float/2addr v4, v5

    float-to-int v3, v4

    .line 66
    .local v3, "textY":I
    iget v4, p0, Lch/android/api/ui/ChStaffRollView;->HEIGHT:I

    if-ge v3, v4, :cond_2

    .line 67
    iget-object v4, p0, Lch/android/api/ui/ChStaffRollView;->staffTexts:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lch/android/api/ui/ChStaffRollView$StaffText;

    .line 68
    .local v2, "staff":Lch/android/api/ui/ChStaffRollView$StaffText;
    iget-object v4, v2, Lch/android/api/ui/ChStaffRollView$StaffText;->text:Ljava/lang/String;

    iget v5, p0, Lch/android/api/ui/ChStaffRollView;->TEXT_X:I

    int-to-float v5, v5

    int-to-float v6, v3

    iget-object v7, v2, Lch/android/api/ui/ChStaffRollView$StaffText;->textPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v4, v5, v6, v7}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 64
    .end local v2    # "staff":Lch/android/api/ui/ChStaffRollView$StaffText;
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 69
    :cond_2
    iget v4, p0, Lch/android/api/ui/ChStaffRollView;->FONT_SIZE:I

    add-int/2addr v4, v3

    if-gez v4, :cond_0

    .line 70
    add-int/lit8 v4, v0, 0x1

    iput v4, p0, Lch/android/api/ui/ChStaffRollView;->currentIndex:I

    goto :goto_1
.end method

.method protected onMeasure(II)V
    .locals 2
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 56
    invoke-super {p0, p1, p2}, Lch/android/api/ui/ChImageView;->onMeasure(II)V

    .line 57
    iget-object v0, p0, Lch/android/api/ui/ChStaffRollView;->di:Lch/android/api/util/DisplayInfo;

    iget v0, v0, Lch/android/api/util/DisplayInfo;->widthPixels:I

    iget-object v1, p0, Lch/android/api/ui/ChStaffRollView;->di:Lch/android/api/util/DisplayInfo;

    iget v1, v1, Lch/android/api/util/DisplayInfo;->heightPixels:I

    invoke-super {p0, v0, v1}, Lch/android/api/ui/ChImageView;->setMeasuredDimension(II)V

    .line 58
    return-void
.end method

.method public releaseRsources()V
    .locals 0

    .prologue
    .line 80
    invoke-super {p0}, Lch/android/api/ui/ChImageView;->releaseRsources()V

    .line 81
    return-void
.end method

.method public update()V
    .locals 2

    .prologue
    .line 84
    iget v0, p0, Lch/android/api/ui/ChStaffRollView;->startY:F

    iget v1, p0, Lch/android/api/ui/ChStaffRollView;->DISP_PER_UPDATE:F

    sub-float/2addr v0, v1

    iput v0, p0, Lch/android/api/ui/ChStaffRollView;->startY:F

    .line 85
    invoke-virtual {p0}, Lch/android/api/ui/ChStaffRollView;->invalidate()V

    .line 86
    return-void
.end method
