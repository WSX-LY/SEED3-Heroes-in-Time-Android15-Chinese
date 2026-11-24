.class public Lch/android/api/ui/ChButton;
.super Landroid/widget/Button;
.source "ChButton.java"

# interfaces
.implements Lch/android/api/ui/IChView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 10
    invoke-direct {p0, p1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 12
    return-void
.end method


# virtual methods
.method public releaseRsources()V
    .locals 2

    .prologue
    .line 17
    invoke-virtual {p0}, Lch/android/api/ui/ChButton;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 18
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    .line 19
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 21
    :cond_0
    return-void
.end method
