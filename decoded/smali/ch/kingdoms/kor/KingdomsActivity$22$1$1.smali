.class Lch/kingdoms/kor/KingdomsActivity$22$1$1;
.super Ljava/lang/Object;
.source "KingdomsActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lch/kingdoms/kor/KingdomsActivity$22$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private isClicked:Z

.field final synthetic this$2:Lch/kingdoms/kor/KingdomsActivity$22$1;


# direct methods
.method constructor <init>(Lch/kingdoms/kor/KingdomsActivity$22$1;)V
    .locals 1

    .prologue
    .line 1
    iput-object p1, p0, Lch/kingdoms/kor/KingdomsActivity$22$1$1;->this$2:Lch/kingdoms/kor/KingdomsActivity$22$1;

    .line 690
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 691
    const/4 v0, 0x0

    iput-boolean v0, p0, Lch/kingdoms/kor/KingdomsActivity$22$1$1;->isClicked:Z

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v3, 0x1

    .line 696
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 749
    :cond_0
    :goto_0
    return-void

    .line 698
    :pswitch_0
    const/16 v2, 0x108

    invoke-static {v2}, Lch/kingdoms/ndk/NdkUiEventManager;->isItemExist(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 700
    iget-boolean v2, p0, Lch/kingdoms/kor/KingdomsActivity$22$1$1;->isClicked:Z

    if-nez v2, :cond_0

    .line 701
    iput-boolean v3, p0, Lch/kingdoms/kor/KingdomsActivity$22$1$1;->isClicked:Z

    .line 702
    invoke-static {v3}, Lch/kingdoms/ndk/NdkUiEventManager;->reviveHero(Z)V

    goto :goto_0

    .line 705
    :cond_1
    iget-object v2, p0, Lch/kingdoms/kor/KingdomsActivity$22$1$1;->this$2:Lch/kingdoms/kor/KingdomsActivity$22$1;

    invoke-static {v2}, Lch/kingdoms/kor/KingdomsActivity$22$1;->access$0(Lch/kingdoms/kor/KingdomsActivity$22$1;)Lch/kingdoms/kor/KingdomsActivity$22;

    move-result-object v2

    invoke-static {v2}, Lch/kingdoms/kor/KingdomsActivity$22;->access$0(Lch/kingdoms/kor/KingdomsActivity$22;)Lch/kingdoms/kor/KingdomsActivity;

    move-result-object v2

    const/16 v3, 0x9b

    invoke-static {v3}, Lch/kingdoms/ndk/NdkTextLoader;->getGameMenuTxt(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lch/android/api/ui/ChViewGen;->popUpOkView(Landroid/app/Activity;Ljava/lang/String;)Landroid/view/View;

    goto :goto_0

    .line 712
    :pswitch_1
    invoke-static {}, Lch/kingdoms/ndk/NdkUiEventManager;->callNativeGetHeroInfo()Lch/kingdoms/ndk/data/HeroStatus;

    move-result-object v1

    .line 713
    .local v1, "hero":Lch/kingdoms/ndk/data/HeroStatus;
    invoke-virtual {v1}, Lch/kingdoms/ndk/data/HeroStatus;->getCashPoints()I

    move-result v2

    const/16 v3, 0x64

    if-lt v2, v3, :cond_2

    .line 714
    iget-object v2, p0, Lch/kingdoms/kor/KingdomsActivity$22$1$1;->this$2:Lch/kingdoms/kor/KingdomsActivity$22$1;

    invoke-static {v2}, Lch/kingdoms/kor/KingdomsActivity$22$1;->access$0(Lch/kingdoms/kor/KingdomsActivity$22$1;)Lch/kingdoms/kor/KingdomsActivity$22;

    move-result-object v2

    invoke-static {v2}, Lch/kingdoms/kor/KingdomsActivity$22;->access$0(Lch/kingdoms/kor/KingdomsActivity$22;)Lch/kingdoms/kor/KingdomsActivity;

    move-result-object v2

    const/16 v3, 0x5e

    invoke-static {v3}, Lch/kingdoms/ndk/NdkTextLoader;->getGameMenuTxt(I)Ljava/lang/String;

    move-result-object v3

    .line 715
    new-instance v4, Lch/kingdoms/kor/KingdomsActivity$22$1$1$1;

    invoke-direct {v4, p0}, Lch/kingdoms/kor/KingdomsActivity$22$1$1$1;-><init>(Lch/kingdoms/kor/KingdomsActivity$22$1$1;)V

    .line 714
    invoke-static {v2, v3, v4}, Lch/android/api/ui/ChViewGen;->popUpConfirmYesNoView(Landroid/app/Activity;Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;)Landroid/view/View;

    goto :goto_0

    .line 731
    :cond_2
    iget-object v2, p0, Lch/kingdoms/kor/KingdomsActivity$22$1$1;->this$2:Lch/kingdoms/kor/KingdomsActivity$22$1;

    invoke-static {v2}, Lch/kingdoms/kor/KingdomsActivity$22$1;->access$0(Lch/kingdoms/kor/KingdomsActivity$22$1;)Lch/kingdoms/kor/KingdomsActivity$22;

    move-result-object v2

    invoke-static {v2}, Lch/kingdoms/kor/KingdomsActivity$22;->access$0(Lch/kingdoms/kor/KingdomsActivity$22;)Lch/kingdoms/kor/KingdomsActivity;

    move-result-object v2

    const/16 v3, 0x9c

    invoke-static {v3}, Lch/kingdoms/ndk/NdkTextLoader;->getGameMenuTxt(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lch/android/api/ui/ChViewGen;->popUpOkView(Landroid/app/Activity;Ljava/lang/String;)Landroid/view/View;

    goto :goto_0

    .line 735
    .end local v1    # "hero":Lch/kingdoms/ndk/data/HeroStatus;
    :pswitch_2
    iget-boolean v2, p0, Lch/kingdoms/kor/KingdomsActivity$22$1$1;->isClicked:Z

    if-nez v2, :cond_0

    .line 736
    iput-boolean v3, p0, Lch/kingdoms/kor/KingdomsActivity$22$1$1;->isClicked:Z

    .line 737
    invoke-static {}, Lch/android/api/ui/ChViewGen;->closeAllPopUpViews()V

    .line 738
    invoke-static {}, Lch/kingdoms/ndk/NdkInputManager;->inputCancel()V

    .line 740
    const-wide/16 v2, 0x64

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 745
    :goto_1
    invoke-static {}, Lch/kingdoms/ndk/NdkUiEventManager;->postUnSetGame()V

    goto :goto_0

    .line 741
    :catch_0
    move-exception v0

    .line 743
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_1

    .line 696
    :pswitch_data_0
    .packed-switch 0x65
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
