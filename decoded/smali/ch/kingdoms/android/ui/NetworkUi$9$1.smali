.class Lch/kingdoms/android/ui/NetworkUi$9$1;
.super Ljava/lang/Object;
.source "NetworkUi.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lch/kingdoms/android/ui/NetworkUi$9;->onResult(Lch/android/api/network/ChResultPacket;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lch/kingdoms/android/ui/NetworkUi$9;

.field private final synthetic val$notices:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lch/kingdoms/android/ui/NetworkUi$9;Ljava/util/ArrayList;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lch/kingdoms/android/ui/NetworkUi$9$1;->this$1:Lch/kingdoms/android/ui/NetworkUi$9;

    iput-object p2, p0, Lch/kingdoms/android/ui/NetworkUi$9$1;->val$notices:Ljava/util/ArrayList;

    .line 469
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lch/kingdoms/android/ui/NetworkUi$9$1;)Lch/kingdoms/android/ui/NetworkUi$9;
    .locals 1

    .prologue
    .line 469
    iget-object v0, p0, Lch/kingdoms/android/ui/NetworkUi$9$1;->this$1:Lch/kingdoms/android/ui/NetworkUi$9;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 474
    new-instance v0, Lch/android/api/ui/ChNetworkNoticeView;

    iget-object v1, p0, Lch/kingdoms/android/ui/NetworkUi$9$1;->this$1:Lch/kingdoms/android/ui/NetworkUi$9;

    invoke-static {v1}, Lch/kingdoms/android/ui/NetworkUi$9;->access$0(Lch/kingdoms/android/ui/NetworkUi$9;)Lch/kingdoms/android/ui/NetworkUi;

    move-result-object v1

    invoke-static {v1}, Lch/kingdoms/android/ui/NetworkUi;->access$4(Lch/kingdoms/android/ui/NetworkUi;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lch/kingdoms/android/ui/NetworkUi$9$1;->this$1:Lch/kingdoms/android/ui/NetworkUi$9;

    invoke-static {v2}, Lch/kingdoms/android/ui/NetworkUi$9;->access$0(Lch/kingdoms/android/ui/NetworkUi$9;)Lch/kingdoms/android/ui/NetworkUi;

    move-result-object v2

    invoke-static {v2}, Lch/kingdoms/android/ui/NetworkUi;->access$10(Lch/kingdoms/android/ui/NetworkUi;)Lch/android/api/util/DisplayInfo;

    move-result-object v2

    const v3, 0x7f020247

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lch/android/api/ui/ChNetworkNoticeView;-><init>(Landroid/content/Context;Lch/android/api/util/DisplayInfo;IZ)V

    .line 475
    .local v0, "noticeView":Lch/android/api/ui/ChNetworkNoticeView;
    iget-object v1, p0, Lch/kingdoms/android/ui/NetworkUi$9$1;->val$notices:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lch/android/api/ui/ChNetworkNoticeView;->addNotices(Ljava/util/Collection;)V

    .line 476
    iget-object v1, p0, Lch/kingdoms/android/ui/NetworkUi$9$1;->this$1:Lch/kingdoms/android/ui/NetworkUi$9;

    invoke-static {v1}, Lch/kingdoms/android/ui/NetworkUi$9;->access$0(Lch/kingdoms/android/ui/NetworkUi$9;)Lch/kingdoms/android/ui/NetworkUi;

    move-result-object v1

    invoke-static {v1}, Lch/kingdoms/android/ui/NetworkUi;->access$4(Lch/kingdoms/android/ui/NetworkUi;)Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1, v0}, Lch/android/api/ui/ChViewGen;->popUp(Landroid/app/Activity;Landroid/view/View;)Landroid/view/View;

    .line 477
    new-instance v1, Lch/kingdoms/android/ui/NetworkUi$9$1$1;

    invoke-direct {v1, p0}, Lch/kingdoms/android/ui/NetworkUi$9$1$1;-><init>(Lch/kingdoms/android/ui/NetworkUi$9$1;)V

    invoke-virtual {v0, v1}, Lch/android/api/ui/ChNetworkNoticeView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 485
    return-void
.end method
