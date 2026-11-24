.class Lch/kingdoms/android/ui/BlackSmithUi$BlackSmithView;
.super Lch/android/api/ui/ChRelativeLayout;
.source "BlackSmithUi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lch/kingdoms/android/ui/BlackSmithUi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BlackSmithView"
.end annotation


# instance fields
.field private final FAIL_ANIMATION:Lch/android/api/ui/ChAnimationDrawable;

.field private final LOAD_ANIMATION:Lch/android/api/ui/ChAnimationDrawable;

.field private final SMELT_BTN:Lch/android/api/ui/ChImageButton;

.field private final SUCCESS_ANIMAIOTN:Lch/android/api/ui/ChAnimationDrawable;

.field private final TITLE_VIEW:Lch/android/api/ui/ChTextView;

.field private closeBtn:Lch/android/api/ui/ChImageButton;

.field private infoImgView:Landroid/view/View;

.field private infoTxtView:Lch/android/api/ui/ChTextView;

.field private isConfirmPopUp:Z

.field private isItemInfoPopUped:Z

.field private resultAniImgView:Lch/android/api/ui/ChImageView;

.field final synthetic this$0:Lch/kingdoms/android/ui/BlackSmithUi;


# direct methods
.method public constructor <init>(Lch/kingdoms/android/ui/BlackSmithUi;Landroid/content/Context;Ljava/lang/String;)V
    .locals 11
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "name"    # Ljava/lang/String;

    .prologue
    .line 223
    iput-object p1, p0, Lch/kingdoms/android/ui/BlackSmithUi$BlackSmithView;->this$0:Lch/kingdoms/android/ui/BlackSmithUi;

    .line 224
    invoke-direct {p0, p2}, Lch/android/api/ui/ChRelativeLayout;-><init>(Landroid/content/Context;)V

    .line 435
    const/4 v8, 0x0

    iput-boolean v8, p0, Lch/kingdoms/android/ui/BlackSmithUi$BlackSmithView;->isItemInfoPopUped:Z

    .line 226
    const v8, 0x7f020029

    invoke-super {p0, v8}, Lch/android/api/ui/ChRelativeLayout;->setBackgroundResource(I)V

    .line 228
    const/16 v8, 0x16

    new-array v3, v8, [I

    fill-array-data v3, :array_0

    .line 233
    .local v3, "loadIds":[I
    invoke-direct {p0, p2, v3}, Lch/kingdoms/android/ui/BlackSmithUi$BlackSmithView;->generateAnimation(Landroid/content/Context;[I)Lch/android/api/ui/ChAnimationDrawable;

    move-result-object v8

    iput-object v8, p0, Lch/kingdoms/android/ui/BlackSmithUi$BlackSmithView;->LOAD_ANIMATION:Lch/android/api/ui/ChAnimationDrawable;

    .line 234
    iget-object v8, p0, Lch/kingdoms/android/ui/BlackSmithUi$BlackSmithView;->LOAD_ANIMATION:Lch/android/api/ui/ChAnimationDrawable;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Lch/android/api/ui/ChAnimationDrawable;->setOneShot(Z)V

    .line 235
    const/4 v8, 0x5

    new-array v7, v8, [I

    fill-array-data v7, :array_1

    .line 237
    .local v7, "successIds":[I
    invoke-direct {p0, p2, v7}, Lch/kingdoms/android/ui/BlackSmithUi$BlackSmithView;->generateAnimation(Landroid/content/Context;[I)Lch/android/api/ui/ChAnimationDrawable;

    move-result-object v8

    iput-object v8, p0, Lch/kingdoms/android/ui/BlackSmithUi$BlackSmithView;->SUCCESS_ANIMAIOTN:Lch/android/api/ui/ChAnimationDrawable;

    .line 238
    iget-object v8, p0, Lch/kingdoms/android/ui/BlackSmithUi$BlackSmithView;->SUCCESS_ANIMAIOTN:Lch/android/api/ui/ChAnimationDrawable;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Lch/android/api/ui/ChAnimationDrawable;->setOneShot(Z)V

    .line 239
    const/16 v8, 0xe

    new-array v1, v8, [I

    fill-array-data v1, :array_2

    .line 243
    .local v1, "failIds":[I
    invoke-direct {p0, p2, v1}, Lch/kingdoms/android/ui/BlackSmithUi$BlackSmithView;->generateAnimation(Landroid/content/Context;[I)Lch/android/api/ui/ChAnimationDrawable;

    move-result-object v8

    iput-object v8, p0, Lch/kingdoms/android/ui/BlackSmithUi$BlackSmithView;->FAIL_ANIMATION:Lch/android/api/ui/ChAnimationDrawable;

    .line 244
    iget-object v8, p0, Lch/kingdoms/android/ui/BlackSmithUi$BlackSmithView;->FAIL_ANIMATION:Lch/android/api/ui/ChAnimationDrawable;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Lch/android/api/ui/ChAnimationDrawable;->setOneShot(Z)V

    .line 249
    invoke-static {p1}, Lch/kingdoms/android/ui/BlackSmithUi;->access$0(Lch/kingdoms/android/ui/BlackSmithUi;)I

    move-result v8

    packed-switch v8, :pswitch_data_0

    .line 267
    const/4 v5, 0x4

    .line 268
    .local v5, "resultType":I
    const/16 v8, 0x76

    invoke-static {v8}, Lch/kingdoms/ndk/NdkTextLoader;->getGameMenuTxt(I)Ljava/lang/String;

    move-result-object v0

    .line 269
    .local v0, "confirmTxt":Ljava/lang/String;
    const/16 v8, 0x8a

    invoke-static {v8}, Lch/kingdoms/ndk/NdkTextLoader;->getGameMenuTxt(I)Ljava/lang/String;

    move-result-object v4

    .line 273
    .local v4, "loadTxt":Ljava/lang/String;
    :goto_0
    new-instance v8, Lch/android/api/ui/ChTextView;

    invoke-direct {v8, p2}, Lch/android/api/ui/ChTextView;-><init>(Landroid/content/Context;)V

    iput-object v8, p0, Lch/kingdoms/android/ui/BlackSmithUi$BlackSmithView;->TITLE_VIEW:Lch/android/api/ui/ChTextView;

    .line 274
    iget-object v8, p0, Lch/kingdoms/android/ui/BlackSmithUi$BlackSmithView;->TITLE_VIEW:Lch/android/api/ui/ChTextView;

    invoke-virtual {v8, p3}, Lch/android/api/ui/ChTextView;->setText(Ljava/lang/CharSequence;)V

    .line 275
    iget-object v8, p0, Lch/kingdoms/android/ui/BlackSmithUi$BlackSmithView;->TITLE_VIEW:Lch/android/api/ui/ChTextView;

    sget-object v9, Lch/android/api/util/TextPaints;->TYPE_FACE_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v8, v9}, Lch/android/api/ui/ChTextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 276
    iget-object v8, p0, Lch/kingdoms/android/ui/BlackSmithUi$BlackSmithView;->TITLE_VIEW:Lch/android/api/ui/ChTextView;

    const/16 v9, -0x100

    invoke-virtual {v8, v9}, Lch/android/api/ui/ChTextView;->setTextColor(I)V

    .line 277
    iget-object v8, p0, Lch/kingdoms/android/ui/BlackSmithUi$BlackSmithView;->TITLE_VIEW:Lch/android/api/ui/ChTextView;

    const/16 v9, 0x50

    invoke-virtual {v8, v9}, Lch/android/api/ui/ChTextView;->setGravity(I)V

    .line 278
    new-instance v8, Lch/android/api/ui/ChImageButton;

    const v9, 0x7f0202a3

    const v10, 0x7f0202a2

    invoke-direct {v8, p2, v9, v10}, Lch/android/api/ui/ChImageButton;-><init>(Landroid/content/Context;II)V

    iput-object v8, p0, Lch/kingdoms/android/ui/BlackSmithUi$BlackSmithView;->SMELT_BTN:Lch/android/api/ui/ChImageButton;

    .line 279
    new-instance v8, Lch/android/api/ui/ChImageButton;

    const v9, 0x7f02007a

    const v10, 0x7f02007a

    invoke-direct {v8, p2, v9, v10}, Lch/android/api/ui/ChImageButton;-><init>(Landroid/content/Context;II)V

    iput-object v8, p0, Lch/kingdoms/android/ui/BlackSmithUi$BlackSmithView;->closeBtn:Lch/android/api/ui/ChImageButton;

    .line 280
    iget-object v8, p0, Lch/kingdoms/android/ui/BlackSmithUi$BlackSmithView;->closeBtn:Lch/android/api/ui/ChImageButton;

    new-instance v9, Lch/kingdoms/android/ui/BlackSmithUi$BlackSmithView$1;

    invoke-direct {v9, p0}, Lch/kingdoms/android/ui/BlackSmithUi$BlackSmithView$1;-><init>(Lch/kingdoms/android/ui/BlackSmithUi$BlackSmithView;)V

    invoke-virtual {v8, v9}, Lch/android/api/ui/ChImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 292
    invoke-static {p1}, Lch/kingdoms/android/ui/BlackSmithUi;->access$0(Lch/kingdoms/android/ui/BlackSmithUi;)I

    move-result v8

    invoke-direct {p0, v8}, Lch/kingdoms/android/ui/BlackSmithUi$BlackSmithView;->setInfoImgView(I)V

    .line 294
    new-instance v6, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v8, -0x2

    const/4 v9, -0x2

    invoke-direct {v6, v8, v9}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 295
    .local v6, "rlp":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v8, 0xa

    invoke-virtual {v6, v8}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 296
    const/16 v8, 0xe

    invoke-virtual {v6, v8}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 297
    invoke-static {p1}, Lch/kingdoms/android/ui/BlackSmithUi;->access$2(Lch/kingdoms/android/ui/BlackSmithUi;)Lch/android/api/util/DisplayInfo;

    move-result-object v8

    iget v8, v8, Lch/android/api/util/DisplayInfo;->density:F

    const/high16 v9, 0x41b80000    # 23.0f

    mul-float/2addr v8, v9

    float-to-int v8, v8

    iput v8, v6, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 298
    iget-object v8, p0, Lch/kingdoms/android/ui/BlackSmithUi$BlackSmithView;->TITLE_VIEW:Lch/android/api/ui/ChTextView;

    invoke-virtual {p0, v8, v6}, Lch/kingdoms/android/ui/BlackSmithUi$BlackSmithView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 301
    new-instance v6, Landroid/widget/RelativeLayout$LayoutParams;

    .end local v6    # "rlp":Landroid/widget/RelativeLayout$LayoutParams;
    const/4 v8, -0x2

    const/4 v9, -0x2

    invoke-direct {v6, v8, v9}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 302
    .restart local v6    # "rlp":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v8, 0xc

    invoke-virtual {v6, v8}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 303
    const/16 v8, 0xe

    invoke-virtual {v6, v8}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 304
    iget-object v8, p0, Lch/kingdoms/android/ui/BlackSmithUi$BlackSmithView;->SMELT_BTN:Lch/android/api/ui/ChImageButton;

    invoke-virtual {p0, v8, v6}, Lch/kingdoms/android/ui/BlackSmithUi$BlackSmithView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 307
    new-instance v6, Landroid/widget/RelativeLayout$LayoutParams;

    .end local v6    # "rlp":Landroid/widget/RelativeLayout$LayoutParams;
    const/4 v8, -0x2

    const/4 v9, -0x2

    invoke-direct {v6, v8, v9}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 308
    .restart local v6    # "rlp":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v8, 0xb

    invoke-virtual {v6, v8}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 309
    const/16 v8, 0xa

    invoke-virtual {v6, v8}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 310
    invoke-static {p1}, Lch/kingdoms/android/ui/BlackSmithUi;->access$2(Lch/kingdoms/android/ui/BlackSmithUi;)Lch/android/api/util/DisplayInfo;

    move-result-object v8

    iget v8, v8, Lch/android/api/util/DisplayInfo;->density:F

    const/high16 v9, 0x41e00000    # 28.0f

    mul-float/2addr v8, v9

    float-to-int v8, v8

    iput v8, v6, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    iput v8, v6, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    .line 311
    iget-object v8, p0, Lch/kingdoms/android/ui/BlackSmithUi$BlackSmithView;->closeBtn:Lch/android/api/ui/ChImageButton;

    invoke-virtual {p0, v8, v6}, Lch/kingdoms/android/ui/BlackSmithUi$BlackSmithView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 315
    iget-object v8, p0, Lch/kingdoms/android/ui/BlackSmithUi$BlackSmithView;->SMELT_BTN:Lch/android/api/ui/ChImageButton;

    new-instance v9, Lch/kingdoms/android/ui/BlackSmithUi$BlackSmithView$2;

    invoke-direct {v9, p0, v0, v5, v4}, Lch/kingdoms/android/ui/BlackSmithUi$BlackSmithView$2;-><init>(Lch/kingdoms/android/ui/BlackSmithUi$BlackSmithView;Ljava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v8, v9}, Lch/android/api/ui/ChImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 386
    invoke-static {}, Lch/kingdoms/ndk/NdkUiEventManager;->callNativeGetInven()Lch/kingdoms/ndk/data/Inven;

    move-result-object v8

    invoke-virtual {v8}, Lch/kingdoms/ndk/data/Inven;->getItems()[Lch/kingdoms/ndk/data/Inven$Item;

    move-result-object v2

    .line 387
    .local v2, "items":[Lch/kingdoms/ndk/data/Inven$Item;
    sget-boolean v8, Lch/android/api/util/Consts;->DEBUG:Z

    if-eqz v8, :cond_0

    .line 388
    const-string v8, "KD"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "BLACK_SMITH:["

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lch/kingdoms/android/ui/BlackSmithUi;->access$4(Lch/kingdoms/android/ui/BlackSmithUi;)I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "]"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {p1}, Lch/kingdoms/android/ui/BlackSmithUi;->access$4(Lch/kingdoms/android/ui/BlackSmithUi;)I

    move-result v10

    aget-object v10, v2, v10

    iget-object v10, v10, Lch/kingdoms/ndk/data/Inven$Item;->name:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 389
    const-string v10, ", ["

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {p1}, Lch/kingdoms/android/ui/BlackSmithUi;->access$5(Lch/kingdoms/android/ui/BlackSmithUi;)I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "]"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {p1}, Lch/kingdoms/android/ui/BlackSmithUi;->access$5(Lch/kingdoms/android/ui/BlackSmithUi;)I

    move-result v10

    aget-object v10, v2, v10

    iget-object v10, v10, Lch/kingdoms/ndk/data/Inven$Item;->name:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 388
    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 392
    :cond_0
    const/4 v8, 0x0

    iput-boolean v8, p0, Lch/kingdoms/android/ui/BlackSmithUi$BlackSmithView;->isConfirmPopUp:Z

    .line 393
    return-void

    .line 251
    .end local v0    # "confirmTxt":Ljava/lang/String;
    .end local v2    # "items":[Lch/kingdoms/ndk/data/Inven$Item;
    .end local v4    # "loadTxt":Ljava/lang/String;
    .end local v5    # "resultType":I
    .end local v6    # "rlp":Landroid/widget/RelativeLayout$LayoutParams;
    :pswitch_0
    const/4 v5, 0x1

    .line 252
    .restart local v5    # "resultType":I
    const/16 v8, 0x73

    invoke-static {v8}, Lch/kingdoms/ndk/NdkTextLoader;->getGameMenuTxt(I)Ljava/lang/String;

    move-result-object v0

    .line 253
    .restart local v0    # "confirmTxt":Ljava/lang/String;
    const/16 v8, 0x87

    invoke-static {v8}, Lch/kingdoms/ndk/NdkTextLoader;->getGameMenuTxt(I)Ljava/lang/String;

    move-result-object v4

    .line 254
    .restart local v4    # "loadTxt":Ljava/lang/String;
    goto/16 :goto_0

    .line 256
    .end local v0    # "confirmTxt":Ljava/lang/String;
    .end local v4    # "loadTxt":Ljava/lang/String;
    .end local v5    # "resultType":I
    :pswitch_1
    const/4 v5, 0x2

    .line 257
    .restart local v5    # "resultType":I
    const/16 v8, 0x79

    invoke-static {v8}, Lch/kingdoms/ndk/NdkTextLoader;->getGameMenuTxt(I)Ljava/lang/String;

    move-result-object v0

    .line 258
    .restart local v0    # "confirmTxt":Ljava/lang/String;
    const/16 v8, 0x88

    invoke-static {v8}, Lch/kingdoms/ndk/NdkTextLoader;->getGameMenuTxt(I)Ljava/lang/String;

    move-result-object v4

    .line 259
    .restart local v4    # "loadTxt":Ljava/lang/String;
    goto/16 :goto_0

    .line 261
    .end local v0    # "confirmTxt":Ljava/lang/String;
    .end local v4    # "loadTxt":Ljava/lang/String;
    .end local v5    # "resultType":I
    :pswitch_2
    const/4 v5, 0x3

    .line 262
    .restart local v5    # "resultType":I
    const/16 v8, 0x7c

    invoke-static {v8}, Lch/kingdoms/ndk/NdkTextLoader;->getGameMenuTxt(I)Ljava/lang/String;

    move-result-object v0

    .line 263
    .restart local v0    # "confirmTxt":Ljava/lang/String;
    const/16 v8, 0x89

    invoke-static {v8}, Lch/kingdoms/ndk/NdkTextLoader;->getGameMenuTxt(I)Ljava/lang/String;

    move-result-object v4

    .line 264
    .restart local v4    # "loadTxt":Ljava/lang/String;
    goto/16 :goto_0

    .line 228
    nop

    :array_0
    .array-data 4
        0x7f020048
        0x7f020049
        0x7f02004a
        0x7f02004b
        0x7f02004c
        0x7f02004d
        0x7f02004e
        0x7f02004f
        0x7f020050
        0x7f020051
        0x7f020052
        0x7f020053
        0x7f020030
        0x7f020031
        0x7f020032
        0x7f020033
        0x7f020035
        0x7f020036
        0x7f020037
        0x7f020038
        0x7f020039
        0x7f02003a
    .end array-data

    .line 235
    :array_1
    .array-data 4
        0x7f020054
        0x7f020055
        0x7f020056
        0x7f020057
        0x7f020058
    .end array-data

    .line 239
    :array_2
    .array-data 4
        0x7f02003b
        0x7f02003c
        0x7f02003d
        0x7f02003e
        0x7f02003f
        0x7f020040
        0x7f020041
        0x7f020042
        0x7f020043
        0x7f020043
        0x7f020044
        0x7f020045
        0x7f020046
        0x7f020047
    .end array-data

    .line 249
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method static synthetic access$0(Lch/kingdoms/android/ui/BlackSmithUi$BlackSmithView;)Z
    .locals 1

    .prologue
    .line 221
    iget-boolean v0, p0, Lch/kingdoms/android/ui/BlackSmithUi$BlackSmithView;->isConfirmPopUp:Z

    return v0
.end method

.method static synthetic access$1(Lch/kingdoms/android/ui/BlackSmithUi$BlackSmithView;Z)V
    .locals 0

    .prologue
    .line 221
    iput-boolean p1, p0, Lch/kingdoms/android/ui/BlackSmithUi$BlackSmithView;->isConfirmPopUp:Z

    return-void
.end method

.method static synthetic access$10(Lch/kingdoms/android/ui/BlackSmithUi$BlackSmithView;)Lch/android/api/ui/ChImageButton;
    .locals 1

    .prologue
    .line 216
    iget-object v0, p0, Lch/kingdoms/android/ui/BlackSmithUi$BlackSmithView;->closeBtn:Lch/android/api/ui/ChImageButton;

    return-object v0
.end method

.method static synthetic access$11(Lch/kingdoms/android/ui/BlackSmithUi$BlackSmithView;)Lch/android/api/ui/ChAnimationDrawable;
    .locals 1

    .prologue
    .line 217
    iget-object v0, p0, Lch/kingdoms/android/ui/BlackSmithUi$BlackSmithView;->LOAD_ANIMATION:Lch/android/api/ui/ChAnimationDrawable;

    return-object v0
.end method

.method static synthetic access$12(Lch/kingdoms/android/ui/BlackSmithUi$BlackSmithView;)Lch/kingdoms/android/ui/BlackSmithUi;
    .locals 1

    .prologue
    .line 210
    iget-object v0, p0, Lch/kingdoms/android/ui/BlackSmithUi$BlackSmithView;->this$0:Lch/kingdoms/android/ui/BlackSmithUi;

    return-object v0
.end method

.method static synthetic access$2(Lch/kingdoms/android/ui/BlackSmithUi$BlackSmithView;ILjava/lang/String;)V
    .locals 0

    .prologue
    .line 436
    invoke-direct {p0, p1, p2}, Lch/kingdoms/android/ui/BlackSmithUi$BlackSmithView;->setResultAniView(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$3(Lch/kingdoms/android/ui/BlackSmithUi$BlackSmithView;)Z
    .locals 1

    .prologue
    .line 435
    iget-boolean v0, p0, Lch/kingdoms/android/ui/BlackSmithUi$BlackSmithView;->isItemInfoPopUped:Z

    return v0
.end method

.method static synthetic access$4(Lch/kingdoms/android/ui/BlackSmithUi$BlackSmithView;I)V
    .locals 0

    .prologue
    .line 583
    invoke-direct {p0, p1}, Lch/kingdoms/android/ui/BlackSmithUi$BlackSmithView;->setCloseProcess(I)V

    return-void
.end method

.method static synthetic access$5(Lch/kingdoms/android/ui/BlackSmithUi$BlackSmithView;)Lch/android/api/ui/ChAnimationDrawable;
    .locals 1

    .prologue
    .line 218
    iget-object v0, p0, Lch/kingdoms/android/ui/BlackSmithUi$BlackSmithView;->SUCCESS_ANIMAIOTN:Lch/android/api/ui/ChAnimationDrawable;

    return-object v0
.end method

.method static synthetic access$6(Lch/kingdoms/android/ui/BlackSmithUi$BlackSmithView;)Lch/android/api/ui/ChAnimationDrawable;
    .locals 1

    .prologue
    .line 219
    iget-object v0, p0, Lch/kingdoms/android/ui/BlackSmithUi$BlackSmithView;->FAIL_ANIMATION:Lch/android/api/ui/ChAnimationDrawable;

    return-object v0
.end method

.method static synthetic access$7(Lch/kingdoms/android/ui/BlackSmithUi$BlackSmithView;)Lch/android/api/ui/ChTextView;
    .locals 1

    .prologue
    .line 215
    iget-object v0, p0, Lch/kingdoms/android/ui/BlackSmithUi$BlackSmithView;->infoTxtView:Lch/android/api/ui/ChTextView;

    return-object v0
.end method

.method static synthetic access$8(Lch/kingdoms/android/ui/BlackSmithUi$BlackSmithView;Z)V
    .locals 0

    .prologue
    .line 435
    iput-boolean p1, p0, Lch/kingdoms/android/ui/BlackSmithUi$BlackSmithView;->isItemInfoPopUped:Z

    return-void
.end method

.method static synthetic access$9(Lch/kingdoms/android/ui/BlackSmithUi$BlackSmithView;)Lch/android/api/ui/ChImageView;
    .locals 1

    .prologue
    .line 214
    iget-object v0, p0, Lch/kingdoms/android/ui/BlackSmithUi$BlackSmithView;->resultAniImgView:Lch/android/api/ui/ChImageView;

    return-object v0
.end method

.method private generateAnimation(Landroid/content/Context;[I)Lch/android/api/ui/ChAnimationDrawable;
    .locals 7
    .param p1, "_context"    # Landroid/content/Context;
    .param p2, "_ids"    # [I

    .prologue
    const/4 v6, 0x1

    .line 616
    new-instance v0, Lch/android/api/ui/ChAnimationDrawable;

    invoke-direct {v0}, Lch/android/api/ui/ChAnimationDrawable;-><init>()V

    .line 618
    .local v0, "ad":Lch/android/api/ui/ChAnimationDrawable;
    array-length v4, p2

    const/4 v3, 0x0

    :goto_0
    if-lt v3, v4, :cond_0

    .line 623
    invoke-virtual {v0, v6, v6}, Lch/android/api/ui/ChAnimationDrawable;->setVisible(ZZ)Z

    .line 625
    return-object v0

    .line 618
    :cond_0
    aget v2, p2, v3

    .line 619
    .local v2, "id":I
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/BitmapDrawable;

    .line 620
    .local v1, "drawable":Landroid/graphics/drawable/Drawable;
    const/16 v5, 0x96

    invoke-virtual {v0, v1, v5}, Lch/android/api/ui/ChAnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 618
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method private setCloseProcess(I)V
    .locals 4
    .param p1, "result"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v2, -0x1

    .line 584
    iget-object v0, p0, Lch/kingdoms/android/ui/BlackSmithUi$BlackSmithView;->this$0:Lch/kingdoms/android/ui/BlackSmithUi;

    invoke-static {v0}, Lch/kingdoms/android/ui/BlackSmithUi;->access$0(Lch/kingdoms/android/ui/BlackSmithUi;)I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lch/kingdoms/android/ui/BlackSmithUi$BlackSmithView;->this$0:Lch/kingdoms/android/ui/BlackSmithUi;

    invoke-static {v0}, Lch/kingdoms/android/ui/BlackSmithUi;->access$0(Lch/kingdoms/android/ui/BlackSmithUi;)I

    move-result v0

    if-eq v0, v3, :cond_0

    iget-object v0, p0, Lch/kingdoms/android/ui/BlackSmithUi$BlackSmithView;->this$0:Lch/kingdoms/android/ui/BlackSmithUi;

    invoke-static {v0}, Lch/kingdoms/android/ui/BlackSmithUi;->access$0(Lch/kingdoms/android/ui/BlackSmithUi;)I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    .line 585
    :cond_0
    iget-object v0, p0, Lch/kingdoms/android/ui/BlackSmithUi$BlackSmithView;->this$0:Lch/kingdoms/android/ui/BlackSmithUi;

    invoke-static {v0}, Lch/kingdoms/android/ui/BlackSmithUi;->access$10(Lch/kingdoms/android/ui/BlackSmithUi;)Lch/kingdoms/ndk/data/Inven$Item;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lch/kingdoms/android/ui/BlackSmithUi$BlackSmithView;->this$0:Lch/kingdoms/android/ui/BlackSmithUi;

    invoke-static {v0}, Lch/kingdoms/android/ui/BlackSmithUi;->access$10(Lch/kingdoms/android/ui/BlackSmithUi;)Lch/kingdoms/ndk/data/Inven$Item;

    move-result-object v0

    iget v0, v0, Lch/kingdoms/ndk/data/Inven$Item;->num:I

    invoke-static {v0}, Lch/kingdoms/ndk/NdkUiEventManager;->isItemExist(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 586
    iget-object v0, p0, Lch/kingdoms/android/ui/BlackSmithUi$BlackSmithView;->this$0:Lch/kingdoms/android/ui/BlackSmithUi;

    invoke-static {v0, v2}, Lch/kingdoms/android/ui/BlackSmithUi;->access$9(Lch/kingdoms/android/ui/BlackSmithUi;I)V

    .line 587
    iget-object v0, p0, Lch/kingdoms/android/ui/BlackSmithUi$BlackSmithView;->this$0:Lch/kingdoms/android/ui/BlackSmithUi;

    invoke-static {v0, v3}, Lch/kingdoms/android/ui/BlackSmithUi;->access$12(Lch/kingdoms/android/ui/BlackSmithUi;I)V

    .line 605
    :goto_0
    return-void

    .line 589
    :cond_1
    iget-object v0, p0, Lch/kingdoms/android/ui/BlackSmithUi$BlackSmithView;->this$0:Lch/kingdoms/android/ui/BlackSmithUi;

    invoke-static {v0, v2}, Lch/kingdoms/android/ui/BlackSmithUi;->access$11(Lch/kingdoms/android/ui/BlackSmithUi;I)V

    .line 590
    iget-object v0, p0, Lch/kingdoms/android/ui/BlackSmithUi$BlackSmithView;->this$0:Lch/kingdoms/android/ui/BlackSmithUi;

    invoke-static {v0, v2}, Lch/kingdoms/android/ui/BlackSmithUi;->access$9(Lch/kingdoms/android/ui/BlackSmithUi;I)V

    .line 591
    iget-object v0, p0, Lch/kingdoms/android/ui/BlackSmithUi$BlackSmithView;->this$0:Lch/kingdoms/android/ui/BlackSmithUi;

    invoke-static {v0}, Lch/kingdoms/android/ui/BlackSmithUi;->access$1(Lch/kingdoms/android/ui/BlackSmithUi;)V

    goto :goto_0

    .line 595
    :cond_2
    const/16 v0, 0x10c

    invoke-static {v0}, Lch/kingdoms/ndk/NdkUiEventManager;->isItemExist(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 596
    iget-object v0, p0, Lch/kingdoms/android/ui/BlackSmithUi$BlackSmithView;->this$0:Lch/kingdoms/android/ui/BlackSmithUi;

    invoke-static {v0, v2}, Lch/kingdoms/android/ui/BlackSmithUi;->access$11(Lch/kingdoms/android/ui/BlackSmithUi;I)V

    .line 597
    iget-object v0, p0, Lch/kingdoms/android/ui/BlackSmithUi$BlackSmithView;->this$0:Lch/kingdoms/android/ui/BlackSmithUi;

    invoke-static {v0, v2}, Lch/kingdoms/android/ui/BlackSmithUi;->access$9(Lch/kingdoms/android/ui/BlackSmithUi;I)V

    .line 598
    iget-object v0, p0, Lch/kingdoms/android/ui/BlackSmithUi$BlackSmithView;->this$0:Lch/kingdoms/android/ui/BlackSmithUi;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lch/kingdoms/android/ui/BlackSmithUi;->access$12(Lch/kingdoms/android/ui/BlackSmithUi;I)V

    goto :goto_0

    .line 600
    :cond_3
    iget-object v0, p0, Lch/kingdoms/android/ui/BlackSmithUi$BlackSmithView;->this$0:Lch/kingdoms/android/ui/BlackSmithUi;

    invoke-static {v0, v2}, Lch/kingdoms/android/ui/BlackSmithUi;->access$11(Lch/kingdoms/android/ui/BlackSmithUi;I)V

    .line 601
    iget-object v0, p0, Lch/kingdoms/android/ui/BlackSmithUi$BlackSmithView;->this$0:Lch/kingdoms/android/ui/BlackSmithUi;

    invoke-static {v0, v2}, Lch/kingdoms/android/ui/BlackSmithUi;->access$9(Lch/kingdoms/android/ui/BlackSmithUi;I)V

    .line 602
    iget-object v0, p0, Lch/kingdoms/android/ui/BlackSmithUi$BlackSmithView;->this$0:Lch/kingdoms/android/ui/BlackSmithUi;

    invoke-static {v0}, Lch/kingdoms/android/ui/BlackSmithUi;->access$1(Lch/kingdoms/android/ui/BlackSmithUi;)V

    goto :goto_0
.end method

.method private setInfoImgView(I)V
    .locals 10
    .param p1, "_type"    # I

    .prologue
    const/4 v4, 0x0

    const/4 v9, -0x2

    .line 396
    iget-object v5, p0, Lch/kingdoms/android/ui/BlackSmithUi$BlackSmithView;->resultAniImgView:Lch/android/api/ui/ChImageView;

    invoke-virtual {p0, v5}, Lch/kingdoms/android/ui/BlackSmithUi$BlackSmithView;->removeView(Landroid/view/View;)V

    .line 397
    iget-object v5, p0, Lch/kingdoms/android/ui/BlackSmithUi$BlackSmithView;->infoTxtView:Lch/android/api/ui/ChTextView;

    invoke-virtual {p0, v5}, Lch/kingdoms/android/ui/BlackSmithUi$BlackSmithView;->removeView(Landroid/view/View;)V

    .line 398
    iget-object v5, p0, Lch/kingdoms/android/ui/BlackSmithUi$BlackSmithView;->SMELT_BTN:Lch/android/api/ui/ChImageButton;

    invoke-virtual {v5, v4}, Lch/android/api/ui/ChImageButton;->setVisibility(I)V

    .line 399
    iget-object v5, p0, Lch/kingdoms/android/ui/BlackSmithUi$BlackSmithView;->SMELT_BTN:Lch/android/api/ui/ChImageButton;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lch/android/api/ui/ChImageButton;->setEnabled(Z)V

    .line 401
    iget-object v5, p0, Lch/kingdoms/android/ui/BlackSmithUi$BlackSmithView;->this$0:Lch/kingdoms/android/ui/BlackSmithUi;

    invoke-static {v5}, Lch/kingdoms/android/ui/BlackSmithUi;->access$0(Lch/kingdoms/android/ui/BlackSmithUi;)I

    move-result v5

    packed-switch v5, :pswitch_data_0

    .line 430
    :goto_0
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v9, v9}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 431
    .local v2, "rlp":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v4, 0xd

    invoke-virtual {v2, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 432
    iget-object v4, p0, Lch/kingdoms/android/ui/BlackSmithUi$BlackSmithView;->infoImgView:Landroid/view/View;

    invoke-virtual {p0, v4, v2}, Lch/kingdoms/android/ui/BlackSmithUi$BlackSmithView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 433
    return-void

    .line 404
    .end local v2    # "rlp":Landroid/widget/RelativeLayout$LayoutParams;
    :pswitch_0
    invoke-static {}, Lch/kingdoms/ndk/NdkUiEventManager;->callNativeGetInven()Lch/kingdoms/ndk/data/Inven;

    move-result-object v4

    invoke-virtual {v4}, Lch/kingdoms/ndk/data/Inven;->getItems()[Lch/kingdoms/ndk/data/Inven$Item;

    move-result-object v1

    .line 405
    .local v1, "items":[Lch/kingdoms/ndk/data/Inven$Item;
    new-instance v4, Lch/android/api/ui/ChUpgradeImageView;

    invoke-virtual {p0}, Lch/kingdoms/android/ui/BlackSmithUi$BlackSmithView;->getContext()Landroid/content/Context;

    move-result-object v5

    iget-object v6, p0, Lch/kingdoms/android/ui/BlackSmithUi$BlackSmithView;->this$0:Lch/kingdoms/android/ui/BlackSmithUi;

    invoke-static {v6}, Lch/kingdoms/android/ui/BlackSmithUi;->access$2(Lch/kingdoms/android/ui/BlackSmithUi;)Lch/android/api/util/DisplayInfo;

    move-result-object v6

    iget-object v7, p0, Lch/kingdoms/android/ui/BlackSmithUi$BlackSmithView;->this$0:Lch/kingdoms/android/ui/BlackSmithUi;

    invoke-static {v7}, Lch/kingdoms/android/ui/BlackSmithUi;->access$4(Lch/kingdoms/android/ui/BlackSmithUi;)I

    move-result v7

    aget-object v7, v1, v7

    iget-object v8, p0, Lch/kingdoms/android/ui/BlackSmithUi$BlackSmithView;->this$0:Lch/kingdoms/android/ui/BlackSmithUi;

    invoke-static {v8}, Lch/kingdoms/android/ui/BlackSmithUi;->access$5(Lch/kingdoms/android/ui/BlackSmithUi;)I

    move-result v8

    aget-object v8, v1, v8

    invoke-direct {v4, v5, v6, v7, v8}, Lch/android/api/ui/ChUpgradeImageView;-><init>(Landroid/content/Context;Lch/android/api/util/DisplayInfo;Lch/kingdoms/ndk/data/Inven$Item;Lch/kingdoms/ndk/data/Inven$Item;)V

    iput-object v4, p0, Lch/kingdoms/android/ui/BlackSmithUi$BlackSmithView;->infoImgView:Landroid/view/View;

    .line 406
    iget-object v4, p0, Lch/kingdoms/android/ui/BlackSmithUi$BlackSmithView;->this$0:Lch/kingdoms/android/ui/BlackSmithUi;

    iget-object v5, p0, Lch/kingdoms/android/ui/BlackSmithUi$BlackSmithView;->this$0:Lch/kingdoms/android/ui/BlackSmithUi;

    invoke-static {v5}, Lch/kingdoms/android/ui/BlackSmithUi;->access$4(Lch/kingdoms/android/ui/BlackSmithUi;)I

    move-result v5

    aget-object v5, v1, v5

    invoke-static {v4, v5}, Lch/kingdoms/android/ui/BlackSmithUi;->access$6(Lch/kingdoms/android/ui/BlackSmithUi;Lch/kingdoms/ndk/data/Inven$Item;)V

    .line 407
    iget-object v4, p0, Lch/kingdoms/android/ui/BlackSmithUi$BlackSmithView;->this$0:Lch/kingdoms/android/ui/BlackSmithUi;

    iget-object v5, p0, Lch/kingdoms/android/ui/BlackSmithUi$BlackSmithView;->this$0:Lch/kingdoms/android/ui/BlackSmithUi;

    invoke-static {v5}, Lch/kingdoms/android/ui/BlackSmithUi;->access$5(Lch/kingdoms/android/ui/BlackSmithUi;)I

    move-result v5

    aget-object v5, v1, v5

    invoke-static {v4, v5}, Lch/kingdoms/android/ui/BlackSmithUi;->access$7(Lch/kingdoms/android/ui/BlackSmithUi;Lch/kingdoms/ndk/data/Inven$Item;)V

    goto :goto_0

    .line 410
    .end local v1    # "items":[Lch/kingdoms/ndk/data/Inven$Item;
    :pswitch_1
    invoke-static {}, Lch/kingdoms/ndk/NdkUiEventManager;->callNativeGetInven()Lch/kingdoms/ndk/data/Inven;

    move-result-object v5

    invoke-virtual {v5}, Lch/kingdoms/ndk/data/Inven;->getItems()[Lch/kingdoms/ndk/data/Inven$Item;

    move-result-object v1

    .line 411
    .restart local v1    # "items":[Lch/kingdoms/ndk/data/Inven$Item;
    const/4 v3, 0x0

    .line 412
    .local v3, "stoneItem":Lch/kingdoms/ndk/data/Inven$Item;
    array-length v5, v1

    :goto_1
    if-lt v4, v5, :cond_0

    .line 418
    :goto_2
    new-instance v4, Lch/android/api/ui/ChUpgradeImageView;

    invoke-virtual {p0}, Lch/kingdoms/android/ui/BlackSmithUi$BlackSmithView;->getContext()Landroid/content/Context;

    move-result-object v5

    iget-object v6, p0, Lch/kingdoms/android/ui/BlackSmithUi$BlackSmithView;->this$0:Lch/kingdoms/android/ui/BlackSmithUi;

    invoke-static {v6}, Lch/kingdoms/android/ui/BlackSmithUi;->access$2(Lch/kingdoms/android/ui/BlackSmithUi;)Lch/android/api/util/DisplayInfo;

    move-result-object v6

    iget-object v7, p0, Lch/kingdoms/android/ui/BlackSmithUi$BlackSmithView;->this$0:Lch/kingdoms/android/ui/BlackSmithUi;

    invoke-static {v7}, Lch/kingdoms/android/ui/BlackSmithUi;->access$5(Lch/kingdoms/android/ui/BlackSmithUi;)I

    move-result v7

    aget-object v7, v1, v7

    invoke-direct {v4, v5, v6, v3, v7}, Lch/android/api/ui/ChUpgradeImageView;-><init>(Landroid/content/Context;Lch/android/api/util/DisplayInfo;Lch/kingdoms/ndk/data/Inven$Item;Lch/kingdoms/ndk/data/Inven$Item;)V

    iput-object v4, p0, Lch/kingdoms/android/ui/BlackSmithUi$BlackSmithView;->infoImgView:Landroid/view/View;

    .line 419
    iget-object v4, p0, Lch/kingdoms/android/ui/BlackSmithUi$BlackSmithView;->this$0:Lch/kingdoms/android/ui/BlackSmithUi;

    invoke-static {v4, v3}, Lch/kingdoms/android/ui/BlackSmithUi;->access$6(Lch/kingdoms/android/ui/BlackSmithUi;Lch/kingdoms/ndk/data/Inven$Item;)V

    .line 420
    iget-object v4, p0, Lch/kingdoms/android/ui/BlackSmithUi$BlackSmithView;->this$0:Lch/kingdoms/android/ui/BlackSmithUi;

    iget-object v5, p0, Lch/kingdoms/android/ui/BlackSmithUi$BlackSmithView;->this$0:Lch/kingdoms/android/ui/BlackSmithUi;

    invoke-static {v5}, Lch/kingdoms/android/ui/BlackSmithUi;->access$5(Lch/kingdoms/android/ui/BlackSmithUi;)I

    move-result v5

    aget-object v5, v1, v5

    invoke-static {v4, v5}, Lch/kingdoms/android/ui/BlackSmithUi;->access$7(Lch/kingdoms/android/ui/BlackSmithUi;Lch/kingdoms/ndk/data/Inven$Item;)V

    goto/16 :goto_0

    .line 412
    :cond_0
    aget-object v0, v1, v4

    .line 413
    .local v0, "item":Lch/kingdoms/ndk/data/Inven$Item;
    iget v6, v0, Lch/kingdoms/ndk/data/Inven$Item;->num:I

    const/16 v7, 0x10c

    if-ne v6, v7, :cond_1

    .line 414
    move-object v3, v0

    .line 415
    goto :goto_2

    .line 412
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 423
    .end local v0    # "item":Lch/kingdoms/ndk/data/Inven$Item;
    .end local v1    # "items":[Lch/kingdoms/ndk/data/Inven$Item;
    .end local v3    # "stoneItem":Lch/kingdoms/ndk/data/Inven$Item;
    :pswitch_2
    invoke-static {}, Lch/kingdoms/ndk/NdkUiEventManager;->callNativeGetInven()Lch/kingdoms/ndk/data/Inven;

    move-result-object v4

    invoke-virtual {v4}, Lch/kingdoms/ndk/data/Inven;->getItems()[Lch/kingdoms/ndk/data/Inven$Item;

    move-result-object v1

    .line 425
    .restart local v1    # "items":[Lch/kingdoms/ndk/data/Inven$Item;
    new-instance v4, Lch/android/api/ui/ChMixImageView;

    invoke-virtual {p0}, Lch/kingdoms/android/ui/BlackSmithUi$BlackSmithView;->getContext()Landroid/content/Context;

    move-result-object v5

    iget-object v6, p0, Lch/kingdoms/android/ui/BlackSmithUi$BlackSmithView;->this$0:Lch/kingdoms/android/ui/BlackSmithUi;

    invoke-static {v6}, Lch/kingdoms/android/ui/BlackSmithUi;->access$2(Lch/kingdoms/android/ui/BlackSmithUi;)Lch/android/api/util/DisplayInfo;

    move-result-object v6

    iget-object v7, p0, Lch/kingdoms/android/ui/BlackSmithUi$BlackSmithView;->this$0:Lch/kingdoms/android/ui/BlackSmithUi;

    invoke-static {v7}, Lch/kingdoms/android/ui/BlackSmithUi;->access$4(Lch/kingdoms/android/ui/BlackSmithUi;)I

    move-result v7

    aget-object v7, v1, v7

    iget-object v8, p0, Lch/kingdoms/android/ui/BlackSmithUi$BlackSmithView;->this$0:Lch/kingdoms/android/ui/BlackSmithUi;

    invoke-static {v8}, Lch/kingdoms/android/ui/BlackSmithUi;->access$5(Lch/kingdoms/android/ui/BlackSmithUi;)I

    move-result v8

    aget-object v8, v1, v8

    invoke-direct {v4, v5, v6, v7, v8}, Lch/android/api/ui/ChMixImageView;-><init>(Landroid/content/Context;Lch/android/api/util/DisplayInfo;Lch/kingdoms/ndk/data/Inven$Item;Lch/kingdoms/ndk/data/Inven$Item;)V

    iput-object v4, p0, Lch/kingdoms/android/ui/BlackSmithUi$BlackSmithView;->infoImgView:Landroid/view/View;

    .line 426
    iget-object v4, p0, Lch/kingdoms/android/ui/BlackSmithUi$BlackSmithView;->this$0:Lch/kingdoms/android/ui/BlackSmithUi;

    iget-object v5, p0, Lch/kingdoms/android/ui/BlackSmithUi$BlackSmithView;->this$0:Lch/kingdoms/android/ui/BlackSmithUi;

    invoke-static {v5}, Lch/kingdoms/android/ui/BlackSmithUi;->access$4(Lch/kingdoms/android/ui/BlackSmithUi;)I

    move-result v5

    aget-object v5, v1, v5

    invoke-static {v4, v5}, Lch/kingdoms/android/ui/BlackSmithUi;->access$6(Lch/kingdoms/android/ui/BlackSmithUi;Lch/kingdoms/ndk/data/Inven$Item;)V

    .line 427
    iget-object v4, p0, Lch/kingdoms/android/ui/BlackSmithUi$BlackSmithView;->this$0:Lch/kingdoms/android/ui/BlackSmithUi;

    iget-object v5, p0, Lch/kingdoms/android/ui/BlackSmithUi$BlackSmithView;->this$0:Lch/kingdoms/android/ui/BlackSmithUi;

    invoke-static {v5}, Lch/kingdoms/android/ui/BlackSmithUi;->access$5(Lch/kingdoms/android/ui/BlackSmithUi;)I

    move-result v5

    aget-object v5, v1, v5

    invoke-static {v4, v5}, Lch/kingdoms/android/ui/BlackSmithUi;->access$7(Lch/kingdoms/android/ui/BlackSmithUi;Lch/kingdoms/ndk/data/Inven$Item;)V

    goto/16 :goto_0

    .line 401
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private setResultAniView(ILjava/lang/String;)V
    .locals 11
    .param p1, "_result"    # I
    .param p2, "_loadTxt"    # Ljava/lang/String;

    .prologue
    const v10, 0xf4240

    const/16 v9, 0xe

    const/4 v8, -0x2

    .line 437
    const v0, 0xf4240

    .line 438
    .local v0, "RID_ESULT_ANI_VIEW":I
    iget-object v6, p0, Lch/kingdoms/android/ui/BlackSmithUi$BlackSmithView;->infoImgView:Landroid/view/View;

    invoke-virtual {p0, v6}, Lch/kingdoms/android/ui/BlackSmithUi$BlackSmithView;->removeView(Landroid/view/View;)V

    .line 439
    iget-object v6, p0, Lch/kingdoms/android/ui/BlackSmithUi$BlackSmithView;->SMELT_BTN:Lch/android/api/ui/ChImageButton;

    const/4 v7, 0x4

    invoke-virtual {v6, v7}, Lch/android/api/ui/ChImageButton;->setVisibility(I)V

    .line 440
    iget-object v6, p0, Lch/kingdoms/android/ui/BlackSmithUi$BlackSmithView;->SMELT_BTN:Lch/android/api/ui/ChImageButton;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lch/android/api/ui/ChImageButton;->setEnabled(Z)V

    .line 441
    iget-object v6, p0, Lch/kingdoms/android/ui/BlackSmithUi$BlackSmithView;->this$0:Lch/kingdoms/android/ui/BlackSmithUi;

    invoke-static {v6}, Lch/kingdoms/android/ui/BlackSmithUi;->access$3(Lch/kingdoms/android/ui/BlackSmithUi;)Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 442
    .local v1, "appContext":Landroid/content/Context;
    new-instance v6, Lch/android/api/ui/ChImageView;

    invoke-direct {v6, v1}, Lch/android/api/ui/ChImageView;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Lch/kingdoms/android/ui/BlackSmithUi$BlackSmithView;->resultAniImgView:Lch/android/api/ui/ChImageView;

    .line 443
    iget-object v6, p0, Lch/kingdoms/android/ui/BlackSmithUi$BlackSmithView;->resultAniImgView:Lch/android/api/ui/ChImageView;

    invoke-virtual {v6, v10}, Lch/android/api/ui/ChImageView;->setId(I)V

    .line 444
    new-instance v6, Lch/android/api/ui/ChTextView;

    invoke-direct {v6, v1}, Lch/android/api/ui/ChTextView;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Lch/kingdoms/android/ui/BlackSmithUi$BlackSmithView;->infoTxtView:Lch/android/api/ui/ChTextView;

    .line 445
    iget-object v6, p0, Lch/kingdoms/android/ui/BlackSmithUi$BlackSmithView;->infoTxtView:Lch/android/api/ui/ChTextView;

    const/16 v7, 0x11

    invoke-virtual {v6, v7}, Lch/android/api/ui/ChTextView;->setGravity(I)V

    .line 446
    iget-object v6, p0, Lch/kingdoms/android/ui/BlackSmithUi$BlackSmithView;->infoTxtView:Lch/android/api/ui/ChTextView;

    const v7, 0x7f020264

    invoke-virtual {v6, v7}, Lch/android/api/ui/ChTextView;->setBackgroundResource(I)V

    .line 447
    iget-object v6, p0, Lch/kingdoms/android/ui/BlackSmithUi$BlackSmithView;->infoTxtView:Lch/android/api/ui/ChTextView;

    invoke-virtual {v6, p2}, Lch/android/api/ui/ChTextView;->setText(Ljava/lang/CharSequence;)V

    .line 449
    iget-object v6, p0, Lch/kingdoms/android/ui/BlackSmithUi$BlackSmithView;->closeBtn:Lch/android/api/ui/ChImageButton;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lch/android/api/ui/ChImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 451
    new-instance v3, Lch/kingdoms/android/ui/BlackSmithUi$BlackSmithView$3;

    invoke-direct {v3, p0, p1}, Lch/kingdoms/android/ui/BlackSmithUi$BlackSmithView$3;-><init>(Lch/kingdoms/android/ui/BlackSmithUi$BlackSmithView;I)V

    .line 465
    .local v3, "ocl":Landroid/view/View$OnClickListener;
    iget-object v6, p0, Lch/kingdoms/android/ui/BlackSmithUi$BlackSmithView;->resultAniImgView:Lch/android/api/ui/ChImageView;

    iget-object v7, p0, Lch/kingdoms/android/ui/BlackSmithUi$BlackSmithView;->LOAD_ANIMATION:Lch/android/api/ui/ChAnimationDrawable;

    invoke-virtual {v6, v7}, Lch/android/api/ui/ChImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 466
    iget-object v6, p0, Lch/kingdoms/android/ui/BlackSmithUi$BlackSmithView;->LOAD_ANIMATION:Lch/android/api/ui/ChAnimationDrawable;

    new-instance v7, Lch/kingdoms/android/ui/BlackSmithUi$BlackSmithView$4;

    invoke-direct {v7, p0, p1, v3}, Lch/kingdoms/android/ui/BlackSmithUi$BlackSmithView$4;-><init>(Lch/kingdoms/android/ui/BlackSmithUi$BlackSmithView;ILandroid/view/View$OnClickListener;)V

    invoke-virtual {v6, v7}, Lch/android/api/ui/ChAnimationDrawable;->setOnFinishCallback(Ljava/lang/Runnable;)V

    .line 563
    new-instance v4, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v4, v8, v8}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 564
    .local v4, "rlp1":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v6, 0xa

    invoke-virtual {v4, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 565
    invoke-virtual {v4, v9}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 566
    iget-object v6, p0, Lch/kingdoms/android/ui/BlackSmithUi$BlackSmithView;->this$0:Lch/kingdoms/android/ui/BlackSmithUi;

    invoke-static {v6}, Lch/kingdoms/android/ui/BlackSmithUi;->access$2(Lch/kingdoms/android/ui/BlackSmithUi;)Lch/android/api/util/DisplayInfo;

    move-result-object v6

    iget v6, v6, Lch/android/api/util/DisplayInfo;->density:F

    const/high16 v7, 0x42680000    # 58.0f

    mul-float/2addr v6, v7

    float-to-int v6, v6

    iput v6, v4, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 567
    iget-object v6, p0, Lch/kingdoms/android/ui/BlackSmithUi$BlackSmithView;->resultAniImgView:Lch/android/api/ui/ChImageView;

    invoke-virtual {p0, v6, v4}, Lch/kingdoms/android/ui/BlackSmithUi$BlackSmithView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 568
    new-instance v5, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v5, v8, v8}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 569
    .local v5, "rlp2":Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {v5, v9}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 570
    const/4 v6, 0x3

    invoke-virtual {v5, v6, v10}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 571
    iget-object v6, p0, Lch/kingdoms/android/ui/BlackSmithUi$BlackSmithView;->infoTxtView:Lch/android/api/ui/ChTextView;

    invoke-virtual {p0, v6, v5}, Lch/kingdoms/android/ui/BlackSmithUi$BlackSmithView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 573
    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    .line 574
    .local v2, "handler":Landroid/os/Handler;
    new-instance v6, Lch/kingdoms/android/ui/BlackSmithUi$BlackSmithView$5;

    invoke-direct {v6, p0}, Lch/kingdoms/android/ui/BlackSmithUi$BlackSmithView$5;-><init>(Lch/kingdoms/android/ui/BlackSmithUi$BlackSmithView;)V

    invoke-virtual {v2, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 581
    return-void
.end method


# virtual methods
.method protected onMeasure(II)V
    .locals 3
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const v2, 0x7f020029

    .line 611
    invoke-super {p0, p1, p2}, Lch/android/api/ui/ChRelativeLayout;->onMeasure(II)V

    .line 612
    iget-object v0, p0, Lch/kingdoms/android/ui/BlackSmithUi$BlackSmithView;->this$0:Lch/kingdoms/android/ui/BlackSmithUi;

    invoke-static {v0}, Lch/kingdoms/android/ui/BlackSmithUi;->access$13(Lch/kingdoms/android/ui/BlackSmithUi;)Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0, v2}, Lch/android/api/util/BmpUtil;->getBmpWidth(Landroid/content/res/Resources;I)I

    move-result v0

    iget-object v1, p0, Lch/kingdoms/android/ui/BlackSmithUi$BlackSmithView;->this$0:Lch/kingdoms/android/ui/BlackSmithUi;

    invoke-static {v1}, Lch/kingdoms/android/ui/BlackSmithUi;->access$13(Lch/kingdoms/android/ui/BlackSmithUi;)Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v1, v2}, Lch/android/api/util/BmpUtil;->getBmpHeight(Landroid/content/res/Resources;I)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lch/kingdoms/android/ui/BlackSmithUi$BlackSmithView;->setMeasuredDimension(II)V

    .line 613
    return-void
.end method
