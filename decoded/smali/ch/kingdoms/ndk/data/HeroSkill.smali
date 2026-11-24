.class public Lch/kingdoms/ndk/data/HeroSkill;
.super Ljava/lang/Object;
.source "HeroSkill.java"


# instance fields
.field public aSkillUnlocks:[B

.field public actSkillLvPluss:[B

.field public actSkillLvs:[B

.field public bSkillUnlocks:[B

.field public bufSkillLvPluss:[B

.field public bufSkillLvs:[B


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getActiveSkillLvs(I)B
    .locals 1
    .param p1, "_index"    # I

    .prologue
    .line 21
    iget-object v0, p0, Lch/kingdoms/ndk/data/HeroSkill;->actSkillLvs:[B

    aget-byte v0, v0, p1

    return v0
.end method

.method public getBuffSkillLvs(I)B
    .locals 1
    .param p1, "_index"    # I

    .prologue
    .line 25
    iget-object v0, p0, Lch/kingdoms/ndk/data/HeroSkill;->bufSkillLvs:[B

    aget-byte v0, v0, p1

    return v0
.end method

.method public setSkills([B[B[B[B[B[B)V
    .locals 0
    .param p1, "_aSkillUnlocks"    # [B
    .param p2, "_bSkillUnlocks"    # [B
    .param p3, "_actSkillLvs"    # [B
    .param p4, "_actSkillLvPluss"    # [B
    .param p5, "_bufSkillLvs"    # [B
    .param p6, "_bufSkillLvPluss"    # [B

    .prologue
    .line 12
    iput-object p1, p0, Lch/kingdoms/ndk/data/HeroSkill;->aSkillUnlocks:[B

    .line 13
    iput-object p2, p0, Lch/kingdoms/ndk/data/HeroSkill;->bSkillUnlocks:[B

    .line 14
    iput-object p3, p0, Lch/kingdoms/ndk/data/HeroSkill;->actSkillLvs:[B

    .line 15
    iput-object p4, p0, Lch/kingdoms/ndk/data/HeroSkill;->actSkillLvPluss:[B

    .line 16
    iput-object p5, p0, Lch/kingdoms/ndk/data/HeroSkill;->bufSkillLvs:[B

    .line 17
    iput-object p6, p0, Lch/kingdoms/ndk/data/HeroSkill;->bufSkillLvPluss:[B

    .line 18
    return-void
.end method
