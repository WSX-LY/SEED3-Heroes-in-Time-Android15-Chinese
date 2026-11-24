.class Lch/kingdoms/android/ui/SkillUi$TabBtnView;
.super Landroid/widget/ImageView;
.source "SkillUi.java"

# interfaces
.implements Lch/android/api/ui/IChView;
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lch/kingdoms/android/ui/SkillUi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TabBtnView"
.end annotation


# instance fields
.field private final ACTIVE_SKILL_BMP:Landroid/graphics/Bitmap;

.field private ACTIVE_SKILL_PONT_X:I

.field private ACTIVE_SKILL_PONT_Y:I

.field private final ACT_BTN_BMP:Landroid/graphics/Bitmap;

.field private final BUFF_BTN_BMP:Landroid/graphics/Bitmap;

.field private final BUFF_SKILL_BMP:Landroid/graphics/Bitmap;

.field private BUFF_SKILL_PONT_X:I

.field private BUFF_SKILL_PONT_Y:I

.field private final POINT_PAINT:Landroid/graphics/Paint;

.field private final WIDTH:I

.field private m_activeSikillAddPoints:I

.field private m_buffSkillAddPoints:I

.field private m_isActiveSkill:Z

.field final synthetic this$0:Lch/kingdoms/android/ui/SkillUi;


# direct methods
.method public constructor <init>(Lch/kingdoms/android/ui/SkillUi;Landroid/content/Context;)V
    .locals 5
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    const v4, 0x7f020002

    const/high16 v3, 0x41b00000    # 22.0f

    .line 138
    iput-object p1, p0, Lch/kingdoms/android/ui/SkillUi$TabBtnView;->this$0:Lch/kingdoms/android/ui/SkillUi;

    .line 139
    invoke-direct {p0, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 119
    const/high16 v1, 0x433e0000    # 190.0f

    invoke-static {p1}, Lch/kingdoms/android/ui/SkillUi;->access$0(Lch/kingdoms/android/ui/SkillUi;)Lch/android/api/util/DisplayInfo;

    move-result-object v2

    iget v2, v2, Lch/android/api/util/DisplayInfo;->density:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Lch/kingdoms/android/ui/SkillUi$TabBtnView;->ACTIVE_SKILL_PONT_X:I

    .line 120
    invoke-static {p1}, Lch/kingdoms/android/ui/SkillUi;->access$0(Lch/kingdoms/android/ui/SkillUi;)Lch/android/api/util/DisplayInfo;

    move-result-object v1

    iget v1, v1, Lch/android/api/util/DisplayInfo;->density:F

    mul-float/2addr v1, v3

    float-to-int v1, v1

    iput v1, p0, Lch/kingdoms/android/ui/SkillUi$TabBtnView;->ACTIVE_SKILL_PONT_Y:I

    .line 121
    const/high16 v1, 0x43880000    # 272.0f

    invoke-static {p1}, Lch/kingdoms/android/ui/SkillUi;->access$0(Lch/kingdoms/android/ui/SkillUi;)Lch/android/api/util/DisplayInfo;

    move-result-object v2

    iget v2, v2, Lch/android/api/util/DisplayInfo;->density:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Lch/kingdoms/android/ui/SkillUi$TabBtnView;->BUFF_SKILL_PONT_X:I

    .line 122
    invoke-static {p1}, Lch/kingdoms/android/ui/SkillUi;->access$0(Lch/kingdoms/android/ui/SkillUi;)Lch/android/api/util/DisplayInfo;

    move-result-object v1

    iget v1, v1, Lch/android/api/util/DisplayInfo;->density:F

    mul-float/2addr v1, v3

    float-to-int v1, v1

    iput v1, p0, Lch/kingdoms/android/ui/SkillUi$TabBtnView;->BUFF_SKILL_PONT_Y:I

    .line 141
    invoke-static {p1}, Lch/kingdoms/android/ui/SkillUi;->access$1(Lch/kingdoms/android/ui/SkillUi;)Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v1, v4}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lch/kingdoms/android/ui/SkillUi$TabBtnView;->ACTIVE_SKILL_BMP:Landroid/graphics/Bitmap;

    .line 142
    invoke-static {p1}, Lch/kingdoms/android/ui/SkillUi;->access$1(Lch/kingdoms/android/ui/SkillUi;)Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020062

    invoke-static {v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lch/kingdoms/android/ui/SkillUi$TabBtnView;->BUFF_SKILL_BMP:Landroid/graphics/Bitmap;

    .line 143
    invoke-static {}, Lch/android/api/util/TextPaints;->getDefault()Landroid/graphics/Paint;

    move-result-object v1

    iput-object v1, p0, Lch/kingdoms/android/ui/SkillUi$TabBtnView;->POINT_PAINT:Landroid/graphics/Paint;

    .line 145
    invoke-static {p1}, Lch/kingdoms/android/ui/SkillUi;->access$1(Lch/kingdoms/android/ui/SkillUi;)Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020001

    invoke-static {v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lch/kingdoms/android/ui/SkillUi$TabBtnView;->ACT_BTN_BMP:Landroid/graphics/Bitmap;

    .line 146
    invoke-static {p1}, Lch/kingdoms/android/ui/SkillUi;->access$1(Lch/kingdoms/android/ui/SkillUi;)Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020061

    invoke-static {v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lch/kingdoms/android/ui/SkillUi$TabBtnView;->BUFF_BTN_BMP:Landroid/graphics/Bitmap;

    .line 148
    const/4 v1, 0x1

    iput-boolean v1, p0, Lch/kingdoms/android/ui/SkillUi$TabBtnView;->m_isActiveSkill:Z

    .line 150
    invoke-static {p1}, Lch/kingdoms/android/ui/SkillUi;->access$2(Lch/kingdoms/android/ui/SkillUi;)Lch/kingdoms/ndk/data/HeroStatus;

    move-result-object v0

    .line 151
    .local v0, "heroStatus":Lch/kingdoms/ndk/data/HeroStatus;
    invoke-virtual {v0}, Lch/kingdoms/ndk/data/HeroStatus;->getActiveSkillAddPoint()I

    move-result v1

    iput v1, p0, Lch/kingdoms/android/ui/SkillUi$TabBtnView;->m_activeSikillAddPoints:I

    .line 152
    invoke-virtual {v0}, Lch/kingdoms/ndk/data/HeroStatus;->getBuffSkillAddPoint()I

    move-result v1

    iput v1, p0, Lch/kingdoms/android/ui/SkillUi$TabBtnView;->m_buffSkillAddPoints:I

    .line 153
    invoke-virtual {p0, p0}, Lch/kingdoms/android/ui/SkillUi$TabBtnView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 154
    invoke-static {p1}, Lch/kingdoms/android/ui/SkillUi;->access$1(Lch/kingdoms/android/ui/SkillUi;)Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v1, v4}, Lch/android/api/util/BmpUtil;->getBmpWidth(Landroid/content/res/Resources;I)I

    move-result v1

    iput v1, p0, Lch/kingdoms/android/ui/SkillUi$TabBtnView;->WIDTH:I

    .line 155
    return-void
.end method


# virtual methods
.method public comsumeActiveSkillAddPoints()Z
    .locals 1

    .prologue
    .line 172
    iget v0, p0, Lch/kingdoms/android/ui/SkillUi$TabBtnView;->m_activeSikillAddPoints:I

    if-lez v0, :cond_0

    .line 173
    iget v0, p0, Lch/kingdoms/android/ui/SkillUi$TabBtnView;->m_activeSikillAddPoints:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lch/kingdoms/android/ui/SkillUi$TabBtnView;->m_activeSikillAddPoints:I

    .line 174
    const/4 v0, 0x1

    .line 176
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public comsumeBuffSkillAddPoints()Z
    .locals 1

    .prologue
    .line 181
    iget v0, p0, Lch/kingdoms/android/ui/SkillUi$TabBtnView;->m_buffSkillAddPoints:I

    if-lez v0, :cond_0

    .line 182
    iget v0, p0, Lch/kingdoms/android/ui/SkillUi$TabBtnView;->m_buffSkillAddPoints:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lch/kingdoms/android/ui/SkillUi$TabBtnView;->m_buffSkillAddPoints:I

    .line 183
    const/4 v0, 0x1

    .line 185
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isActiveSkill()Z
    .locals 1

    .prologue
    .line 206
    iget-boolean v0, p0, Lch/kingdoms/android/ui/SkillUi$TabBtnView;->m_isActiveSkill:Z

    return v0
.end method

.method public isConsumableActiveSkillAddPoint()Z
    .locals 1

    .prologue
    .line 164
    iget v0, p0, Lch/kingdoms/android/ui/SkillUi$TabBtnView;->m_activeSikillAddPoints:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isConsumableBuffSkillAddPoint()Z
    .locals 1

    .prologue
    .line 168
    iget v0, p0, Lch/kingdoms/android/ui/SkillUi$TabBtnView;->m_buffSkillAddPoints:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 10
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x0

    .line 229
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V

    .line 234
    iget-boolean v4, p0, Lch/kingdoms/android/ui/SkillUi$TabBtnView;->m_isActiveSkill:Z

    if-eqz v4, :cond_0

    .line 235
    iget-object v1, p0, Lch/kingdoms/android/ui/SkillUi$TabBtnView;->ACTIVE_SKILL_BMP:Landroid/graphics/Bitmap;

    .line 236
    .local v1, "bgBmp":Landroid/graphics/Bitmap;
    iget v2, p0, Lch/kingdoms/android/ui/SkillUi$TabBtnView;->ACTIVE_SKILL_PONT_X:I

    .line 237
    .local v2, "ptX":I
    iget v3, p0, Lch/kingdoms/android/ui/SkillUi$TabBtnView;->ACTIVE_SKILL_PONT_Y:I

    .line 238
    .local v3, "ptY":I
    iget v0, p0, Lch/kingdoms/android/ui/SkillUi$TabBtnView;->m_activeSikillAddPoints:I

    .line 245
    .local v0, "addPoints":I
    :goto_0
    invoke-virtual {p1, v1, v8, v8, v9}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 246
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    int-to-float v5, v2

    int-to-float v6, v3

    iget-object v7, p0, Lch/kingdoms/android/ui/SkillUi$TabBtnView;->POINT_PAINT:Landroid/graphics/Paint;

    invoke-virtual {p1, v4, v5, v6, v7}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 248
    iget-boolean v4, p0, Lch/kingdoms/android/ui/SkillUi$TabBtnView;->m_isActiveSkill:Z

    if-eqz v4, :cond_1

    .line 249
    iget-object v4, p0, Lch/kingdoms/android/ui/SkillUi$TabBtnView;->BUFF_BTN_BMP:Landroid/graphics/Bitmap;

    iget v5, p0, Lch/kingdoms/android/ui/SkillUi$TabBtnView;->WIDTH:I

    iget-object v6, p0, Lch/kingdoms/android/ui/SkillUi$TabBtnView;->BUFF_BTN_BMP:Landroid/graphics/Bitmap;

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    sub-int/2addr v5, v6

    int-to-float v5, v5

    invoke-virtual {p1, v4, v5, v8, v9}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 253
    :goto_1
    return-void

    .line 240
    .end local v0    # "addPoints":I
    .end local v1    # "bgBmp":Landroid/graphics/Bitmap;
    .end local v2    # "ptX":I
    .end local v3    # "ptY":I
    :cond_0
    iget-object v1, p0, Lch/kingdoms/android/ui/SkillUi$TabBtnView;->BUFF_SKILL_BMP:Landroid/graphics/Bitmap;

    .line 241
    .restart local v1    # "bgBmp":Landroid/graphics/Bitmap;
    iget v2, p0, Lch/kingdoms/android/ui/SkillUi$TabBtnView;->BUFF_SKILL_PONT_X:I

    .line 242
    .restart local v2    # "ptX":I
    iget v3, p0, Lch/kingdoms/android/ui/SkillUi$TabBtnView;->BUFF_SKILL_PONT_Y:I

    .line 243
    .restart local v3    # "ptY":I
    iget v0, p0, Lch/kingdoms/android/ui/SkillUi$TabBtnView;->m_buffSkillAddPoints:I

    .restart local v0    # "addPoints":I
    goto :goto_0

    .line 251
    :cond_1
    iget-object v4, p0, Lch/kingdoms/android/ui/SkillUi$TabBtnView;->ACT_BTN_BMP:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v4, v8, v8, v9}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_1
.end method

.method protected onMeasure(II)V
    .locals 3
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const v2, 0x7f020002

    .line 222
    invoke-super {p0, p1, p2}, Landroid/widget/ImageView;->onMeasure(II)V

    .line 223
    iget-object v0, p0, Lch/kingdoms/android/ui/SkillUi$TabBtnView;->this$0:Lch/kingdoms/android/ui/SkillUi;

    invoke-static {v0}, Lch/kingdoms/android/ui/SkillUi;->access$1(Lch/kingdoms/android/ui/SkillUi;)Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0, v2}, Lch/android/api/util/BmpUtil;->getBmpWidth(Landroid/content/res/Resources;I)I

    move-result v0

    .line 224
    iget-object v1, p0, Lch/kingdoms/android/ui/SkillUi$TabBtnView;->this$0:Lch/kingdoms/android/ui/SkillUi;

    invoke-static {v1}, Lch/kingdoms/android/ui/SkillUi;->access$1(Lch/kingdoms/android/ui/SkillUi;)Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v1, v2}, Lch/android/api/util/BmpUtil;->getBmpHeight(Landroid/content/res/Resources;I)I

    move-result v1

    .line 223
    invoke-virtual {p0, v0, v1}, Lch/kingdoms/android/ui/SkillUi$TabBtnView;->setMeasuredDimension(II)V

    .line 225
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 192
    invoke-static {}, Lch/android/api/ui/ChViewGen;->getEventLayerLevel()I

    move-result v0

    iget-object v1, p0, Lch/kingdoms/android/ui/SkillUi$TabBtnView;->this$0:Lch/kingdoms/android/ui/SkillUi;

    invoke-static {v1}, Lch/kingdoms/android/ui/SkillUi;->access$3(Lch/kingdoms/android/ui/SkillUi;)I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 193
    iget v0, p0, Lch/kingdoms/android/ui/SkillUi$TabBtnView;->WIDTH:I

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    .line 194
    iget-object v0, p0, Lch/kingdoms/android/ui/SkillUi$TabBtnView;->this$0:Lch/kingdoms/android/ui/SkillUi;

    invoke-virtual {v0}, Lch/kingdoms/android/ui/SkillUi;->selectActiveSkills()V

    .line 195
    invoke-virtual {p0}, Lch/kingdoms/android/ui/SkillUi$TabBtnView;->selectActiveSkills()V

    .line 202
    :cond_0
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 198
    :cond_1
    iget-object v0, p0, Lch/kingdoms/android/ui/SkillUi$TabBtnView;->this$0:Lch/kingdoms/android/ui/SkillUi;

    invoke-virtual {v0}, Lch/kingdoms/android/ui/SkillUi;->selectBuffSkills()V

    .line 199
    invoke-virtual {p0}, Lch/kingdoms/android/ui/SkillUi$TabBtnView;->selectBuffSkills()V

    goto :goto_0
.end method

.method public releaseRsources()V
    .locals 1

    .prologue
    .line 258
    iget-object v0, p0, Lch/kingdoms/android/ui/SkillUi$TabBtnView;->ACTIVE_SKILL_BMP:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 259
    iget-object v0, p0, Lch/kingdoms/android/ui/SkillUi$TabBtnView;->ACTIVE_SKILL_BMP:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 261
    :cond_0
    iget-object v0, p0, Lch/kingdoms/android/ui/SkillUi$TabBtnView;->BUFF_SKILL_BMP:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 262
    iget-object v0, p0, Lch/kingdoms/android/ui/SkillUi$TabBtnView;->ACTIVE_SKILL_BMP:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 264
    :cond_1
    return-void
.end method

.method public selectActiveSkills()V
    .locals 1

    .prologue
    .line 210
    const/4 v0, 0x1

    iput-boolean v0, p0, Lch/kingdoms/android/ui/SkillUi$TabBtnView;->m_isActiveSkill:Z

    .line 211
    invoke-super {p0}, Landroid/widget/ImageView;->invalidate()V

    .line 212
    return-void
.end method

.method public selectBuffSkills()V
    .locals 1

    .prologue
    .line 215
    const/4 v0, 0x0

    iput-boolean v0, p0, Lch/kingdoms/android/ui/SkillUi$TabBtnView;->m_isActiveSkill:Z

    .line 216
    invoke-super {p0}, Landroid/widget/ImageView;->invalidate()V

    .line 217
    return-void
.end method

.method public updateSkillAddPoints()V
    .locals 2

    .prologue
    .line 158
    iget-object v1, p0, Lch/kingdoms/android/ui/SkillUi$TabBtnView;->this$0:Lch/kingdoms/android/ui/SkillUi;

    invoke-static {v1}, Lch/kingdoms/android/ui/SkillUi;->access$2(Lch/kingdoms/android/ui/SkillUi;)Lch/kingdoms/ndk/data/HeroStatus;

    move-result-object v0

    .line 159
    .local v0, "heroStatus":Lch/kingdoms/ndk/data/HeroStatus;
    invoke-virtual {v0}, Lch/kingdoms/ndk/data/HeroStatus;->getActiveSkillAddPoint()I

    move-result v1

    iput v1, p0, Lch/kingdoms/android/ui/SkillUi$TabBtnView;->m_activeSikillAddPoints:I

    .line 160
    invoke-virtual {v0}, Lch/kingdoms/ndk/data/HeroStatus;->getBuffSkillAddPoint()I

    move-result v1

    iput v1, p0, Lch/kingdoms/android/ui/SkillUi$TabBtnView;->m_buffSkillAddPoints:I

    .line 161
    return-void
.end method
