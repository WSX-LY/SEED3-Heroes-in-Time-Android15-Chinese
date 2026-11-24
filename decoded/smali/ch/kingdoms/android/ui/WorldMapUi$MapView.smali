.class Lch/kingdoms/android/ui/WorldMapUi$MapView;
.super Landroid/widget/ImageView;
.source "WorldMapUi.java"

# interfaces
.implements Lch/android/api/ui/IChView;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lch/kingdoms/android/ui/WorldMapUi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MapView"
.end annotation


# static fields
.field public static final STATE_AREA:I = 0x1

.field public static final STATE_WORLDMAP:I


# instance fields
.field private final HERO_BMP:Landroid/graphics/Bitmap;

.field private final LEFT_MARGIN:I

.field private final QUEST_FLAG_BMP:Landroid/graphics/Bitmap;

.field private final SELECT_BMP:Landroid/graphics/Bitmap;

.field private final TILE_H:F

.field private final TILE_W:F

.field private final TOP_MARGIN:I

.field private m_heroPos:Landroid/graphics/Point;

.field private m_questPos:Landroid/graphics/Point;

.field private m_selectX:I

.field private m_selectY:I

.field private m_state:I

.field private m_touchCount:I

.field final synthetic this$0:Lch/kingdoms/android/ui/WorldMapUi;


# direct methods
.method public constructor <init>(Lch/kingdoms/android/ui/WorldMapUi;Landroid/content/Context;)V
    .locals 5
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x0

    .line 140
    iput-object p1, p0, Lch/kingdoms/android/ui/WorldMapUi$MapView;->this$0:Lch/kingdoms/android/ui/WorldMapUi;

    .line 141
    invoke-direct {p0, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 122
    invoke-static {p1}, Lch/kingdoms/android/ui/WorldMapUi;->access$0(Lch/kingdoms/android/ui/WorldMapUi;)Lch/android/api/util/DisplayInfo;

    move-result-object v0

    iget v0, v0, Lch/android/api/util/DisplayInfo;->density:F

    const/high16 v1, 0x41e00000    # 28.0f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    int-to-float v0, v0

    iput v0, p0, Lch/kingdoms/android/ui/WorldMapUi$MapView;->TILE_W:F

    .line 123
    invoke-static {p1}, Lch/kingdoms/android/ui/WorldMapUi;->access$0(Lch/kingdoms/android/ui/WorldMapUi;)Lch/android/api/util/DisplayInfo;

    move-result-object v0

    iget v0, v0, Lch/android/api/util/DisplayInfo;->density:F

    const/high16 v1, 0x41b80000    # 23.0f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    int-to-float v0, v0

    iput v0, p0, Lch/kingdoms/android/ui/WorldMapUi$MapView;->TILE_H:F

    .line 124
    invoke-static {p1}, Lch/kingdoms/android/ui/WorldMapUi;->access$0(Lch/kingdoms/android/ui/WorldMapUi;)Lch/android/api/util/DisplayInfo;

    move-result-object v0

    iget v0, v0, Lch/android/api/util/DisplayInfo;->density:F

    const/high16 v1, 0x40000000    # 2.0f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lch/kingdoms/android/ui/WorldMapUi$MapView;->LEFT_MARGIN:I

    .line 125
    invoke-static {p1}, Lch/kingdoms/android/ui/WorldMapUi;->access$0(Lch/kingdoms/android/ui/WorldMapUi;)Lch/android/api/util/DisplayInfo;

    move-result-object v0

    iget v0, v0, Lch/android/api/util/DisplayInfo;->density:F

    float-to-double v0, v0

    const-wide/high16 v2, 0x400c000000000000L    # 3.5

    mul-double/2addr v0, v2

    double-to-int v0, v0

    iput v0, p0, Lch/kingdoms/android/ui/WorldMapUi$MapView;->TOP_MARGIN:I

    .line 129
    iput v4, p0, Lch/kingdoms/android/ui/WorldMapUi$MapView;->m_state:I

    .line 130
    iput v4, p0, Lch/kingdoms/android/ui/WorldMapUi$MapView;->m_touchCount:I

    .line 144
    invoke-virtual {p0}, Lch/kingdoms/android/ui/WorldMapUi$MapView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0202df

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lch/kingdoms/android/ui/WorldMapUi$MapView;->SELECT_BMP:Landroid/graphics/Bitmap;

    .line 146
    invoke-virtual {p0}, Lch/kingdoms/android/ui/WorldMapUi$MapView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0202de

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lch/kingdoms/android/ui/WorldMapUi$MapView;->HERO_BMP:Landroid/graphics/Bitmap;

    .line 147
    invoke-virtual {p0}, Lch/kingdoms/android/ui/WorldMapUi$MapView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0202dd

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lch/kingdoms/android/ui/WorldMapUi$MapView;->QUEST_FLAG_BMP:Landroid/graphics/Bitmap;

    .line 148
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lch/kingdoms/android/ui/WorldMapUi$MapView;->m_heroPos:Landroid/graphics/Point;

    .line 149
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lch/kingdoms/android/ui/WorldMapUi$MapView;->m_questPos:Landroid/graphics/Point;

    .line 150
    invoke-virtual {p0}, Lch/kingdoms/android/ui/WorldMapUi$MapView;->setToWorldMap()V

    .line 151
    new-instance v0, Lch/kingdoms/android/ui/WorldMapUi$MapView$1;

    invoke-direct {v0, p0}, Lch/kingdoms/android/ui/WorldMapUi$MapView$1;-><init>(Lch/kingdoms/android/ui/WorldMapUi$MapView;)V

    invoke-virtual {p0, v0}, Lch/kingdoms/android/ui/WorldMapUi$MapView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 236
    return-void
.end method

.method static synthetic access$0(Lch/kingdoms/android/ui/WorldMapUi$MapView;)F
    .locals 1

    .prologue
    .line 122
    iget v0, p0, Lch/kingdoms/android/ui/WorldMapUi$MapView;->TILE_W:F

    return v0
.end method

.method static synthetic access$1(Lch/kingdoms/android/ui/WorldMapUi$MapView;)F
    .locals 1

    .prologue
    .line 123
    iget v0, p0, Lch/kingdoms/android/ui/WorldMapUi$MapView;->TILE_H:F

    return v0
.end method

.method static synthetic access$10(Lch/kingdoms/android/ui/WorldMapUi$MapView;)Lch/kingdoms/android/ui/WorldMapUi;
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lch/kingdoms/android/ui/WorldMapUi$MapView;->this$0:Lch/kingdoms/android/ui/WorldMapUi;

    return-object v0
.end method

.method static synthetic access$2(Lch/kingdoms/android/ui/WorldMapUi$MapView;)I
    .locals 1

    .prologue
    .line 129
    iget v0, p0, Lch/kingdoms/android/ui/WorldMapUi$MapView;->m_state:I

    return v0
.end method

.method static synthetic access$3(Lch/kingdoms/android/ui/WorldMapUi$MapView;)I
    .locals 1

    .prologue
    .line 124
    iget v0, p0, Lch/kingdoms/android/ui/WorldMapUi$MapView;->LEFT_MARGIN:I

    return v0
.end method

.method static synthetic access$4(Lch/kingdoms/android/ui/WorldMapUi$MapView;I)V
    .locals 0

    .prologue
    .line 132
    iput p1, p0, Lch/kingdoms/android/ui/WorldMapUi$MapView;->m_selectX:I

    return-void
.end method

.method static synthetic access$5(Lch/kingdoms/android/ui/WorldMapUi$MapView;)I
    .locals 1

    .prologue
    .line 125
    iget v0, p0, Lch/kingdoms/android/ui/WorldMapUi$MapView;->TOP_MARGIN:I

    return v0
.end method

.method static synthetic access$6(Lch/kingdoms/android/ui/WorldMapUi$MapView;I)V
    .locals 0

    .prologue
    .line 133
    iput p1, p0, Lch/kingdoms/android/ui/WorldMapUi$MapView;->m_selectY:I

    return-void
.end method

.method static synthetic access$7(Lch/kingdoms/android/ui/WorldMapUi$MapView;)I
    .locals 1

    .prologue
    .line 130
    iget v0, p0, Lch/kingdoms/android/ui/WorldMapUi$MapView;->m_touchCount:I

    return v0
.end method

.method static synthetic access$8(Lch/kingdoms/android/ui/WorldMapUi$MapView;I)V
    .locals 0

    .prologue
    .line 130
    iput p1, p0, Lch/kingdoms/android/ui/WorldMapUi$MapView;->m_touchCount:I

    return-void
.end method

.method static synthetic access$9(Lch/kingdoms/android/ui/WorldMapUi$MapView;I)V
    .locals 0

    .prologue
    .line 249
    invoke-direct {p0, p1}, Lch/kingdoms/android/ui/WorldMapUi$MapView;->setToAreaMap(I)V

    return-void
.end method

.method private getXinView(I)I
    .locals 3
    .param p1, "_index"    # I

    .prologue
    .line 279
    sget-boolean v0, Lch/android/api/util/Consts;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 280
    const-string v0, "KD"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "getXinView:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    :cond_0
    rem-int/lit8 v0, p1, 0xa

    int-to-float v0, v0

    iget v1, p0, Lch/kingdoms/android/ui/WorldMapUi$MapView;->TILE_W:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iget v1, p0, Lch/kingdoms/android/ui/WorldMapUi$MapView;->LEFT_MARGIN:I

    add-int/2addr v0, v1

    return v0
.end method

.method private getYinView(I)I
    .locals 3
    .param p1, "_index"    # I

    .prologue
    .line 286
    sget-boolean v0, Lch/android/api/util/Consts;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 287
    const-string v0, "KD"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "getYinView:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 289
    :cond_0
    div-int/lit8 v0, p1, 0xa

    int-to-float v0, v0

    iget v1, p0, Lch/kingdoms/android/ui/WorldMapUi$MapView;->TILE_H:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iget v1, p0, Lch/kingdoms/android/ui/WorldMapUi$MapView;->TOP_MARGIN:I

    add-int/2addr v0, v1

    return v0
.end method

.method private setToAreaMap(I)V
    .locals 7
    .param p1, "_index"    # I

    .prologue
    .line 250
    invoke-static {p1}, Lch/kingdoms/ndk/NdkUiEventManager;->selectArea(I)I

    move-result v2

    .line 251
    .local v2, "mapNum":I
    const/4 v3, -0x1

    if-le v2, v3, :cond_0

    .line 252
    invoke-virtual {p0}, Lch/kingdoms/android/ui/WorldMapUi$MapView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "area"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "drawable"

    const-string v6, "ch.kingdoms.market.compat"

    invoke-virtual {v3, v4, v5, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 253
    .local v0, "id":I
    invoke-super {p0, v0}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 254
    const/4 v3, 0x1

    iput v3, p0, Lch/kingdoms/android/ui/WorldMapUi$MapView;->m_state:I

    .line 256
    invoke-static {}, Lch/kingdoms/ndk/NdkUiEventManager;->getHeroPosInArea()S

    move-result v1

    .line 257
    .local v1, "index":S
    iget-object v3, p0, Lch/kingdoms/android/ui/WorldMapUi$MapView;->m_heroPos:Landroid/graphics/Point;

    invoke-direct {p0, v1}, Lch/kingdoms/android/ui/WorldMapUi$MapView;->getXinView(I)I

    move-result v4

    iput v4, v3, Landroid/graphics/Point;->x:I

    .line 258
    iget-object v3, p0, Lch/kingdoms/android/ui/WorldMapUi$MapView;->m_heroPos:Landroid/graphics/Point;

    invoke-direct {p0, v1}, Lch/kingdoms/android/ui/WorldMapUi$MapView;->getYinView(I)I

    move-result v4

    iput v4, v3, Landroid/graphics/Point;->y:I

    .line 259
    invoke-static {}, Lch/kingdoms/ndk/NdkUiEventManager;->getQuestFlagPosInArea()S

    move-result v1

    .line 260
    iget-object v3, p0, Lch/kingdoms/android/ui/WorldMapUi$MapView;->m_questPos:Landroid/graphics/Point;

    invoke-direct {p0, v1}, Lch/kingdoms/android/ui/WorldMapUi$MapView;->getXinView(I)I

    move-result v4

    iput v4, v3, Landroid/graphics/Point;->x:I

    .line 261
    iget-object v3, p0, Lch/kingdoms/android/ui/WorldMapUi$MapView;->m_questPos:Landroid/graphics/Point;

    invoke-direct {p0, v1}, Lch/kingdoms/android/ui/WorldMapUi$MapView;->getYinView(I)I

    move-result v4

    iput v4, v3, Landroid/graphics/Point;->y:I

    .line 263
    .end local v0    # "id":I
    .end local v1    # "index":S
    :cond_0
    return-void
.end method


# virtual methods
.method public getState()I
    .locals 1

    .prologue
    .line 293
    iget v0, p0, Lch/kingdoms/android/ui/WorldMapUi$MapView;->m_state:I

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v3, 0x0

    .line 241
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V

    .line 242
    iget v0, p0, Lch/kingdoms/android/ui/WorldMapUi$MapView;->m_touchCount:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 243
    iget-object v0, p0, Lch/kingdoms/android/ui/WorldMapUi$MapView;->SELECT_BMP:Landroid/graphics/Bitmap;

    iget v1, p0, Lch/kingdoms/android/ui/WorldMapUi$MapView;->m_selectX:I

    int-to-float v1, v1

    iget v2, p0, Lch/kingdoms/android/ui/WorldMapUi$MapView;->m_selectY:I

    int-to-float v2, v2

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 245
    :cond_0
    iget-object v0, p0, Lch/kingdoms/android/ui/WorldMapUi$MapView;->HERO_BMP:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lch/kingdoms/android/ui/WorldMapUi$MapView;->m_heroPos:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    int-to-float v1, v1

    iget-object v2, p0, Lch/kingdoms/android/ui/WorldMapUi$MapView;->m_heroPos:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    int-to-float v2, v2

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 246
    iget-object v0, p0, Lch/kingdoms/android/ui/WorldMapUi$MapView;->QUEST_FLAG_BMP:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lch/kingdoms/android/ui/WorldMapUi$MapView;->m_questPos:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    int-to-float v1, v1

    iget-object v2, p0, Lch/kingdoms/android/ui/WorldMapUi$MapView;->m_questPos:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    int-to-float v2, v2

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 247
    return-void
.end method

.method public releaseRsources()V
    .locals 1

    .prologue
    .line 303
    iget-object v0, p0, Lch/kingdoms/android/ui/WorldMapUi$MapView;->SELECT_BMP:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 304
    iget-object v0, p0, Lch/kingdoms/android/ui/WorldMapUi$MapView;->SELECT_BMP:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 306
    :cond_0
    return-void
.end method

.method public setToWorldMap()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 266
    iput v2, p0, Lch/kingdoms/android/ui/WorldMapUi$MapView;->m_touchCount:I

    .line 267
    const v1, 0x7f0202da

    invoke-super {p0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 268
    iput v2, p0, Lch/kingdoms/android/ui/WorldMapUi$MapView;->m_state:I

    .line 270
    invoke-static {}, Lch/kingdoms/ndk/NdkUiEventManager;->getHeroPosInWorldMap()S

    move-result v0

    .line 271
    .local v0, "index":S
    iget-object v1, p0, Lch/kingdoms/android/ui/WorldMapUi$MapView;->m_heroPos:Landroid/graphics/Point;

    invoke-direct {p0, v0}, Lch/kingdoms/android/ui/WorldMapUi$MapView;->getXinView(I)I

    move-result v2

    iput v2, v1, Landroid/graphics/Point;->x:I

    .line 272
    iget-object v1, p0, Lch/kingdoms/android/ui/WorldMapUi$MapView;->m_heroPos:Landroid/graphics/Point;

    invoke-direct {p0, v0}, Lch/kingdoms/android/ui/WorldMapUi$MapView;->getYinView(I)I

    move-result v2

    iput v2, v1, Landroid/graphics/Point;->y:I

    .line 273
    invoke-static {}, Lch/kingdoms/ndk/NdkUiEventManager;->getQuestFlagPosInWorldMap()S

    move-result v0

    .line 274
    iget-object v1, p0, Lch/kingdoms/android/ui/WorldMapUi$MapView;->m_questPos:Landroid/graphics/Point;

    invoke-direct {p0, v0}, Lch/kingdoms/android/ui/WorldMapUi$MapView;->getXinView(I)I

    move-result v2

    iput v2, v1, Landroid/graphics/Point;->x:I

    .line 275
    iget-object v1, p0, Lch/kingdoms/android/ui/WorldMapUi$MapView;->m_questPos:Landroid/graphics/Point;

    invoke-direct {p0, v0}, Lch/kingdoms/android/ui/WorldMapUi$MapView;->getYinView(I)I

    move-result v2

    iput v2, v1, Landroid/graphics/Point;->y:I

    .line 276
    return-void
.end method
