.class Lch/android/lib/sponsorpay/ChSponsorPay$1;
.super Ljava/lang/Object;
.source "ChSponsorPay.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lch/android/lib/sponsorpay/ChSponsorPay;->requestSponsorPayPointsByHandler()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    .prologue
    .line 50
    invoke-static {}, Lch/android/lib/sponsorpay/ChSponsorPay;->requestSponsorPayPoints()V

    .line 51
    return-void
.end method
