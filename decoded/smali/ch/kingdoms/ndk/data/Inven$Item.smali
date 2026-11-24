.class public Lch/kingdoms/ndk/data/Inven$Item;
.super Ljava/lang/Object;
.source "Inven.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lch/kingdoms/ndk/data/Inven;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Item"
.end annotation


# instance fields
.field public auctionState:I

.field public buyPrice:I

.field public cashBuyPrice:I

.field public cashSellPrice:I

.field public count:I

.field public dbIndex:I

.field public equipOption:[S

.field public equipOptionCount:I

.field public equiped:Z

.field public exist:Z

.field public firstExist:Z

.field public firstSocketData:I

.field public firstSocketMainType:I

.field public firstSocketSubType:I

.field public identity:Z

.field public imgNum:S

.field public index:I

.field public isEquip:Z

.field public limitLv:S

.field public mainType:I

.field public name:Ljava/lang/String;

.field public num:I

.field public option:[I

.field public secondExist:Z

.field public secondSocketData:I

.field public secondSocketMainType:I

.field public secondSocketSubType:I

.field public secondSubType:I

.field public sellPrice:I

.field public subType:I

.field public thirdSubType:I

.field final synthetic this$0:Lch/kingdoms/ndk/data/Inven;

.field public upBlockNum:I

.field public upLv:I

.field public upgradeLv:I


# direct methods
.method public constructor <init>(Lch/kingdoms/ndk/data/Inven;)V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 86
    iput-object p1, p0, Lch/kingdoms/ndk/data/Inven$Item;->this$0:Lch/kingdoms/ndk/data/Inven;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 121
    iput v0, p0, Lch/kingdoms/ndk/data/Inven$Item;->dbIndex:I

    .line 122
    iput v0, p0, Lch/kingdoms/ndk/data/Inven$Item;->auctionState:I

    return-void
.end method


# virtual methods
.method public getEquipOption(I)S
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 125
    iget-object v0, p0, Lch/kingdoms/ndk/data/Inven$Item;->equipOption:[S

    aget-short v0, v0, p1

    return v0
.end method

.method public getOption(I)I
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 129
    iget-object v0, p0, Lch/kingdoms/ndk/data/Inven$Item;->option:[I

    aget v0, v0, p1

    return v0
.end method
