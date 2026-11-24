.class public Lch/android/api/network/ChTime;
.super Ljava/lang/Object;
.source "ChTime.java"


# instance fields
.field private final DAY:I

.field private final HOUR:I

.field private final MINUTE:I

.field private final MONTH:I

.field private final SECOND:I

.field private final YEAR:I


# direct methods
.method public constructor <init>(Lch/android/api/network/ChDataInput;)V
    .locals 1
    .param p1, "_dataInput"    # Lch/android/api/network/ChDataInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    invoke-interface {p1}, Lch/android/api/network/ChDataInput;->readUnsignedShort()I

    move-result v0

    iput v0, p0, Lch/android/api/network/ChTime;->YEAR:I

    .line 17
    invoke-interface {p1}, Lch/android/api/network/ChDataInput;->readUnsignedShort()I

    move-result v0

    iput v0, p0, Lch/android/api/network/ChTime;->MONTH:I

    .line 18
    invoke-interface {p1}, Lch/android/api/network/ChDataInput;->readUnsignedShort()I

    move-result v0

    iput v0, p0, Lch/android/api/network/ChTime;->DAY:I

    .line 19
    invoke-interface {p1}, Lch/android/api/network/ChDataInput;->readUnsignedShort()I

    move-result v0

    iput v0, p0, Lch/android/api/network/ChTime;->HOUR:I

    .line 20
    invoke-interface {p1}, Lch/android/api/network/ChDataInput;->readUnsignedShort()I

    move-result v0

    iput v0, p0, Lch/android/api/network/ChTime;->MINUTE:I

    .line 21
    invoke-interface {p1}, Lch/android/api/network/ChDataInput;->readUnsignedShort()I

    move-result v0

    iput v0, p0, Lch/android/api/network/ChTime;->SECOND:I

    .line 22
    return-void
.end method


# virtual methods
.method public final getDAY()I
    .locals 1

    .prologue
    .line 33
    iget v0, p0, Lch/android/api/network/ChTime;->DAY:I

    return v0
.end method

.method public final getHOUR()I
    .locals 1

    .prologue
    .line 37
    iget v0, p0, Lch/android/api/network/ChTime;->HOUR:I

    return v0
.end method

.method public final getMINUTE()I
    .locals 1

    .prologue
    .line 41
    iget v0, p0, Lch/android/api/network/ChTime;->MINUTE:I

    return v0
.end method

.method public final getMONTH()I
    .locals 1

    .prologue
    .line 29
    iget v0, p0, Lch/android/api/network/ChTime;->MONTH:I

    return v0
.end method

.method public final getSECOND()I
    .locals 1

    .prologue
    .line 45
    iget v0, p0, Lch/android/api/network/ChTime;->SECOND:I

    return v0
.end method

.method public final getYEAR()I
    .locals 1

    .prologue
    .line 25
    iget v0, p0, Lch/android/api/network/ChTime;->YEAR:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 51
    new-instance v0, Ljava/lang/StringBuilder;

    iget v1, p0, Lch/android/api/network/ChTime;->YEAR:I

    iget v2, p0, Lch/android/api/network/ChTime;->MONTH:I

    iget v3, p0, Lch/android/api/network/ChTime;->DAY:I

    invoke-static {v1, v2, v3}, Lch/android/api/util/TimePrinter;->toDateString(III)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, " - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lch/android/api/network/ChTime;->HOUR:I

    iget v2, p0, Lch/android/api/network/ChTime;->MINUTE:I

    iget v3, p0, Lch/android/api/network/ChTime;->SECOND:I

    invoke-static {v1, v2, v3}, Lch/android/api/util/TimePrinter;->toTimeString(III)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
