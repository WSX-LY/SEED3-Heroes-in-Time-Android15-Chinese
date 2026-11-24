.class Lch/kingdoms/android/ui/EquipUi$EquipView$EquipItemButton;
.super Lch/android/api/ui/ChLinearLayout;
.source "EquipUi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lch/kingdoms/android/ui/EquipUi$EquipView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EquipItemButton"
.end annotation


# instance fields
.field private final ITEM_BUTTON:Lch/android/api/ui/ChNewItemButton;

.field private final TITLE_IMG_VIEW:Landroid/widget/ImageView;

.field final synthetic this$1:Lch/kingdoms/android/ui/EquipUi$EquipView;


# direct methods
.method public constructor <init>(Lch/kingdoms/android/ui/EquipUi$EquipView;Landroid/content/Context;II)V
    .locals 2
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "_id"    # I
    .param p4, "_titleResId"    # I

    .prologue
    .line 334
    iput-object p1, p0, Lch/kingdoms/android/ui/EquipUi$EquipView$EquipItemButton;->this$1:Lch/kingdoms/android/ui/EquipUi$EquipView;

    .line 335
    invoke-direct {p0, p2}, Lch/android/api/ui/ChLinearLayout;-><init>(Landroid/content/Context;)V

    .line 337
    const/4 v0, 0x1

    invoke-super {p0, v0}, Lch/android/api/ui/ChLinearLayout;->setOrientation(I)V

    .line 338
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lch/kingdoms/android/ui/EquipUi$EquipView$EquipItemButton;->TITLE_IMG_VIEW:Landroid/widget/ImageView;

    .line 339
    iget-object v0, p0, Lch/kingdoms/android/ui/EquipUi$EquipView$EquipItemButton;->TITLE_IMG_VIEW:Landroid/widget/ImageView;

    invoke-virtual {v0, p4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 340
    new-instance v0, Lch/android/api/ui/ChNewItemButton;

    invoke-direct {v0, p2}, Lch/android/api/ui/ChNewItemButton;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lch/kingdoms/android/ui/EquipUi$EquipView$EquipItemButton;->ITEM_BUTTON:Lch/android/api/ui/ChNewItemButton;

    .line 341
    invoke-super {p0, p3}, Lch/android/api/ui/ChLinearLayout;->setId(I)V

    .line 342
    iget-object v0, p0, Lch/kingdoms/android/ui/EquipUi$EquipView$EquipItemButton;->TITLE_IMG_VIEW:Landroid/widget/ImageView;

    invoke-virtual {v0, p3}, Landroid/widget/ImageView;->setId(I)V

    .line 343
    iget-object v0, p0, Lch/kingdoms/android/ui/EquipUi$EquipView$EquipItemButton;->ITEM_BUTTON:Lch/android/api/ui/ChNewItemButton;

    invoke-virtual {v0, p3}, Lch/android/api/ui/ChNewItemButton;->setId(I)V

    .line 344
    iget-object v0, p0, Lch/kingdoms/android/ui/EquipUi$EquipView$EquipItemButton;->ITEM_BUTTON:Lch/android/api/ui/ChNewItemButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lch/android/api/ui/ChNewItemButton;->setInteractiveFromTouch(Z)V

    .line 346
    iget-object v0, p0, Lch/kingdoms/android/ui/EquipUi$EquipView$EquipItemButton;->TITLE_IMG_VIEW:Landroid/widget/ImageView;

    invoke-super {p0, v0}, Lch/android/api/ui/ChLinearLayout;->addView(Landroid/view/View;)V

    .line 347
    iget-object v0, p0, Lch/kingdoms/android/ui/EquipUi$EquipView$EquipItemButton;->ITEM_BUTTON:Lch/android/api/ui/ChNewItemButton;

    invoke-super {p0, v0}, Lch/android/api/ui/ChLinearLayout;->addView(Landroid/view/View;)V

    .line 348
    return-void
.end method


# virtual methods
.method public isSelected()Z
    .locals 1

    .prologue
    .line 381
    iget-object v0, p0, Lch/kingdoms/android/ui/EquipUi$EquipView$EquipItemButton;->ITEM_BUTTON:Lch/android/api/ui/ChNewItemButton;

    invoke-virtual {v0}, Lch/android/api/ui/ChNewItemButton;->isSelected()Z

    move-result v0

    return v0
.end method

.method public setItem(Lch/kingdoms/ndk/data/Inven$Item;)V
    .locals 1
    .param p1, "_item"    # Lch/kingdoms/ndk/data/Inven$Item;

    .prologue
    .line 359
    if-eqz p1, :cond_0

    .line 360
    iget-object v0, p0, Lch/kingdoms/android/ui/EquipUi$EquipView$EquipItemButton;->ITEM_BUTTON:Lch/android/api/ui/ChNewItemButton;

    invoke-virtual {v0, p1}, Lch/android/api/ui/ChNewItemButton;->setItem(Lch/kingdoms/ndk/data/Inven$Item;)V

    .line 364
    :goto_0
    return-void

    .line 362
    :cond_0
    iget-object v0, p0, Lch/kingdoms/android/ui/EquipUi$EquipView$EquipItemButton;->ITEM_BUTTON:Lch/android/api/ui/ChNewItemButton;

    invoke-virtual {v0}, Lch/android/api/ui/ChNewItemButton;->empty()V

    goto :goto_0
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1
    .param p1, "l"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 353
    invoke-super {p0, p1}, Lch/android/api/ui/ChLinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 354
    iget-object v0, p0, Lch/kingdoms/android/ui/EquipUi$EquipView$EquipItemButton;->ITEM_BUTTON:Lch/android/api/ui/ChNewItemButton;

    invoke-virtual {v0, p1}, Lch/android/api/ui/ChNewItemButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 355
    iget-object v0, p0, Lch/kingdoms/android/ui/EquipUi$EquipView$EquipItemButton;->TITLE_IMG_VIEW:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 356
    return-void
.end method

.method public setToSelect()V
    .locals 1

    .prologue
    .line 377
    iget-object v0, p0, Lch/kingdoms/android/ui/EquipUi$EquipView$EquipItemButton;->ITEM_BUTTON:Lch/android/api/ui/ChNewItemButton;

    invoke-virtual {v0}, Lch/android/api/ui/ChNewItemButton;->setToSelect()V

    .line 378
    return-void
.end method

.method public setToUnSelect()V
    .locals 1

    .prologue
    .line 372
    iget-object v0, p0, Lch/kingdoms/android/ui/EquipUi$EquipView$EquipItemButton;->ITEM_BUTTON:Lch/android/api/ui/ChNewItemButton;

    invoke-virtual {v0}, Lch/android/api/ui/ChNewItemButton;->setToUnSelect()V

    .line 373
    return-void
.end method
