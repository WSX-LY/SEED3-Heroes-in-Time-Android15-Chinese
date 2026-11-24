.class Lch/kingdoms/android/ui/MainMenuUi$Menu$1$3;
.super Ljava/lang/Object;
.source "MainMenuUi.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lch/kingdoms/android/ui/MainMenuUi$Menu$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lch/kingdoms/android/ui/MainMenuUi$Menu$1;


# direct methods
.method constructor <init>(Lch/kingdoms/android/ui/MainMenuUi$Menu$1;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lch/kingdoms/android/ui/MainMenuUi$Menu$1$3;->this$2:Lch/kingdoms/android/ui/MainMenuUi$Menu$1;

    .line 419
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 423
    iget-object v1, p0, Lch/kingdoms/android/ui/MainMenuUi$Menu$1$3;->this$2:Lch/kingdoms/android/ui/MainMenuUi$Menu$1;

    invoke-static {v1}, Lch/kingdoms/android/ui/MainMenuUi$Menu$1;->access$0(Lch/kingdoms/android/ui/MainMenuUi$Menu$1;)Lch/kingdoms/android/ui/MainMenuUi$Menu;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lch/kingdoms/android/ui/MainMenuUi$Menu;->access$1(Lch/kingdoms/android/ui/MainMenuUi$Menu;Z)V

    .line 424
    invoke-static {}, Lch/android/api/ui/ChViewGen;->closePopUpView()V

    .line 425
    invoke-static {}, Lch/kingdoms/android/db/DBAdapter;->getInstance()Lch/kingdoms/android/db/DBAdapter;

    move-result-object v0

    .line 426
    .local v0, "dba":Lch/kingdoms/android/db/DBAdapter;
    invoke-virtual {v0}, Lch/kingdoms/android/db/DBAdapter;->isSoundOn()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 427
    invoke-static {}, Lch/kingdoms/ndk/NdkSoundManager;->stratSound()V

    .line 429
    :cond_0
    return-void
.end method
