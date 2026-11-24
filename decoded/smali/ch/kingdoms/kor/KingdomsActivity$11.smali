.class Lch/kingdoms/kor/KingdomsActivity$11;
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
    iput-object p1, p0, Lch/kingdoms/kor/KingdomsActivity$11;->this$0:Lch/kingdoms/kor/KingdomsActivity;

    .line 466
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 470
    iget-object v0, p0, Lch/kingdoms/kor/KingdomsActivity$11;->this$0:Lch/kingdoms/kor/KingdomsActivity;

    invoke-static {v0}, Lch/kingdoms/kor/KingdomsActivity;->access$3(Lch/kingdoms/kor/KingdomsActivity;)Lch/kingdoms/android/ui/GameMenuUi;

    move-result-object v0

    invoke-virtual {v0}, Lch/kingdoms/android/ui/GameMenuUi;->popUpReservedUi()V

    .line 471
    iget-object v0, p0, Lch/kingdoms/kor/KingdomsActivity$11;->this$0:Lch/kingdoms/kor/KingdomsActivity;

    invoke-static {v0}, Lch/kingdoms/kor/KingdomsActivity;->access$4(Lch/kingdoms/kor/KingdomsActivity;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lch/kingdoms/kor/KingdomsActivity$11;->this$0:Lch/kingdoms/kor/KingdomsActivity;

    invoke-static {v0}, Lch/kingdoms/kor/KingdomsActivity;->access$4(Lch/kingdoms/kor/KingdomsActivity;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 472
    iget-object v0, p0, Lch/kingdoms/kor/KingdomsActivity$11;->this$0:Lch/kingdoms/kor/KingdomsActivity;

    invoke-static {v0}, Lch/kingdoms/kor/KingdomsActivity;->access$4(Lch/kingdoms/kor/KingdomsActivity;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 474
    :cond_0
    return-void
.end method
