.class public Lch/kingdoms/ndk/data/HeroStatus;
.super Ljava/lang/Object;
.source "HeroStatus.java"


# instance fields
.field private carleHpItemCnt:I

.field private carleState:I

.field private carleTpItemCnt:I

.field private m_TmpAgi:I

.field private m_TmpAtr:I

.field private m_TmpCrt:I

.field private m_TmpDef:I

.field private m_TmpMaxAtk:I

.field private m_TmpMaxSatk:I

.field private m_TmpMinAtk:I

.field private m_TmpMinSatk:I

.field private m_aSkillAddPoint:I

.field private m_agi:I

.field private m_atr:I

.field private m_bSkillAddPoint:I

.field private m_cashPoints:I

.field private m_crt:I

.field private m_def:I

.field private m_dex:I

.field private m_dexEquip:I

.field private m_exp:I

.field private m_hp:I

.field private m_int:I

.field private m_intEquip:I

.field private m_job:I

.field private m_level:I

.field private m_maxAtk:I

.field private m_maxExp:I

.field private m_maxHp:I

.field private m_maxSatk:I

.field private m_maxSp:I

.field private m_maxTp:I

.field private m_minAtk:I

.field private m_minSatk:I

.field private m_money:I

.field private m_sp:I

.field private m_statPoints:I

.field private m_str:I

.field private m_strEquip:I

.field private m_tmpJob:I

.field private m_tp:I

.field private m_vit:I

.field private m_vitEquip:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public copy()Lch/kingdoms/ndk/data/HeroStatus;
    .locals 9

    .prologue
    .line 344
    new-instance v0, Lch/kingdoms/ndk/data/HeroStatus;

    invoke-direct {v0}, Lch/kingdoms/ndk/data/HeroStatus;-><init>()V

    .line 345
    .local v0, "copied":Lch/kingdoms/ndk/data/HeroStatus;
    iget v1, p0, Lch/kingdoms/ndk/data/HeroStatus;->m_minAtk:I

    iget v2, p0, Lch/kingdoms/ndk/data/HeroStatus;->m_maxAtk:I

    iget v3, p0, Lch/kingdoms/ndk/data/HeroStatus;->m_atr:I

    iget v4, p0, Lch/kingdoms/ndk/data/HeroStatus;->m_minSatk:I

    iget v5, p0, Lch/kingdoms/ndk/data/HeroStatus;->m_maxSatk:I

    iget v6, p0, Lch/kingdoms/ndk/data/HeroStatus;->m_agi:I

    iget v7, p0, Lch/kingdoms/ndk/data/HeroStatus;->m_def:I

    iget v8, p0, Lch/kingdoms/ndk/data/HeroStatus;->m_crt:I

    invoke-virtual/range {v0 .. v8}, Lch/kingdoms/ndk/data/HeroStatus;->setAbility(IIIIIIII)V

    .line 346
    iget v1, p0, Lch/kingdoms/ndk/data/HeroStatus;->m_job:I

    iget v2, p0, Lch/kingdoms/ndk/data/HeroStatus;->m_tmpJob:I

    iget v3, p0, Lch/kingdoms/ndk/data/HeroStatus;->m_money:I

    iget v4, p0, Lch/kingdoms/ndk/data/HeroStatus;->m_level:I

    iget v5, p0, Lch/kingdoms/ndk/data/HeroStatus;->m_maxExp:I

    iget v6, p0, Lch/kingdoms/ndk/data/HeroStatus;->m_exp:I

    iget v7, p0, Lch/kingdoms/ndk/data/HeroStatus;->m_cashPoints:I

    invoke-virtual/range {v0 .. v7}, Lch/kingdoms/ndk/data/HeroStatus;->setInfo(IIIIIII)V

    .line 347
    iget v1, p0, Lch/kingdoms/ndk/data/HeroStatus;->m_maxHp:I

    iget v2, p0, Lch/kingdoms/ndk/data/HeroStatus;->m_hp:I

    iget v3, p0, Lch/kingdoms/ndk/data/HeroStatus;->m_maxSp:I

    iget v4, p0, Lch/kingdoms/ndk/data/HeroStatus;->m_sp:I

    iget v5, p0, Lch/kingdoms/ndk/data/HeroStatus;->m_maxTp:I

    iget v6, p0, Lch/kingdoms/ndk/data/HeroStatus;->m_tp:I

    invoke-virtual/range {v0 .. v6}, Lch/kingdoms/ndk/data/HeroStatus;->setPoint(IIIIII)V

    .line 348
    iget v1, p0, Lch/kingdoms/ndk/data/HeroStatus;->m_statPoints:I

    iget v2, p0, Lch/kingdoms/ndk/data/HeroStatus;->m_str:I

    iget v3, p0, Lch/kingdoms/ndk/data/HeroStatus;->m_vit:I

    iget v4, p0, Lch/kingdoms/ndk/data/HeroStatus;->m_dex:I

    iget v5, p0, Lch/kingdoms/ndk/data/HeroStatus;->m_int:I

    invoke-virtual/range {v0 .. v5}, Lch/kingdoms/ndk/data/HeroStatus;->setStat(IIIII)V

    .line 349
    iget v1, p0, Lch/kingdoms/ndk/data/HeroStatus;->m_strEquip:I

    iget v2, p0, Lch/kingdoms/ndk/data/HeroStatus;->m_vitEquip:I

    iget v3, p0, Lch/kingdoms/ndk/data/HeroStatus;->m_dexEquip:I

    iget v4, p0, Lch/kingdoms/ndk/data/HeroStatus;->m_intEquip:I

    invoke-virtual {v0, v1, v2, v3, v4}, Lch/kingdoms/ndk/data/HeroStatus;->setEquipStat(IIII)V

    .line 350
    iget v1, p0, Lch/kingdoms/ndk/data/HeroStatus;->m_aSkillAddPoint:I

    iget v2, p0, Lch/kingdoms/ndk/data/HeroStatus;->m_bSkillAddPoint:I

    invoke-virtual {v0, v1, v2}, Lch/kingdoms/ndk/data/HeroStatus;->setSkillAddPoints(II)V

    .line 352
    return-object v0
.end method

.method public getActiveSkillAddPoint()I
    .locals 1

    .prologue
    .line 320
    iget v0, p0, Lch/kingdoms/ndk/data/HeroStatus;->m_aSkillAddPoint:I

    return v0
.end method

.method public getAgi()I
    .locals 1

    .prologue
    .line 276
    iget v0, p0, Lch/kingdoms/ndk/data/HeroStatus;->m_agi:I

    return v0
.end method

.method public getAtr()I
    .locals 1

    .prologue
    .line 264
    iget v0, p0, Lch/kingdoms/ndk/data/HeroStatus;->m_atr:I

    return v0
.end method

.method public getBuffSkillAddPoint()I
    .locals 1

    .prologue
    .line 324
    iget v0, p0, Lch/kingdoms/ndk/data/HeroStatus;->m_bSkillAddPoint:I

    return v0
.end method

.method public final getCarleHpItemCnt()I
    .locals 1

    .prologue
    .line 336
    iget v0, p0, Lch/kingdoms/ndk/data/HeroStatus;->carleHpItemCnt:I

    return v0
.end method

.method public final getCarleState()I
    .locals 1

    .prologue
    .line 332
    iget v0, p0, Lch/kingdoms/ndk/data/HeroStatus;->carleState:I

    return v0
.end method

.method public final getCarleTpItemCnt()I
    .locals 1

    .prologue
    .line 340
    iget v0, p0, Lch/kingdoms/ndk/data/HeroStatus;->carleTpItemCnt:I

    return v0
.end method

.method public getCashPoints()I
    .locals 1

    .prologue
    .line 192
    iget v0, p0, Lch/kingdoms/ndk/data/HeroStatus;->m_cashPoints:I

    return v0
.end method

.method public getCrt()I
    .locals 1

    .prologue
    .line 284
    iget v0, p0, Lch/kingdoms/ndk/data/HeroStatus;->m_crt:I

    return v0
.end method

.method public getDef()I
    .locals 1

    .prologue
    .line 280
    iget v0, p0, Lch/kingdoms/ndk/data/HeroStatus;->m_def:I

    return v0
.end method

.method public getDex()I
    .locals 1

    .prologue
    .line 232
    iget v0, p0, Lch/kingdoms/ndk/data/HeroStatus;->m_dex:I

    return v0
.end method

.method public final getDexEquip()I
    .locals 1

    .prologue
    .line 248
    iget v0, p0, Lch/kingdoms/ndk/data/HeroStatus;->m_dexEquip:I

    return v0
.end method

.method public getExp()I
    .locals 1

    .prologue
    .line 184
    iget v0, p0, Lch/kingdoms/ndk/data/HeroStatus;->m_exp:I

    return v0
.end method

.method public getHp()I
    .locals 1

    .prologue
    .line 200
    iget v0, p0, Lch/kingdoms/ndk/data/HeroStatus;->m_hp:I

    return v0
.end method

.method public getInt()I
    .locals 1

    .prologue
    .line 236
    iget v0, p0, Lch/kingdoms/ndk/data/HeroStatus;->m_int:I

    return v0
.end method

.method public final getIntEquip()I
    .locals 1

    .prologue
    .line 252
    iget v0, p0, Lch/kingdoms/ndk/data/HeroStatus;->m_intEquip:I

    return v0
.end method

.method public getJob()I
    .locals 1

    .prologue
    .line 164
    iget v0, p0, Lch/kingdoms/ndk/data/HeroStatus;->m_job:I

    return v0
.end method

.method public getLevel()I
    .locals 1

    .prologue
    .line 176
    iget v0, p0, Lch/kingdoms/ndk/data/HeroStatus;->m_level:I

    return v0
.end method

.method public getMaxAtk()I
    .locals 1

    .prologue
    .line 260
    iget v0, p0, Lch/kingdoms/ndk/data/HeroStatus;->m_maxAtk:I

    return v0
.end method

.method public getMaxExp()I
    .locals 1

    .prologue
    .line 180
    iget v0, p0, Lch/kingdoms/ndk/data/HeroStatus;->m_maxExp:I

    return v0
.end method

.method public getMaxHp()I
    .locals 1

    .prologue
    .line 196
    iget v0, p0, Lch/kingdoms/ndk/data/HeroStatus;->m_maxHp:I

    return v0
.end method

.method public getMaxSatk()I
    .locals 1

    .prologue
    .line 272
    iget v0, p0, Lch/kingdoms/ndk/data/HeroStatus;->m_maxSatk:I

    return v0
.end method

.method public getMaxSp()I
    .locals 1

    .prologue
    .line 204
    iget v0, p0, Lch/kingdoms/ndk/data/HeroStatus;->m_maxSp:I

    return v0
.end method

.method public getMaxTp()I
    .locals 1

    .prologue
    .line 212
    iget v0, p0, Lch/kingdoms/ndk/data/HeroStatus;->m_maxTp:I

    return v0
.end method

.method public getMinAtk()I
    .locals 1

    .prologue
    .line 256
    iget v0, p0, Lch/kingdoms/ndk/data/HeroStatus;->m_minAtk:I

    return v0
.end method

.method public getMinSatk()I
    .locals 1

    .prologue
    .line 268
    iget v0, p0, Lch/kingdoms/ndk/data/HeroStatus;->m_minSatk:I

    return v0
.end method

.method public getMoney()I
    .locals 1

    .prologue
    .line 168
    iget v0, p0, Lch/kingdoms/ndk/data/HeroStatus;->m_money:I

    return v0
.end method

.method public getPlusStatEnable()Z
    .locals 1

    .prologue
    .line 107
    iget v0, p0, Lch/kingdoms/ndk/data/HeroStatus;->m_statPoints:I

    if-lez v0, :cond_0

    .line 108
    const/4 v0, 0x1

    .line 110
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getSp()I
    .locals 1

    .prologue
    .line 208
    iget v0, p0, Lch/kingdoms/ndk/data/HeroStatus;->m_sp:I

    return v0
.end method

.method public getStatPoints()I
    .locals 1

    .prologue
    .line 220
    iget v0, p0, Lch/kingdoms/ndk/data/HeroStatus;->m_statPoints:I

    return v0
.end method

.method public getStr()I
    .locals 1

    .prologue
    .line 224
    iget v0, p0, Lch/kingdoms/ndk/data/HeroStatus;->m_str:I

    return v0
.end method

.method public final getStrEquip()I
    .locals 1

    .prologue
    .line 240
    iget v0, p0, Lch/kingdoms/ndk/data/HeroStatus;->m_strEquip:I

    return v0
.end method

.method public getTmpAgi()I
    .locals 1

    .prologue
    .line 308
    iget v0, p0, Lch/kingdoms/ndk/data/HeroStatus;->m_TmpAgi:I

    return v0
.end method

.method public getTmpAtr()I
    .locals 1

    .prologue
    .line 296
    iget v0, p0, Lch/kingdoms/ndk/data/HeroStatus;->m_TmpAtr:I

    return v0
.end method

.method public getTmpCrt()I
    .locals 1

    .prologue
    .line 316
    iget v0, p0, Lch/kingdoms/ndk/data/HeroStatus;->m_TmpCrt:I

    return v0
.end method

.method public getTmpDef()I
    .locals 1

    .prologue
    .line 312
    iget v0, p0, Lch/kingdoms/ndk/data/HeroStatus;->m_TmpDef:I

    return v0
.end method

.method public getTmpJob()I
    .locals 1

    .prologue
    .line 328
    iget v0, p0, Lch/kingdoms/ndk/data/HeroStatus;->m_tmpJob:I

    return v0
.end method

.method public getTmpMaxAtk()I
    .locals 1

    .prologue
    .line 292
    iget v0, p0, Lch/kingdoms/ndk/data/HeroStatus;->m_TmpMaxAtk:I

    return v0
.end method

.method public getTmpMaxSatk()I
    .locals 1

    .prologue
    .line 304
    iget v0, p0, Lch/kingdoms/ndk/data/HeroStatus;->m_TmpMaxSatk:I

    return v0
.end method

.method public getTmpMinAtk()I
    .locals 1

    .prologue
    .line 288
    iget v0, p0, Lch/kingdoms/ndk/data/HeroStatus;->m_TmpMinAtk:I

    return v0
.end method

.method public getTmpMinSatk()I
    .locals 1

    .prologue
    .line 300
    iget v0, p0, Lch/kingdoms/ndk/data/HeroStatus;->m_TmpMinSatk:I

    return v0
.end method

.method public getTp()I
    .locals 1

    .prologue
    .line 216
    iget v0, p0, Lch/kingdoms/ndk/data/HeroStatus;->m_tp:I

    return v0
.end method

.method public getVit()I
    .locals 1

    .prologue
    .line 228
    iget v0, p0, Lch/kingdoms/ndk/data/HeroStatus;->m_vit:I

    return v0
.end method

.method public final getVitEquip()I
    .locals 1

    .prologue
    .line 244
    iget v0, p0, Lch/kingdoms/ndk/data/HeroStatus;->m_vitEquip:I

    return v0
.end method

.method public isModified(Lch/kingdoms/ndk/data/HeroStatus;)Z
    .locals 2
    .param p1, "_compared"    # Lch/kingdoms/ndk/data/HeroStatus;

    .prologue
    .line 356
    iget v0, p0, Lch/kingdoms/ndk/data/HeroStatus;->m_statPoints:I

    invoke-virtual {p1}, Lch/kingdoms/ndk/data/HeroStatus;->getStatPoints()I

    move-result v1

    if-ne v0, v1, :cond_0

    iget v0, p0, Lch/kingdoms/ndk/data/HeroStatus;->m_str:I

    invoke-virtual {p1}, Lch/kingdoms/ndk/data/HeroStatus;->getStr()I

    move-result v1

    if-ne v0, v1, :cond_0

    iget v0, p0, Lch/kingdoms/ndk/data/HeroStatus;->m_vit:I

    invoke-virtual {p1}, Lch/kingdoms/ndk/data/HeroStatus;->getVit()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 357
    iget v0, p0, Lch/kingdoms/ndk/data/HeroStatus;->m_dex:I

    invoke-virtual {p1}, Lch/kingdoms/ndk/data/HeroStatus;->getDex()I

    move-result v1

    if-ne v0, v1, :cond_0

    iget v0, p0, Lch/kingdoms/ndk/data/HeroStatus;->m_int:I

    invoke-virtual {p1}, Lch/kingdoms/ndk/data/HeroStatus;->getInt()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 358
    const/4 v0, 0x0

    .line 361
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public plusInt()V
    .locals 1

    .prologue
    .line 135
    invoke-virtual {p0}, Lch/kingdoms/ndk/data/HeroStatus;->getPlusStatEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 136
    iget v0, p0, Lch/kingdoms/ndk/data/HeroStatus;->m_statPoints:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lch/kingdoms/ndk/data/HeroStatus;->m_statPoints:I

    .line 137
    iget v0, p0, Lch/kingdoms/ndk/data/HeroStatus;->m_int:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lch/kingdoms/ndk/data/HeroStatus;->m_int:I

    .line 139
    :cond_0
    return-void
.end method

.method public plusStr()V
    .locals 1

    .prologue
    .line 114
    invoke-virtual {p0}, Lch/kingdoms/ndk/data/HeroStatus;->getPlusStatEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 115
    iget v0, p0, Lch/kingdoms/ndk/data/HeroStatus;->m_statPoints:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lch/kingdoms/ndk/data/HeroStatus;->m_statPoints:I

    .line 116
    iget v0, p0, Lch/kingdoms/ndk/data/HeroStatus;->m_str:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lch/kingdoms/ndk/data/HeroStatus;->m_str:I

    .line 118
    :cond_0
    return-void
.end method

.method public plusVit()V
    .locals 1

    .prologue
    .line 121
    invoke-virtual {p0}, Lch/kingdoms/ndk/data/HeroStatus;->getPlusStatEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 122
    iget v0, p0, Lch/kingdoms/ndk/data/HeroStatus;->m_statPoints:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lch/kingdoms/ndk/data/HeroStatus;->m_statPoints:I

    .line 123
    iget v0, p0, Lch/kingdoms/ndk/data/HeroStatus;->m_vit:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lch/kingdoms/ndk/data/HeroStatus;->m_vit:I

    .line 125
    :cond_0
    return-void
.end method

.method public plushDex()V
    .locals 1

    .prologue
    .line 128
    invoke-virtual {p0}, Lch/kingdoms/ndk/data/HeroStatus;->getPlusStatEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 129
    iget v0, p0, Lch/kingdoms/ndk/data/HeroStatus;->m_statPoints:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lch/kingdoms/ndk/data/HeroStatus;->m_statPoints:I

    .line 130
    iget v0, p0, Lch/kingdoms/ndk/data/HeroStatus;->m_dex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lch/kingdoms/ndk/data/HeroStatus;->m_dex:I

    .line 132
    :cond_0
    return-void
.end method

.method public setAbility(IIIIIIII)V
    .locals 0
    .param p1, "_minAtk"    # I
    .param p2, "_maxAtk"    # I
    .param p3, "_atr"    # I
    .param p4, "_minSatk"    # I
    .param p5, "_maxSatk"    # I
    .param p6, "_agi"    # I
    .param p7, "_def"    # I
    .param p8, "_crt"    # I

    .prologue
    .line 142
    iput p1, p0, Lch/kingdoms/ndk/data/HeroStatus;->m_minAtk:I

    .line 143
    iput p2, p0, Lch/kingdoms/ndk/data/HeroStatus;->m_maxAtk:I

    .line 144
    iput p3, p0, Lch/kingdoms/ndk/data/HeroStatus;->m_atr:I

    .line 145
    iput p4, p0, Lch/kingdoms/ndk/data/HeroStatus;->m_minSatk:I

    .line 146
    iput p5, p0, Lch/kingdoms/ndk/data/HeroStatus;->m_maxSatk:I

    .line 147
    iput p6, p0, Lch/kingdoms/ndk/data/HeroStatus;->m_agi:I

    .line 148
    iput p7, p0, Lch/kingdoms/ndk/data/HeroStatus;->m_def:I

    .line 149
    iput p8, p0, Lch/kingdoms/ndk/data/HeroStatus;->m_crt:I

    .line 150
    return-void
.end method

.method public setCarle(III)V
    .locals 0
    .param p1, "carleSate"    # I
    .param p2, "carleHpItemCnt"    # I
    .param p3, "carleTpItemCnt"    # I

    .prologue
    .line 101
    iput p1, p0, Lch/kingdoms/ndk/data/HeroStatus;->carleState:I

    .line 102
    iput p2, p0, Lch/kingdoms/ndk/data/HeroStatus;->carleHpItemCnt:I

    .line 103
    iput p3, p0, Lch/kingdoms/ndk/data/HeroStatus;->carleTpItemCnt:I

    .line 104
    return-void
.end method

.method public setCashPoins(I)V
    .locals 0
    .param p1, "cashPoints"    # I

    .prologue
    .line 188
    iput p1, p0, Lch/kingdoms/ndk/data/HeroStatus;->m_cashPoints:I

    .line 189
    return-void
.end method

.method public setEquipStat(IIII)V
    .locals 0
    .param p1, "_str"    # I
    .param p2, "_vit"    # I
    .param p3, "_dex"    # I
    .param p4, "_int"    # I

    .prologue
    .line 88
    iput p1, p0, Lch/kingdoms/ndk/data/HeroStatus;->m_strEquip:I

    .line 89
    iput p2, p0, Lch/kingdoms/ndk/data/HeroStatus;->m_vitEquip:I

    .line 90
    iput p3, p0, Lch/kingdoms/ndk/data/HeroStatus;->m_dexEquip:I

    .line 91
    iput p4, p0, Lch/kingdoms/ndk/data/HeroStatus;->m_intEquip:I

    .line 92
    return-void
.end method

.method public setInfo(IIIIIII)V
    .locals 0
    .param p1, "_job"    # I
    .param p2, "_tmpJob"    # I
    .param p3, "_money"    # I
    .param p4, "_level"    # I
    .param p5, "_maxExp"    # I
    .param p6, "_exp"    # I
    .param p7, "_cashPoints"    # I

    .prologue
    .line 61
    iput p1, p0, Lch/kingdoms/ndk/data/HeroStatus;->m_job:I

    .line 62
    iput p2, p0, Lch/kingdoms/ndk/data/HeroStatus;->m_tmpJob:I

    .line 63
    iput p3, p0, Lch/kingdoms/ndk/data/HeroStatus;->m_money:I

    .line 64
    iput p4, p0, Lch/kingdoms/ndk/data/HeroStatus;->m_level:I

    .line 65
    iput p5, p0, Lch/kingdoms/ndk/data/HeroStatus;->m_maxExp:I

    .line 66
    iput p6, p0, Lch/kingdoms/ndk/data/HeroStatus;->m_exp:I

    .line 67
    iput p7, p0, Lch/kingdoms/ndk/data/HeroStatus;->m_cashPoints:I

    .line 68
    return-void
.end method

.method public setMoney(I)V
    .locals 0
    .param p1, "money"    # I

    .prologue
    .line 172
    iput p1, p0, Lch/kingdoms/ndk/data/HeroStatus;->m_money:I

    .line 173
    return-void
.end method

.method public setPoint(IIIIII)V
    .locals 0
    .param p1, "_maxHp"    # I
    .param p2, "_hp"    # I
    .param p3, "_maxSp"    # I
    .param p4, "_sp"    # I
    .param p5, "_maxTp"    # I
    .param p6, "_tp"    # I

    .prologue
    .line 71
    iput p1, p0, Lch/kingdoms/ndk/data/HeroStatus;->m_maxHp:I

    .line 72
    iput p2, p0, Lch/kingdoms/ndk/data/HeroStatus;->m_hp:I

    .line 73
    iput p3, p0, Lch/kingdoms/ndk/data/HeroStatus;->m_maxSp:I

    .line 74
    iput p4, p0, Lch/kingdoms/ndk/data/HeroStatus;->m_sp:I

    .line 75
    iput p5, p0, Lch/kingdoms/ndk/data/HeroStatus;->m_maxTp:I

    .line 76
    iput p6, p0, Lch/kingdoms/ndk/data/HeroStatus;->m_tp:I

    .line 77
    return-void
.end method

.method public setSkillAddPoints(II)V
    .locals 0
    .param p1, "_aSkillAddPoint"    # I
    .param p2, "_bSkillAddPoint"    # I

    .prologue
    .line 95
    iput p1, p0, Lch/kingdoms/ndk/data/HeroStatus;->m_aSkillAddPoint:I

    .line 96
    iput p2, p0, Lch/kingdoms/ndk/data/HeroStatus;->m_bSkillAddPoint:I

    .line 98
    return-void
.end method

.method public setStat(IIIII)V
    .locals 0
    .param p1, "_statPoint"    # I
    .param p2, "_str"    # I
    .param p3, "_vit"    # I
    .param p4, "_dex"    # I
    .param p5, "_int"    # I

    .prologue
    .line 80
    iput p1, p0, Lch/kingdoms/ndk/data/HeroStatus;->m_statPoints:I

    .line 81
    iput p2, p0, Lch/kingdoms/ndk/data/HeroStatus;->m_str:I

    .line 82
    iput p3, p0, Lch/kingdoms/ndk/data/HeroStatus;->m_vit:I

    .line 83
    iput p4, p0, Lch/kingdoms/ndk/data/HeroStatus;->m_dex:I

    .line 84
    iput p5, p0, Lch/kingdoms/ndk/data/HeroStatus;->m_int:I

    .line 85
    return-void
.end method

.method public setTmpAbility(IIIIIIII)V
    .locals 0
    .param p1, "_minAtk"    # I
    .param p2, "_maxAtk"    # I
    .param p3, "_atr"    # I
    .param p4, "_minSatk"    # I
    .param p5, "_maxSatk"    # I
    .param p6, "_agi"    # I
    .param p7, "_def"    # I
    .param p8, "_crt"    # I

    .prologue
    .line 153
    iput p1, p0, Lch/kingdoms/ndk/data/HeroStatus;->m_TmpMinAtk:I

    .line 154
    iput p2, p0, Lch/kingdoms/ndk/data/HeroStatus;->m_TmpMaxAtk:I

    .line 155
    iput p3, p0, Lch/kingdoms/ndk/data/HeroStatus;->m_TmpAtr:I

    .line 156
    iput p4, p0, Lch/kingdoms/ndk/data/HeroStatus;->m_TmpMinSatk:I

    .line 157
    iput p5, p0, Lch/kingdoms/ndk/data/HeroStatus;->m_TmpMaxSatk:I

    .line 158
    iput p6, p0, Lch/kingdoms/ndk/data/HeroStatus;->m_TmpAgi:I

    .line 159
    iput p7, p0, Lch/kingdoms/ndk/data/HeroStatus;->m_TmpDef:I

    .line 160
    iput p8, p0, Lch/kingdoms/ndk/data/HeroStatus;->m_TmpCrt:I

    .line 161
    return-void
.end method
