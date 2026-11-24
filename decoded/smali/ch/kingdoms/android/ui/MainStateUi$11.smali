.class Lch/kingdoms/android/ui/MainStateUi$11;
.super Ljava/lang/Object;
.source "MainStateUi.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lch/kingdoms/android/ui/MainStateUi;->popUpDungeon(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private isClick:Z

.field private final synthetic val$activity:Landroid/app/Activity;


# direct methods
.method constructor <init>(Landroid/app/Activity;)V
    .locals 1

    .prologue
    .line 1
    iput-object p1, p0, Lch/kingdoms/android/ui/MainStateUi$11;->val$activity:Landroid/app/Activity;

    .line 302
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 303
    const/4 v0, 0x0

    iput-boolean v0, p0, Lch/kingdoms/android/ui/MainStateUi$11;->isClick:Z

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v3, 0x1

    .line 307
    iget-boolean v1, p0, Lch/kingdoms/android/ui/MainStateUi$11;->isClick:Z

    if-nez v1, :cond_0

    .line 308
    iput-boolean v3, p0, Lch/kingdoms/android/ui/MainStateUi$11;->isClick:Z

    .line 309
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    const/16 v2, 0x2742

    if-ne v1, v2, :cond_2

    .line 310
    invoke-static {}, Lch/android/api/ui/ChViewGen;->closePopUpView()V

    .line 311
    invoke-static {}, Lch/kingdoms/ndk/NdkUiEventManager;->callNativeGetHeroInfo()Lch/kingdoms/ndk/data/HeroStatus;

    move-result-object v0

    .line 312
    .local v0, "hero":Lch/kingdoms/ndk/data/HeroStatus;
    invoke-virtual {v0}, Lch/kingdoms/ndk/data/HeroStatus;->getCashPoints()I

    move-result v1

    const/16 v2, 0xbe

    if-lt v1, v2, :cond_1

    .line 313
    invoke-virtual {v0}, Lch/kingdoms/ndk/data/HeroStatus;->getCashPoints()I

    move-result v1

    add-int/lit16 v1, v1, -0xbe

    invoke-virtual {v0, v1}, Lch/kingdoms/ndk/data/HeroStatus;->setCashPoins(I)V

    .line 314
    invoke-static {v0}, Lch/kingdoms/ndk/NdkUiEventManager;->callNativeCalHeroInfo(Lch/kingdoms/ndk/data/HeroStatus;)V

    .line 315
    invoke-static {}, Lch/kingdoms/ndk/NdkUiEventManager;->saveGame()Z

    .line 316
    iget-object v1, p0, Lch/kingdoms/android/ui/MainStateUi$11;->val$activity:Landroid/app/Activity;

    const/16 v2, 0xac

    invoke-static {v2}, Lch/kingdoms/ndk/NdkTextLoader;->getGameMenuTxt(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lch/kingdoms/android/ui/MainStateUi$11$1;

    invoke-direct {v3, p0}, Lch/kingdoms/android/ui/MainStateUi$11$1;-><init>(Lch/kingdoms/android/ui/MainStateUi$11;)V

    invoke-static {v1, v2, v3}, Lch/android/api/ui/ChViewGen;->popUpOkView(Landroid/app/Activity;Ljava/lang/String;Landroid/view/View$OnClickListener;)Landroid/view/View;

    .line 336
    .end local v0    # "hero":Lch/kingdoms/ndk/data/HeroStatus;
    :cond_0
    :goto_0
    return-void

    .line 329
    .restart local v0    # "hero":Lch/kingdoms/ndk/data/HeroStatus;
    :cond_1
    invoke-static {}, Lch/kingdoms/ndk/NdkInputManager;->inputCancel()V

    .line 330
    iget-object v1, p0, Lch/kingdoms/android/ui/MainStateUi$11;->val$activity:Landroid/app/Activity;

    const/16 v2, 0x9c

    invoke-static {v2}, Lch/kingdoms/ndk/NdkTextLoader;->getGameMenuTxt(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 333
    .end local v0    # "hero":Lch/kingdoms/ndk/data/HeroStatus;
    :cond_2
    invoke-static {}, Lch/kingdoms/ndk/NdkInputManager;->inputCancel()V

    goto :goto_0
.end method
