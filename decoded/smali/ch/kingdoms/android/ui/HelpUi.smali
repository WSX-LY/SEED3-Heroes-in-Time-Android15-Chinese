.class public Lch/kingdoms/android/ui/HelpUi;
.super Lch/android/api/ui/ChRelativeLayout;
.source "HelpUi.java"


# instance fields
.field private final ACTIVITY:Landroid/app/Activity;

.field private final DI:Lch/android/api/util/DisplayInfo;

.field private final backBtn:Lch/android/api/ui/ChBackAnimationButton;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lch/android/api/util/DisplayInfo;)V
    .locals 17
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "di"    # Lch/android/api/util/DisplayInfo;

    .prologue
    .line 32
    invoke-virtual/range {p1 .. p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lch/android/api/ui/ChRelativeLayout;-><init>(Landroid/content/Context;)V

    .line 34
    const v14, 0x7f0200b7

    move-object/from16 v0, p0

    invoke-super {v0, v14}, Lch/android/api/ui/ChRelativeLayout;->setBackgroundResource(I)V

    .line 35
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lch/kingdoms/android/ui/HelpUi;->ACTIVITY:Landroid/app/Activity;

    .line 36
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Lch/kingdoms/android/ui/HelpUi;->DI:Lch/android/api/util/DisplayInfo;

    .line 37
    invoke-virtual/range {p0 .. p0}, Lch/kingdoms/android/ui/HelpUi;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    .line 38
    .local v8, "res":Landroid/content/res/Resources;
    invoke-virtual/range {p1 .. p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    .line 40
    .local v2, "context":Landroid/content/Context;
    new-instance v11, Landroid/widget/ScrollView;

    invoke-direct {v11, v2}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    .line 41
    .local v11, "scrollView":Landroid/widget/ScrollView;
    const v14, 0x7f0202b2

    invoke-virtual {v11, v14}, Landroid/widget/ScrollView;->setBackgroundResource(I)V

    .line 42
    move-object/from16 v0, p2

    iget v14, v0, Lch/android/api/util/DisplayInfo;->density:F

    const/high16 v15, 0x41700000    # 15.0f

    mul-float/2addr v14, v15

    float-to-int v6, v14

    .line 43
    .local v6, "padding":I
    move-object/from16 v0, p2

    iget v14, v0, Lch/android/api/util/DisplayInfo;->density:F

    const/high16 v15, 0x40a00000    # 5.0f

    mul-float/2addr v14, v15

    float-to-int v13, v14

    .line 44
    .local v13, "topPadding":I
    invoke-virtual {v11, v6, v13, v6, v13}, Landroid/widget/ScrollView;->setPadding(IIII)V

    .line 46
    new-instance v5, Lch/android/api/ui/ChLinearLayout;

    invoke-direct {v5, v2}, Lch/android/api/ui/ChLinearLayout;-><init>(Landroid/content/Context;)V

    .line 47
    .local v5, "lLayout":Lch/android/api/ui/ChLinearLayout;
    const/4 v14, 0x1

    invoke-virtual {v5, v14}, Lch/android/api/ui/ChLinearLayout;->setOrientation(I)V

    .line 48
    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lch/kingdoms/android/ui/HelpUi;->getLineView(Landroid/content/Context;)Landroid/view/View;

    move-result-object v14

    invoke-virtual {v5, v14}, Lch/android/api/ui/ChLinearLayout;->addView(Landroid/view/View;)V

    .line 49
    const v14, 0x7f05004f

    invoke-virtual {v8, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v14}, Lch/kingdoms/android/ui/HelpUi;->getTitleView(Landroid/content/Context;Ljava/lang/String;)Landroid/view/View;

    move-result-object v14

    invoke-virtual {v5, v14}, Lch/android/api/ui/ChLinearLayout;->addView(Landroid/view/View;)V

    .line 50
    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lch/kingdoms/android/ui/HelpUi;->getLineView(Landroid/content/Context;)Landroid/view/View;

    move-result-object v14

    invoke-virtual {v5, v14}, Lch/android/api/ui/ChLinearLayout;->addView(Landroid/view/View;)V

    .line 51
    const v14, 0x7f02026f

    move-object/from16 v0, p1

    invoke-static {v0, v14}, Lch/android/api/ui/ChViewGen;->createImageView(Landroid/app/Activity;I)Lch/android/api/ui/ChImageView;

    move-result-object v4

    .line 52
    .local v4, "imgView":Lch/android/api/ui/ChImageView;
    invoke-virtual {v5, v4}, Lch/android/api/ui/ChLinearLayout;->addView(Landroid/view/View;)V

    .line 53
    const v14, 0x7f050050

    invoke-virtual {v8, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v14}, Lch/kingdoms/android/ui/HelpUi;->getTextView(Landroid/content/Context;Ljava/lang/String;)Landroid/view/View;

    move-result-object v14

    invoke-virtual {v5, v14}, Lch/android/api/ui/ChLinearLayout;->addView(Landroid/view/View;)V

    .line 55
    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lch/kingdoms/android/ui/HelpUi;->getLineView(Landroid/content/Context;)Landroid/view/View;

    move-result-object v14

    invoke-virtual {v5, v14}, Lch/android/api/ui/ChLinearLayout;->addView(Landroid/view/View;)V

    .line 57
    const v14, 0x7f050051

    invoke-virtual {v8, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v14}, Lch/kingdoms/android/ui/HelpUi;->getTitleView(Landroid/content/Context;Ljava/lang/String;)Landroid/view/View;

    move-result-object v14

    invoke-virtual {v5, v14}, Lch/android/api/ui/ChLinearLayout;->addView(Landroid/view/View;)V

    .line 58
    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lch/kingdoms/android/ui/HelpUi;->getLineView(Landroid/content/Context;)Landroid/view/View;

    move-result-object v14

    invoke-virtual {v5, v14}, Lch/android/api/ui/ChLinearLayout;->addView(Landroid/view/View;)V

    .line 59
    const v14, 0x7f050052

    invoke-virtual {v8, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v14}, Lch/kingdoms/android/ui/HelpUi;->getTextView(Landroid/content/Context;Ljava/lang/String;)Landroid/view/View;

    move-result-object v14

    invoke-virtual {v5, v14}, Lch/android/api/ui/ChLinearLayout;->addView(Landroid/view/View;)V

    .line 61
    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lch/kingdoms/android/ui/HelpUi;->getLineView(Landroid/content/Context;)Landroid/view/View;

    move-result-object v14

    invoke-virtual {v5, v14}, Lch/android/api/ui/ChLinearLayout;->addView(Landroid/view/View;)V

    .line 63
    const v14, 0x7f050053

    invoke-virtual {v8, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v14}, Lch/kingdoms/android/ui/HelpUi;->getTitleView(Landroid/content/Context;Ljava/lang/String;)Landroid/view/View;

    move-result-object v14

    invoke-virtual {v5, v14}, Lch/android/api/ui/ChLinearLayout;->addView(Landroid/view/View;)V

    .line 64
    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lch/kingdoms/android/ui/HelpUi;->getLineView(Landroid/content/Context;)Landroid/view/View;

    move-result-object v14

    invoke-virtual {v5, v14}, Lch/android/api/ui/ChLinearLayout;->addView(Landroid/view/View;)V

    .line 65
    new-instance v14, Ljava/lang/StringBuilder;

    const v15, 0x7f050054

    invoke-virtual {v8, v15}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v15, "\n"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    .line 66
    const v15, 0x7f050055

    invoke-virtual {v8, v15}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "\n"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    .line 67
    const v15, 0x7f050056

    invoke-virtual {v8, v15}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "\n"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    .line 68
    const v15, 0x7f050057

    invoke-virtual {v8, v15}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "\n"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    .line 69
    const v15, 0x7f050058

    invoke-virtual {v8, v15}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "\n"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    .line 70
    const v15, 0x7f050059

    invoke-virtual {v8, v15}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 65
    move-object/from16 v0, p0

    invoke-direct {v0, v2, v14}, Lch/kingdoms/android/ui/HelpUi;->getTextView(Landroid/content/Context;Ljava/lang/String;)Landroid/view/View;

    move-result-object v14

    invoke-virtual {v5, v14}, Lch/android/api/ui/ChLinearLayout;->addView(Landroid/view/View;)V

    .line 72
    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lch/kingdoms/android/ui/HelpUi;->getLineView(Landroid/content/Context;)Landroid/view/View;

    move-result-object v14

    invoke-virtual {v5, v14}, Lch/android/api/ui/ChLinearLayout;->addView(Landroid/view/View;)V

    .line 74
    const v14, 0x7f05005a

    invoke-virtual {v8, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v14}, Lch/kingdoms/android/ui/HelpUi;->getTitleView(Landroid/content/Context;Ljava/lang/String;)Landroid/view/View;

    move-result-object v14

    invoke-virtual {v5, v14}, Lch/android/api/ui/ChLinearLayout;->addView(Landroid/view/View;)V

    .line 75
    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lch/kingdoms/android/ui/HelpUi;->getLineView(Landroid/content/Context;)Landroid/view/View;

    move-result-object v14

    invoke-virtual {v5, v14}, Lch/android/api/ui/ChLinearLayout;->addView(Landroid/view/View;)V

    .line 76
    const v14, 0x7f05005b

    invoke-virtual {v8, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v14}, Lch/kingdoms/android/ui/HelpUi;->getTextView(Landroid/content/Context;Ljava/lang/String;)Landroid/view/View;

    move-result-object v14

    invoke-virtual {v5, v14}, Lch/android/api/ui/ChLinearLayout;->addView(Landroid/view/View;)V

    .line 78
    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lch/kingdoms/android/ui/HelpUi;->getLineView(Landroid/content/Context;)Landroid/view/View;

    move-result-object v14

    invoke-virtual {v5, v14}, Lch/android/api/ui/ChLinearLayout;->addView(Landroid/view/View;)V

    .line 80
    const v14, 0x7f05005c

    invoke-virtual {v8, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v14}, Lch/kingdoms/android/ui/HelpUi;->getTitleView(Landroid/content/Context;Ljava/lang/String;)Landroid/view/View;

    move-result-object v14

    invoke-virtual {v5, v14}, Lch/android/api/ui/ChLinearLayout;->addView(Landroid/view/View;)V

    .line 81
    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lch/kingdoms/android/ui/HelpUi;->getLineView(Landroid/content/Context;)Landroid/view/View;

    move-result-object v14

    invoke-virtual {v5, v14}, Lch/android/api/ui/ChLinearLayout;->addView(Landroid/view/View;)V

    .line 82
    const v14, 0x7f05005d

    invoke-virtual {v8, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v14}, Lch/kingdoms/android/ui/HelpUi;->getTextView(Landroid/content/Context;Ljava/lang/String;)Landroid/view/View;

    move-result-object v14

    invoke-virtual {v5, v14}, Lch/android/api/ui/ChLinearLayout;->addView(Landroid/view/View;)V

    .line 84
    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lch/kingdoms/android/ui/HelpUi;->getLineView(Landroid/content/Context;)Landroid/view/View;

    move-result-object v14

    invoke-virtual {v5, v14}, Lch/android/api/ui/ChLinearLayout;->addView(Landroid/view/View;)V

    .line 86
    const v14, 0x7f05005e

    invoke-virtual {v8, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v14}, Lch/kingdoms/android/ui/HelpUi;->getTitleView(Landroid/content/Context;Ljava/lang/String;)Landroid/view/View;

    move-result-object v14

    invoke-virtual {v5, v14}, Lch/android/api/ui/ChLinearLayout;->addView(Landroid/view/View;)V

    .line 87
    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lch/kingdoms/android/ui/HelpUi;->getLineView(Landroid/content/Context;)Landroid/view/View;

    move-result-object v14

    invoke-virtual {v5, v14}, Lch/android/api/ui/ChLinearLayout;->addView(Landroid/view/View;)V

    .line 88
    const v14, 0x7f05005f

    invoke-virtual {v8, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v14}, Lch/kingdoms/android/ui/HelpUi;->getTextView(Landroid/content/Context;Ljava/lang/String;)Landroid/view/View;

    move-result-object v14

    invoke-virtual {v5, v14}, Lch/android/api/ui/ChLinearLayout;->addView(Landroid/view/View;)V

    .line 89
    const v14, 0x7f050060

    invoke-virtual {v8, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v14}, Lch/kingdoms/android/ui/HelpUi;->getTextView(Landroid/content/Context;Ljava/lang/String;)Landroid/view/View;

    move-result-object v14

    invoke-virtual {v5, v14}, Lch/android/api/ui/ChLinearLayout;->addView(Landroid/view/View;)V

    .line 91
    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lch/kingdoms/android/ui/HelpUi;->getLineView(Landroid/content/Context;)Landroid/view/View;

    move-result-object v14

    invoke-virtual {v5, v14}, Lch/android/api/ui/ChLinearLayout;->addView(Landroid/view/View;)V

    .line 93
    const v14, 0x7f050061

    invoke-virtual {v8, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v14}, Lch/kingdoms/android/ui/HelpUi;->getTitleView(Landroid/content/Context;Ljava/lang/String;)Landroid/view/View;

    move-result-object v14

    invoke-virtual {v5, v14}, Lch/android/api/ui/ChLinearLayout;->addView(Landroid/view/View;)V

    .line 94
    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lch/kingdoms/android/ui/HelpUi;->getLineView(Landroid/content/Context;)Landroid/view/View;

    move-result-object v14

    invoke-virtual {v5, v14}, Lch/android/api/ui/ChLinearLayout;->addView(Landroid/view/View;)V

    .line 95
    const v14, 0x7f050062

    invoke-virtual {v8, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v14}, Lch/kingdoms/android/ui/HelpUi;->getTextView(Landroid/content/Context;Ljava/lang/String;)Landroid/view/View;

    move-result-object v14

    invoke-virtual {v5, v14}, Lch/android/api/ui/ChLinearLayout;->addView(Landroid/view/View;)V

    .line 97
    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lch/kingdoms/android/ui/HelpUi;->getLineView(Landroid/content/Context;)Landroid/view/View;

    move-result-object v14

    invoke-virtual {v5, v14}, Lch/android/api/ui/ChLinearLayout;->addView(Landroid/view/View;)V

    .line 99
    const v14, 0x7f050063

    invoke-virtual {v8, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v14}, Lch/kingdoms/android/ui/HelpUi;->getTitleView(Landroid/content/Context;Ljava/lang/String;)Landroid/view/View;

    move-result-object v14

    invoke-virtual {v5, v14}, Lch/android/api/ui/ChLinearLayout;->addView(Landroid/view/View;)V

    .line 100
    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lch/kingdoms/android/ui/HelpUi;->getLineView(Landroid/content/Context;)Landroid/view/View;

    move-result-object v14

    invoke-virtual {v5, v14}, Lch/android/api/ui/ChLinearLayout;->addView(Landroid/view/View;)V

    .line 101
    const v14, 0x7f050064

    invoke-virtual {v8, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v14}, Lch/kingdoms/android/ui/HelpUi;->getTextView(Landroid/content/Context;Ljava/lang/String;)Landroid/view/View;

    move-result-object v14

    invoke-virtual {v5, v14}, Lch/android/api/ui/ChLinearLayout;->addView(Landroid/view/View;)V

    .line 103
    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lch/kingdoms/android/ui/HelpUi;->getLineView(Landroid/content/Context;)Landroid/view/View;

    move-result-object v14

    invoke-virtual {v5, v14}, Lch/android/api/ui/ChLinearLayout;->addView(Landroid/view/View;)V

    .line 105
    const v14, 0x7f050065

    invoke-virtual {v8, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v14}, Lch/kingdoms/android/ui/HelpUi;->getTitleView(Landroid/content/Context;Ljava/lang/String;)Landroid/view/View;

    move-result-object v14

    invoke-virtual {v5, v14}, Lch/android/api/ui/ChLinearLayout;->addView(Landroid/view/View;)V

    .line 106
    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lch/kingdoms/android/ui/HelpUi;->getLineView(Landroid/content/Context;)Landroid/view/View;

    move-result-object v14

    invoke-virtual {v5, v14}, Lch/android/api/ui/ChLinearLayout;->addView(Landroid/view/View;)V

    .line 107
    const v14, 0x7f050066

    invoke-virtual {v8, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v14}, Lch/kingdoms/android/ui/HelpUi;->getTextView(Landroid/content/Context;Ljava/lang/String;)Landroid/view/View;

    move-result-object v14

    invoke-virtual {v5, v14}, Lch/android/api/ui/ChLinearLayout;->addView(Landroid/view/View;)V

    .line 109
    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lch/kingdoms/android/ui/HelpUi;->getLineView(Landroid/content/Context;)Landroid/view/View;

    move-result-object v14

    invoke-virtual {v5, v14}, Lch/android/api/ui/ChLinearLayout;->addView(Landroid/view/View;)V

    .line 111
    const v14, 0x7f050067

    invoke-virtual {v8, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v14}, Lch/kingdoms/android/ui/HelpUi;->getTitleView(Landroid/content/Context;Ljava/lang/String;)Landroid/view/View;

    move-result-object v14

    invoke-virtual {v5, v14}, Lch/android/api/ui/ChLinearLayout;->addView(Landroid/view/View;)V

    .line 112
    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lch/kingdoms/android/ui/HelpUi;->getLineView(Landroid/content/Context;)Landroid/view/View;

    move-result-object v14

    invoke-virtual {v5, v14}, Lch/android/api/ui/ChLinearLayout;->addView(Landroid/view/View;)V

    .line 113
    const v14, 0x7f050068

    invoke-virtual {v8, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v14}, Lch/kingdoms/android/ui/HelpUi;->getTextView(Landroid/content/Context;Ljava/lang/String;)Landroid/view/View;

    move-result-object v14

    invoke-virtual {v5, v14}, Lch/android/api/ui/ChLinearLayout;->addView(Landroid/view/View;)V

    .line 114
    const v14, 0x7f050069

    invoke-virtual {v8, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v14}, Lch/kingdoms/android/ui/HelpUi;->getTextView(Landroid/content/Context;Ljava/lang/String;)Landroid/view/View;

    move-result-object v14

    invoke-virtual {v5, v14}, Lch/android/api/ui/ChLinearLayout;->addView(Landroid/view/View;)V

    .line 115
    const v14, 0x7f05006a

    invoke-virtual {v8, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v14}, Lch/kingdoms/android/ui/HelpUi;->getTextView(Landroid/content/Context;Ljava/lang/String;)Landroid/view/View;

    move-result-object v14

    invoke-virtual {v5, v14}, Lch/android/api/ui/ChLinearLayout;->addView(Landroid/view/View;)V

    .line 116
    const v14, 0x7f05006b

    invoke-virtual {v8, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v14}, Lch/kingdoms/android/ui/HelpUi;->getTextView(Landroid/content/Context;Ljava/lang/String;)Landroid/view/View;

    move-result-object v14

    invoke-virtual {v5, v14}, Lch/android/api/ui/ChLinearLayout;->addView(Landroid/view/View;)V

    .line 117
    const v14, 0x7f05006c

    invoke-virtual {v8, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v14}, Lch/kingdoms/android/ui/HelpUi;->getTextView(Landroid/content/Context;Ljava/lang/String;)Landroid/view/View;

    move-result-object v14

    invoke-virtual {v5, v14}, Lch/android/api/ui/ChLinearLayout;->addView(Landroid/view/View;)V

    .line 119
    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lch/kingdoms/android/ui/HelpUi;->getLineView(Landroid/content/Context;)Landroid/view/View;

    move-result-object v14

    invoke-virtual {v5, v14}, Lch/android/api/ui/ChLinearLayout;->addView(Landroid/view/View;)V

    .line 121
    const v14, 0x7f05006d

    invoke-virtual {v8, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v14}, Lch/kingdoms/android/ui/HelpUi;->getTitleView(Landroid/content/Context;Ljava/lang/String;)Landroid/view/View;

    move-result-object v14

    invoke-virtual {v5, v14}, Lch/android/api/ui/ChLinearLayout;->addView(Landroid/view/View;)V

    .line 122
    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lch/kingdoms/android/ui/HelpUi;->getLineView(Landroid/content/Context;)Landroid/view/View;

    move-result-object v14

    invoke-virtual {v5, v14}, Lch/android/api/ui/ChLinearLayout;->addView(Landroid/view/View;)V

    .line 123
    const v14, 0x7f05006e

    invoke-virtual {v8, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v14}, Lch/kingdoms/android/ui/HelpUi;->getTextView(Landroid/content/Context;Ljava/lang/String;)Landroid/view/View;

    move-result-object v14

    invoke-virtual {v5, v14}, Lch/android/api/ui/ChLinearLayout;->addView(Landroid/view/View;)V

    .line 125
    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lch/kingdoms/android/ui/HelpUi;->getLineView(Landroid/content/Context;)Landroid/view/View;

    move-result-object v14

    invoke-virtual {v5, v14}, Lch/android/api/ui/ChLinearLayout;->addView(Landroid/view/View;)V

    .line 127
    const v14, 0x7f05006f

    invoke-virtual {v8, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v14}, Lch/kingdoms/android/ui/HelpUi;->getTitleView(Landroid/content/Context;Ljava/lang/String;)Landroid/view/View;

    move-result-object v14

    invoke-virtual {v5, v14}, Lch/android/api/ui/ChLinearLayout;->addView(Landroid/view/View;)V

    .line 128
    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lch/kingdoms/android/ui/HelpUi;->getLineView(Landroid/content/Context;)Landroid/view/View;

    move-result-object v14

    invoke-virtual {v5, v14}, Lch/android/api/ui/ChLinearLayout;->addView(Landroid/view/View;)V

    .line 129
    const v14, 0x7f050070

    invoke-virtual {v8, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v14}, Lch/kingdoms/android/ui/HelpUi;->getTextView(Landroid/content/Context;Ljava/lang/String;)Landroid/view/View;

    move-result-object v14

    invoke-virtual {v5, v14}, Lch/android/api/ui/ChLinearLayout;->addView(Landroid/view/View;)V

    .line 131
    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lch/kingdoms/android/ui/HelpUi;->getLineView(Landroid/content/Context;)Landroid/view/View;

    move-result-object v14

    invoke-virtual {v5, v14}, Lch/android/api/ui/ChLinearLayout;->addView(Landroid/view/View;)V

    .line 133
    const v14, 0x7f050071

    invoke-virtual {v8, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v14}, Lch/kingdoms/android/ui/HelpUi;->getTitleView(Landroid/content/Context;Ljava/lang/String;)Landroid/view/View;

    move-result-object v14

    invoke-virtual {v5, v14}, Lch/android/api/ui/ChLinearLayout;->addView(Landroid/view/View;)V

    .line 134
    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lch/kingdoms/android/ui/HelpUi;->getLineView(Landroid/content/Context;)Landroid/view/View;

    move-result-object v14

    invoke-virtual {v5, v14}, Lch/android/api/ui/ChLinearLayout;->addView(Landroid/view/View;)V

    .line 135
    const v14, 0x7f050072

    invoke-virtual {v8, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v14}, Lch/kingdoms/android/ui/HelpUi;->getTextView(Landroid/content/Context;Ljava/lang/String;)Landroid/view/View;

    move-result-object v14

    invoke-virtual {v5, v14}, Lch/android/api/ui/ChLinearLayout;->addView(Landroid/view/View;)V

    .line 137
    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lch/kingdoms/android/ui/HelpUi;->getLineView(Landroid/content/Context;)Landroid/view/View;

    move-result-object v14

    invoke-virtual {v5, v14}, Lch/android/api/ui/ChLinearLayout;->addView(Landroid/view/View;)V

    .line 139
    const v14, 0x7f050073

    invoke-virtual {v8, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v14}, Lch/kingdoms/android/ui/HelpUi;->getTitleView(Landroid/content/Context;Ljava/lang/String;)Landroid/view/View;

    move-result-object v14

    invoke-virtual {v5, v14}, Lch/android/api/ui/ChLinearLayout;->addView(Landroid/view/View;)V

    .line 140
    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lch/kingdoms/android/ui/HelpUi;->getLineView(Landroid/content/Context;)Landroid/view/View;

    move-result-object v14

    invoke-virtual {v5, v14}, Lch/android/api/ui/ChLinearLayout;->addView(Landroid/view/View;)V

    .line 141
    const v14, 0x7f050074

    invoke-virtual {v8, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v14}, Lch/kingdoms/android/ui/HelpUi;->getTextView(Landroid/content/Context;Ljava/lang/String;)Landroid/view/View;

    move-result-object v14

    invoke-virtual {v5, v14}, Lch/android/api/ui/ChLinearLayout;->addView(Landroid/view/View;)V

    .line 143
    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lch/kingdoms/android/ui/HelpUi;->getLineView(Landroid/content/Context;)Landroid/view/View;

    move-result-object v14

    invoke-virtual {v5, v14}, Lch/android/api/ui/ChLinearLayout;->addView(Landroid/view/View;)V

    .line 151
    const v14, 0x7f050077

    invoke-virtual {v8, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v14}, Lch/kingdoms/android/ui/HelpUi;->getTitleView(Landroid/content/Context;Ljava/lang/String;)Landroid/view/View;

    move-result-object v14

    invoke-virtual {v5, v14}, Lch/android/api/ui/ChLinearLayout;->addView(Landroid/view/View;)V

    .line 152
    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lch/kingdoms/android/ui/HelpUi;->getLineView(Landroid/content/Context;)Landroid/view/View;

    move-result-object v14

    invoke-virtual {v5, v14}, Lch/android/api/ui/ChLinearLayout;->addView(Landroid/view/View;)V

    .line 153
    const v14, 0x7f050078

    invoke-virtual {v8, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v14}, Lch/kingdoms/android/ui/HelpUi;->getTextView(Landroid/content/Context;Ljava/lang/String;)Landroid/view/View;

    move-result-object v14

    invoke-virtual {v5, v14}, Lch/android/api/ui/ChLinearLayout;->addView(Landroid/view/View;)V

    .line 157
    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lch/kingdoms/android/ui/HelpUi;->getLineView(Landroid/content/Context;)Landroid/view/View;

    move-result-object v14

    invoke-virtual {v5, v14}, Lch/android/api/ui/ChLinearLayout;->addView(Landroid/view/View;)V

    .line 159
    const v14, 0x7f05007b

    invoke-virtual {v8, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v14}, Lch/kingdoms/android/ui/HelpUi;->getTitleView(Landroid/content/Context;Ljava/lang/String;)Landroid/view/View;

    move-result-object v14

    invoke-virtual {v5, v14}, Lch/android/api/ui/ChLinearLayout;->addView(Landroid/view/View;)V

    .line 160
    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lch/kingdoms/android/ui/HelpUi;->getLineView(Landroid/content/Context;)Landroid/view/View;

    move-result-object v14

    invoke-virtual {v5, v14}, Lch/android/api/ui/ChLinearLayout;->addView(Landroid/view/View;)V

    .line 163
    const v14, 0x7f05007c

    invoke-virtual {v8, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v14}, Lch/kingdoms/android/ui/HelpUi;->getTextView(Landroid/content/Context;Ljava/lang/String;)Landroid/view/View;

    move-result-object v14

    invoke-virtual {v5, v14}, Lch/android/api/ui/ChLinearLayout;->addView(Landroid/view/View;)V

    .line 165
    new-instance v7, Lch/android/api/ui/ChImageView;

    invoke-direct {v7, v2}, Lch/android/api/ui/ChImageView;-><init>(Landroid/content/Context;)V

    .line 166
    .local v7, "rankImgView":Lch/android/api/ui/ChImageView;
    const v14, 0x7f0200b6

    invoke-virtual {v7, v14}, Lch/android/api/ui/ChImageView;->setImageResource(I)V

    .line 167
    invoke-virtual {v5, v7}, Lch/android/api/ui/ChLinearLayout;->addView(Landroid/view/View;)V

    .line 169
    invoke-virtual {v11, v5}, Landroid/widget/ScrollView;->addView(Landroid/view/View;)V

    .line 172
    new-instance v9, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual/range {p0 .. p0}, Lch/kingdoms/android/ui/HelpUi;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x7f020249

    invoke-static {v14, v15}, Lch/android/api/util/BmpUtil;->getBmpWidth(Landroid/content/res/Resources;I)I

    move-result v14

    .line 173
    invoke-virtual/range {p0 .. p0}, Lch/kingdoms/android/ui/HelpUi;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const v16, 0x7f020249

    invoke-static/range {v15 .. v16}, Lch/android/api/util/BmpUtil;->getBmpHeight(Landroid/content/res/Resources;I)I

    move-result v15

    .line 172
    invoke-direct {v9, v14, v15}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 174
    .local v9, "rlp":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v14, 0xa

    invoke-virtual {v9, v14}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 175
    const/16 v14, 0xe

    invoke-virtual {v9, v14}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 176
    move-object/from16 v0, p0

    invoke-virtual {v0, v11, v9}, Lch/kingdoms/android/ui/HelpUi;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 178
    const v14, 0x7f0200ce

    move-object/from16 v0, p1

    invoke-static {v0, v14}, Lch/android/api/ui/ChViewGen;->createImageView(Landroid/app/Activity;I)Lch/android/api/ui/ChImageView;

    move-result-object v12

    .line 180
    .local v12, "titleView":Lch/android/api/ui/ChImageView;
    new-instance v10, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v14, -0x2

    const/4 v15, -0x2

    invoke-direct {v10, v14, v15}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 181
    .local v10, "rlp1":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v14, 0xa

    invoke-virtual {v10, v14}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 182
    const/16 v14, 0x9

    invoke-virtual {v10, v14}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 183
    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v10}, Lch/kingdoms/android/ui/HelpUi;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 185
    new-instance v14, Lch/android/api/ui/ChBackAnimationButton;

    invoke-direct {v14, v2}, Lch/android/api/ui/ChBackAnimationButton;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v14, v0, Lch/kingdoms/android/ui/HelpUi;->backBtn:Lch/android/api/ui/ChBackAnimationButton;

    .line 187
    move-object/from16 v0, p0

    iget-object v14, v0, Lch/kingdoms/android/ui/HelpUi;->backBtn:Lch/android/api/ui/ChBackAnimationButton;

    const/16 v15, 0x2744

    invoke-virtual {v14, v15}, Lch/android/api/ui/ChBackAnimationButton;->setId(I)V

    .line 188
    new-instance v10, Landroid/widget/RelativeLayout$LayoutParams;

    .end local v10    # "rlp1":Landroid/widget/RelativeLayout$LayoutParams;
    const/4 v14, -0x2

    const/4 v15, -0x2

    invoke-direct {v10, v14, v15}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 189
    .restart local v10    # "rlp1":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v14, 0xa

    invoke-virtual {v10, v14}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 190
    const/16 v14, 0xb

    invoke-virtual {v10, v14}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 191
    move-object/from16 v0, p0

    iget-object v14, v0, Lch/kingdoms/android/ui/HelpUi;->backBtn:Lch/android/api/ui/ChBackAnimationButton;

    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v10}, Lch/kingdoms/android/ui/HelpUi;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 194
    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    .line 195
    .local v3, "handler":Landroid/os/Handler;
    new-instance v14, Lch/kingdoms/android/ui/HelpUi$1;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Lch/kingdoms/android/ui/HelpUi$1;-><init>(Lch/kingdoms/android/ui/HelpUi;)V

    invoke-virtual {v3, v14}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 202
    return-void
.end method

.method static synthetic access$0(Lch/kingdoms/android/ui/HelpUi;)Lch/android/api/ui/ChBackAnimationButton;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lch/kingdoms/android/ui/HelpUi;->backBtn:Lch/android/api/ui/ChBackAnimationButton;

    return-object v0
.end method

.method private getLineView(Landroid/content/Context;)Landroid/view/View;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 212
    iget-object v1, p0, Lch/kingdoms/android/ui/HelpUi;->ACTIVITY:Landroid/app/Activity;

    const v2, 0x7f0201f7

    invoke-static {v1, v2}, Lch/android/api/ui/ChViewGen;->createImageView(Landroid/app/Activity;I)Lch/android/api/ui/ChImageView;

    move-result-object v0

    .line 213
    .local v0, "line":Lch/android/api/ui/ChImageView;
    return-object v0
.end method

.method private getTextView(Landroid/content/Context;Ljava/lang/String;)Landroid/view/View;
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "txt"    # Ljava/lang/String;

    .prologue
    const/high16 v5, 0x40a00000    # 5.0f

    .line 228
    new-instance v0, Lch/android/api/ui/ChTextView;

    invoke-direct {v0, p1}, Lch/android/api/ui/ChTextView;-><init>(Landroid/content/Context;)V

    .line 229
    .local v0, "txtView":Lch/android/api/ui/ChTextView;
    invoke-static {}, Lch/android/api/util/TextPaints;->getSmallSize()I

    move-result v1

    int-to-float v1, v1

    invoke-static {v0, v1}, Lch/android/api/util/PixelText;->setSize(Landroid/widget/TextView;F)V

    .line 230
    sget-object v1, Lch/android/api/util/TextPaints;->TYPE_FACE_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Lch/android/api/ui/ChTextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 231
    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lch/android/api/ui/ChTextView;->setTextColor(I)V

    .line 232
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lch/android/api/ui/ChTextView;->setGravity(I)V

    .line 233
    invoke-virtual {v0, p2}, Lch/android/api/ui/ChTextView;->setText(Ljava/lang/CharSequence;)V

    .line 234
    iget-object v1, p0, Lch/kingdoms/android/ui/HelpUi;->DI:Lch/android/api/util/DisplayInfo;

    iget v1, v1, Lch/android/api/util/DisplayInfo;->density:F

    const/high16 v2, 0x41500000    # 13.0f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iget-object v2, p0, Lch/kingdoms/android/ui/HelpUi;->DI:Lch/android/api/util/DisplayInfo;

    iget v2, v2, Lch/android/api/util/DisplayInfo;->density:F

    mul-float/2addr v2, v5

    float-to-int v2, v2

    iget-object v3, p0, Lch/kingdoms/android/ui/HelpUi;->DI:Lch/android/api/util/DisplayInfo;

    iget v3, v3, Lch/android/api/util/DisplayInfo;->density:F

    mul-float/2addr v3, v5

    float-to-int v3, v3

    iget-object v4, p0, Lch/kingdoms/android/ui/HelpUi;->DI:Lch/android/api/util/DisplayInfo;

    iget v4, v4, Lch/android/api/util/DisplayInfo;->density:F

    mul-float/2addr v4, v5

    float-to-int v4, v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lch/android/api/ui/ChTextView;->setPadding(IIII)V

    .line 235
    return-object v0
.end method

.method private getTitleView(Landroid/content/Context;Ljava/lang/String;)Landroid/view/View;
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "txt"    # Ljava/lang/String;

    .prologue
    const/high16 v5, 0x40a00000    # 5.0f

    .line 217
    new-instance v0, Lch/android/api/ui/ChTextView;

    invoke-direct {v0, p1}, Lch/android/api/ui/ChTextView;-><init>(Landroid/content/Context;)V

    .line 218
    .local v0, "txtView":Lch/android/api/ui/ChTextView;
    invoke-static {}, Lch/android/api/util/TextPaints;->getSNormalSize()I

    move-result v1

    int-to-float v1, v1

    invoke-static {v0, v1}, Lch/android/api/util/PixelText;->setSize(Landroid/widget/TextView;F)V

    .line 219
    sget-object v1, Lch/android/api/util/TextPaints;->TYPE_FACE_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Lch/android/api/ui/ChTextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 220
    const v1, -0xff0001

    invoke-virtual {v0, v1}, Lch/android/api/ui/ChTextView;->setTextColor(I)V

    .line 221
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lch/android/api/ui/ChTextView;->setGravity(I)V

    .line 222
    invoke-virtual {v0, p2}, Lch/android/api/ui/ChTextView;->setText(Ljava/lang/CharSequence;)V

    .line 223
    iget-object v1, p0, Lch/kingdoms/android/ui/HelpUi;->DI:Lch/android/api/util/DisplayInfo;

    iget v1, v1, Lch/android/api/util/DisplayInfo;->density:F

    const/high16 v2, 0x41200000    # 10.0f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iget-object v2, p0, Lch/kingdoms/android/ui/HelpUi;->DI:Lch/android/api/util/DisplayInfo;

    iget v2, v2, Lch/android/api/util/DisplayInfo;->density:F

    mul-float/2addr v2, v5

    float-to-int v2, v2

    iget-object v3, p0, Lch/kingdoms/android/ui/HelpUi;->DI:Lch/android/api/util/DisplayInfo;

    iget v3, v3, Lch/android/api/util/DisplayInfo;->density:F

    mul-float/2addr v3, v5

    float-to-int v3, v3

    iget-object v4, p0, Lch/kingdoms/android/ui/HelpUi;->DI:Lch/android/api/util/DisplayInfo;

    iget v4, v4, Lch/android/api/util/DisplayInfo;->density:F

    mul-float/2addr v4, v5

    float-to-int v4, v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lch/android/api/ui/ChTextView;->setPadding(IIII)V

    .line 224
    return-object v0
.end method


# virtual methods
.method protected onMeasure(II)V
    .locals 3
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const v2, 0x7f0202bb

    .line 241
    invoke-super {p0, p1, p2}, Lch/android/api/ui/ChRelativeLayout;->onMeasure(II)V

    .line 242
    invoke-virtual {p0}, Lch/kingdoms/android/ui/HelpUi;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0, v2}, Lch/android/api/util/BmpUtil;->getBmpWidth(Landroid/content/res/Resources;I)I

    move-result v0

    .line 243
    invoke-virtual {p0}, Lch/kingdoms/android/ui/HelpUi;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v1, v2}, Lch/android/api/util/BmpUtil;->getBmpHeight(Landroid/content/res/Resources;I)I

    move-result v1

    .line 242
    invoke-super {p0, v0, v1}, Lch/android/api/ui/ChRelativeLayout;->setMeasuredDimension(II)V

    .line 244
    return-void
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1
    .param p1, "l"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 208
    iget-object v0, p0, Lch/kingdoms/android/ui/HelpUi;->backBtn:Lch/android/api/ui/ChBackAnimationButton;

    invoke-virtual {v0, p1}, Lch/android/api/ui/ChBackAnimationButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 209
    return-void
.end method
