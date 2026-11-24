.class Lch/kingdoms/ndk/NdkUiEventManager$53;
.super Ljava/lang/Object;
.source "NdkUiEventManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lch/kingdoms/ndk/NdkUiEventManager;->showDungeonReward(IIII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$dungeonScore:I


# direct methods
.method constructor <init>(I)V
    .locals 0

    .prologue
    .line 1
    iput p1, p0, Lch/kingdoms/ndk/NdkUiEventManager$53;->val$dungeonScore:I

    .line 1455
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const/4 v4, 0x0

    .line 1460
    invoke-static {}, Lch/kingdoms/ndk/NdkUiEventManager;->access$22()Lch/android/api/ui/ChDungeonResultView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1461
    invoke-static {}, Lch/kingdoms/ndk/NdkUiEventManager;->access$22()Lch/android/api/ui/ChDungeonResultView;

    move-result-object v0

    invoke-virtual {v0}, Lch/android/api/ui/ChDungeonResultView;->showResult()V

    .line 1462
    invoke-static {}, Lch/kingdoms/ndk/NdkUiEventManager;->access$22()Lch/android/api/ui/ChDungeonResultView;

    move-result-object v0

    new-instance v1, Lch/kingdoms/ndk/NdkUiEventManager$53$1;

    invoke-direct {v1, p0}, Lch/kingdoms/ndk/NdkUiEventManager$53$1;-><init>(Lch/kingdoms/ndk/NdkUiEventManager$53;)V

    invoke-virtual {v0, v1}, Lch/android/api/ui/ChDungeonResultView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1475
    invoke-static {}, Lch/kingdoms/ndk/NdkUiEventManager;->access$8()Lch/kingdoms/kor/KingdomsActivity;

    move-result-object v0

    const-string v1, "1117027"

    iget v2, p0, Lch/kingdoms/ndk/NdkUiEventManager$53;->val$dungeonScore:I

    int-to-long v2, v2

    move-object v5, v4

    invoke-static/range {v0 .. v5}, Lch/android/lib/openfeint/ChOpenFeint;->registerScore(Landroid/app/Activity;Ljava/lang/String;JLjava/lang/String;Lcom/openfeint/api/resource/Score$SubmitToCB;)V

    .line 1477
    :cond_0
    return-void
.end method
