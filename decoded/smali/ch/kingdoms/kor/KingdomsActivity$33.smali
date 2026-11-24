.class Lch/kingdoms/kor/KingdomsActivity$33;
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
    iput-object p1, p0, Lch/kingdoms/kor/KingdomsActivity$33;->this$0:Lch/kingdoms/kor/KingdomsActivity;

    .line 942
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    const/4 v2, 0x1

    .line 945
    iget-object v0, p0, Lch/kingdoms/kor/KingdomsActivity$33;->this$0:Lch/kingdoms/kor/KingdomsActivity;

    invoke-static {v0}, Lch/kingdoms/kor/KingdomsActivity;->access$6(Lch/kingdoms/kor/KingdomsActivity;)Lch/kingdoms/android/ui/CaptionUi;

    move-result-object v0

    invoke-virtual {v0}, Lch/kingdoms/android/ui/CaptionUi;->hideSkipBtn()V

    .line 946
    invoke-static {}, Lch/kingdoms/ndk/NdkUiEventManager;->getScriptGetItemNum()I

    move-result v8

    .line 947
    .local v8, "itemNum":I
    invoke-static {}, Lch/kingdoms/ndk/NdkUiEventManager;->getScriptGetItemCnt()I

    move-result v7

    .line 948
    .local v7, "cnt":I
    invoke-static {v8}, Lch/kingdoms/ndk/NdkUiEventManager;->callNativeGetItemRes(I)Lch/kingdoms/ndk/data/ItemRes;

    move-result-object v9

    .line 949
    .local v9, "itemRes":Lch/kingdoms/ndk/data/ItemRes;
    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    .line 950
    .local v6, "buffer":Ljava/lang/StringBuffer;
    iget-object v0, v9, Lch/kingdoms/ndk/data/ItemRes;->name:Ljava/lang/String;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 951
    if-le v7, v2, :cond_0

    .line 952
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, " x "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 954
    :cond_0
    invoke-static {v2}, Lch/kingdoms/ndk/NdkTextLoader;->getScriptTxt(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 955
    iget-object v0, p0, Lch/kingdoms/kor/KingdomsActivity$33;->this$0:Lch/kingdoms/kor/KingdomsActivity;

    iget-object v1, p0, Lch/kingdoms/kor/KingdomsActivity$33;->this$0:Lch/kingdoms/kor/KingdomsActivity;

    invoke-static {v1}, Lch/kingdoms/kor/KingdomsActivity;->access$0(Lch/kingdoms/kor/KingdomsActivity;)Lch/android/api/util/DisplayInfo;

    move-result-object v1

    const/4 v2, -0x1

    const/high16 v3, -0x10000

    .line 956
    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, ""

    .line 955
    invoke-static/range {v0 .. v5}, Lch/android/api/ui/ChViewGen;->popUpAlarmView(Landroid/app/Activity;Lch/android/api/util/DisplayInfo;IILjava/lang/String;Ljava/lang/String;)Landroid/view/View;

    .line 957
    return-void
.end method
