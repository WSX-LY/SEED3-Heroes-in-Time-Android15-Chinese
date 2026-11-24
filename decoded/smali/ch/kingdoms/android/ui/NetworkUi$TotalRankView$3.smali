.class Lch/kingdoms/android/ui/NetworkUi$TotalRankView$3;
.super Ljava/lang/Object;
.source "NetworkUi.java"

# interfaces
.implements Lch/kingdoms/android/network/ChPacketFactory$OnResultListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lch/kingdoms/android/ui/NetworkUi$TotalRankView;->updateMyInfo([II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lch/kingdoms/android/ui/NetworkUi$TotalRankView;

.field private final synthetic val$job:I

.field private final synthetic val$myRankInfos:[I


# direct methods
.method constructor <init>(Lch/kingdoms/android/ui/NetworkUi$TotalRankView;[II)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lch/kingdoms/android/ui/NetworkUi$TotalRankView$3;->this$1:Lch/kingdoms/android/ui/NetworkUi$TotalRankView;

    iput-object p2, p0, Lch/kingdoms/android/ui/NetworkUi$TotalRankView$3;->val$myRankInfos:[I

    iput p3, p0, Lch/kingdoms/android/ui/NetworkUi$TotalRankView$3;->val$job:I

    .line 898
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(Lch/android/api/network/ChResultPacket;)V
    .locals 5
    .param p1, "resultPacket"    # Lch/android/api/network/ChResultPacket;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 902
    invoke-virtual {p1}, Lch/android/api/network/ChResultPacket;->getResult()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 914
    :cond_0
    :goto_0
    iget-object v1, p0, Lch/kingdoms/android/ui/NetworkUi$TotalRankView$3;->this$1:Lch/kingdoms/android/ui/NetworkUi$TotalRankView;

    iget-object v2, p0, Lch/kingdoms/android/ui/NetworkUi$TotalRankView$3;->val$myRankInfos:[I

    iget v3, p0, Lch/kingdoms/android/ui/NetworkUi$TotalRankView$3;->val$job:I

    add-int/lit8 v3, v3, 0x1

    invoke-static {v1, v2, v3}, Lch/kingdoms/android/ui/NetworkUi$TotalRankView;->access$2(Lch/kingdoms/android/ui/NetworkUi$TotalRankView;[II)V

    .line 915
    return-void

    .line 904
    :pswitch_0
    invoke-virtual {p1, v3}, Lch/android/api/network/ChResultPacket;->get(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 905
    .local v0, "score":I
    iget-object v1, p0, Lch/kingdoms/android/ui/NetworkUi$TotalRankView$3;->val$myRankInfos:[I

    aget v1, v1, v3

    if-ge v1, v0, :cond_0

    .line 906
    iget-object v1, p0, Lch/kingdoms/android/ui/NetworkUi$TotalRankView$3;->val$myRankInfos:[I

    invoke-virtual {p1, v4}, Lch/android/api/network/ChResultPacket;->get(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    aput v2, v1, v4

    .line 907
    iget-object v1, p0, Lch/kingdoms/android/ui/NetworkUi$TotalRankView$3;->val$myRankInfos:[I

    aput v0, v1, v3

    goto :goto_0

    .line 902
    :pswitch_data_0
    .packed-switch 0x2710
        :pswitch_0
    .end packed-switch
.end method
