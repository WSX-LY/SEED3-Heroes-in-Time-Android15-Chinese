.class public abstract Lcom/openfeint/internal/notifications/NotificationBase;
.super Lcom/openfeint/api/Notification;
.source "NotificationBase.java"


# static fields
.field static drawableCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private category:Lcom/openfeint/api/Notification$Category;

.field displayView:Landroid/view/View;

.field protected imageName:Ljava/lang/String;

.field private text:Ljava/lang/String;

.field toast:Landroid/widget/Toast;

.field private type:Lcom/openfeint/api/Notification$Type;

.field private userData:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 72
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/openfeint/internal/notifications/NotificationBase;->drawableCache:Ljava/util/Map;

    .line 18
    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/openfeint/api/Notification$Category;Lcom/openfeint/api/Notification$Type;Ljava/util/Map;)V
    .locals 0
    .param p1, "_text"    # Ljava/lang/String;
    .param p2, "_imageName"    # Ljava/lang/String;
    .param p3, "_cat"    # Lcom/openfeint/api/Notification$Category;
    .param p4, "_type"    # Lcom/openfeint/api/Notification$Type;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/openfeint/api/Notification$Category;",
            "Lcom/openfeint/api/Notification$Type;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 35
    .local p5, "_userData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-direct {p0}, Lcom/openfeint/api/Notification;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/openfeint/internal/notifications/NotificationBase;->text:Ljava/lang/String;

    .line 37
    iput-object p2, p0, Lcom/openfeint/internal/notifications/NotificationBase;->imageName:Ljava/lang/String;

    .line 38
    iput-object p3, p0, Lcom/openfeint/internal/notifications/NotificationBase;->category:Lcom/openfeint/api/Notification$Category;

    .line 39
    iput-object p4, p0, Lcom/openfeint/internal/notifications/NotificationBase;->type:Lcom/openfeint/api/Notification$Type;

    .line 40
    iput-object p5, p0, Lcom/openfeint/internal/notifications/NotificationBase;->userData:Ljava/util/Map;

    .line 41
    return-void
.end method

.method static getResourceDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 5
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 74
    sget-object v3, Lcom/openfeint/internal/notifications/NotificationBase;->drawableCache:Ljava/util/Map;

    invoke-interface {v3, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 75
    invoke-static {}, Lcom/openfeint/internal/OpenFeintInternal;->getInstance()Lcom/openfeint/internal/OpenFeintInternal;

    move-result-object v1

    .line 76
    .local v1, "ofi":Lcom/openfeint/internal/OpenFeintInternal;
    invoke-virtual {v1, p0}, Lcom/openfeint/internal/OpenFeintInternal;->getResource(Ljava/lang/String;)I

    move-result v0

    .line 77
    .local v0, "bitmapHandle":I
    if-nez v0, :cond_1

    .line 78
    sget-object v3, Lcom/openfeint/internal/notifications/NotificationBase;->drawableCache:Ljava/util/Map;

    const/4 v4, 0x0

    invoke-interface {v3, p0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    .end local v0    # "bitmapHandle":I
    .end local v1    # "ofi":Lcom/openfeint/internal/OpenFeintInternal;
    :cond_0
    :goto_0
    sget-object v3, Lcom/openfeint/internal/notifications/NotificationBase;->drawableCache:Ljava/util/Map;

    invoke-interface {v3, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/drawable/Drawable;

    return-object v3

    .line 81
    .restart local v0    # "bitmapHandle":I
    .restart local v1    # "ofi":Lcom/openfeint/internal/OpenFeintInternal;
    :cond_1
    invoke-virtual {v1}, Lcom/openfeint/internal/OpenFeintInternal;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 82
    .local v2, "r":Landroid/content/res/Resources;
    sget-object v3, Lcom/openfeint/internal/notifications/NotificationBase;->drawableCache:Ljava/util/Map;

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-interface {v3, p0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method


# virtual methods
.method protected checkDelegateAndView()V
    .locals 1

    .prologue
    .line 89
    invoke-static {}, Lcom/openfeint/internal/notifications/NotificationBase;->getDelegate()Lcom/openfeint/api/Notification$Delegate;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/openfeint/api/Notification$Delegate;->canShowNotification(Lcom/openfeint/api/Notification;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 90
    invoke-static {}, Lcom/openfeint/internal/notifications/NotificationBase;->getDelegate()Lcom/openfeint/api/Notification$Delegate;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/openfeint/api/Notification$Delegate;->notificationWillShow(Lcom/openfeint/api/Notification;)V

    .line 91
    invoke-virtual {p0}, Lcom/openfeint/internal/notifications/NotificationBase;->createView()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/openfeint/internal/notifications/NotificationBase;->showToast()V

    .line 97
    :cond_0
    :goto_0
    return-void

    .line 95
    :cond_1
    invoke-static {}, Lcom/openfeint/internal/notifications/NotificationBase;->getDelegate()Lcom/openfeint/api/Notification$Delegate;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/openfeint/api/Notification$Delegate;->displayNotification(Lcom/openfeint/api/Notification;)V

    goto :goto_0
.end method

.method protected clippedText(Landroid/graphics/Paint;Ljava/lang/String;I)Ljava/lang/String;
    .locals 5
    .param p1, "paint"    # Landroid/graphics/Paint;
    .param p2, "text"    # Ljava/lang/String;
    .param p3, "length"    # I

    .prologue
    .line 49
    move-object v1, p2

    .line 50
    .local v1, "outText":Ljava/lang/String;
    const/4 v2, 0x1

    int-to-float v3, p3

    const/4 v4, 0x0

    invoke-virtual {p1, p2, v2, v3, v4}, Landroid/graphics/Paint;->breakText(Ljava/lang/String;ZF[F)I

    move-result v0

    .line 51
    .local v0, "endLength":I
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 52
    new-instance v2, Ljava/lang/StringBuilder;

    const/4 v3, 0x0

    add-int/lit8 v4, v0, -0x1

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "..."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 54
    :cond_0
    return-object v1
.end method

.method protected abstract createView()Z
.end method

.method protected abstract drawView(Landroid/graphics/Canvas;)V
.end method

.method public getCategory()Lcom/openfeint/api/Notification$Category;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/openfeint/internal/notifications/NotificationBase;->category:Lcom/openfeint/api/Notification$Category;

    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/openfeint/internal/notifications/NotificationBase;->text:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Lcom/openfeint/api/Notification$Type;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/openfeint/internal/notifications/NotificationBase;->type:Lcom/openfeint/api/Notification$Type;

    return-object v0
.end method

.method public getUserData()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 33
    iget-object v0, p0, Lcom/openfeint/internal/notifications/NotificationBase;->userData:Ljava/util/Map;

    return-object v0
.end method

.method protected showToast()V
    .locals 2

    .prologue
    .line 58
    invoke-static {}, Lcom/openfeint/internal/OpenFeintInternal;->getInstance()Lcom/openfeint/internal/OpenFeintInternal;

    move-result-object v0

    new-instance v1, Lcom/openfeint/internal/notifications/NotificationBase$1;

    invoke-direct {v1, p0}, Lcom/openfeint/internal/notifications/NotificationBase$1;-><init>(Lcom/openfeint/internal/notifications/NotificationBase;)V

    invoke-virtual {v0, v1}, Lcom/openfeint/internal/OpenFeintInternal;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 68
    return-void
.end method
