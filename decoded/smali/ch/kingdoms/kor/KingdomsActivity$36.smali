.class Lch/kingdoms/kor/KingdomsActivity$36;
.super Ljava/lang/Object;
.source "KingdomsActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lch/kingdoms/kor/KingdomsActivity;->setScriptMainState(I)V
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
    iput-object p1, p0, Lch/kingdoms/kor/KingdomsActivity$36;->this$0:Lch/kingdoms/kor/KingdomsActivity;

    .line 987
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 991
    iget-object v0, p0, Lch/kingdoms/kor/KingdomsActivity$36;->this$0:Lch/kingdoms/kor/KingdomsActivity;

    invoke-static {v0}, Lch/kingdoms/kor/KingdomsActivity;->access$6(Lch/kingdoms/kor/KingdomsActivity;)Lch/kingdoms/android/ui/CaptionUi;

    move-result-object v0

    invoke-virtual {v0}, Lch/kingdoms/android/ui/CaptionUi;->hideSkipBtn()V

    .line 992
    iget-object v0, p0, Lch/kingdoms/kor/KingdomsActivity$36;->this$0:Lch/kingdoms/kor/KingdomsActivity;

    const/4 v1, 0x3

    invoke-static {v1}, Lch/kingdoms/ndk/NdkTextLoader;->getScriptTxt(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lch/kingdoms/kor/KingdomsActivity$36$1;

    invoke-direct {v2, p0}, Lch/kingdoms/kor/KingdomsActivity$36$1;-><init>(Lch/kingdoms/kor/KingdomsActivity$36;)V

    invoke-static {v0, v1, v2}, Lch/android/api/ui/ChViewGen;->popUpConfirmYesNoView(Landroid/app/Activity;Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;)Landroid/view/View;

    .line 1008
    return-void
.end method
