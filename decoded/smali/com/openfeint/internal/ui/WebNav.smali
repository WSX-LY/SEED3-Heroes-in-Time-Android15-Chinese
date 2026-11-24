.class public Lcom/openfeint/internal/ui/WebNav;
.super Lcom/openfeint/internal/ui/NestedWindow;
.source "WebNav.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/openfeint/internal/ui/WebNav$ActionHandler;,
        Lcom/openfeint/internal/ui/WebNav$WebNavChromeClient;,
        Lcom/openfeint/internal/ui/WebNav$WebNavClient;
    }
.end annotation


# static fields
.field protected static final REQUEST_CODE_NATIVE_BROWSER:I = 0x63dd

.field protected static final TAG:Ljava/lang/String; = "WebUI"


# instance fields
.field mActionHandler:Lcom/openfeint/internal/ui/WebNav$ActionHandler;

.field mIsFrameworkLoaded:Z

.field mIsPageLoaded:Z

.field mLaunchLoadingView:Landroid/app/Dialog;

.field private mNativeBrowserParameters:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected mPreloadConsoleOutput:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mShouldRefreshOnResume:Z

.field private mWebViewClient:Lcom/openfeint/internal/ui/WebNav$WebNavClient;

.field protected pageStackCount:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 52
    invoke-direct {p0}, Lcom/openfeint/internal/ui/NestedWindow;-><init>()V

    .line 81
    iput-boolean v0, p0, Lcom/openfeint/internal/ui/WebNav;->mIsPageLoaded:Z

    .line 82
    iput-boolean v0, p0, Lcom/openfeint/internal/ui/WebNav;->mIsFrameworkLoaded:Z

    .line 87
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/openfeint/internal/ui/WebNav;->mShouldRefreshOnResume:Z

    .line 89
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/openfeint/internal/ui/WebNav;->mPreloadConsoleOutput:Ljava/util/ArrayList;

    .line 940
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/openfeint/internal/ui/WebNav;->mNativeBrowserParameters:Ljava/util/Map;

    .line 52
    return-void
.end method

.method static synthetic access$0(Lcom/openfeint/internal/ui/WebNav;)V
    .locals 0

    .prologue
    .line 237
    invoke-direct {p0}, Lcom/openfeint/internal/ui/WebNav;->dismissDialog()V

    return-void
.end method

.method static synthetic access$1(Lcom/openfeint/internal/ui/WebNav;)V
    .locals 0

    .prologue
    .line 183
    invoke-direct {p0}, Lcom/openfeint/internal/ui/WebNav;->closeForDiskError()V

    return-void
.end method

.method static synthetic access$2(Lcom/openfeint/internal/ui/WebNav;)V
    .locals 0

    .prologue
    .line 242
    invoke-direct {p0}, Lcom/openfeint/internal/ui/WebNav;->showDialog()V

    return-void
.end method

.method static synthetic access$3(Lcom/openfeint/internal/ui/WebNav;Ljava/util/Map;)V
    .locals 0

    .prologue
    .line 940
    iput-object p1, p0, Lcom/openfeint/internal/ui/WebNav;->mNativeBrowserParameters:Ljava/util/Map;

    return-void
.end method

.method static synthetic access$4(Lcom/openfeint/internal/ui/WebNav;)Ljava/util/Map;
    .locals 1

    .prologue
    .line 940
    iget-object v0, p0, Lcom/openfeint/internal/ui/WebNav;->mNativeBrowserParameters:Ljava/util/Map;

    return-object v0
.end method

.method private closeForDiskError()V
    .locals 1

    .prologue
    .line 186
    new-instance v0, Lcom/openfeint/internal/ui/WebNav$4;

    invoke-direct {v0, p0}, Lcom/openfeint/internal/ui/WebNav$4;-><init>(Lcom/openfeint/internal/ui/WebNav;)V

    invoke-virtual {p0, v0}, Lcom/openfeint/internal/ui/WebNav;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 202
    return-void
.end method

.method private dismissDialog()V
    .locals 1

    .prologue
    .line 238
    iget-object v0, p0, Lcom/openfeint/internal/ui/WebNav;->mLaunchLoadingView:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 239
    iget-object v0, p0, Lcom/openfeint/internal/ui/WebNav;->mLaunchLoadingView:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 240
    :cond_0
    return-void
.end method

.method private static final jsQuotedStringLiteral(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "unquotedString"    # Ljava/lang/String;

    .prologue
    .line 205
    if-nez p0, :cond_0

    const-string v0, "\'\'"

    .line 206
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "\\"

    const-string v2, "\\\\"

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "\'"

    const-string v3, "\\\'"

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private showDialog()V
    .locals 1

    .prologue
    .line 243
    iget-object v0, p0, Lcom/openfeint/internal/ui/WebNav;->mLaunchLoadingView:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 244
    iget-object v0, p0, Lcom/openfeint/internal/ui/WebNav;->mLaunchLoadingView:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 245
    :cond_0
    return-void
.end method


# virtual methods
.method protected createActionHandler(Lcom/openfeint/internal/ui/WebNav;)Lcom/openfeint/internal/ui/WebNav$ActionHandler;
    .locals 1
    .param p1, "webNav"    # Lcom/openfeint/internal/ui/WebNav;

    .prologue
    .line 293
    new-instance v0, Lcom/openfeint/internal/ui/WebNav$ActionHandler;

    invoke-direct {v0, p0, p1}, Lcom/openfeint/internal/ui/WebNav$ActionHandler;-><init>(Lcom/openfeint/internal/ui/WebNav;Lcom/openfeint/internal/ui/WebNav;)V

    return-object v0
.end method

.method protected createWebNavClient(Lcom/openfeint/internal/ui/WebNav$ActionHandler;)Lcom/openfeint/internal/ui/WebNav$WebNavClient;
    .locals 1
    .param p1, "actionHandler"    # Lcom/openfeint/internal/ui/WebNav$ActionHandler;

    .prologue
    .line 304
    new-instance v0, Lcom/openfeint/internal/ui/WebNav$WebNavClient;

    invoke-direct {v0, p0, p1}, Lcom/openfeint/internal/ui/WebNav$WebNavClient;-><init>(Lcom/openfeint/internal/ui/WebNav;Lcom/openfeint/internal/ui/WebNav$ActionHandler;)V

    return-object v0
.end method

.method public executeJavascript(Ljava/lang/String;)V
    .locals 3
    .param p1, "js"    # Ljava/lang/String;

    .prologue
    .line 347
    iget-object v0, p0, Lcom/openfeint/internal/ui/WebNav;->mWebView:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    .line 348
    iget-object v0, p0, Lcom/openfeint/internal/ui/WebNav;->mWebView:Landroid/webkit/WebView;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "javascript:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 350
    :cond_0
    return-void
.end method

.method public getActionHandler()Lcom/openfeint/internal/ui/WebNav$ActionHandler;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/openfeint/internal/ui/WebNav;->mActionHandler:Lcom/openfeint/internal/ui/WebNav$ActionHandler;

    return-object v0
.end method

.method public getLaunchLoadingView()Landroid/app/Dialog;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/openfeint/internal/ui/WebNav;->mLaunchLoadingView:Landroid/app/Dialog;

    return-object v0
.end method

.method protected initialContentPath()Ljava/lang/String;
    .locals 3

    .prologue
    .line 314
    invoke-virtual {p0}, Lcom/openfeint/internal/ui/WebNav;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "content_path"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 315
    .local v0, "contentPath":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 316
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "WebNav intent requires extra value \'content_path\'"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 318
    :cond_0
    return-object v0
.end method

.method protected load(Z)V
    .locals 2
    .param p1, "reload"    # Z

    .prologue
    .line 162
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/openfeint/internal/ui/WebNav;->mIsPageLoaded:Z

    .line 163
    invoke-virtual {p0}, Lcom/openfeint/internal/ui/WebNav;->rootPage()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/openfeint/internal/ui/WebNav$3;

    invoke-direct {v1, p0, p1}, Lcom/openfeint/internal/ui/WebNav$3;-><init>(Lcom/openfeint/internal/ui/WebNav;Z)V

    invoke-static {v0, v1}, Lcom/openfeint/internal/ui/WebViewCache;->trackPath(Ljava/lang/String;Lcom/openfeint/internal/ui/WebViewCacheCallback;)Z

    .line 181
    return-void
.end method

.method public loadInitialContent()V
    .locals 3

    .prologue
    .line 267
    invoke-virtual {p0}, Lcom/openfeint/internal/ui/WebNav;->initialContentPath()Ljava/lang/String;

    move-result-object v0

    .line 268
    .local v0, "path":Ljava/lang/String;
    const-string v1, "?"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "\\?"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v0, v1, v2

    .line 269
    :cond_0
    const-string v1, ".json"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, ".json"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 271
    :cond_1
    new-instance v1, Lcom/openfeint/internal/ui/WebNav$5;

    invoke-direct {v1, p0}, Lcom/openfeint/internal/ui/WebNav$5;-><init>(Lcom/openfeint/internal/ui/WebNav;)V

    invoke-static {v0, v1}, Lcom/openfeint/internal/ui/WebViewCache;->trackPath(Ljava/lang/String;Lcom/openfeint/internal/ui/WebViewCacheCallback;)Z

    .line 282
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 11
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 943
    invoke-super {p0, p1, p2, p3}, Lcom/openfeint/internal/ui/NestedWindow;->onActivityResult(IILandroid/content/Intent;)V

    .line 946
    iget-object v6, p0, Lcom/openfeint/internal/ui/WebNav;->mNativeBrowserParameters:Ljava/util/Map;

    if-eqz v6, :cond_5

    const/16 v6, 0x63dd

    if-ne p1, v6, :cond_5

    .line 947
    if-eqz p2, :cond_4

    .line 950
    iput-boolean v8, p0, Lcom/openfeint/internal/ui/WebNav;->mShouldRefreshOnResume:Z

    .line 952
    const-string v6, "com.openfeint.internal.ui.NativeBrowser.argument.failed"

    invoke-virtual {p3, v6, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 953
    iget-object v6, p0, Lcom/openfeint/internal/ui/WebNav;->mNativeBrowserParameters:Ljava/util/Map;

    const-string v7, "on_failure"

    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 954
    .local v1, "cb":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 955
    const-string v6, "com.openfeint.internal.ui.NativeBrowser.argument.failure_code"

    invoke-virtual {p3, v6, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 956
    .local v2, "code":I
    const-string v6, "com.openfeint.internal.ui.NativeBrowser.argument.failure_desc"

    invoke-virtual {p3, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 957
    .local v3, "desc":Ljava/lang/String;
    const-string v6, "%s(%d, %s)"

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Object;

    aput-object v1, v7, v8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v9

    invoke-static {v3}, Lcom/openfeint/internal/ui/WebNav;->jsQuotedStringLiteral(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v10

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/openfeint/internal/ui/WebNav;->executeJavascript(Ljava/lang/String;)V

    .line 974
    .end local v2    # "code":I
    .end local v3    # "desc":Ljava/lang/String;
    :cond_0
    :goto_0
    const/4 v6, 0x0

    iput-object v6, p0, Lcom/openfeint/internal/ui/WebNav;->mNativeBrowserParameters:Ljava/util/Map;

    .line 992
    .end local v1    # "cb":Ljava/lang/String;
    :cond_1
    :goto_1
    return-void

    .line 962
    :cond_2
    iget-object v6, p0, Lcom/openfeint/internal/ui/WebNav;->mNativeBrowserParameters:Ljava/util/Map;

    const-string v7, "callback"

    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 963
    .restart local v1    # "cb":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 964
    const-string v6, "com.openfeint.internal.ui.NativeBrowser.argument.result"

    invoke-virtual {p3, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 965
    .local v5, "rv":Ljava/lang/String;
    const-string v6, "%s(%s)"

    new-array v7, v10, [Ljava/lang/Object;

    aput-object v1, v7, v8

    if-eqz v5, :cond_3

    .end local v5    # "rv":Ljava/lang/String;
    :goto_2
    aput-object v5, v7, v9

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/openfeint/internal/ui/WebNav;->executeJavascript(Ljava/lang/String;)V

    goto :goto_0

    .restart local v5    # "rv":Ljava/lang/String;
    :cond_3
    const-string v5, ""

    goto :goto_2

    .line 969
    .end local v1    # "cb":Ljava/lang/String;
    .end local v5    # "rv":Ljava/lang/String;
    :cond_4
    iget-object v6, p0, Lcom/openfeint/internal/ui/WebNav;->mNativeBrowserParameters:Ljava/util/Map;

    const-string v7, "on_cancel"

    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 970
    .restart local v1    # "cb":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 971
    const-string v6, "%s()"

    new-array v7, v9, [Ljava/lang/Object;

    aput-object v1, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/openfeint/internal/ui/WebNav;->executeJavascript(Ljava/lang/String;)V

    goto :goto_0

    .line 975
    .end local v1    # "cb":Ljava/lang/String;
    :cond_5
    invoke-static {p1}, Lcom/openfeint/internal/ImagePicker;->isImagePickerActivityResult(I)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 976
    const/16 v6, 0x98

    invoke-static {p0, p2, v6, p3}, Lcom/openfeint/internal/ImagePicker;->onImagePickerActivityResult(Landroid/app/Activity;IILandroid/content/Intent;)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 977
    .local v4, "image":Landroid/graphics/Bitmap;
    if-eqz v4, :cond_1

    .line 978
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "/xp/users/"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/openfeint/internal/OpenFeintInternal;->getInstance()Lcom/openfeint/internal/OpenFeintInternal;

    move-result-object v7

    invoke-virtual {v7}, Lcom/openfeint/internal/OpenFeintInternal;->getCurrentUser()Lcom/openfeint/api/resource/CurrentUser;

    move-result-object v7

    invoke-virtual {v7}, Lcom/openfeint/api/resource/CurrentUser;->resourceID()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/profile_picture"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 979
    .local v0, "apiPath":Ljava/lang/String;
    new-instance v6, Lcom/openfeint/internal/ui/WebNav$6;

    invoke-direct {v6, p0}, Lcom/openfeint/internal/ui/WebNav$6;-><init>(Lcom/openfeint/internal/ui/WebNav;)V

    invoke-static {v4, v0, v6}, Lcom/openfeint/internal/ImagePicker;->compressAndUpload(Landroid/graphics/Bitmap;Ljava/lang/String;Lcom/openfeint/internal/OpenFeintInternal$IUploadDelegate;)V

    goto :goto_1
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 4
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 252
    invoke-super {p0, p1}, Lcom/openfeint/internal/ui/NestedWindow;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 253
    const/4 v0, 0x0

    .line 254
    .local v0, "orientationString":Ljava/lang/String;
    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 255
    const-string v0, "landscape"

    .line 260
    :goto_0
    const-string v1, "OF.setOrientation(\'%s\');"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/openfeint/internal/ui/WebNav;->executeJavascript(Ljava/lang/String;)V

    .line 261
    return-void

    .line 257
    :cond_0
    const-string v0, "portrait"

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 94
    invoke-super {p0, p1}, Lcom/openfeint/internal/ui/NestedWindow;->onCreate(Landroid/os/Bundle;)V

    .line 96
    const-string v2, "WebUI"

    const-string v3, "--- WebUI Bootup ---"

    invoke-static {v2, v3}, Lcom/openfeint/internal/logcat/OFLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    iput v5, p0, Lcom/openfeint/internal/ui/WebNav;->pageStackCount:I

    .line 102
    iget-object v2, p0, Lcom/openfeint/internal/ui/WebNav;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 103
    iget-object v2, p0, Lcom/openfeint/internal/ui/WebNav;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/webkit/WebSettings;->setPluginsEnabled(Z)V

    .line 104
    iget-object v2, p0, Lcom/openfeint/internal/ui/WebNav;->mWebView:Landroid/webkit/WebView;

    const/high16 v3, 0x2000000

    invoke-virtual {v2, v3}, Landroid/webkit/WebView;->setScrollBarStyle(I)V

    .line 105
    iget-object v2, p0, Lcom/openfeint/internal/ui/WebNav;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    .line 108
    new-instance v2, Landroid/app/Dialog;

    const-string v3, "OFLoading"

    invoke-static {v3}, Lcom/openfeint/internal/RR;->style(Ljava/lang/String;)I

    move-result v3

    invoke-direct {v2, p0, v3}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    iput-object v2, p0, Lcom/openfeint/internal/ui/WebNav;->mLaunchLoadingView:Landroid/app/Dialog;

    .line 109
    iget-object v2, p0, Lcom/openfeint/internal/ui/WebNav;->mLaunchLoadingView:Landroid/app/Dialog;

    new-instance v3, Lcom/openfeint/internal/ui/WebNav$1;

    invoke-direct {v3, p0}, Lcom/openfeint/internal/ui/WebNav$1;-><init>(Lcom/openfeint/internal/ui/WebNav;)V

    invoke-virtual {v2, v3}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 115
    iget-object v2, p0, Lcom/openfeint/internal/ui/WebNav;->mLaunchLoadingView:Landroid/app/Dialog;

    invoke-virtual {v2, v4}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 116
    iget-object v2, p0, Lcom/openfeint/internal/ui/WebNav;->mLaunchLoadingView:Landroid/app/Dialog;

    const-string v3, "of_native_loader"

    invoke-static {v3}, Lcom/openfeint/internal/RR;->layout(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/app/Dialog;->setContentView(I)V

    .line 118
    iget-object v2, p0, Lcom/openfeint/internal/ui/WebNav;->mLaunchLoadingView:Landroid/app/Dialog;

    const-string v3, "progress"

    invoke-static {v3}, Lcom/openfeint/internal/RR;->id(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ProgressBar;

    .line 119
    .local v1, "progress":Landroid/widget/ProgressBar;
    invoke-virtual {v1, v4}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    .line 121
    invoke-static {}, Lcom/openfeint/internal/OpenFeintInternal;->getInstance()Lcom/openfeint/internal/OpenFeintInternal;

    move-result-object v2

    invoke-virtual {v2}, Lcom/openfeint/internal/OpenFeintInternal;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 122
    const-string v3, "of_native_loader_progress"

    invoke-static {v3}, Lcom/openfeint/internal/RR;->drawable(Ljava/lang/String;)I

    move-result v3

    .line 121
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 120
    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setIndeterminateDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 126
    invoke-virtual {p0, p0}, Lcom/openfeint/internal/ui/WebNav;->createActionHandler(Lcom/openfeint/internal/ui/WebNav;)Lcom/openfeint/internal/ui/WebNav$ActionHandler;

    move-result-object v2

    iput-object v2, p0, Lcom/openfeint/internal/ui/WebNav;->mActionHandler:Lcom/openfeint/internal/ui/WebNav$ActionHandler;

    .line 127
    iget-object v2, p0, Lcom/openfeint/internal/ui/WebNav;->mActionHandler:Lcom/openfeint/internal/ui/WebNav$ActionHandler;

    invoke-virtual {p0, v2}, Lcom/openfeint/internal/ui/WebNav;->createWebNavClient(Lcom/openfeint/internal/ui/WebNav$ActionHandler;)Lcom/openfeint/internal/ui/WebNav$WebNavClient;

    move-result-object v2

    iput-object v2, p0, Lcom/openfeint/internal/ui/WebNav;->mWebViewClient:Lcom/openfeint/internal/ui/WebNav$WebNavClient;

    .line 128
    iget-object v2, p0, Lcom/openfeint/internal/ui/WebNav;->mWebView:Landroid/webkit/WebView;

    iget-object v3, p0, Lcom/openfeint/internal/ui/WebNav;->mWebViewClient:Lcom/openfeint/internal/ui/WebNav$WebNavClient;

    invoke-virtual {v2, v3}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 129
    iget-object v2, p0, Lcom/openfeint/internal/ui/WebNav;->mWebView:Landroid/webkit/WebView;

    new-instance v3, Lcom/openfeint/internal/ui/WebNav$WebNavChromeClient;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/openfeint/internal/ui/WebNav$WebNavChromeClient;-><init>(Lcom/openfeint/internal/ui/WebNav;Lcom/openfeint/internal/ui/WebNav$WebNavChromeClient;)V

    invoke-virtual {v2, v3}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 132
    iget-object v2, p0, Lcom/openfeint/internal/ui/WebNav;->mWebView:Landroid/webkit/WebView;

    new-instance v3, Lcom/openfeint/internal/ui/WebNav$2;

    invoke-direct {v3, p0}, Lcom/openfeint/internal/ui/WebNav$2;-><init>(Lcom/openfeint/internal/ui/WebNav;)V

    .line 147
    const-string v4, "NativeInterface"

    .line 132
    invoke-virtual {v2, v3, v4}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 149
    invoke-virtual {p0}, Lcom/openfeint/internal/ui/WebNav;->initialContentPath()Ljava/lang/String;

    move-result-object v0

    .line 150
    .local v0, "path":Ljava/lang/String;
    const-string v2, "?"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "\\?"

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    aget-object v0, v2, v5

    .line 151
    :cond_0
    const-string v2, ".json"

    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, ".json"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 152
    :cond_1
    invoke-static {v0}, Lcom/openfeint/internal/ui/WebViewCache;->prioritize(Ljava/lang/String;)V

    .line 153
    invoke-virtual {p0, v5}, Lcom/openfeint/internal/ui/WebNav;->load(Z)V

    .line 154
    iget-object v2, p0, Lcom/openfeint/internal/ui/WebNav;->mLaunchLoadingView:Landroid/app/Dialog;

    invoke-virtual {v2}, Landroid/app/Dialog;->show()V

    .line 155
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 1009
    iget-object v0, p0, Lcom/openfeint/internal/ui/WebNav;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->destroy()V

    .line 1010
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/openfeint/internal/ui/WebNav;->mWebView:Landroid/webkit/WebView;

    .line 1011
    invoke-super {p0}, Lcom/openfeint/internal/ui/NestedWindow;->onDestroy()V

    .line 1012
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 5
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v0, 0x1

    .line 327
    const/16 v1, 0x54

    if-ne p1, v1, :cond_0

    .line 328
    const-string v1, "OF.menu(\'%s\')"

    new-array v2, v0, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "search"

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/openfeint/internal/ui/WebNav;->executeJavascript(Ljava/lang/String;)V

    .line 337
    :goto_0
    return v0

    .line 332
    :cond_0
    const/4 v1, 0x4

    if-ne p1, v1, :cond_1

    iget v1, p0, Lcom/openfeint/internal/ui/WebNav;->pageStackCount:I

    if-le v1, v0, :cond_1

    .line 333
    const-string v1, "OF.goBack()"

    invoke-virtual {p0, v1}, Lcom/openfeint/internal/ui/WebNav;->executeJavascript(Ljava/lang/String;)V

    goto :goto_0

    .line 337
    :cond_1
    invoke-super {p0, p1, p2}, Lcom/openfeint/internal/ui/NestedWindow;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "inState"    # Landroid/os/Bundle;

    .prologue
    .line 65
    invoke-static {p1}, Lcom/openfeint/internal/OpenFeintInternal;->restoreInstanceState(Landroid/os/Bundle;)V

    .line 66
    return-void
.end method

.method public onResume()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 215
    invoke-super {p0}, Lcom/openfeint/internal/ui/NestedWindow;->onResume()V

    .line 217
    invoke-static {}, Lcom/openfeint/internal/OpenFeintInternal;->getInstance()Lcom/openfeint/internal/OpenFeintInternal;

    move-result-object v1

    invoke-virtual {v1}, Lcom/openfeint/internal/OpenFeintInternal;->getCurrentUser()Lcom/openfeint/api/resource/CurrentUser;

    move-result-object v0

    .line 218
    .local v0, "localUser":Lcom/openfeint/api/resource/User;
    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lcom/openfeint/internal/ui/WebNav;->mIsFrameworkLoaded:Z

    if-eqz v1, :cond_0

    .line 220
    const-string v1, "if (OF.user) { OF.user.name = %s; OF.user.id = \'%s\'; }"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 221
    iget-object v4, v0, Lcom/openfeint/api/resource/User;->name:Ljava/lang/String;

    invoke-static {v4}, Lcom/openfeint/internal/ui/WebNav;->jsQuotedStringLiteral(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 222
    invoke-virtual {v0}, Lcom/openfeint/api/resource/User;->resourceID()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    .line 220
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 219
    invoke-virtual {p0, v1}, Lcom/openfeint/internal/ui/WebNav;->executeJavascript(Ljava/lang/String;)V

    .line 223
    iget-boolean v1, p0, Lcom/openfeint/internal/ui/WebNav;->mShouldRefreshOnResume:Z

    if-eqz v1, :cond_0

    .line 224
    const-string v1, "if (OF.page) OF.refresh();"

    invoke-virtual {p0, v1}, Lcom/openfeint/internal/ui/WebNav;->executeJavascript(Ljava/lang/String;)V

    .line 228
    :cond_0
    iput-boolean v5, p0, Lcom/openfeint/internal/ui/WebNav;->mShouldRefreshOnResume:Z

    .line 229
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 58
    invoke-static {p1}, Lcom/openfeint/internal/OpenFeintInternal;->saveInstanceState(Landroid/os/Bundle;)V

    .line 59
    return-void
.end method

.method public onStop()V
    .locals 0

    .prologue
    .line 233
    invoke-super {p0}, Lcom/openfeint/internal/ui/NestedWindow;->onStop()V

    .line 234
    invoke-direct {p0}, Lcom/openfeint/internal/ui/WebNav;->dismissDialog()V

    .line 235
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 2
    .param p1, "hasFocus"    # Z

    .prologue
    .line 996
    invoke-super {p0, p1}, Lcom/openfeint/internal/ui/NestedWindow;->onWindowFocusChanged(Z)V

    .line 997
    invoke-static {}, Lcom/openfeint/internal/OpenFeintInternal;->getInstance()Lcom/openfeint/internal/OpenFeintInternal;

    move-result-object v1

    invoke-virtual {v1}, Lcom/openfeint/internal/OpenFeintInternal;->getDelegate()Lcom/openfeint/api/OpenFeintDelegate;

    move-result-object v0

    .line 998
    .local v0, "d":Lcom/openfeint/api/OpenFeintDelegate;
    if-eqz v0, :cond_0

    .line 999
    if-eqz p1, :cond_1

    .line 1000
    invoke-virtual {v0}, Lcom/openfeint/api/OpenFeintDelegate;->onDashboardAppear()V

    .line 1005
    :cond_0
    :goto_0
    return-void

    .line 1002
    :cond_1
    invoke-virtual {v0}, Lcom/openfeint/api/OpenFeintDelegate;->onDashboardDisappear()V

    goto :goto_0
.end method

.method protected rootPage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 158
    const-string v0, "index.html"

    return-object v0
.end method

.method protected setFrameworkLoaded(Z)V
    .locals 0
    .param p1, "value"    # Z

    .prologue
    .line 83
    iput-boolean p1, p0, Lcom/openfeint/internal/ui/WebNav;->mIsFrameworkLoaded:Z

    return-void
.end method
