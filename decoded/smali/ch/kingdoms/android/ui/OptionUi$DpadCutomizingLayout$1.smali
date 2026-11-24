.class Lch/kingdoms/android/ui/OptionUi$DpadCutomizingLayout$1;
.super Landroid/graphics/drawable/Drawable;
.source "OptionUi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lch/kingdoms/android/ui/OptionUi$DpadCutomizingLayout;-><init>(Lch/kingdoms/android/ui/OptionUi;Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lch/kingdoms/android/ui/OptionUi$DpadCutomizingLayout;


# direct methods
.method constructor <init>(Lch/kingdoms/android/ui/OptionUi$DpadCutomizingLayout;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lch/kingdoms/android/ui/OptionUi$DpadCutomizingLayout$1;->this$1:Lch/kingdoms/android/ui/OptionUi$DpadCutomizingLayout;

    .line 334
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 0
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 356
    return-void
.end method

.method public getOpacity()I
    .locals 1

    .prologue
    .line 349
    const/4 v0, -0x2

    return v0
.end method

.method public setAlpha(I)V
    .locals 0
    .param p1, "alpha"    # I

    .prologue
    .line 344
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0
    .param p1, "cf"    # Landroid/graphics/ColorFilter;

    .prologue
    .line 339
    return-void
.end method
