.class Lch/kingdoms/android/ui/MainMenuUi$Menu$1$1;
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

.field private final synthetic val$newSlotview:Lch/kingdoms/android/ui/MainMenuUi$SlotListView;


# direct methods
.method constructor <init>(Lch/kingdoms/android/ui/MainMenuUi$Menu$1;Lch/kingdoms/android/ui/MainMenuUi$SlotListView;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lch/kingdoms/android/ui/MainMenuUi$Menu$1$1;->this$2:Lch/kingdoms/android/ui/MainMenuUi$Menu$1;

    iput-object p2, p0, Lch/kingdoms/android/ui/MainMenuUi$Menu$1$1;->val$newSlotview:Lch/kingdoms/android/ui/MainMenuUi$SlotListView;

    .line 343
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 347
    invoke-static {}, Lch/android/api/ui/ChViewGen;->getEventLayerLevel()I

    move-result v1

    iget-object v2, p0, Lch/kingdoms/android/ui/MainMenuUi$Menu$1$1;->this$2:Lch/kingdoms/android/ui/MainMenuUi$Menu$1;

    invoke-static {v2}, Lch/kingdoms/android/ui/MainMenuUi$Menu$1;->access$0(Lch/kingdoms/android/ui/MainMenuUi$Menu$1;)Lch/kingdoms/android/ui/MainMenuUi$Menu;

    move-result-object v2

    invoke-static {v2}, Lch/kingdoms/android/ui/MainMenuUi$Menu;->access$0(Lch/kingdoms/android/ui/MainMenuUi$Menu;)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    if-ne v1, v2, :cond_0

    .line 348
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 354
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 355
    .local v0, "index":I
    iget-object v1, p0, Lch/kingdoms/android/ui/MainMenuUi$Menu$1$1;->val$newSlotview:Lch/kingdoms/android/ui/MainMenuUi$SlotListView;

    invoke-virtual {v1, v0}, Lch/kingdoms/android/ui/MainMenuUi$SlotListView;->isExist(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 356
    iget-object v1, p0, Lch/kingdoms/android/ui/MainMenuUi$Menu$1$1;->this$2:Lch/kingdoms/android/ui/MainMenuUi$Menu$1;

    invoke-static {v1}, Lch/kingdoms/android/ui/MainMenuUi$Menu$1;->access$0(Lch/kingdoms/android/ui/MainMenuUi$Menu$1;)Lch/kingdoms/android/ui/MainMenuUi$Menu;

    move-result-object v1

    invoke-static {v1}, Lch/kingdoms/android/ui/MainMenuUi$Menu;->access$3(Lch/kingdoms/android/ui/MainMenuUi$Menu;)Lch/kingdoms/android/ui/MainMenuUi;

    move-result-object v1

    invoke-static {v1}, Lch/kingdoms/android/ui/MainMenuUi;->access$3(Lch/kingdoms/android/ui/MainMenuUi;)Landroid/app/Activity;

    move-result-object v1

    const/4 v2, 0x6

    invoke-static {v2}, Lch/kingdoms/ndk/NdkTextLoader;->getGameMenuTxt(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lch/kingdoms/android/ui/MainMenuUi$Menu$1$1$1;

    invoke-direct {v3, p0, v0}, Lch/kingdoms/android/ui/MainMenuUi$Menu$1$1$1;-><init>(Lch/kingdoms/android/ui/MainMenuUi$Menu$1$1;I)V

    invoke-static {v1, v2, v3}, Lch/android/api/ui/ChViewGen;->popUpConfirmYesNoView(Landroid/app/Activity;Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;)Landroid/view/View;

    .line 376
    .end local v0    # "index":I
    :cond_0
    :goto_0
    return-void

    .line 350
    :pswitch_0
    invoke-static {}, Lch/android/api/ui/ChViewGen;->closePopUpView()V

    .line 351
    iget-object v1, p0, Lch/kingdoms/android/ui/MainMenuUi$Menu$1$1;->this$2:Lch/kingdoms/android/ui/MainMenuUi$Menu$1;

    invoke-static {v1}, Lch/kingdoms/android/ui/MainMenuUi$Menu$1;->access$0(Lch/kingdoms/android/ui/MainMenuUi$Menu$1;)Lch/kingdoms/android/ui/MainMenuUi$Menu;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lch/kingdoms/android/ui/MainMenuUi$Menu;->access$1(Lch/kingdoms/android/ui/MainMenuUi$Menu;Z)V

    goto :goto_0

    .line 370
    .restart local v0    # "index":I
    :cond_1
    invoke-static {v0}, Lch/kingdoms/ndk/NdkUiEventManager;->startNewGame(I)V

    .line 371
    invoke-static {}, Lch/android/api/ui/ChViewGen;->closeAllPopUpViews()V

    goto :goto_0

    .line 348
    :pswitch_data_0
    .packed-switch 0x2744
        :pswitch_0
    .end packed-switch
.end method
