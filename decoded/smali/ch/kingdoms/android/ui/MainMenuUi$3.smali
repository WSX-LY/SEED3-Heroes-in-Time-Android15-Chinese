.class Lch/kingdoms/android/ui/MainMenuUi$3;
.super Ljava/lang/Object;
.source "MainMenuUi.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lch/kingdoms/android/ui/MainMenuUi;->settingMain()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lch/kingdoms/android/ui/MainMenuUi;


# direct methods
.method constructor <init>(Lch/kingdoms/android/ui/MainMenuUi;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lch/kingdoms/android/ui/MainMenuUi$3;->this$0:Lch/kingdoms/android/ui/MainMenuUi;

    .line 203
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 207
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 208
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "http://m.facebook.com/pages/CH-GAMES/192733854122772"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 209
    iget-object v1, p0, Lch/kingdoms/android/ui/MainMenuUi$3;->this$0:Lch/kingdoms/android/ui/MainMenuUi;

    invoke-static {v1}, Lch/kingdoms/android/ui/MainMenuUi;->access$3(Lch/kingdoms/android/ui/MainMenuUi;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 210
    return-void
.end method
