.class Lch/android/api/iap/ChAndroidIab$1;
.super Ljava/lang/Object;
.source "ChAndroidIab.java"

# interfaces
.implements Lch/android/lib/iab/ChOnPurchaseListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lch/android/api/iap/ChAndroidIab;->restoreManagedItems(Lch/android/lib/iab/ChOnPurchaseListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onPurchased(ILjava/lang/String;I)V
    .locals 3
    .param p1, "result"    # I
    .param p2, "id"    # Ljava/lang/String;
    .param p3, "quantity"    # I

    .prologue
    const/4 v2, 0x1

    .line 53
    if-nez p1, :cond_0

    .line 54
    const-string v0, "item_colosseum_unlock"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 55
    invoke-static {}, Lch/android/api/iap/ChAndroidIab;->access$0()Lch/kingdoms/android/db/DBAdapter;

    move-result-object v0

    const-string v1, "COLOSSEUM"

    invoke-virtual {v0, v1, v2}, Lch/kingdoms/android/db/DBAdapter;->setPurchase(Ljava/lang/String;Z)Z

    .line 60
    :cond_0
    :goto_0
    invoke-static {}, Lch/android/api/iap/ChAndroidIab;->access$1()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lch/android/api/iap/ChAndroidIab$1$1;

    invoke-direct {v1, p0, p1, p2, p3}, Lch/android/api/iap/ChAndroidIab$1$1;-><init>(Lch/android/api/iap/ChAndroidIab$1;ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 67
    return-void

    .line 56
    :cond_1
    const-string v0, "item_warpgate_unlock"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 57
    invoke-static {}, Lch/android/api/iap/ChAndroidIab;->access$0()Lch/kingdoms/android/db/DBAdapter;

    move-result-object v0

    const-string v1, "WARPGATE"

    invoke-virtual {v0, v1, v2}, Lch/kingdoms/android/db/DBAdapter;->setPurchase(Ljava/lang/String;Z)Z

    goto :goto_0
.end method
