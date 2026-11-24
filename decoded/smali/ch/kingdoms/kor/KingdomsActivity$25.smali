.class Lch/kingdoms/kor/KingdomsActivity$25;
.super Ljava/lang/Object;
.source "KingdomsActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lch/kingdoms/kor/KingdomsActivity;->hideDpad()V
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
    iput-object p1, p0, Lch/kingdoms/kor/KingdomsActivity$25;->this$0:Lch/kingdoms/kor/KingdomsActivity;

    .line 819
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/4 v2, 0x4

    .line 823
    iget-object v0, p0, Lch/kingdoms/kor/KingdomsActivity$25;->this$0:Lch/kingdoms/kor/KingdomsActivity;

    invoke-static {v0}, Lch/kingdoms/kor/KingdomsActivity;->access$7(Lch/kingdoms/kor/KingdomsActivity;)Lch/kingdoms/android/dpad/Dpad;

    move-result-object v0

    invoke-virtual {v0}, Lch/kingdoms/android/dpad/Dpad;->getDpadViewGroup()Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 824
    iget-object v0, p0, Lch/kingdoms/kor/KingdomsActivity$25;->this$0:Lch/kingdoms/kor/KingdomsActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lch/kingdoms/kor/KingdomsActivity;->access$8(Lch/kingdoms/kor/KingdomsActivity;Z)V

    .line 826
    iget-object v0, p0, Lch/kingdoms/kor/KingdomsActivity$25;->this$0:Lch/kingdoms/kor/KingdomsActivity;

    invoke-static {v0}, Lch/kingdoms/kor/KingdomsActivity;->access$9(Lch/kingdoms/kor/KingdomsActivity;)Lch/kingdoms/android/ui/RealTimeUpdateUi;

    move-result-object v0

    invoke-virtual {v0, v2}, Lch/kingdoms/android/ui/RealTimeUpdateUi;->setVisibility(I)V

    .line 827
    iget-object v0, p0, Lch/kingdoms/kor/KingdomsActivity$25;->this$0:Lch/kingdoms/kor/KingdomsActivity;

    invoke-static {v0}, Lch/kingdoms/kor/KingdomsActivity;->access$3(Lch/kingdoms/kor/KingdomsActivity;)Lch/kingdoms/android/ui/GameMenuUi;

    move-result-object v0

    invoke-virtual {v0, v2}, Lch/kingdoms/android/ui/GameMenuUi;->setButtonsVisibility(I)V

    .line 828
    return-void
.end method
