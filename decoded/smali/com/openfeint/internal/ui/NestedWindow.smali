.class public Lcom/openfeint/internal/ui/NestedWindow;
.super Landroid/app/Activity;
.source "NestedWindow.java"


# instance fields
.field private mIsVisible:Z

.field protected mLogoImage:Landroid/view/View;

.field protected mWebView:Landroid/webkit/WebView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 22
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 19
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/openfeint/internal/ui/NestedWindow;->mIsVisible:Z

    .line 23
    return-void
.end method

.method private isBigScreen()Z
    .locals 7

    .prologue
    const/16 v6, 0x3e8

    const/16 v5, 0x320

    const/4 v3, 0x1

    .line 39
    invoke-virtual {p0}, Lcom/openfeint/internal/ui/NestedWindow;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v4

    invoke-interface {v4}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 40
    .local v0, "d":Landroid/view/Display;
    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v2

    .line 41
    .local v2, "width":I
    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v1

    .line 43
    .local v1, "height":I
    if-le v1, v2, :cond_1

    if-lt v2, v5, :cond_1

    if-lt v1, v6, :cond_1

    .line 47
    :cond_0
    :goto_0
    return v3

    .line 45
    :cond_1
    if-lt v2, v6, :cond_2

    if-ge v1, v5, :cond_0

    .line 47
    :cond_2
    const/4 v3, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected beforeSetContentView()V
    .locals 2

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/openfeint/internal/ui/NestedWindow;->isBigScreen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 52
    invoke-virtual {p0}, Lcom/openfeint/internal/ui/NestedWindow;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/Window;->requestFeature(I)Z

    .line 54
    :cond_0
    return-void
.end method

.method public fade(Z)V
    .locals 5
    .param p1, "toVisible"    # Z

    .prologue
    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 69
    iget-object v4, p0, Lcom/openfeint/internal/ui/NestedWindow;->mWebView:Landroid/webkit/WebView;

    if-eqz v4, :cond_0

    .line 70
    iget-boolean v4, p0, Lcom/openfeint/internal/ui/NestedWindow;->mIsVisible:Z

    if-eq v4, p1, :cond_0

    .line 71
    iput-boolean p1, p0, Lcom/openfeint/internal/ui/NestedWindow;->mIsVisible:Z

    .line 72
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    if-eqz p1, :cond_1

    move v4, v2

    .line 73
    :goto_0
    if-eqz p1, :cond_2

    .line 72
    :goto_1
    invoke-direct {v0, v4, v1}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 74
    .local v0, "anim":Landroid/view/animation/AlphaAnimation;
    if-eqz p1, :cond_3

    const/16 v1, 0xc8

    :goto_2
    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 75
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V

    .line 76
    iget-object v1, p0, Lcom/openfeint/internal/ui/NestedWindow;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v1, v0}, Landroid/webkit/WebView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 77
    iget-object v1, p0, Lcom/openfeint/internal/ui/NestedWindow;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getVisibility()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    .line 78
    iget-object v1, p0, Lcom/openfeint/internal/ui/NestedWindow;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v1, v3}, Landroid/webkit/WebView;->setVisibility(I)V

    .line 79
    const-string v1, "frameLayout"

    invoke-static {v1}, Lcom/openfeint/internal/RR;->id(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/openfeint/internal/ui/NestedWindow;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 83
    .end local v0    # "anim":Landroid/view/animation/AlphaAnimation;
    :cond_0
    return-void

    :cond_1
    move v4, v1

    .line 72
    goto :goto_0

    :cond_2
    move v1, v2

    .line 73
    goto :goto_1

    .restart local v0    # "anim":Landroid/view/animation/AlphaAnimation;
    :cond_3
    move v1, v3

    .line 74
    goto :goto_2
.end method

.method protected layoutResource()I
    .locals 1

    .prologue
    .line 26
    const-string v0, "of_nested_window"

    invoke-static {v0}, Lcom/openfeint/internal/RR;->layout(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 59
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 60
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 30
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 31
    invoke-static {p0}, Lcom/openfeint/internal/Util;->setOrientation(Landroid/app/Activity;)V

    .line 32
    invoke-virtual {p0}, Lcom/openfeint/internal/ui/NestedWindow;->beforeSetContentView()V

    .line 33
    invoke-virtual {p0}, Lcom/openfeint/internal/ui/NestedWindow;->layoutResource()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/openfeint/internal/ui/NestedWindow;->setContentView(I)V

    .line 34
    const-string v0, "web_view"

    invoke-static {v0}, Lcom/openfeint/internal/RR;->id(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/openfeint/internal/ui/NestedWindow;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    iput-object v0, p0, Lcom/openfeint/internal/ui/NestedWindow;->mWebView:Landroid/webkit/WebView;

    .line 35
    const-string v0, "of_ll_logo_image"

    invoke-static {v0}, Lcom/openfeint/internal/RR;->id(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/openfeint/internal/ui/NestedWindow;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/openfeint/internal/ui/NestedWindow;->mLogoImage:Landroid/view/View;

    .line 36
    return-void
.end method
