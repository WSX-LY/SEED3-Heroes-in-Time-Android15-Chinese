.class public Lch/seed/android/ui/ViewGen;
.super Ljava/lang/Object;
.source "ViewGen.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static cleanUpDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p0, "_drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 22
    if-eqz p0, :cond_0

    .line 23
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 25
    :cond_0
    return-void
.end method

.method public static cleanUpImgButton(Landroid/widget/ImageButton;)V
    .locals 1
    .param p0, "_imgBtn"    # Landroid/widget/ImageButton;

    .prologue
    .line 18
    invoke-virtual {p0}, Landroid/widget/ImageButton;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-static {v0}, Lch/seed/android/ui/ViewGen;->cleanUpDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 19
    return-void
.end method

.method public static createImageBtn(Landroid/content/Context;II)Landroid/view/View;
    .locals 1
    .param p0, "_context"    # Landroid/content/Context;
    .param p1, "_id"    # I
    .param p2, "_imgId"    # I

    .prologue
    .line 11
    new-instance v0, Landroid/widget/ImageButton;

    invoke-direct {v0, p0}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    .line 12
    .local v0, "imgBtn":Landroid/widget/ImageButton;
    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setId(I)V

    .line 13
    invoke-virtual {v0, p2}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 14
    return-object v0
.end method
