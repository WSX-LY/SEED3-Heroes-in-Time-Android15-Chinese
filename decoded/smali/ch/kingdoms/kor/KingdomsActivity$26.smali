.class Lch/kingdoms/kor/KingdomsActivity$26;
.super Ljava/lang/Object;
.source "KingdomsActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lch/kingdoms/kor/KingdomsActivity;->showDpad()V
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
    iput-object p1, p0, Lch/kingdoms/kor/KingdomsActivity$26;->this$0:Lch/kingdoms/kor/KingdomsActivity;

    .line 833
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 837
    iget-object v1, p0, Lch/kingdoms/kor/KingdomsActivity$26;->this$0:Lch/kingdoms/kor/KingdomsActivity;

    invoke-static {v1}, Lch/kingdoms/kor/KingdomsActivity;->access$7(Lch/kingdoms/kor/KingdomsActivity;)Lch/kingdoms/android/dpad/Dpad;

    move-result-object v1

    invoke-virtual {v1}, Lch/kingdoms/android/dpad/Dpad;->allBtnUp()V

    .line 838
    iget-object v1, p0, Lch/kingdoms/kor/KingdomsActivity$26;->this$0:Lch/kingdoms/kor/KingdomsActivity;

    invoke-static {v1}, Lch/kingdoms/kor/KingdomsActivity;->access$7(Lch/kingdoms/kor/KingdomsActivity;)Lch/kingdoms/android/dpad/Dpad;

    move-result-object v1

    invoke-virtual {v1}, Lch/kingdoms/android/dpad/Dpad;->getDpadViewGroup()Landroid/view/ViewGroup;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 839
    invoke-static {}, Lch/kingdoms/android/db/DBAdapter;->getInstance()Lch/kingdoms/android/db/DBAdapter;

    move-result-object v0

    .line 840
    .local v0, "dba":Lch/kingdoms/android/db/DBAdapter;
    iget-object v1, p0, Lch/kingdoms/kor/KingdomsActivity$26;->this$0:Lch/kingdoms/kor/KingdomsActivity;

    invoke-static {v1}, Lch/kingdoms/kor/KingdomsActivity;->access$7(Lch/kingdoms/kor/KingdomsActivity;)Lch/kingdoms/android/dpad/Dpad;

    move-result-object v1

    invoke-virtual {v0}, Lch/kingdoms/android/db/DBAdapter;->getAlpha()I

    move-result v2

    invoke-virtual {v0}, Lch/kingdoms/android/db/DBAdapter;->getDirPosition()Landroid/graphics/Point;

    move-result-object v3

    invoke-virtual {v0}, Lch/kingdoms/android/db/DBAdapter;->getFirePosition()Landroid/graphics/Point;

    move-result-object v4

    invoke-virtual {v0}, Lch/kingdoms/android/db/DBAdapter;->getSlotPositions()[Landroid/graphics/Point;

    move-result-object v5

    invoke-virtual {v1, v2, v3, v4, v5}, Lch/kingdoms/android/dpad/Dpad;->setDpadPositions(ILandroid/graphics/Point;Landroid/graphics/Point;[Landroid/graphics/Point;)V

    .line 841
    iget-object v1, p0, Lch/kingdoms/kor/KingdomsActivity$26;->this$0:Lch/kingdoms/kor/KingdomsActivity;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lch/kingdoms/kor/KingdomsActivity;->access$8(Lch/kingdoms/kor/KingdomsActivity;Z)V

    .line 844
    iget-object v1, p0, Lch/kingdoms/kor/KingdomsActivity$26;->this$0:Lch/kingdoms/kor/KingdomsActivity;

    invoke-static {v1}, Lch/kingdoms/kor/KingdomsActivity;->access$3(Lch/kingdoms/kor/KingdomsActivity;)Lch/kingdoms/android/ui/GameMenuUi;

    move-result-object v1

    invoke-virtual {v1, v6}, Lch/kingdoms/android/ui/GameMenuUi;->setButtonsVisibility(I)V

    .line 845
    iget-object v1, p0, Lch/kingdoms/kor/KingdomsActivity$26;->this$0:Lch/kingdoms/kor/KingdomsActivity;

    invoke-static {v1}, Lch/kingdoms/kor/KingdomsActivity;->access$7(Lch/kingdoms/kor/KingdomsActivity;)Lch/kingdoms/android/dpad/Dpad;

    move-result-object v1

    invoke-virtual {v1}, Lch/kingdoms/android/dpad/Dpad;->setQuickSlots()V

    .line 846
    return-void
.end method
