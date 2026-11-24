.class Lch/android/api/ui/ChNewItemButton$StaticItemButtonImgs;
.super Ljava/lang/Object;
.source "ChNewItemButton.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lch/android/api/ui/ChNewItemButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "StaticItemButtonImgs"
.end annotation


# static fields
.field private static downBmp:Landroid/graphics/Bitmap;

.field private static equipBmp:Landroid/graphics/Bitmap;

.field private static itemBmpHash:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private static numBgBmp:Landroid/graphics/Bitmap;

.field private static textPaint:Landroid/graphics/Paint;

.field private static upBmp:Landroid/graphics/Bitmap;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 266
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lch/android/api/ui/ChNewItemButton$StaticItemButtonImgs;->itemBmpHash:Ljava/util/HashMap;

    .line 268
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    sput-object v0, Lch/android/api/ui/ChNewItemButton$StaticItemButtonImgs;->textPaint:Landroid/graphics/Paint;

    .line 260
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 260
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getBmp(Landroid/graphics/Bitmap;Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "bmp"    # Landroid/graphics/Bitmap;
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "id"    # I

    .prologue
    .line 271
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 272
    :cond_0
    invoke-static {p1, p2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p0

    .line 274
    :cond_1
    return-object p0
.end method

.method public static getDownBmp(Landroid/content/res/Resources;)Landroid/graphics/Bitmap;
    .locals 2
    .param p0, "res"    # Landroid/content/res/Resources;

    .prologue
    .line 283
    sget-object v0, Lch/android/api/ui/ChNewItemButton$StaticItemButtonImgs;->downBmp:Landroid/graphics/Bitmap;

    const v1, 0x7f0200e1

    invoke-static {v0, p0, v1}, Lch/android/api/ui/ChNewItemButton$StaticItemButtonImgs;->getBmp(Landroid/graphics/Bitmap;Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    sput-object v0, Lch/android/api/ui/ChNewItemButton$StaticItemButtonImgs;->downBmp:Landroid/graphics/Bitmap;

    .line 284
    sget-object v0, Lch/android/api/ui/ChNewItemButton$StaticItemButtonImgs;->downBmp:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public static getEquipBmp(Landroid/content/res/Resources;)Landroid/graphics/Bitmap;
    .locals 2
    .param p0, "res"    # Landroid/content/res/Resources;

    .prologue
    .line 288
    sget-object v0, Lch/android/api/ui/ChNewItemButton$StaticItemButtonImgs;->equipBmp:Landroid/graphics/Bitmap;

    const v1, 0x7f0200a1

    invoke-static {v0, p0, v1}, Lch/android/api/ui/ChNewItemButton$StaticItemButtonImgs;->getBmp(Landroid/graphics/Bitmap;Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    sput-object v0, Lch/android/api/ui/ChNewItemButton$StaticItemButtonImgs;->equipBmp:Landroid/graphics/Bitmap;

    .line 289
    sget-object v0, Lch/android/api/ui/ChNewItemButton$StaticItemButtonImgs;->equipBmp:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public static getItemBmp(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;
    .locals 4
    .param p0, "res"    # Landroid/content/res/Resources;
    .param p1, "resId"    # I

    .prologue
    .line 298
    sget-object v2, Lch/android/api/ui/ChNewItemButton$StaticItemButtonImgs;->itemBmpHash:Ljava/util/HashMap;

    invoke-virtual {v2, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 299
    sget-object v2, Lch/android/api/ui/ChNewItemButton$StaticItemButtonImgs;->itemBmpHash:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 300
    .local v0, "bmp":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 301
    :cond_0
    sget-object v2, Lch/android/api/ui/ChNewItemButton$StaticItemButtonImgs;->itemBmpHash:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 302
    invoke-static {p0, p1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 303
    sget-object v2, Lch/android/api/ui/ChNewItemButton$StaticItemButtonImgs;->itemBmpHash:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    move-object v1, v0

    .line 309
    .end local v0    # "bmp":Landroid/graphics/Bitmap;
    .local v1, "bmp":Landroid/graphics/Bitmap;
    :goto_0
    return-object v1

    .line 307
    .end local v1    # "bmp":Landroid/graphics/Bitmap;
    :cond_2
    invoke-static {p0, p1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 308
    .restart local v0    # "bmp":Landroid/graphics/Bitmap;
    sget-object v2, Lch/android/api/ui/ChNewItemButton$StaticItemButtonImgs;->itemBmpHash:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v1, v0

    .line 309
    .end local v0    # "bmp":Landroid/graphics/Bitmap;
    .restart local v1    # "bmp":Landroid/graphics/Bitmap;
    goto :goto_0
.end method

.method public static getNumBmp(Landroid/content/res/Resources;)Landroid/graphics/Bitmap;
    .locals 2
    .param p0, "res"    # Landroid/content/res/Resources;

    .prologue
    .line 293
    sget-object v0, Lch/android/api/ui/ChNewItemButton$StaticItemButtonImgs;->numBgBmp:Landroid/graphics/Bitmap;

    const v1, 0x7f020217

    invoke-static {v0, p0, v1}, Lch/android/api/ui/ChNewItemButton$StaticItemButtonImgs;->getBmp(Landroid/graphics/Bitmap;Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    sput-object v0, Lch/android/api/ui/ChNewItemButton$StaticItemButtonImgs;->numBgBmp:Landroid/graphics/Bitmap;

    .line 294
    sget-object v0, Lch/android/api/ui/ChNewItemButton$StaticItemButtonImgs;->numBgBmp:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public static getTextPaint(F)Landroid/graphics/Paint;
    .locals 2
    .param p0, "density"    # F

    .prologue
    .line 314
    sget-object v0, Lch/android/api/ui/ChNewItemButton$StaticItemButtonImgs;->textPaint:Landroid/graphics/Paint;

    invoke-static {}, Lch/android/api/util/TextPaints;->getNormalSize()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 315
    sget-object v0, Lch/android/api/ui/ChNewItemButton$StaticItemButtonImgs;->textPaint:Landroid/graphics/Paint;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 316
    sget-object v0, Lch/android/api/ui/ChNewItemButton$StaticItemButtonImgs;->textPaint:Landroid/graphics/Paint;

    sget-object v1, Lch/android/api/util/TextPaints;->TYPE_FACE_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 317
    sget-object v0, Lch/android/api/ui/ChNewItemButton$StaticItemButtonImgs;->textPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 318
    sget-object v0, Lch/android/api/ui/ChNewItemButton$StaticItemButtonImgs;->textPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 319
    sget-object v0, Lch/android/api/ui/ChNewItemButton$StaticItemButtonImgs;->textPaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method public static getUpBmp(Landroid/content/res/Resources;)Landroid/graphics/Bitmap;
    .locals 2
    .param p0, "res"    # Landroid/content/res/Resources;

    .prologue
    .line 278
    sget-object v0, Lch/android/api/ui/ChNewItemButton$StaticItemButtonImgs;->upBmp:Landroid/graphics/Bitmap;

    const v1, 0x7f0201ef

    invoke-static {v0, p0, v1}, Lch/android/api/ui/ChNewItemButton$StaticItemButtonImgs;->getBmp(Landroid/graphics/Bitmap;Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    sput-object v0, Lch/android/api/ui/ChNewItemButton$StaticItemButtonImgs;->upBmp:Landroid/graphics/Bitmap;

    .line 279
    sget-object v0, Lch/android/api/ui/ChNewItemButton$StaticItemButtonImgs;->upBmp:Landroid/graphics/Bitmap;

    return-object v0
.end method
