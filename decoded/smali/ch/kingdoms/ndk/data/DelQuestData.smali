.class public Lch/kingdoms/ndk/data/DelQuestData;
.super Ljava/lang/Object;
.source "DelQuestData.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lch/kingdoms/ndk/data/DelQuestData$CompleteQuest;,
        Lch/kingdoms/ndk/data/DelQuestData$ItemNameAndCount;
    }
.end annotation


# static fields
.field public static activeSkillPoints:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static buffSkillPoints:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static exps:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static items:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lch/kingdoms/ndk/data/DelQuestData$ItemNameAndCount;",
            ">;"
        }
    .end annotation
.end field

.field public static moneys:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static quests:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lch/kingdoms/ndk/data/DelQuestData$CompleteQuest;",
            ">;"
        }
    .end annotation
.end field

.field public static statPoints:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 10
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lch/kingdoms/ndk/data/DelQuestData;->exps:Ljava/util/ArrayList;

    .line 11
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lch/kingdoms/ndk/data/DelQuestData;->moneys:Ljava/util/ArrayList;

    .line 12
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lch/kingdoms/ndk/data/DelQuestData;->items:Ljava/util/ArrayList;

    .line 13
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lch/kingdoms/ndk/data/DelQuestData;->statPoints:Ljava/util/ArrayList;

    .line 14
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lch/kingdoms/ndk/data/DelQuestData;->activeSkillPoints:Ljava/util/ArrayList;

    .line 15
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lch/kingdoms/ndk/data/DelQuestData;->buffSkillPoints:Ljava/util/ArrayList;

    .line 16
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lch/kingdoms/ndk/data/DelQuestData;->quests:Ljava/util/ArrayList;

    .line 9
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addActiveSkillPoint(I)V
    .locals 2
    .param p0, "point"    # I

    .prologue
    .line 59
    sget-object v0, Lch/kingdoms/ndk/data/DelQuestData;->activeSkillPoints:Ljava/util/ArrayList;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 60
    return-void
.end method

.method public static addBuffSkillPoint(I)V
    .locals 2
    .param p0, "point"    # I

    .prologue
    .line 64
    sget-object v0, Lch/kingdoms/ndk/data/DelQuestData;->buffSkillPoints:Ljava/util/ArrayList;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 65
    return-void
.end method

.method public static addCompleteQuest([SI)V
    .locals 5
    .param p0, "shorts"    # [S
    .param p1, "type"    # I

    .prologue
    .line 69
    :try_start_0
    new-instance v1, Lch/kingdoms/ndk/data/DelQuestData$CompleteQuest;

    invoke-direct {v1}, Lch/kingdoms/ndk/data/DelQuestData$CompleteQuest;-><init>()V

    .line 70
    .local v1, "quest":Lch/kingdoms/ndk/data/DelQuestData$CompleteQuest;
    iput p1, v1, Lch/kingdoms/ndk/data/DelQuestData$CompleteQuest;->type:I

    .line 71
    new-instance v2, Ljava/lang/String;

    invoke-static {p0}, Lch/kingdoms/ndk/NdkTextLoader;->shortArrayToByteArray([S)[B

    move-result-object v3

    const-string v4, "UTF-16"

    invoke-direct {v2, v3, v4}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    iput-object v2, v1, Lch/kingdoms/ndk/data/DelQuestData$CompleteQuest;->questName:Ljava/lang/String;

    .line 72
    sget-object v2, Lch/kingdoms/ndk/data/DelQuestData;->quests:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 78
    .end local v1    # "quest":Lch/kingdoms/ndk/data/DelQuestData$CompleteQuest;
    :goto_0
    return-void

    .line 74
    :catch_0
    move-exception v0

    .line 76
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_0
.end method

.method public static addExp(I)V
    .locals 2
    .param p0, "exp"    # I

    .prologue
    .line 30
    sget-object v0, Lch/kingdoms/ndk/data/DelQuestData;->exps:Ljava/util/ArrayList;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 31
    return-void
.end method

.method public static addItem([SI)V
    .locals 5
    .param p0, "name"    # [S
    .param p1, "count"    # I

    .prologue
    .line 39
    new-instance v1, Lch/kingdoms/ndk/data/DelQuestData$ItemNameAndCount;

    invoke-direct {v1}, Lch/kingdoms/ndk/data/DelQuestData$ItemNameAndCount;-><init>()V

    .line 41
    .local v1, "item":Lch/kingdoms/ndk/data/DelQuestData$ItemNameAndCount;
    :try_start_0
    new-instance v2, Ljava/lang/String;

    invoke-static {p0}, Lch/kingdoms/ndk/NdkTextLoader;->shortArrayToByteArray([S)[B

    move-result-object v3

    const-string v4, "UTF-16"

    invoke-direct {v2, v3, v4}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    iput-object v2, v1, Lch/kingdoms/ndk/data/DelQuestData$ItemNameAndCount;->name:Ljava/lang/String;

    .line 42
    iput p1, v1, Lch/kingdoms/ndk/data/DelQuestData$ItemNameAndCount;->count:I

    .line 43
    sget-object v2, Lch/kingdoms/ndk/data/DelQuestData;->items:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 50
    :goto_0
    return-void

    .line 46
    :catch_0
    move-exception v0

    .line 48
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_0
.end method

.method public static addMoney(I)V
    .locals 2
    .param p0, "money"    # I

    .prologue
    .line 35
    sget-object v0, Lch/kingdoms/ndk/data/DelQuestData;->moneys:Ljava/util/ArrayList;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 36
    return-void
.end method

.method public static addStatPoint(I)V
    .locals 2
    .param p0, "point"    # I

    .prologue
    .line 54
    sget-object v0, Lch/kingdoms/ndk/data/DelQuestData;->statPoints:Ljava/util/ArrayList;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 55
    return-void
.end method

.method public static getGiftToString()Ljava/lang/String;
    .locals 11

    .prologue
    .line 81
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 82
    .local v2, "buffer":Ljava/lang/StringBuffer;
    const/16 v9, 0x9

    sget-object v10, Lch/kingdoms/ndk/data/DelQuestData;->exps:Ljava/util/ArrayList;

    invoke-static {v9, v10}, Lch/kingdoms/ndk/data/DelQuestData;->getGiftToString(ILjava/util/Collection;)Ljava/lang/String;

    move-result-object v3

    .line 83
    .local v3, "expTxt":Ljava/lang/String;
    if-eqz v3, :cond_0

    .line 84
    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 86
    :cond_0
    const/16 v9, 0xa

    sget-object v10, Lch/kingdoms/ndk/data/DelQuestData;->moneys:Ljava/util/ArrayList;

    invoke-static {v9, v10}, Lch/kingdoms/ndk/data/DelQuestData;->getGiftToString(ILjava/util/Collection;)Ljava/lang/String;

    move-result-object v6

    .line 87
    .local v6, "moneyTxt":Ljava/lang/String;
    if-eqz v6, :cond_1

    .line 88
    invoke-virtual {v2, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 91
    :cond_1
    const/4 v4, 0x0

    .local v4, "i":I
    sget-object v9, Lch/kingdoms/ndk/data/DelQuestData;->items:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v7

    .local v7, "size":I
    :goto_0
    if-lt v4, v7, :cond_4

    .line 103
    const/16 v9, 0xb

    sget-object v10, Lch/kingdoms/ndk/data/DelQuestData;->statPoints:Ljava/util/ArrayList;

    invoke-static {v9, v10}, Lch/kingdoms/ndk/data/DelQuestData;->getGiftToString(ILjava/util/Collection;)Ljava/lang/String;

    move-result-object v8

    .line 107
    .local v8, "statTxt":Ljava/lang/String;
    const/16 v9, 0xc

    sget-object v10, Lch/kingdoms/ndk/data/DelQuestData;->activeSkillPoints:Ljava/util/ArrayList;

    invoke-static {v9, v10}, Lch/kingdoms/ndk/data/DelQuestData;->getGiftToString(ILjava/util/Collection;)Ljava/lang/String;

    move-result-object v0

    .line 108
    .local v0, "activeSkillTxt":Ljava/lang/String;
    if-eqz v0, :cond_2

    .line 109
    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 111
    :cond_2
    const/16 v9, 0xd

    sget-object v10, Lch/kingdoms/ndk/data/DelQuestData;->buffSkillPoints:Ljava/util/ArrayList;

    invoke-static {v9, v10}, Lch/kingdoms/ndk/data/DelQuestData;->getGiftToString(ILjava/util/Collection;)Ljava/lang/String;

    move-result-object v1

    .line 112
    .local v1, "buffSkillTxt":Ljava/lang/String;
    if-eqz v1, :cond_3

    .line 113
    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 115
    :cond_3
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v9

    return-object v9

    .line 92
    .end local v0    # "activeSkillTxt":Ljava/lang/String;
    .end local v1    # "buffSkillTxt":Ljava/lang/String;
    .end local v8    # "statTxt":Ljava/lang/String;
    :cond_4
    sget-object v9, Lch/kingdoms/ndk/data/DelQuestData;->items:Ljava/util/ArrayList;

    invoke-virtual {v9, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lch/kingdoms/ndk/data/DelQuestData$ItemNameAndCount;

    .line 93
    .local v5, "item":Lch/kingdoms/ndk/data/DelQuestData$ItemNameAndCount;
    iget-object v9, v5, Lch/kingdoms/ndk/data/DelQuestData$ItemNameAndCount;->name:Ljava/lang/String;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 94
    iget v9, v5, Lch/kingdoms/ndk/data/DelQuestData$ItemNameAndCount;->count:I

    const/4 v10, 0x1

    if-le v9, v10, :cond_5

    .line 95
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, " x "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v10, v5, Lch/kingdoms/ndk/data/DelQuestData$ItemNameAndCount;->count:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 97
    :cond_5
    const/16 v9, 0x8

    invoke-static {v9}, Lch/kingdoms/ndk/NdkTextLoader;->getScriptTxt(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 98
    add-int/lit8 v9, v7, -0x1

    if-ge v4, v9, :cond_6

    .line 99
    const-string v9, ", "

    invoke-virtual {v2, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 91
    :cond_6
    add-int/lit8 v4, v4, 0x1

    goto :goto_0
.end method

.method private static getGiftToString(ILjava/util/Collection;)Ljava/lang/String;
    .locals 6
    .param p0, "scriptTxtNum"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 119
    .local p1, "collection":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Integer;>;"
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v3

    if-lez v3, :cond_1

    .line 120
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 121
    .local v0, "buffer":Ljava/lang/StringBuffer;
    invoke-static {p0}, Lch/kingdoms/ndk/NdkTextLoader;->getScriptTxt(I)Ljava/lang/String;

    move-result-object v2

    .line 122
    .local v2, "text":Ljava/lang/String;
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_0

    .line 125
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    .line 128
    .end local v0    # "buffer":Ljava/lang/StringBuffer;
    .end local v2    # "text":Ljava/lang/String;
    :goto_1
    return-object v3

    .line 122
    .restart local v0    # "buffer":Ljava/lang/StringBuffer;
    .restart local v2    # "text":Ljava/lang/String;
    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 123
    .local v1, "element":Ljava/lang/Integer;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 128
    .end local v0    # "buffer":Ljava/lang/StringBuffer;
    .end local v1    # "element":Ljava/lang/Integer;
    .end local v2    # "text":Ljava/lang/String;
    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public static init()V
    .locals 1

    .prologue
    .line 19
    sget-object v0, Lch/kingdoms/ndk/data/DelQuestData;->exps:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 20
    sget-object v0, Lch/kingdoms/ndk/data/DelQuestData;->moneys:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 21
    sget-object v0, Lch/kingdoms/ndk/data/DelQuestData;->items:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 22
    sget-object v0, Lch/kingdoms/ndk/data/DelQuestData;->statPoints:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 23
    sget-object v0, Lch/kingdoms/ndk/data/DelQuestData;->activeSkillPoints:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 24
    sget-object v0, Lch/kingdoms/ndk/data/DelQuestData;->buffSkillPoints:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 25
    sget-object v0, Lch/kingdoms/ndk/data/DelQuestData;->quests:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 26
    return-void
.end method
