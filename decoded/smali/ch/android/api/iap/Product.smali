.class public Lch/android/api/iap/Product;
.super Ljava/lang/Object;
.source "Product.java"


# instance fields
.field public final DbKey:Ljava/lang/String;

.field public final ID:Ljava/lang/String;

.field public final isManagedItem:Z

.field public final value:I


# direct methods
.method public constructor <init>(Ljava/lang/String;ZLjava/lang/String;I)V
    .locals 0
    .param p1, "ID"    # Ljava/lang/String;
    .param p2, "isManagedItem"    # Z
    .param p3, "dbKey"    # Ljava/lang/String;
    .param p4, "value"    # I

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-object p1, p0, Lch/android/api/iap/Product;->ID:Ljava/lang/String;

    .line 11
    iput-boolean p2, p0, Lch/android/api/iap/Product;->isManagedItem:Z

    .line 12
    iput-object p3, p0, Lch/android/api/iap/Product;->DbKey:Ljava/lang/String;

    .line 13
    iput p4, p0, Lch/android/api/iap/Product;->value:I

    .line 14
    return-void
.end method
