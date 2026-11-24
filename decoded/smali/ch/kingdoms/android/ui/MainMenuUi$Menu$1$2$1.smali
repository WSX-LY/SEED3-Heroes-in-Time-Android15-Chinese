.class Lch/kingdoms/android/ui/MainMenuUi$Menu$1$2$1;
.super Ljava/lang/Object;
.source "MainMenuUi.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lch/kingdoms/android/ui/MainMenuUi$Menu$1$2;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$3:Lch/kingdoms/android/ui/MainMenuUi$Menu$1$2;

.field private final synthetic val$index:I


# direct methods
.method constructor <init>(Lch/kingdoms/android/ui/MainMenuUi$Menu$1$2;I)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lch/kingdoms/android/ui/MainMenuUi$Menu$1$2$1;->this$3:Lch/kingdoms/android/ui/MainMenuUi$Menu$1$2;

    iput p2, p0, Lch/kingdoms/android/ui/MainMenuUi$Menu$1$2$1;->val$index:I

    .line 395
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 399
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const/16 v1, 0x2742

    if-ne v0, v1, :cond_0

    .line 400
    invoke-static {}, Lch/android/api/ui/ChViewGen;->closePopUpView()V

    .line 401
    iget v0, p0, Lch/kingdoms/android/ui/MainMenuUi$Menu$1$2$1;->val$index:I

    invoke-static {v0}, Lch/kingdoms/ndk/NdkUiEventManager;->startNewGame(I)V

    .line 402
    invoke-static {}, Lch/android/api/ui/ChViewGen;->closeAllPopUpViews()V

    .line 406
    :goto_0
    return-void

    .line 404
    :cond_0
    invoke-static {}, Lch/android/api/ui/ChViewGen;->closePopUpView()V

    goto :goto_0
.end method
