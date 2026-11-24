.class Lch/kingdoms/android/dpad/Dpad$DButtonPoints;
.super Ljava/lang/Object;
.source "Dpad.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lch/kingdoms/android/dpad/Dpad;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DButtonPoints"
.end annotation


# instance fields
.field private final bottomMargins:[I

.field private final leftMargins:[I

.field final synthetic this$0:Lch/kingdoms/android/dpad/Dpad;


# direct methods
.method public constructor <init>(Lch/kingdoms/android/dpad/Dpad;Lch/android/api/util/DisplayInfo;)V
    .locals 9
    .param p2, "di"    # Lch/android/api/util/DisplayInfo;

    .prologue
    const/4 v8, 0x1

    const/4 v4, 0x0

    const/high16 v7, 0x43020000    # 130.0f

    const/high16 v6, 0x42700000    # 60.0f

    const/high16 v5, 0x41400000    # 12.0f

    .line 617
    iput-object p1, p0, Lch/kingdoms/android/dpad/Dpad$DButtonPoints;->this$0:Lch/kingdoms/android/dpad/Dpad;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 614
    const/4 v0, 0x7

    new-array v0, v0, [I

    iput-object v0, p0, Lch/kingdoms/android/dpad/Dpad$DButtonPoints;->leftMargins:[I

    .line 615
    const/4 v0, 0x7

    new-array v0, v0, [I

    iput-object v0, p0, Lch/kingdoms/android/dpad/Dpad$DButtonPoints;->bottomMargins:[I

    .line 618
    iget-object v0, p0, Lch/kingdoms/android/dpad/Dpad$DButtonPoints;->leftMargins:[I

    iget v1, p2, Lch/android/api/util/DisplayInfo;->widthPixels:I

    iget v2, p2, Lch/android/api/util/DisplayInfo;->density:F

    const/high16 v3, 0x438c0000    # 280.0f

    mul-float/2addr v2, v3

    float-to-int v2, v2

    sub-int/2addr v1, v2

    aput v1, v0, v4

    .line 619
    iget-object v0, p0, Lch/kingdoms/android/dpad/Dpad$DButtonPoints;->bottomMargins:[I

    iget v1, p2, Lch/android/api/util/DisplayInfo;->density:F

    mul-float/2addr v1, v5

    float-to-int v1, v1

    aput v1, v0, v4

    .line 621
    iget-object v0, p0, Lch/kingdoms/android/dpad/Dpad$DButtonPoints;->leftMargins:[I

    iget v1, p2, Lch/android/api/util/DisplayInfo;->widthPixels:I

    iget v2, p2, Lch/android/api/util/DisplayInfo;->density:F

    const/high16 v3, 0x43660000    # 230.0f

    mul-float/2addr v2, v3

    float-to-int v2, v2

    sub-int/2addr v1, v2

    aput v1, v0, v8

    .line 622
    iget-object v0, p0, Lch/kingdoms/android/dpad/Dpad$DButtonPoints;->bottomMargins:[I

    iget v1, p2, Lch/android/api/util/DisplayInfo;->density:F

    mul-float/2addr v1, v5

    float-to-int v1, v1

    aput v1, v0, v8

    .line 624
    iget-object v0, p0, Lch/kingdoms/android/dpad/Dpad$DButtonPoints;->leftMargins:[I

    const/4 v1, 0x2

    iget v2, p2, Lch/android/api/util/DisplayInfo;->widthPixels:I

    iget v3, p2, Lch/android/api/util/DisplayInfo;->density:F

    const/high16 v4, 0x43340000    # 180.0f

    mul-float/2addr v3, v4

    float-to-int v3, v3

    sub-int/2addr v2, v3

    aput v2, v0, v1

    .line 625
    iget-object v0, p0, Lch/kingdoms/android/dpad/Dpad$DButtonPoints;->bottomMargins:[I

    const/4 v1, 0x2

    iget v2, p2, Lch/android/api/util/DisplayInfo;->density:F

    mul-float/2addr v2, v5

    float-to-int v2, v2

    aput v2, v0, v1

    .line 627
    iget-object v0, p0, Lch/kingdoms/android/dpad/Dpad$DButtonPoints;->leftMargins:[I

    const/4 v1, 0x3

    iget v2, p2, Lch/android/api/util/DisplayInfo;->widthPixels:I

    iget v3, p2, Lch/android/api/util/DisplayInfo;->density:F

    mul-float/2addr v3, v7

    float-to-int v3, v3

    sub-int/2addr v2, v3

    aput v2, v0, v1

    .line 628
    iget-object v0, p0, Lch/kingdoms/android/dpad/Dpad$DButtonPoints;->bottomMargins:[I

    const/4 v1, 0x3

    iget v2, p2, Lch/android/api/util/DisplayInfo;->density:F

    mul-float/2addr v2, v5

    float-to-int v2, v2

    aput v2, v0, v1

    .line 630
    iget-object v0, p0, Lch/kingdoms/android/dpad/Dpad$DButtonPoints;->leftMargins:[I

    const/4 v1, 0x4

    iget v2, p2, Lch/android/api/util/DisplayInfo;->widthPixels:I

    iget v3, p2, Lch/android/api/util/DisplayInfo;->density:F

    const/high16 v4, 0x42dc0000    # 110.0f

    mul-float/2addr v3, v4

    float-to-int v3, v3

    sub-int/2addr v2, v3

    aput v2, v0, v1

    .line 631
    iget-object v0, p0, Lch/kingdoms/android/dpad/Dpad$DButtonPoints;->bottomMargins:[I

    const/4 v1, 0x4

    iget v2, p2, Lch/android/api/util/DisplayInfo;->density:F

    const/high16 v3, 0x42820000    # 65.0f

    mul-float/2addr v2, v3

    float-to-int v2, v2

    aput v2, v0, v1

    .line 633
    iget-object v0, p0, Lch/kingdoms/android/dpad/Dpad$DButtonPoints;->leftMargins:[I

    const/4 v1, 0x5

    iget v2, p2, Lch/android/api/util/DisplayInfo;->widthPixels:I

    iget v3, p2, Lch/android/api/util/DisplayInfo;->density:F

    mul-float/2addr v3, v6

    float-to-int v3, v3

    sub-int/2addr v2, v3

    aput v2, v0, v1

    .line 634
    iget-object v0, p0, Lch/kingdoms/android/dpad/Dpad$DButtonPoints;->bottomMargins:[I

    const/4 v1, 0x5

    iget v2, p2, Lch/android/api/util/DisplayInfo;->density:F

    const/high16 v3, 0x42a00000    # 80.0f

    mul-float/2addr v2, v3

    float-to-int v2, v2

    aput v2, v0, v1

    .line 636
    iget-object v0, p0, Lch/kingdoms/android/dpad/Dpad$DButtonPoints;->leftMargins:[I

    const/4 v1, 0x6

    iget v2, p2, Lch/android/api/util/DisplayInfo;->widthPixels:I

    iget v3, p2, Lch/android/api/util/DisplayInfo;->density:F

    mul-float/2addr v3, v6

    float-to-int v3, v3

    sub-int/2addr v2, v3

    aput v2, v0, v1

    .line 637
    iget-object v0, p0, Lch/kingdoms/android/dpad/Dpad$DButtonPoints;->bottomMargins:[I

    const/4 v1, 0x6

    iget v2, p2, Lch/android/api/util/DisplayInfo;->density:F

    mul-float/2addr v2, v7

    float-to-int v2, v2

    aput v2, v0, v1

    .line 638
    return-void
.end method

.method static synthetic access$0(Lch/kingdoms/android/dpad/Dpad$DButtonPoints;)[I
    .locals 1

    .prologue
    .line 614
    iget-object v0, p0, Lch/kingdoms/android/dpad/Dpad$DButtonPoints;->leftMargins:[I

    return-object v0
.end method

.method static synthetic access$1(Lch/kingdoms/android/dpad/Dpad$DButtonPoints;)[I
    .locals 1

    .prologue
    .line 615
    iget-object v0, p0, Lch/kingdoms/android/dpad/Dpad$DButtonPoints;->bottomMargins:[I

    return-object v0
.end method


# virtual methods
.method public getPoints()[Landroid/graphics/Point;
    .locals 5

    .prologue
    .line 641
    iget-object v2, p0, Lch/kingdoms/android/dpad/Dpad$DButtonPoints;->leftMargins:[I

    array-length v2, v2

    new-array v1, v2, [Landroid/graphics/Point;

    .line 642
    .local v1, "points":[Landroid/graphics/Point;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, v1

    if-lt v0, v2, :cond_0

    .line 645
    return-object v1

    .line 643
    :cond_0
    new-instance v2, Landroid/graphics/Point;

    iget-object v3, p0, Lch/kingdoms/android/dpad/Dpad$DButtonPoints;->leftMargins:[I

    aget v3, v3, v0

    iget-object v4, p0, Lch/kingdoms/android/dpad/Dpad$DButtonPoints;->bottomMargins:[I

    aget v4, v4, v0

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v1, v0

    .line 642
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
