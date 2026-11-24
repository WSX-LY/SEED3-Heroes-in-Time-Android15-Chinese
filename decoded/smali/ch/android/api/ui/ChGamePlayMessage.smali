.class public Lch/android/api/ui/ChGamePlayMessage;
.super Ljava/lang/Object;
.source "ChGamePlayMessage.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lch/android/api/ui/ChGamePlayMessage$ProduceNameViewStaticRunnable;,
        Lch/android/api/ui/ChGamePlayMessage$ShowViewStackRunnable;
    }
.end annotation


# static fields
.field private static final SHOW_TIME:I = 0x5dc

.field private static curItemNameViewStackIndex:I

.field private static duplicatedTimeCount:I

.field private static handler:Landroid/os/Handler;

.field private static hideAllItemNameRunnable:Ljava/lang/Runnable;

.field private static hideItemNameRunnable:Ljava/lang/Runnable;

.field private static hideMapNameRunnable:Ljava/lang/Runnable;

.field private static hideWhaleSummonRunnable:Ljava/lang/Runnable;

.field private static itemName:Ljava/lang/String;

.field private static itemNameViews:[Lch/android/api/ui/ChTextView;

.field private static itemNames:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static layout:Lch/android/api/ui/ChLinearLayout;

.field private static mapName:Ljava/lang/String;

.field private static mapNameView:Lch/android/api/ui/ChTextView;

.field private static previousTime:J

.field private static produceNameViewStatckRunnables:[Lch/android/api/ui/ChGamePlayMessage$ProduceNameViewStaticRunnable;

.field private static res:Landroid/content/res/Resources;

.field private static showMapNameRunnable:Ljava/lang/Runnable;

.field private static showViewStackRunnables:[Lch/android/api/ui/ChGamePlayMessage$ShowViewStackRunnable;

.field private static showWhaleSummonRunnable:Ljava/lang/Runnable;

.field private static whale:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 149
    new-instance v1, Lch/android/api/ui/ChGamePlayMessage$1;

    invoke-direct {v1}, Lch/android/api/ui/ChGamePlayMessage$1;-><init>()V

    sput-object v1, Lch/android/api/ui/ChGamePlayMessage;->showWhaleSummonRunnable:Ljava/lang/Runnable;

    .line 158
    new-instance v1, Lch/android/api/ui/ChGamePlayMessage$2;

    invoke-direct {v1}, Lch/android/api/ui/ChGamePlayMessage$2;-><init>()V

    sput-object v1, Lch/android/api/ui/ChGamePlayMessage;->hideWhaleSummonRunnable:Ljava/lang/Runnable;

    .line 170
    new-instance v1, Lch/android/api/ui/ChGamePlayMessage$3;

    invoke-direct {v1}, Lch/android/api/ui/ChGamePlayMessage$3;-><init>()V

    sput-object v1, Lch/android/api/ui/ChGamePlayMessage;->showMapNameRunnable:Ljava/lang/Runnable;

    .line 181
    new-instance v1, Lch/android/api/ui/ChGamePlayMessage$4;

    invoke-direct {v1}, Lch/android/api/ui/ChGamePlayMessage$4;-><init>()V

    sput-object v1, Lch/android/api/ui/ChGamePlayMessage;->hideMapNameRunnable:Ljava/lang/Runnable;

    .line 277
    const/16 v1, 0xa

    new-array v1, v1, [Lch/android/api/ui/ChGamePlayMessage$ProduceNameViewStaticRunnable;

    sput-object v1, Lch/android/api/ui/ChGamePlayMessage;->produceNameViewStatckRunnables:[Lch/android/api/ui/ChGamePlayMessage$ProduceNameViewStaticRunnable;

    .line 278
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v1, Lch/android/api/ui/ChGamePlayMessage;->produceNameViewStatckRunnables:[Lch/android/api/ui/ChGamePlayMessage$ProduceNameViewStaticRunnable;

    array-length v1, v1

    if-lt v0, v1, :cond_0

    .line 304
    const/4 v1, 0x3

    new-array v1, v1, [Lch/android/api/ui/ChGamePlayMessage$ShowViewStackRunnable;

    sput-object v1, Lch/android/api/ui/ChGamePlayMessage;->showViewStackRunnables:[Lch/android/api/ui/ChGamePlayMessage$ShowViewStackRunnable;

    .line 305
    const/4 v0, 0x0

    :goto_1
    sget-object v1, Lch/android/api/ui/ChGamePlayMessage;->showViewStackRunnables:[Lch/android/api/ui/ChGamePlayMessage$ShowViewStackRunnable;

    array-length v1, v1

    if-lt v0, v1, :cond_1

    .line 336
    new-instance v1, Lch/android/api/ui/ChGamePlayMessage$5;

    invoke-direct {v1}, Lch/android/api/ui/ChGamePlayMessage$5;-><init>()V

    sput-object v1, Lch/android/api/ui/ChGamePlayMessage;->hideItemNameRunnable:Ljava/lang/Runnable;

    .line 379
    new-instance v1, Lch/android/api/ui/ChGamePlayMessage$6;

    invoke-direct {v1}, Lch/android/api/ui/ChGamePlayMessage$6;-><init>()V

    sput-object v1, Lch/android/api/ui/ChGamePlayMessage;->hideAllItemNameRunnable:Ljava/lang/Runnable;

    .line 23
    return-void

    .line 279
    :cond_0
    sget-object v1, Lch/android/api/ui/ChGamePlayMessage;->produceNameViewStatckRunnables:[Lch/android/api/ui/ChGamePlayMessage$ProduceNameViewStaticRunnable;

    new-instance v2, Lch/android/api/ui/ChGamePlayMessage$ProduceNameViewStaticRunnable;

    invoke-direct {v2, v3}, Lch/android/api/ui/ChGamePlayMessage$ProduceNameViewStaticRunnable;-><init>(Lch/android/api/ui/ChGamePlayMessage$ProduceNameViewStaticRunnable;)V

    aput-object v2, v1, v0

    .line 278
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 306
    :cond_1
    sget-object v1, Lch/android/api/ui/ChGamePlayMessage;->showViewStackRunnables:[Lch/android/api/ui/ChGamePlayMessage$ShowViewStackRunnable;

    new-instance v2, Lch/android/api/ui/ChGamePlayMessage$ShowViewStackRunnable;

    invoke-direct {v2, v3}, Lch/android/api/ui/ChGamePlayMessage$ShowViewStackRunnable;-><init>(Lch/android/api/ui/ChGamePlayMessage$ShowViewStackRunnable;)V

    aput-object v2, v1, v0

    .line 305
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0()Lch/android/api/ui/ChTextView;
    .locals 1

    .prologue
    .line 34
    sget-object v0, Lch/android/api/ui/ChGamePlayMessage;->mapNameView:Lch/android/api/ui/ChTextView;

    return-object v0
.end method

.method static synthetic access$1()Ljava/lang/String;
    .locals 1

    .prologue
    .line 33
    sget-object v0, Lch/android/api/ui/ChGamePlayMessage;->whale:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$10()Ljava/lang/Runnable;
    .locals 1

    .prologue
    .line 336
    sget-object v0, Lch/android/api/ui/ChGamePlayMessage;->hideItemNameRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$11()I
    .locals 1

    .prologue
    .line 39
    sget v0, Lch/android/api/ui/ChGamePlayMessage;->duplicatedTimeCount:I

    return v0
.end method

.method static synthetic access$12(I)V
    .locals 0

    .prologue
    .line 39
    sput p0, Lch/android/api/ui/ChGamePlayMessage;->duplicatedTimeCount:I

    return-void
.end method

.method static synthetic access$13()J
    .locals 2

    .prologue
    .line 40
    sget-wide v0, Lch/android/api/ui/ChGamePlayMessage;->previousTime:J

    return-wide v0
.end method

.method static synthetic access$14(J)V
    .locals 0

    .prologue
    .line 40
    sput-wide p0, Lch/android/api/ui/ChGamePlayMessage;->previousTime:J

    return-void
.end method

.method static synthetic access$2(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 33
    sput-object p0, Lch/android/api/ui/ChGamePlayMessage;->whale:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$3()Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    sget-object v0, Lch/android/api/ui/ChGamePlayMessage;->mapName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$4()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 29
    sget-object v0, Lch/android/api/ui/ChGamePlayMessage;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$5()Ljava/lang/Runnable;
    .locals 1

    .prologue
    .line 181
    sget-object v0, Lch/android/api/ui/ChGamePlayMessage;->hideMapNameRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$6()I
    .locals 1

    .prologue
    .line 37
    sget v0, Lch/android/api/ui/ChGamePlayMessage;->curItemNameViewStackIndex:I

    return v0
.end method

.method static synthetic access$7()[Lch/android/api/ui/ChTextView;
    .locals 1

    .prologue
    .line 42
    sget-object v0, Lch/android/api/ui/ChGamePlayMessage;->itemNameViews:[Lch/android/api/ui/ChTextView;

    return-object v0
.end method

.method static synthetic access$8()Ljava/util/concurrent/BlockingQueue;
    .locals 1

    .prologue
    .line 38
    sget-object v0, Lch/android/api/ui/ChGamePlayMessage;->itemNames:Ljava/util/concurrent/BlockingQueue;

    return-object v0
.end method

.method static synthetic access$9(I)V
    .locals 0

    .prologue
    .line 37
    sput p0, Lch/android/api/ui/ChGamePlayMessage;->curItemNameViewStackIndex:I

    return-void
.end method

.method public static init(Landroid/app/Activity;Lch/android/api/util/DisplayInfo;)Landroid/view/View;
    .locals 10
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "di"    # Lch/android/api/util/DisplayInfo;

    .prologue
    const/4 v9, 0x4

    const/4 v8, 0x0

    const/4 v7, 0x1

    const/4 v6, -0x1

    const/4 v5, -0x2

    .line 46
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sput-object v3, Lch/android/api/ui/ChGamePlayMessage;->res:Landroid/content/res/Resources;

    .line 47
    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    sput-object v3, Lch/android/api/ui/ChGamePlayMessage;->handler:Landroid/os/Handler;

    .line 49
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 50
    .local v0, "context":Landroid/content/Context;
    new-instance v3, Lch/android/api/ui/ChLinearLayout;

    invoke-direct {v3, v0}, Lch/android/api/ui/ChLinearLayout;-><init>(Landroid/content/Context;)V

    sput-object v3, Lch/android/api/ui/ChGamePlayMessage;->layout:Lch/android/api/ui/ChLinearLayout;

    .line 51
    sget-object v3, Lch/android/api/ui/ChGamePlayMessage;->layout:Lch/android/api/ui/ChLinearLayout;

    invoke-virtual {v3, v7}, Lch/android/api/ui/ChLinearLayout;->setOrientation(I)V

    .line 53
    new-instance v3, Lch/android/api/ui/ChTextView;

    invoke-direct {v3, v0}, Lch/android/api/ui/ChTextView;-><init>(Landroid/content/Context;)V

    sput-object v3, Lch/android/api/ui/ChGamePlayMessage;->mapNameView:Lch/android/api/ui/ChTextView;

    .line 54
    sget-object v3, Lch/android/api/ui/ChGamePlayMessage;->mapNameView:Lch/android/api/ui/ChTextView;

    invoke-virtual {v3, v6}, Lch/android/api/ui/ChTextView;->setTextColor(I)V

    .line 55
    sget-object v3, Lch/android/api/ui/ChGamePlayMessage;->mapNameView:Lch/android/api/ui/ChTextView;

    sget-object v4, Lch/android/api/util/TextPaints;->TYPE_FACE_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v3, v4}, Lch/android/api/ui/ChTextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 56
    sget-object v3, Lch/android/api/ui/ChGamePlayMessage;->mapNameView:Lch/android/api/ui/ChTextView;

    const/16 v4, 0x11

    invoke-virtual {v3, v4}, Lch/android/api/ui/ChTextView;->setGravity(I)V

    .line 57
    sget-object v3, Lch/android/api/ui/ChGamePlayMessage;->mapNameView:Lch/android/api/ui/ChTextView;

    const v4, 0x7f020203

    invoke-virtual {v3, v4}, Lch/android/api/ui/ChTextView;->setBackgroundResource(I)V

    .line 58
    sget-object v3, Lch/android/api/ui/ChGamePlayMessage;->mapNameView:Lch/android/api/ui/ChTextView;

    invoke-virtual {v3, v9}, Lch/android/api/ui/ChTextView;->setVisibility(I)V

    .line 60
    sput v8, Lch/android/api/ui/ChGamePlayMessage;->curItemNameViewStackIndex:I

    .line 61
    sput v8, Lch/android/api/ui/ChGamePlayMessage;->duplicatedTimeCount:I

    .line 62
    new-instance v3, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v3}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    sput-object v3, Lch/android/api/ui/ChGamePlayMessage;->itemNames:Ljava/util/concurrent/BlockingQueue;

    .line 64
    const/4 v3, 0x3

    new-array v3, v3, [Lch/android/api/ui/ChTextView;

    sput-object v3, Lch/android/api/ui/ChGamePlayMessage;->itemNameViews:[Lch/android/api/ui/ChTextView;

    .line 65
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    sget-object v3, Lch/android/api/ui/ChGamePlayMessage;->itemNameViews:[Lch/android/api/ui/ChTextView;

    array-length v3, v3

    if-lt v1, v3, :cond_0

    .line 74
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v5, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 75
    .local v2, "llp":Landroid/widget/LinearLayout$LayoutParams;
    iput v7, v2, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 76
    iget v3, p1, Lch/android/api/util/DisplayInfo;->density:F

    const/high16 v4, 0x42700000    # 60.0f

    mul-float/2addr v3, v4

    float-to-int v3, v3

    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 77
    iget v3, p1, Lch/android/api/util/DisplayInfo;->density:F

    const/high16 v4, 0x42960000    # 75.0f

    mul-float/2addr v3, v4

    float-to-int v3, v3

    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 78
    sget-object v3, Lch/android/api/ui/ChGamePlayMessage;->layout:Lch/android/api/ui/ChLinearLayout;

    sget-object v4, Lch/android/api/ui/ChGamePlayMessage;->mapNameView:Lch/android/api/ui/ChTextView;

    invoke-virtual {v3, v4, v2}, Lch/android/api/ui/ChLinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 79
    sget-object v3, Lch/android/api/ui/ChGamePlayMessage;->itemNameViews:[Lch/android/api/ui/ChTextView;

    array-length v3, v3

    add-int/lit8 v1, v3, -0x1

    :goto_1
    if-gt v1, v6, :cond_1

    .line 86
    sget-object v3, Lch/android/api/ui/ChGamePlayMessage;->layout:Lch/android/api/ui/ChLinearLayout;

    return-object v3

    .line 66
    .end local v2    # "llp":Landroid/widget/LinearLayout$LayoutParams;
    :cond_0
    sget-object v3, Lch/android/api/ui/ChGamePlayMessage;->itemNameViews:[Lch/android/api/ui/ChTextView;

    new-instance v4, Lch/android/api/ui/ChTextView;

    invoke-direct {v4, v0}, Lch/android/api/ui/ChTextView;-><init>(Landroid/content/Context;)V

    aput-object v4, v3, v1

    .line 67
    sget-object v3, Lch/android/api/ui/ChGamePlayMessage;->itemNameViews:[Lch/android/api/ui/ChTextView;

    aget-object v3, v3, v1

    const v4, 0x7f0200c9

    invoke-virtual {v3, v4}, Lch/android/api/ui/ChTextView;->setBackgroundResource(I)V

    .line 68
    sget-object v3, Lch/android/api/ui/ChGamePlayMessage;->itemNameViews:[Lch/android/api/ui/ChTextView;

    aget-object v3, v3, v1

    invoke-virtual {v3, v6}, Lch/android/api/ui/ChTextView;->setTextColor(I)V

    .line 69
    sget-object v3, Lch/android/api/ui/ChGamePlayMessage;->itemNameViews:[Lch/android/api/ui/ChTextView;

    aget-object v3, v3, v1

    sget-object v4, Lch/android/api/util/TextPaints;->TYPE_FACE_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v3, v4}, Lch/android/api/ui/ChTextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 70
    sget-object v3, Lch/android/api/ui/ChGamePlayMessage;->itemNameViews:[Lch/android/api/ui/ChTextView;

    aget-object v3, v3, v1

    const/16 v4, 0x11

    invoke-virtual {v3, v4}, Lch/android/api/ui/ChTextView;->setGravity(I)V

    .line 71
    sget-object v3, Lch/android/api/ui/ChGamePlayMessage;->itemNameViews:[Lch/android/api/ui/ChTextView;

    aget-object v3, v3, v1

    invoke-virtual {v3, v9}, Lch/android/api/ui/ChTextView;->setVisibility(I)V

    .line 65
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 80
    .restart local v2    # "llp":Landroid/widget/LinearLayout$LayoutParams;
    :cond_1
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    .end local v2    # "llp":Landroid/widget/LinearLayout$LayoutParams;
    invoke-direct {v2, v5, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 81
    .restart local v2    # "llp":Landroid/widget/LinearLayout$LayoutParams;
    iput v7, v2, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 82
    iget v3, p1, Lch/android/api/util/DisplayInfo;->density:F

    const/high16 v4, 0x40000000    # 2.0f

    mul-float/2addr v3, v4

    float-to-int v3, v3

    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 83
    sget-object v3, Lch/android/api/ui/ChGamePlayMessage;->layout:Lch/android/api/ui/ChLinearLayout;

    sget-object v4, Lch/android/api/ui/ChGamePlayMessage;->itemNameViews:[Lch/android/api/ui/ChTextView;

    aget-object v4, v4, v1

    invoke-virtual {v3, v4, v2}, Lch/android/api/ui/ChLinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 79
    add-int/lit8 v1, v1, -0x1

    goto :goto_1
.end method

.method public static popDownItemName()V
    .locals 2

    .prologue
    .line 245
    sget-object v0, Lch/android/api/ui/ChGamePlayMessage;->handler:Landroid/os/Handler;

    sget-object v1, Lch/android/api/ui/ChGamePlayMessage;->hideAllItemNameRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 246
    return-void
.end method

.method public static popDownMapName()V
    .locals 2

    .prologue
    .line 144
    sget-object v0, Lch/android/api/ui/ChGamePlayMessage;->handler:Landroid/os/Handler;

    sget-object v1, Lch/android/api/ui/ChGamePlayMessage;->hideMapNameRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 145
    return-void
.end method

.method public static popDownWhaleSumon()V
    .locals 2

    .prologue
    .line 138
    sget-object v0, Lch/android/api/ui/ChGamePlayMessage;->whale:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 139
    sget-object v0, Lch/android/api/ui/ChGamePlayMessage;->handler:Landroid/os/Handler;

    sget-object v1, Lch/android/api/ui/ChGamePlayMessage;->hideWhaleSummonRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 141
    :cond_0
    return-void
.end method

.method public static popUpItemName(Ljava/lang/String;)V
    .locals 4
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 194
    sput-object p0, Lch/android/api/ui/ChGamePlayMessage;->itemName:Ljava/lang/String;

    .line 196
    sget v1, Lch/android/api/ui/ChGamePlayMessage;->curItemNameViewStackIndex:I

    sget-object v2, Lch/android/api/ui/ChGamePlayMessage;->itemNameViews:[Lch/android/api/ui/ChTextView;

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    if-le v1, v2, :cond_1

    .line 197
    sget v1, Lch/android/api/ui/ChGamePlayMessage;->curItemNameViewStackIndex:I

    sget-object v2, Lch/android/api/ui/ChGamePlayMessage;->produceNameViewStatckRunnables:[Lch/android/api/ui/ChGamePlayMessage$ProduceNameViewStaticRunnable;

    array-length v2, v2

    if-ge v1, v2, :cond_0

    .line 201
    :try_start_0
    sget-object v1, Lch/android/api/ui/ChGamePlayMessage;->itemNames:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v1, p0}, Ljava/util/concurrent/BlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 212
    :cond_0
    :goto_0
    return-void

    .line 202
    :catch_0
    move-exception v0

    .line 204
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    .line 208
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :cond_1
    sget-object v1, Lch/android/api/ui/ChGamePlayMessage;->showViewStackRunnables:[Lch/android/api/ui/ChGamePlayMessage$ShowViewStackRunnable;

    sget v2, Lch/android/api/ui/ChGamePlayMessage;->curItemNameViewStackIndex:I

    aget-object v1, v1, v2

    sget v2, Lch/android/api/ui/ChGamePlayMessage;->curItemNameViewStackIndex:I

    invoke-virtual {v1, p0, v2}, Lch/android/api/ui/ChGamePlayMessage$ShowViewStackRunnable;->setName(Ljava/lang/String;I)V

    .line 209
    sget-object v1, Lch/android/api/ui/ChGamePlayMessage;->handler:Landroid/os/Handler;

    sget-object v2, Lch/android/api/ui/ChGamePlayMessage;->showViewStackRunnables:[Lch/android/api/ui/ChGamePlayMessage$ShowViewStackRunnable;

    sget v3, Lch/android/api/ui/ChGamePlayMessage;->curItemNameViewStackIndex:I

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 210
    sget v1, Lch/android/api/ui/ChGamePlayMessage;->curItemNameViewStackIndex:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Lch/android/api/ui/ChGamePlayMessage;->curItemNameViewStackIndex:I

    goto :goto_0
.end method

.method public static popUpItemName(Ljava/lang/String;I)V
    .locals 2
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "cnt"    # I

    .prologue
    .line 215
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lch/android/api/ui/ChGamePlayMessage;->popUpItemName(Ljava/lang/String;)V

    .line 216
    return-void
.end method

.method public static popUpItemNameNative([S)V
    .locals 4
    .param p0, "shorts"    # [S

    .prologue
    .line 220
    :try_start_0
    new-instance v1, Ljava/lang/String;

    invoke-static {p0}, Lch/kingdoms/ndk/NdkTextLoader;->shortArrayToByteArray([S)[B

    move-result-object v2

    const-string v3, "UTF-16"

    invoke-direct {v1, v2, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 221
    .local v1, "itemName":Ljava/lang/String;
    invoke-static {v1}, Lch/android/api/ui/ChGamePlayMessage;->popUpItemName(Ljava/lang/String;)V

    .line 222
    const/4 v2, 0x1

    invoke-static {v1, v2}, Lch/kingdoms/ndk/NdkUiEventManager;->updateQuickSlotItem(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 227
    .end local v1    # "itemName":Ljava/lang/String;
    :goto_0
    return-void

    .line 223
    :catch_0
    move-exception v0

    .line 225
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_0
.end method

.method public static popUpItemNameNative([SI)V
    .locals 4
    .param p0, "shorts"    # [S
    .param p1, "cnt"    # I

    .prologue
    .line 231
    :try_start_0
    new-instance v1, Ljava/lang/String;

    invoke-static {p0}, Lch/kingdoms/ndk/NdkTextLoader;->shortArrayToByteArray([S)[B

    move-result-object v2

    const-string v3, "UTF-16"

    invoke-direct {v1, v2, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 232
    .local v1, "itemName":Ljava/lang/String;
    invoke-static {v1, p1}, Lch/android/api/ui/ChGamePlayMessage;->popUpItemName(Ljava/lang/String;I)V

    .line 233
    invoke-static {v1, p1}, Lch/kingdoms/ndk/NdkUiEventManager;->updateQuickSlotItem(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 238
    .end local v1    # "itemName":Ljava/lang/String;
    :goto_0
    return-void

    .line 234
    :catch_0
    move-exception v0

    .line 236
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_0
.end method

.method public static popUpMapName(Ljava/lang/String;)V
    .locals 2
    .param p0, "txt"    # Ljava/lang/String;

    .prologue
    .line 100
    sput-object p0, Lch/android/api/ui/ChGamePlayMessage;->mapName:Ljava/lang/String;

    .line 101
    sget-object v0, Lch/android/api/ui/ChGamePlayMessage;->handler:Landroid/os/Handler;

    sget-object v1, Lch/android/api/ui/ChGamePlayMessage;->showMapNameRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 102
    return-void
.end method

.method public static popUpMapName([S)V
    .locals 4
    .param p0, "shorts"    # [S

    .prologue
    .line 91
    :try_start_0
    new-instance v1, Ljava/lang/String;

    invoke-static {p0}, Lch/kingdoms/ndk/NdkTextLoader;->shortArrayToByteArray([S)[B

    move-result-object v2

    const-string v3, "UTF-16"

    invoke-direct {v1, v2, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    sput-object v1, Lch/android/api/ui/ChGamePlayMessage;->mapName:Ljava/lang/String;

    .line 92
    sget-object v1, Lch/android/api/ui/ChGamePlayMessage;->handler:Landroid/os/Handler;

    sget-object v2, Lch/android/api/ui/ChGamePlayMessage;->showMapNameRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 97
    :goto_0
    return-void

    .line 93
    :catch_0
    move-exception v0

    .line 95
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_0
.end method

.method public static popUpMoneyNative(I)V
    .locals 3
    .param p0, "money"    # I

    .prologue
    .line 241
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lch/android/api/ui/ChGamePlayMessage;->res:Landroid/content/res/Resources;

    const v2, 0x7f05003e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lch/android/api/ui/ChGamePlayMessage;->popUpItemName(Ljava/lang/String;)V

    .line 242
    return-void
.end method

.method public static popUpQuest([SIII)V
    .locals 4
    .param p0, "shorts"    # [S
    .param p1, "type"    # I
    .param p2, "cnt"    # I
    .param p3, "total"    # I

    .prologue
    .line 106
    :try_start_0
    new-instance v1, Ljava/lang/String;

    invoke-static {p0}, Lch/kingdoms/ndk/NdkTextLoader;->shortArrayToByteArray([S)[B

    move-result-object v2

    const-string v3, "UTF-16"

    invoke-direct {v1, v2, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    sput-object v1, Lch/android/api/ui/ChGamePlayMessage;->mapName:Ljava/lang/String;

    .line 107
    packed-switch p1, :pswitch_data_0

    .line 115
    sget-object v1, Lch/android/api/ui/ChGamePlayMessage;->mapName:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v1, 0xa7

    invoke-static {v1}, Lch/kingdoms/ndk/NdkTextLoader;->getGameMenuTxt(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lch/android/api/ui/ChGamePlayMessage;->mapName:Ljava/lang/String;

    .line 118
    :goto_0
    sget-object v1, Lch/android/api/ui/ChGamePlayMessage;->handler:Landroid/os/Handler;

    sget-object v2, Lch/android/api/ui/ChGamePlayMessage;->showMapNameRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 123
    :goto_1
    return-void

    .line 109
    :pswitch_0
    sget-object v1, Lch/android/api/ui/ChGamePlayMessage;->mapName:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, " ( "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " / "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " )"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lch/android/api/ui/ChGamePlayMessage;->mapName:Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 119
    :catch_0
    move-exception v0

    .line 121
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_1

    .line 112
    .end local v0    # "e":Ljava/io/UnsupportedEncodingException;
    :pswitch_1
    :try_start_1
    sget-object v1, Lch/android/api/ui/ChGamePlayMessage;->mapName:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v1, 0xa6

    invoke-static {v1}, Lch/kingdoms/ndk/NdkTextLoader;->getGameMenuTxt(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lch/android/api/ui/ChGamePlayMessage;->mapName:Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 107
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static popUpTeleportDisable()V
    .locals 2

    .prologue
    .line 126
    const/16 v0, 0x61

    invoke-static {v0}, Lch/kingdoms/ndk/NdkTextLoader;->getGameMenuTxt(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lch/android/api/ui/ChGamePlayMessage;->mapName:Ljava/lang/String;

    .line 127
    sget-object v0, Lch/android/api/ui/ChGamePlayMessage;->handler:Landroid/os/Handler;

    sget-object v1, Lch/android/api/ui/ChGamePlayMessage;->showMapNameRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 128
    return-void
.end method

.method public static popUpWhaleSummon()V
    .locals 2

    .prologue
    .line 131
    sget-object v0, Lch/android/api/ui/ChGamePlayMessage;->whale:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 132
    const/16 v0, 0xa8

    invoke-static {v0}, Lch/kingdoms/ndk/NdkTextLoader;->getGameMenuTxt(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lch/android/api/ui/ChGamePlayMessage;->whale:Ljava/lang/String;

    .line 134
    :cond_0
    sget-object v0, Lch/android/api/ui/ChGamePlayMessage;->handler:Landroid/os/Handler;

    sget-object v1, Lch/android/api/ui/ChGamePlayMessage;->showWhaleSummonRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 135
    return-void
.end method
