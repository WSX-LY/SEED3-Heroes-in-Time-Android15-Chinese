.class Lch/kingdoms/android/ui/NewInvenUi$InfoView;
.super Lch/android/api/ui/ChRelativeLayout;
.source "NewInvenUi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lch/kingdoms/android/ui/NewInvenUi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "InfoView"
.end annotation


# instance fields
.field private final EMPTY:Lch/android/api/ui/ChImageTextView;

.field private final MONEY:Lch/android/api/ui/ChImageTextView;

.field private final TOTAL:Lch/android/api/ui/ChImageTextView;

.field final synthetic this$0:Lch/kingdoms/android/ui/NewInvenUi;


# direct methods
.method public constructor <init>(Lch/kingdoms/android/ui/NewInvenUi;Landroid/content/Context;)V
    .locals 11
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    const/16 v10, 0x65

    const/4 v9, -0x2

    .line 167
    iput-object p1, p0, Lch/kingdoms/android/ui/NewInvenUi$InfoView;->this$0:Lch/kingdoms/android/ui/NewInvenUi;

    .line 168
    invoke-direct {p0, p2}, Lch/android/api/ui/ChRelativeLayout;-><init>(Landroid/content/Context;)V

    .line 170
    const/16 v2, 0x65

    .line 171
    .local v2, "ID_TOTAL":I
    const/16 v0, 0x66

    .line 172
    .local v0, "ID_EMPTY":I
    const/16 v1, 0x67

    .line 174
    .local v1, "ID_MONEY":I
    invoke-static {p1}, Lch/kingdoms/android/ui/NewInvenUi;->access$0(Lch/kingdoms/android/ui/NewInvenUi;)Landroid/app/Activity;

    move-result-object v6

    const v7, 0x7f0202cf

    const-string v8, "XX"

    invoke-static {v6, v7, v8}, Lch/android/api/ui/ChViewGen;->createImageTextView(Landroid/app/Activity;ILjava/lang/String;)Lch/android/api/ui/ChImageTextView;

    move-result-object v6

    iput-object v6, p0, Lch/kingdoms/android/ui/NewInvenUi$InfoView;->TOTAL:Lch/android/api/ui/ChImageTextView;

    .line 175
    iget-object v6, p0, Lch/kingdoms/android/ui/NewInvenUi$InfoView;->TOTAL:Lch/android/api/ui/ChImageTextView;

    invoke-virtual {v6, v10}, Lch/android/api/ui/ChImageTextView;->setId(I)V

    .line 176
    invoke-static {p1}, Lch/kingdoms/android/ui/NewInvenUi;->access$0(Lch/kingdoms/android/ui/NewInvenUi;)Landroid/app/Activity;

    move-result-object v6

    const v7, 0x7f02009e

    const-string v8, "YY"

    invoke-static {v6, v7, v8}, Lch/android/api/ui/ChViewGen;->createImageTextView(Landroid/app/Activity;ILjava/lang/String;)Lch/android/api/ui/ChImageTextView;

    move-result-object v6

    iput-object v6, p0, Lch/kingdoms/android/ui/NewInvenUi$InfoView;->EMPTY:Lch/android/api/ui/ChImageTextView;

    .line 177
    iget-object v6, p0, Lch/kingdoms/android/ui/NewInvenUi$InfoView;->EMPTY:Lch/android/api/ui/ChImageTextView;

    const/16 v7, 0x66

    invoke-virtual {v6, v7}, Lch/android/api/ui/ChImageTextView;->setId(I)V

    .line 178
    invoke-static {p1}, Lch/kingdoms/android/ui/NewInvenUi;->access$0(Lch/kingdoms/android/ui/NewInvenUi;)Landroid/app/Activity;

    move-result-object v6

    const v7, 0x7f02020b

    const-string v8, "MONEY"

    invoke-static {v6, v7, v8}, Lch/android/api/ui/ChViewGen;->createImageTextView(Landroid/app/Activity;ILjava/lang/String;)Lch/android/api/ui/ChImageTextView;

    move-result-object v6

    iput-object v6, p0, Lch/kingdoms/android/ui/NewInvenUi$InfoView;->MONEY:Lch/android/api/ui/ChImageTextView;

    .line 179
    iget-object v6, p0, Lch/kingdoms/android/ui/NewInvenUi$InfoView;->MONEY:Lch/android/api/ui/ChImageTextView;

    const/16 v7, 0x67

    invoke-virtual {v6, v7}, Lch/android/api/ui/ChImageTextView;->setId(I)V

    .line 181
    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v3, v9, v9}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 182
    .local v3, "lp1":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v6, 0x9

    invoke-virtual {v3, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 183
    invoke-static {p1}, Lch/kingdoms/android/ui/NewInvenUi;->access$1(Lch/kingdoms/android/ui/NewInvenUi;)Lch/android/api/util/DisplayInfo;

    move-result-object v6

    iget v6, v6, Lch/android/api/util/DisplayInfo;->density:F

    const/high16 v7, 0x41200000    # 10.0f

    mul-float/2addr v6, v7

    float-to-int v6, v6

    iput v6, v3, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 184
    new-instance v4, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v4, v9, v9}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 185
    .local v4, "lp2":Landroid/widget/RelativeLayout$LayoutParams;
    const/4 v6, 0x1

    invoke-virtual {v4, v6, v10}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 186
    invoke-static {p1}, Lch/kingdoms/android/ui/NewInvenUi;->access$1(Lch/kingdoms/android/ui/NewInvenUi;)Lch/android/api/util/DisplayInfo;

    move-result-object v6

    iget v6, v6, Lch/android/api/util/DisplayInfo;->density:F

    const/high16 v7, 0x40400000    # 3.0f

    mul-float/2addr v6, v7

    float-to-int v6, v6

    iput v6, v4, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 187
    new-instance v5, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v5, v9, v9}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 188
    .local v5, "lp3":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v6, 0xb

    invoke-virtual {v5, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 189
    invoke-static {p1}, Lch/kingdoms/android/ui/NewInvenUi;->access$1(Lch/kingdoms/android/ui/NewInvenUi;)Lch/android/api/util/DisplayInfo;

    move-result-object v6

    iget v6, v6, Lch/android/api/util/DisplayInfo;->density:F

    const/high16 v7, 0x41700000    # 15.0f

    mul-float/2addr v6, v7

    float-to-int v6, v6

    iput v6, v5, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    .line 191
    iget-object v6, p0, Lch/kingdoms/android/ui/NewInvenUi$InfoView;->TOTAL:Lch/android/api/ui/ChImageTextView;

    invoke-super {p0, v6, v3}, Lch/android/api/ui/ChRelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 192
    iget-object v6, p0, Lch/kingdoms/android/ui/NewInvenUi$InfoView;->EMPTY:Lch/android/api/ui/ChImageTextView;

    invoke-super {p0, v6, v4}, Lch/android/api/ui/ChRelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 193
    iget-object v6, p0, Lch/kingdoms/android/ui/NewInvenUi$InfoView;->MONEY:Lch/android/api/ui/ChImageTextView;

    invoke-super {p0, v6, v5}, Lch/android/api/ui/ChRelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 194
    return-void
.end method


# virtual methods
.method public update()V
    .locals 2

    .prologue
    .line 197
    iget-object v0, p0, Lch/kingdoms/android/ui/NewInvenUi$InfoView;->TOTAL:Lch/android/api/ui/ChImageTextView;

    invoke-static {}, Lch/kingdoms/ndk/NdkUiEventManager;->getInvenCount()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lch/android/api/ui/ChImageTextView;->setText(Ljava/lang/String;)V

    .line 198
    iget-object v0, p0, Lch/kingdoms/android/ui/NewInvenUi$InfoView;->EMPTY:Lch/android/api/ui/ChImageTextView;

    invoke-static {}, Lch/kingdoms/ndk/NdkUiEventManager;->getEmptyInvenCount()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lch/android/api/ui/ChImageTextView;->setText(Ljava/lang/String;)V

    .line 199
    iget-object v0, p0, Lch/kingdoms/android/ui/NewInvenUi$InfoView;->MONEY:Lch/android/api/ui/ChImageTextView;

    invoke-static {}, Lch/kingdoms/ndk/NdkUiEventManager;->callNativeGetHeroInfo()Lch/kingdoms/ndk/data/HeroStatus;

    move-result-object v1

    invoke-virtual {v1}, Lch/kingdoms/ndk/data/HeroStatus;->getMoney()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lch/android/api/ui/ChImageTextView;->setText(Ljava/lang/String;)V

    .line 200
    return-void
.end method
