.class Lch/kingdoms/android/ui/OptionUi$DpadCutomizingLayout;
.super Lch/android/api/ui/ChRelativeLayout;
.source "OptionUi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lch/kingdoms/android/ui/OptionUi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DpadCutomizingLayout"
.end annotation


# instance fields
.field private final customizingView:Lch/kingdoms/android/dpad/DpadCustomizingView;

.field final synthetic this$0:Lch/kingdoms/android/ui/OptionUi;

.field private final thumbBmp:Landroid/graphics/Bitmap;

.field private final thumbDrawable:Landroid/graphics/drawable/BitmapDrawable;


# direct methods
.method public constructor <init>(Lch/kingdoms/android/ui/OptionUi;Landroid/content/Context;)V
    .locals 13
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 308
    iput-object p1, p0, Lch/kingdoms/android/ui/OptionUi$DpadCutomizingLayout;->this$0:Lch/kingdoms/android/ui/OptionUi;

    .line 309
    invoke-direct {p0, p2}, Lch/android/api/ui/ChRelativeLayout;-><init>(Landroid/content/Context;)V

    .line 312
    new-instance v2, Lch/kingdoms/android/dpad/Dpad;

    invoke-static {p1}, Lch/kingdoms/android/ui/OptionUi;->access$0(Lch/kingdoms/android/ui/OptionUi;)Lch/android/api/util/DisplayInfo;

    move-result-object v9

    const/4 v10, 0x0

    invoke-direct {v2, p2, v9, v10}, Lch/kingdoms/android/dpad/Dpad;-><init>(Landroid/content/Context;Lch/android/api/util/DisplayInfo;Lch/kingdoms/market/KeyTranslator;)V

    .line 313
    .local v2, "dpad":Lch/kingdoms/android/dpad/Dpad;
    invoke-virtual {v2}, Lch/kingdoms/android/dpad/Dpad;->getDpadCustomizingView()Lch/kingdoms/android/dpad/DpadCustomizingView;

    move-result-object v9

    iput-object v9, p0, Lch/kingdoms/android/ui/OptionUi$DpadCutomizingLayout;->customizingView:Lch/kingdoms/android/dpad/DpadCustomizingView;

    .line 314
    iget-object v9, p0, Lch/kingdoms/android/ui/OptionUi$DpadCutomizingLayout;->customizingView:Lch/kingdoms/android/dpad/DpadCustomizingView;

    invoke-virtual {p0, v9}, Lch/kingdoms/android/ui/OptionUi$DpadCutomizingLayout;->addView(Landroid/view/View;)V

    .line 316
    new-instance v5, Lch/android/api/ui/ChLinearLayout;

    invoke-direct {v5, p2}, Lch/android/api/ui/ChLinearLayout;-><init>(Landroid/content/Context;)V

    .line 317
    .local v5, "lLayout":Lch/android/api/ui/ChLinearLayout;
    const/4 v9, 0x1

    invoke-virtual {v5, v9}, Lch/android/api/ui/ChLinearLayout;->setOrientation(I)V

    .line 321
    invoke-virtual {p0}, Lch/kingdoms/android/ui/OptionUi$DpadCutomizingLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f02009b

    invoke-static {v9, v10}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v9

    iput-object v9, p0, Lch/kingdoms/android/ui/OptionUi$DpadCutomizingLayout;->thumbBmp:Landroid/graphics/Bitmap;

    .line 322
    new-instance v9, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lch/kingdoms/android/ui/OptionUi$DpadCutomizingLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    iget-object v11, p0, Lch/kingdoms/android/ui/OptionUi$DpadCutomizingLayout;->thumbBmp:Landroid/graphics/Bitmap;

    invoke-direct {v9, v10, v11}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    iput-object v9, p0, Lch/kingdoms/android/ui/OptionUi$DpadCutomizingLayout;->thumbDrawable:Landroid/graphics/drawable/BitmapDrawable;

    .line 323
    new-instance v0, Landroid/widget/SeekBar;

    invoke-direct {v0, p2}, Landroid/widget/SeekBar;-><init>(Landroid/content/Context;)V

    .line 324
    .local v0, "alphaSeekBar":Landroid/widget/SeekBar;
    const/16 v9, 0xa

    invoke-virtual {v0, v9}, Landroid/widget/SeekBar;->setMax(I)V

    .line 325
    iget-object v9, p0, Lch/kingdoms/android/ui/OptionUi$DpadCutomizingLayout;->customizingView:Lch/kingdoms/android/dpad/DpadCustomizingView;

    invoke-virtual {v9}, Lch/kingdoms/android/dpad/DpadCustomizingView;->getButtonsAlpha()I

    move-result v9

    div-int/lit8 v9, v9, 0x19

    invoke-virtual {v0, v9}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 327
    iget-object v9, p0, Lch/kingdoms/android/ui/OptionUi$DpadCutomizingLayout;->thumbDrawable:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0, v9}, Landroid/widget/SeekBar;->setThumb(Landroid/graphics/drawable/Drawable;)V

    .line 328
    invoke-static {p1}, Lch/kingdoms/android/ui/OptionUi;->access$0(Lch/kingdoms/android/ui/OptionUi;)Lch/android/api/util/DisplayInfo;

    move-result-object v9

    iget v9, v9, Lch/android/api/util/DisplayInfo;->density:F

    const/high16 v10, 0x40400000    # 3.0f

    mul-float/2addr v9, v10

    float-to-int v9, v9

    invoke-virtual {v0, v9}, Landroid/widget/SeekBar;->setThumbOffset(I)V

    .line 334
    new-instance v3, Lch/kingdoms/android/ui/OptionUi$DpadCutomizingLayout$1;

    invoke-direct {v3, p0}, Lch/kingdoms/android/ui/OptionUi$DpadCutomizingLayout$1;-><init>(Lch/kingdoms/android/ui/OptionUi$DpadCutomizingLayout;)V

    .line 358
    .local v3, "emptyDrawable":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v0, v3}, Landroid/widget/SeekBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 359
    invoke-static {p1}, Lch/kingdoms/android/ui/OptionUi;->access$0(Lch/kingdoms/android/ui/OptionUi;)Lch/android/api/util/DisplayInfo;

    move-result-object v9

    iget v9, v9, Lch/android/api/util/DisplayInfo;->density:F

    const/high16 v10, 0x41880000    # 17.0f

    mul-float/2addr v9, v10

    float-to-int v9, v9

    invoke-static {p1}, Lch/kingdoms/android/ui/OptionUi;->access$0(Lch/kingdoms/android/ui/OptionUi;)Lch/android/api/util/DisplayInfo;

    move-result-object v10

    iget v10, v10, Lch/android/api/util/DisplayInfo;->density:F

    const/high16 v11, 0x40000000    # 2.0f

    mul-float/2addr v10, v11

    float-to-int v10, v10

    invoke-static {p1}, Lch/kingdoms/android/ui/OptionUi;->access$0(Lch/kingdoms/android/ui/OptionUi;)Lch/android/api/util/DisplayInfo;

    move-result-object v11

    iget v11, v11, Lch/android/api/util/DisplayInfo;->density:F

    const/high16 v12, 0x41d80000    # 27.0f

    mul-float/2addr v11, v12

    float-to-int v11, v11

    const/4 v12, 0x0

    invoke-virtual {v0, v9, v10, v11, v12}, Landroid/widget/SeekBar;->setPadding(IIII)V

    .line 360
    new-instance v6, Lch/android/api/ui/ChLinearLayout;

    invoke-direct {v6, p2}, Lch/android/api/ui/ChLinearLayout;-><init>(Landroid/content/Context;)V

    .line 361
    .local v6, "ll":Lch/android/api/ui/ChLinearLayout;
    const v9, 0x7f02009a

    invoke-virtual {v6, v9}, Lch/android/api/ui/ChLinearLayout;->setBackgroundResource(I)V

    .line 362
    new-instance v9, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v10, -0x1

    const/4 v11, -0x1

    invoke-direct {v9, v10, v11}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v6, v0, v9}, Lch/android/api/ui/ChLinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 363
    new-instance v9, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v10, -0x1

    const/4 v11, -0x1

    invoke-direct {v9, v10, v11}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v5, v6, v9}, Lch/android/api/ui/ChLinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 367
    new-instance v1, Lch/android/api/ui/ChLinearLayout;

    invoke-direct {v1, p2}, Lch/android/api/ui/ChLinearLayout;-><init>(Landroid/content/Context;)V

    .line 368
    .local v1, "btnsLayout":Lch/android/api/ui/ChLinearLayout;
    const/4 v9, 0x5

    invoke-virtual {v1, v9}, Lch/android/api/ui/ChLinearLayout;->setGravity(I)V

    .line 369
    const v9, 0x7f020097

    invoke-virtual {v1, v9}, Lch/android/api/ui/ChLinearLayout;->setBackgroundResource(I)V

    .line 370
    new-instance v7, Lch/android/api/ui/ChImageButton;

    const v9, 0x7f020099

    const v10, 0x7f020098

    invoke-direct {v7, p2, v9, v10}, Lch/android/api/ui/ChImageButton;-><init>(Landroid/content/Context;II)V

    .line 371
    .local v7, "resetBtn":Lch/android/api/ui/ChImageButton;
    new-instance v4, Lch/android/api/ui/ChImageButton;

    const v9, 0x7f020096

    const v10, 0x7f020095

    invoke-direct {v4, p2, v9, v10}, Lch/android/api/ui/ChImageButton;-><init>(Landroid/content/Context;II)V

    .line 372
    .local v4, "exitBtn":Lch/android/api/ui/ChImageButton;
    new-instance v9, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v10, -0x2

    const/4 v11, -0x2

    invoke-direct {v9, v10, v11}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v7, v9}, Lch/android/api/ui/ChLinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 373
    new-instance v9, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v10, -0x2

    const/4 v11, -0x2

    invoke-direct {v9, v10, v11}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v4, v9}, Lch/android/api/ui/ChLinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 375
    invoke-virtual {v5, v1}, Lch/android/api/ui/ChLinearLayout;->addView(Landroid/view/View;)V

    .line 377
    new-instance v8, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v9, -0x2

    const/4 v10, -0x2

    invoke-direct {v8, v9, v10}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 378
    .local v8, "rlp":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v9, 0x9

    invoke-virtual {v8, v9}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 379
    const/16 v9, 0xa

    invoke-virtual {v8, v9}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 380
    invoke-static {p1}, Lch/kingdoms/android/ui/OptionUi;->access$0(Lch/kingdoms/android/ui/OptionUi;)Lch/android/api/util/DisplayInfo;

    move-result-object v9

    iget v9, v9, Lch/android/api/util/DisplayInfo;->density:F

    const/high16 v10, 0x41a00000    # 20.0f

    mul-float/2addr v9, v10

    float-to-int v9, v9

    iput v9, v8, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    iput v9, v8, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 382
    invoke-virtual {p0, v5, v8}, Lch/kingdoms/android/ui/OptionUi$DpadCutomizingLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 384
    new-instance v9, Lch/kingdoms/android/ui/OptionUi$DpadCutomizingLayout$2;

    invoke-direct {v9, p0}, Lch/kingdoms/android/ui/OptionUi$DpadCutomizingLayout$2;-><init>(Lch/kingdoms/android/ui/OptionUi$DpadCutomizingLayout;)V

    invoke-virtual {v0, v9}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 403
    new-instance v9, Lch/kingdoms/android/ui/OptionUi$DpadCutomizingLayout$3;

    invoke-direct {v9, p0}, Lch/kingdoms/android/ui/OptionUi$DpadCutomizingLayout$3;-><init>(Lch/kingdoms/android/ui/OptionUi$DpadCutomizingLayout;)V

    invoke-virtual {v7, v9}, Lch/android/api/ui/ChImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 411
    new-instance v9, Lch/kingdoms/android/ui/OptionUi$DpadCutomizingLayout$4;

    invoke-direct {v9, p0, v0}, Lch/kingdoms/android/ui/OptionUi$DpadCutomizingLayout$4;-><init>(Lch/kingdoms/android/ui/OptionUi$DpadCutomizingLayout;Landroid/widget/SeekBar;)V

    invoke-virtual {v4, v9}, Lch/android/api/ui/ChImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 424
    return-void
.end method

.method static synthetic access$0(Lch/kingdoms/android/ui/OptionUi$DpadCutomizingLayout;)Lch/kingdoms/android/dpad/DpadCustomizingView;
    .locals 1

    .prologue
    .line 306
    iget-object v0, p0, Lch/kingdoms/android/ui/OptionUi$DpadCutomizingLayout;->customizingView:Lch/kingdoms/android/dpad/DpadCustomizingView;

    return-object v0
.end method


# virtual methods
.method public releaseRsources()V
    .locals 2

    .prologue
    .line 429
    invoke-super {p0}, Lch/android/api/ui/ChRelativeLayout;->releaseRsources()V

    .line 437
    iget-object v0, p0, Lch/kingdoms/android/ui/OptionUi$DpadCutomizingLayout;->thumbDrawable:Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v0, :cond_0

    .line 438
    iget-object v0, p0, Lch/kingdoms/android/ui/OptionUi$DpadCutomizingLayout;->thumbDrawable:Landroid/graphics/drawable/BitmapDrawable;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/BitmapDrawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 440
    :cond_0
    iget-object v0, p0, Lch/kingdoms/android/ui/OptionUi$DpadCutomizingLayout;->thumbBmp:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lch/kingdoms/android/ui/OptionUi$DpadCutomizingLayout;->thumbBmp:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 441
    iget-object v0, p0, Lch/kingdoms/android/ui/OptionUi$DpadCutomizingLayout;->thumbBmp:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 443
    :cond_1
    return-void
.end method
