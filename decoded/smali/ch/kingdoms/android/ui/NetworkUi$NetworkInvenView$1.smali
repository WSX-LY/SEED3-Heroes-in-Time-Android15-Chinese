.class Lch/kingdoms/android/ui/NetworkUi$NetworkInvenView$1;
.super Ljava/lang/Object;
.source "NetworkUi.java"

# interfaces
.implements Lch/kingdoms/android/network/ChPacketFactory$OnResultListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lch/kingdoms/android/ui/NetworkUi$NetworkInvenView;->updateNetworkInven()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lch/kingdoms/android/ui/NetworkUi$NetworkInvenView;


# direct methods
.method constructor <init>(Lch/kingdoms/android/ui/NetworkUi$NetworkInvenView;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lch/kingdoms/android/ui/NetworkUi$NetworkInvenView$1;->this$1:Lch/kingdoms/android/ui/NetworkUi$NetworkInvenView;

    .line 1247
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(Lch/android/api/network/ChResultPacket;)V
    .locals 6
    .param p1, "resultPacket"    # Lch/android/api/network/ChResultPacket;

    .prologue
    .line 1251
    invoke-virtual {p1}, Lch/android/api/network/ChResultPacket;->getItemCount()I

    move-result v4

    new-array v2, v4, [Lch/kingdoms/ndk/data/Inven$Item;

    .line 1252
    .local v2, "items":[Lch/kingdoms/ndk/data/Inven$Item;
    new-instance v1, Lch/kingdoms/ndk/data/Inven;

    invoke-direct {v1}, Lch/kingdoms/ndk/data/Inven;-><init>()V

    .line 1253
    .local v1, "inven":Lch/kingdoms/ndk/data/Inven;
    const/4 v0, 0x0

    .local v0, "i":I
    array-length v3, v2

    .local v3, "size":I
    :goto_0
    if-lt v0, v3, :cond_1

    .line 1256
    iget-object v4, p0, Lch/kingdoms/android/ui/NetworkUi$NetworkInvenView$1;->this$1:Lch/kingdoms/android/ui/NetworkUi$NetworkInvenView;

    const/4 v5, 0x0

    invoke-virtual {v4, v5, v2}, Lch/kingdoms/android/ui/NetworkUi$NetworkInvenView;->update([S[Lch/kingdoms/ndk/data/Inven$Item;)V

    .line 1257
    if-eqz v2, :cond_0

    array-length v4, v2

    if-lez v4, :cond_0

    .line 1258
    invoke-virtual {p1}, Lch/android/api/network/ChResultPacket;->getAllItemdatas()[B

    move-result-object v4

    invoke-static {v4}, Lch/kingdoms/ndk/NdkUiEventManager;->callNativeNP_setGetNetItem([B)V

    .line 1260
    :cond_0
    return-void

    .line 1254
    :cond_1
    invoke-virtual {p1, v0}, Lch/android/api/network/ChResultPacket;->getItemData(I)Lch/android/api/network/ChNetworkItemData;

    move-result-object v4

    invoke-virtual {v1, v4, v0}, Lch/kingdoms/ndk/data/Inven;->getItem(Lch/android/api/network/ChNetworkItemData;I)Lch/kingdoms/ndk/data/Inven$Item;

    move-result-object v4

    aput-object v4, v2, v0

    .line 1253
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
