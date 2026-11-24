.class public Lch/android/api/ui/ChTextView;
.super Landroid/widget/TextView;
.source "ChTextView.java"

# interfaces
.implements Lch/android/api/ui/IChView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 12
    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 14
    return-void
.end method


# virtual methods
.method public releaseRsources()V
    .locals 2

    .prologue
    .line 78
    invoke-virtual {p0}, Lch/android/api/ui/ChTextView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 79
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    .line 80
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 82
    :cond_0
    return-void
.end method
