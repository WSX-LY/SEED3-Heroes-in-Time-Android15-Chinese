.class public Lcom/openfeint/internal/notifications/TwoLineNotification;
.super Lcom/openfeint/internal/notifications/NotificationBase;
.source "TwoLineNotification.java"


# direct methods
.method protected constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/openfeint/api/Notification$Category;Lcom/openfeint/api/Notification$Type;Ljava/util/Map;)V
    .locals 6
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "extra"    # Ljava/lang/String;
    .param p3, "imageName"    # Ljava/lang/String;
    .param p4, "cat"    # Lcom/openfeint/api/Notification$Category;
    .param p5, "type"    # Lcom/openfeint/api/Notification$Type;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
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
    .line 23
    .local p6, "userData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    move-object v0, p0

    move-object v1, p1

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    invoke-direct/range {v0 .. v5}, Lcom/openfeint/internal/notifications/NotificationBase;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/openfeint/api/Notification$Category;Lcom/openfeint/api/Notification$Type;Ljava/util/Map;)V

    .line 24
    return-void
.end method

.method public static show(Ljava/lang/String;Ljava/lang/String;Lcom/openfeint/api/Notification$Category;Lcom/openfeint/api/Notification$Type;)V
    .locals 1
    .param p0, "text"    # Ljava/lang/String;
    .param p1, "extra"    # Ljava/lang/String;
    .param p2, "c"    # Lcom/openfeint/api/Notification$Category;
    .param p3, "t"    # Lcom/openfeint/api/Notification$Type;

    .prologue
    .line 77
    const/4 v0, 0x0

    invoke-static {p0, p1, v0, p2, p3}, Lcom/openfeint/internal/notifications/TwoLineNotification;->show(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/openfeint/api/Notification$Category;Lcom/openfeint/api/Notification$Type;)V

    .line 78
    return-void
.end method

.method public static show(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/openfeint/api/Notification$Category;Lcom/openfeint/api/Notification$Type;)V
    .locals 7
    .param p0, "text"    # Ljava/lang/String;
    .param p1, "extra"    # Ljava/lang/String;
    .param p2, "imageName"    # Ljava/lang/String;
    .param p3, "c"    # Lcom/openfeint/api/Notification$Category;
    .param p4, "t"    # Lcom/openfeint/api/Notification$Type;

    .prologue
    .line 81
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 82
    .local v6, "userData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v1, "extra"

    invoke-interface {v6, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    new-instance v0, Lcom/openfeint/internal/notifications/TwoLineNotification;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v6}, Lcom/openfeint/internal/notifications/TwoLineNotification;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/openfeint/api/Notification$Category;Lcom/openfeint/api/Notification$Type;Ljava/util/Map;)V

    .line 84
    .local v0, "notification":Lcom/openfeint/internal/notifications/TwoLineNotification;
    invoke-virtual {v0}, Lcom/openfeint/internal/notifications/TwoLineNotification;->checkDelegateAndView()V

    .line 86
    return-void
.end method


# virtual methods
.method protected createView()Z
    .locals 7

    .prologue
    .line 29
    invoke-static {}, Lcom/openfeint/internal/OpenFeintInternal;->getInstance()Lcom/openfeint/internal/OpenFeintInternal;

    move-result-object v4

    invoke-virtual {v4}, Lcom/openfeint/internal/OpenFeintInternal;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "layout_inflater"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    .line 30
    .local v2, "inflater":Landroid/view/LayoutInflater;
    const-string v4, "of_two_line_notification"

    invoke-static {v4}, Lcom/openfeint/internal/RR;->layout(Ljava/lang/String;)I

    move-result v4

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/openfeint/internal/notifications/TwoLineNotification;->displayView:Landroid/view/View;

    .line 32
    iget-object v4, p0, Lcom/openfeint/internal/notifications/TwoLineNotification;->displayView:Landroid/view/View;

    const-string v5, "of_text1"

    invoke-static {v5}, Lcom/openfeint/internal/RR;->id(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/openfeint/internal/notifications/TwoLineNotification;->getText()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 33
    iget-object v4, p0, Lcom/openfeint/internal/notifications/TwoLineNotification;->displayView:Landroid/view/View;

    const-string v5, "of_text2"

    invoke-static {v5}, Lcom/openfeint/internal/RR;->id(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/openfeint/internal/notifications/TwoLineNotification;->getUserData()Ljava/util/Map;

    move-result-object v5

    const-string v6, "extra"

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 35
    iget-object v4, p0, Lcom/openfeint/internal/notifications/TwoLineNotification;->displayView:Landroid/view/View;

    const-string v5, "of_icon"

    invoke-static {v5}, Lcom/openfeint/internal/RR;->id(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 37
    .local v0, "icon":Landroid/widget/ImageView;
    iget-object v4, p0, Lcom/openfeint/internal/notifications/TwoLineNotification;->imageName:Ljava/lang/String;

    if-eqz v4, :cond_1

    .line 38
    iget-object v4, p0, Lcom/openfeint/internal/notifications/TwoLineNotification;->imageName:Ljava/lang/String;

    invoke-static {v4}, Lcom/openfeint/internal/notifications/TwoLineNotification;->getResourceDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 39
    .local v1, "image":Landroid/graphics/drawable/Drawable;
    if-nez v1, :cond_0

    .line 41
    new-instance v3, Lcom/openfeint/internal/notifications/TwoLineNotification$1;

    invoke-direct {v3, p0, v0}, Lcom/openfeint/internal/notifications/TwoLineNotification$1;-><init>(Lcom/openfeint/internal/notifications/TwoLineNotification;Landroid/widget/ImageView;)V

    .line 57
    .local v3, "req":Lcom/openfeint/internal/request/BitmapRequest;
    invoke-virtual {v3}, Lcom/openfeint/internal/request/BitmapRequest;->launch()V

    .line 59
    const/4 v4, 0x0

    .line 67
    .end local v1    # "image":Landroid/graphics/drawable/Drawable;
    .end local v3    # "req":Lcom/openfeint/internal/request/BitmapRequest;
    :goto_0
    return v4

    .line 61
    .restart local v1    # "image":Landroid/graphics/drawable/Drawable;
    :cond_0
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 67
    .end local v1    # "image":Landroid/graphics/drawable/Drawable;
    :goto_1
    const/4 v4, 0x1

    goto :goto_0

    .line 64
    :cond_1
    const/4 v4, 0x4

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1
.end method

.method protected drawView(Landroid/graphics/Canvas;)V
    .locals 1
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 73
    iget-object v0, p0, Lcom/openfeint/internal/notifications/TwoLineNotification;->displayView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 74
    return-void
.end method
