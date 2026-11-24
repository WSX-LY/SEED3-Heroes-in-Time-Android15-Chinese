.class Lch/kingdoms/kor/KingdomsActivity$38;
.super Ljava/lang/Object;
.source "KingdomsActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lch/kingdoms/kor/KingdomsActivity;->setScriptSubState(I)V
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
    iput-object p1, p0, Lch/kingdoms/kor/KingdomsActivity$38;->this$0:Lch/kingdoms/kor/KingdomsActivity;

    .line 1051
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 1054
    iget-object v0, p0, Lch/kingdoms/kor/KingdomsActivity$38;->this$0:Lch/kingdoms/kor/KingdomsActivity;

    invoke-static {v0}, Lch/kingdoms/kor/KingdomsActivity;->access$6(Lch/kingdoms/kor/KingdomsActivity;)Lch/kingdoms/android/ui/CaptionUi;

    move-result-object v0

    invoke-virtual {v0}, Lch/kingdoms/android/ui/CaptionUi;->hideSkipBtn()V

    .line 1055
    iget-object v0, p0, Lch/kingdoms/kor/KingdomsActivity$38;->this$0:Lch/kingdoms/kor/KingdomsActivity;

    iget-object v1, p0, Lch/kingdoms/kor/KingdomsActivity$38;->this$0:Lch/kingdoms/kor/KingdomsActivity;

    invoke-static {v1}, Lch/kingdoms/kor/KingdomsActivity;->access$0(Lch/kingdoms/kor/KingdomsActivity;)Lch/android/api/util/DisplayInfo;

    move-result-object v1

    const/4 v2, -0x1

    .line 1056
    const v3, -0xff0100

    const/4 v4, 0x5

    invoke-static {v4}, Lch/kingdoms/ndk/NdkTextLoader;->getScriptTxt(I)Ljava/lang/String;

    move-result-object v4

    .line 1057
    sget-object v5, Lch/kingdoms/ndk/data/DelQuestData;->quests:Ljava/util/ArrayList;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lch/kingdoms/ndk/data/DelQuestData$CompleteQuest;

    iget-object v5, v5, Lch/kingdoms/ndk/data/DelQuestData$CompleteQuest;->questName:Ljava/lang/String;

    .line 1055
    invoke-static/range {v0 .. v5}, Lch/android/api/ui/ChViewGen;->popUpAlarmView(Landroid/app/Activity;Lch/android/api/util/DisplayInfo;IILjava/lang/String;Ljava/lang/String;)Landroid/view/View;

    .line 1058
    return-void
.end method
