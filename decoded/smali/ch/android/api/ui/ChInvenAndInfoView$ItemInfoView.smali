.class Lch/android/api/ui/ChInvenAndInfoView$ItemInfoView;
.super Lch/android/api/ui/ChLinearLayout;
.source "ChInvenAndInfoView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lch/android/api/ui/ChInvenAndInfoView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ItemInfoView"
.end annotation


# instance fields
.field private infoView:Lch/android/api/ui/ChItemInfoView;

.field private ocl:Landroid/view/View$OnClickListener;

.field final synthetic this$0:Lch/android/api/ui/ChInvenAndInfoView;


# direct methods
.method public constructor <init>(Lch/android/api/ui/ChInvenAndInfoView;Landroid/content/Context;)V
    .locals 1
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 104
    iput-object p1, p0, Lch/android/api/ui/ChInvenAndInfoView$ItemInfoView;->this$0:Lch/android/api/ui/ChInvenAndInfoView;

    .line 105
    invoke-direct {p0, p2}, Lch/android/api/ui/ChLinearLayout;-><init>(Landroid/content/Context;)V

    .line 107
    const v0, 0x7f0200a5

    invoke-super {p0, v0}, Lch/android/api/ui/ChLinearLayout;->setBackgroundResource(I)V

    .line 108
    return-void
.end method


# virtual methods
.method public empty()V
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lch/android/api/ui/ChInvenAndInfoView$ItemInfoView;->infoView:Lch/android/api/ui/ChItemInfoView;

    if-eqz v0, :cond_0

    .line 132
    iget-object v0, p0, Lch/android/api/ui/ChInvenAndInfoView$ItemInfoView;->infoView:Lch/android/api/ui/ChItemInfoView;

    invoke-virtual {p0, v0}, Lch/android/api/ui/ChInvenAndInfoView$ItemInfoView;->removeView(Landroid/view/View;)V

    .line 133
    const/4 v0, 0x0

    iput-object v0, p0, Lch/android/api/ui/ChInvenAndInfoView$ItemInfoView;->infoView:Lch/android/api/ui/ChItemInfoView;

    .line 135
    :cond_0
    return-void
.end method

.method public setItem(Lch/kingdoms/ndk/data/Inven$Item;I)V
    .locals 4
    .param p1, "_item"    # Lch/kingdoms/ndk/data/Inven$Item;
    .param p2, "_storeType"    # I

    .prologue
    .line 117
    invoke-virtual {p0}, Lch/android/api/ui/ChInvenAndInfoView$ItemInfoView;->empty()V

    .line 118
    new-instance v1, Lch/android/api/ui/ChItemInfoView;

    invoke-virtual {p0}, Lch/android/api/ui/ChInvenAndInfoView$ItemInfoView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2, p1, p2}, Lch/android/api/ui/ChItemInfoView;-><init>(Landroid/content/Context;Lch/kingdoms/ndk/data/Inven$Item;I)V

    iput-object v1, p0, Lch/android/api/ui/ChInvenAndInfoView$ItemInfoView;->infoView:Lch/android/api/ui/ChItemInfoView;

    .line 119
    iget-object v1, p0, Lch/android/api/ui/ChInvenAndInfoView$ItemInfoView;->infoView:Lch/android/api/ui/ChItemInfoView;

    iget-object v2, p0, Lch/android/api/ui/ChInvenAndInfoView$ItemInfoView;->ocl:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Lch/android/api/ui/ChItemInfoView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 126
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v1, 0x43480000    # 200.0f

    iget-object v2, p0, Lch/android/api/ui/ChInvenAndInfoView$ItemInfoView;->this$0:Lch/android/api/ui/ChInvenAndInfoView;

    invoke-static {v2}, Lch/android/api/ui/ChInvenAndInfoView;->access$0(Lch/android/api/ui/ChInvenAndInfoView;)Lch/android/api/util/DisplayInfo;

    move-result-object v2

    iget v2, v2, Lch/android/api/util/DisplayInfo;->density:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    const/high16 v2, 0x43070000    # 135.0f

    iget-object v3, p0, Lch/android/api/ui/ChInvenAndInfoView$ItemInfoView;->this$0:Lch/android/api/ui/ChInvenAndInfoView;

    invoke-static {v3}, Lch/android/api/ui/ChInvenAndInfoView;->access$0(Lch/android/api/ui/ChInvenAndInfoView;)Lch/android/api/util/DisplayInfo;

    move-result-object v3

    iget v3, v3, Lch/android/api/util/DisplayInfo;->density:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 127
    .local v0, "lp":Landroid/widget/LinearLayout$LayoutParams;
    iget-object v1, p0, Lch/android/api/ui/ChInvenAndInfoView$ItemInfoView;->infoView:Lch/android/api/ui/ChItemInfoView;

    invoke-virtual {p0, v1, v0}, Lch/android/api/ui/ChInvenAndInfoView$ItemInfoView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 128
    return-void
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0
    .param p1, "l"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 113
    iput-object p1, p0, Lch/android/api/ui/ChInvenAndInfoView$ItemInfoView;->ocl:Landroid/view/View$OnClickListener;

    .line 114
    return-void
.end method
