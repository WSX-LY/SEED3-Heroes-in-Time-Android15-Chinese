.class Lch/kingdoms/kor/KingdomsActivity$20$1;
.super Ljava/lang/Object;
.source "KingdomsActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lch/kingdoms/kor/KingdomsActivity$20;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private isClicked:Z

.field final synthetic this$1:Lch/kingdoms/kor/KingdomsActivity$20;


# direct methods
.method constructor <init>(Lch/kingdoms/kor/KingdomsActivity$20;)V
    .locals 1

    .prologue
    .line 1
    iput-object p1, p0, Lch/kingdoms/kor/KingdomsActivity$20$1;->this$1:Lch/kingdoms/kor/KingdomsActivity$20;

    .line 599
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 600
    const/4 v0, 0x0

    iput-boolean v0, p0, Lch/kingdoms/kor/KingdomsActivity$20$1;->isClicked:Z

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 604
    iget-boolean v1, p0, Lch/kingdoms/kor/KingdomsActivity$20$1;->isClicked:Z

    if-nez v1, :cond_0

    .line 605
    const/4 v1, 0x1

    iput-boolean v1, p0, Lch/kingdoms/kor/KingdomsActivity$20$1;->isClicked:Z

    .line 606
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    const/16 v2, 0x2742

    if-ne v1, v2, :cond_1

    .line 607
    invoke-static {}, Lch/android/api/ui/ChViewGen;->closePopUpView()V

    .line 608
    invoke-static {}, Lch/kingdoms/ndk/NdkInputManager;->inputOk()V

    .line 609
    invoke-static {}, Lch/kingdoms/ndk/NdkUiEventManager;->callNativeGetHeroInfo()Lch/kingdoms/ndk/data/HeroStatus;

    move-result-object v0

    .line 610
    .local v0, "hero":Lch/kingdoms/ndk/data/HeroStatus;
    invoke-virtual {v0}, Lch/kingdoms/ndk/data/HeroStatus;->getMoney()I

    move-result v1

    const/16 v2, 0x12c

    if-ge v1, v2, :cond_0

    .line 611
    iget-object v1, p0, Lch/kingdoms/kor/KingdomsActivity$20$1;->this$1:Lch/kingdoms/kor/KingdomsActivity$20;

    invoke-static {v1}, Lch/kingdoms/kor/KingdomsActivity$20;->access$0(Lch/kingdoms/kor/KingdomsActivity$20;)Lch/kingdoms/kor/KingdomsActivity;

    move-result-object v1

    const/16 v2, 0x51

    invoke-static {v2}, Lch/kingdoms/ndk/NdkTextLoader;->getGameMenuTxt(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lch/kingdoms/kor/KingdomsActivity$20$1$1;

    invoke-direct {v3, p0}, Lch/kingdoms/kor/KingdomsActivity$20$1$1;-><init>(Lch/kingdoms/kor/KingdomsActivity$20$1;)V

    invoke-static {v1, v2, v3}, Lch/android/api/ui/ChViewGen;->popUpOkView(Landroid/app/Activity;Ljava/lang/String;Landroid/view/View$OnClickListener;)Landroid/view/View;

    .line 629
    .end local v0    # "hero":Lch/kingdoms/ndk/data/HeroStatus;
    :cond_0
    :goto_0
    return-void

    .line 625
    :cond_1
    invoke-static {}, Lch/android/api/ui/ChViewGen;->closePopUpView()V

    .line 626
    invoke-static {}, Lch/kingdoms/ndk/NdkInputManager;->inputCancel()V

    goto :goto_0
.end method
