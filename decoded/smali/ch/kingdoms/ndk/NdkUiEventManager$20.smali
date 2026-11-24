.class Lch/kingdoms/ndk/NdkUiEventManager$20;
.super Ljava/lang/Object;
.source "NdkUiEventManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lch/kingdoms/ndk/NdkUiEventManager;->updateColosseumState(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 615
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const/4 v4, 0x0

    .line 619
    invoke-static {}, Lch/kingdoms/ndk/NdkUiEventManager;->access$8()Lch/kingdoms/kor/KingdomsActivity;

    move-result-object v0

    invoke-static {}, Lch/kingdoms/ndk/NdkUiEventManager;->access$2()Lch/android/api/ui/ChColosseumResultView;

    move-result-object v2

    invoke-static {v0, v2}, Lch/android/api/ui/ChViewGen;->popUp(Landroid/app/Activity;Landroid/view/View;)Landroid/view/View;

    move-result-object v6

    .line 620
    .local v6, "layout":Landroid/view/View;
    const/16 v0, 0x4e22

    invoke-virtual {v6, v0}, Landroid/view/View;->setId(I)V

    .line 621
    invoke-static {}, Lch/kingdoms/ndk/NdkUiEventManager;->access$2()Lch/android/api/ui/ChColosseumResultView;

    move-result-object v0

    new-instance v2, Lch/kingdoms/ndk/NdkUiEventManager$20$1;

    invoke-direct {v2, p0}, Lch/kingdoms/ndk/NdkUiEventManager$20$1;-><init>(Lch/kingdoms/ndk/NdkUiEventManager$20;)V

    invoke-virtual {v0, v2}, Lch/android/api/ui/ChColosseumResultView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 628
    const-string v1, "1116947"

    .line 629
    .local v1, "colosseumId":Ljava/lang/String;
    invoke-static {}, Lch/kingdoms/ndk/NdkUiEventManager;->getColosseumNum()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 655
    :goto_0
    invoke-static {}, Lch/kingdoms/ndk/NdkUiEventManager;->access$8()Lch/kingdoms/kor/KingdomsActivity;

    move-result-object v0

    invoke-static {}, Lch/kingdoms/ndk/NdkUiEventManager;->getColosseumScore()I

    move-result v2

    int-to-long v2, v2

    move-object v5, v4

    invoke-static/range {v0 .. v5}, Lch/android/lib/openfeint/ChOpenFeint;->registerScore(Landroid/app/Activity;Ljava/lang/String;JLjava/lang/String;Lcom/openfeint/api/resource/Score$SubmitToCB;)V

    .line 656
    return-void

    .line 631
    :pswitch_0
    const-string v1, "1116947"

    .line 632
    goto :goto_0

    .line 634
    :pswitch_1
    const-string v1, "1116957"

    .line 635
    goto :goto_0

    .line 637
    :pswitch_2
    const-string v1, "1116967"

    .line 638
    goto :goto_0

    .line 640
    :pswitch_3
    const-string v1, "1116977"

    .line 641
    goto :goto_0

    .line 643
    :pswitch_4
    const-string v1, "1116987"

    .line 644
    goto :goto_0

    .line 646
    :pswitch_5
    const-string v1, "1116997"

    .line 647
    goto :goto_0

    .line 649
    :pswitch_6
    const-string v1, "1117007"

    .line 650
    goto :goto_0

    .line 652
    :pswitch_7
    const-string v1, "1117017"

    goto :goto_0

    .line 629
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method
