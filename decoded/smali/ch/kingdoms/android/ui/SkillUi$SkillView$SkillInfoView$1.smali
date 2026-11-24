.class Lch/kingdoms/android/ui/SkillUi$SkillView$SkillInfoView$1;
.super Ljava/lang/Object;
.source "SkillUi.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lch/kingdoms/android/ui/SkillUi$SkillView$SkillInfoView;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lch/kingdoms/android/ui/SkillUi$SkillView$SkillInfoView;


# direct methods
.method constructor <init>(Lch/kingdoms/android/ui/SkillUi$SkillView$SkillInfoView;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lch/kingdoms/android/ui/SkillUi$SkillView$SkillInfoView$1;->this$2:Lch/kingdoms/android/ui/SkillUi$SkillView$SkillInfoView;

    .line 642
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 646
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 675
    :goto_0
    return-void

    .line 648
    :pswitch_0
    invoke-static {}, Lch/kingdoms/ndk/NdkUiEventManager;->callNativeGetHeroInfo()Lch/kingdoms/ndk/data/HeroStatus;

    move-result-object v0

    .line 649
    .local v0, "hero":Lch/kingdoms/ndk/data/HeroStatus;
    iget-object v2, p0, Lch/kingdoms/android/ui/SkillUi$SkillView$SkillInfoView$1;->this$2:Lch/kingdoms/android/ui/SkillUi$SkillView$SkillInfoView;

    invoke-static {v2}, Lch/kingdoms/android/ui/SkillUi$SkillView$SkillInfoView;->access$1(Lch/kingdoms/android/ui/SkillUi$SkillView$SkillInfoView;)Lch/kingdoms/android/ui/SkillUi$SkillView;

    move-result-object v2

    invoke-static {v2}, Lch/kingdoms/android/ui/SkillUi$SkillView;->access$5(Lch/kingdoms/android/ui/SkillUi$SkillView;)Lch/kingdoms/android/ui/SkillUi;

    move-result-object v2

    invoke-static {v2}, Lch/kingdoms/android/ui/SkillUi;->access$5(Lch/kingdoms/android/ui/SkillUi;)Lch/kingdoms/android/ui/SkillUi$TabBtnView;

    move-result-object v2

    invoke-virtual {v2}, Lch/kingdoms/android/ui/SkillUi$TabBtnView;->isActiveSkill()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 650
    invoke-virtual {v0}, Lch/kingdoms/ndk/data/HeroStatus;->getActiveSkillAddPoint()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0}, Lch/kingdoms/ndk/data/HeroStatus;->getBuffSkillAddPoint()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Lch/kingdoms/ndk/data/HeroStatus;->setSkillAddPoints(II)V

    .line 651
    invoke-static {v0}, Lch/kingdoms/ndk/NdkUiEventManager;->callNativeCalHeroInfo(Lch/kingdoms/ndk/data/HeroStatus;)V

    .line 652
    invoke-static {}, Lch/kingdoms/ndk/NdkUiEventManager;->callNativeGetSkills()Lch/kingdoms/ndk/data/HeroSkill;

    move-result-object v1

    .line 653
    .local v1, "heroSkill":Lch/kingdoms/ndk/data/HeroSkill;
    iget-object v2, v1, Lch/kingdoms/ndk/data/HeroSkill;->actSkillLvs:[B

    iget-object v3, p0, Lch/kingdoms/android/ui/SkillUi$SkillView$SkillInfoView$1;->this$2:Lch/kingdoms/android/ui/SkillUi$SkillView$SkillInfoView;

    invoke-static {v3}, Lch/kingdoms/android/ui/SkillUi$SkillView$SkillInfoView;->access$0(Lch/kingdoms/android/ui/SkillUi$SkillView$SkillInfoView;)I

    move-result v3

    rem-int/lit8 v3, v3, 0x6

    aget-byte v4, v2, v3

    add-int/lit8 v4, v4, 0x1

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    .line 654
    invoke-static {v1}, Lch/kingdoms/ndk/NdkUiEventManager;->callNativeSetSkills(Lch/kingdoms/ndk/data/HeroSkill;)V

    .line 655
    iget-object v2, p0, Lch/kingdoms/android/ui/SkillUi$SkillView$SkillInfoView$1;->this$2:Lch/kingdoms/android/ui/SkillUi$SkillView$SkillInfoView;

    invoke-static {v2}, Lch/kingdoms/android/ui/SkillUi$SkillView$SkillInfoView;->access$1(Lch/kingdoms/android/ui/SkillUi$SkillView$SkillInfoView;)Lch/kingdoms/android/ui/SkillUi$SkillView;

    move-result-object v2

    invoke-static {v2}, Lch/kingdoms/android/ui/SkillUi$SkillView;->access$5(Lch/kingdoms/android/ui/SkillUi$SkillView;)Lch/kingdoms/android/ui/SkillUi;

    move-result-object v2

    invoke-static {v2}, Lch/kingdoms/android/ui/SkillUi;->access$5(Lch/kingdoms/android/ui/SkillUi;)Lch/kingdoms/android/ui/SkillUi$TabBtnView;

    move-result-object v2

    invoke-virtual {v2}, Lch/kingdoms/android/ui/SkillUi$TabBtnView;->comsumeActiveSkillAddPoints()Z

    .line 656
    iget-object v2, p0, Lch/kingdoms/android/ui/SkillUi$SkillView$SkillInfoView$1;->this$2:Lch/kingdoms/android/ui/SkillUi$SkillView$SkillInfoView;

    invoke-static {v2}, Lch/kingdoms/android/ui/SkillUi$SkillView$SkillInfoView;->access$1(Lch/kingdoms/android/ui/SkillUi$SkillView$SkillInfoView;)Lch/kingdoms/android/ui/SkillUi$SkillView;

    move-result-object v2

    invoke-static {v2}, Lch/kingdoms/android/ui/SkillUi$SkillView;->access$4(Lch/kingdoms/android/ui/SkillUi$SkillView;)Lch/kingdoms/android/ui/SkillUi$SkillView$SkillListView;

    move-result-object v2

    invoke-virtual {v2}, Lch/kingdoms/android/ui/SkillUi$SkillView$SkillListView;->update()V

    .line 657
    iget-object v2, p0, Lch/kingdoms/android/ui/SkillUi$SkillView$SkillInfoView$1;->this$2:Lch/kingdoms/android/ui/SkillUi$SkillView$SkillInfoView;

    invoke-virtual {v2}, Lch/kingdoms/android/ui/SkillUi$SkillView$SkillInfoView;->clear()V

    .line 669
    :goto_1
    invoke-static {}, Lch/android/api/ui/ChViewGen;->closePopUpView()V

    goto :goto_0

    .line 660
    .end local v1    # "heroSkill":Lch/kingdoms/ndk/data/HeroSkill;
    :cond_0
    invoke-virtual {v0}, Lch/kingdoms/ndk/data/HeroStatus;->getActiveSkillAddPoint()I

    move-result v2

    invoke-virtual {v0}, Lch/kingdoms/ndk/data/HeroStatus;->getBuffSkillAddPoint()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v0, v2, v3}, Lch/kingdoms/ndk/data/HeroStatus;->setSkillAddPoints(II)V

    .line 661
    invoke-static {v0}, Lch/kingdoms/ndk/NdkUiEventManager;->callNativeCalHeroInfo(Lch/kingdoms/ndk/data/HeroStatus;)V

    .line 662
    invoke-static {}, Lch/kingdoms/ndk/NdkUiEventManager;->callNativeGetSkills()Lch/kingdoms/ndk/data/HeroSkill;

    move-result-object v1

    .line 663
    .restart local v1    # "heroSkill":Lch/kingdoms/ndk/data/HeroSkill;
    iget-object v2, v1, Lch/kingdoms/ndk/data/HeroSkill;->bufSkillLvs:[B

    iget-object v3, p0, Lch/kingdoms/android/ui/SkillUi$SkillView$SkillInfoView$1;->this$2:Lch/kingdoms/android/ui/SkillUi$SkillView$SkillInfoView;

    invoke-static {v3}, Lch/kingdoms/android/ui/SkillUi$SkillView$SkillInfoView;->access$0(Lch/kingdoms/android/ui/SkillUi$SkillView$SkillInfoView;)I

    move-result v3

    rem-int/lit8 v3, v3, 0x6

    aget-byte v4, v2, v3

    add-int/lit8 v4, v4, 0x1

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    .line 664
    invoke-static {v1}, Lch/kingdoms/ndk/NdkUiEventManager;->callNativeSetSkills(Lch/kingdoms/ndk/data/HeroSkill;)V

    .line 665
    iget-object v2, p0, Lch/kingdoms/android/ui/SkillUi$SkillView$SkillInfoView$1;->this$2:Lch/kingdoms/android/ui/SkillUi$SkillView$SkillInfoView;

    invoke-static {v2}, Lch/kingdoms/android/ui/SkillUi$SkillView$SkillInfoView;->access$1(Lch/kingdoms/android/ui/SkillUi$SkillView$SkillInfoView;)Lch/kingdoms/android/ui/SkillUi$SkillView;

    move-result-object v2

    invoke-static {v2}, Lch/kingdoms/android/ui/SkillUi$SkillView;->access$5(Lch/kingdoms/android/ui/SkillUi$SkillView;)Lch/kingdoms/android/ui/SkillUi;

    move-result-object v2

    invoke-static {v2}, Lch/kingdoms/android/ui/SkillUi;->access$5(Lch/kingdoms/android/ui/SkillUi;)Lch/kingdoms/android/ui/SkillUi$TabBtnView;

    move-result-object v2

    invoke-virtual {v2}, Lch/kingdoms/android/ui/SkillUi$TabBtnView;->comsumeBuffSkillAddPoints()Z

    .line 666
    iget-object v2, p0, Lch/kingdoms/android/ui/SkillUi$SkillView$SkillInfoView$1;->this$2:Lch/kingdoms/android/ui/SkillUi$SkillView$SkillInfoView;

    invoke-static {v2}, Lch/kingdoms/android/ui/SkillUi$SkillView$SkillInfoView;->access$1(Lch/kingdoms/android/ui/SkillUi$SkillView$SkillInfoView;)Lch/kingdoms/android/ui/SkillUi$SkillView;

    move-result-object v2

    invoke-static {v2}, Lch/kingdoms/android/ui/SkillUi$SkillView;->access$4(Lch/kingdoms/android/ui/SkillUi$SkillView;)Lch/kingdoms/android/ui/SkillUi$SkillView$SkillListView;

    move-result-object v2

    invoke-virtual {v2}, Lch/kingdoms/android/ui/SkillUi$SkillView$SkillListView;->update()V

    .line 667
    iget-object v2, p0, Lch/kingdoms/android/ui/SkillUi$SkillView$SkillInfoView$1;->this$2:Lch/kingdoms/android/ui/SkillUi$SkillView$SkillInfoView;

    invoke-virtual {v2}, Lch/kingdoms/android/ui/SkillUi$SkillView$SkillInfoView;->clear()V

    goto :goto_1

    .line 672
    .end local v0    # "hero":Lch/kingdoms/ndk/data/HeroStatus;
    .end local v1    # "heroSkill":Lch/kingdoms/ndk/data/HeroSkill;
    :pswitch_1
    invoke-static {}, Lch/android/api/ui/ChViewGen;->closePopUpView()V

    goto/16 :goto_0

    .line 646
    :pswitch_data_0
    .packed-switch 0x2742
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
