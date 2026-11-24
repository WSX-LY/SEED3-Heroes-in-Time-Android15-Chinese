.class Lch/kingdoms/android/ui/MainStateUi$9;
.super Ljava/lang/Object;
.source "MainStateUi.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lch/kingdoms/android/ui/MainStateUi;->popUpColosseum(Landroid/app/Activity;)V
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
    iput-object p1, p0, Lch/kingdoms/android/ui/MainStateUi$9;->val$activity:Landroid/app/Activity;

    .line 242
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 243
    const/4 v0, 0x0

    iput-boolean v0, p0, Lch/kingdoms/android/ui/MainStateUi$9;->isClick:Z

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 247
    iget-boolean v0, p0, Lch/kingdoms/android/ui/MainStateUi$9;->isClick:Z

    if-nez v0, :cond_0

    .line 248
    const/4 v0, 0x1

    iput-boolean v0, p0, Lch/kingdoms/android/ui/MainStateUi$9;->isClick:Z

    .line 249
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const/16 v1, 0x2742

    if-ne v0, v1, :cond_1

    .line 250
    invoke-static {}, Lch/android/api/ui/ChViewGen;->closePopUpView()V

    .line 251
    iget-object v0, p0, Lch/kingdoms/android/ui/MainStateUi$9;->val$activity:Landroid/app/Activity;

    const/16 v1, 0xac

    invoke-static {v1}, Lch/kingdoms/ndk/NdkTextLoader;->getGameMenuTxt(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lch/kingdoms/android/ui/MainStateUi$9$1;

    invoke-direct {v2, p0}, Lch/kingdoms/android/ui/MainStateUi$9$1;-><init>(Lch/kingdoms/android/ui/MainStateUi$9;)V

    invoke-static {v0, v1, v2}, Lch/android/api/ui/ChViewGen;->popUpOkView(Landroid/app/Activity;Ljava/lang/String;Landroid/view/View$OnClickListener;)Landroid/view/View;

    .line 263
    :cond_0
    :goto_0
    return-void

    .line 260
    :cond_1
    invoke-static {}, Lch/kingdoms/ndk/NdkInputManager;->inputCancel()V

    goto :goto_0
.end method
