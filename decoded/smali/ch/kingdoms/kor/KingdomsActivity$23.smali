.class Lch/kingdoms/kor/KingdomsActivity$23;
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
    iput-object p1, p0, Lch/kingdoms/kor/KingdomsActivity$23;->this$0:Lch/kingdoms/kor/KingdomsActivity;

    .line 774
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 778
    iget-object v1, p0, Lch/kingdoms/kor/KingdomsActivity$23;->this$0:Lch/kingdoms/kor/KingdomsActivity;

    invoke-static {v1}, Lch/kingdoms/kor/KingdomsActivity;->access$4(Lch/kingdoms/kor/KingdomsActivity;)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lch/kingdoms/kor/KingdomsActivity$23;->this$0:Lch/kingdoms/kor/KingdomsActivity;

    invoke-static {v1}, Lch/kingdoms/kor/KingdomsActivity;->access$4(Lch/kingdoms/kor/KingdomsActivity;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    .line 779
    iget-object v1, p0, Lch/kingdoms/kor/KingdomsActivity$23;->this$0:Lch/kingdoms/kor/KingdomsActivity;

    invoke-static {v1}, Lch/kingdoms/kor/KingdomsActivity;->access$4(Lch/kingdoms/kor/KingdomsActivity;)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 781
    :cond_0
    iget-object v1, p0, Lch/kingdoms/kor/KingdomsActivity$23;->this$0:Lch/kingdoms/kor/KingdomsActivity;

    invoke-static {v1}, Lch/kingdoms/kor/KingdomsActivity;->access$7(Lch/kingdoms/kor/KingdomsActivity;)Lch/kingdoms/android/dpad/Dpad;

    move-result-object v1

    invoke-virtual {v1}, Lch/kingdoms/android/dpad/Dpad;->dirBtnUp()V

    .line 785
    const/4 v1, 0x2

    new-array v0, v1, [I

    fill-array-data v0, :array_0

    .line 786
    .local v0, "viewIds":[I
    invoke-static {v0}, Lch/android/api/ui/ChViewGen;->closePopUpViews([I)V

    .line 787
    return-void

    .line 785
    :array_0
    .array-data 4
        0x2711
        0x2712
    .end array-data
.end method
