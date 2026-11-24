.class public Lch/lib/gsonobjects/SeedPoint;
.super Ljava/lang/Object;
.source "SeedPoint.java"


# instance fields
.field private model:Ljava/lang/String;

.field private phoneNumber:Ljava/lang/String;

.field private point:I

.field private purchaseResult:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0
    .param p1, "phoneNumber"    # Ljava/lang/String;
    .param p2, "model"    # Ljava/lang/String;
    .param p3, "purchaseResult"    # Ljava/lang/String;
    .param p4, "point"    # I

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object p1, p0, Lch/lib/gsonobjects/SeedPoint;->phoneNumber:Ljava/lang/String;

    .line 13
    iput-object p2, p0, Lch/lib/gsonobjects/SeedPoint;->model:Ljava/lang/String;

    .line 14
    iput-object p3, p0, Lch/lib/gsonobjects/SeedPoint;->purchaseResult:Ljava/lang/String;

    .line 15
    iput p4, p0, Lch/lib/gsonobjects/SeedPoint;->point:I

    .line 16
    return-void
.end method


# virtual methods
.method public getModel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lch/lib/gsonobjects/SeedPoint;->model:Ljava/lang/String;

    return-object v0
.end method

.method public getPhoneNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lch/lib/gsonobjects/SeedPoint;->phoneNumber:Ljava/lang/String;

    return-object v0
.end method

.method public getPoint()I
    .locals 1

    .prologue
    .line 31
    iget v0, p0, Lch/lib/gsonobjects/SeedPoint;->point:I

    return v0
.end method

.method public getPurchaseResult()Ljava/lang/String;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lch/lib/gsonobjects/SeedPoint;->purchaseResult:Ljava/lang/String;

    return-object v0
.end method
