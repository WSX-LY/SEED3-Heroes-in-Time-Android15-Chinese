.class Lch/kingdoms/ndk/NdkUiEventManager$16;
.super Ljava/lang/Object;
.source "NdkUiEventManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lch/kingdoms/ndk/NdkUiEventManager;->showColosseumView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 555
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 559
    new-instance v1, Lch/android/api/ui/ChColosseumView;

    invoke-static {}, Lch/kingdoms/ndk/NdkUiEventManager;->access$8()Lch/kingdoms/kor/KingdomsActivity;

    move-result-object v2

    invoke-virtual {v2}, Lch/kingdoms/kor/KingdomsActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {}, Lch/kingdoms/ndk/NdkUiEventManager;->access$9()Lch/android/api/util/DisplayInfo;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lch/android/api/ui/ChColosseumView;-><init>(Landroid/content/Context;Lch/android/api/util/DisplayInfo;)V

    invoke-static {v1}, Lch/kingdoms/ndk/NdkUiEventManager;->access$10(Lch/android/api/ui/ChColosseumView;)V

    .line 560
    invoke-static {}, Lch/kingdoms/ndk/NdkUiEventManager;->access$1()Lch/android/api/ui/ChColosseumView;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lch/android/api/ui/ChColosseumView;->update(I)V

    .line 561
    invoke-static {}, Lch/kingdoms/ndk/NdkUiEventManager;->access$8()Lch/kingdoms/kor/KingdomsActivity;

    move-result-object v1

    invoke-static {}, Lch/kingdoms/ndk/NdkUiEventManager;->access$1()Lch/android/api/ui/ChColosseumView;

    move-result-object v2

    invoke-static {v1, v2}, Lch/android/api/ui/ChViewGen;->popUp(Landroid/app/Activity;Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    .line 562
    .local v0, "layout":Landroid/view/View;
    const/16 v1, 0x4e21

    invoke-virtual {v0, v1}, Landroid/view/View;->setId(I)V

    .line 563
    return-void
.end method
