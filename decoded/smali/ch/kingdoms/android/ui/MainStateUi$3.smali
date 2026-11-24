.class Lch/kingdoms/android/ui/MainStateUi$3;
.super Ljava/lang/Object;
.source "MainStateUi.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lch/kingdoms/android/ui/MainStateUi;->popUpSelectPortal(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$activity:Landroid/app/Activity;


# direct methods
.method constructor <init>(Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lch/kingdoms/android/ui/MainStateUi$3;->val$activity:Landroid/app/Activity;

    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 97
    invoke-static {}, Lch/android/api/ui/ChViewGen;->closePopUpView()V

    .line 98
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const/16 v1, 0x2742

    if-ne v0, v1, :cond_0

    .line 99
    invoke-static {}, Lch/kingdoms/ndk/NdkInputManager;->inputOk()V

    .line 100
    iget-object v0, p0, Lch/kingdoms/android/ui/MainStateUi$3;->val$activity:Landroid/app/Activity;

    const/16 v1, 0xae

    invoke-static {v1}, Lch/kingdoms/ndk/NdkTextLoader;->getGameMenuTxt(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lch/kingdoms/android/ui/MainStateUi$3$1;

    invoke-direct {v2, p0}, Lch/kingdoms/android/ui/MainStateUi$3$1;-><init>(Lch/kingdoms/android/ui/MainStateUi$3;)V

    invoke-static {v0, v1, v2}, Lch/android/api/ui/ChViewGen;->popUpOkView(Landroid/app/Activity;Ljava/lang/String;Landroid/view/View$OnClickListener;)Landroid/view/View;

    .line 111
    :goto_0
    return-void

    .line 109
    :cond_0
    invoke-static {}, Lch/kingdoms/ndk/NdkInputManager;->inputCancel()V

    goto :goto_0
.end method
