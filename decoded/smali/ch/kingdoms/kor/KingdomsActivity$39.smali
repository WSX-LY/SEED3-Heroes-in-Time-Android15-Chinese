.class Lch/kingdoms/kor/KingdomsActivity$39;
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
    iput-object p1, p0, Lch/kingdoms/kor/KingdomsActivity$39;->this$0:Lch/kingdoms/kor/KingdomsActivity;

    .line 1064
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 1067
    iget-object v0, p0, Lch/kingdoms/kor/KingdomsActivity$39;->this$0:Lch/kingdoms/kor/KingdomsActivity;

    invoke-static {v0}, Lch/kingdoms/kor/KingdomsActivity;->access$6(Lch/kingdoms/kor/KingdomsActivity;)Lch/kingdoms/android/ui/CaptionUi;

    move-result-object v0

    invoke-virtual {v0}, Lch/kingdoms/android/ui/CaptionUi;->hideSkipBtn()V

    .line 1068
    iget-object v0, p0, Lch/kingdoms/kor/KingdomsActivity$39;->this$0:Lch/kingdoms/kor/KingdomsActivity;

    iget-object v1, p0, Lch/kingdoms/kor/KingdomsActivity$39;->this$0:Lch/kingdoms/kor/KingdomsActivity;

    invoke-static {v1}, Lch/kingdoms/kor/KingdomsActivity;->access$0(Lch/kingdoms/kor/KingdomsActivity;)Lch/android/api/util/DisplayInfo;

    move-result-object v1

    const/4 v2, -0x1

    .line 1069
    const v3, -0xff0100

    const/4 v4, 0x7

    invoke-static {v4}, Lch/kingdoms/ndk/NdkTextLoader;->getScriptTxt(I)Ljava/lang/String;

    move-result-object v4

    .line 1070
    invoke-static {}, Lch/kingdoms/ndk/data/DelQuestData;->getGiftToString()Ljava/lang/String;

    move-result-object v5

    .line 1068
    invoke-static/range {v0 .. v5}, Lch/android/api/ui/ChViewGen;->popUpAlarmView(Landroid/app/Activity;Lch/android/api/util/DisplayInfo;IILjava/lang/String;Ljava/lang/String;)Landroid/view/View;

    .line 1071
    return-void
.end method
