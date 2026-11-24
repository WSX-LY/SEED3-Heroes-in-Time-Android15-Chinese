.class public Lcom/openfeint/internal/ui/PadLogoImageView;
.super Landroid/widget/ImageView;
.source "PadLogoImageView.java"


# instance fields
.field private final tag:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 13
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 10
    const-string v0, "ImageView2"

    iput-object v0, p0, Lcom/openfeint/internal/ui/PadLogoImageView;->tag:Ljava/lang/String;

    .line 15
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 18
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 10
    const-string v0, "ImageView2"

    iput-object v0, p0, Lcom/openfeint/internal/ui/PadLogoImageView;->tag:Ljava/lang/String;

    .line 19
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 22
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 10
    const-string v0, "ImageView2"

    iput-object v0, p0, Lcom/openfeint/internal/ui/PadLogoImageView;->tag:Ljava/lang/String;

    .line 23
    return-void
.end method


# virtual methods
.method protected onLayout(ZIIII)V
    .locals 2
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 27
    invoke-super/range {p0 .. p5}, Landroid/widget/ImageView;->onLayout(ZIIII)V

    .line 28
    const-string v0, "ImageView2"

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    const-string v0, "ImageView2"

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    if-eqz p1, :cond_0

    .line 32
    const/16 v0, 0x15e

    if-ge p3, v0, :cond_1

    .line 33
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/openfeint/internal/ui/PadLogoImageView;->setVisibility(I)V

    .line 37
    :cond_0
    :goto_0
    return-void

    .line 35
    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/openfeint/internal/ui/PadLogoImageView;->setVisibility(I)V

    goto :goto_0
.end method
