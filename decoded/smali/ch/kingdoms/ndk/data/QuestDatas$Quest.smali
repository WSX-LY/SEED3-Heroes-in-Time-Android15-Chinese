.class public Lch/kingdoms/ndk/data/QuestDatas$Quest;
.super Ljava/lang/Object;
.source "QuestDatas.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lch/kingdoms/ndk/data/QuestDatas;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Quest"
.end annotation


# instance fields
.field private chkComplete:Z

.field private chkHidden:B

.field private clientName:Ljava/lang/String;

.field private exist:Z

.field private explain:Ljava/lang/String;

.field private hiddenType:B

.field private name:Ljava/lang/String;

.field private num:S

.field private questCnt:I

.field private questCompleteCnt:I

.field private state:B

.field private stateCnt:B

.field final synthetic this$0:Lch/kingdoms/ndk/data/QuestDatas;

.field private type:S


# direct methods
.method public constructor <init>(Lch/kingdoms/ndk/data/QuestDatas;)V
    .locals 0

    .prologue
    .line 60
    iput-object p1, p0, Lch/kingdoms/ndk/data/QuestDatas$Quest;->this$0:Lch/kingdoms/ndk/data/QuestDatas;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lch/kingdoms/ndk/data/QuestDatas$Quest;Z)V
    .locals 0

    .prologue
    .line 61
    iput-boolean p1, p0, Lch/kingdoms/ndk/data/QuestDatas$Quest;->exist:Z

    return-void
.end method

.method static synthetic access$1(Lch/kingdoms/ndk/data/QuestDatas$Quest;S)V
    .locals 0

    .prologue
    .line 62
    iput-short p1, p0, Lch/kingdoms/ndk/data/QuestDatas$Quest;->num:S

    return-void
.end method

.method static synthetic access$10(Lch/kingdoms/ndk/data/QuestDatas$Quest;Z)V
    .locals 0

    .prologue
    .line 77
    iput-boolean p1, p0, Lch/kingdoms/ndk/data/QuestDatas$Quest;->chkComplete:Z

    return-void
.end method

.method static synthetic access$11(Lch/kingdoms/ndk/data/QuestDatas$Quest;I)V
    .locals 0

    .prologue
    .line 68
    iput p1, p0, Lch/kingdoms/ndk/data/QuestDatas$Quest;->questCnt:I

    return-void
.end method

.method static synthetic access$12(Lch/kingdoms/ndk/data/QuestDatas$Quest;I)V
    .locals 0

    .prologue
    .line 69
    iput p1, p0, Lch/kingdoms/ndk/data/QuestDatas$Quest;->questCompleteCnt:I

    return-void
.end method

.method static synthetic access$2(Lch/kingdoms/ndk/data/QuestDatas$Quest;S)V
    .locals 0

    .prologue
    .line 63
    iput-short p1, p0, Lch/kingdoms/ndk/data/QuestDatas$Quest;->type:S

    return-void
.end method

.method static synthetic access$3(Lch/kingdoms/ndk/data/QuestDatas$Quest;B)V
    .locals 0

    .prologue
    .line 64
    iput-byte p1, p0, Lch/kingdoms/ndk/data/QuestDatas$Quest;->hiddenType:B

    return-void
.end method

.method static synthetic access$4(Lch/kingdoms/ndk/data/QuestDatas$Quest;B)V
    .locals 0

    .prologue
    .line 65
    iput-byte p1, p0, Lch/kingdoms/ndk/data/QuestDatas$Quest;->stateCnt:B

    return-void
.end method

.method static synthetic access$5(Lch/kingdoms/ndk/data/QuestDatas$Quest;B)V
    .locals 0

    .prologue
    .line 66
    iput-byte p1, p0, Lch/kingdoms/ndk/data/QuestDatas$Quest;->state:B

    return-void
.end method

.method static synthetic access$6(Lch/kingdoms/ndk/data/QuestDatas$Quest;B)V
    .locals 0

    .prologue
    .line 71
    iput-byte p1, p0, Lch/kingdoms/ndk/data/QuestDatas$Quest;->chkHidden:B

    return-void
.end method

.method static synthetic access$7(Lch/kingdoms/ndk/data/QuestDatas$Quest;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 73
    iput-object p1, p0, Lch/kingdoms/ndk/data/QuestDatas$Quest;->name:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$8(Lch/kingdoms/ndk/data/QuestDatas$Quest;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 74
    iput-object p1, p0, Lch/kingdoms/ndk/data/QuestDatas$Quest;->explain:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$9(Lch/kingdoms/ndk/data/QuestDatas$Quest;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 75
    iput-object p1, p0, Lch/kingdoms/ndk/data/QuestDatas$Quest;->clientName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final getChkHidden()B
    .locals 1

    .prologue
    .line 176
    iget-byte v0, p0, Lch/kingdoms/ndk/data/QuestDatas$Quest;->chkHidden:B

    return v0
.end method

.method public final getClientName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lch/kingdoms/ndk/data/QuestDatas$Quest;->clientName:Ljava/lang/String;

    return-object v0
.end method

.method public final getExplain()Ljava/lang/String;
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lch/kingdoms/ndk/data/QuestDatas$Quest;->explain:Ljava/lang/String;

    return-object v0
.end method

.method public final getHiddenType()B
    .locals 1

    .prologue
    .line 92
    iget-byte v0, p0, Lch/kingdoms/ndk/data/QuestDatas$Quest;->hiddenType:B

    return v0
.end method

.method public final getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lch/kingdoms/ndk/data/QuestDatas$Quest;->name:Ljava/lang/String;

    return-object v0
.end method

.method public final getNum()S
    .locals 1

    .prologue
    .line 84
    iget-short v0, p0, Lch/kingdoms/ndk/data/QuestDatas$Quest;->num:S

    return v0
.end method

.method public final getQuestCnt()I
    .locals 1

    .prologue
    .line 160
    iget v0, p0, Lch/kingdoms/ndk/data/QuestDatas$Quest;->questCnt:I

    return v0
.end method

.method public final getQuestCompleteCnt()I
    .locals 1

    .prologue
    .line 164
    iget v0, p0, Lch/kingdoms/ndk/data/QuestDatas$Quest;->questCompleteCnt:I

    return v0
.end method

.method public final getState()B
    .locals 1

    .prologue
    .line 100
    iget-byte v0, p0, Lch/kingdoms/ndk/data/QuestDatas$Quest;->state:B

    return v0
.end method

.method public final getStateCnt()B
    .locals 1

    .prologue
    .line 96
    iget-byte v0, p0, Lch/kingdoms/ndk/data/QuestDatas$Quest;->stateCnt:B

    return v0
.end method

.method public final getType()S
    .locals 1

    .prologue
    .line 88
    iget-short v0, p0, Lch/kingdoms/ndk/data/QuestDatas$Quest;->type:S

    return v0
.end method

.method public final isChkComplete()Z
    .locals 1

    .prologue
    .line 116
    iget-boolean v0, p0, Lch/kingdoms/ndk/data/QuestDatas$Quest;->chkComplete:Z

    return v0
.end method

.method public final isExist()Z
    .locals 1

    .prologue
    .line 80
    iget-boolean v0, p0, Lch/kingdoms/ndk/data/QuestDatas$Quest;->exist:Z

    return v0
.end method

.method public final setChkComplete(Z)V
    .locals 0
    .param p1, "chkComplete"    # Z

    .prologue
    .line 156
    iput-boolean p1, p0, Lch/kingdoms/ndk/data/QuestDatas$Quest;->chkComplete:Z

    .line 157
    return-void
.end method

.method public final setClientName(Ljava/lang/String;)V
    .locals 0
    .param p1, "clientName"    # Ljava/lang/String;

    .prologue
    .line 152
    iput-object p1, p0, Lch/kingdoms/ndk/data/QuestDatas$Quest;->clientName:Ljava/lang/String;

    .line 153
    return-void
.end method

.method public final setExist(Z)V
    .locals 0
    .param p1, "exist"    # Z

    .prologue
    .line 120
    iput-boolean p1, p0, Lch/kingdoms/ndk/data/QuestDatas$Quest;->exist:Z

    .line 121
    return-void
.end method

.method public final setExplain(Ljava/lang/String;)V
    .locals 0
    .param p1, "explain"    # Ljava/lang/String;

    .prologue
    .line 148
    iput-object p1, p0, Lch/kingdoms/ndk/data/QuestDatas$Quest;->explain:Ljava/lang/String;

    .line 149
    return-void
.end method

.method public final setHiddenType(B)V
    .locals 0
    .param p1, "hiddenType"    # B

    .prologue
    .line 132
    iput-byte p1, p0, Lch/kingdoms/ndk/data/QuestDatas$Quest;->hiddenType:B

    .line 133
    return-void
.end method

.method public final setName(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 144
    iput-object p1, p0, Lch/kingdoms/ndk/data/QuestDatas$Quest;->name:Ljava/lang/String;

    .line 145
    return-void
.end method

.method public final setNum(S)V
    .locals 0
    .param p1, "num"    # S

    .prologue
    .line 124
    iput-short p1, p0, Lch/kingdoms/ndk/data/QuestDatas$Quest;->num:S

    .line 125
    return-void
.end method

.method public final setQuestCnt(I)V
    .locals 0
    .param p1, "questCnt"    # I

    .prologue
    .line 168
    iput p1, p0, Lch/kingdoms/ndk/data/QuestDatas$Quest;->questCnt:I

    .line 169
    return-void
.end method

.method public final setQuestCompleteCnt(I)V
    .locals 0
    .param p1, "questCompleteCnt"    # I

    .prologue
    .line 172
    iput p1, p0, Lch/kingdoms/ndk/data/QuestDatas$Quest;->questCompleteCnt:I

    .line 173
    return-void
.end method

.method public final setState(B)V
    .locals 0
    .param p1, "state"    # B

    .prologue
    .line 140
    iput-byte p1, p0, Lch/kingdoms/ndk/data/QuestDatas$Quest;->state:B

    .line 141
    return-void
.end method

.method public final setStateCnt(B)V
    .locals 0
    .param p1, "stateCnt"    # B

    .prologue
    .line 136
    iput-byte p1, p0, Lch/kingdoms/ndk/data/QuestDatas$Quest;->stateCnt:B

    .line 137
    return-void
.end method

.method public final setType(S)V
    .locals 0
    .param p1, "type"    # S

    .prologue
    .line 128
    iput-short p1, p0, Lch/kingdoms/ndk/data/QuestDatas$Quest;->type:S

    .line 129
    return-void
.end method
