.class Lch/kingdoms/ndk/NdkUiEventManager$49;
.super Ljava/lang/Object;
.source "NdkUiEventManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lch/kingdoms/ndk/NdkUiEventManager;->setRaceResult(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$isWin:Z


# direct methods
.method constructor <init>(Z)V
    .locals 0

    .prologue
    .line 1
    iput-boolean p1, p0, Lch/kingdoms/ndk/NdkUiEventManager$49;->val$isWin:Z

    .line 1323
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 1327
    invoke-static {}, Lch/kingdoms/ndk/NdkUiEventManager;->access$19()Lch/kingdoms/ndk/NdkUiEventManager$RaceResultView;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1328
    new-instance v0, Lch/kingdoms/ndk/NdkUiEventManager$RaceResultView;

    invoke-static {}, Lch/kingdoms/ndk/NdkUiEventManager;->access$8()Lch/kingdoms/kor/KingdomsActivity;

    move-result-object v1

    invoke-virtual {v1}, Lch/kingdoms/kor/KingdomsActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lch/kingdoms/ndk/NdkUiEventManager$RaceResultView;-><init>(Landroid/content/Context;)V

    invoke-static {v0}, Lch/kingdoms/ndk/NdkUiEventManager;->access$20(Lch/kingdoms/ndk/NdkUiEventManager$RaceResultView;)V

    .line 1329
    invoke-static {}, Lch/kingdoms/ndk/NdkUiEventManager;->access$19()Lch/kingdoms/ndk/NdkUiEventManager$RaceResultView;

    move-result-object v0

    iget-boolean v1, p0, Lch/kingdoms/ndk/NdkUiEventManager$49;->val$isWin:Z

    invoke-virtual {v0, v1}, Lch/kingdoms/ndk/NdkUiEventManager$RaceResultView;->setWin(Z)V

    .line 1330
    invoke-static {}, Lch/kingdoms/ndk/NdkUiEventManager;->access$8()Lch/kingdoms/kor/KingdomsActivity;

    move-result-object v0

    invoke-static {}, Lch/kingdoms/ndk/NdkUiEventManager;->access$19()Lch/kingdoms/ndk/NdkUiEventManager$RaceResultView;

    move-result-object v1

    invoke-static {v0, v1}, Lch/android/api/ui/ChViewGen;->popUp(Landroid/app/Activity;Landroid/view/View;)Landroid/view/View;

    .line 1332
    :cond_0
    invoke-static {}, Lch/kingdoms/ndk/NdkUiEventManager;->access$12()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lch/kingdoms/ndk/NdkUiEventManager$49$1;

    invoke-direct {v1, p0}, Lch/kingdoms/ndk/NdkUiEventManager$49$1;-><init>(Lch/kingdoms/ndk/NdkUiEventManager$49;)V

    .line 1342
    const-wide/16 v2, 0x7d0

    .line 1332
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1343
    return-void
.end method
