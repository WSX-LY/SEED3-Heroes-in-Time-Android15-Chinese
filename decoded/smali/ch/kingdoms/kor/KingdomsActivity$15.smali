.class Lch/kingdoms/kor/KingdomsActivity$15;
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
    iput-object p1, p0, Lch/kingdoms/kor/KingdomsActivity$15;->this$0:Lch/kingdoms/kor/KingdomsActivity;

    .line 526
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 529
    iget-object v0, p0, Lch/kingdoms/kor/KingdomsActivity$15;->this$0:Lch/kingdoms/kor/KingdomsActivity;

    invoke-static {v0}, Lch/kingdoms/kor/KingdomsActivity;->access$3(Lch/kingdoms/kor/KingdomsActivity;)Lch/kingdoms/android/ui/GameMenuUi;

    move-result-object v0

    sget v1, Lch/kingdoms/kor/KingdomsActivity;->m_MainState:I

    invoke-virtual {v0, v1}, Lch/kingdoms/android/ui/GameMenuUi;->setMainState(I)V

    .line 530
    iget-object v0, p0, Lch/kingdoms/kor/KingdomsActivity$15;->this$0:Lch/kingdoms/kor/KingdomsActivity;

    invoke-static {v0}, Lch/kingdoms/android/ui/MainStateUi;->showColosseumUi(Landroid/app/Activity;)V

    .line 531
    return-void
.end method
