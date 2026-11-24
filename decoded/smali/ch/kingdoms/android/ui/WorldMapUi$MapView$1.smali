.class Lch/kingdoms/android/ui/WorldMapUi$MapView$1;
.super Ljava/lang/Object;
.source "WorldMapUi.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lch/kingdoms/android/ui/WorldMapUi$MapView;-><init>(Lch/kingdoms/android/ui/WorldMapUi;Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private m_previousPos:I

.field final synthetic this$1:Lch/kingdoms/android/ui/WorldMapUi$MapView;


# direct methods
.method constructor <init>(Lch/kingdoms/android/ui/WorldMapUi$MapView;)V
    .locals 1

    .prologue
    .line 1
    iput-object p1, p0, Lch/kingdoms/android/ui/WorldMapUi$MapView$1;->this$1:Lch/kingdoms/android/ui/WorldMapUi$MapView;

    .line 151
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 152
    const/4 v0, -0x1

    iput v0, p0, Lch/kingdoms/android/ui/WorldMapUi$MapView$1;->m_previousPos:I

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 13
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v12, 0x0

    const/4 v11, -0x1

    const/4 v10, 0x1

    .line 156
    sget-boolean v7, Lch/android/api/util/Consts;->DEBUG:Z

    if-eqz v7, :cond_0

    .line 157
    const-string v7, "KD"

    const-string v8, "onTouch..."

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v7

    if-ne v7, v10, :cond_3

    .line 160
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    iget-object v8, p0, Lch/kingdoms/android/ui/WorldMapUi$MapView$1;->this$1:Lch/kingdoms/android/ui/WorldMapUi$MapView;

    invoke-static {v8}, Lch/kingdoms/android/ui/WorldMapUi$MapView;->access$0(Lch/kingdoms/android/ui/WorldMapUi$MapView;)F

    move-result v8

    div-float/2addr v7, v8

    float-to-int v0, v7

    .line 161
    .local v0, "col":I
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    iget-object v8, p0, Lch/kingdoms/android/ui/WorldMapUi$MapView$1;->this$1:Lch/kingdoms/android/ui/WorldMapUi$MapView;

    invoke-static {v8}, Lch/kingdoms/android/ui/WorldMapUi$MapView;->access$1(Lch/kingdoms/android/ui/WorldMapUi$MapView;)F

    move-result v8

    div-float/2addr v7, v8

    float-to-int v5, v7

    .line 163
    .local v5, "row":I
    const/16 v7, 0xa

    if-ge v0, v7, :cond_a

    const/16 v7, 0x8

    if-ge v5, v7, :cond_a

    .line 164
    iget-object v7, p0, Lch/kingdoms/android/ui/WorldMapUi$MapView$1;->this$1:Lch/kingdoms/android/ui/WorldMapUi$MapView;

    invoke-static {v7}, Lch/kingdoms/android/ui/WorldMapUi$MapView;->access$2(Lch/kingdoms/android/ui/WorldMapUi$MapView;)I

    move-result v7

    if-nez v7, :cond_7

    .line 165
    iget-object v7, p0, Lch/kingdoms/android/ui/WorldMapUi$MapView$1;->this$1:Lch/kingdoms/android/ui/WorldMapUi$MapView;

    int-to-float v8, v0

    iget-object v9, p0, Lch/kingdoms/android/ui/WorldMapUi$MapView$1;->this$1:Lch/kingdoms/android/ui/WorldMapUi$MapView;

    invoke-static {v9}, Lch/kingdoms/android/ui/WorldMapUi$MapView;->access$0(Lch/kingdoms/android/ui/WorldMapUi$MapView;)F

    move-result v9

    mul-float/2addr v8, v9

    float-to-int v8, v8

    iget-object v9, p0, Lch/kingdoms/android/ui/WorldMapUi$MapView$1;->this$1:Lch/kingdoms/android/ui/WorldMapUi$MapView;

    invoke-static {v9}, Lch/kingdoms/android/ui/WorldMapUi$MapView;->access$3(Lch/kingdoms/android/ui/WorldMapUi$MapView;)I

    move-result v9

    add-int/2addr v8, v9

    invoke-static {v7, v8}, Lch/kingdoms/android/ui/WorldMapUi$MapView;->access$4(Lch/kingdoms/android/ui/WorldMapUi$MapView;I)V

    .line 166
    iget-object v7, p0, Lch/kingdoms/android/ui/WorldMapUi$MapView$1;->this$1:Lch/kingdoms/android/ui/WorldMapUi$MapView;

    int-to-float v8, v5

    iget-object v9, p0, Lch/kingdoms/android/ui/WorldMapUi$MapView$1;->this$1:Lch/kingdoms/android/ui/WorldMapUi$MapView;

    invoke-static {v9}, Lch/kingdoms/android/ui/WorldMapUi$MapView;->access$1(Lch/kingdoms/android/ui/WorldMapUi$MapView;)F

    move-result v9

    mul-float/2addr v8, v9

    float-to-int v8, v8

    iget-object v9, p0, Lch/kingdoms/android/ui/WorldMapUi$MapView$1;->this$1:Lch/kingdoms/android/ui/WorldMapUi$MapView;

    invoke-static {v9}, Lch/kingdoms/android/ui/WorldMapUi$MapView;->access$5(Lch/kingdoms/android/ui/WorldMapUi$MapView;)I

    move-result v9

    add-int/2addr v8, v9

    invoke-static {v7, v8}, Lch/kingdoms/android/ui/WorldMapUi$MapView;->access$6(Lch/kingdoms/android/ui/WorldMapUi$MapView;I)V

    .line 167
    mul-int/lit8 v7, v5, 0xa

    add-int v1, v7, v0

    .line 168
    .local v1, "currentPos":I
    iget v7, p0, Lch/kingdoms/android/ui/WorldMapUi$MapView$1;->m_previousPos:I

    if-ne v1, v7, :cond_4

    .line 169
    iget-object v7, p0, Lch/kingdoms/android/ui/WorldMapUi$MapView$1;->this$1:Lch/kingdoms/android/ui/WorldMapUi$MapView;

    invoke-static {v7}, Lch/kingdoms/android/ui/WorldMapUi$MapView;->access$7(Lch/kingdoms/android/ui/WorldMapUi$MapView;)I

    move-result v8

    add-int/lit8 v8, v8, 0x1

    invoke-static {v7, v8}, Lch/kingdoms/android/ui/WorldMapUi$MapView;->access$8(Lch/kingdoms/android/ui/WorldMapUi$MapView;I)V

    .line 170
    iget-object v7, p0, Lch/kingdoms/android/ui/WorldMapUi$MapView$1;->this$1:Lch/kingdoms/android/ui/WorldMapUi$MapView;

    invoke-static {v7}, Lch/kingdoms/android/ui/WorldMapUi$MapView;->access$7(Lch/kingdoms/android/ui/WorldMapUi$MapView;)I

    move-result v7

    const/4 v8, 0x2

    if-ne v7, v8, :cond_1

    .line 171
    iget-object v7, p0, Lch/kingdoms/android/ui/WorldMapUi$MapView$1;->this$1:Lch/kingdoms/android/ui/WorldMapUi$MapView;

    invoke-static {v7, v12}, Lch/kingdoms/android/ui/WorldMapUi$MapView;->access$8(Lch/kingdoms/android/ui/WorldMapUi$MapView;I)V

    .line 172
    iget-object v7, p0, Lch/kingdoms/android/ui/WorldMapUi$MapView$1;->this$1:Lch/kingdoms/android/ui/WorldMapUi$MapView;

    invoke-static {v7, v1}, Lch/kingdoms/android/ui/WorldMapUi$MapView;->access$9(Lch/kingdoms/android/ui/WorldMapUi$MapView;I)V

    .line 196
    :cond_1
    :goto_0
    sget-boolean v7, Lch/android/api/util/Consts;->DEBUG:Z

    if-eqz v7, :cond_2

    .line 197
    const-string v7, "KD"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "row:"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ",col:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ",count:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lch/kingdoms/android/ui/WorldMapUi$MapView$1;->this$1:Lch/kingdoms/android/ui/WorldMapUi$MapView;

    invoke-static {v9}, Lch/kingdoms/android/ui/WorldMapUi$MapView;->access$7(Lch/kingdoms/android/ui/WorldMapUi$MapView;)I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    :cond_2
    iget-object v7, p0, Lch/kingdoms/android/ui/WorldMapUi$MapView$1;->this$1:Lch/kingdoms/android/ui/WorldMapUi$MapView;

    invoke-virtual {v7}, Lch/kingdoms/android/ui/WorldMapUi$MapView;->invalidate()V

    .line 200
    iput v1, p0, Lch/kingdoms/android/ui/WorldMapUi$MapView$1;->m_previousPos:I

    .line 233
    .end local v0    # "col":I
    .end local v1    # "currentPos":I
    .end local v5    # "row":I
    :cond_3
    :goto_1
    return v10

    .line 175
    .restart local v0    # "col":I
    .restart local v1    # "currentPos":I
    .restart local v5    # "row":I
    :cond_4
    iget-object v7, p0, Lch/kingdoms/android/ui/WorldMapUi$MapView$1;->this$1:Lch/kingdoms/android/ui/WorldMapUi$MapView;

    invoke-static {v7, v10}, Lch/kingdoms/android/ui/WorldMapUi$MapView;->access$8(Lch/kingdoms/android/ui/WorldMapUi$MapView;I)V

    .line 176
    const-string v3, ""

    .line 177
    .local v3, "mapName":Ljava/lang/String;
    invoke-static {v1}, Lch/kingdoms/ndk/NdkUiEventManager;->selectArea(I)I

    move-result v7

    if-le v7, v11, :cond_5

    .line 179
    :try_start_0
    invoke-static {v1}, Lch/kingdoms/ndk/NdkUiEventManager;->getAreaName(I)[S

    move-result-object v6

    .line 180
    .local v6, "shorts":[S
    if-eqz v6, :cond_6

    .line 181
    new-instance v4, Ljava/lang/String;

    .line 182
    invoke-static {v6}, Lch/kingdoms/ndk/NdkTextLoader;->shortArrayToByteArray([S)[B

    move-result-object v7

    const-string v8, "UTF-16"

    .line 181
    invoke-direct {v4, v7, v8}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v3    # "mapName":Ljava/lang/String;
    .local v4, "mapName":Ljava/lang/String;
    move-object v3, v4

    .line 194
    .end local v4    # "mapName":Ljava/lang/String;
    .end local v6    # "shorts":[S
    .restart local v3    # "mapName":Ljava/lang/String;
    :cond_5
    :goto_2
    iget-object v7, p0, Lch/kingdoms/android/ui/WorldMapUi$MapView$1;->this$1:Lch/kingdoms/android/ui/WorldMapUi$MapView;

    invoke-static {v7}, Lch/kingdoms/android/ui/WorldMapUi$MapView;->access$10(Lch/kingdoms/android/ui/WorldMapUi$MapView;)Lch/kingdoms/android/ui/WorldMapUi;

    move-result-object v7

    invoke-static {v7}, Lch/kingdoms/android/ui/WorldMapUi;->access$1(Lch/kingdoms/android/ui/WorldMapUi;)Landroid/widget/TextView;

    move-result-object v7

    invoke-virtual {v7, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 185
    .restart local v6    # "shorts":[S
    :cond_6
    :try_start_1
    sget-boolean v7, Lch/android/api/util/Consts;->DEBUG:Z

    if-eqz v7, :cond_5

    .line 186
    const-string v7, "KD"

    const-string v8, "NdkTextLoader...shorts is null"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 189
    .end local v6    # "shorts":[S
    :catch_0
    move-exception v2

    .line 191
    .local v2, "e":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v2}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_2

    .line 202
    .end local v1    # "currentPos":I
    .end local v2    # "e":Ljava/io/UnsupportedEncodingException;
    .end local v3    # "mapName":Ljava/lang/String;
    :cond_7
    iget-object v7, p0, Lch/kingdoms/android/ui/WorldMapUi$MapView$1;->this$1:Lch/kingdoms/android/ui/WorldMapUi$MapView;

    invoke-static {v7, v10}, Lch/kingdoms/android/ui/WorldMapUi$MapView;->access$8(Lch/kingdoms/android/ui/WorldMapUi$MapView;I)V

    .line 203
    iget-object v7, p0, Lch/kingdoms/android/ui/WorldMapUi$MapView$1;->this$1:Lch/kingdoms/android/ui/WorldMapUi$MapView;

    int-to-float v8, v0

    iget-object v9, p0, Lch/kingdoms/android/ui/WorldMapUi$MapView$1;->this$1:Lch/kingdoms/android/ui/WorldMapUi$MapView;

    invoke-static {v9}, Lch/kingdoms/android/ui/WorldMapUi$MapView;->access$0(Lch/kingdoms/android/ui/WorldMapUi$MapView;)F

    move-result v9

    mul-float/2addr v8, v9

    float-to-int v8, v8

    iget-object v9, p0, Lch/kingdoms/android/ui/WorldMapUi$MapView$1;->this$1:Lch/kingdoms/android/ui/WorldMapUi$MapView;

    invoke-static {v9}, Lch/kingdoms/android/ui/WorldMapUi$MapView;->access$3(Lch/kingdoms/android/ui/WorldMapUi$MapView;)I

    move-result v9

    add-int/2addr v8, v9

    invoke-static {v7, v8}, Lch/kingdoms/android/ui/WorldMapUi$MapView;->access$4(Lch/kingdoms/android/ui/WorldMapUi$MapView;I)V

    .line 204
    iget-object v7, p0, Lch/kingdoms/android/ui/WorldMapUi$MapView$1;->this$1:Lch/kingdoms/android/ui/WorldMapUi$MapView;

    int-to-float v8, v5

    iget-object v9, p0, Lch/kingdoms/android/ui/WorldMapUi$MapView$1;->this$1:Lch/kingdoms/android/ui/WorldMapUi$MapView;

    invoke-static {v9}, Lch/kingdoms/android/ui/WorldMapUi$MapView;->access$1(Lch/kingdoms/android/ui/WorldMapUi$MapView;)F

    move-result v9

    mul-float/2addr v8, v9

    float-to-int v8, v8

    iget-object v9, p0, Lch/kingdoms/android/ui/WorldMapUi$MapView$1;->this$1:Lch/kingdoms/android/ui/WorldMapUi$MapView;

    invoke-static {v9}, Lch/kingdoms/android/ui/WorldMapUi$MapView;->access$5(Lch/kingdoms/android/ui/WorldMapUi$MapView;)I

    move-result v9

    add-int/2addr v8, v9

    invoke-static {v7, v8}, Lch/kingdoms/android/ui/WorldMapUi$MapView;->access$6(Lch/kingdoms/android/ui/WorldMapUi$MapView;I)V

    .line 205
    mul-int/lit8 v7, v5, 0xa

    add-int v1, v7, v0

    .line 206
    .restart local v1    # "currentPos":I
    const-string v3, ""

    .line 207
    .restart local v3    # "mapName":Ljava/lang/String;
    invoke-static {v1}, Lch/kingdoms/ndk/NdkUiEventManager;->selectSubArea(I)I

    move-result v7

    if-le v7, v11, :cond_8

    .line 209
    :try_start_2
    invoke-static {v1}, Lch/kingdoms/ndk/NdkUiEventManager;->getSubAreaName(I)[S

    move-result-object v6

    .line 210
    .restart local v6    # "shorts":[S
    if-eqz v6, :cond_9

    .line 211
    new-instance v4, Ljava/lang/String;

    .line 212
    invoke-static {v6}, Lch/kingdoms/ndk/NdkTextLoader;->shortArrayToByteArray([S)[B

    move-result-object v7

    const-string v8, "UTF-16"

    .line 211
    invoke-direct {v4, v7, v8}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_2
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_2} :catch_1

    .end local v3    # "mapName":Ljava/lang/String;
    .restart local v4    # "mapName":Ljava/lang/String;
    move-object v3, v4

    .line 224
    .end local v4    # "mapName":Ljava/lang/String;
    .end local v6    # "shorts":[S
    .restart local v3    # "mapName":Ljava/lang/String;
    :cond_8
    :goto_3
    iget-object v7, p0, Lch/kingdoms/android/ui/WorldMapUi$MapView$1;->this$1:Lch/kingdoms/android/ui/WorldMapUi$MapView;

    invoke-static {v7}, Lch/kingdoms/android/ui/WorldMapUi$MapView;->access$10(Lch/kingdoms/android/ui/WorldMapUi$MapView;)Lch/kingdoms/android/ui/WorldMapUi;

    move-result-object v7

    invoke-static {v7}, Lch/kingdoms/android/ui/WorldMapUi;->access$1(Lch/kingdoms/android/ui/WorldMapUi;)Landroid/widget/TextView;

    move-result-object v7

    invoke-virtual {v7, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 225
    iget-object v7, p0, Lch/kingdoms/android/ui/WorldMapUi$MapView$1;->this$1:Lch/kingdoms/android/ui/WorldMapUi$MapView;

    invoke-virtual {v7}, Lch/kingdoms/android/ui/WorldMapUi$MapView;->invalidate()V

    .line 226
    iput v1, p0, Lch/kingdoms/android/ui/WorldMapUi$MapView$1;->m_previousPos:I

    goto/16 :goto_1

    .line 215
    .restart local v6    # "shorts":[S
    :cond_9
    :try_start_3
    sget-boolean v7, Lch/android/api/util/Consts;->DEBUG:Z

    if-eqz v7, :cond_8

    .line 216
    const-string v7, "KD"

    const-string v8, "NdkTextLoader...shorts is null"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_3

    .line 219
    .end local v6    # "shorts":[S
    :catch_1
    move-exception v2

    .line 221
    .restart local v2    # "e":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v2}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_3

    .line 229
    .end local v1    # "currentPos":I
    .end local v2    # "e":Ljava/io/UnsupportedEncodingException;
    .end local v3    # "mapName":Ljava/lang/String;
    :cond_a
    iget-object v7, p0, Lch/kingdoms/android/ui/WorldMapUi$MapView$1;->this$1:Lch/kingdoms/android/ui/WorldMapUi$MapView;

    invoke-static {v7, v12}, Lch/kingdoms/android/ui/WorldMapUi$MapView;->access$8(Lch/kingdoms/android/ui/WorldMapUi$MapView;I)V

    .line 230
    iput v11, p0, Lch/kingdoms/android/ui/WorldMapUi$MapView$1;->m_previousPos:I

    goto/16 :goto_1
.end method
