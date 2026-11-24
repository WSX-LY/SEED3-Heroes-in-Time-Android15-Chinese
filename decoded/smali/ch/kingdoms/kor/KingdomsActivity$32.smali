.class Lch/kingdoms/kor/KingdomsActivity$32;
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
    iput-object p1, p0, Lch/kingdoms/kor/KingdomsActivity$32;->this$0:Lch/kingdoms/kor/KingdomsActivity;

    .line 931
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 934
    iget-object v0, p0, Lch/kingdoms/kor/KingdomsActivity$32;->this$0:Lch/kingdoms/kor/KingdomsActivity;

    invoke-static {v0}, Lch/kingdoms/kor/KingdomsActivity;->access$6(Lch/kingdoms/kor/KingdomsActivity;)Lch/kingdoms/android/ui/CaptionUi;

    move-result-object v0

    invoke-virtual {v0}, Lch/kingdoms/android/ui/CaptionUi;->hideSkipBtn()V

    .line 935
    invoke-static {}, Lch/kingdoms/ndk/NdkUiEventManager;->isMainQuest()Z

    move-result v6

    .line 936
    .local v6, "isMainQuest":Z
    if-eqz v6, :cond_0

    const v2, 0x7f020250

    .line 937
    .local v2, "titleResId":I
    :goto_0
    iget-object v0, p0, Lch/kingdoms/kor/KingdomsActivity$32;->this$0:Lch/kingdoms/kor/KingdomsActivity;

    iget-object v1, p0, Lch/kingdoms/kor/KingdomsActivity$32;->this$0:Lch/kingdoms/kor/KingdomsActivity;

    invoke-static {v1}, Lch/kingdoms/kor/KingdomsActivity;->access$0(Lch/kingdoms/kor/KingdomsActivity;)Lch/android/api/util/DisplayInfo;

    move-result-object v1

    if-eqz v6, :cond_1

    const/high16 v3, -0x10000

    :goto_1
    invoke-static {}, Lch/kingdoms/ndk/NdkUiEventManager;->getQuestName()Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Lch/kingdoms/ndk/NdkUiEventManager;->getQuestTxt()Ljava/lang/String;

    move-result-object v5

    invoke-static/range {v0 .. v5}, Lch/android/api/ui/ChViewGen;->popUpAlarmView(Landroid/app/Activity;Lch/android/api/util/DisplayInfo;IILjava/lang/String;Ljava/lang/String;)Landroid/view/View;

    .line 938
    return-void

    .line 936
    .end local v2    # "titleResId":I
    :cond_0
    const v2, 0x7f0202c1

    goto :goto_0

    .line 937
    .restart local v2    # "titleResId":I
    :cond_1
    const v3, -0xff0100

    goto :goto_1
.end method
