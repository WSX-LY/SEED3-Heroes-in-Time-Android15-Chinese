.class public Lcom/openfeint/internal/notifications/AchievementNotification;
.super Lcom/openfeint/internal/notifications/NotificationBase;
.source "AchievementNotification.java"


# direct methods
.method protected constructor <init>(Lcom/openfeint/api/resource/Achievement;Ljava/util/Map;)V
    .locals 6
    .param p1, "achievement"    # Lcom/openfeint/api/resource/Achievement;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/openfeint/api/resource/Achievement;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 27
    .local p2, "userData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v0, "of_achievement_unlocked"

    invoke-static {v0}, Lcom/openfeint/internal/RR;->string(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Lcom/openfeint/internal/OpenFeintInternal;->getRString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    sget-object v3, Lcom/openfeint/api/Notification$Category;->Achievement:Lcom/openfeint/api/Notification$Category;

    sget-object v4, Lcom/openfeint/api/Notification$Type;->Success:Lcom/openfeint/api/Notification$Type;

    move-object v0, p0

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/openfeint/internal/notifications/NotificationBase;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/openfeint/api/Notification$Category;Lcom/openfeint/api/Notification$Type;Ljava/util/Map;)V

    .line 28
    return-void
.end method

.method public static showStatus(Lcom/openfeint/api/resource/Achievement;)V
    .locals 3
    .param p0, "achievement"    # Lcom/openfeint/api/resource/Achievement;

    .prologue
    .line 93
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 94
    .local v1, "userData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v2, "achievement"

    invoke-interface {v1, v2, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    new-instance v0, Lcom/openfeint/internal/notifications/AchievementNotification;

    invoke-direct {v0, p0, v1}, Lcom/openfeint/internal/notifications/AchievementNotification;-><init>(Lcom/openfeint/api/resource/Achievement;Ljava/util/Map;)V

    .line 96
    .local v0, "notification":Lcom/openfeint/internal/notifications/AchievementNotification;
    invoke-virtual {v0}, Lcom/openfeint/internal/notifications/AchievementNotification;->checkDelegateAndView()V

    .line 97
    return-void
.end method


# virtual methods
.method protected createView()Z
    .locals 10

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    const/4 v9, 0x4

    .line 36
    invoke-virtual {p0}, Lcom/openfeint/internal/notifications/AchievementNotification;->getUserData()Ljava/util/Map;

    move-result-object v5

    const-string v6, "achievement"

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/openfeint/api/resource/Achievement;

    .line 38
    .local v0, "achievement":Lcom/openfeint/api/resource/Achievement;
    invoke-static {}, Lcom/openfeint/internal/OpenFeintInternal;->getInstance()Lcom/openfeint/internal/OpenFeintInternal;

    move-result-object v5

    invoke-virtual {v5}, Lcom/openfeint/internal/OpenFeintInternal;->getContext()Landroid/content/Context;

    move-result-object v5

    const-string v6, "layout_inflater"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    .line 39
    .local v2, "inflater":Landroid/view/LayoutInflater;
    const-string v5, "of_achievement_notification"

    invoke-static {v5}, Lcom/openfeint/internal/RR;->layout(Ljava/lang/String;)I

    move-result v5

    const/4 v6, 0x0

    invoke-virtual {v2, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/openfeint/internal/notifications/AchievementNotification;->displayView:Landroid/view/View;

    .line 40
    iget-boolean v5, v0, Lcom/openfeint/api/resource/Achievement;->isUnlocked:Z

    if-eqz v5, :cond_1

    .line 41
    iget-object v5, p0, Lcom/openfeint/internal/notifications/AchievementNotification;->displayView:Landroid/view/View;

    const-string v6, "of_achievement_progress_icon"

    invoke-static {v6}, Lcom/openfeint/internal/RR;->id(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v9}, Landroid/view/View;->setVisibility(I)V

    .line 43
    iget v5, v0, Lcom/openfeint/api/resource/Achievement;->gamerscore:I

    if-nez v5, :cond_0

    .line 44
    iget-object v5, p0, Lcom/openfeint/internal/notifications/AchievementNotification;->displayView:Landroid/view/View;

    const-string v6, "of_achievement_score_icon"

    invoke-static {v6}, Lcom/openfeint/internal/RR;->id(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v9}, Landroid/view/View;->setVisibility(I)V

    .line 45
    iget-object v5, p0, Lcom/openfeint/internal/notifications/AchievementNotification;->displayView:Landroid/view/View;

    const-string v6, "of_achievement_score"

    invoke-static {v6}, Lcom/openfeint/internal/RR;->id(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v9}, Landroid/view/View;->setVisibility(I)V

    .line 51
    :cond_0
    :goto_0
    iget-object v5, p0, Lcom/openfeint/internal/notifications/AchievementNotification;->displayView:Landroid/view/View;

    const-string v6, "of_achievement_text"

    invoke-static {v6}, Lcom/openfeint/internal/RR;->id(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 52
    iget-object v6, v0, Lcom/openfeint/api/resource/Achievement;->title:Ljava/lang/String;

    if-eqz v6, :cond_2

    iget-object v6, v0, Lcom/openfeint/api/resource/Achievement;->title:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_2

    .line 53
    iget-object v6, v0, Lcom/openfeint/api/resource/Achievement;->title:Ljava/lang/String;

    .line 51
    :goto_1
    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 56
    iget-boolean v5, v0, Lcom/openfeint/api/resource/Achievement;->isUnlocked:Z

    if-eqz v5, :cond_3

    iget v5, v0, Lcom/openfeint/api/resource/Achievement;->gamerscore:I

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    .line 57
    .local v4, "scoreText":Ljava/lang/String;
    :goto_2
    iget-object v5, p0, Lcom/openfeint/internal/notifications/AchievementNotification;->displayView:Landroid/view/View;

    const-string v6, "of_achievement_score"

    invoke-static {v6}, Lcom/openfeint/internal/RR;->id(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 59
    iget-object v5, v0, Lcom/openfeint/api/resource/Achievement;->iconUrl:Ljava/lang/String;

    if-eqz v5, :cond_5

    .line 60
    iget-object v5, v0, Lcom/openfeint/api/resource/Achievement;->iconUrl:Ljava/lang/String;

    invoke-static {v5}, Lcom/openfeint/internal/notifications/AchievementNotification;->getResourceDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 61
    .local v1, "iconImage":Landroid/graphics/drawable/Drawable;
    if-nez v1, :cond_4

    .line 63
    new-instance v3, Lcom/openfeint/internal/notifications/AchievementNotification$1;

    iget-object v5, v0, Lcom/openfeint/api/resource/Achievement;->iconUrl:Ljava/lang/String;

    invoke-direct {v3, p0, v5, v0}, Lcom/openfeint/internal/notifications/AchievementNotification$1;-><init>(Lcom/openfeint/internal/notifications/AchievementNotification;Ljava/lang/String;Lcom/openfeint/api/resource/Achievement;)V

    .line 76
    .local v3, "req":Lcom/openfeint/internal/request/BitmapRequest;
    invoke-virtual {v3}, Lcom/openfeint/internal/request/BitmapRequest;->launch()V

    move v5, v7

    .line 84
    .end local v1    # "iconImage":Landroid/graphics/drawable/Drawable;
    .end local v3    # "req":Lcom/openfeint/internal/request/BitmapRequest;
    :goto_3
    return v5

    .line 48
    .end local v4    # "scoreText":Ljava/lang/String;
    :cond_1
    iget-object v5, p0, Lcom/openfeint/internal/notifications/AchievementNotification;->displayView:Landroid/view/View;

    const-string v6, "of_achievement_score_icon"

    invoke-static {v6}, Lcom/openfeint/internal/RR;->id(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v9}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 54
    :cond_2
    const-string v6, "of_achievement_unlocked"

    invoke-static {v6}, Lcom/openfeint/internal/RR;->string(Ljava/lang/String;)I

    move-result v6

    invoke-static {v6}, Lcom/openfeint/internal/OpenFeintInternal;->getRString(I)Ljava/lang/String;

    move-result-object v6

    goto :goto_1

    .line 56
    :cond_3
    const-string v5, "%d%%"

    new-array v6, v8, [Ljava/lang/Object;

    iget v9, v0, Lcom/openfeint/api/resource/Achievement;->percentComplete:F

    float-to-int v9, v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    goto :goto_2

    .line 81
    .restart local v1    # "iconImage":Landroid/graphics/drawable/Drawable;
    .restart local v4    # "scoreText":Ljava/lang/String;
    :cond_4
    iget-object v5, p0, Lcom/openfeint/internal/notifications/AchievementNotification;->displayView:Landroid/view/View;

    const-string v6, "of_achievement_icon"

    invoke-static {v6}, Lcom/openfeint/internal/RR;->id(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    invoke-virtual {v5, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .end local v1    # "iconImage":Landroid/graphics/drawable/Drawable;
    :cond_5
    move v5, v8

    .line 84
    goto :goto_3
.end method

.method protected drawView(Landroid/graphics/Canvas;)V
    .locals 1
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 89
    iget-object v0, p0, Lcom/openfeint/internal/notifications/AchievementNotification;->displayView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 90
    return-void
.end method

.method public loadedImage(Landroid/graphics/Bitmap;)V
    .locals 1
    .param p1, "map"    # Landroid/graphics/Bitmap;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/openfeint/internal/notifications/AchievementNotification;->displayView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 33
    return-void
.end method
