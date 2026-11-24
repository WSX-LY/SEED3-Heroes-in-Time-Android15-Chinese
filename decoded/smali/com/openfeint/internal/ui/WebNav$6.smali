.class Lcom/openfeint/internal/ui/WebNav$6;
.super Ljava/lang/Object;
.source "WebNav.java"

# interfaces
.implements Lcom/openfeint/internal/OpenFeintInternal$IUploadDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/openfeint/internal/ui/WebNav;->onActivityResult(IILandroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/openfeint/internal/ui/WebNav;


# direct methods
.method constructor <init>(Lcom/openfeint/internal/ui/WebNav;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/openfeint/internal/ui/WebNav$6;->this$0:Lcom/openfeint/internal/ui/WebNav;

    .line 979
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public fileUploadedTo(Ljava/lang/String;Z)V
    .locals 3
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "success"    # Z

    .prologue
    .line 981
    if-eqz p2, :cond_0

    .line 984
    iget-object v0, p0, Lcom/openfeint/internal/ui/WebNav$6;->this$0:Lcom/openfeint/internal/ui/WebNav;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "try { OF.page.onProfilePictureChanged(\'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'); } catch (e) {}"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/openfeint/internal/ui/WebNav;->executeJavascript(Ljava/lang/String;)V

    .line 986
    :cond_0
    return-void
.end method
