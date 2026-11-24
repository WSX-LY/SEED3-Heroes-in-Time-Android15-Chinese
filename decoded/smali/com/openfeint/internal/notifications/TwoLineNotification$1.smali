.class Lcom/openfeint/internal/notifications/TwoLineNotification$1;
.super Lcom/openfeint/internal/request/BitmapRequest;
.source "TwoLineNotification.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/openfeint/internal/notifications/TwoLineNotification;->createView()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/openfeint/internal/notifications/TwoLineNotification;

.field private final synthetic val$icon:Landroid/widget/ImageView;


# direct methods
.method constructor <init>(Lcom/openfeint/internal/notifications/TwoLineNotification;Landroid/widget/ImageView;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/openfeint/internal/notifications/TwoLineNotification$1;->this$0:Lcom/openfeint/internal/notifications/TwoLineNotification;

    iput-object p2, p0, Lcom/openfeint/internal/notifications/TwoLineNotification$1;->val$icon:Landroid/widget/ImageView;

    .line 41
    invoke-direct {p0}, Lcom/openfeint/internal/request/BitmapRequest;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/String;)V
    .locals 3
    .param p1, "exceptionMessage"    # Ljava/lang/String;

    .prologue
    .line 51
    const-string v0, "NotificationImage"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Failed to load image "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/openfeint/internal/notifications/TwoLineNotification$1;->this$0:Lcom/openfeint/internal/notifications/TwoLineNotification;

    iget-object v2, v2, Lcom/openfeint/internal/notifications/TwoLineNotification;->imageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/openfeint/internal/logcat/OFLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    iget-object v0, p0, Lcom/openfeint/internal/notifications/TwoLineNotification$1;->val$icon:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 53
    iget-object v0, p0, Lcom/openfeint/internal/notifications/TwoLineNotification$1;->this$0:Lcom/openfeint/internal/notifications/TwoLineNotification;

    invoke-virtual {v0}, Lcom/openfeint/internal/notifications/TwoLineNotification;->showToast()V

    .line 54
    return-void
.end method

.method public onSuccess(Landroid/graphics/Bitmap;)V
    .locals 2
    .param p1, "responseBody"    # Landroid/graphics/Bitmap;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/openfeint/internal/notifications/TwoLineNotification$1;->val$icon:Landroid/widget/ImageView;

    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v1, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 47
    iget-object v0, p0, Lcom/openfeint/internal/notifications/TwoLineNotification$1;->this$0:Lcom/openfeint/internal/notifications/TwoLineNotification;

    invoke-virtual {v0}, Lcom/openfeint/internal/notifications/TwoLineNotification;->showToast()V

    .line 48
    return-void
.end method

.method public path()Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/openfeint/internal/notifications/TwoLineNotification$1;->this$0:Lcom/openfeint/internal/notifications/TwoLineNotification;

    iget-object v0, v0, Lcom/openfeint/internal/notifications/TwoLineNotification;->imageName:Ljava/lang/String;

    return-object v0
.end method
