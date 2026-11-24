.class public Lcom/openfeint/internal/ui/Settings;
.super Lcom/openfeint/internal/ui/WebNav;
.source "Settings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/openfeint/internal/ui/Settings$SettingsActionHandler;
    }
.end annotation


# static fields
.field private static final SUBPAGE_KEY:Ljava/lang/String; = "com.openfeint.internal.ui.Settings.subPage"


# instance fields
.field mOldUserId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/openfeint/internal/ui/WebNav;-><init>()V

    return-void
.end method

.method public static open()V
    .locals 1

    .prologue
    .line 25
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/openfeint/internal/ui/Settings;->open(Ljava/lang/String;)V

    .line 26
    return-void
.end method

.method public static open(Ljava/lang/String;)V
    .locals 4
    .param p0, "subPage"    # Ljava/lang/String;

    .prologue
    .line 29
    invoke-static {}, Lcom/openfeint/internal/OpenFeintInternal;->getInstance()Lcom/openfeint/internal/OpenFeintInternal;

    move-result-object v2

    .line 30
    .local v2, "ofi":Lcom/openfeint/internal/OpenFeintInternal;
    invoke-virtual {v2}, Lcom/openfeint/internal/OpenFeintInternal;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 31
    .local v0, "currentActivity":Landroid/content/Context;
    new-instance v1, Landroid/content/Intent;

    const-class v3, Lcom/openfeint/internal/ui/Settings;

    invoke-direct {v1, v0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 32
    .local v1, "intent":Landroid/content/Intent;
    const/high16 v3, 0x10000000

    invoke-virtual {v1, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 33
    if-eqz p0, :cond_0

    .line 34
    const-string v3, "com.openfeint.internal.ui.Settings.subPage"

    invoke-virtual {v1, v3, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 36
    :cond_0
    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 37
    return-void
.end method


# virtual methods
.method protected createActionHandler(Lcom/openfeint/internal/ui/WebNav;)Lcom/openfeint/internal/ui/WebNav$ActionHandler;
    .locals 1
    .param p1, "webNav"    # Lcom/openfeint/internal/ui/WebNav;

    .prologue
    .line 74
    new-instance v0, Lcom/openfeint/internal/ui/Settings$SettingsActionHandler;

    invoke-direct {v0, p0, p1}, Lcom/openfeint/internal/ui/Settings$SettingsActionHandler;-><init>(Lcom/openfeint/internal/ui/Settings;Lcom/openfeint/internal/ui/WebNav;)V

    return-object v0
.end method

.method protected initialContentPath()Ljava/lang/String;
    .locals 5

    .prologue
    .line 59
    invoke-virtual {p0}, Lcom/openfeint/internal/ui/Settings;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 60
    .local v1, "intent":Landroid/content/Intent;
    if-eqz v1, :cond_0

    .line 61
    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 62
    .local v0, "extras":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 63
    const-string v3, "com.openfeint.internal.ui.Settings.subPage"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 64
    .local v2, "subPage":Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 65
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "settings/"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 69
    .end local v0    # "extras":Landroid/os/Bundle;
    .end local v2    # "subPage":Ljava/lang/String;
    :goto_0
    return-object v3

    :cond_0
    const-string v3, "settings/index"

    goto :goto_0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 79
    invoke-super {p0, p1, p2, p3}, Lcom/openfeint/internal/ui/WebNav;->onActivityResult(IILandroid/content/Intent;)V

    .line 82
    const/16 v0, 0x2719

    if-ne p1, v0, :cond_0

    if-eqz p3, :cond_0

    .line 83
    const-string v0, "of_profile_pic_changed"

    invoke-static {v0}, Lcom/openfeint/internal/RR;->string(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Lcom/openfeint/internal/OpenFeintInternal;->getRString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 85
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 5

    .prologue
    .line 40
    iget-object v0, p0, Lcom/openfeint/internal/ui/Settings;->mOldUserId:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 41
    invoke-static {}, Lcom/openfeint/api/OpenFeint;->getCurrentUser()Lcom/openfeint/api/resource/CurrentUser;

    move-result-object v0

    invoke-virtual {v0}, Lcom/openfeint/api/resource/CurrentUser;->resourceID()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/openfeint/internal/ui/Settings;->mOldUserId:Ljava/lang/String;

    .line 54
    :cond_0
    :goto_0
    invoke-super {p0}, Lcom/openfeint/internal/ui/WebNav;->onResume()V

    .line 55
    return-void

    .line 42
    :cond_1
    iget-object v0, p0, Lcom/openfeint/internal/ui/Settings;->mOldUserId:Ljava/lang/String;

    invoke-static {}, Lcom/openfeint/api/OpenFeint;->getCurrentUser()Lcom/openfeint/api/resource/CurrentUser;

    move-result-object v1

    invoke-virtual {v1}, Lcom/openfeint/api/resource/CurrentUser;->resourceID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 43
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 44
    const-string v1, "of_switched_accounts"

    invoke-static {v1}, Lcom/openfeint/internal/RR;->string(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Lcom/openfeint/internal/OpenFeintInternal;->getRString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 45
    const-string v1, "of_now_logged_in_as_format"

    invoke-static {v1}, Lcom/openfeint/internal/RR;->string(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Lcom/openfeint/internal/OpenFeintInternal;->getRString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {}, Lcom/openfeint/api/OpenFeint;->getCurrentUser()Lcom/openfeint/api/resource/CurrentUser;

    move-result-object v4

    iget-object v4, v4, Lcom/openfeint/api/resource/CurrentUser;->name:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 46
    const-string v1, "of_ok"

    invoke-static {v1}, Lcom/openfeint/internal/RR;->string(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Lcom/openfeint/internal/OpenFeintInternal;->getRString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/openfeint/internal/ui/Settings$1;

    invoke-direct {v2, p0}, Lcom/openfeint/internal/ui/Settings$1;-><init>(Lcom/openfeint/internal/ui/Settings;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 51
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0
.end method
