.class Lch/kingdoms/android/ui/NetworkUi$ColosseumRankView$1;
.super Ljava/lang/Object;
.source "NetworkUi.java"

# interfaces
.implements Lch/kingdoms/android/network/ChPacketFactory$OnResultListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lch/kingdoms/android/ui/NetworkUi$ColosseumRankView;->onPageMove(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lch/kingdoms/android/ui/NetworkUi$ColosseumRankView;

.field private final synthetic val$toIndex:I


# direct methods
.method constructor <init>(Lch/kingdoms/android/ui/NetworkUi$ColosseumRankView;I)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lch/kingdoms/android/ui/NetworkUi$ColosseumRankView$1;->this$1:Lch/kingdoms/android/ui/NetworkUi$ColosseumRankView;

    iput p2, p0, Lch/kingdoms/android/ui/NetworkUi$ColosseumRankView$1;->val$toIndex:I

    .line 944
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(Lch/android/api/network/ChResultPacket;)V
    .locals 12
    .param p1, "resultPacket"    # Lch/android/api/network/ChResultPacket;

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x0

    .line 948
    invoke-virtual {p1}, Lch/android/api/network/ChResultPacket;->getResult()I

    move-result v7

    packed-switch v7, :pswitch_data_0

    .line 966
    iget-object v7, p0, Lch/kingdoms/android/ui/NetworkUi$ColosseumRankView$1;->this$1:Lch/kingdoms/android/ui/NetworkUi$ColosseumRankView;

    iget v8, p0, Lch/kingdoms/android/ui/NetworkUi$ColosseumRankView$1;->val$toIndex:I

    invoke-static {v7, v8, v10, v10, v10}, Lch/kingdoms/android/ui/NetworkUi$ColosseumRankView;->access$0(Lch/kingdoms/android/ui/NetworkUi$ColosseumRankView;I[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    .line 967
    iget-object v7, p0, Lch/kingdoms/android/ui/NetworkUi$ColosseumRankView$1;->this$1:Lch/kingdoms/android/ui/NetworkUi$ColosseumRankView;

    invoke-static {v7}, Lch/kingdoms/android/ui/NetworkUi$ColosseumRankView;->access$2(Lch/kingdoms/android/ui/NetworkUi$ColosseumRankView;)Lch/kingdoms/android/ui/NetworkUi;

    move-result-object v7

    invoke-virtual {p1}, Lch/android/api/network/ChResultPacket;->getResult()I

    move-result v8

    invoke-static {v7, v8}, Lch/kingdoms/android/ui/NetworkUi;->access$1(Lch/kingdoms/android/ui/NetworkUi;I)V

    .line 970
    :goto_0
    return-void

    .line 950
    :pswitch_0
    invoke-virtual {p1}, Lch/android/api/network/ChResultPacket;->getDataSize()I

    move-result v7

    div-int/lit8 v6, v7, 0x4

    .line 951
    .local v6, "size":I
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 952
    .local v4, "ranks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 953
    .local v1, "ids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 954
    .local v5, "scores":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-lt v0, v6, :cond_0

    .line 963
    iget-object v10, p0, Lch/kingdoms/android/ui/NetworkUi$ColosseumRankView$1;->this$1:Lch/kingdoms/android/ui/NetworkUi$ColosseumRankView;

    iget v11, p0, Lch/kingdoms/android/ui/NetworkUi$ColosseumRankView$1;->val$toIndex:I

    new-array v7, v9, [Ljava/lang/String;

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Ljava/lang/String;

    new-array v8, v9, [Ljava/lang/String;

    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Ljava/lang/String;

    new-array v9, v9, [Ljava/lang/String;

    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [Ljava/lang/String;

    invoke-static {v10, v11, v7, v8, v9}, Lch/kingdoms/android/ui/NetworkUi$ColosseumRankView;->access$0(Lch/kingdoms/android/ui/NetworkUi$ColosseumRankView;I[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_0

    .line 955
    :cond_0
    mul-int/lit8 v2, v0, 0x4

    .line 956
    .local v2, "index":I
    invoke-virtual {p1, v2}, Lch/android/api/network/ChResultPacket;->get(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 957
    .local v3, "rank":I
    iget v7, p0, Lch/kingdoms/android/ui/NetworkUi$ColosseumRankView$1;->val$toIndex:I

    add-int/lit8 v7, v7, -0x1

    mul-int/lit8 v7, v7, 0xa

    if-ge v7, v3, :cond_1

    .line 958
    invoke-virtual {p1, v2}, Lch/android/api/network/ChResultPacket;->get(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 959
    add-int/lit8 v7, v2, 0x2

    invoke-virtual {p1, v7}, Lch/android/api/network/ChResultPacket;->get(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 960
    add-int/lit8 v7, v2, 0x3

    invoke-virtual {p1, v7}, Lch/android/api/network/ChResultPacket;->get(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 954
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 948
    :pswitch_data_0
    .packed-switch 0x2710
        :pswitch_0
    .end packed-switch
.end method
