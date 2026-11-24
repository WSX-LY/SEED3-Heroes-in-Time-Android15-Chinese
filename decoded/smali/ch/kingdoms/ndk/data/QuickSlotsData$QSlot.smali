.class public Lch/kingdoms/ndk/data/QuickSlotsData$QSlot;
.super Ljava/lang/Object;
.source "QuickSlotsData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lch/kingdoms/ndk/data/QuickSlotsData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "QSlot"
.end annotation


# instance fields
.field chkNum:S

.field coolTimeFrm:I

.field coolTimeMaxFrm:I

.field resTargetNum:S

.field slotState:B

.field final synthetic this$0:Lch/kingdoms/ndk/data/QuickSlotsData;

.field type:B

.field use:Z


# direct methods
.method public constructor <init>(Lch/kingdoms/ndk/data/QuickSlotsData;BBSSZII)V
    .locals 0
    .param p2, "_slotState"    # B
    .param p3, "_type"    # B
    .param p4, "_chkNum"    # S
    .param p5, "_resTargetNum"    # S
    .param p6, "_use"    # Z
    .param p7, "_coolTimeFrm"    # I
    .param p8, "_coolTimeMaxFrm"    # I

    .prologue
    .line 73
    iput-object p1, p0, Lch/kingdoms/ndk/data/QuickSlotsData$QSlot;->this$0:Lch/kingdoms/ndk/data/QuickSlotsData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    iput-byte p2, p0, Lch/kingdoms/ndk/data/QuickSlotsData$QSlot;->slotState:B

    .line 75
    iput-byte p3, p0, Lch/kingdoms/ndk/data/QuickSlotsData$QSlot;->type:B

    .line 76
    iput-short p4, p0, Lch/kingdoms/ndk/data/QuickSlotsData$QSlot;->chkNum:S

    .line 77
    iput-short p5, p0, Lch/kingdoms/ndk/data/QuickSlotsData$QSlot;->resTargetNum:S

    .line 78
    iput-boolean p6, p0, Lch/kingdoms/ndk/data/QuickSlotsData$QSlot;->use:Z

    .line 79
    iput p7, p0, Lch/kingdoms/ndk/data/QuickSlotsData$QSlot;->coolTimeFrm:I

    .line 80
    iput p8, p0, Lch/kingdoms/ndk/data/QuickSlotsData$QSlot;->coolTimeMaxFrm:I

    .line 85
    return-void
.end method


# virtual methods
.method public final getChkNum()S
    .locals 1

    .prologue
    .line 108
    iget-short v0, p0, Lch/kingdoms/ndk/data/QuickSlotsData$QSlot;->chkNum:S

    return v0
.end method

.method public final getCoolTimeFrm()I
    .locals 1

    .prologue
    .line 117
    iget v0, p0, Lch/kingdoms/ndk/data/QuickSlotsData$QSlot;->coolTimeFrm:I

    return v0
.end method

.method public final getCoolTimeMaxFrm()I
    .locals 1

    .prologue
    .line 120
    iget v0, p0, Lch/kingdoms/ndk/data/QuickSlotsData$QSlot;->coolTimeMaxFrm:I

    return v0
.end method

.method public final getResTargetNum()S
    .locals 1

    .prologue
    .line 111
    iget-short v0, p0, Lch/kingdoms/ndk/data/QuickSlotsData$QSlot;->resTargetNum:S

    return v0
.end method

.method public final getSlotState()B
    .locals 1

    .prologue
    .line 102
    iget-byte v0, p0, Lch/kingdoms/ndk/data/QuickSlotsData$QSlot;->slotState:B

    return v0
.end method

.method public final getType()B
    .locals 1

    .prologue
    .line 105
    iget-byte v0, p0, Lch/kingdoms/ndk/data/QuickSlotsData$QSlot;->type:B

    return v0
.end method

.method public final isEqualItem(Ljava/lang/String;)Z
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 146
    iget-short v0, p0, Lch/kingdoms/ndk/data/QuickSlotsData$QSlot;->chkNum:S

    const/4 v1, -0x1

    if-le v0, v1, :cond_1

    iget-short v0, p0, Lch/kingdoms/ndk/data/QuickSlotsData$QSlot;->chkNum:S

    iget-object v1, p0, Lch/kingdoms/ndk/data/QuickSlotsData$QSlot;->this$0:Lch/kingdoms/ndk/data/QuickSlotsData;

    invoke-static {v1}, Lch/kingdoms/ndk/data/QuickSlotsData;->access$0(Lch/kingdoms/ndk/data/QuickSlotsData;)[Lch/kingdoms/ndk/data/Inven$Item;

    move-result-object v1

    array-length v1, v1

    if-ge v0, v1, :cond_1

    iget-object v0, p0, Lch/kingdoms/ndk/data/QuickSlotsData$QSlot;->this$0:Lch/kingdoms/ndk/data/QuickSlotsData;

    invoke-static {v0}, Lch/kingdoms/ndk/data/QuickSlotsData;->access$0(Lch/kingdoms/ndk/data/QuickSlotsData;)[Lch/kingdoms/ndk/data/Inven$Item;

    move-result-object v0

    iget-short v1, p0, Lch/kingdoms/ndk/data/QuickSlotsData$QSlot;->chkNum:S

    aget-object v0, v0, v1

    iget v0, v0, Lch/kingdoms/ndk/data/Inven$Item;->subType:I

    if-eqz v0, :cond_0

    .line 147
    iget-object v0, p0, Lch/kingdoms/ndk/data/QuickSlotsData$QSlot;->this$0:Lch/kingdoms/ndk/data/QuickSlotsData;

    invoke-static {v0}, Lch/kingdoms/ndk/data/QuickSlotsData;->access$0(Lch/kingdoms/ndk/data/QuickSlotsData;)[Lch/kingdoms/ndk/data/Inven$Item;

    move-result-object v0

    iget-short v1, p0, Lch/kingdoms/ndk/data/QuickSlotsData$QSlot;->chkNum:S

    aget-object v0, v0, v1

    iget v0, v0, Lch/kingdoms/ndk/data/Inven$Item;->subType:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 148
    iget-object v0, p0, Lch/kingdoms/ndk/data/QuickSlotsData$QSlot;->this$0:Lch/kingdoms/ndk/data/QuickSlotsData;

    invoke-static {v0}, Lch/kingdoms/ndk/data/QuickSlotsData;->access$0(Lch/kingdoms/ndk/data/QuickSlotsData;)[Lch/kingdoms/ndk/data/Inven$Item;

    move-result-object v0

    iget-short v1, p0, Lch/kingdoms/ndk/data/QuickSlotsData$QSlot;->chkNum:S

    aget-object v0, v0, v1

    iget v0, v0, Lch/kingdoms/ndk/data/Inven$Item;->subType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 149
    :cond_0
    iget-object v0, p0, Lch/kingdoms/ndk/data/QuickSlotsData$QSlot;->this$0:Lch/kingdoms/ndk/data/QuickSlotsData;

    invoke-static {v0}, Lch/kingdoms/ndk/data/QuickSlotsData;->access$0(Lch/kingdoms/ndk/data/QuickSlotsData;)[Lch/kingdoms/ndk/data/Inven$Item;

    move-result-object v0

    iget-short v1, p0, Lch/kingdoms/ndk/data/QuickSlotsData$QSlot;->chkNum:S

    aget-object v0, v0, v1

    iget-object v0, v0, Lch/kingdoms/ndk/data/Inven$Item;->name:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    .line 151
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final isUse()Z
    .locals 1

    .prologue
    .line 114
    iget-boolean v0, p0, Lch/kingdoms/ndk/data/QuickSlotsData$QSlot;->use:Z

    return v0
.end method

.method public final setChkNum(S)V
    .locals 0
    .param p1, "chkNum"    # S

    .prologue
    .line 129
    iput-short p1, p0, Lch/kingdoms/ndk/data/QuickSlotsData$QSlot;->chkNum:S

    .line 130
    return-void
.end method

.method public final setCoolTimeFrm(I)V
    .locals 0
    .param p1, "coolTimeFrm"    # I

    .prologue
    .line 138
    iput p1, p0, Lch/kingdoms/ndk/data/QuickSlotsData$QSlot;->coolTimeFrm:I

    .line 139
    return-void
.end method

.method public final setCoolTimeMaxFrm(I)V
    .locals 0
    .param p1, "coolTimeMaxFrm"    # I

    .prologue
    .line 141
    iput p1, p0, Lch/kingdoms/ndk/data/QuickSlotsData$QSlot;->coolTimeMaxFrm:I

    .line 142
    return-void
.end method

.method public final setResTargetNum(S)V
    .locals 0
    .param p1, "resTargetNum"    # S

    .prologue
    .line 132
    iput-short p1, p0, Lch/kingdoms/ndk/data/QuickSlotsData$QSlot;->resTargetNum:S

    .line 133
    return-void
.end method

.method public final setSlotState(B)V
    .locals 0
    .param p1, "slotState"    # B

    .prologue
    .line 123
    iput-byte p1, p0, Lch/kingdoms/ndk/data/QuickSlotsData$QSlot;->slotState:B

    .line 124
    return-void
.end method

.method public final setType(B)V
    .locals 0
    .param p1, "type"    # B

    .prologue
    .line 126
    iput-byte p1, p0, Lch/kingdoms/ndk/data/QuickSlotsData$QSlot;->type:B

    .line 127
    return-void
.end method

.method public final setUse(Z)V
    .locals 0
    .param p1, "use"    # Z

    .prologue
    .line 135
    iput-boolean p1, p0, Lch/kingdoms/ndk/data/QuickSlotsData$QSlot;->use:Z

    .line 136
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 90
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "slotState:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-byte v1, p0, Lch/kingdoms/ndk/data/QuickSlotsData$QSlot;->slotState:B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",type:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-byte v1, p0, Lch/kingdoms/ndk/data/QuickSlotsData$QSlot;->type:B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "chkNum:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-short v1, p0, Lch/kingdoms/ndk/data/QuickSlotsData$QSlot;->chkNum:S

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "use:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lch/kingdoms/ndk/data/QuickSlotsData$QSlot;->use:Z

    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
