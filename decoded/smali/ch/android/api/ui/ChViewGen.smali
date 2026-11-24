.class public Lch/android/api/ui/ChViewGen;
.super Ljava/lang/Object;
.source "ChViewGen.java"


# static fields
.field private static s_popUpViews:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    sput-object v0, Lch/android/api/ui/ChViewGen;->s_popUpViews:Ljava/util/Stack;

    .line 19
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static closeAllPopUpViews()V
    .locals 1

    .prologue
    .line 352
    :goto_0
    sget-object v0, Lch/android/api/ui/ChViewGen;->s_popUpViews:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->size()I

    move-result v0

    if-gtz v0, :cond_0

    .line 355
    return-void

    .line 353
    :cond_0
    invoke-static {}, Lch/android/api/ui/ChViewGen;->closePopUpView()V

    goto :goto_0
.end method

.method public static closePopUpView()V
    .locals 3

    .prologue
    .line 267
    sget-object v2, Lch/android/api/ui/ChViewGen;->s_popUpViews:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 269
    sget-object v2, Lch/android/api/ui/ChViewGen;->s_popUpViews:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 270
    .local v1, "view":Landroid/view/View;
    if-eqz v1, :cond_1

    .line 271
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 272
    .local v0, "vg":Landroid/view/ViewGroup;
    if-eqz v0, :cond_0

    .line 273
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 275
    :cond_0
    instance-of v2, v1, Lch/android/api/ui/IChView;

    if-eqz v2, :cond_1

    .line 276
    check-cast v1, Lch/android/api/ui/IChView;

    .end local v1    # "view":Landroid/view/View;
    invoke-interface {v1}, Lch/android/api/ui/IChView;->releaseRsources()V

    .line 280
    .end local v0    # "vg":Landroid/view/ViewGroup;
    :cond_1
    return-void
.end method

.method public static closePopUpView(Landroid/view/View;)V
    .locals 5
    .param p0, "_view"    # Landroid/view/View;

    .prologue
    .line 314
    sget-object v4, Lch/android/api/ui/ChViewGen;->s_popUpViews:Ljava/util/Stack;

    invoke-virtual {v4}, Ljava/util/Stack;->size()I

    move-result v4

    if-lez v4, :cond_1

    .line 316
    sget-object v4, Lch/android/api/ui/ChViewGen;->s_popUpViews:Ljava/util/Stack;

    invoke-virtual {v4, p0}, Ljava/util/Stack;->contains(Ljava/lang/Object;)Z

    move-result v1

    .line 317
    .local v1, "isContains":Z
    if-eqz v1, :cond_1

    if-eqz p0, :cond_1

    .line 318
    sget-object v4, Lch/android/api/ui/ChViewGen;->s_popUpViews:Ljava/util/Stack;

    invoke-virtual {v4, p0}, Ljava/util/Stack;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 319
    .local v0, "index":I
    sget-object v4, Lch/android/api/ui/ChViewGen;->s_popUpViews:Ljava/util/Stack;

    invoke-virtual {v4, v0}, Ljava/util/Stack;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    .line 320
    .local v3, "view":Landroid/view/View;
    sget-object v4, Lch/android/api/ui/ChViewGen;->s_popUpViews:Ljava/util/Stack;

    invoke-virtual {v4, v0}, Ljava/util/Stack;->remove(I)Ljava/lang/Object;

    .line 321
    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    .line 322
    .local v2, "vg":Landroid/view/ViewGroup;
    if-eqz v2, :cond_0

    .line 323
    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 325
    :cond_0
    instance-of v4, v3, Lch/android/api/ui/IChView;

    if-eqz v4, :cond_1

    .line 326
    check-cast v3, Lch/android/api/ui/IChView;

    .end local v3    # "view":Landroid/view/View;
    invoke-interface {v3}, Lch/android/api/ui/IChView;->releaseRsources()V

    .line 330
    .end local v0    # "index":I
    .end local v1    # "isContains":Z
    .end local v2    # "vg":Landroid/view/ViewGroup;
    :cond_1
    return-void
.end method

.method public static closePopUpViews([I)V
    .locals 8
    .param p0, "excepts"    # [I

    .prologue
    .line 283
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    .line 284
    .local v1, "exceptViews":Ljava/util/Queue;, "Ljava/util/Queue<Landroid/view/View;>;"
    :cond_0
    :goto_0
    sget-object v5, Lch/android/api/ui/ChViewGen;->s_popUpViews:Ljava/util/Stack;

    invoke-virtual {v5}, Ljava/util/Stack;->size()I

    move-result v5

    if-gtz v5, :cond_1

    .line 307
    :goto_1
    invoke-interface {v1}, Ljava/util/Queue;->size()I

    move-result v5

    if-gtz v5, :cond_5

    .line 311
    return-void

    .line 285
    :cond_1
    sget-object v5, Lch/android/api/ui/ChViewGen;->s_popUpViews:Ljava/util/Stack;

    invoke-virtual {v5}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    .line 287
    .local v4, "view":Landroid/view/View;
    const/4 v2, 0x0

    .line 288
    .local v2, "isExcept":Z
    array-length v6, p0

    const/4 v5, 0x0

    :goto_2
    if-lt v5, v6, :cond_3

    .line 295
    :goto_3
    if-nez v2, :cond_0

    .line 296
    if-eqz v4, :cond_0

    .line 297
    invoke-virtual {v4}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    .line 298
    .local v3, "vg":Landroid/view/ViewGroup;
    if-eqz v3, :cond_2

    .line 299
    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 301
    :cond_2
    instance-of v5, v4, Lch/android/api/ui/IChView;

    if-eqz v5, :cond_0

    .line 302
    check-cast v4, Lch/android/api/ui/IChView;

    .end local v4    # "view":Landroid/view/View;
    invoke-interface {v4}, Lch/android/api/ui/IChView;->releaseRsources()V

    goto :goto_0

    .line 288
    .end local v3    # "vg":Landroid/view/ViewGroup;
    .restart local v4    # "view":Landroid/view/View;
    :cond_3
    aget v0, p0, v5

    .line 289
    .local v0, "except":I
    const/4 v7, -0x1

    if-eq v0, v7, :cond_4

    invoke-virtual {v4}, Landroid/view/View;->getId()I

    move-result v7

    if-ne v0, v7, :cond_4

    .line 290
    invoke-interface {v1, v4}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 291
    const/4 v2, 0x1

    .line 292
    goto :goto_3

    .line 288
    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 308
    .end local v0    # "except":I
    .end local v2    # "isExcept":Z
    .end local v4    # "view":Landroid/view/View;
    :cond_5
    sget-object v6, Lch/android/api/ui/ChViewGen;->s_popUpViews:Ljava/util/Stack;

    invoke-interface {v1}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    invoke-virtual {v6, v5}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1
.end method

.method public static createImageButton(Landroid/app/Activity;IIILandroid/view/View$OnClickListener;)Lch/android/api/ui/ChImageButton;
    .locals 2
    .param p0, "_activity"    # Landroid/app/Activity;
    .param p1, "_id"    # I
    .param p2, "_up"    # I
    .param p3, "_down"    # I
    .param p4, "_ocl"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 59
    new-instance v0, Lch/android/api/ui/ChImageButton;

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p2, p3}, Lch/android/api/ui/ChImageButton;-><init>(Landroid/content/Context;II)V

    .line 60
    .local v0, "cb":Lch/android/api/ui/ChImageButton;
    invoke-virtual {v0, p1}, Lch/android/api/ui/ChImageButton;->setId(I)V

    .line 61
    if-eqz p4, :cond_0

    .line 62
    invoke-virtual {v0, p4}, Lch/android/api/ui/ChImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 65
    :cond_0
    return-object v0
.end method

.method public static createImageTextView(Landroid/app/Activity;ILjava/lang/String;)Lch/android/api/ui/ChImageTextView;
    .locals 2
    .param p0, "_activity"    # Landroid/app/Activity;
    .param p1, "_imgId"    # I
    .param p2, "_string"    # Ljava/lang/String;

    .prologue
    .line 88
    new-instance v0, Lch/android/api/ui/ChImageTextView;

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1, p2}, Lch/android/api/ui/ChImageTextView;-><init>(Landroid/content/Context;ILjava/lang/String;)V

    .line 89
    .local v0, "itv":Lch/android/api/ui/ChImageTextView;
    return-object v0
.end method

.method public static createImageView(Landroid/app/Activity;I)Lch/android/api/ui/ChImageView;
    .locals 2
    .param p0, "_activity"    # Landroid/app/Activity;
    .param p1, "_imgId"    # I

    .prologue
    .line 79
    new-instance v0, Lch/android/api/ui/ChImageView;

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lch/android/api/ui/ChImageView;-><init>(Landroid/content/Context;)V

    .line 80
    .local v0, "iv":Lch/android/api/ui/ChImageView;
    if-eqz p1, :cond_0

    .line 81
    invoke-virtual {v0, p1}, Lch/android/api/ui/ChImageView;->setImageResource(I)V

    .line 84
    :cond_0
    return-object v0
.end method

.method public static createLinearLayout(Landroid/app/Activity;III)Lch/android/api/ui/ChLinearLayout;
    .locals 2
    .param p0, "_activity"    # Landroid/app/Activity;
    .param p1, "_wArg"    # I
    .param p2, "_hArg"    # I
    .param p3, "_orientation"    # I

    .prologue
    .line 44
    new-instance v0, Lch/android/api/ui/ChLinearLayout;

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lch/android/api/ui/ChLinearLayout;-><init>(Landroid/content/Context;)V

    .line 45
    .local v0, "ll":Lch/android/api/ui/ChLinearLayout;
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v1, p1, p2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Lch/android/api/ui/ChLinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 46
    invoke-virtual {v0, p3}, Lch/android/api/ui/ChLinearLayout;->setOrientation(I)V

    .line 48
    return-object v0
.end method

.method public static createOnOffButton(Landroid/app/Activity;IIILandroid/view/View$OnClickListener;)Lch/android/api/ui/ChOnOffButton;
    .locals 2
    .param p0, "_activity"    # Landroid/app/Activity;
    .param p1, "_id"    # I
    .param p2, "_up"    # I
    .param p3, "_down"    # I
    .param p4, "_ocl"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 69
    new-instance v0, Lch/android/api/ui/ChOnOffButton;

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p2, p3}, Lch/android/api/ui/ChOnOffButton;-><init>(Landroid/content/Context;II)V

    .line 70
    .local v0, "oob":Lch/android/api/ui/ChOnOffButton;
    invoke-virtual {v0, p1}, Lch/android/api/ui/ChOnOffButton;->setId(I)V

    .line 71
    if-eqz p4, :cond_0

    .line 72
    invoke-virtual {v0, p4}, Lch/android/api/ui/ChOnOffButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 75
    :cond_0
    return-object v0
.end method

.method public static createRelativeLayout(Landroid/app/Activity;II)Lch/android/api/ui/ChRelativeLayout;
    .locals 2
    .param p0, "_activity"    # Landroid/app/Activity;
    .param p1, "_wArg"    # I
    .param p2, "_hArg"    # I

    .prologue
    .line 52
    new-instance v0, Lch/android/api/ui/ChRelativeLayout;

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lch/android/api/ui/ChRelativeLayout;-><init>(Landroid/content/Context;)V

    .line 53
    .local v0, "rl":Lch/android/api/ui/ChRelativeLayout;
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v1, p1, p2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Lch/android/api/ui/ChRelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 55
    return-object v0
.end method

.method public static getEventLayerLevel()I
    .locals 1

    .prologue
    .line 28
    sget-object v0, Lch/android/api/ui/ChViewGen;->s_popUpViews:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->size()I

    move-result v0

    return v0
.end method

.method private static getViewInCenter(Landroid/app/Activity;Landroid/view/View;)Landroid/view/View;
    .locals 4
    .param p0, "_activity"    # Landroid/app/Activity;
    .param p1, "_view"    # Landroid/view/View;

    .prologue
    const/4 v3, -0x1

    const/4 v2, -0x2

    .line 231
    invoke-static {p0, v3, v3}, Lch/android/api/ui/ChViewGen;->createRelativeLayout(Landroid/app/Activity;II)Lch/android/api/ui/ChRelativeLayout;

    move-result-object v0

    .line 232
    .local v0, "rl":Lch/android/api/ui/ChRelativeLayout;
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 233
    .local v1, "rlp":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v2, 0xd

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 234
    invoke-virtual {v0, p1, v1}, Lch/android/api/ui/ChRelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 235
    return-object v0
.end method

.method private static getViewInCustomMargin(Landroid/app/Activity;Landroid/view/View;I)Landroid/view/View;
    .locals 4
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "view"    # Landroid/view/View;
    .param p2, "topMargin"    # I

    .prologue
    const/4 v3, -0x1

    const/4 v2, -0x2

    .line 239
    invoke-static {p0, v3, v3}, Lch/android/api/ui/ChViewGen;->createRelativeLayout(Landroid/app/Activity;II)Lch/android/api/ui/ChRelativeLayout;

    move-result-object v0

    .line 240
    .local v0, "rl":Lch/android/api/ui/ChRelativeLayout;
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 241
    .local v1, "rlp":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v2, 0xe

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 242
    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 243
    iput p2, v1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 244
    invoke-virtual {v0, p1, v1}, Lch/android/api/ui/ChRelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 245
    return-object v0
.end method

.method public static popUp(Landroid/app/Activity;Landroid/view/View;)Landroid/view/View;
    .locals 1
    .param p0, "_activity"    # Landroid/app/Activity;
    .param p1, "_view"    # Landroid/view/View;

    .prologue
    const/4 v0, -0x1

    .line 256
    invoke-static {p0, p1, v0, v0}, Lch/android/api/ui/ChViewGen;->popUp(Landroid/app/Activity;Landroid/view/View;II)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public static popUp(Landroid/app/Activity;Landroid/view/View;I)Landroid/view/View;
    .locals 3
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "view"    # Landroid/view/View;
    .param p2, "topMargin"    # I

    .prologue
    const/4 v2, -0x1

    .line 249
    invoke-static {p0, p1, p2}, Lch/android/api/ui/ChViewGen;->getViewInCustomMargin(Landroid/app/Activity;Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    .line 250
    .local v0, "layout":Landroid/view/View;
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 251
    sget-object v1, Lch/android/api/ui/ChViewGen;->s_popUpViews:Ljava/util/Stack;

    invoke-virtual {v1, v0}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 252
    return-object v0
.end method

.method public static popUp(Landroid/app/Activity;Landroid/view/View;II)Landroid/view/View;
    .locals 2
    .param p0, "_activity"    # Landroid/app/Activity;
    .param p1, "_view"    # Landroid/view/View;
    .param p2, "w"    # I
    .param p3, "h"    # I

    .prologue
    .line 260
    invoke-static {p0, p1}, Lch/android/api/ui/ChViewGen;->getViewInCenter(Landroid/app/Activity;Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    .line 261
    .local v0, "layout":Landroid/view/View;
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v1, p2, p3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 262
    sget-object v1, Lch/android/api/ui/ChViewGen;->s_popUpViews:Ljava/util/Stack;

    invoke-virtual {v1, v0}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 263
    return-object v0
.end method

.method public static popUpAlarmView(Landroid/app/Activity;Lch/android/api/util/DisplayInfo;IILjava/lang/String;Ljava/lang/String;)Landroid/view/View;
    .locals 8
    .param p0, "_activity"    # Landroid/app/Activity;
    .param p1, "_di"    # Lch/android/api/util/DisplayInfo;
    .param p2, "_titleResId"    # I
    .param p3, "_color"    # I
    .param p4, "_title"    # Ljava/lang/String;
    .param p5, "_txt"    # Ljava/lang/String;

    .prologue
    .line 207
    new-instance v0, Lch/android/api/ui/ChPopUpAlarmView;

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const/4 v7, 0x1

    move-object v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v7}, Lch/android/api/ui/ChPopUpAlarmView;-><init>(Landroid/content/Context;Lch/android/api/util/DisplayInfo;IILjava/lang/String;Ljava/lang/String;Z)V

    .line 208
    .local v0, "av":Lch/android/api/ui/ChPopUpAlarmView;
    invoke-static {p0, v0}, Lch/android/api/ui/ChViewGen;->popUp(Landroid/app/Activity;Landroid/view/View;)Landroid/view/View;

    move-result-object v1

    return-object v1
.end method

.method public static popUpAlarmViewWithoutOK(Landroid/app/Activity;Lch/android/api/util/DisplayInfo;IILjava/lang/String;Ljava/lang/String;)Landroid/view/View;
    .locals 8
    .param p0, "_activity"    # Landroid/app/Activity;
    .param p1, "_di"    # Lch/android/api/util/DisplayInfo;
    .param p2, "_titleResId"    # I
    .param p3, "_color"    # I
    .param p4, "_title"    # Ljava/lang/String;
    .param p5, "_txt"    # Ljava/lang/String;

    .prologue
    .line 212
    new-instance v0, Lch/android/api/ui/ChPopUpAlarmView;

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const/4 v7, 0x0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v7}, Lch/android/api/ui/ChPopUpAlarmView;-><init>(Landroid/content/Context;Lch/android/api/util/DisplayInfo;IILjava/lang/String;Ljava/lang/String;Z)V

    .line 213
    .local v0, "av":Lch/android/api/ui/ChPopUpAlarmView;
    invoke-static {p0, v0}, Lch/android/api/ui/ChViewGen;->popUp(Landroid/app/Activity;Landroid/view/View;)Landroid/view/View;

    move-result-object v1

    return-object v1
.end method

.method public static popUpConfirmYesNoView(Landroid/app/Activity;ILandroid/view/View$OnClickListener;)Landroid/view/View;
    .locals 3
    .param p0, "_activity"    # Landroid/app/Activity;
    .param p1, "_txtId"    # I
    .param p2, "_ocl"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 93
    new-instance v0, Lch/android/api/ui/ChPopUpYesNoView;

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f020246

    invoke-direct {v0, v1, v2}, Lch/android/api/ui/ChPopUpYesNoView;-><init>(Landroid/content/Context;I)V

    .line 94
    .local v0, "ynv":Lch/android/api/ui/ChPopUpYesNoView;
    invoke-virtual {v0, p1}, Lch/android/api/ui/ChPopUpYesNoView;->setText(I)V

    .line 95
    invoke-virtual {v0, p2}, Lch/android/api/ui/ChPopUpYesNoView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 96
    invoke-static {p0, v0}, Lch/android/api/ui/ChViewGen;->popUp(Landroid/app/Activity;Landroid/view/View;)Landroid/view/View;

    move-result-object v1

    return-object v1
.end method

.method public static popUpConfirmYesNoView(Landroid/app/Activity;Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;)Landroid/view/View;
    .locals 3
    .param p0, "_activity"    # Landroid/app/Activity;
    .param p1, "_txt"    # Ljava/lang/CharSequence;
    .param p2, "_ocl"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 100
    new-instance v0, Lch/android/api/ui/ChPopUpYesNoView;

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f020246

    invoke-direct {v0, v1, v2}, Lch/android/api/ui/ChPopUpYesNoView;-><init>(Landroid/content/Context;I)V

    .line 101
    .local v0, "ynv":Lch/android/api/ui/ChPopUpYesNoView;
    invoke-virtual {v0, p1}, Lch/android/api/ui/ChPopUpYesNoView;->setText(Ljava/lang/CharSequence;)V

    .line 102
    invoke-virtual {v0, p2}, Lch/android/api/ui/ChPopUpYesNoView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 103
    invoke-static {p0, v0}, Lch/android/api/ui/ChViewGen;->popUp(Landroid/app/Activity;Landroid/view/View;)Landroid/view/View;

    move-result-object v1

    return-object v1
.end method

.method public static popUpGameTipView(Landroid/app/Activity;Lch/android/api/util/DisplayInfo;Ljava/lang/String;Z)Landroid/view/View;
    .locals 3
    .param p0, "_activity"    # Landroid/app/Activity;
    .param p1, "_di"    # Lch/android/api/util/DisplayInfo;
    .param p2, "_txt"    # Ljava/lang/String;
    .param p3, "_isAutoPass"    # Z

    .prologue
    .line 217
    new-instance v0, Lch/android/api/ui/ChPopUpGameTipView;

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2, p1, p2, p3}, Lch/android/api/ui/ChPopUpGameTipView;-><init>(Landroid/content/Context;Lch/android/api/util/DisplayInfo;Ljava/lang/String;Z)V

    .line 219
    .local v0, "gtv":Lch/android/api/ui/ChPopUpGameTipView;
    invoke-static {p0, v0}, Lch/android/api/ui/ChViewGen;->popUp(Landroid/app/Activity;Landroid/view/View;)Landroid/view/View;

    move-result-object v1

    .line 227
    .local v1, "view":Landroid/view/View;
    return-object v1
.end method

.method public static popUpItemInfoView(Landroid/app/Activity;Lch/kingdoms/ndk/data/Inven$Item;Lch/android/api/util/DisplayInfo;Landroid/view/View$OnClickListener;)Landroid/view/View;
    .locals 3
    .param p0, "_activity"    # Landroid/app/Activity;
    .param p1, "_item"    # Lch/kingdoms/ndk/data/Inven$Item;
    .param p2, "_di"    # Lch/android/api/util/DisplayInfo;
    .param p3, "_ocl"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 155
    new-instance v0, Lch/android/api/ui/ChPopUpItemInfoView;

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, p1, p2, v2}, Lch/android/api/ui/ChPopUpItemInfoView;-><init>(Landroid/content/Context;Lch/kingdoms/ndk/data/Inven$Item;Lch/android/api/util/DisplayInfo;Z)V

    .line 156
    .local v0, "iiv":Lch/android/api/ui/ChPopUpItemInfoView;
    invoke-virtual {v0, p3}, Lch/android/api/ui/ChPopUpItemInfoView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 157
    invoke-static {p0, v0}, Lch/android/api/ui/ChViewGen;->popUp(Landroid/app/Activity;Landroid/view/View;)Landroid/view/View;

    move-result-object v1

    return-object v1
.end method

.method public static popUpItemInfoView(Landroid/app/Activity;Lch/kingdoms/ndk/data/Inven$Item;Lch/android/api/util/DisplayInfo;Landroid/view/View$OnClickListener;Z)Landroid/view/View;
    .locals 2
    .param p0, "_activity"    # Landroid/app/Activity;
    .param p1, "_item"    # Lch/kingdoms/ndk/data/Inven$Item;
    .param p2, "_di"    # Lch/android/api/util/DisplayInfo;
    .param p3, "_ocl"    # Landroid/view/View$OnClickListener;
    .param p4, "isOnlyView"    # Z

    .prologue
    .line 161
    new-instance v0, Lch/android/api/ui/ChPopUpItemInfoView;

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1, p2, p4}, Lch/android/api/ui/ChPopUpItemInfoView;-><init>(Landroid/content/Context;Lch/kingdoms/ndk/data/Inven$Item;Lch/android/api/util/DisplayInfo;Z)V

    .line 162
    .local v0, "iiv":Lch/android/api/ui/ChPopUpItemInfoView;
    invoke-virtual {v0, p3}, Lch/android/api/ui/ChPopUpItemInfoView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 163
    invoke-static {p0, v0}, Lch/android/api/ui/ChViewGen;->popUp(Landroid/app/Activity;Landroid/view/View;)Landroid/view/View;

    move-result-object v1

    return-object v1
.end method

.method public static popUpOkView(Landroid/app/Activity;I)Landroid/view/View;
    .locals 3
    .param p0, "_activity"    # Landroid/app/Activity;
    .param p1, "txtId"    # I

    .prologue
    .line 142
    new-instance v0, Lch/android/api/ui/ChPopUpOKView;

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f020246

    invoke-direct {v0, v1, v2}, Lch/android/api/ui/ChPopUpOKView;-><init>(Landroid/content/Context;I)V

    .line 143
    .local v0, "ov":Lch/android/api/ui/ChPopUpOKView;
    invoke-virtual {v0, p1}, Lch/android/api/ui/ChPopUpOKView;->setText(I)V

    .line 144
    new-instance v1, Lch/android/api/ui/ChViewGen$2;

    invoke-direct {v1}, Lch/android/api/ui/ChViewGen$2;-><init>()V

    invoke-virtual {v0, v1}, Lch/android/api/ui/ChPopUpOKView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 151
    invoke-static {p0, v0}, Lch/android/api/ui/ChViewGen;->popUp(Landroid/app/Activity;Landroid/view/View;)Landroid/view/View;

    move-result-object v1

    return-object v1
.end method

.method public static popUpOkView(Landroid/app/Activity;ILandroid/view/View$OnClickListener;)Landroid/view/View;
    .locals 3
    .param p0, "_activity"    # Landroid/app/Activity;
    .param p1, "_txtResId"    # I
    .param p2, "_ocl"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 107
    new-instance v0, Lch/android/api/ui/ChPopUpOKView;

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f020246

    invoke-direct {v0, v1, v2}, Lch/android/api/ui/ChPopUpOKView;-><init>(Landroid/content/Context;I)V

    .line 108
    .local v0, "ov":Lch/android/api/ui/ChPopUpOKView;
    invoke-virtual {v0, p1}, Lch/android/api/ui/ChPopUpOKView;->setText(I)V

    .line 109
    invoke-virtual {v0, p2}, Lch/android/api/ui/ChPopUpOKView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 110
    invoke-static {p0, v0}, Lch/android/api/ui/ChViewGen;->popUp(Landroid/app/Activity;Landroid/view/View;)Landroid/view/View;

    move-result-object v1

    return-object v1
.end method

.method public static popUpOkView(Landroid/app/Activity;Ljava/lang/String;)Landroid/view/View;
    .locals 3
    .param p0, "_activity"    # Landroid/app/Activity;
    .param p1, "_txt"    # Ljava/lang/String;

    .prologue
    .line 129
    new-instance v0, Lch/android/api/ui/ChPopUpOKView;

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f020246

    invoke-direct {v0, v1, v2}, Lch/android/api/ui/ChPopUpOKView;-><init>(Landroid/content/Context;I)V

    .line 130
    .local v0, "ov":Lch/android/api/ui/ChPopUpOKView;
    invoke-virtual {v0, p1}, Lch/android/api/ui/ChPopUpOKView;->setText(Ljava/lang/String;)V

    .line 131
    new-instance v1, Lch/android/api/ui/ChViewGen$1;

    invoke-direct {v1}, Lch/android/api/ui/ChViewGen$1;-><init>()V

    invoke-virtual {v0, v1}, Lch/android/api/ui/ChPopUpOKView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 138
    invoke-static {p0, v0}, Lch/android/api/ui/ChViewGen;->popUp(Landroid/app/Activity;Landroid/view/View;)Landroid/view/View;

    move-result-object v1

    return-object v1
.end method

.method public static popUpOkView(Landroid/app/Activity;Ljava/lang/String;Landroid/view/View$OnClickListener;)Landroid/view/View;
    .locals 3
    .param p0, "_activity"    # Landroid/app/Activity;
    .param p1, "_txt"    # Ljava/lang/String;
    .param p2, "_ocl"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 114
    new-instance v0, Lch/android/api/ui/ChPopUpOKView;

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f020246

    invoke-direct {v0, v1, v2}, Lch/android/api/ui/ChPopUpOKView;-><init>(Landroid/content/Context;I)V

    .line 115
    .local v0, "ov":Lch/android/api/ui/ChPopUpOKView;
    invoke-virtual {v0, p1}, Lch/android/api/ui/ChPopUpOKView;->setText(Ljava/lang/String;)V

    .line 116
    invoke-virtual {v0, p2}, Lch/android/api/ui/ChPopUpOKView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 117
    invoke-static {p0, v0}, Lch/android/api/ui/ChViewGen;->popUp(Landroid/app/Activity;Landroid/view/View;)Landroid/view/View;

    move-result-object v1

    return-object v1
.end method

.method public static popUpOkView(Landroid/app/Activity;Ljava/lang/String;Landroid/view/View$OnClickListener;I)Landroid/view/View;
    .locals 2
    .param p0, "_activity"    # Landroid/app/Activity;
    .param p1, "_txt"    # Ljava/lang/String;
    .param p2, "_ocl"    # Landroid/view/View$OnClickListener;
    .param p3, "bgResId"    # I

    .prologue
    .line 121
    new-instance v0, Lch/android/api/ui/ChPopUpOKView;

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p3}, Lch/android/api/ui/ChPopUpOKView;-><init>(Landroid/content/Context;I)V

    .line 122
    .local v0, "ov":Lch/android/api/ui/ChPopUpOKView;
    invoke-virtual {v0, p2}, Lch/android/api/ui/ChPopUpOKView;->setTextOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 123
    invoke-virtual {v0, p1}, Lch/android/api/ui/ChPopUpOKView;->setText(Ljava/lang/String;)V

    .line 124
    invoke-virtual {v0, p2}, Lch/android/api/ui/ChPopUpOKView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 125
    invoke-static {p0, v0}, Lch/android/api/ui/ChViewGen;->popUp(Landroid/app/Activity;Landroid/view/View;)Landroid/view/View;

    move-result-object v1

    return-object v1
.end method

.method public static popUpQuickSlotsView(Landroid/app/Activity;Lch/android/api/util/DisplayInfo;II)Landroid/view/View;
    .locals 6
    .param p0, "_activity"    # Landroid/app/Activity;
    .param p1, "_di"    # Lch/android/api/util/DisplayInfo;
    .param p2, "_type"    # I
    .param p3, "_num"    # I

    .prologue
    .line 167
    new-instance v0, Lch/android/api/ui/ChPopUpQuickSlot;

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const v3, 0x7f020254

    move-object v2, p1

    move v4, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lch/android/api/ui/ChPopUpQuickSlot;-><init>(Landroid/content/Context;Lch/android/api/util/DisplayInfo;III)V

    .line 168
    .local v0, "quickSlot":Lch/android/api/ui/ChPopUpQuickSlot;
    invoke-static {p0, v0}, Lch/android/api/ui/ChViewGen;->popUp(Landroid/app/Activity;Landroid/view/View;)Landroid/view/View;

    move-result-object v1

    return-object v1
.end method

.method public static popUpStoreView(Landroid/app/Activity;Lch/android/api/util/DisplayInfo;Landroid/view/View$OnClickListener;)Landroid/view/View;
    .locals 3
    .param p0, "_activity"    # Landroid/app/Activity;
    .param p1, "_di"    # Lch/android/api/util/DisplayInfo;
    .param p2, "_ocl"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 172
    new-instance v0, Lch/android/api/ui/ChPopUpStoreView;

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f020248

    invoke-direct {v0, v1, v2}, Lch/android/api/ui/ChPopUpStoreView;-><init>(Landroid/content/Context;I)V

    .line 173
    .local v0, "sv":Lch/android/api/ui/ChPopUpStoreView;
    invoke-virtual {v0, p2}, Lch/android/api/ui/ChPopUpStoreView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 174
    invoke-static {p0, v0}, Lch/android/api/ui/ChViewGen;->popUp(Landroid/app/Activity;Landroid/view/View;)Landroid/view/View;

    move-result-object v1

    return-object v1
.end method

.method public static popUpTradeItemView(Landroid/app/Activity;Lch/android/api/util/DisplayInfo;IILch/kingdoms/ndk/data/Inven$Item;[Lch/kingdoms/ndk/data/Inven$Item;Landroid/view/View$OnClickListener;)Lch/android/api/ui/ChPopUpTradeItemView;
    .locals 8
    .param p0, "_activity"    # Landroid/app/Activity;
    .param p1, "_di"    # Lch/android/api/util/DisplayInfo;
    .param p2, "_money"    # I
    .param p3, "_type"    # I
    .param p4, "_item"    # Lch/kingdoms/ndk/data/Inven$Item;
    .param p5, "_invenItems"    # [Lch/kingdoms/ndk/data/Inven$Item;
    .param p6, "_ocl"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 188
    new-instance v0, Lch/android/api/ui/ChPopUpTradeItemView;

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 189
    const v7, 0x7f020246

    move-object v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    move-object v6, p5

    .line 188
    invoke-direct/range {v0 .. v7}, Lch/android/api/ui/ChPopUpTradeItemView;-><init>(Landroid/content/Context;Lch/android/api/util/DisplayInfo;IILch/kingdoms/ndk/data/Inven$Item;[Lch/kingdoms/ndk/data/Inven$Item;I)V

    .line 190
    .local v0, "tiv":Lch/android/api/ui/ChPopUpTradeItemView;
    invoke-virtual {v0, p6}, Lch/android/api/ui/ChPopUpTradeItemView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 191
    invoke-static {p0, v0}, Lch/android/api/ui/ChViewGen;->popUp(Landroid/app/Activity;Landroid/view/View;)Landroid/view/View;

    .line 192
    return-object v0
.end method

.method public static popUpTradeItemView(Landroid/app/Activity;Lch/android/api/util/DisplayInfo;IZLch/kingdoms/ndk/data/Inven$Item;[Lch/kingdoms/ndk/data/Inven$Item;Landroid/view/View$OnClickListener;)Lch/android/api/ui/ChPopUpTradeItemView;
    .locals 8
    .param p0, "_activity"    # Landroid/app/Activity;
    .param p1, "_di"    # Lch/android/api/util/DisplayInfo;
    .param p2, "_money"    # I
    .param p3, "_isBuy"    # Z
    .param p4, "_item"    # Lch/kingdoms/ndk/data/Inven$Item;
    .param p5, "_invenItems"    # [Lch/kingdoms/ndk/data/Inven$Item;
    .param p6, "_ocl"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 179
    new-instance v0, Lch/android/api/ui/ChPopUpTradeItemView;

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 180
    if-eqz p3, :cond_0

    const/16 v4, 0xa

    :goto_0
    const v7, 0x7f020246

    move-object v2, p1

    move v3, p2

    move-object v5, p4

    move-object v6, p5

    .line 179
    invoke-direct/range {v0 .. v7}, Lch/android/api/ui/ChPopUpTradeItemView;-><init>(Landroid/content/Context;Lch/android/api/util/DisplayInfo;IILch/kingdoms/ndk/data/Inven$Item;[Lch/kingdoms/ndk/data/Inven$Item;I)V

    .line 181
    .local v0, "tiv":Lch/android/api/ui/ChPopUpTradeItemView;
    invoke-virtual {v0, p6}, Lch/android/api/ui/ChPopUpTradeItemView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 182
    invoke-static {p0, v0}, Lch/android/api/ui/ChViewGen;->popUp(Landroid/app/Activity;Landroid/view/View;)Landroid/view/View;

    .line 183
    return-object v0

    .line 180
    .end local v0    # "tiv":Lch/android/api/ui/ChPopUpTradeItemView;
    :cond_0
    const/16 v4, 0xb

    goto :goto_0
.end method

.method public static popUpWareHouseView(Landroid/app/Activity;Lch/android/api/util/DisplayInfo;IILch/kingdoms/ndk/data/Inven$Item;[Lch/kingdoms/ndk/data/Inven$Item;Landroid/view/View$OnClickListener;)Lch/android/api/ui/ChPopUpTradeItemView;
    .locals 8
    .param p0, "_activity"    # Landroid/app/Activity;
    .param p1, "_di"    # Lch/android/api/util/DisplayInfo;
    .param p2, "_money"    # I
    .param p3, "_type"    # I
    .param p4, "_item"    # Lch/kingdoms/ndk/data/Inven$Item;
    .param p5, "_invenItems"    # [Lch/kingdoms/ndk/data/Inven$Item;
    .param p6, "_ocl"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 197
    new-instance v0, Lch/android/api/ui/ChPopUpTradeItemView;

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 198
    const v7, 0x7f020246

    move-object v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    move-object v6, p5

    .line 197
    invoke-direct/range {v0 .. v7}, Lch/android/api/ui/ChPopUpTradeItemView;-><init>(Landroid/content/Context;Lch/android/api/util/DisplayInfo;IILch/kingdoms/ndk/data/Inven$Item;[Lch/kingdoms/ndk/data/Inven$Item;I)V

    .line 199
    .local v0, "tiv":Lch/android/api/ui/ChPopUpTradeItemView;
    if-eqz p6, :cond_0

    .line 200
    invoke-virtual {v0, p6}, Lch/android/api/ui/ChPopUpTradeItemView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 202
    :cond_0
    invoke-static {p0, v0}, Lch/android/api/ui/ChViewGen;->popUp(Landroid/app/Activity;Landroid/view/View;)Landroid/view/View;

    .line 203
    return-object v0
.end method

.method public static releaseResourcesInViewGroup(Landroid/view/ViewGroup;)V
    .locals 7
    .param p0, "_vg"    # Landroid/view/ViewGroup;

    .prologue
    .line 358
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 359
    .local v1, "drawable":Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_0

    .line 360
    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 363
    :cond_0
    const/4 v2, 0x0

    .local v2, "i":I
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    .local v3, "size":I
    :goto_0
    if-lt v2, v3, :cond_1

    .line 374
    return-void

    .line 364
    :cond_1
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 365
    .local v0, "child":Landroid/view/View;
    instance-of v4, v0, Lch/android/api/ui/IChView;

    if-eqz v4, :cond_2

    .line 366
    check-cast v0, Lch/android/api/ui/IChView;

    .end local v0    # "child":Landroid/view/View;
    invoke-interface {v0}, Lch/android/api/ui/IChView;->releaseRsources()V

    .line 363
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 368
    .restart local v0    # "child":Landroid/view/View;
    :cond_2
    instance-of v4, v0, Landroid/view/ViewGroup;

    if-eqz v4, :cond_3

    .line 369
    check-cast v0, Landroid/view/ViewGroup;

    .end local v0    # "child":Landroid/view/View;
    invoke-static {v0}, Lch/android/api/ui/ChViewGen;->releaseResourcesInViewGroup(Landroid/view/ViewGroup;)V

    goto :goto_1

    .line 371
    .restart local v0    # "child":Landroid/view/View;
    :cond_3
    const-string v4, "IAP"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "releaseResourcesInViewGroup : "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method
