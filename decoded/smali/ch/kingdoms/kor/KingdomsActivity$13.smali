.class Lch/kingdoms/kor/KingdomsActivity$13;
.super Ljava/lang/Object;
.source "KingdomsActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lch/kingdoms/kor/KingdomsActivity;->setMainState(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lch/kingdoms/kor/KingdomsActivity;


# direct methods
.method constructor <init>(Lch/kingdoms/kor/KingdomsActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lch/kingdoms/kor/KingdomsActivity$13;->this$0:Lch/kingdoms/kor/KingdomsActivity;

    .line 500
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 503
    invoke-static {}, Lch/kingdoms/android/db/DBAdapter;->getInstance()Lch/kingdoms/android/db/DBAdapter;

    move-result-object v0

    .line 504
    .local v0, "dba":Lch/kingdoms/android/db/DBAdapter;
    invoke-virtual {v0}, Lch/kingdoms/android/db/DBAdapter;->updateSaveData()V

    .line 505
    :goto_0
    invoke-static {}, Lch/android/api/ui/ChViewGen;->getEventLayerLevel()I

    move-result v1

    if-gtz v1, :cond_0

    .line 508
    iget-object v1, p0, Lch/kingdoms/kor/KingdomsActivity$13;->this$0:Lch/kingdoms/kor/KingdomsActivity;

    iget-object v2, p0, Lch/kingdoms/kor/KingdomsActivity$13;->this$0:Lch/kingdoms/kor/KingdomsActivity;

    invoke-static {v2}, Lch/kingdoms/kor/KingdomsActivity;->access$0(Lch/kingdoms/kor/KingdomsActivity;)Lch/android/api/util/DisplayInfo;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lch/kingdoms/android/ui/MainStateUi;->showMainMenuUi(Landroid/app/Activity;Lch/android/api/util/DisplayInfo;Z)Lch/kingdoms/android/ui/MainMenuUi;

    .line 509
    invoke-static {}, Lch/android/api/util/NativeHeapChecker;->log()V

    .line 510
    return-void

    .line 506
    :cond_0
    invoke-static {}, Lch/android/api/ui/ChViewGen;->closePopUpView()V

    goto :goto_0
.end method
