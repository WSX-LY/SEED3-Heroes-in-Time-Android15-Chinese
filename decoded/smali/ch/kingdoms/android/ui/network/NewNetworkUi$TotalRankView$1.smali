.class Lch/kingdoms/android/ui/network/NewNetworkUi$TotalRankView$1;
.super Ljava/lang/Object;
.source "NewNetworkUi.java"

# interfaces
.implements Lch/kingdoms/android/network/ChPacketFactory$OnResultListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lch/kingdoms/android/ui/network/NewNetworkUi$TotalRankView;->onPageMove(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lch/kingdoms/android/ui/network/NewNetworkUi$TotalRankView;

.field private final synthetic val$toIndex:I


# direct methods
.method constructor <init>(Lch/kingdoms/android/ui/network/NewNetworkUi$TotalRankView;I)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lch/kingdoms/android/ui/network/NewNetworkUi$TotalRankView$1;->this$1:Lch/kingdoms/android/ui/network/NewNetworkUi$TotalRankView;

    iput p2, p0, Lch/kingdoms/android/ui/network/NewNetworkUi$TotalRankView$1;->val$toIndex:I

    .line 964
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(Lch/android/api/network/ChResultPacket;)V
    .locals 9
    .param p1, "resultPacket"    # Lch/android/api/network/ChResultPacket;

    .prologue
    const/4 v8, 0x0

    .line 968
    invoke-virtual {p1}, Lch/android/api/network/ChResultPacket;->getResult()I

    move-result v6

    packed-switch v6, :pswitch_data_0

    .line 983
    iget-object v6, p0, Lch/kingdoms/android/ui/network/NewNetworkUi$TotalRankView$1;->this$1:Lch/kingdoms/android/ui/network/NewNetworkUi$TotalRankView;

    iget v7, p0, Lch/kingdoms/android/ui/network/NewNetworkUi$TotalRankView$1;->val$toIndex:I

    invoke-static {v6, v7, v8, v8, v8}, Lch/kingdoms/android/ui/network/NewNetworkUi$TotalRankView;->access$0(Lch/kingdoms/android/ui/network/NewNetworkUi$TotalRankView;I[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    .line 984
    iget-object v6, p0, Lch/kingdoms/android/ui/network/NewNetworkUi$TotalRankView$1;->this$1:Lch/kingdoms/android/ui/network/NewNetworkUi$TotalRankView;

    invoke-static {v6}, Lch/kingdoms/android/ui/network/NewNetworkUi$TotalRankView;->access$3(Lch/kingdoms/android/ui/network/NewNetworkUi$TotalRankView;)Lch/kingdoms/android/ui/network/NewNetworkUi;

    move-result-object v6

    invoke-virtual {p1}, Lch/android/api/network/ChResultPacket;->getResult()I

    move-result v7

    invoke-virtual {v6, v7}, Lch/kingdoms/android/ui/network/NewNetworkUi;->popUpNetworkError(I)V

    .line 987
    :goto_0
    return-void

    .line 970
    :pswitch_0
    invoke-virtual {p1}, Lch/android/api/network/ChResultPacket;->getDataSize()I

    move-result v6

    div-int/lit8 v5, v6, 0x4

    .line 971
    .local v5, "size":I
    new-array v3, v5, [Ljava/lang/String;

    .line 972
    .local v3, "ranks":[Ljava/lang/String;
    new-array v1, v5, [Ljava/lang/String;

    .line 973
    .local v1, "ids":[Ljava/lang/String;
    new-array v4, v5, [Ljava/lang/String;

    .line 974
    .local v4, "scores":[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-lt v0, v5, :cond_0

    .line 980
    iget-object v6, p0, Lch/kingdoms/android/ui/network/NewNetworkUi$TotalRankView$1;->this$1:Lch/kingdoms/android/ui/network/NewNetworkUi$TotalRankView;

    iget v7, p0, Lch/kingdoms/android/ui/network/NewNetworkUi$TotalRankView$1;->val$toIndex:I

    invoke-static {v6, v7, v3, v1, v4}, Lch/kingdoms/android/ui/network/NewNetworkUi$TotalRankView;->access$0(Lch/kingdoms/android/ui/network/NewNetworkUi$TotalRankView;I[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_0

    .line 975
    :cond_0
    mul-int/lit8 v2, v0, 0x4

    .line 976
    .local v2, "index":I
    invoke-virtual {p1, v2}, Lch/android/api/network/ChResultPacket;->get(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v3, v0

    .line 977
    add-int/lit8 v6, v2, 0x2

    invoke-virtual {p1, v6}, Lch/android/api/network/ChResultPacket;->get(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v1, v0

    .line 978
    add-int/lit8 v6, v2, 0x3

    invoke-virtual {p1, v6}, Lch/android/api/network/ChResultPacket;->get(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v0

    .line 974
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 968
    nop

    :pswitch_data_0
    .packed-switch 0x2710
        :pswitch_0
    .end packed-switch
.end method
