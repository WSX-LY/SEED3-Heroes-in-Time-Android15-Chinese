.class public Lch/kingdoms/android/ui/StatusUi$StatusView;
.super Lch/android/api/ui/ChLinearLayout;
.source "StatusUi.java"

# interfaces
.implements Lch/android/api/ui/ICheckConfrm;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lch/kingdoms/android/ui/StatusUi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "StatusView"
.end annotation


# instance fields
.field private final f_context:Landroid/content/Context;

.field private final f_dexBtn:Lch/android/api/ui/ChStatButton;

.field private final f_info:Lch/android/api/ui/ChStatusInfoView;

.field private final f_intBtn:Lch/android/api/ui/ChStatButton;

.field private final f_portrait:Landroid/widget/ImageView;

.field private final f_statPointsView:Landroid/widget/TextView;

.field private final f_statsView:Lch/android/api/ui/ChStatView;

.field private final f_strBtn:Lch/android/api/ui/ChStatButton;

.field private final f_vitBtn:Lch/android/api/ui/ChStatButton;

.field final synthetic this$0:Lch/kingdoms/android/ui/StatusUi;


# direct methods
.method public constructor <init>(Lch/kingdoms/android/ui/StatusUi;Landroid/app/Activity;F)V
    .locals 17
    .param p2, "_activity"    # Landroid/app/Activity;
    .param p3, "_density"    # F

    .prologue
    .line 148
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lch/kingdoms/android/ui/StatusUi$StatusView;->this$0:Lch/kingdoms/android/ui/StatusUi;

    .line 149
    invoke-virtual/range {p2 .. p2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v12

    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lch/android/api/ui/ChLinearLayout;-><init>(Landroid/content/Context;)V

    .line 151
    const/4 v12, 0x0

    move-object/from16 v0, p0

    invoke-super {v0, v12}, Lch/android/api/ui/ChLinearLayout;->setOrientation(I)V

    .line 153
    invoke-virtual/range {p2 .. p2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v12

    move-object/from16 v0, p0

    iput-object v12, v0, Lch/kingdoms/android/ui/StatusUi$StatusView;->f_context:Landroid/content/Context;

    .line 154
    new-instance v4, Lch/android/api/ui/ChLinearLayout;

    move-object/from16 v0, p0

    iget-object v12, v0, Lch/kingdoms/android/ui/StatusUi$StatusView;->f_context:Landroid/content/Context;

    invoke-direct {v4, v12}, Lch/android/api/ui/ChLinearLayout;-><init>(Landroid/content/Context;)V

    .line 155
    .local v4, "innerLayout":Lch/android/api/ui/ChLinearLayout;
    const/4 v12, 0x1

    invoke-virtual {v4, v12}, Lch/android/api/ui/ChLinearLayout;->setOrientation(I)V

    .line 158
    const v12, 0x7f02024a

    move-object/from16 v0, p2

    invoke-static {v0, v12}, Lch/android/api/ui/ChViewGen;->createImageView(Landroid/app/Activity;I)Lch/android/api/ui/ChImageView;

    move-result-object v12

    move-object/from16 v0, p0

    iput-object v12, v0, Lch/kingdoms/android/ui/StatusUi$StatusView;->f_portrait:Landroid/widget/ImageView;

    .line 161
    new-instance v12, Lch/android/api/ui/ChStatusInfoView;

    move-object/from16 v0, p0

    iget-object v13, v0, Lch/kingdoms/android/ui/StatusUi$StatusView;->f_context:Landroid/content/Context;

    invoke-static/range {p1 .. p1}, Lch/kingdoms/android/ui/StatusUi;->access$0(Lch/kingdoms/android/ui/StatusUi;)Lch/kingdoms/ndk/data/HeroStatus;

    move-result-object v14

    move/from16 v0, p3

    invoke-direct {v12, v13, v0, v14}, Lch/android/api/ui/ChStatusInfoView;-><init>(Landroid/content/Context;FLch/kingdoms/ndk/data/HeroStatus;)V

    move-object/from16 v0, p0

    iput-object v12, v0, Lch/kingdoms/android/ui/StatusUi$StatusView;->f_info:Lch/android/api/ui/ChStatusInfoView;

    .line 164
    new-instance v12, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v13, v0, Lch/kingdoms/android/ui/StatusUi$StatusView;->f_context:Landroid/content/Context;

    invoke-direct {v12, v13}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v12, v0, Lch/kingdoms/android/ui/StatusUi$StatusView;->f_statPointsView:Landroid/widget/TextView;

    .line 165
    move-object/from16 v0, p0

    iget-object v12, v0, Lch/kingdoms/android/ui/StatusUi$StatusView;->f_statPointsView:Landroid/widget/TextView;

    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setGravity(I)V

    .line 166
    move-object/from16 v0, p0

    iget-object v12, v0, Lch/kingdoms/android/ui/StatusUi$StatusView;->f_statPointsView:Landroid/widget/TextView;

    const/16 v13, 0x9

    invoke-static {v13}, Lch/android/api/util/TextPaints;->calDensityFontSize(I)I

    move-result v13

    int-to-float v13, v13

    invoke-static {v12, v13}, Lch/android/api/util/PixelText;->setSize(Landroid/widget/TextView;F)V

    .line 167
    sget-object v12, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    const/4 v13, 0x1

    invoke-static {v12, v13}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v2

    .line 168
    .local v2, "boldTypeFace":Landroid/graphics/Typeface;
    move-object/from16 v0, p0

    iget-object v12, v0, Lch/kingdoms/android/ui/StatusUi$StatusView;->f_statPointsView:Landroid/widget/TextView;

    invoke-virtual {v12, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 170
    const/4 v12, -0x1

    const/4 v13, -0x2

    const/4 v14, 0x0

    .line 169
    move-object/from16 v0, p2

    invoke-static {v0, v12, v13, v14}, Lch/android/api/ui/ChViewGen;->createLinearLayout(Landroid/app/Activity;III)Lch/android/api/ui/ChLinearLayout;

    move-result-object v10

    .line 171
    .local v10, "statBtnsLayout":Lch/android/api/ui/ChLinearLayout;
    new-instance v12, Lch/android/api/ui/ChStatButton;

    move-object/from16 v0, p0

    iget-object v13, v0, Lch/kingdoms/android/ui/StatusUi$StatusView;->f_context:Landroid/content/Context;

    const v14, 0x7f0202b1

    const v15, 0x7f0202b0

    invoke-direct {v12, v13, v14, v15}, Lch/android/api/ui/ChStatButton;-><init>(Landroid/content/Context;II)V

    move-object/from16 v0, p0

    iput-object v12, v0, Lch/kingdoms/android/ui/StatusUi$StatusView;->f_strBtn:Lch/android/api/ui/ChStatButton;

    .line 172
    move-object/from16 v0, p0

    iget-object v12, v0, Lch/kingdoms/android/ui/StatusUi$StatusView;->f_strBtn:Lch/android/api/ui/ChStatButton;

    const/16 v13, 0x64

    invoke-virtual {v12, v13}, Lch/android/api/ui/ChStatButton;->setId(I)V

    .line 173
    new-instance v12, Lch/android/api/ui/ChStatButton;

    move-object/from16 v0, p0

    iget-object v13, v0, Lch/kingdoms/android/ui/StatusUi$StatusView;->f_context:Landroid/content/Context;

    const v14, 0x7f0202b1

    const v15, 0x7f0202b0

    invoke-direct {v12, v13, v14, v15}, Lch/android/api/ui/ChStatButton;-><init>(Landroid/content/Context;II)V

    move-object/from16 v0, p0

    iput-object v12, v0, Lch/kingdoms/android/ui/StatusUi$StatusView;->f_vitBtn:Lch/android/api/ui/ChStatButton;

    .line 174
    move-object/from16 v0, p0

    iget-object v12, v0, Lch/kingdoms/android/ui/StatusUi$StatusView;->f_vitBtn:Lch/android/api/ui/ChStatButton;

    const/16 v13, 0x65

    invoke-virtual {v12, v13}, Lch/android/api/ui/ChStatButton;->setId(I)V

    .line 175
    new-instance v12, Lch/android/api/ui/ChStatButton;

    move-object/from16 v0, p0

    iget-object v13, v0, Lch/kingdoms/android/ui/StatusUi$StatusView;->f_context:Landroid/content/Context;

    const v14, 0x7f0202b1

    const v15, 0x7f0202b0

    invoke-direct {v12, v13, v14, v15}, Lch/android/api/ui/ChStatButton;-><init>(Landroid/content/Context;II)V

    move-object/from16 v0, p0

    iput-object v12, v0, Lch/kingdoms/android/ui/StatusUi$StatusView;->f_dexBtn:Lch/android/api/ui/ChStatButton;

    .line 176
    move-object/from16 v0, p0

    iget-object v12, v0, Lch/kingdoms/android/ui/StatusUi$StatusView;->f_dexBtn:Lch/android/api/ui/ChStatButton;

    const/16 v13, 0x66

    invoke-virtual {v12, v13}, Lch/android/api/ui/ChStatButton;->setId(I)V

    .line 177
    new-instance v12, Lch/android/api/ui/ChStatButton;

    move-object/from16 v0, p0

    iget-object v13, v0, Lch/kingdoms/android/ui/StatusUi$StatusView;->f_context:Landroid/content/Context;

    const v14, 0x7f0202b1

    const v15, 0x7f0202b0

    invoke-direct {v12, v13, v14, v15}, Lch/android/api/ui/ChStatButton;-><init>(Landroid/content/Context;II)V

    move-object/from16 v0, p0

    iput-object v12, v0, Lch/kingdoms/android/ui/StatusUi$StatusView;->f_intBtn:Lch/android/api/ui/ChStatButton;

    .line 178
    move-object/from16 v0, p0

    iget-object v12, v0, Lch/kingdoms/android/ui/StatusUi$StatusView;->f_intBtn:Lch/android/api/ui/ChStatButton;

    const/16 v13, 0x67

    invoke-virtual {v12, v13}, Lch/android/api/ui/ChStatButton;->setId(I)V

    .line 180
    const/4 v12, 0x4

    new-array v9, v12, [Landroid/view/View;

    const/4 v12, 0x0

    move-object/from16 v0, p0

    iget-object v13, v0, Lch/kingdoms/android/ui/StatusUi$StatusView;->f_strBtn:Lch/android/api/ui/ChStatButton;

    aput-object v13, v9, v12

    const/4 v12, 0x1

    move-object/from16 v0, p0

    iget-object v13, v0, Lch/kingdoms/android/ui/StatusUi$StatusView;->f_vitBtn:Lch/android/api/ui/ChStatButton;

    aput-object v13, v9, v12

    const/4 v12, 0x2

    move-object/from16 v0, p0

    iget-object v13, v0, Lch/kingdoms/android/ui/StatusUi$StatusView;->f_dexBtn:Lch/android/api/ui/ChStatButton;

    aput-object v13, v9, v12

    const/4 v12, 0x3

    move-object/from16 v0, p0

    iget-object v13, v0, Lch/kingdoms/android/ui/StatusUi$StatusView;->f_intBtn:Lch/android/api/ui/ChStatButton;

    aput-object v13, v9, v12

    .line 182
    .local v9, "statBtns":[Landroid/view/View;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v12, v9

    if-lt v3, v12, :cond_0

    .line 197
    new-instance v12, Lch/android/api/ui/ChStatView;

    move-object/from16 v0, p0

    iget-object v13, v0, Lch/kingdoms/android/ui/StatusUi$StatusView;->f_context:Landroid/content/Context;

    invoke-static/range {p1 .. p1}, Lch/kingdoms/android/ui/StatusUi;->access$0(Lch/kingdoms/android/ui/StatusUi;)Lch/kingdoms/ndk/data/HeroStatus;

    move-result-object v14

    move/from16 v0, p3

    invoke-direct {v12, v13, v14, v0}, Lch/android/api/ui/ChStatView;-><init>(Landroid/content/Context;Lch/kingdoms/ndk/data/HeroStatus;F)V

    move-object/from16 v0, p0

    iput-object v12, v0, Lch/kingdoms/android/ui/StatusUi$StatusView;->f_statsView:Lch/android/api/ui/ChStatView;

    .line 198
    move-object/from16 v0, p0

    iget-object v12, v0, Lch/kingdoms/android/ui/StatusUi$StatusView;->f_statsView:Lch/android/api/ui/ChStatView;

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    invoke-virtual/range {v12 .. v16}, Lch/android/api/ui/ChStatView;->setPadding(IIII)V

    .line 199
    const/4 v12, -0x2

    const/4 v13, -0x2

    const/4 v14, 0x1

    move-object/from16 v0, p2

    invoke-static {v0, v12, v13, v14}, Lch/android/api/ui/ChViewGen;->createLinearLayout(Landroid/app/Activity;III)Lch/android/api/ui/ChLinearLayout;

    move-result-object v11

    .line 200
    .local v11, "statLayout":Lch/android/api/ui/ChLinearLayout;
    const v12, 0x7f0202b7

    invoke-virtual {v11, v12}, Lch/android/api/ui/ChLinearLayout;->setBackgroundResource(I)V

    .line 202
    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v12, -0x1

    const/4 v13, -0x2

    invoke-direct {v6, v12, v13}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 203
    .local v6, "lp1":Landroid/widget/LinearLayout$LayoutParams;
    const/4 v12, 0x1

    iput v12, v6, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 204
    move-object/from16 v0, p0

    iget-object v12, v0, Lch/kingdoms/android/ui/StatusUi$StatusView;->f_statPointsView:Landroid/widget/TextView;

    invoke-virtual {v11, v12, v6}, Lch/android/api/ui/ChLinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 205
    new-instance v12, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual/range {p0 .. p0}, Lch/kingdoms/android/ui/StatusUi$StatusView;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f0202b7

    invoke-static {v13, v14}, Lch/android/api/util/BmpUtil;->getBmpWidth(Landroid/content/res/Resources;I)I

    move-result v13

    const/4 v14, -0x2

    invoke-direct {v12, v13, v14}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v11, v10, v12}, Lch/android/api/ui/ChLinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 206
    move-object/from16 v0, p0

    iget-object v12, v0, Lch/kingdoms/android/ui/StatusUi$StatusView;->f_statsView:Lch/android/api/ui/ChStatView;

    invoke-virtual {v11, v12}, Lch/android/api/ui/ChLinearLayout;->addView(Landroid/view/View;)V

    .line 208
    move-object/from16 v0, p0

    iget-object v12, v0, Lch/kingdoms/android/ui/StatusUi$StatusView;->f_info:Lch/android/api/ui/ChStatusInfoView;

    invoke-virtual {v4, v12}, Lch/android/api/ui/ChLinearLayout;->addView(Landroid/view/View;)V

    .line 209
    new-instance v8, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v12, -0x2

    const/4 v13, -0x2

    invoke-direct {v8, v12, v13}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 210
    .local v8, "lp3":Landroid/widget/LinearLayout$LayoutParams;
    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-virtual {v8, v12, v13, v14, v15}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 211
    invoke-virtual {v4, v11, v8}, Lch/android/api/ui/ChLinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 213
    move-object/from16 v0, p0

    iget-object v12, v0, Lch/kingdoms/android/ui/StatusUi$StatusView;->f_portrait:Landroid/widget/ImageView;

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lch/kingdoms/android/ui/StatusUi$StatusView;->addView(Landroid/view/View;)V

    .line 214
    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v12, -0x2

    const/4 v13, -0x2

    invoke-direct {v7, v12, v13}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 215
    .local v7, "lp2":Landroid/widget/LinearLayout$LayoutParams;
    const/4 v12, 0x0

    const/high16 v13, 0x40c00000    # 6.0f

    mul-float v13, v13, p3

    float-to-int v13, v13

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-virtual {v7, v12, v13, v14, v15}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 216
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v7}, Lch/kingdoms/android/ui/StatusUi$StatusView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 217
    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v13, v14, v15}, Lch/kingdoms/android/ui/StatusUi$StatusView;->setPadding(IIII)V

    const-string v12, "statusView initialized pixel-fonts"
    invoke-static {v12}, Lch/android/api/util/Seed3Diag;->event(Ljava/lang/String;)V
    .line 218
    return-void

    .line 183
    .end local v6    # "lp1":Landroid/widget/LinearLayout$LayoutParams;
    .end local v7    # "lp2":Landroid/widget/LinearLayout$LayoutParams;
    .end local v8    # "lp3":Landroid/widget/LinearLayout$LayoutParams;
    .end local v11    # "statLayout":Lch/android/api/ui/ChLinearLayout;
    :cond_0
    aget-object v12, v9, v3

    move-object/from16 v0, p1

    invoke-virtual {v12, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 184
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v12, -0x1

    const/4 v13, -0x2

    invoke-direct {v5, v12, v13}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 185
    .local v5, "lp":Landroid/widget/LinearLayout$LayoutParams;
    if-nez v3, :cond_1

    .line 186
    const/high16 v12, 0x41000000    # 8.0f

    mul-float v12, v12, p3

    float-to-int v12, v12

    iput v12, v5, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 187
    const/high16 v12, 0x40800000    # 4.0f

    mul-float v12, v12, p3

    float-to-int v12, v12

    iput v12, v5, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 194
    :goto_1
    aget-object v12, v9, v3

    invoke-virtual {v10, v12, v5}, Lch/android/api/ui/ChLinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 182
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    .line 188
    :cond_1
    array-length v12, v9

    add-int/lit8 v12, v12, -0x1

    if-ne v3, v12, :cond_2

    .line 189
    const/high16 v12, 0x40800000    # 4.0f

    mul-float v12, v12, p3

    float-to-int v12, v12

    iput v12, v5, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 190
    const/high16 v12, 0x41000000    # 8.0f

    mul-float v12, v12, p3

    float-to-int v12, v12

    iput v12, v5, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    goto :goto_1

    .line 192
    :cond_2
    const/high16 v12, 0x40800000    # 4.0f

    mul-float v12, v12, p3

    float-to-int v12, v12

    iput v12, v5, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    iput v12, v5, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    goto :goto_1
.end method


# virtual methods
.method public checkConfirm()Z
    .locals 2

    .prologue
    .line 260
    iget-object v0, p0, Lch/kingdoms/android/ui/StatusUi$StatusView;->this$0:Lch/kingdoms/android/ui/StatusUi;

    invoke-static {v0}, Lch/kingdoms/android/ui/StatusUi;->access$2(Lch/kingdoms/android/ui/StatusUi;)Lch/kingdoms/ndk/data/HeroStatus;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lch/kingdoms/android/ui/StatusUi$StatusView;->this$0:Lch/kingdoms/android/ui/StatusUi;

    invoke-static {v0}, Lch/kingdoms/android/ui/StatusUi;->access$0(Lch/kingdoms/android/ui/StatusUi;)Lch/kingdoms/ndk/data/HeroStatus;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lch/kingdoms/android/ui/StatusUi$StatusView;->this$0:Lch/kingdoms/android/ui/StatusUi;

    invoke-static {v0}, Lch/kingdoms/android/ui/StatusUi;->access$2(Lch/kingdoms/android/ui/StatusUi;)Lch/kingdoms/ndk/data/HeroStatus;

    move-result-object v0

    iget-object v1, p0, Lch/kingdoms/android/ui/StatusUi$StatusView;->this$0:Lch/kingdoms/android/ui/StatusUi;

    invoke-static {v1}, Lch/kingdoms/android/ui/StatusUi;->access$0(Lch/kingdoms/android/ui/StatusUi;)Lch/kingdoms/ndk/data/HeroStatus;

    move-result-object v1

    invoke-virtual {v0, v1}, Lch/kingdoms/ndk/data/HeroStatus;->isModified(Lch/kingdoms/ndk/data/HeroStatus;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 261
    sget-boolean v0, Lch/android/api/util/Consts;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 262
    const-string v0, "KD"

    const-string v1, "StatusUi.checkConfirm : modified"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 264
    :cond_0
    iget-object v0, p0, Lch/kingdoms/android/ui/StatusUi$StatusView;->this$0:Lch/kingdoms/android/ui/StatusUi;

    invoke-virtual {v0}, Lch/kingdoms/android/ui/StatusUi;->popUpConfirmView()V

    .line 265
    const/4 v0, 0x1

    .line 271
    :goto_0
    return v0

    .line 268
    :cond_1
    sget-boolean v0, Lch/android/api/util/Consts;->DEBUG:Z

    if-eqz v0, :cond_2

    .line 269
    const-string v0, "KD"

    const-string v1, "StatusUi.checkConfirm : not modified"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 271
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public initStat(Lch/kingdoms/ndk/data/HeroStatus;)V
    .locals 1
    .param p1, "orginal"    # Lch/kingdoms/ndk/data/HeroStatus;

    .prologue
    .line 239
    iget-object v0, p0, Lch/kingdoms/android/ui/StatusUi$StatusView;->f_statsView:Lch/android/api/ui/ChStatView;

    invoke-virtual {v0, p1}, Lch/android/api/ui/ChStatView;->init(Lch/kingdoms/ndk/data/HeroStatus;)V

    .line 240
    return-void
.end method

.method public lockStatBtns()V
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 232
    const/4 v3, 0x4

    new-array v1, v3, [Lch/android/api/ui/ChStatButton;

    iget-object v3, p0, Lch/kingdoms/android/ui/StatusUi$StatusView;->f_strBtn:Lch/android/api/ui/ChStatButton;

    aput-object v3, v1, v2

    const/4 v3, 0x1

    iget-object v4, p0, Lch/kingdoms/android/ui/StatusUi$StatusView;->f_vitBtn:Lch/android/api/ui/ChStatButton;

    aput-object v4, v1, v3

    const/4 v3, 0x2

    iget-object v4, p0, Lch/kingdoms/android/ui/StatusUi$StatusView;->f_dexBtn:Lch/android/api/ui/ChStatButton;

    aput-object v4, v1, v3

    const/4 v3, 0x3

    iget-object v4, p0, Lch/kingdoms/android/ui/StatusUi$StatusView;->f_intBtn:Lch/android/api/ui/ChStatButton;

    aput-object v4, v1, v3

    .line 233
    .local v1, "statBtns":[Lch/android/api/ui/ChStatButton;
    array-length v3, v1

    :goto_0
    if-lt v2, v3, :cond_0

    .line 236
    return-void

    .line 233
    :cond_0
    aget-object v0, v1, v2

    .line 234
    .local v0, "btn":Lch/android/api/ui/ChStatButton;
    invoke-virtual {v0}, Lch/android/api/ui/ChStatButton;->setToSelect()V

    .line 233
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public setVisibility(I)V
    .locals 1
    .param p1, "visibility"    # I

    .prologue
    .line 223
    invoke-super {p0, p1}, Lch/android/api/ui/ChLinearLayout;->setVisibility(I)V

    .line 224
    if-nez p1, :cond_0

    .line 225
    invoke-static {}, Lch/kingdoms/ndk/NdkUiEventManager;->callNativeGetHeroInfo()Lch/kingdoms/ndk/data/HeroStatus;

    move-result-object v0

    invoke-virtual {p0, v0}, Lch/kingdoms/android/ui/StatusUi$StatusView;->initStat(Lch/kingdoms/ndk/data/HeroStatus;)V

    .line 226
    iget-object v0, p0, Lch/kingdoms/android/ui/StatusUi$StatusView;->this$0:Lch/kingdoms/android/ui/StatusUi;

    invoke-static {v0}, Lch/kingdoms/android/ui/StatusUi;->access$1(Lch/kingdoms/android/ui/StatusUi;)V

    .line 228
    :cond_0
    invoke-virtual {p0}, Lch/kingdoms/android/ui/StatusUi$StatusView;->invalidate()V

    .line 229
    return-void
.end method

.method public updateStat()V
    .locals 5

    .prologue
    .line 243
    iget-object v1, p0, Lch/kingdoms/android/ui/StatusUi$StatusView;->f_context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 244
    .local v0, "res":Landroid/content/res/Resources;
    iget-object v1, p0, Lch/kingdoms/android/ui/StatusUi$StatusView;->f_info:Lch/android/api/ui/ChStatusInfoView;

    iget-object v2, p0, Lch/kingdoms/android/ui/StatusUi$StatusView;->this$0:Lch/kingdoms/android/ui/StatusUi;

    invoke-static {v2}, Lch/kingdoms/android/ui/StatusUi;->access$0(Lch/kingdoms/android/ui/StatusUi;)Lch/kingdoms/ndk/data/HeroStatus;

    move-result-object v2

    invoke-virtual {v1, v2}, Lch/android/api/ui/ChStatusInfoView;->setHeroStatus(Lch/kingdoms/ndk/data/HeroStatus;)V

    .line 245
    iget-object v1, p0, Lch/kingdoms/android/ui/StatusUi$StatusView;->f_info:Lch/android/api/ui/ChStatusInfoView;

    invoke-virtual {v1}, Lch/android/api/ui/ChStatusInfoView;->updateHpSpTp()V

    .line 246
    iget-object v1, p0, Lch/kingdoms/android/ui/StatusUi$StatusView;->f_statPointsView:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Stat Point <font color=\'#ff9500\'>"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lch/kingdoms/android/ui/StatusUi$StatusView;->this$0:Lch/kingdoms/android/ui/StatusUi;

    invoke-static {v3}, Lch/kingdoms/android/ui/StatusUi;->access$0(Lch/kingdoms/android/ui/StatusUi;)Lch/kingdoms/ndk/data/HeroStatus;

    move-result-object v3

    invoke-virtual {v3}, Lch/kingdoms/ndk/data/HeroStatus;->getStatPoints()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "</font>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 247
    iget-object v1, p0, Lch/kingdoms/android/ui/StatusUi$StatusView;->f_strBtn:Lch/android/api/ui/ChStatButton;

    const v2, 0x7f050031

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lch/kingdoms/android/ui/StatusUi$StatusView;->this$0:Lch/kingdoms/android/ui/StatusUi;

    invoke-static {v3}, Lch/kingdoms/android/ui/StatusUi;->access$0(Lch/kingdoms/android/ui/StatusUi;)Lch/kingdoms/ndk/data/HeroStatus;

    move-result-object v3

    invoke-virtual {v3}, Lch/kingdoms/ndk/data/HeroStatus;->getStr()I

    move-result v3

    iget-object v4, p0, Lch/kingdoms/android/ui/StatusUi$StatusView;->this$0:Lch/kingdoms/android/ui/StatusUi;

    invoke-static {v4}, Lch/kingdoms/android/ui/StatusUi;->access$0(Lch/kingdoms/android/ui/StatusUi;)Lch/kingdoms/ndk/data/HeroStatus;

    move-result-object v4

    invoke-virtual {v4}, Lch/kingdoms/ndk/data/HeroStatus;->getStrEquip()I

    move-result v4

    add-int/2addr v3, v4

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lch/android/api/ui/ChStatButton;->setText(Ljava/lang/String;Ljava/lang/String;)V

    .line 248
    iget-object v1, p0, Lch/kingdoms/android/ui/StatusUi$StatusView;->f_vitBtn:Lch/android/api/ui/ChStatButton;

    const v2, 0x7f050032

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lch/kingdoms/android/ui/StatusUi$StatusView;->this$0:Lch/kingdoms/android/ui/StatusUi;

    invoke-static {v3}, Lch/kingdoms/android/ui/StatusUi;->access$0(Lch/kingdoms/android/ui/StatusUi;)Lch/kingdoms/ndk/data/HeroStatus;

    move-result-object v3

    invoke-virtual {v3}, Lch/kingdoms/ndk/data/HeroStatus;->getVit()I

    move-result v3

    iget-object v4, p0, Lch/kingdoms/android/ui/StatusUi$StatusView;->this$0:Lch/kingdoms/android/ui/StatusUi;

    invoke-static {v4}, Lch/kingdoms/android/ui/StatusUi;->access$0(Lch/kingdoms/android/ui/StatusUi;)Lch/kingdoms/ndk/data/HeroStatus;

    move-result-object v4

    invoke-virtual {v4}, Lch/kingdoms/ndk/data/HeroStatus;->getVitEquip()I

    move-result v4

    add-int/2addr v3, v4

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lch/android/api/ui/ChStatButton;->setText(Ljava/lang/String;Ljava/lang/String;)V

    .line 249
    iget-object v1, p0, Lch/kingdoms/android/ui/StatusUi$StatusView;->f_dexBtn:Lch/android/api/ui/ChStatButton;

    const v2, 0x7f050033

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lch/kingdoms/android/ui/StatusUi$StatusView;->this$0:Lch/kingdoms/android/ui/StatusUi;

    invoke-static {v3}, Lch/kingdoms/android/ui/StatusUi;->access$0(Lch/kingdoms/android/ui/StatusUi;)Lch/kingdoms/ndk/data/HeroStatus;

    move-result-object v3

    invoke-virtual {v3}, Lch/kingdoms/ndk/data/HeroStatus;->getDex()I

    move-result v3

    iget-object v4, p0, Lch/kingdoms/android/ui/StatusUi$StatusView;->this$0:Lch/kingdoms/android/ui/StatusUi;

    invoke-static {v4}, Lch/kingdoms/android/ui/StatusUi;->access$0(Lch/kingdoms/android/ui/StatusUi;)Lch/kingdoms/ndk/data/HeroStatus;

    move-result-object v4

    invoke-virtual {v4}, Lch/kingdoms/ndk/data/HeroStatus;->getDexEquip()I

    move-result v4

    add-int/2addr v3, v4

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lch/android/api/ui/ChStatButton;->setText(Ljava/lang/String;Ljava/lang/String;)V

    .line 253
    iget-object v1, p0, Lch/kingdoms/android/ui/StatusUi$StatusView;->f_intBtn:Lch/android/api/ui/ChStatButton;

    const v2, 0x7f050034

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lch/kingdoms/android/ui/StatusUi$StatusView;->this$0:Lch/kingdoms/android/ui/StatusUi;

    invoke-static {v3}, Lch/kingdoms/android/ui/StatusUi;->access$0(Lch/kingdoms/android/ui/StatusUi;)Lch/kingdoms/ndk/data/HeroStatus;

    move-result-object v3

    invoke-virtual {v3}, Lch/kingdoms/ndk/data/HeroStatus;->getInt()I

    move-result v3

    iget-object v4, p0, Lch/kingdoms/android/ui/StatusUi$StatusView;->this$0:Lch/kingdoms/android/ui/StatusUi;

    invoke-static {v4}, Lch/kingdoms/android/ui/StatusUi;->access$0(Lch/kingdoms/android/ui/StatusUi;)Lch/kingdoms/ndk/data/HeroStatus;

    move-result-object v4

    invoke-virtual {v4}, Lch/kingdoms/ndk/data/HeroStatus;->getIntEquip()I

    move-result v4

    add-int/2addr v3, v4

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lch/android/api/ui/ChStatButton;->setText(Ljava/lang/String;Ljava/lang/String;)V

    .line 254
    iget-object v1, p0, Lch/kingdoms/android/ui/StatusUi$StatusView;->f_statsView:Lch/android/api/ui/ChStatView;

    iget-object v2, p0, Lch/kingdoms/android/ui/StatusUi$StatusView;->this$0:Lch/kingdoms/android/ui/StatusUi;

    invoke-static {v2}, Lch/kingdoms/android/ui/StatusUi;->access$0(Lch/kingdoms/android/ui/StatusUi;)Lch/kingdoms/ndk/data/HeroStatus;

    move-result-object v2

    invoke-virtual {v1, v2}, Lch/android/api/ui/ChStatView;->update(Lch/kingdoms/ndk/data/HeroStatus;)V

    .line 255
    return-void
.end method
