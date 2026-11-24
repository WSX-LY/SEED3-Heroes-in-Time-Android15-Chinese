.class Lch/kingdoms/android/ui/network/AuctionSearchSettingView$CategoryView;
.super Lch/android/api/ui/ChLinearLayout;
.source "AuctionSearchSettingView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lch/kingdoms/android/ui/network/AuctionSearchSettingView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CategoryView"
.end annotation


# instance fields
.field private categories:[Ljava/lang/String;

.field private final categoryView:Lch/android/api/ui/ChTextView;

.field private index:I

.field private ocvcl:Lch/kingdoms/android/ui/network/AuctionSearchSettingView$OnCategoryViewClickListener;

.field final synthetic this$0:Lch/kingdoms/android/ui/network/AuctionSearchSettingView;

.field private final titleView:Lch/android/api/ui/ChTextView;


# direct methods
.method public constructor <init>(Lch/kingdoms/android/ui/network/AuctionSearchSettingView;Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 4
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "title"    # Ljava/lang/String;
    .param p4, "categories"    # [Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    const/4 v2, -0x1

    .line 168
    iput-object p1, p0, Lch/kingdoms/android/ui/network/AuctionSearchSettingView$CategoryView;->this$0:Lch/kingdoms/android/ui/network/AuctionSearchSettingView;

    .line 169
    invoke-direct {p0, p2}, Lch/android/api/ui/ChLinearLayout;-><init>(Landroid/content/Context;)V

    .line 172
    new-instance v0, Lch/android/api/ui/ChTextView;

    invoke-direct {v0, p2}, Lch/android/api/ui/ChTextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lch/kingdoms/android/ui/network/AuctionSearchSettingView$CategoryView;->titleView:Lch/android/api/ui/ChTextView;

    .line 173
    iget-object v0, p0, Lch/kingdoms/android/ui/network/AuctionSearchSettingView$CategoryView;->titleView:Lch/android/api/ui/ChTextView;

    invoke-virtual {v0, p3}, Lch/android/api/ui/ChTextView;->setText(Ljava/lang/CharSequence;)V

    .line 174
    iget-object v0, p0, Lch/kingdoms/android/ui/network/AuctionSearchSettingView$CategoryView;->titleView:Lch/android/api/ui/ChTextView;

    invoke-static {}, Lch/android/api/util/TextPaints;->getNormalSize()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v3, v1}, Lch/android/api/ui/ChTextView;->setTextSize(IF)V

    .line 175
    iget-object v0, p0, Lch/kingdoms/android/ui/network/AuctionSearchSettingView$CategoryView;->titleView:Lch/android/api/ui/ChTextView;

    invoke-virtual {v0, v2}, Lch/android/api/ui/ChTextView;->setTextColor(I)V

    .line 177
    new-instance v0, Lch/android/api/ui/ChTextView;

    invoke-direct {v0, p2}, Lch/android/api/ui/ChTextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lch/kingdoms/android/ui/network/AuctionSearchSettingView$CategoryView;->categoryView:Lch/android/api/ui/ChTextView;

    .line 178
    iput-object p4, p0, Lch/kingdoms/android/ui/network/AuctionSearchSettingView$CategoryView;->categories:[Ljava/lang/String;

    .line 179
    if-eqz p4, :cond_0

    .line 180
    iget-object v0, p0, Lch/kingdoms/android/ui/network/AuctionSearchSettingView$CategoryView;->categoryView:Lch/android/api/ui/ChTextView;

    const/4 v1, 0x0

    aget-object v1, p4, v1

    invoke-virtual {v0, v1}, Lch/android/api/ui/ChTextView;->setText(Ljava/lang/CharSequence;)V

    .line 182
    :cond_0
    iget-object v0, p0, Lch/kingdoms/android/ui/network/AuctionSearchSettingView$CategoryView;->categoryView:Lch/android/api/ui/ChTextView;

    invoke-static {}, Lch/android/api/util/TextPaints;->getNormalSize()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v3, v1}, Lch/android/api/ui/ChTextView;->setTextSize(IF)V

    .line 183
    iget-object v0, p0, Lch/kingdoms/android/ui/network/AuctionSearchSettingView$CategoryView;->categoryView:Lch/android/api/ui/ChTextView;

    invoke-virtual {v0, v2}, Lch/android/api/ui/ChTextView;->setTextColor(I)V

    .line 197
    new-instance v0, Lch/kingdoms/android/ui/network/AuctionSearchSettingView$CategoryView$1;

    invoke-direct {v0, p0}, Lch/kingdoms/android/ui/network/AuctionSearchSettingView$CategoryView$1;-><init>(Lch/kingdoms/android/ui/network/AuctionSearchSettingView$CategoryView;)V

    invoke-virtual {p0, v0}, Lch/kingdoms/android/ui/network/AuctionSearchSettingView$CategoryView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 212
    iget-object v0, p0, Lch/kingdoms/android/ui/network/AuctionSearchSettingView$CategoryView;->titleView:Lch/android/api/ui/ChTextView;

    invoke-virtual {p0, v0}, Lch/kingdoms/android/ui/network/AuctionSearchSettingView$CategoryView;->addView(Landroid/view/View;)V

    .line 213
    iget-object v0, p0, Lch/kingdoms/android/ui/network/AuctionSearchSettingView$CategoryView;->categoryView:Lch/android/api/ui/ChTextView;

    invoke-virtual {p0, v0}, Lch/kingdoms/android/ui/network/AuctionSearchSettingView$CategoryView;->addView(Landroid/view/View;)V

    .line 214
    return-void
.end method

.method static synthetic access$0(Lch/kingdoms/android/ui/network/AuctionSearchSettingView$CategoryView;)[Ljava/lang/String;
    .locals 1

    .prologue
    .line 163
    iget-object v0, p0, Lch/kingdoms/android/ui/network/AuctionSearchSettingView$CategoryView;->categories:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1(Lch/kingdoms/android/ui/network/AuctionSearchSettingView$CategoryView;)I
    .locals 1

    .prologue
    .line 164
    iget v0, p0, Lch/kingdoms/android/ui/network/AuctionSearchSettingView$CategoryView;->index:I

    return v0
.end method

.method static synthetic access$2(Lch/kingdoms/android/ui/network/AuctionSearchSettingView$CategoryView;I)V
    .locals 0

    .prologue
    .line 164
    iput p1, p0, Lch/kingdoms/android/ui/network/AuctionSearchSettingView$CategoryView;->index:I

    return-void
.end method

.method static synthetic access$3(Lch/kingdoms/android/ui/network/AuctionSearchSettingView$CategoryView;)Lch/android/api/ui/ChTextView;
    .locals 1

    .prologue
    .line 161
    iget-object v0, p0, Lch/kingdoms/android/ui/network/AuctionSearchSettingView$CategoryView;->categoryView:Lch/android/api/ui/ChTextView;

    return-object v0
.end method

.method static synthetic access$4(Lch/kingdoms/android/ui/network/AuctionSearchSettingView$CategoryView;)Lch/kingdoms/android/ui/network/AuctionSearchSettingView$OnCategoryViewClickListener;
    .locals 1

    .prologue
    .line 166
    iget-object v0, p0, Lch/kingdoms/android/ui/network/AuctionSearchSettingView$CategoryView;->ocvcl:Lch/kingdoms/android/ui/network/AuctionSearchSettingView$OnCategoryViewClickListener;

    return-object v0
.end method


# virtual methods
.method public getSelectedCategoryIndex()I
    .locals 1

    .prologue
    .line 228
    iget v0, p0, Lch/kingdoms/android/ui/network/AuctionSearchSettingView$CategoryView;->index:I

    return v0
.end method

.method public setCategories([Ljava/lang/String;)V
    .locals 2
    .param p1, "categories"    # [Ljava/lang/String;

    .prologue
    .line 217
    iput-object p1, p0, Lch/kingdoms/android/ui/network/AuctionSearchSettingView$CategoryView;->categories:[Ljava/lang/String;

    .line 218
    const/4 v0, 0x0

    iput v0, p0, Lch/kingdoms/android/ui/network/AuctionSearchSettingView$CategoryView;->index:I

    .line 219
    if-eqz p1, :cond_0

    .line 220
    iget-object v0, p0, Lch/kingdoms/android/ui/network/AuctionSearchSettingView$CategoryView;->categoryView:Lch/android/api/ui/ChTextView;

    iget v1, p0, Lch/kingdoms/android/ui/network/AuctionSearchSettingView$CategoryView;->index:I

    aget-object v1, p1, v1

    invoke-virtual {v0, v1}, Lch/android/api/ui/ChTextView;->setText(Ljava/lang/CharSequence;)V

    .line 224
    :goto_0
    iget-object v0, p0, Lch/kingdoms/android/ui/network/AuctionSearchSettingView$CategoryView;->categoryView:Lch/android/api/ui/ChTextView;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lch/android/api/ui/ChTextView;->setTextColor(I)V

    .line 225
    return-void

    .line 222
    :cond_0
    iget-object v0, p0, Lch/kingdoms/android/ui/network/AuctionSearchSettingView$CategoryView;->categoryView:Lch/android/api/ui/ChTextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lch/android/api/ui/ChTextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public setContentColor(I)V
    .locals 1
    .param p1, "color"    # I

    .prologue
    .line 236
    iget-object v0, p0, Lch/kingdoms/android/ui/network/AuctionSearchSettingView$CategoryView;->categoryView:Lch/android/api/ui/ChTextView;

    invoke-virtual {v0, p1}, Lch/android/api/ui/ChTextView;->setTextColor(I)V

    .line 237
    return-void
.end method

.method public setOnCategoryViewClickListener(Lch/kingdoms/android/ui/network/AuctionSearchSettingView$OnCategoryViewClickListener;)V
    .locals 0
    .param p1, "ocvcl"    # Lch/kingdoms/android/ui/network/AuctionSearchSettingView$OnCategoryViewClickListener;

    .prologue
    .line 232
    iput-object p1, p0, Lch/kingdoms/android/ui/network/AuctionSearchSettingView$CategoryView;->ocvcl:Lch/kingdoms/android/ui/network/AuctionSearchSettingView$OnCategoryViewClickListener;

    .line 233
    return-void
.end method
