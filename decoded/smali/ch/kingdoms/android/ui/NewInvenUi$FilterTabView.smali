.class Lch/kingdoms/android/ui/NewInvenUi$FilterTabView;
.super Lch/android/api/ui/ChLinearLayout;
.source "NewInvenUi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lch/kingdoms/android/ui/NewInvenUi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FilterTabView"
.end annotation


# instance fields
.field private final ALL_BTN:Lch/android/api/ui/ChOnOffButton;

.field private final EQUIP_BTN:Lch/android/api/ui/ChOnOffButton;

.field private final ITEM_BTN:Lch/android/api/ui/ChOnOffButton;

.field private final QUEST_BTN:Lch/android/api/ui/ChOnOffButton;

.field private final RING_BTN:Lch/android/api/ui/ChOnOffButton;

.field private selectedBtnId:I

.field final synthetic this$0:Lch/kingdoms/android/ui/NewInvenUi;


# direct methods
.method public constructor <init>(Lch/kingdoms/android/ui/NewInvenUi;Landroid/content/Context;)V
    .locals 4
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 120
    iput-object p1, p0, Lch/kingdoms/android/ui/NewInvenUi$FilterTabView;->this$0:Lch/kingdoms/android/ui/NewInvenUi;

    .line 121
    invoke-direct {p0, p2}, Lch/android/api/ui/ChLinearLayout;-><init>(Landroid/content/Context;)V

    .line 118
    iput v0, p0, Lch/kingdoms/android/ui/NewInvenUi$FilterTabView;->selectedBtnId:I

    .line 123
    invoke-super {p0, v0}, Lch/android/api/ui/ChLinearLayout;->setOrientation(I)V

    .line 125
    invoke-static {p1}, Lch/kingdoms/android/ui/NewInvenUi;->access$0(Lch/kingdoms/android/ui/NewInvenUi;)Landroid/app/Activity;

    move-result-object v0

    const/16 v1, 0x3e8

    const v2, 0x7f0200ac

    const v3, 0x7f0200ab

    invoke-static {v0, v1, v2, v3, p1}, Lch/android/api/ui/ChViewGen;->createOnOffButton(Landroid/app/Activity;IIILandroid/view/View$OnClickListener;)Lch/android/api/ui/ChOnOffButton;

    move-result-object v0

    iput-object v0, p0, Lch/kingdoms/android/ui/NewInvenUi$FilterTabView;->ALL_BTN:Lch/android/api/ui/ChOnOffButton;

    .line 126
    invoke-static {p1}, Lch/kingdoms/android/ui/NewInvenUi;->access$0(Lch/kingdoms/android/ui/NewInvenUi;)Landroid/app/Activity;

    move-result-object v0

    const/16 v1, 0x3e9

    const v2, 0x7f0200ae

    const v3, 0x7f0200ad

    invoke-static {v0, v1, v2, v3, p1}, Lch/android/api/ui/ChViewGen;->createOnOffButton(Landroid/app/Activity;IIILandroid/view/View$OnClickListener;)Lch/android/api/ui/ChOnOffButton;

    move-result-object v0

    iput-object v0, p0, Lch/kingdoms/android/ui/NewInvenUi$FilterTabView;->EQUIP_BTN:Lch/android/api/ui/ChOnOffButton;

    .line 127
    invoke-static {p1}, Lch/kingdoms/android/ui/NewInvenUi;->access$0(Lch/kingdoms/android/ui/NewInvenUi;)Landroid/app/Activity;

    move-result-object v0

    const/16 v1, 0x3ea

    const v2, 0x7f0200b4

    const v3, 0x7f0200b3

    invoke-static {v0, v1, v2, v3, p1}, Lch/android/api/ui/ChViewGen;->createOnOffButton(Landroid/app/Activity;IIILandroid/view/View$OnClickListener;)Lch/android/api/ui/ChOnOffButton;

    move-result-object v0

    iput-object v0, p0, Lch/kingdoms/android/ui/NewInvenUi$FilterTabView;->RING_BTN:Lch/android/api/ui/ChOnOffButton;

    .line 128
    invoke-static {p1}, Lch/kingdoms/android/ui/NewInvenUi;->access$0(Lch/kingdoms/android/ui/NewInvenUi;)Landroid/app/Activity;

    move-result-object v0

    const/16 v1, 0x3eb

    const v2, 0x7f0200b0

    const v3, 0x7f0200af

    invoke-static {v0, v1, v2, v3, p1}, Lch/android/api/ui/ChViewGen;->createOnOffButton(Landroid/app/Activity;IIILandroid/view/View$OnClickListener;)Lch/android/api/ui/ChOnOffButton;

    move-result-object v0

    iput-object v0, p0, Lch/kingdoms/android/ui/NewInvenUi$FilterTabView;->ITEM_BTN:Lch/android/api/ui/ChOnOffButton;

    .line 129
    invoke-static {p1}, Lch/kingdoms/android/ui/NewInvenUi;->access$0(Lch/kingdoms/android/ui/NewInvenUi;)Landroid/app/Activity;

    move-result-object v0

    const/16 v1, 0x3ec

    const v2, 0x7f0200b2

    const v3, 0x7f0200b1

    invoke-static {v0, v1, v2, v3, p1}, Lch/android/api/ui/ChViewGen;->createOnOffButton(Landroid/app/Activity;IIILandroid/view/View$OnClickListener;)Lch/android/api/ui/ChOnOffButton;

    move-result-object v0

    iput-object v0, p0, Lch/kingdoms/android/ui/NewInvenUi$FilterTabView;->QUEST_BTN:Lch/android/api/ui/ChOnOffButton;

    .line 131
    iget-object v0, p0, Lch/kingdoms/android/ui/NewInvenUi$FilterTabView;->ALL_BTN:Lch/android/api/ui/ChOnOffButton;

    invoke-direct {p0, v0}, Lch/kingdoms/android/ui/NewInvenUi$FilterTabView;->add(Landroid/view/View;)V

    .line 132
    iget-object v0, p0, Lch/kingdoms/android/ui/NewInvenUi$FilterTabView;->EQUIP_BTN:Lch/android/api/ui/ChOnOffButton;

    invoke-direct {p0, v0}, Lch/kingdoms/android/ui/NewInvenUi$FilterTabView;->add(Landroid/view/View;)V

    .line 133
    iget-object v0, p0, Lch/kingdoms/android/ui/NewInvenUi$FilterTabView;->RING_BTN:Lch/android/api/ui/ChOnOffButton;

    invoke-direct {p0, v0}, Lch/kingdoms/android/ui/NewInvenUi$FilterTabView;->add(Landroid/view/View;)V

    .line 134
    iget-object v0, p0, Lch/kingdoms/android/ui/NewInvenUi$FilterTabView;->ITEM_BTN:Lch/android/api/ui/ChOnOffButton;

    invoke-direct {p0, v0}, Lch/kingdoms/android/ui/NewInvenUi$FilterTabView;->add(Landroid/view/View;)V

    .line 135
    iget-object v0, p0, Lch/kingdoms/android/ui/NewInvenUi$FilterTabView;->QUEST_BTN:Lch/android/api/ui/ChOnOffButton;

    invoke-direct {p0, v0}, Lch/kingdoms/android/ui/NewInvenUi$FilterTabView;->add(Landroid/view/View;)V

    .line 136
    return-void
.end method

.method private add(Landroid/view/View;)V
    .locals 3
    .param p1, "_view"    # Landroid/view/View;

    .prologue
    .line 139
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 140
    .local v0, "lp":Landroid/widget/LinearLayout$LayoutParams;
    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 141
    invoke-super {p0, p1, v0}, Lch/android/api/ui/ChLinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 142
    return-void
.end method


# virtual methods
.method public selectBtn(I)V
    .locals 6
    .param p1, "_id"    # I

    .prologue
    const/4 v2, 0x0

    .line 145
    const/4 v3, 0x5

    new-array v1, v3, [Lch/android/api/ui/ChOnOffButton;

    iget-object v3, p0, Lch/kingdoms/android/ui/NewInvenUi$FilterTabView;->ALL_BTN:Lch/android/api/ui/ChOnOffButton;

    aput-object v3, v1, v2

    const/4 v3, 0x1

    iget-object v4, p0, Lch/kingdoms/android/ui/NewInvenUi$FilterTabView;->EQUIP_BTN:Lch/android/api/ui/ChOnOffButton;

    aput-object v4, v1, v3

    const/4 v3, 0x2

    iget-object v4, p0, Lch/kingdoms/android/ui/NewInvenUi$FilterTabView;->RING_BTN:Lch/android/api/ui/ChOnOffButton;

    aput-object v4, v1, v3

    const/4 v3, 0x3

    iget-object v4, p0, Lch/kingdoms/android/ui/NewInvenUi$FilterTabView;->ITEM_BTN:Lch/android/api/ui/ChOnOffButton;

    aput-object v4, v1, v3

    const/4 v3, 0x4

    iget-object v4, p0, Lch/kingdoms/android/ui/NewInvenUi$FilterTabView;->QUEST_BTN:Lch/android/api/ui/ChOnOffButton;

    aput-object v4, v1, v3

    .line 146
    .local v1, "btns":[Lch/android/api/ui/ChOnOffButton;
    array-length v3, v1

    :goto_0
    if-lt v2, v3, :cond_0

    .line 154
    iput p1, p0, Lch/kingdoms/android/ui/NewInvenUi$FilterTabView;->selectedBtnId:I

    .line 155
    return-void

    .line 146
    :cond_0
    aget-object v0, v1, v2

    .line 147
    .local v0, "btn":Lch/android/api/ui/ChOnOffButton;
    invoke-virtual {v0}, Lch/android/api/ui/ChOnOffButton;->getId()I

    move-result v4

    if-ne v4, p1, :cond_2

    .line 148
    invoke-virtual {v0}, Lch/android/api/ui/ChOnOffButton;->setToSelect()V

    .line 146
    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 150
    :cond_2
    iget v4, p0, Lch/kingdoms/android/ui/NewInvenUi$FilterTabView;->selectedBtnId:I

    invoke-virtual {v0}, Lch/android/api/ui/ChOnOffButton;->getId()I

    move-result v5

    if-ne v4, v5, :cond_1

    .line 151
    invoke-virtual {v0}, Lch/android/api/ui/ChOnOffButton;->setToUnSelect()V

    goto :goto_1
.end method
