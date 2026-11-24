.class Lch/kingdoms/kor/KingdomsActivity$22;
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
    iput-object p1, p0, Lch/kingdoms/kor/KingdomsActivity$22;->this$0:Lch/kingdoms/kor/KingdomsActivity;

    .line 669
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lch/kingdoms/kor/KingdomsActivity$22;)Lch/kingdoms/kor/KingdomsActivity;
    .locals 1

    .prologue
    .line 669
    iget-object v0, p0, Lch/kingdoms/kor/KingdomsActivity$22;->this$0:Lch/kingdoms/kor/KingdomsActivity;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 673
    new-instance v0, Lch/kingdoms/android/ui/GameOverAniImageView;

    iget-object v1, p0, Lch/kingdoms/kor/KingdomsActivity$22;->this$0:Lch/kingdoms/kor/KingdomsActivity;

    invoke-virtual {v1}, Lch/kingdoms/kor/KingdomsActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lch/kingdoms/kor/KingdomsActivity$22$1;

    invoke-direct {v2, p0}, Lch/kingdoms/kor/KingdomsActivity$22$1;-><init>(Lch/kingdoms/kor/KingdomsActivity$22;)V

    invoke-direct {v0, v1, v2}, Lch/kingdoms/android/ui/GameOverAniImageView;-><init>(Landroid/content/Context;Ljava/lang/Runnable;)V

    .line 759
    .local v0, "gameoverView":Lch/kingdoms/android/ui/GameOverAniImageView;
    iget-object v1, p0, Lch/kingdoms/kor/KingdomsActivity$22;->this$0:Lch/kingdoms/kor/KingdomsActivity;

    invoke-static {v1, v0}, Lch/android/api/ui/ChViewGen;->popUp(Landroid/app/Activity;Landroid/view/View;)Landroid/view/View;

    .line 760
    invoke-virtual {v0}, Lch/kingdoms/android/ui/GameOverAniImageView;->startAnimation()V

    .line 761
    return-void
.end method
