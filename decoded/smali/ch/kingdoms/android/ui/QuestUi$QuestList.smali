.class Lch/kingdoms/android/ui/QuestUi$QuestList;
.super Landroid/widget/ScrollView;
.source "QuestUi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lch/kingdoms/android/ui/QuestUi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "QuestList"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lch/kingdoms/android/ui/QuestUi$QuestList$QuestElement;
    }
.end annotation


# instance fields
.field private final LAYOUT:Lch/android/api/ui/ChLinearLayout;

.field private m_elements:[Lch/kingdoms/android/ui/QuestUi$QuestList$QuestElement;

.field final synthetic this$0:Lch/kingdoms/android/ui/QuestUi;


# direct methods
.method public constructor <init>(Lch/kingdoms/android/ui/QuestUi;Landroid/content/Context;)V
    .locals 12
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    const/4 v11, -0x2

    const/high16 v10, 0x40a00000    # 5.0f

    const/high16 v9, 0x40800000    # 4.0f

    .line 282
    iput-object p1, p0, Lch/kingdoms/android/ui/QuestUi$QuestList;->this$0:Lch/kingdoms/android/ui/QuestUi;

    .line 283
    invoke-direct {p0, p2}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    .line 285
    new-instance v0, Lch/android/api/ui/ChLinearLayout;

    invoke-direct {v0, p2}, Lch/android/api/ui/ChLinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lch/kingdoms/android/ui/QuestUi$QuestList;->LAYOUT:Lch/android/api/ui/ChLinearLayout;

    .line 286
    iget-object v0, p0, Lch/kingdoms/android/ui/QuestUi$QuestList;->LAYOUT:Lch/android/api/ui/ChLinearLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lch/android/api/ui/ChLinearLayout;->setOrientation(I)V

    .line 289
    const/4 v0, 0x7

    new-array v0, v0, [Lch/kingdoms/android/ui/QuestUi$QuestList$QuestElement;

    iput-object v0, p0, Lch/kingdoms/android/ui/QuestUi$QuestList;->m_elements:[Lch/kingdoms/android/ui/QuestUi$QuestList$QuestElement;

    .line 290
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    iget-object v0, p0, Lch/kingdoms/android/ui/QuestUi$QuestList;->m_elements:[Lch/kingdoms/android/ui/QuestUi$QuestList$QuestElement;

    array-length v0, v0

    if-lt v6, v0, :cond_0

    .line 304
    invoke-virtual {p0}, Lch/kingdoms/android/ui/QuestUi$QuestList;->update()V

    .line 305
    iget-object v0, p0, Lch/kingdoms/android/ui/QuestUi$QuestList;->LAYOUT:Lch/android/api/ui/ChLinearLayout;

    invoke-virtual {p0, v0}, Lch/kingdoms/android/ui/QuestUi$QuestList;->addView(Landroid/view/View;)V

    .line 306
    return-void

    .line 291
    :cond_0
    if-nez v6, :cond_1

    .line 292
    iget-object v8, p0, Lch/kingdoms/android/ui/QuestUi$QuestList;->m_elements:[Lch/kingdoms/android/ui/QuestUi$QuestList$QuestElement;

    new-instance v0, Lch/kingdoms/android/ui/QuestUi$QuestList$QuestElement;

    const v3, 0x7f0201fe

    const v4, 0x7f0201ff

    const-string v5, ""

    move-object v1, p0

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lch/kingdoms/android/ui/QuestUi$QuestList$QuestElement;-><init>(Lch/kingdoms/android/ui/QuestUi$QuestList;Landroid/content/Context;IILjava/lang/String;)V

    aput-object v0, v8, v6

    .line 296
    :goto_1
    iget-object v0, p0, Lch/kingdoms/android/ui/QuestUi$QuestList;->m_elements:[Lch/kingdoms/android/ui/QuestUi$QuestList$QuestElement;

    aget-object v0, v0, v6

    invoke-virtual {v0, v6}, Lch/kingdoms/android/ui/QuestUi$QuestList$QuestElement;->setId(I)V

    .line 297
    iget-object v0, p0, Lch/kingdoms/android/ui/QuestUi$QuestList;->m_elements:[Lch/kingdoms/android/ui/QuestUi$QuestList$QuestElement;

    aget-object v0, v0, v6

    invoke-virtual {v0, p1}, Lch/kingdoms/android/ui/QuestUi$QuestList$QuestElement;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 298
    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v7, v11, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 300
    .local v7, "lp1":Landroid/widget/LinearLayout$LayoutParams;
    invoke-static {p1}, Lch/kingdoms/android/ui/QuestUi;->access$0(Lch/kingdoms/android/ui/QuestUi;)Lch/android/api/util/DisplayInfo;

    move-result-object v0

    iget v0, v0, Lch/android/api/util/DisplayInfo;->density:F

    mul-float/2addr v0, v10

    float-to-int v0, v0

    invoke-static {p1}, Lch/kingdoms/android/ui/QuestUi;->access$0(Lch/kingdoms/android/ui/QuestUi;)Lch/android/api/util/DisplayInfo;

    move-result-object v1

    iget v1, v1, Lch/android/api/util/DisplayInfo;->density:F

    mul-float/2addr v1, v9

    float-to-int v1, v1

    invoke-static {p1}, Lch/kingdoms/android/ui/QuestUi;->access$0(Lch/kingdoms/android/ui/QuestUi;)Lch/android/api/util/DisplayInfo;

    move-result-object v2

    iget v2, v2, Lch/android/api/util/DisplayInfo;->density:F

    mul-float/2addr v2, v10

    float-to-int v2, v2

    invoke-static {p1}, Lch/kingdoms/android/ui/QuestUi;->access$0(Lch/kingdoms/android/ui/QuestUi;)Lch/android/api/util/DisplayInfo;

    move-result-object v3

    iget v3, v3, Lch/android/api/util/DisplayInfo;->density:F

    mul-float/2addr v3, v9

    float-to-int v3, v3

    invoke-virtual {v7, v0, v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 301
    iget-object v0, p0, Lch/kingdoms/android/ui/QuestUi$QuestList;->LAYOUT:Lch/android/api/ui/ChLinearLayout;

    iget-object v1, p0, Lch/kingdoms/android/ui/QuestUi$QuestList;->m_elements:[Lch/kingdoms/android/ui/QuestUi$QuestList$QuestElement;

    aget-object v1, v1, v6

    invoke-virtual {v0, v1, v7}, Lch/android/api/ui/ChLinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 290
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 294
    .end local v7    # "lp1":Landroid/widget/LinearLayout$LayoutParams;
    :cond_1
    iget-object v8, p0, Lch/kingdoms/android/ui/QuestUi$QuestList;->m_elements:[Lch/kingdoms/android/ui/QuestUi$QuestList$QuestElement;

    new-instance v0, Lch/kingdoms/android/ui/QuestUi$QuestList$QuestElement;

    const v3, 0x7f0202be

    const v4, 0x7f0202bf

    const-string v5, ""

    move-object v1, p0

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lch/kingdoms/android/ui/QuestUi$QuestList$QuestElement;-><init>(Lch/kingdoms/android/ui/QuestUi$QuestList;Landroid/content/Context;IILjava/lang/String;)V

    aput-object v0, v8, v6

    goto :goto_1
.end method

.method static synthetic access$0(Lch/kingdoms/android/ui/QuestUi$QuestList;)Lch/kingdoms/android/ui/QuestUi;
    .locals 1

    .prologue
    .line 278
    iget-object v0, p0, Lch/kingdoms/android/ui/QuestUi$QuestList;->this$0:Lch/kingdoms/android/ui/QuestUi;

    return-object v0
.end method


# virtual methods
.method public select(I)V
    .locals 2
    .param p1, "_index"    # I

    .prologue
    .line 329
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lch/kingdoms/android/ui/QuestUi$QuestList;->m_elements:[Lch/kingdoms/android/ui/QuestUi$QuestList$QuestElement;

    array-length v1, v1

    if-lt v0, v1, :cond_0

    .line 338
    return-void

    .line 330
    :cond_0
    iget-object v1, p0, Lch/kingdoms/android/ui/QuestUi$QuestList;->m_elements:[Lch/kingdoms/android/ui/QuestUi$QuestList$QuestElement;

    aget-object v1, v1, v0

    if-eqz v1, :cond_1

    .line 331
    if-ne p1, v0, :cond_2

    .line 332
    iget-object v1, p0, Lch/kingdoms/android/ui/QuestUi$QuestList;->m_elements:[Lch/kingdoms/android/ui/QuestUi$QuestList$QuestElement;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lch/kingdoms/android/ui/QuestUi$QuestList$QuestElement;->select()V

    .line 329
    :cond_1
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 334
    :cond_2
    iget-object v1, p0, Lch/kingdoms/android/ui/QuestUi$QuestList;->m_elements:[Lch/kingdoms/android/ui/QuestUi$QuestList$QuestElement;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lch/kingdoms/android/ui/QuestUi$QuestList$QuestElement;->unselect()V

    goto :goto_1
.end method

.method public update()V
    .locals 6

    .prologue
    const/4 v5, 0x4

    const/4 v2, 0x0

    .line 309
    iget-object v3, p0, Lch/kingdoms/android/ui/QuestUi$QuestList;->this$0:Lch/kingdoms/android/ui/QuestUi;

    invoke-static {v3}, Lch/kingdoms/android/ui/QuestUi;->access$4(Lch/kingdoms/android/ui/QuestUi;)[Lch/kingdoms/ndk/data/QuestDatas$Quest;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 310
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v3, p0, Lch/kingdoms/android/ui/QuestUi$QuestList;->m_elements:[Lch/kingdoms/android/ui/QuestUi$QuestList$QuestElement;

    array-length v3, v3

    if-lt v0, v3, :cond_1

    .line 326
    .end local v0    # "i":I
    :cond_0
    return-void

    .line 311
    .restart local v0    # "i":I
    :cond_1
    iget-object v3, p0, Lch/kingdoms/android/ui/QuestUi$QuestList;->this$0:Lch/kingdoms/android/ui/QuestUi;

    invoke-static {v3}, Lch/kingdoms/android/ui/QuestUi;->access$4(Lch/kingdoms/android/ui/QuestUi;)[Lch/kingdoms/ndk/data/QuestDatas$Quest;

    move-result-object v3

    array-length v3, v3

    if-ge v0, v3, :cond_2

    iget-object v3, p0, Lch/kingdoms/android/ui/QuestUi$QuestList;->this$0:Lch/kingdoms/android/ui/QuestUi;

    invoke-static {v3}, Lch/kingdoms/android/ui/QuestUi;->access$4(Lch/kingdoms/android/ui/QuestUi;)[Lch/kingdoms/ndk/data/QuestDatas$Quest;

    move-result-object v3

    aget-object v3, v3, v0

    if-eqz v3, :cond_2

    iget-object v3, p0, Lch/kingdoms/android/ui/QuestUi$QuestList;->this$0:Lch/kingdoms/android/ui/QuestUi;

    invoke-static {v3}, Lch/kingdoms/android/ui/QuestUi;->access$4(Lch/kingdoms/android/ui/QuestUi;)[Lch/kingdoms/ndk/data/QuestDatas$Quest;

    move-result-object v3

    aget-object v3, v3, v0

    invoke-virtual {v3}, Lch/kingdoms/ndk/data/QuestDatas$Quest;->getHiddenType()B

    move-result v3

    if-nez v3, :cond_2

    .line 312
    iget-object v3, p0, Lch/kingdoms/android/ui/QuestUi$QuestList;->m_elements:[Lch/kingdoms/android/ui/QuestUi$QuestList$QuestElement;

    aget-object v3, v3, v0

    iget-object v4, p0, Lch/kingdoms/android/ui/QuestUi$QuestList;->this$0:Lch/kingdoms/android/ui/QuestUi;

    invoke-static {v4}, Lch/kingdoms/android/ui/QuestUi;->access$4(Lch/kingdoms/android/ui/QuestUi;)[Lch/kingdoms/ndk/data/QuestDatas$Quest;

    move-result-object v4

    aget-object v4, v4, v0

    invoke-virtual {v4}, Lch/kingdoms/ndk/data/QuestDatas$Quest;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lch/kingdoms/android/ui/QuestUi$QuestList$QuestElement;->update(Ljava/lang/String;)V

    .line 313
    iget-object v3, p0, Lch/kingdoms/android/ui/QuestUi$QuestList;->m_elements:[Lch/kingdoms/android/ui/QuestUi$QuestList$QuestElement;

    aget-object v3, v3, v0

    invoke-virtual {v3, v2}, Lch/kingdoms/android/ui/QuestUi$QuestList$QuestElement;->setVisibility(I)V

    .line 310
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 315
    :cond_2
    iget-object v3, p0, Lch/kingdoms/android/ui/QuestUi$QuestList;->m_elements:[Lch/kingdoms/android/ui/QuestUi$QuestList$QuestElement;

    aget-object v3, v3, v0

    invoke-virtual {v3, v5}, Lch/kingdoms/android/ui/QuestUi$QuestList$QuestElement;->setVisibility(I)V

    goto :goto_1

    .line 322
    .end local v0    # "i":I
    :cond_3
    iget-object v3, p0, Lch/kingdoms/android/ui/QuestUi$QuestList;->m_elements:[Lch/kingdoms/android/ui/QuestUi$QuestList$QuestElement;

    array-length v4, v3

    :goto_2
    if-ge v2, v4, :cond_0

    aget-object v1, v3, v2

    .line 323
    .local v1, "view":Landroid/view/View;
    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 322
    add-int/lit8 v2, v2, 0x1

    goto :goto_2
.end method
