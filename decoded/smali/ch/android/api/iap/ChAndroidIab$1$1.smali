.class Lch/android/api/iap/ChAndroidIab$1$1;
.super Ljava/lang/Object;
.source "ChAndroidIab.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lch/android/api/iap/ChAndroidIab$1;->onPurchased(ILjava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lch/android/api/iap/ChAndroidIab$1;

.field private final synthetic val$id:Ljava/lang/String;

.field private final synthetic val$quantity:I

.field private final synthetic val$result:I


# direct methods
.method constructor <init>(Lch/android/api/iap/ChAndroidIab$1;ILjava/lang/String;I)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lch/android/api/iap/ChAndroidIab$1$1;->this$1:Lch/android/api/iap/ChAndroidIab$1;

    iput p2, p0, Lch/android/api/iap/ChAndroidIab$1$1;->val$result:I

    iput-object p3, p0, Lch/android/api/iap/ChAndroidIab$1$1;->val$id:Ljava/lang/String;

    iput p4, p0, Lch/android/api/iap/ChAndroidIab$1$1;->val$quantity:I

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 64
    invoke-static {}, Lch/android/api/iap/ChAndroidIab;->access$2()Lch/android/lib/iab/ChOnPurchaseListener;

    move-result-object v0

    iget v1, p0, Lch/android/api/iap/ChAndroidIab$1$1;->val$result:I

    iget-object v2, p0, Lch/android/api/iap/ChAndroidIab$1$1;->val$id:Ljava/lang/String;

    iget v3, p0, Lch/android/api/iap/ChAndroidIab$1$1;->val$quantity:I

    invoke-interface {v0, v1, v2, v3}, Lch/android/lib/iab/ChOnPurchaseListener;->onPurchased(ILjava/lang/String;I)V

    .line 65
    return-void
.end method
