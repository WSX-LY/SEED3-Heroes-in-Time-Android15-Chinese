.class public Lch/android/api/util/DisplayInfo;
.super Landroid/util/DisplayMetrics;
.source "DisplayInfo.java"


# static fields
.field private static displayInfo:Lch/android/api/util/DisplayInfo;

.field private static screenStartX:I


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 15
    return-void
.end method

.method private static checkDisplayMetrics(Landroid/util/DisplayMetrics;)V
    .locals 3
    .param p0, "_metrics"    # Landroid/util/DisplayMetrics;

    .prologue
    .line 45
    iget v1, p0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v2, p0, Landroid/util/DisplayMetrics;->heightPixels:I

    if-ge v1, v2, :cond_0

    .line 46
    const-string v1, "KD"

    const-string v2, "DisplayInfo.checkDisplayMetrics : widthPixels < heightPixels"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    iget v0, p0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 48
    .local v0, "temp":I
    iget v1, p0, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v1, p0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 49
    iput v0, p0, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 60
    .end local v0    # "temp":I
    :cond_0
    return-void
.end method

.method public static getInstance()Lch/android/api/util/DisplayInfo;
    .locals 2

    .prologue
    .line 28
    sget-object v0, Lch/android/api/util/DisplayInfo;->displayInfo:Lch/android/api/util/DisplayInfo;

    if-nez v0, :cond_0

    .line 29
    const-string v0, "KD"

    const-string v1, "DisplayInfo.getInstance : displayInfo is null : "

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    :cond_0
    sget-object v0, Lch/android/api/util/DisplayInfo;->displayInfo:Lch/android/api/util/DisplayInfo;

    return-object v0
.end method

.method public static getInstance(Landroid/view/WindowManager;)Lch/android/api/util/DisplayInfo;
    .locals 2
    .param p0, "wm_"    # Landroid/view/WindowManager;

    .prologue
    .line 18
    sget-object v0, Lch/android/api/util/DisplayInfo;->displayInfo:Lch/android/api/util/DisplayInfo;

    if-nez v0, :cond_0

    .line 19
    new-instance v0, Lch/android/api/util/DisplayInfo;

    invoke-direct {v0}, Lch/android/api/util/DisplayInfo;-><init>()V

    sput-object v0, Lch/android/api/util/DisplayInfo;->displayInfo:Lch/android/api/util/DisplayInfo;

    .line 20
    invoke-interface {p0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    sget-object v1, Lch/android/api/util/DisplayInfo;->displayInfo:Lch/android/api/util/DisplayInfo;

    invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V



    .line 24
    :cond_0
    sget-object v0, Lch/android/api/util/DisplayInfo;->displayInfo:Lch/android/api/util/DisplayInfo;

    return-object v0
.end method

.method public static getScreenStartX()I
    .locals 1

    .prologue
    .line 84
    sget v0, Lch/android/api/util/DisplayInfo;->screenStartX:I

    return v0
.end method


# virtual methods
.method public init(Landroid/view/WindowManager;)V
    .locals 2
    .param p1, "wm_"    # Landroid/view/WindowManager;

    .prologue
    .line 36
    invoke-interface {p1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    sget-object v1, Lch/android/api/util/DisplayInfo;->displayInfo:Lch/android/api/util/DisplayInfo;

    invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V



    .line 37
    sget-object v0, Lch/android/api/util/DisplayInfo;->displayInfo:Lch/android/api/util/DisplayInfo;

    invoke-static {v0}, Lch/android/api/util/DisplayInfo;->checkDisplayMetrics(Landroid/util/DisplayMetrics;)V

    .line 38
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 90
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Display Info \ndensity : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lch/android/api/util/DisplayInfo;->displayInfo:Lch/android/api/util/DisplayInfo;

    iget v2, v2, Lch/android/api/util/DisplayInfo;->density:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\nWidth : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 91
    sget-object v2, Lch/android/api/util/DisplayInfo;->displayInfo:Lch/android/api/util/DisplayInfo;

    iget v2, v2, Lch/android/api/util/DisplayInfo;->widthPixels:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", Height : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lch/android/api/util/DisplayInfo;->displayInfo:Lch/android/api/util/DisplayInfo;

    iget v2, v2, Lch/android/api/util/DisplayInfo;->heightPixels:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 90
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 92
    .local v0, "txt":Ljava/lang/String;
    return-object v0
.end method
