.class public Lch/kingdoms/ndk/data/QuestDatas;
.super Ljava/lang/Object;
.source "QuestDatas.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lch/kingdoms/ndk/data/QuestDatas$Quest;
    }
.end annotation


# instance fields
.field private quests:[Lch/kingdoms/ndk/data/QuestDatas$Quest;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    const/4 v0, 0x7

    new-array v0, v0, [Lch/kingdoms/ndk/data/QuestDatas$Quest;

    iput-object v0, p0, Lch/kingdoms/ndk/data/QuestDatas;->quests:[Lch/kingdoms/ndk/data/QuestDatas$Quest;

    .line 7
    return-void
.end method


# virtual methods
.method public addQuest(IZSSBBB[S[S[SZIIB)V
    .locals 6
    .param p1, "_index"    # I
    .param p2, "_exist"    # Z
    .param p3, "_num"    # S
    .param p4, "_type"    # S
    .param p5, "_hiddenType"    # B
    .param p6, "_stateCnt"    # B
    .param p7, "_state"    # B
    .param p8, "_nameShorts"    # [S
    .param p9, "_explainShorts"    # [S
    .param p10, "_clientNameShorts"    # [S
    .param p11, "_chkComplete"    # Z
    .param p12, "_questCnt"    # I
    .param p13, "_questCompleteCnt"    # I
    .param p14, "_chkHidden"    # B

    .prologue
    .line 36
    iget-object v2, p0, Lch/kingdoms/ndk/data/QuestDatas;->quests:[Lch/kingdoms/ndk/data/QuestDatas$Quest;

    new-instance v3, Lch/kingdoms/ndk/data/QuestDatas$Quest;

    invoke-direct {v3, p0}, Lch/kingdoms/ndk/data/QuestDatas$Quest;-><init>(Lch/kingdoms/ndk/data/QuestDatas;)V

    aput-object v3, v2, p1

    .line 37
    iget-object v2, p0, Lch/kingdoms/ndk/data/QuestDatas;->quests:[Lch/kingdoms/ndk/data/QuestDatas$Quest;

    aget-object v2, v2, p1

    invoke-static {v2, p2}, Lch/kingdoms/ndk/data/QuestDatas$Quest;->access$0(Lch/kingdoms/ndk/data/QuestDatas$Quest;Z)V

    .line 38
    iget-object v2, p0, Lch/kingdoms/ndk/data/QuestDatas;->quests:[Lch/kingdoms/ndk/data/QuestDatas$Quest;

    aget-object v2, v2, p1

    invoke-static {v2, p3}, Lch/kingdoms/ndk/data/QuestDatas$Quest;->access$1(Lch/kingdoms/ndk/data/QuestDatas$Quest;S)V

    .line 39
    iget-object v2, p0, Lch/kingdoms/ndk/data/QuestDatas;->quests:[Lch/kingdoms/ndk/data/QuestDatas$Quest;

    aget-object v2, v2, p1

    invoke-static {v2, p4}, Lch/kingdoms/ndk/data/QuestDatas$Quest;->access$2(Lch/kingdoms/ndk/data/QuestDatas$Quest;S)V

    .line 40
    iget-object v2, p0, Lch/kingdoms/ndk/data/QuestDatas;->quests:[Lch/kingdoms/ndk/data/QuestDatas$Quest;

    aget-object v2, v2, p1

    invoke-static {v2, p5}, Lch/kingdoms/ndk/data/QuestDatas$Quest;->access$3(Lch/kingdoms/ndk/data/QuestDatas$Quest;B)V

    .line 41
    iget-object v2, p0, Lch/kingdoms/ndk/data/QuestDatas;->quests:[Lch/kingdoms/ndk/data/QuestDatas$Quest;

    aget-object v2, v2, p1

    invoke-static {v2, p6}, Lch/kingdoms/ndk/data/QuestDatas$Quest;->access$4(Lch/kingdoms/ndk/data/QuestDatas$Quest;B)V

    .line 42
    iget-object v2, p0, Lch/kingdoms/ndk/data/QuestDatas;->quests:[Lch/kingdoms/ndk/data/QuestDatas$Quest;

    aget-object v2, v2, p1

    invoke-static {v2, p7}, Lch/kingdoms/ndk/data/QuestDatas$Quest;->access$5(Lch/kingdoms/ndk/data/QuestDatas$Quest;B)V

    .line 43
    iget-object v2, p0, Lch/kingdoms/ndk/data/QuestDatas;->quests:[Lch/kingdoms/ndk/data/QuestDatas$Quest;

    aget-object v2, v2, p1

    move/from16 v0, p14

    invoke-static {v2, v0}, Lch/kingdoms/ndk/data/QuestDatas$Quest;->access$6(Lch/kingdoms/ndk/data/QuestDatas$Quest;B)V

    .line 46
    :try_start_0
    iget-object v2, p0, Lch/kingdoms/ndk/data/QuestDatas;->quests:[Lch/kingdoms/ndk/data/QuestDatas$Quest;

    aget-object v2, v2, p1

    new-instance v3, Ljava/lang/String;

    invoke-static {p8}, Lch/kingdoms/ndk/NdkTextLoader;->shortArrayToByteArray([S)[B

    move-result-object v4

    const-string v5, "UTF-16"

    invoke-direct {v3, v4, v5}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-static {v2, v3}, Lch/kingdoms/ndk/data/QuestDatas$Quest;->access$7(Lch/kingdoms/ndk/data/QuestDatas$Quest;Ljava/lang/String;)V

    .line 47
    iget-object v2, p0, Lch/kingdoms/ndk/data/QuestDatas;->quests:[Lch/kingdoms/ndk/data/QuestDatas$Quest;

    aget-object v2, v2, p1

    new-instance v3, Ljava/lang/String;

    invoke-static {p9}, Lch/kingdoms/ndk/NdkTextLoader;->shortArrayToByteArray([S)[B

    move-result-object v4

    const-string v5, "UTF-16"

    invoke-direct {v3, v4, v5}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-static {v2, v3}, Lch/kingdoms/ndk/data/QuestDatas$Quest;->access$8(Lch/kingdoms/ndk/data/QuestDatas$Quest;Ljava/lang/String;)V

    .line 48
    iget-object v2, p0, Lch/kingdoms/ndk/data/QuestDatas;->quests:[Lch/kingdoms/ndk/data/QuestDatas$Quest;

    aget-object v2, v2, p1

    new-instance v3, Ljava/lang/String;

    invoke-static/range {p10 .. p10}, Lch/kingdoms/ndk/NdkTextLoader;->shortArrayToByteArray([S)[B

    move-result-object v4

    const-string v5, "UTF-16"

    invoke-direct {v3, v4, v5}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-static {v2, v3}, Lch/kingdoms/ndk/data/QuestDatas$Quest;->access$9(Lch/kingdoms/ndk/data/QuestDatas$Quest;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 54
    :goto_0
    iget-object v2, p0, Lch/kingdoms/ndk/data/QuestDatas;->quests:[Lch/kingdoms/ndk/data/QuestDatas$Quest;

    aget-object v2, v2, p1

    move/from16 v0, p11

    invoke-static {v2, v0}, Lch/kingdoms/ndk/data/QuestDatas$Quest;->access$10(Lch/kingdoms/ndk/data/QuestDatas$Quest;Z)V

    .line 56
    iget-object v2, p0, Lch/kingdoms/ndk/data/QuestDatas;->quests:[Lch/kingdoms/ndk/data/QuestDatas$Quest;

    aget-object v2, v2, p1

    move/from16 v0, p12

    invoke-static {v2, v0}, Lch/kingdoms/ndk/data/QuestDatas$Quest;->access$11(Lch/kingdoms/ndk/data/QuestDatas$Quest;I)V

    .line 57
    iget-object v2, p0, Lch/kingdoms/ndk/data/QuestDatas;->quests:[Lch/kingdoms/ndk/data/QuestDatas$Quest;

    aget-object v2, v2, p1

    move/from16 v0, p13

    invoke-static {v2, v0}, Lch/kingdoms/ndk/data/QuestDatas$Quest;->access$12(Lch/kingdoms/ndk/data/QuestDatas$Quest;I)V

    .line 58
    return-void

    .line 49
    :catch_0
    move-exception v1

    .line 51
    .local v1, "e":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v1}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_0
.end method

.method public getQuests()[Lch/kingdoms/ndk/data/QuestDatas$Quest;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lch/kingdoms/ndk/data/QuestDatas;->quests:[Lch/kingdoms/ndk/data/QuestDatas$Quest;

    return-object v0
.end method
