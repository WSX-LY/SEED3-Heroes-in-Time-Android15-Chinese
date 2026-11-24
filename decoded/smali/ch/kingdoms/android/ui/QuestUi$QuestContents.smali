.class Lch/kingdoms/android/ui/QuestUi$QuestContents;
.super Lch/android/api/ui/ChRelativeLayout;
.source "QuestUi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lch/kingdoms/android/ui/QuestUi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "QuestContents"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lch/kingdoms/android/ui/QuestUi$QuestContents$GiveUpBtn;
    }
.end annotation


# instance fields
.field private CONTENTS:Lch/android/api/ui/ChTextView;

.field private final GIVE_UP_BTN:Lch/android/api/ui/ChImageButton;

.field private final ID_TITLE:I

.field private final TITLE:Lch/android/api/ui/ChTextView;

.field final synthetic this$0:Lch/kingdoms/android/ui/QuestUi;


# direct methods
.method public constructor <init>(Lch/kingdoms/android/ui/QuestUi;Landroid/content/Context;)V
    .locals 10
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 204
    iput-object p1, p0, Lch/kingdoms/android/ui/QuestUi$QuestContents;->this$0:Lch/kingdoms/android/ui/QuestUi;

    .line 205
    invoke-direct {p0, p2}, Lch/android/api/ui/ChRelativeLayout;-><init>(Landroid/content/Context;)V

    .line 197
    const/16 v4, 0x3ec

    iput v4, p0, Lch/kingdoms/android/ui/QuestUi$QuestContents;->ID_TITLE:I

    .line 207
    new-instance v4, Lch/android/api/ui/ChTextView;

    invoke-direct {v4, p2}, Lch/android/api/ui/ChTextView;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lch/kingdoms/android/ui/QuestUi$QuestContents;->TITLE:Lch/android/api/ui/ChTextView;

    .line 208
    iget-object v4, p0, Lch/kingdoms/android/ui/QuestUi$QuestContents;->TITLE:Lch/android/api/ui/ChTextView;

    const/16 v5, 0x11

    invoke-virtual {v4, v5}, Lch/android/api/ui/ChTextView;->setGravity(I)V

    .line 209
    iget-object v4, p0, Lch/kingdoms/android/ui/QuestUi$QuestContents;->TITLE:Lch/android/api/ui/ChTextView;

    const/16 v5, 0x3ec

    invoke-virtual {v4, v5}, Lch/android/api/ui/ChTextView;->setId(I)V

    .line 211
    new-instance v4, Lch/android/api/ui/ChTextView;

    invoke-direct {v4, p2}, Lch/android/api/ui/ChTextView;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lch/kingdoms/android/ui/QuestUi$QuestContents;->CONTENTS:Lch/android/api/ui/ChTextView;

    .line 212
    iget-object v4, p0, Lch/kingdoms/android/ui/QuestUi$QuestContents;->CONTENTS:Lch/android/api/ui/ChTextView;

    invoke-static {p1}, Lch/kingdoms/android/ui/QuestUi;->access$0(Lch/kingdoms/android/ui/QuestUi;)Lch/android/api/util/DisplayInfo;

    move-result-object v5

    iget v5, v5, Lch/android/api/util/DisplayInfo;->density:F

    const/high16 v6, 0x40e00000    # 7.0f

    mul-float/2addr v5, v6

    float-to-int v5, v5

    invoke-static {p1}, Lch/kingdoms/android/ui/QuestUi;->access$0(Lch/kingdoms/android/ui/QuestUi;)Lch/android/api/util/DisplayInfo;

    move-result-object v6

    iget v6, v6, Lch/android/api/util/DisplayInfo;->density:F

    const/high16 v7, 0x41400000    # 12.0f

    mul-float/2addr v6, v7

    float-to-int v6, v6

    invoke-static {p1}, Lch/kingdoms/android/ui/QuestUi;->access$0(Lch/kingdoms/android/ui/QuestUi;)Lch/android/api/util/DisplayInfo;

    move-result-object v7

    iget v7, v7, Lch/android/api/util/DisplayInfo;->density:F

    const/high16 v8, 0x40e00000    # 7.0f

    mul-float/2addr v7, v8

    float-to-int v7, v7

    invoke-static {p1}, Lch/kingdoms/android/ui/QuestUi;->access$0(Lch/kingdoms/android/ui/QuestUi;)Lch/android/api/util/DisplayInfo;

    move-result-object v8

    iget v8, v8, Lch/android/api/util/DisplayInfo;->density:F

    const/high16 v9, 0x40e00000    # 7.0f

    mul-float/2addr v8, v9

    float-to-int v8, v8

    invoke-virtual {v4, v5, v6, v7, v8}, Lch/android/api/ui/ChTextView;->setPadding(IIII)V

    .line 215
    new-instance v4, Lch/kingdoms/android/ui/QuestUi$QuestContents$GiveUpBtn;

    const v5, 0x7f0200cb

    const v6, 0x7f0200ca

    invoke-direct {v4, p0, p2, v5, v6}, Lch/kingdoms/android/ui/QuestUi$QuestContents$GiveUpBtn;-><init>(Lch/kingdoms/android/ui/QuestUi$QuestContents;Landroid/content/Context;II)V

    iput-object v4, p0, Lch/kingdoms/android/ui/QuestUi$QuestContents;->GIVE_UP_BTN:Lch/android/api/ui/ChImageButton;

    .line 216
    iget-object v4, p0, Lch/kingdoms/android/ui/QuestUi$QuestContents;->GIVE_UP_BTN:Lch/android/api/ui/ChImageButton;

    const/16 v5, 0x2710

    invoke-virtual {v4, v5}, Lch/android/api/ui/ChImageButton;->setId(I)V

    .line 217
    iget-object v4, p0, Lch/kingdoms/android/ui/QuestUi$QuestContents;->GIVE_UP_BTN:Lch/android/api/ui/ChImageButton;

    const/4 v5, 0x4

    invoke-virtual {v4, v5}, Lch/android/api/ui/ChImageButton;->setVisibility(I)V

    .line 218
    iget-object v4, p0, Lch/kingdoms/android/ui/QuestUi$QuestContents;->GIVE_UP_BTN:Lch/android/api/ui/ChImageButton;

    invoke-virtual {v4, p1}, Lch/android/api/ui/ChImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 220
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v4, -0x2

    const/4 v5, -0x2

    invoke-direct {v1, v4, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 221
    .local v1, "lp1":Landroid/widget/RelativeLayout$LayoutParams;
    const/4 v4, 0x0

    invoke-static {p1}, Lch/kingdoms/android/ui/QuestUi;->access$0(Lch/kingdoms/android/ui/QuestUi;)Lch/android/api/util/DisplayInfo;

    move-result-object v5

    iget v5, v5, Lch/android/api/util/DisplayInfo;->density:F

    const/high16 v6, 0x40a00000    # 5.0f

    mul-float/2addr v5, v6

    float-to-int v5, v5

    invoke-static {p1}, Lch/kingdoms/android/ui/QuestUi;->access$0(Lch/kingdoms/android/ui/QuestUi;)Lch/android/api/util/DisplayInfo;

    move-result-object v6

    iget v6, v6, Lch/android/api/util/DisplayInfo;->density:F

    const/high16 v7, 0x40a00000    # 5.0f

    mul-float/2addr v6, v7

    float-to-int v6, v6

    const/4 v7, 0x0

    invoke-virtual {v1, v4, v5, v6, v7}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 222
    const/4 v4, 0x6

    invoke-virtual {v1, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 223
    iget-object v4, p0, Lch/kingdoms/android/ui/QuestUi$QuestContents;->TITLE:Lch/android/api/ui/ChTextView;

    invoke-virtual {p0, v4, v1}, Lch/kingdoms/android/ui/QuestUi$QuestContents;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 224
    new-instance v0, Landroid/widget/ScrollView;

    invoke-direct {v0, p2}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    .line 225
    .local v0, "contentScrollView":Landroid/widget/ScrollView;
    const v4, 0x7f020252

    invoke-virtual {v0, v4}, Landroid/widget/ScrollView;->setBackgroundResource(I)V

    .line 226
    iget-object v4, p0, Lch/kingdoms/android/ui/QuestUi$QuestContents;->CONTENTS:Lch/android/api/ui/ChTextView;

    invoke-virtual {v0, v4}, Landroid/widget/ScrollView;->addView(Landroid/view/View;)V

    .line 227
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v4, -0x1

    const/4 v5, -0x2

    invoke-direct {v2, v4, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 228
    .local v2, "lp2":Landroid/widget/RelativeLayout$LayoutParams;
    const/4 v4, 0x0

    invoke-static {p1}, Lch/kingdoms/android/ui/QuestUi;->access$0(Lch/kingdoms/android/ui/QuestUi;)Lch/android/api/util/DisplayInfo;

    move-result-object v5

    iget v5, v5, Lch/android/api/util/DisplayInfo;->density:F

    const/high16 v6, 0x40a00000    # 5.0f

    mul-float/2addr v5, v6

    float-to-int v5, v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v2, v4, v5, v6, v7}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 229
    const/4 v4, 0x3

    const/16 v5, 0x3ec

    invoke-virtual {v2, v4, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 230
    invoke-virtual {p0, v0, v2}, Lch/kingdoms/android/ui/QuestUi$QuestContents;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 232
    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v4, -0x2

    const/4 v5, -0x2

    invoke-direct {v3, v4, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 233
    .local v3, "lp3":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v4, 0xc

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 234
    const/16 v4, 0xb

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 235
    iget-object v4, p0, Lch/kingdoms/android/ui/QuestUi$QuestContents;->GIVE_UP_BTN:Lch/android/api/ui/ChImageButton;

    invoke-virtual {p0, v4, v3}, Lch/kingdoms/android/ui/QuestUi$QuestContents;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 236
    return-void
.end method


# virtual methods
.method public setQuest(ZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 4
    .param p1, "_isMainQuest"    # Z
    .param p2, "_isHidden"    # Z
    .param p3, "_title"    # Ljava/lang/String;
    .param p4, "_contents"    # Ljava/lang/String;
    .param p5, "_clientName"    # Ljava/lang/String;
    .param p6, "_cntStr"    # Ljava/lang/String;
    .param p7, "chkHidden"    # Z

    .prologue
    .line 239
    if-eqz p2, :cond_0

    .line 240
    iget-object v0, p0, Lch/kingdoms/android/ui/QuestUi$QuestContents;->TITLE:Lch/android/api/ui/ChTextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lch/android/api/ui/ChTextView;->setText(Ljava/lang/CharSequence;)V

    .line 241
    iget-object v0, p0, Lch/kingdoms/android/ui/QuestUi$QuestContents;->CONTENTS:Lch/android/api/ui/ChTextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lch/android/api/ui/ChTextView;->setText(Ljava/lang/CharSequence;)V

    .line 254
    :goto_0
    if-eqz p1, :cond_4

    .line 255
    iget-object v0, p0, Lch/kingdoms/android/ui/QuestUi$QuestContents;->TITLE:Lch/android/api/ui/ChTextView;

    const v1, 0x7f020200

    invoke-virtual {v0, v1}, Lch/android/api/ui/ChTextView;->setBackgroundResource(I)V

    .line 256
    iget-object v0, p0, Lch/kingdoms/android/ui/QuestUi$QuestContents;->GIVE_UP_BTN:Lch/android/api/ui/ChImageButton;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lch/android/api/ui/ChImageButton;->setVisibility(I)V

    .line 261
    :goto_1
    return-void

    .line 243
    :cond_0
    iget-object v0, p0, Lch/kingdoms/android/ui/QuestUi$QuestContents;->TITLE:Lch/android/api/ui/ChTextView;

    invoke-virtual {v0, p3}, Lch/android/api/ui/ChTextView;->setText(Ljava/lang/CharSequence;)V

    .line 244
    if-eqz p1, :cond_3

    .line 245
    if-eqz p7, :cond_1

    .line 246
    iget-object v0, p0, Lch/kingdoms/android/ui/QuestUi$QuestContents;->CONTENTS:Lch/android/api/ui/ChTextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lch/android/api/ui/ChTextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 248
    :cond_1
    iget-object v1, p0, Lch/kingdoms/android/ui/QuestUi$QuestContents;->CONTENTS:Lch/android/api/ui/ChTextView;

    new-instance v2, Ljava/lang/StringBuilder;

    if-nez p6, :cond_2

    const-string v0, ""

    :goto_2
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    invoke-virtual {v1, v0}, Lch/android/api/ui/ChTextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "<br />"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 251
    :cond_3
    iget-object v0, p0, Lch/kingdoms/android/ui/QuestUi$QuestContents;->CONTENTS:Lch/android/api/ui/ChTextView;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "<font color=\'#ffee00\'>"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "</font><br />"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "<br />"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Lch/android/api/ui/ChTextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 258
    :cond_4
    iget-object v0, p0, Lch/kingdoms/android/ui/QuestUi$QuestContents;->TITLE:Lch/android/api/ui/ChTextView;

    const v1, 0x7f0202c0

    invoke-virtual {v0, v1}, Lch/android/api/ui/ChTextView;->setBackgroundResource(I)V

    .line 259
    iget-object v0, p0, Lch/kingdoms/android/ui/QuestUi$QuestContents;->GIVE_UP_BTN:Lch/android/api/ui/ChImageButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lch/android/api/ui/ChImageButton;->setVisibility(I)V

    goto/16 :goto_1
.end method
