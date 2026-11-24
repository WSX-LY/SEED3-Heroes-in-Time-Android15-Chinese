.class Lch/kingdoms/android/ui/MainMenuUi$Menu;
.super Lch/android/api/ui/ChLinearLayout;
.source "MainMenuUi.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lch/kingdoms/android/ui/MainMenuUi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Menu"
.end annotation


# instance fields
.field private final ID_CONTINUE_BTN:I

.field private final ID_HELP_BTN:I

.field private final ID_NEWGAME_BTN:I

.field private final ID_OPTION_BTN:I

.field private layerLevel:I

.field final synthetic this$0:Lch/kingdoms/android/ui/MainMenuUi;


# direct methods
.method public constructor <init>(Lch/kingdoms/android/ui/MainMenuUi;Landroid/content/Context;)V
    .locals 11
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 281
    iput-object p1, p0, Lch/kingdoms/android/ui/MainMenuUi$Menu;->this$0:Lch/kingdoms/android/ui/MainMenuUi;

    .line 282
    invoke-direct {p0, p2}, Lch/android/api/ui/ChLinearLayout;-><init>(Landroid/content/Context;)V

    .line 274
    const/16 v7, 0x64

    iput v7, p0, Lch/kingdoms/android/ui/MainMenuUi$Menu;->ID_NEWGAME_BTN:I

    .line 275
    const/16 v7, 0x65

    iput v7, p0, Lch/kingdoms/android/ui/MainMenuUi$Menu;->ID_CONTINUE_BTN:I

    .line 276
    const/16 v7, 0x66

    iput v7, p0, Lch/kingdoms/android/ui/MainMenuUi$Menu;->ID_OPTION_BTN:I

    .line 277
    const/16 v7, 0x67

    iput v7, p0, Lch/kingdoms/android/ui/MainMenuUi$Menu;->ID_HELP_BTN:I

    .line 284
    const/4 v7, 0x1

    invoke-super {p0, v7}, Lch/android/api/ui/ChLinearLayout;->setOrientation(I)V

    .line 285
    const v7, 0x7f0201fd

    invoke-super {p0, v7}, Lch/android/api/ui/ChLinearLayout;->setBackgroundResource(I)V

    .line 286
    new-instance v3, Lch/android/api/ui/ChImageButton;

    const v7, 0x7f020213

    const v8, 0x7f020214

    invoke-direct {v3, p2, v7, v8}, Lch/android/api/ui/ChImageButton;-><init>(Landroid/content/Context;II)V

    .line 287
    .local v3, "newGameBtn":Lch/android/api/ui/ChImageButton;
    const/16 v7, 0x64

    invoke-virtual {v3, v7}, Lch/android/api/ui/ChImageButton;->setId(I)V

    .line 288
    new-instance v0, Lch/android/api/ui/ChImageButton;

    const v7, 0x7f020089

    const v8, 0x7f02008a

    invoke-direct {v0, p2, v7, v8}, Lch/android/api/ui/ChImageButton;-><init>(Landroid/content/Context;II)V

    .line 289
    .local v0, "continueGameBtn":Lch/android/api/ui/ChImageButton;
    const/16 v7, 0x65

    invoke-virtual {v0, v7}, Lch/android/api/ui/ChImageButton;->setId(I)V

    .line 290
    new-instance v4, Lch/android/api/ui/ChImageButton;

    const v7, 0x7f02023b

    const v8, 0x7f02023c

    invoke-direct {v4, p2, v7, v8}, Lch/android/api/ui/ChImageButton;-><init>(Landroid/content/Context;II)V

    .line 291
    .local v4, "optionBtn":Lch/android/api/ui/ChImageButton;
    const/16 v7, 0x66

    invoke-virtual {v4, v7}, Lch/android/api/ui/ChImageButton;->setId(I)V

    .line 292
    new-instance v1, Lch/android/api/ui/ChImageButton;

    const v7, 0x7f0200ce

    const v8, 0x7f0200cf

    invoke-direct {v1, p2, v7, v8}, Lch/android/api/ui/ChImageButton;-><init>(Landroid/content/Context;II)V

    .line 293
    .local v1, "helpBtn":Lch/android/api/ui/ChImageButton;
    const/16 v7, 0x67

    invoke-virtual {v1, v7}, Lch/android/api/ui/ChImageButton;->setId(I)V

    .line 295
    const/4 v7, 0x4

    new-array v6, v7, [Landroid/view/View;

    const/4 v7, 0x0

    aput-object v3, v6, v7

    const/4 v7, 0x1

    aput-object v0, v6, v7

    const/4 v7, 0x2

    aput-object v4, v6, v7

    const/4 v7, 0x3

    aput-object v1, v6, v7

    .line 296
    .local v6, "views":[Landroid/view/View;
    array-length v8, v6

    const/4 v7, 0x0

    :goto_0
    if-lt v7, v8, :cond_0

    .line 304
    return-void

    .line 296
    :cond_0
    aget-object v5, v6, v7

    .line 297
    .local v5, "view":Landroid/view/View;
    invoke-virtual {v5, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 298
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v9, -0x2

    const/4 v10, -0x1

    invoke-direct {v2, v9, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 299
    .local v2, "lp":Landroid/widget/LinearLayout$LayoutParams;
    invoke-static {p1}, Lch/kingdoms/android/ui/MainMenuUi;->access$0(Lch/kingdoms/android/ui/MainMenuUi;)Lch/android/api/util/DisplayInfo;

    move-result-object v9

    iget v9, v9, Lch/android/api/util/DisplayInfo;->density:F

    const/high16 v10, 0x41b80000    # 23.0f

    mul-float/2addr v9, v10

    float-to-int v9, v9

    iput v9, v2, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 300
    const/high16 v9, 0x3f800000    # 1.0f

    iput v9, v2, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 301
    const/16 v9, 0x11

    iput v9, v2, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 302
    invoke-virtual {p0, v5, v2}, Lch/kingdoms/android/ui/MainMenuUi$Menu;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 296
    add-int/lit8 v7, v7, 0x1

    goto :goto_0
.end method

.method static synthetic access$0(Lch/kingdoms/android/ui/MainMenuUi$Menu;)I
    .locals 1

    .prologue
    .line 279
    iget v0, p0, Lch/kingdoms/android/ui/MainMenuUi$Menu;->layerLevel:I

    return v0
.end method

.method static synthetic access$1(Lch/kingdoms/android/ui/MainMenuUi$Menu;Z)V
    .locals 0

    .prologue
    .line 306
    invoke-direct {p0, p1}, Lch/kingdoms/android/ui/MainMenuUi$Menu;->setVisibility(Z)V

    return-void
.end method

.method static synthetic access$2(Lch/kingdoms/android/ui/MainMenuUi$Menu;I)V
    .locals 0

    .prologue
    .line 279
    iput p1, p0, Lch/kingdoms/android/ui/MainMenuUi$Menu;->layerLevel:I

    return-void
.end method

.method static synthetic access$3(Lch/kingdoms/android/ui/MainMenuUi$Menu;)Lch/kingdoms/android/ui/MainMenuUi;
    .locals 1

    .prologue
    .line 273
    iget-object v0, p0, Lch/kingdoms/android/ui/MainMenuUi$Menu;->this$0:Lch/kingdoms/android/ui/MainMenuUi;

    return-object v0
.end method

.method private setVisibility(Z)V
    .locals 5
    .param p1, "isVisible"    # Z

    .prologue
    const/4 v1, 0x0

    .line 307
    if-eqz p1, :cond_2

    .line 308
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lch/kingdoms/android/ui/MainMenuUi$Menu;->setVisibility(I)V

    .line 309
    iget-object v0, p0, Lch/kingdoms/android/ui/MainMenuUi$Menu;->this$0:Lch/kingdoms/android/ui/MainMenuUi;

    invoke-static {v0}, Lch/kingdoms/android/ui/MainMenuUi;->access$1(Lch/kingdoms/android/ui/MainMenuUi;)Lch/android/api/network/ChBanner;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 310
    iget-object v0, p0, Lch/kingdoms/android/ui/MainMenuUi$Menu;->this$0:Lch/kingdoms/android/ui/MainMenuUi;

    invoke-static {v0}, Lch/kingdoms/android/ui/MainMenuUi;->access$1(Lch/kingdoms/android/ui/MainMenuUi;)Lch/android/api/network/ChBanner;

    move-result-object v0

    invoke-virtual {v0}, Lch/android/api/network/ChBanner;->removeView()V

    .line 311
    iget-object v0, p0, Lch/kingdoms/android/ui/MainMenuUi$Menu;->this$0:Lch/kingdoms/android/ui/MainMenuUi;

    invoke-static {v0, v1}, Lch/kingdoms/android/ui/MainMenuUi;->access$2(Lch/kingdoms/android/ui/MainMenuUi;Lch/android/api/network/ChBanner;)V

    .line 313
    :cond_0
    iget-object v0, p0, Lch/kingdoms/android/ui/MainMenuUi$Menu;->this$0:Lch/kingdoms/android/ui/MainMenuUi;

    new-instance v1, Lch/android/api/network/ChBanner;

    iget-object v2, p0, Lch/kingdoms/android/ui/MainMenuUi$Menu;->this$0:Lch/kingdoms/android/ui/MainMenuUi;

    invoke-static {v2}, Lch/kingdoms/android/ui/MainMenuUi;->access$3(Lch/kingdoms/android/ui/MainMenuUi;)Landroid/app/Activity;

    move-result-object v2

    iget-object v3, p0, Lch/kingdoms/android/ui/MainMenuUi$Menu;->this$0:Lch/kingdoms/android/ui/MainMenuUi;

    invoke-static {v3}, Lch/kingdoms/android/ui/MainMenuUi;->access$4(Lch/kingdoms/android/ui/MainMenuUi;)Landroid/os/Handler;

    move-result-object v3

    invoke-static {}, Lch/kingdoms/android/db/DBAdapter;->getInstance()Lch/kingdoms/android/db/DBAdapter;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lch/android/api/network/ChBanner;-><init>(Landroid/app/Activity;Landroid/os/Handler;Lch/kingdoms/android/db/DBAdapter;)V

    invoke-static {v0, v1}, Lch/kingdoms/android/ui/MainMenuUi;->access$2(Lch/kingdoms/android/ui/MainMenuUi;Lch/android/api/network/ChBanner;)V

    .line 314
    iget-object v0, p0, Lch/kingdoms/android/ui/MainMenuUi$Menu;->this$0:Lch/kingdoms/android/ui/MainMenuUi;

    invoke-static {v0}, Lch/kingdoms/android/ui/MainMenuUi;->access$1(Lch/kingdoms/android/ui/MainMenuUi;)Lch/android/api/network/ChBanner;

    move-result-object v0

    invoke-virtual {v0}, Lch/android/api/network/ChBanner;->popUp()V

    .line 322
    :cond_1
    :goto_0
    return-void

    .line 316
    :cond_2
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lch/kingdoms/android/ui/MainMenuUi$Menu;->setVisibility(I)V

    .line 317
    iget-object v0, p0, Lch/kingdoms/android/ui/MainMenuUi$Menu;->this$0:Lch/kingdoms/android/ui/MainMenuUi;

    invoke-static {v0}, Lch/kingdoms/android/ui/MainMenuUi;->access$1(Lch/kingdoms/android/ui/MainMenuUi;)Lch/android/api/network/ChBanner;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 318
    iget-object v0, p0, Lch/kingdoms/android/ui/MainMenuUi$Menu;->this$0:Lch/kingdoms/android/ui/MainMenuUi;

    invoke-static {v0}, Lch/kingdoms/android/ui/MainMenuUi;->access$1(Lch/kingdoms/android/ui/MainMenuUi;)Lch/android/api/network/ChBanner;

    move-result-object v0

    invoke-virtual {v0}, Lch/android/api/network/ChBanner;->removeView()V

    .line 319
    iget-object v0, p0, Lch/kingdoms/android/ui/MainMenuUi$Menu;->this$0:Lch/kingdoms/android/ui/MainMenuUi;

    invoke-static {v0, v1}, Lch/kingdoms/android/ui/MainMenuUi;->access$2(Lch/kingdoms/android/ui/MainMenuUi;Lch/android/api/network/ChBanner;)V

    goto :goto_0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 327
    invoke-static {}, Lch/android/api/ui/ChViewGen;->getEventLayerLevel()I

    move-result v2

    iget v3, p0, Lch/kingdoms/android/ui/MainMenuUi$Menu;->layerLevel:I

    if-ne v2, v3, :cond_1

    invoke-virtual {p0}, Lch/kingdoms/android/ui/MainMenuUi$Menu;->getVisibility()I

    move-result v2

    if-nez v2, :cond_1

    .line 328
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lch/kingdoms/android/ui/MainMenuUi$Menu;->setVisibility(Z)V

    .line 329
    iget-object v2, p0, Lch/kingdoms/android/ui/MainMenuUi$Menu;->this$0:Lch/kingdoms/android/ui/MainMenuUi;

    invoke-static {v2}, Lch/kingdoms/android/ui/MainMenuUi;->access$1(Lch/kingdoms/android/ui/MainMenuUi;)Lch/android/api/network/ChBanner;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 330
    iget-object v2, p0, Lch/kingdoms/android/ui/MainMenuUi$Menu;->this$0:Lch/kingdoms/android/ui/MainMenuUi;

    invoke-static {v2}, Lch/kingdoms/android/ui/MainMenuUi;->access$1(Lch/kingdoms/android/ui/MainMenuUi;)Lch/android/api/network/ChBanner;

    move-result-object v2

    invoke-virtual {v2}, Lch/android/api/network/ChBanner;->removeView()V

    .line 331
    iget-object v2, p0, Lch/kingdoms/android/ui/MainMenuUi$Menu;->this$0:Lch/kingdoms/android/ui/MainMenuUi;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lch/kingdoms/android/ui/MainMenuUi;->access$2(Lch/kingdoms/android/ui/MainMenuUi;Lch/android/api/network/ChBanner;)V

    .line 333
    :cond_0
    iget-object v2, p0, Lch/kingdoms/android/ui/MainMenuUi$Menu;->this$0:Lch/kingdoms/android/ui/MainMenuUi;

    invoke-static {v2}, Lch/kingdoms/android/ui/MainMenuUi;->access$3(Lch/kingdoms/android/ui/MainMenuUi;)Landroid/app/Activity;

    move-result-object v2

    const-string v3, ""

    iget-object v4, p0, Lch/kingdoms/android/ui/MainMenuUi$Menu;->this$0:Lch/kingdoms/android/ui/MainMenuUi;

    invoke-static {v4}, Lch/kingdoms/android/ui/MainMenuUi;->access$3(Lch/kingdoms/android/ui/MainMenuUi;)Landroid/app/Activity;

    move-result-object v4

    const v5, 0x7f050047

    invoke-virtual {v4, v5}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/app/ProgressDialog;

    move-result-object v1

    .line 334
    .local v1, "pd":Landroid/app/ProgressDialog;
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 335
    .local v0, "id":I
    iget-object v2, p0, Lch/kingdoms/android/ui/MainMenuUi$Menu;->this$0:Lch/kingdoms/android/ui/MainMenuUi;

    invoke-static {v2}, Lch/kingdoms/android/ui/MainMenuUi;->access$4(Lch/kingdoms/android/ui/MainMenuUi;)Landroid/os/Handler;

    move-result-object v2

    new-instance v3, Lch/kingdoms/android/ui/MainMenuUi$Menu$1;

    invoke-direct {v3, p0, v0, v1}, Lch/kingdoms/android/ui/MainMenuUi$Menu$1;-><init>(Lch/kingdoms/android/ui/MainMenuUi$Menu;ILandroid/app/ProgressDialog;)V

    .line 450
    const-wide/16 v4, 0x64

    .line 335
    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 452
    .end local v0    # "id":I
    .end local v1    # "pd":Landroid/app/ProgressDialog;
    :cond_1
    return-void
.end method
