.class Lch/kingdoms/kor/KingdomsActivity$9;
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
    iput-object p1, p0, Lch/kingdoms/kor/KingdomsActivity$9;->this$0:Lch/kingdoms/kor/KingdomsActivity;

    .line 447
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 450
    iget-object v0, p0, Lch/kingdoms/kor/KingdomsActivity$9;->this$0:Lch/kingdoms/kor/KingdomsActivity;

    iget-object v1, p0, Lch/kingdoms/kor/KingdomsActivity$9;->this$0:Lch/kingdoms/kor/KingdomsActivity;

    invoke-static {v1}, Lch/kingdoms/kor/KingdomsActivity;->access$0(Lch/kingdoms/kor/KingdomsActivity;)Lch/android/api/util/DisplayInfo;

    move-result-object v1

    invoke-static {v0, v1}, Lch/kingdoms/android/ui/MainStateUi;->showWareHouseUi(Landroid/app/Activity;Lch/android/api/util/DisplayInfo;)V

    .line 451
    return-void
.end method
