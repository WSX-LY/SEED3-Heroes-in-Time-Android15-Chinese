.class Lch/kingdoms/android/ui/QuestUi$1;
.super Ljava/lang/Object;
.source "QuestUi.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lch/kingdoms/android/ui/QuestUi;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lch/kingdoms/android/ui/QuestUi;


# direct methods
.method constructor <init>(Lch/kingdoms/android/ui/QuestUi;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lch/kingdoms/android/ui/QuestUi$1;->this$0:Lch/kingdoms/android/ui/QuestUi;

    .line 166
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 10
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v1, 0x1

    const/4 v9, 0x0

    .line 170
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 188
    :goto_0
    return-void

    .line 172
    :pswitch_0
    invoke-static {}, Lch/android/api/ui/ChViewGen;->closePopUpView()V

    .line 173
    iget-object v0, p0, Lch/kingdoms/android/ui/QuestUi$1;->this$0:Lch/kingdoms/android/ui/QuestUi;

    invoke-static {v0}, Lch/kingdoms/android/ui/QuestUi;->access$5(Lch/kingdoms/android/ui/QuestUi;)I

    move-result v0

    invoke-static {v0}, Lch/kingdoms/ndk/NdkUiEventManager;->callNativeQuestGiveUp(I)V

    .line 174
    iget-object v0, p0, Lch/kingdoms/android/ui/QuestUi$1;->this$0:Lch/kingdoms/android/ui/QuestUi;

    invoke-static {}, Lch/kingdoms/ndk/NdkUiEventManager;->callNativeGetQuestDatas()Lch/kingdoms/ndk/data/QuestDatas;

    move-result-object v2

    invoke-virtual {v2}, Lch/kingdoms/ndk/data/QuestDatas;->getQuests()[Lch/kingdoms/ndk/data/QuestDatas$Quest;

    move-result-object v2

    invoke-static {v0, v2}, Lch/kingdoms/android/ui/QuestUi;->access$6(Lch/kingdoms/android/ui/QuestUi;[Lch/kingdoms/ndk/data/QuestDatas$Quest;)V

    .line 175
    iget-object v0, p0, Lch/kingdoms/android/ui/QuestUi$1;->this$0:Lch/kingdoms/android/ui/QuestUi;

    invoke-static {v0}, Lch/kingdoms/android/ui/QuestUi;->access$7(Lch/kingdoms/android/ui/QuestUi;)Lch/kingdoms/android/ui/QuestUi$QuestList;

    move-result-object v0

    invoke-virtual {v0}, Lch/kingdoms/android/ui/QuestUi$QuestList;->update()V

    .line 177
    iget-object v0, p0, Lch/kingdoms/android/ui/QuestUi$1;->this$0:Lch/kingdoms/android/ui/QuestUi;

    invoke-static {v0}, Lch/kingdoms/android/ui/QuestUi;->access$4(Lch/kingdoms/android/ui/QuestUi;)[Lch/kingdoms/ndk/data/QuestDatas$Quest;

    move-result-object v0

    aget-object v0, v0, v9

    invoke-virtual {v0}, Lch/kingdoms/ndk/data/QuestDatas$Quest;->getQuestCnt()I

    move-result v0

    iget-object v2, p0, Lch/kingdoms/android/ui/QuestUi$1;->this$0:Lch/kingdoms/android/ui/QuestUi;

    invoke-static {v2}, Lch/kingdoms/android/ui/QuestUi;->access$4(Lch/kingdoms/android/ui/QuestUi;)[Lch/kingdoms/ndk/data/QuestDatas$Quest;

    move-result-object v2

    aget-object v2, v2, v9

    invoke-virtual {v2}, Lch/kingdoms/ndk/data/QuestDatas$Quest;->getQuestCompleteCnt()I

    move-result v2

    if-le v0, v2, :cond_0

    iget-object v0, p0, Lch/kingdoms/android/ui/QuestUi$1;->this$0:Lch/kingdoms/android/ui/QuestUi;

    invoke-static {v0}, Lch/kingdoms/android/ui/QuestUi;->access$4(Lch/kingdoms/android/ui/QuestUi;)[Lch/kingdoms/ndk/data/QuestDatas$Quest;

    move-result-object v0

    aget-object v0, v0, v9

    invoke-virtual {v0}, Lch/kingdoms/ndk/data/QuestDatas$Quest;->getQuestCompleteCnt()I

    move-result v8

    .line 178
    .local v8, "questCnt":I
    :goto_1
    iget-object v0, p0, Lch/kingdoms/android/ui/QuestUi$1;->this$0:Lch/kingdoms/android/ui/QuestUi;

    invoke-static {v0}, Lch/kingdoms/android/ui/QuestUi;->access$8(Lch/kingdoms/android/ui/QuestUi;)Lch/kingdoms/android/ui/QuestUi$QuestContents;

    move-result-object v0

    iget-object v2, p0, Lch/kingdoms/android/ui/QuestUi$1;->this$0:Lch/kingdoms/android/ui/QuestUi;

    invoke-static {v2}, Lch/kingdoms/android/ui/QuestUi;->access$4(Lch/kingdoms/android/ui/QuestUi;)[Lch/kingdoms/ndk/data/QuestDatas$Quest;

    move-result-object v2

    aget-object v2, v2, v9

    invoke-virtual {v2}, Lch/kingdoms/ndk/data/QuestDatas$Quest;->getHiddenType()B

    move-result v2

    if-ne v2, v1, :cond_1

    move v2, v1

    :goto_2
    iget-object v3, p0, Lch/kingdoms/android/ui/QuestUi$1;->this$0:Lch/kingdoms/android/ui/QuestUi;

    invoke-static {v3}, Lch/kingdoms/android/ui/QuestUi;->access$4(Lch/kingdoms/android/ui/QuestUi;)[Lch/kingdoms/ndk/data/QuestDatas$Quest;

    move-result-object v3

    aget-object v3, v3, v9

    invoke-virtual {v3}, Lch/kingdoms/ndk/data/QuestDatas$Quest;->getName()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lch/kingdoms/android/ui/QuestUi$1;->this$0:Lch/kingdoms/android/ui/QuestUi;

    invoke-static {v4}, Lch/kingdoms/android/ui/QuestUi;->access$4(Lch/kingdoms/android/ui/QuestUi;)[Lch/kingdoms/ndk/data/QuestDatas$Quest;

    move-result-object v4

    aget-object v4, v4, v9

    invoke-virtual {v4}, Lch/kingdoms/ndk/data/QuestDatas$Quest;->getExplain()Ljava/lang/String;

    move-result-object v4

    .line 179
    iget-object v5, p0, Lch/kingdoms/android/ui/QuestUi$1;->this$0:Lch/kingdoms/android/ui/QuestUi;

    invoke-static {v5}, Lch/kingdoms/android/ui/QuestUi;->access$4(Lch/kingdoms/android/ui/QuestUi;)[Lch/kingdoms/ndk/data/QuestDatas$Quest;

    move-result-object v5

    aget-object v5, v5, v9

    invoke-virtual {v5}, Lch/kingdoms/ndk/data/QuestDatas$Quest;->getClientName()Ljava/lang/String;

    move-result-object v5

    .line 180
    iget-object v6, p0, Lch/kingdoms/android/ui/QuestUi$1;->this$0:Lch/kingdoms/android/ui/QuestUi;

    invoke-static {v6}, Lch/kingdoms/android/ui/QuestUi;->access$4(Lch/kingdoms/android/ui/QuestUi;)[Lch/kingdoms/ndk/data/QuestDatas$Quest;

    move-result-object v6

    aget-object v6, v6, v9

    invoke-virtual {v6}, Lch/kingdoms/ndk/data/QuestDatas$Quest;->getQuestCompleteCnt()I

    move-result v6

    if-lez v6, :cond_2

    .line 181
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, " / "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lch/kingdoms/android/ui/QuestUi$1;->this$0:Lch/kingdoms/android/ui/QuestUi;

    invoke-static {v7}, Lch/kingdoms/android/ui/QuestUi;->access$4(Lch/kingdoms/android/ui/QuestUi;)[Lch/kingdoms/ndk/data/QuestDatas$Quest;

    move-result-object v7

    aget-object v7, v7, v9

    invoke-virtual {v7}, Lch/kingdoms/ndk/data/QuestDatas$Quest;->getQuestCompleteCnt()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    :goto_3
    iget-object v7, p0, Lch/kingdoms/android/ui/QuestUi$1;->this$0:Lch/kingdoms/android/ui/QuestUi;

    invoke-static {v7}, Lch/kingdoms/android/ui/QuestUi;->access$4(Lch/kingdoms/android/ui/QuestUi;)[Lch/kingdoms/ndk/data/QuestDatas$Quest;

    move-result-object v7

    aget-object v7, v7, v9

    invoke-virtual {v7}, Lch/kingdoms/ndk/data/QuestDatas$Quest;->getChkHidden()B

    move-result v7

    if-ne v7, v1, :cond_3

    move v7, v1

    .line 178
    :goto_4
    invoke-virtual/range {v0 .. v7}, Lch/kingdoms/android/ui/QuestUi$QuestContents;->setQuest(ZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 182
    iget-object v0, p0, Lch/kingdoms/android/ui/QuestUi$1;->this$0:Lch/kingdoms/android/ui/QuestUi;

    invoke-static {v0}, Lch/kingdoms/android/ui/QuestUi;->access$7(Lch/kingdoms/android/ui/QuestUi;)Lch/kingdoms/android/ui/QuestUi$QuestList;

    move-result-object v0

    invoke-virtual {v0, v9}, Lch/kingdoms/android/ui/QuestUi$QuestList;->select(I)V

    goto/16 :goto_0

    .line 177
    .end local v8    # "questCnt":I
    :cond_0
    iget-object v0, p0, Lch/kingdoms/android/ui/QuestUi$1;->this$0:Lch/kingdoms/android/ui/QuestUi;

    invoke-static {v0}, Lch/kingdoms/android/ui/QuestUi;->access$4(Lch/kingdoms/android/ui/QuestUi;)[Lch/kingdoms/ndk/data/QuestDatas$Quest;

    move-result-object v0

    aget-object v0, v0, v9

    invoke-virtual {v0}, Lch/kingdoms/ndk/data/QuestDatas$Quest;->getQuestCnt()I

    move-result v8

    goto/16 :goto_1

    .restart local v8    # "questCnt":I
    :cond_1
    move v2, v9

    .line 178
    goto/16 :goto_2

    .line 181
    :cond_2
    const-string v6, ""

    goto :goto_3

    :cond_3
    move v7, v9

    goto :goto_4

    .line 185
    .end local v8    # "questCnt":I
    :pswitch_1
    invoke-static {}, Lch/android/api/ui/ChViewGen;->closePopUpView()V

    goto/16 :goto_0

    .line 170
    :pswitch_data_0
    .packed-switch 0x2742
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
