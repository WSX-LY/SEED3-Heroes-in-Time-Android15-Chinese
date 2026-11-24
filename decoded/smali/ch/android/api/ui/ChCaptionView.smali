.class public Lch/android/api/ui/ChCaptionView;
.super Lch/android/api/ui/ChRelativeLayout;
.source "ChCaptionView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lch/android/api/ui/ChCaptionView$CharacterInfo;,
        Lch/android/api/ui/ChCaptionView$CpationView;,
        Lch/android/api/ui/ChCaptionView$SkipButton;
    }
.end annotation


# instance fields
.field private final BARENA:Lch/android/api/ui/ChCaptionView$CharacterInfo;

.field private final BETINA:Lch/android/api/ui/ChCaptionView$CharacterInfo;

.field private final CAESAR:Lch/android/api/ui/ChCaptionView$CharacterInfo;

.field private final CAPTION_VIEW:Lch/android/api/ui/ChCaptionView$CpationView;

.field private final CAPTION_W:I

.field private final CHARLES:Lch/android/api/ui/ChCaptionView$CharacterInfo;

.field private final DI:Lch/android/api/util/DisplayInfo;

.field private final EDWARD:Lch/android/api/ui/ChCaptionView$CharacterInfo;

.field private final ID_NEXT:I

.field private final ID_SKIP:I

.field private final KENKO:Lch/android/api/ui/ChCaptionView$CharacterInfo;

.field private final KING:Lch/android/api/ui/ChCaptionView$CharacterInfo;

.field private final MICHAEL:Lch/android/api/ui/ChCaptionView$CharacterInfo;

.field private final NECHAYEFF:Lch/android/api/ui/ChCaptionView$CharacterInfo;

.field private final NPC_NAME_VIEW:Lch/android/api/ui/ChTextView;

.field private final PELLA:Lch/android/api/ui/ChCaptionView$CharacterInfo;

.field private final SKIP_BTN:Lch/android/api/ui/ChCaptionView$SkipButton;

.field private final TOPSINK:Lch/android/api/ui/ChCaptionView$CharacterInfo;

.field private final TXT_PAINT:Landroid/graphics/Paint;

.field private final TXT_VIEW:Lch/android/api/ui/ChTextView;

.field private final lineSize:I

.field private m_bustNum:I

.field private m_isExistNextPage:Z

.field private m_isLeftSide:Z

.field private m_linedStrings:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private m_name:Ljava/lang/String;

.field private final npcNameRect:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lch/android/api/util/DisplayInfo;)V
    .locals 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "_di"    # Lch/android/api/util/DisplayInfo;

    .prologue
    const/4 v11, -0x2

    const/high16 v10, 0x42740000    # 61.0f

    const/16 v3, 0x63

    const/4 v9, 0x0

    const/4 v8, -0x1

    .line 79
    invoke-direct {p0, p1}, Lch/android/api/ui/ChRelativeLayout;-><init>(Landroid/content/Context;)V

    .line 38
    iput v3, p0, Lch/android/api/ui/ChCaptionView;->ID_NEXT:I

    .line 39
    const/16 v0, 0x64

    iput v0, p0, Lch/android/api/ui/ChCaptionView;->ID_SKIP:I

    .line 81
    invoke-virtual {p0, v9}, Lch/android/api/ui/ChCaptionView;->setBackgroundColor(I)V

    .line 82
    iput-object p2, p0, Lch/android/api/ui/ChCaptionView;->DI:Lch/android/api/util/DisplayInfo;

    .line 83
    new-instance v0, Lch/android/api/ui/ChTextView;

    invoke-direct {v0, p1}, Lch/android/api/ui/ChTextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lch/android/api/ui/ChCaptionView;->TXT_VIEW:Lch/android/api/ui/ChTextView;

    .line 84
    iget-object v0, p0, Lch/android/api/ui/ChCaptionView;->TXT_VIEW:Lch/android/api/ui/ChTextView;

    invoke-virtual {v0, v9}, Lch/android/api/ui/ChTextView;->setClickable(Z)V

    .line 85
    new-instance v0, Lch/android/api/ui/ChCaptionView$SkipButton;

    const v1, 0x7f02029e

    const v2, 0x7f02029f

    invoke-direct {v0, p0, p1, v1, v2}, Lch/android/api/ui/ChCaptionView$SkipButton;-><init>(Lch/android/api/ui/ChCaptionView;Landroid/content/Context;II)V

    iput-object v0, p0, Lch/android/api/ui/ChCaptionView;->SKIP_BTN:Lch/android/api/ui/ChCaptionView$SkipButton;

    .line 87
    iget-object v0, p0, Lch/android/api/ui/ChCaptionView;->SKIP_BTN:Lch/android/api/ui/ChCaptionView$SkipButton;

    invoke-virtual {v0, p0}, Lch/android/api/ui/ChCaptionView$SkipButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 90
    iget-object v0, p0, Lch/android/api/ui/ChCaptionView;->TXT_VIEW:Lch/android/api/ui/ChTextView;

    invoke-virtual {v0, v3}, Lch/android/api/ui/ChTextView;->setId(I)V

    .line 91
    iget-object v0, p0, Lch/android/api/ui/ChCaptionView;->SKIP_BTN:Lch/android/api/ui/ChCaptionView$SkipButton;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Lch/android/api/ui/ChCaptionView$SkipButton;->setId(I)V

    .line 93
    new-instance v0, Lch/android/api/ui/ChCaptionView$CpationView;

    invoke-direct {v0, p0, p1}, Lch/android/api/ui/ChCaptionView$CpationView;-><init>(Lch/android/api/ui/ChCaptionView;Landroid/content/Context;)V

    iput-object v0, p0, Lch/android/api/ui/ChCaptionView;->CAPTION_VIEW:Lch/android/api/ui/ChCaptionView$CpationView;

    .line 94
    iget-object v0, p0, Lch/android/api/ui/ChCaptionView;->CAPTION_VIEW:Lch/android/api/ui/ChCaptionView$CpationView;

    invoke-virtual {v0, p0}, Lch/android/api/ui/ChCaptionView$CpationView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 95
    iget-object v0, p0, Lch/android/api/ui/ChCaptionView;->CAPTION_VIEW:Lch/android/api/ui/ChCaptionView$CpationView;

    invoke-virtual {v0, v3}, Lch/android/api/ui/ChCaptionView$CpationView;->setId(I)V

    .line 97
    iget-object v0, p0, Lch/android/api/ui/ChCaptionView;->CAPTION_VIEW:Lch/android/api/ui/ChCaptionView$CpationView;

    invoke-virtual {v0}, Lch/android/api/ui/ChCaptionView$CpationView;->getTxtPaint()Landroid/graphics/Paint;

    move-result-object v0

    iput-object v0, p0, Lch/android/api/ui/ChCaptionView;->TXT_PAINT:Landroid/graphics/Paint;

    .line 98
    iget-object v0, p0, Lch/android/api/ui/ChCaptionView;->DI:Lch/android/api/util/DisplayInfo;

    iget v0, v0, Lch/android/api/util/DisplayInfo;->density:F

    const/high16 v1, 0x42480000    # 50.0f

    mul-float/2addr v0, v1

    iget-object v1, p0, Lch/android/api/ui/ChCaptionView;->TXT_PAINT:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getTextSize()F

    move-result v1

    div-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lch/android/api/ui/ChCaptionView;->lineSize:I

    .line 99
    iget-object v0, p0, Lch/android/api/ui/ChCaptionView;->DI:Lch/android/api/util/DisplayInfo;

    iget v0, v0, Lch/android/api/util/DisplayInfo;->widthPixels:I

    int-to-double v0, v0

    const-wide v2, 0x3fdc28f5c28f5c29L    # 0.44

    mul-double/2addr v0, v2

    iget-object v2, p0, Lch/android/api/ui/ChCaptionView;->DI:Lch/android/api/util/DisplayInfo;

    iget v2, v2, Lch/android/api/util/DisplayInfo;->density:F

    float-to-double v2, v2

    mul-double/2addr v0, v2

    double-to-int v0, v0

    iput v0, p0, Lch/android/api/ui/ChCaptionView;->CAPTION_W:I

    .line 101
    new-instance v0, Lch/android/api/ui/ChCaptionView$CharacterInfo;

    iget-object v1, p0, Lch/android/api/ui/ChCaptionView;->DI:Lch/android/api/util/DisplayInfo;

    iget v1, v1, Lch/android/api/util/DisplayInfo;->density:F

    const/high16 v2, 0x42b20000    # 89.0f

    mul-float/2addr v2, v1

    iget-object v1, p0, Lch/android/api/ui/ChCaptionView;->DI:Lch/android/api/util/DisplayInfo;

    iget v1, v1, Lch/android/api/util/DisplayInfo;->density:F

    const/high16 v3, 0x429e0000    # 79.0f

    mul-float/2addr v3, v1

    const v4, 0x7f020206

    const v5, 0x7f020207

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lch/android/api/ui/ChCaptionView$CharacterInfo;-><init>(Lch/android/api/ui/ChCaptionView;FFII)V

    iput-object v0, p0, Lch/android/api/ui/ChCaptionView;->MICHAEL:Lch/android/api/ui/ChCaptionView$CharacterInfo;

    .line 102
    new-instance v0, Lch/android/api/ui/ChCaptionView$CharacterInfo;

    iget-object v1, p0, Lch/android/api/ui/ChCaptionView;->DI:Lch/android/api/util/DisplayInfo;

    iget v1, v1, Lch/android/api/util/DisplayInfo;->density:F

    const/high16 v2, 0x42200000    # 40.0f

    mul-float/2addr v2, v1

    iget-object v1, p0, Lch/android/api/ui/ChCaptionView;->DI:Lch/android/api/util/DisplayInfo;

    iget v1, v1, Lch/android/api/util/DisplayInfo;->density:F

    mul-float v3, v1, v10

    const v4, 0x7f020073

    const v5, 0x7f020074

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lch/android/api/ui/ChCaptionView$CharacterInfo;-><init>(Lch/android/api/ui/ChCaptionView;FFII)V

    iput-object v0, p0, Lch/android/api/ui/ChCaptionView;->CHARLES:Lch/android/api/ui/ChCaptionView$CharacterInfo;

    .line 103
    new-instance v0, Lch/android/api/ui/ChCaptionView$CharacterInfo;

    iget-object v1, p0, Lch/android/api/ui/ChCaptionView;->DI:Lch/android/api/util/DisplayInfo;

    iget v1, v1, Lch/android/api/util/DisplayInfo;->density:F

    const/high16 v2, 0x426c0000    # 59.0f

    mul-float/2addr v2, v1

    iget-object v1, p0, Lch/android/api/ui/ChCaptionView;->DI:Lch/android/api/util/DisplayInfo;

    iget v1, v1, Lch/android/api/util/DisplayInfo;->density:F

    const/high16 v3, 0x42900000    # 72.0f

    mul-float/2addr v3, v1

    const v4, 0x7f020068

    const v5, 0x7f020069

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lch/android/api/ui/ChCaptionView$CharacterInfo;-><init>(Lch/android/api/ui/ChCaptionView;FFII)V

    iput-object v0, p0, Lch/android/api/ui/ChCaptionView;->CAESAR:Lch/android/api/ui/ChCaptionView$CharacterInfo;

    .line 104
    new-instance v0, Lch/android/api/ui/ChCaptionView$CharacterInfo;

    iget-object v1, p0, Lch/android/api/ui/ChCaptionView;->DI:Lch/android/api/util/DisplayInfo;

    iget v1, v1, Lch/android/api/util/DisplayInfo;->density:F

    const/high16 v2, 0x42840000    # 66.0f

    mul-float/2addr v2, v1

    iget-object v1, p0, Lch/android/api/ui/ChCaptionView;->DI:Lch/android/api/util/DisplayInfo;

    iget v1, v1, Lch/android/api/util/DisplayInfo;->density:F

    const/high16 v3, 0x428e0000    # 71.0f

    mul-float/2addr v3, v1

    const v4, 0x7f0201f2

    const v5, 0x7f0201f3

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lch/android/api/ui/ChCaptionView$CharacterInfo;-><init>(Lch/android/api/ui/ChCaptionView;FFII)V

    iput-object v0, p0, Lch/android/api/ui/ChCaptionView;->KING:Lch/android/api/ui/ChCaptionView$CharacterInfo;

    .line 105
    new-instance v0, Lch/android/api/ui/ChCaptionView$CharacterInfo;

    iget-object v1, p0, Lch/android/api/ui/ChCaptionView;->DI:Lch/android/api/util/DisplayInfo;

    iget v1, v1, Lch/android/api/util/DisplayInfo;->density:F

    const/high16 v2, 0x42b40000    # 90.0f

    mul-float/2addr v2, v1

    iget-object v1, p0, Lch/android/api/ui/ChCaptionView;->DI:Lch/android/api/util/DisplayInfo;

    iget v1, v1, Lch/android/api/util/DisplayInfo;->density:F

    const/high16 v3, 0x43060000    # 134.0f

    mul-float/2addr v3, v1

    const v4, 0x7f020241

    const v5, 0x7f020242

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lch/android/api/ui/ChCaptionView$CharacterInfo;-><init>(Lch/android/api/ui/ChCaptionView;FFII)V

    iput-object v0, p0, Lch/android/api/ui/ChCaptionView;->PELLA:Lch/android/api/ui/ChCaptionView$CharacterInfo;

    .line 106
    new-instance v0, Lch/android/api/ui/ChCaptionView$CharacterInfo;

    iget-object v1, p0, Lch/android/api/ui/ChCaptionView;->DI:Lch/android/api/util/DisplayInfo;

    iget v1, v1, Lch/android/api/util/DisplayInfo;->density:F

    const/high16 v2, 0x42c00000    # 96.0f

    mul-float/2addr v2, v1

    iget-object v1, p0, Lch/android/api/ui/ChCaptionView;->DI:Lch/android/api/util/DisplayInfo;

    iget v1, v1, Lch/android/api/util/DisplayInfo;->density:F

    mul-float v3, v1, v10

    const v4, 0x7f02020d

    const v5, 0x7f02020e

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lch/android/api/ui/ChCaptionView$CharacterInfo;-><init>(Lch/android/api/ui/ChCaptionView;FFII)V

    iput-object v0, p0, Lch/android/api/ui/ChCaptionView;->NECHAYEFF:Lch/android/api/ui/ChCaptionView$CharacterInfo;

    .line 107
    new-instance v0, Lch/android/api/ui/ChCaptionView$CharacterInfo;

    iget-object v1, p0, Lch/android/api/ui/ChCaptionView;->DI:Lch/android/api/util/DisplayInfo;

    iget v1, v1, Lch/android/api/util/DisplayInfo;->density:F

    const/high16 v2, 0x42da0000    # 109.0f

    mul-float/2addr v2, v1

    iget-object v1, p0, Lch/android/api/ui/ChCaptionView;->DI:Lch/android/api/util/DisplayInfo;

    iget v1, v1, Lch/android/api/util/DisplayInfo;->density:F

    const/high16 v3, 0x42700000    # 60.0f

    mul-float/2addr v3, v1

    const v4, 0x7f020025

    const v5, 0x7f020026

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lch/android/api/ui/ChCaptionView$CharacterInfo;-><init>(Lch/android/api/ui/ChCaptionView;FFII)V

    iput-object v0, p0, Lch/android/api/ui/ChCaptionView;->BARENA:Lch/android/api/ui/ChCaptionView$CharacterInfo;

    .line 108
    new-instance v0, Lch/android/api/ui/ChCaptionView$CharacterInfo;

    iget-object v1, p0, Lch/android/api/ui/ChCaptionView;->DI:Lch/android/api/util/DisplayInfo;

    iget v1, v1, Lch/android/api/util/DisplayInfo;->density:F

    const/high16 v2, 0x42d40000    # 106.0f

    mul-float/2addr v2, v1

    iget-object v1, p0, Lch/android/api/ui/ChCaptionView;->DI:Lch/android/api/util/DisplayInfo;

    iget v1, v1, Lch/android/api/util/DisplayInfo;->density:F

    const/high16 v3, 0x428c0000    # 70.0f

    mul-float/2addr v3, v1

    const v4, 0x7f020027

    const v5, 0x7f020028

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lch/android/api/ui/ChCaptionView$CharacterInfo;-><init>(Lch/android/api/ui/ChCaptionView;FFII)V

    iput-object v0, p0, Lch/android/api/ui/ChCaptionView;->BETINA:Lch/android/api/ui/ChCaptionView$CharacterInfo;

    .line 109
    new-instance v0, Lch/android/api/ui/ChCaptionView$CharacterInfo;

    iget-object v1, p0, Lch/android/api/ui/ChCaptionView;->DI:Lch/android/api/util/DisplayInfo;

    iget v1, v1, Lch/android/api/util/DisplayInfo;->density:F

    const/high16 v2, 0x42d00000    # 104.0f

    mul-float/2addr v2, v1

    iget-object v1, p0, Lch/android/api/ui/ChCaptionView;->DI:Lch/android/api/util/DisplayInfo;

    iget v1, v1, Lch/android/api/util/DisplayInfo;->density:F

    const/high16 v3, 0x42800000    # 64.0f

    mul-float/2addr v3, v1

    const v4, 0x7f0201f0

    const v5, 0x7f0201f1

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lch/android/api/ui/ChCaptionView$CharacterInfo;-><init>(Lch/android/api/ui/ChCaptionView;FFII)V

    iput-object v0, p0, Lch/android/api/ui/ChCaptionView;->KENKO:Lch/android/api/ui/ChCaptionView$CharacterInfo;

    .line 110
    new-instance v0, Lch/android/api/ui/ChCaptionView$CharacterInfo;

    iget-object v1, p0, Lch/android/api/ui/ChCaptionView;->DI:Lch/android/api/util/DisplayInfo;

    iget v1, v1, Lch/android/api/util/DisplayInfo;->density:F

    const/high16 v2, 0x42780000    # 62.0f

    mul-float/2addr v2, v1

    iget-object v1, p0, Lch/android/api/ui/ChCaptionView;->DI:Lch/android/api/util/DisplayInfo;

    iget v1, v1, Lch/android/api/util/DisplayInfo;->density:F

    const/high16 v3, 0x42ae0000    # 87.0f

    mul-float/2addr v3, v1

    const v4, 0x7f02009c

    const v5, 0x7f02009d

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lch/android/api/ui/ChCaptionView$CharacterInfo;-><init>(Lch/android/api/ui/ChCaptionView;FFII)V

    iput-object v0, p0, Lch/android/api/ui/ChCaptionView;->EDWARD:Lch/android/api/ui/ChCaptionView$CharacterInfo;

    .line 111
    new-instance v0, Lch/android/api/ui/ChCaptionView$CharacterInfo;

    iget-object v1, p0, Lch/android/api/ui/ChCaptionView;->DI:Lch/android/api/util/DisplayInfo;

    iget v1, v1, Lch/android/api/util/DisplayInfo;->density:F

    const/high16 v2, 0x42a60000    # 83.0f

    mul-float/2addr v2, v1

    iget-object v1, p0, Lch/android/api/ui/ChCaptionView;->DI:Lch/android/api/util/DisplayInfo;

    iget v1, v1, Lch/android/api/util/DisplayInfo;->density:F

    const/high16 v3, 0x42a40000    # 82.0f

    mul-float/2addr v3, v1

    const v4, 0x7f0202cd

    const v5, 0x7f0202ce

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lch/android/api/ui/ChCaptionView$CharacterInfo;-><init>(Lch/android/api/ui/ChCaptionView;FFII)V

    iput-object v0, p0, Lch/android/api/ui/ChCaptionView;->TOPSINK:Lch/android/api/ui/ChCaptionView$CharacterInfo;

    .line 116
    new-instance v6, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v6, v8, v8}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 118
    .local v6, "rlp2":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v0, 0xc

    invoke-virtual {v6, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 119
    const/16 v0, 0xe

    invoke-virtual {v6, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 121
    iget-object v0, p0, Lch/android/api/ui/ChCaptionView;->CAPTION_VIEW:Lch/android/api/ui/ChCaptionView$CpationView;

    invoke-virtual {p0, v0, v6}, Lch/android/api/ui/ChCaptionView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 123
    new-instance v7, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v7, v11, v11}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 124
    .local v7, "rlp3":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v0, 0x9

    invoke-virtual {v7, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 125
    const/16 v0, 0xa

    invoke-virtual {v7, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 126
    iget-object v0, p0, Lch/android/api/ui/ChCaptionView;->SKIP_BTN:Lch/android/api/ui/ChCaptionView$SkipButton;

    invoke-virtual {p0, v0, v7}, Lch/android/api/ui/ChCaptionView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 128
    invoke-virtual {p0}, Lch/android/api/ui/ChCaptionView;->closeCaption()V

    .line 129
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lch/android/api/ui/ChCaptionView;->setSkipVisibility(I)V

    .line 131
    iput-boolean v9, p0, Lch/android/api/ui/ChCaptionView;->m_isExistNextPage:Z

    .line 133
    new-instance v0, Lch/android/api/ui/ChTextView;

    invoke-direct {v0, p1}, Lch/android/api/ui/ChTextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lch/android/api/ui/ChCaptionView;->NPC_NAME_VIEW:Lch/android/api/ui/ChTextView;

    .line 134
    iget-object v0, p0, Lch/android/api/ui/ChCaptionView;->NPC_NAME_VIEW:Lch/android/api/ui/ChTextView;

    const v1, 0x6f000080

    invoke-virtual {v0, v1}, Lch/android/api/ui/ChTextView;->setBackgroundColor(I)V

    .line 135
    iget-object v0, p0, Lch/android/api/ui/ChCaptionView;->NPC_NAME_VIEW:Lch/android/api/ui/ChTextView;

    invoke-virtual {v0, v8}, Lch/android/api/ui/ChTextView;->setTextColor(I)V

    .line 136
    iget-object v0, p0, Lch/android/api/ui/ChCaptionView;->NPC_NAME_VIEW:Lch/android/api/ui/ChTextView;

    sget-object v1, Lch/android/api/util/TextPaints;->TYPE_FACE_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Lch/android/api/ui/ChTextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 137
    iget-object v0, p0, Lch/android/api/ui/ChCaptionView;->NPC_NAME_VIEW:Lch/android/api/ui/ChTextView;

    invoke-static {}, Lch/android/api/util/TextPaints;->getSNormalSize()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lch/android/api/ui/ChTextView;->setTextSize(F)V

    .line 138
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lch/android/api/ui/ChCaptionView;->npcNameRect:Landroid/graphics/Rect;

    .line 139
    return-void
.end method

.method static synthetic access$0(Lch/android/api/ui/ChCaptionView;)Lch/android/api/util/DisplayInfo;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lch/android/api/ui/ChCaptionView;->DI:Lch/android/api/util/DisplayInfo;

    return-object v0
.end method

.method static synthetic access$1(Lch/android/api/ui/ChCaptionView;)Lch/android/api/ui/ChCaptionView$CpationView;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lch/android/api/ui/ChCaptionView;->CAPTION_VIEW:Lch/android/api/ui/ChCaptionView$CpationView;

    return-object v0
.end method

.method static synthetic access$2(Lch/android/api/ui/ChCaptionView;)Z
    .locals 1

    .prologue
    .line 68
    iget-boolean v0, p0, Lch/android/api/ui/ChCaptionView;->m_isExistNextPage:Z

    return v0
.end method

.method static synthetic access$3(Lch/android/api/ui/ChCaptionView;)Z
    .locals 1

    .prologue
    .line 69
    iget-boolean v0, p0, Lch/android/api/ui/ChCaptionView;->m_isLeftSide:Z

    return v0
.end method

.method static synthetic access$4(Lch/android/api/ui/ChCaptionView;)I
    .locals 1

    .prologue
    .line 70
    iget v0, p0, Lch/android/api/ui/ChCaptionView;->m_bustNum:I

    return v0
.end method

.method static synthetic access$5(Lch/android/api/ui/ChCaptionView;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lch/android/api/ui/ChCaptionView;->m_name:Ljava/lang/String;

    return-object v0
.end method

.method private captionStrings(Landroid/graphics/Paint;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 7
    .param p1, "_paint"    # Landroid/graphics/Paint;
    .param p2, "_txt"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Paint;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 401
    move-object v4, p2

    .line 402
    .local v4, "text":Ljava/lang/String;
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 403
    .local v0, "captions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v2, 0x0

    .line 404
    .local v2, "startIndex":I
    const/4 v1, -0x1

    .line 405
    .local v1, "endIndex":I
    :goto_0
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-lt v1, v5, :cond_0

    .line 429
    return-object v0

    .line 406
    :cond_0
    if-lez v1, :cond_2

    move v2, v1

    .line 407
    :goto_1
    if-lez v2, :cond_1

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x2

    if-ge v2, v5, :cond_1

    invoke-virtual {v4, v2}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x20

    if-eq v5, v6, :cond_3

    invoke-virtual {v4, v2}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0xa

    if-eq v5, v6, :cond_3

    .line 412
    :cond_1
    invoke-direct {p0, p1, v4, v2}, Lch/android/api/ui/ChCaptionView;->getEndIndex(Landroid/graphics/Paint;Ljava/lang/String;I)I

    move-result v1

    .line 413
    if-gt v2, v1, :cond_4

    .line 414
    invoke-virtual {v4, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 418
    .local v3, "str":Ljava/lang/String;
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 406
    .end local v3    # "str":Ljava/lang/String;
    :cond_2
    const/4 v2, 0x0

    goto :goto_1

    .line 408
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 420
    :cond_4
    const-string v5, ""

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private getCharacterInfo(I)Lch/android/api/ui/ChCaptionView$CharacterInfo;
    .locals 3
    .param p1, "_index"    # I

    .prologue
    .line 465
    packed-switch p1, :pswitch_data_0

    .line 494
    const/4 v1, 0x0

    :goto_0
    return-object v1

    .line 467
    :pswitch_0
    invoke-static {}, Lch/kingdoms/ndk/NdkUiEventManager;->callNativeGetHeroInfo()Lch/kingdoms/ndk/data/HeroStatus;

    move-result-object v0

    .line 468
    .local v0, "hero":Lch/kingdoms/ndk/data/HeroStatus;
    invoke-virtual {v0}, Lch/kingdoms/ndk/data/HeroStatus;->getJob()I

    move-result v1

    const/4 v2, 0x5

    if-ne v1, v2, :cond_0

    .line 469
    iget-object v1, p0, Lch/android/api/ui/ChCaptionView;->CHARLES:Lch/android/api/ui/ChCaptionView$CharacterInfo;

    goto :goto_0

    .line 471
    :cond_0
    iget-object v1, p0, Lch/android/api/ui/ChCaptionView;->MICHAEL:Lch/android/api/ui/ChCaptionView$CharacterInfo;

    goto :goto_0

    .line 474
    .end local v0    # "hero":Lch/kingdoms/ndk/data/HeroStatus;
    :pswitch_1
    iget-object v1, p0, Lch/android/api/ui/ChCaptionView;->CHARLES:Lch/android/api/ui/ChCaptionView$CharacterInfo;

    goto :goto_0

    .line 476
    :pswitch_2
    iget-object v1, p0, Lch/android/api/ui/ChCaptionView;->CAESAR:Lch/android/api/ui/ChCaptionView$CharacterInfo;

    goto :goto_0

    .line 478
    :pswitch_3
    iget-object v1, p0, Lch/android/api/ui/ChCaptionView;->KING:Lch/android/api/ui/ChCaptionView$CharacterInfo;

    goto :goto_0

    .line 480
    :pswitch_4
    iget-object v1, p0, Lch/android/api/ui/ChCaptionView;->PELLA:Lch/android/api/ui/ChCaptionView$CharacterInfo;

    goto :goto_0

    .line 482
    :pswitch_5
    iget-object v1, p0, Lch/android/api/ui/ChCaptionView;->NECHAYEFF:Lch/android/api/ui/ChCaptionView$CharacterInfo;

    goto :goto_0

    .line 484
    :pswitch_6
    iget-object v1, p0, Lch/android/api/ui/ChCaptionView;->BARENA:Lch/android/api/ui/ChCaptionView$CharacterInfo;

    goto :goto_0

    .line 486
    :pswitch_7
    iget-object v1, p0, Lch/android/api/ui/ChCaptionView;->BETINA:Lch/android/api/ui/ChCaptionView$CharacterInfo;

    goto :goto_0

    .line 488
    :pswitch_8
    iget-object v1, p0, Lch/android/api/ui/ChCaptionView;->KENKO:Lch/android/api/ui/ChCaptionView$CharacterInfo;

    goto :goto_0

    .line 490
    :pswitch_9
    iget-object v1, p0, Lch/android/api/ui/ChCaptionView;->EDWARD:Lch/android/api/ui/ChCaptionView$CharacterInfo;

    goto :goto_0

    .line 492
    :pswitch_a
    iget-object v1, p0, Lch/android/api/ui/ChCaptionView;->TOPSINK:Lch/android/api/ui/ChCaptionView$CharacterInfo;

    goto :goto_0

    .line 465
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
    .end packed-switch
.end method

.method private getEndIndex(Landroid/graphics/Paint;Ljava/lang/String;I)I
    .locals 11
    .param p1, "_paint"    # Landroid/graphics/Paint;
    .param p2, "_txt"    # Ljava/lang/String;
    .param p3, "_startIndex"    # I

    .prologue
    const/16 v10, 0x7a

    const/16 v9, 0x61

    const/16 v8, 0x5a

    const/16 v7, 0x41

    const/16 v6, 0x20

    .line 434
    move v2, p3

    .local v2, "endIndex":I
    :goto_0
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v4

    if-lt v2, v4, :cond_1

    .line 440
    :cond_0
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 441
    .local v0, "bounds":Landroid/graphics/Rect;
    invoke-virtual {p1, p2, p3, v2, v0}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 443
    iget v4, v0, Landroid/graphics/Rect;->right:I

    iget v5, v0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    iget-object v5, p0, Lch/android/api/ui/ChCaptionView;->DI:Lch/android/api/util/DisplayInfo;

    iget v5, v5, Lch/android/api/util/DisplayInfo;->density:F

    mul-float/2addr v4, v5

    iget v5, p0, Lch/android/api/ui/ChCaptionView;->CAPTION_W:I

    int-to-float v5, v5

    cmpg-float v4, v4, v5

    if-gez v4, :cond_3

    move v3, v2

    .line 460
    .end local v2    # "endIndex":I
    .local v3, "endIndex":I
    :goto_1
    return v3

    .line 435
    .end local v0    # "bounds":Landroid/graphics/Rect;
    .end local v3    # "endIndex":I
    .restart local v2    # "endIndex":I
    :cond_1
    invoke-virtual {p2, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0xa

    if-eq v4, v5, :cond_0

    .line 434
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 447
    .restart local v0    # "bounds":Landroid/graphics/Rect;
    :cond_2
    add-int/lit8 v2, v2, -0x1

    .line 448
    invoke-virtual {p1, p2, p3, v2, v0}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 446
    :cond_3
    iget v4, v0, Landroid/graphics/Rect;->right:I

    iget v5, v0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    iget-object v5, p0, Lch/android/api/ui/ChCaptionView;->DI:Lch/android/api/util/DisplayInfo;

    iget v5, v5, Lch/android/api/util/DisplayInfo;->density:F

    mul-float/2addr v4, v5

    iget v5, p0, Lch/android/api/ui/ChCaptionView;->CAPTION_W:I

    int-to-float v5, v5

    cmpl-float v4, v4, v5

    if-gez v4, :cond_2

    .line 451
    invoke-virtual {p2, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 452
    .local v1, "endCh":C
    if-eq v1, v6, :cond_4

    if-lt v1, v9, :cond_4

    if-le v1, v10, :cond_5

    :cond_4
    if-lt v1, v7, :cond_8

    if-gt v1, v8, :cond_8

    .line 453
    :cond_5
    :goto_2
    if-eq v1, v6, :cond_7

    .line 454
    if-lt v1, v9, :cond_6

    if-le v1, v10, :cond_9

    :cond_6
    if-lt v1, v7, :cond_7

    if-le v1, v8, :cond_9

    .line 458
    :cond_7
    add-int/lit8 v2, v2, 0x1

    :cond_8
    move v3, v2

    .line 460
    .end local v2    # "endIndex":I
    .restart local v3    # "endIndex":I
    goto :goto_1

    .line 455
    .end local v3    # "endIndex":I
    .restart local v2    # "endIndex":I
    :cond_9
    add-int/lit8 v2, v2, -0x1

    .line 456
    invoke-virtual {p2, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    goto :goto_2
.end method

.method private setCaptionVisibility(I)V
    .locals 1
    .param p1, "visible"    # I

    .prologue
    .line 180
    iget-object v0, p0, Lch/android/api/ui/ChCaptionView;->CAPTION_VIEW:Lch/android/api/ui/ChCaptionView$CpationView;

    invoke-virtual {v0, p1}, Lch/android/api/ui/ChCaptionView$CpationView;->setVisibility(I)V

    .line 181
    return-void
.end method


# virtual methods
.method public closeCaption()V
    .locals 2

    .prologue
    .line 254
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lch/android/api/ui/ChCaptionView;->setCaptionVisibility(I)V

    .line 256
    iget-object v0, p0, Lch/android/api/ui/ChCaptionView;->TXT_VIEW:Lch/android/api/ui/ChTextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lch/android/api/ui/ChTextView;->setText(Ljava/lang/CharSequence;)V

    .line 257
    const/4 v0, 0x0

    iput-boolean v0, p0, Lch/android/api/ui/ChCaptionView;->m_isExistNextPage:Z

    .line 258
    return-void
.end method

.method public closeNpcName()V
    .locals 1

    .prologue
    .line 172
    iget-object v0, p0, Lch/android/api/ui/ChCaptionView;->NPC_NAME_VIEW:Lch/android/api/ui/ChTextView;

    invoke-virtual {p0, v0}, Lch/android/api/ui/ChCaptionView;->removeView(Landroid/view/View;)V

    .line 173
    return-void
.end method

.method public getCaptionText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 176
    iget-object v0, p0, Lch/android/api/ui/ChCaptionView;->CAPTION_VIEW:Lch/android/api/ui/ChCaptionView$CpationView;

    invoke-virtual {v0}, Lch/android/api/ui/ChCaptionView$CpationView;->getCaptionText()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public invisibleNpcName()V
    .locals 2

    .prologue
    .line 166
    iget-object v0, p0, Lch/android/api/ui/ChCaptionView;->NPC_NAME_VIEW:Lch/android/api/ui/ChTextView;

    invoke-virtual {v0}, Lch/android/api/ui/ChTextView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 167
    iget-object v0, p0, Lch/android/api/ui/ChCaptionView;->NPC_NAME_VIEW:Lch/android/api/ui/ChTextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lch/android/api/ui/ChTextView;->setVisibility(I)V

    .line 169
    :cond_0
    return-void
.end method

.method public isSkipBtnVisible()Z
    .locals 1

    .prologue
    .line 202
    iget-object v0, p0, Lch/android/api/ui/ChCaptionView;->SKIP_BTN:Lch/android/api/ui/ChCaptionView$SkipButton;

    invoke-virtual {v0}, Lch/android/api/ui/ChCaptionView$SkipButton;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 263
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    .line 264
    .local v1, "id":I
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 265
    .local v0, "handler":Landroid/os/Handler;
    new-instance v2, Lch/android/api/ui/ChCaptionView$1;

    invoke-direct {v2, p0, v1}, Lch/android/api/ui/ChCaptionView$1;-><init>(Lch/android/api/ui/ChCaptionView;I)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 299
    return-void
.end method

.method public setSkipVisibility(I)V
    .locals 1
    .param p1, "visible"    # I

    .prologue
    .line 186
    iget-object v0, p0, Lch/android/api/ui/ChCaptionView;->SKIP_BTN:Lch/android/api/ui/ChCaptionView$SkipButton;

    invoke-virtual {v0, p1}, Lch/android/api/ui/ChCaptionView$SkipButton;->setVisibility(I)V

    .line 187
    if-nez p1, :cond_0

    .line 188
    iget-object v0, p0, Lch/android/api/ui/ChCaptionView;->SKIP_BTN:Lch/android/api/ui/ChCaptionView$SkipButton;

    invoke-virtual {v0}, Lch/android/api/ui/ChCaptionView$SkipButton;->start()V

    .line 199
    :goto_0
    return-void

    .line 195
    :cond_0
    iget-object v0, p0, Lch/android/api/ui/ChCaptionView;->SKIP_BTN:Lch/android/api/ui/ChCaptionView$SkipButton;

    invoke-virtual {v0}, Lch/android/api/ui/ChCaptionView$SkipButton;->end()V

    goto :goto_0
.end method

.method public showCaption(ZLjava/lang/String;ILjava/lang/String;)V
    .locals 11
    .param p1, "_isLeftSide"    # Z
    .param p2, "_txt"    # Ljava/lang/String;
    .param p3, "_bustNum"    # I
    .param p4, "_name"    # Ljava/lang/String;

    .prologue
    const/high16 v7, 0x41880000    # 17.0f

    const/high16 v10, 0x40a00000    # 5.0f

    const/high16 v8, 0x41700000    # 15.0f

    const/4 v9, 0x0

    .line 206
    iput-boolean p1, p0, Lch/android/api/ui/ChCaptionView;->m_isLeftSide:Z

    .line 207
    iput p3, p0, Lch/android/api/ui/ChCaptionView;->m_bustNum:I

    .line 208
    iput-object p4, p0, Lch/android/api/ui/ChCaptionView;->m_name:Ljava/lang/String;

    .line 209
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 210
    .local v3, "texts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-boolean v4, p0, Lch/android/api/ui/ChCaptionView;->m_isExistNextPage:Z

    if-nez v4, :cond_0

    .line 211
    iget-object v4, p0, Lch/android/api/ui/ChCaptionView;->TXT_PAINT:Landroid/graphics/Paint;

    invoke-direct {p0, v4, p2}, Lch/android/api/ui/ChCaptionView;->captionStrings(Landroid/graphics/Paint;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    iput-object v4, p0, Lch/android/api/ui/ChCaptionView;->m_linedStrings:Ljava/util/ArrayList;

    .line 214
    :cond_0
    iget-object v4, p0, Lch/android/api/ui/ChCaptionView;->m_linedStrings:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    iget v5, p0, Lch/android/api/ui/ChCaptionView;->lineSize:I

    if-le v4, v5, :cond_2

    .line 215
    const/4 v4, 0x1

    iput-boolean v4, p0, Lch/android/api/ui/ChCaptionView;->m_isExistNextPage:Z

    .line 216
    iget v2, p0, Lch/android/api/ui/ChCaptionView;->lineSize:I

    .line 221
    .local v2, "size":I
    :goto_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-lt v1, v2, :cond_3

    .line 225
    iget-object v4, p0, Lch/android/api/ui/ChCaptionView;->m_linedStrings:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-nez v4, :cond_1

    .line 226
    const/4 v4, 0x0

    iput-object v4, p0, Lch/android/api/ui/ChCaptionView;->m_linedStrings:Ljava/util/ArrayList;

    .line 229
    :cond_1
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_5

    .line 230
    if-eqz p1, :cond_4

    .line 231
    iget-object v4, p0, Lch/android/api/ui/ChCaptionView;->TXT_VIEW:Lch/android/api/ui/ChTextView;

    iget-object v5, p0, Lch/android/api/ui/ChCaptionView;->DI:Lch/android/api/util/DisplayInfo;

    iget v5, v5, Lch/android/api/util/DisplayInfo;->density:F

    const/high16 v6, 0x43200000    # 160.0f

    mul-float/2addr v5, v6

    float-to-int v5, v5

    iget-object v6, p0, Lch/android/api/ui/ChCaptionView;->DI:Lch/android/api/util/DisplayInfo;

    iget v6, v6, Lch/android/api/util/DisplayInfo;->density:F

    mul-float/2addr v6, v7

    float-to-int v6, v6

    iget-object v7, p0, Lch/android/api/ui/ChCaptionView;->DI:Lch/android/api/util/DisplayInfo;

    iget v7, v7, Lch/android/api/util/DisplayInfo;->density:F

    mul-float/2addr v7, v8

    float-to-int v7, v7

    iget-object v8, p0, Lch/android/api/ui/ChCaptionView;->DI:Lch/android/api/util/DisplayInfo;

    iget v8, v8, Lch/android/api/util/DisplayInfo;->density:F

    mul-float/2addr v8, v10

    float-to-int v8, v8

    invoke-virtual {v4, v5, v6, v7, v8}, Lch/android/api/ui/ChTextView;->setPadding(IIII)V

    .line 235
    :goto_2
    invoke-direct {p0, p3}, Lch/android/api/ui/ChCaptionView;->getCharacterInfo(I)Lch/android/api/ui/ChCaptionView$CharacterInfo;

    move-result-object v0

    .line 237
    .local v0, "characterInfo":Lch/android/api/ui/ChCaptionView$CharacterInfo;
    iget-object v5, p0, Lch/android/api/ui/ChCaptionView;->CAPTION_VIEW:Lch/android/api/ui/ChCaptionView$CpationView;

    new-array v4, v9, [Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/String;

    invoke-virtual {v5, p1, v4, v0, p4}, Lch/android/api/ui/ChCaptionView$CpationView;->showCaption(Z[Ljava/lang/String;Lch/android/api/ui/ChCaptionView$CharacterInfo;Ljava/lang/String;)V

    .line 239
    invoke-direct {p0, v9}, Lch/android/api/ui/ChCaptionView;->setCaptionVisibility(I)V

    .line 251
    .end local v0    # "characterInfo":Lch/android/api/ui/ChCaptionView$CharacterInfo;
    :goto_3
    return-void

    .line 218
    .end local v1    # "i":I
    .end local v2    # "size":I
    :cond_2
    iput-boolean v9, p0, Lch/android/api/ui/ChCaptionView;->m_isExistNextPage:Z

    .line 219
    iget-object v4, p0, Lch/android/api/ui/ChCaptionView;->m_linedStrings:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v2

    .restart local v2    # "size":I
    goto :goto_0

    .line 222
    .restart local v1    # "i":I
    :cond_3
    iget-object v4, p0, Lch/android/api/ui/ChCaptionView;->m_linedStrings:Ljava/util/ArrayList;

    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 223
    iget-object v4, p0, Lch/android/api/ui/ChCaptionView;->m_linedStrings:Ljava/util/ArrayList;

    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 221
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 233
    :cond_4
    iget-object v4, p0, Lch/android/api/ui/ChCaptionView;->TXT_VIEW:Lch/android/api/ui/ChTextView;

    iget-object v5, p0, Lch/android/api/ui/ChCaptionView;->DI:Lch/android/api/util/DisplayInfo;

    iget v5, v5, Lch/android/api/util/DisplayInfo;->density:F

    mul-float/2addr v5, v8

    float-to-int v5, v5

    iget-object v6, p0, Lch/android/api/ui/ChCaptionView;->DI:Lch/android/api/util/DisplayInfo;

    iget v6, v6, Lch/android/api/util/DisplayInfo;->density:F

    mul-float/2addr v6, v7

    float-to-int v6, v6

    iget-object v7, p0, Lch/android/api/ui/ChCaptionView;->DI:Lch/android/api/util/DisplayInfo;

    iget v7, v7, Lch/android/api/util/DisplayInfo;->density:F

    mul-float/2addr v7, v8

    float-to-int v7, v7

    iget-object v8, p0, Lch/android/api/ui/ChCaptionView;->DI:Lch/android/api/util/DisplayInfo;

    iget v8, v8, Lch/android/api/util/DisplayInfo;->density:F

    mul-float/2addr v8, v10

    float-to-int v8, v8

    invoke-virtual {v4, v5, v6, v7, v8}, Lch/android/api/ui/ChTextView;->setPadding(IIII)V

    goto :goto_2

    .line 249
    :cond_5
    const/4 v4, 0x4

    invoke-direct {p0, v4}, Lch/android/api/ui/ChCaptionView;->setCaptionVisibility(I)V

    goto :goto_3
.end method

.method public showNpcName(Ljava/lang/String;II)V
    .locals 7
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "leftMargin"    # I
    .param p3, "topMargin"    # I

    .prologue
    const/4 v6, -0x2

    .line 142
    const-string v3, "KD"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    iget-object v3, p0, Lch/android/api/ui/ChCaptionView;->NPC_NAME_VIEW:Lch/android/api/ui/ChTextView;

    invoke-virtual {v3}, Lch/android/api/ui/ChTextView;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    .line 144
    .local v2, "vg":Landroid/view/ViewGroup;
    if-eqz v2, :cond_0

    .line 145
    iget-object v3, p0, Lch/android/api/ui/ChCaptionView;->NPC_NAME_VIEW:Lch/android/api/ui/ChTextView;

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 147
    :cond_0
    iget-object v3, p0, Lch/android/api/ui/ChCaptionView;->NPC_NAME_VIEW:Lch/android/api/ui/ChTextView;

    invoke-virtual {v3, p1}, Lch/android/api/ui/ChTextView;->setText(Ljava/lang/CharSequence;)V

    .line 148
    iget-object v3, p0, Lch/android/api/ui/ChCaptionView;->NPC_NAME_VIEW:Lch/android/api/ui/ChTextView;

    invoke-virtual {v3}, Lch/android/api/ui/ChTextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    .line 149
    .local v0, "paint":Landroid/text/TextPaint;
    const/4 v3, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    iget-object v5, p0, Lch/android/api/ui/ChCaptionView;->npcNameRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, v3, v4, v5}, Landroid/text/TextPaint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 150
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v6, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 151
    .local v1, "rlp":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v3, 0x9

    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 152
    const/16 v3, 0xa

    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 153
    invoke-virtual {v0}, Landroid/text/TextPaint;->getTextSize()F

    move-result v3

    float-to-int v3, v3

    div-int/lit8 v3, v3, 0x2

    sub-int v3, p3, v3

    iput v3, v1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 154
    iget-object v3, p0, Lch/android/api/ui/ChCaptionView;->npcNameRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    iget-object v4, p0, Lch/android/api/ui/ChCaptionView;->npcNameRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    sub-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x2

    sub-int v3, p2, v3

    iput v3, v1, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 156
    iget-object v3, p0, Lch/android/api/ui/ChCaptionView;->NPC_NAME_VIEW:Lch/android/api/ui/ChTextView;

    invoke-virtual {p0, v3, v1}, Lch/android/api/ui/ChCaptionView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 157
    return-void
.end method

.method public visibleNpcName()V
    .locals 2

    .prologue
    .line 160
    iget-object v0, p0, Lch/android/api/ui/ChCaptionView;->NPC_NAME_VIEW:Lch/android/api/ui/ChTextView;

    invoke-virtual {v0}, Lch/android/api/ui/ChTextView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 161
    iget-object v0, p0, Lch/android/api/ui/ChCaptionView;->NPC_NAME_VIEW:Lch/android/api/ui/ChTextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lch/android/api/ui/ChTextView;->setVisibility(I)V

    .line 163
    :cond_0
    return-void
.end method
