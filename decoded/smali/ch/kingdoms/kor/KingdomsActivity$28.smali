.class Lch/kingdoms/kor/KingdomsActivity$28;
.super Ljava/lang/Object;
.source "KingdomsActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lch/kingdoms/kor/KingdomsActivity;->hideUi()V
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
    iput-object p1, p0, Lch/kingdoms/kor/KingdomsActivity$28;->this$0:Lch/kingdoms/kor/KingdomsActivity;

    .line 867
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 875
    iget-object v0, p0, Lch/kingdoms/kor/KingdomsActivity$28;->this$0:Lch/kingdoms/kor/KingdomsActivity;

    invoke-static {v0}, Lch/kingdoms/kor/KingdomsActivity;->access$9(Lch/kingdoms/kor/KingdomsActivity;)Lch/kingdoms/android/ui/RealTimeUpdateUi;

    move-result-object v0

    invoke-virtual {v0}, Lch/kingdoms/android/ui/RealTimeUpdateUi;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 876
    iget-object v0, p0, Lch/kingdoms/kor/KingdomsActivity$28;->this$0:Lch/kingdoms/kor/KingdomsActivity;

    invoke-static {v0}, Lch/kingdoms/kor/KingdomsActivity;->access$9(Lch/kingdoms/kor/KingdomsActivity;)Lch/kingdoms/android/ui/RealTimeUpdateUi;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lch/kingdoms/android/ui/RealTimeUpdateUi;->setVisibility(I)V

    .line 878
    :cond_0
    return-void
.end method
