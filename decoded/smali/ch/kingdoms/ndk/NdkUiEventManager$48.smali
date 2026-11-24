.class Lch/kingdoms/ndk/NdkUiEventManager$48;
.super Ljava/lang/Object;
.source "NdkUiEventManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lch/kingdoms/ndk/NdkUiEventManager;->raceCountUpdate(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 1291
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1295
    new-instance v0, Lch/kingdoms/ndk/NdkUiEventManager$RaceCountView;

    invoke-static {}, Lch/kingdoms/ndk/NdkUiEventManager;->access$8()Lch/kingdoms/kor/KingdomsActivity;

    move-result-object v1

    invoke-virtual {v1}, Lch/kingdoms/kor/KingdomsActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lch/kingdoms/ndk/NdkUiEventManager$RaceCountView;-><init>(Landroid/content/Context;)V

    invoke-static {v0}, Lch/kingdoms/ndk/NdkUiEventManager;->access$7(Lch/kingdoms/ndk/NdkUiEventManager$RaceCountView;)V

    .line 1296
    invoke-static {}, Lch/kingdoms/ndk/NdkUiEventManager;->access$8()Lch/kingdoms/kor/KingdomsActivity;

    move-result-object v0

    invoke-static {}, Lch/kingdoms/ndk/NdkUiEventManager;->access$5()Lch/kingdoms/ndk/NdkUiEventManager$RaceCountView;

    move-result-object v1

    invoke-static {v0, v1}, Lch/android/api/ui/ChViewGen;->popUp(Landroid/app/Activity;Landroid/view/View;)Landroid/view/View;

    .line 1298
    return-void
.end method
