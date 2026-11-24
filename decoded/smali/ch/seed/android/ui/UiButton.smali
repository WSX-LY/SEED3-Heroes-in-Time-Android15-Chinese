.class public Lch/seed/android/ui/UiButton;
.super Landroid/widget/Button;
.source "UiButton.java"


# static fields
.field public static final NOT_INITIALIZED:I = -0x1


# instance fields
.field private final m_bmpId:I

.field private final m_downBmpId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "viewId_"    # I

    .prologue
    const/4 v0, -0x1

    .line 20
    invoke-direct {p0, p1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 22
    iput v0, p0, Lch/seed/android/ui/UiButton;->m_bmpId:I

    .line 23
    iput v0, p0, Lch/seed/android/ui/UiButton;->m_downBmpId:I

    .line 25
    invoke-super {p0, p2}, Landroid/widget/Button;->setId(I)V

    .line 26
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;III)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "viewId_"    # I
    .param p3, "bmpId_"    # I
    .param p4, "downBmpId_"    # I

    .prologue
    const/4 v1, 0x0

    .line 29
    invoke-direct {p0, p1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 31
    iput p3, p0, Lch/seed/android/ui/UiButton;->m_bmpId:I

    .line 32
    iput p4, p0, Lch/seed/android/ui/UiButton;->m_downBmpId:I

    .line 34
    invoke-super {p0, p2}, Landroid/widget/Button;->setId(I)V

    .line 35
    const/4 v0, 0x1

    invoke-virtual {p0, v0, v1, v1}, Lch/seed/android/ui/UiButton;->touch(IFF)I

    .line 36
    return-void
.end method


# virtual methods
.method public touch(IFF)I
    .locals 2
    .param p1, "action_"    # I
    .param p2, "x_"    # F
    .param p3, "y_"    # F

    .prologue
    const/4 v1, -0x1

    .line 39
    packed-switch p1, :pswitch_data_0

    .line 46
    iget v0, p0, Lch/seed/android/ui/UiButton;->m_bmpId:I

    if-eq v0, v1, :cond_0

    .line 47
    iget v0, p0, Lch/seed/android/ui/UiButton;->m_bmpId:I

    invoke-super {p0, v0}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 52
    :cond_0
    :goto_0
    const/4 v0, 0x0

    return v0

    .line 41
    :pswitch_0
    iget v0, p0, Lch/seed/android/ui/UiButton;->m_downBmpId:I

    if-eq v0, v1, :cond_0

    .line 42
    iget v0, p0, Lch/seed/android/ui/UiButton;->m_downBmpId:I

    invoke-super {p0, v0}, Landroid/widget/Button;->setBackgroundResource(I)V

    goto :goto_0

    .line 39
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
