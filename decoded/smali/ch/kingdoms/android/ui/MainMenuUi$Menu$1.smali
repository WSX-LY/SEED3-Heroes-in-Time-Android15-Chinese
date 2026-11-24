.class Lch/kingdoms/android/ui/MainMenuUi$Menu$1;
.super Ljava/lang/Object;
.source "MainMenuUi.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lch/kingdoms/android/ui/MainMenuUi$Menu;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lch/kingdoms/android/ui/MainMenuUi$Menu;

.field private final synthetic val$id:I

.field private final synthetic val$pd:Landroid/app/ProgressDialog;


# direct methods
.method constructor <init>(Lch/kingdoms/android/ui/MainMenuUi$Menu;ILandroid/app/ProgressDialog;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lch/kingdoms/android/ui/MainMenuUi$Menu$1;->this$1:Lch/kingdoms/android/ui/MainMenuUi$Menu;

    iput p2, p0, Lch/kingdoms/android/ui/MainMenuUi$Menu$1;->val$id:I

    iput-object p3, p0, Lch/kingdoms/android/ui/MainMenuUi$Menu$1;->val$pd:Landroid/app/ProgressDialog;

    .line 335
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lch/kingdoms/android/ui/MainMenuUi$Menu$1;)Lch/kingdoms/android/ui/MainMenuUi$Menu;
    .locals 1

    .prologue
    .line 335
    iget-object v0, p0, Lch/kingdoms/android/ui/MainMenuUi$Menu$1;->this$1:Lch/kingdoms/android/ui/MainMenuUi$Menu;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    .line 339
    iget v1, p0, Lch/kingdoms/android/ui/MainMenuUi$Menu$1;->val$id:I

    packed-switch v1, :pswitch_data_0

    .line 448
    :goto_0
    iget-object v1, p0, Lch/kingdoms/android/ui/MainMenuUi$Menu$1;->val$pd:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->dismiss()V

    .line 449
    return-void

    .line 341
    :pswitch_0
    new-instance v8, Lch/kingdoms/android/ui/MainMenuUi$SlotListView;

    iget-object v1, p0, Lch/kingdoms/android/ui/MainMenuUi$Menu$1;->this$1:Lch/kingdoms/android/ui/MainMenuUi$Menu;

    invoke-static {v1}, Lch/kingdoms/android/ui/MainMenuUi$Menu;->access$3(Lch/kingdoms/android/ui/MainMenuUi$Menu;)Lch/kingdoms/android/ui/MainMenuUi;

    move-result-object v1

    iget-object v2, p0, Lch/kingdoms/android/ui/MainMenuUi$Menu$1;->this$1:Lch/kingdoms/android/ui/MainMenuUi$Menu;

    invoke-static {v2}, Lch/kingdoms/android/ui/MainMenuUi$Menu;->access$3(Lch/kingdoms/android/ui/MainMenuUi$Menu;)Lch/kingdoms/android/ui/MainMenuUi;

    move-result-object v2

    invoke-static {v2}, Lch/kingdoms/android/ui/MainMenuUi;->access$3(Lch/kingdoms/android/ui/MainMenuUi;)Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f020213

    invoke-direct {v8, v1, v2, v3}, Lch/kingdoms/android/ui/MainMenuUi$SlotListView;-><init>(Lch/kingdoms/android/ui/MainMenuUi;Landroid/content/Context;I)V

    .line 342
    .local v8, "newSlotview":Lch/kingdoms/android/ui/MainMenuUi$SlotListView;
    iget-object v1, p0, Lch/kingdoms/android/ui/MainMenuUi$Menu$1;->this$1:Lch/kingdoms/android/ui/MainMenuUi$Menu;

    invoke-static {v1}, Lch/kingdoms/android/ui/MainMenuUi$Menu;->access$3(Lch/kingdoms/android/ui/MainMenuUi$Menu;)Lch/kingdoms/android/ui/MainMenuUi;

    move-result-object v1

    invoke-static {v1}, Lch/kingdoms/android/ui/MainMenuUi;->access$3(Lch/kingdoms/android/ui/MainMenuUi;)Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1, v8}, Lch/android/api/ui/ChViewGen;->popUp(Landroid/app/Activity;Landroid/view/View;)Landroid/view/View;

    .line 343
    new-instance v1, Lch/kingdoms/android/ui/MainMenuUi$Menu$1$1;

    invoke-direct {v1, p0, v8}, Lch/kingdoms/android/ui/MainMenuUi$Menu$1$1;-><init>(Lch/kingdoms/android/ui/MainMenuUi$Menu$1;Lch/kingdoms/android/ui/MainMenuUi$SlotListView;)V

    invoke-virtual {v8, v1}, Lch/kingdoms/android/ui/MainMenuUi$SlotListView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 380
    .end local v8    # "newSlotview":Lch/kingdoms/android/ui/MainMenuUi$SlotListView;
    :pswitch_1
    new-instance v7, Lch/kingdoms/android/ui/MainMenuUi$SlotListView;

    iget-object v1, p0, Lch/kingdoms/android/ui/MainMenuUi$Menu$1;->this$1:Lch/kingdoms/android/ui/MainMenuUi$Menu;

    invoke-static {v1}, Lch/kingdoms/android/ui/MainMenuUi$Menu;->access$3(Lch/kingdoms/android/ui/MainMenuUi$Menu;)Lch/kingdoms/android/ui/MainMenuUi;

    move-result-object v1

    iget-object v2, p0, Lch/kingdoms/android/ui/MainMenuUi$Menu$1;->this$1:Lch/kingdoms/android/ui/MainMenuUi$Menu;

    invoke-static {v2}, Lch/kingdoms/android/ui/MainMenuUi$Menu;->access$3(Lch/kingdoms/android/ui/MainMenuUi$Menu;)Lch/kingdoms/android/ui/MainMenuUi;

    move-result-object v2

    invoke-static {v2}, Lch/kingdoms/android/ui/MainMenuUi;->access$3(Lch/kingdoms/android/ui/MainMenuUi;)Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f020089

    invoke-direct {v7, v1, v2, v3}, Lch/kingdoms/android/ui/MainMenuUi$SlotListView;-><init>(Lch/kingdoms/android/ui/MainMenuUi;Landroid/content/Context;I)V

    .line 381
    .local v7, "loadSlotview":Lch/kingdoms/android/ui/MainMenuUi$SlotListView;
    iget-object v1, p0, Lch/kingdoms/android/ui/MainMenuUi$Menu$1;->this$1:Lch/kingdoms/android/ui/MainMenuUi$Menu;

    invoke-static {v1}, Lch/kingdoms/android/ui/MainMenuUi$Menu;->access$3(Lch/kingdoms/android/ui/MainMenuUi$Menu;)Lch/kingdoms/android/ui/MainMenuUi;

    move-result-object v1

    invoke-static {v1}, Lch/kingdoms/android/ui/MainMenuUi;->access$3(Lch/kingdoms/android/ui/MainMenuUi;)Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1, v7}, Lch/android/api/ui/ChViewGen;->popUp(Landroid/app/Activity;Landroid/view/View;)Landroid/view/View;

    .line 382
    new-instance v1, Lch/kingdoms/android/ui/MainMenuUi$Menu$1$2;

    invoke-direct {v1, p0, v7}, Lch/kingdoms/android/ui/MainMenuUi$Menu$1$2;-><init>(Lch/kingdoms/android/ui/MainMenuUi$Menu$1;Lch/kingdoms/android/ui/MainMenuUi$SlotListView;)V

    invoke-virtual {v7, v1}, Lch/kingdoms/android/ui/MainMenuUi$SlotListView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 419
    .end local v7    # "loadSlotview":Lch/kingdoms/android/ui/MainMenuUi$SlotListView;
    :pswitch_2
    new-instance v0, Lch/kingdoms/android/ui/OptionUi;

    iget-object v1, p0, Lch/kingdoms/android/ui/MainMenuUi$Menu$1;->this$1:Lch/kingdoms/android/ui/MainMenuUi$Menu;

    invoke-static {v1}, Lch/kingdoms/android/ui/MainMenuUi$Menu;->access$3(Lch/kingdoms/android/ui/MainMenuUi$Menu;)Lch/kingdoms/android/ui/MainMenuUi;

    move-result-object v1

    invoke-static {v1}, Lch/kingdoms/android/ui/MainMenuUi;->access$3(Lch/kingdoms/android/ui/MainMenuUi;)Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lch/kingdoms/android/ui/MainMenuUi$Menu$1;->this$1:Lch/kingdoms/android/ui/MainMenuUi$Menu;

    invoke-static {v2}, Lch/kingdoms/android/ui/MainMenuUi$Menu;->access$3(Lch/kingdoms/android/ui/MainMenuUi$Menu;)Lch/kingdoms/android/ui/MainMenuUi;

    move-result-object v2

    invoke-static {v2}, Lch/kingdoms/android/ui/MainMenuUi;->access$0(Lch/kingdoms/android/ui/MainMenuUi;)Lch/android/api/util/DisplayInfo;

    move-result-object v2

    const v3, 0x7f02023b

    const/4 v4, 0x1

    new-instance v5, Lch/kingdoms/android/ui/MainMenuUi$Menu$1$3;

    invoke-direct {v5, p0}, Lch/kingdoms/android/ui/MainMenuUi$Menu$1$3;-><init>(Lch/kingdoms/android/ui/MainMenuUi$Menu$1;)V

    invoke-direct/range {v0 .. v5}, Lch/kingdoms/android/ui/OptionUi;-><init>(Landroid/app/Activity;Lch/android/api/util/DisplayInfo;IZLandroid/view/View$OnClickListener;)V

    .line 431
    .local v0, "optionUi":Lch/kingdoms/android/ui/OptionUi;
    iget-object v1, p0, Lch/kingdoms/android/ui/MainMenuUi$Menu$1;->this$1:Lch/kingdoms/android/ui/MainMenuUi$Menu;

    invoke-static {v1}, Lch/kingdoms/android/ui/MainMenuUi$Menu;->access$3(Lch/kingdoms/android/ui/MainMenuUi$Menu;)Lch/kingdoms/android/ui/MainMenuUi;

    move-result-object v1

    invoke-static {v1}, Lch/kingdoms/android/ui/MainMenuUi;->access$3(Lch/kingdoms/android/ui/MainMenuUi;)Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1, v0}, Lch/android/api/ui/ChViewGen;->popUp(Landroid/app/Activity;Landroid/view/View;)Landroid/view/View;

    goto/16 :goto_0

    .line 434
    .end local v0    # "optionUi":Lch/kingdoms/android/ui/OptionUi;
    :pswitch_3
    new-instance v6, Lch/kingdoms/android/ui/HelpUi;

    iget-object v1, p0, Lch/kingdoms/android/ui/MainMenuUi$Menu$1;->this$1:Lch/kingdoms/android/ui/MainMenuUi$Menu;

    invoke-static {v1}, Lch/kingdoms/android/ui/MainMenuUi$Menu;->access$3(Lch/kingdoms/android/ui/MainMenuUi$Menu;)Lch/kingdoms/android/ui/MainMenuUi;

    move-result-object v1

    invoke-static {v1}, Lch/kingdoms/android/ui/MainMenuUi;->access$3(Lch/kingdoms/android/ui/MainMenuUi;)Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lch/kingdoms/android/ui/MainMenuUi$Menu$1;->this$1:Lch/kingdoms/android/ui/MainMenuUi$Menu;

    invoke-static {v2}, Lch/kingdoms/android/ui/MainMenuUi$Menu;->access$3(Lch/kingdoms/android/ui/MainMenuUi$Menu;)Lch/kingdoms/android/ui/MainMenuUi;

    move-result-object v2

    invoke-static {v2}, Lch/kingdoms/android/ui/MainMenuUi;->access$0(Lch/kingdoms/android/ui/MainMenuUi;)Lch/android/api/util/DisplayInfo;

    move-result-object v2

    invoke-direct {v6, v1, v2}, Lch/kingdoms/android/ui/HelpUi;-><init>(Landroid/app/Activity;Lch/android/api/util/DisplayInfo;)V

    .line 435
    .local v6, "helpUi":Lch/kingdoms/android/ui/HelpUi;
    iget-object v1, p0, Lch/kingdoms/android/ui/MainMenuUi$Menu$1;->this$1:Lch/kingdoms/android/ui/MainMenuUi$Menu;

    invoke-static {v1}, Lch/kingdoms/android/ui/MainMenuUi$Menu;->access$3(Lch/kingdoms/android/ui/MainMenuUi$Menu;)Lch/kingdoms/android/ui/MainMenuUi;

    move-result-object v1

    invoke-static {v1}, Lch/kingdoms/android/ui/MainMenuUi;->access$3(Lch/kingdoms/android/ui/MainMenuUi;)Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1, v6}, Lch/android/api/ui/ChViewGen;->popUp(Landroid/app/Activity;Landroid/view/View;)Landroid/view/View;

    .line 436
    new-instance v1, Lch/kingdoms/android/ui/MainMenuUi$Menu$1$4;

    invoke-direct {v1, p0}, Lch/kingdoms/android/ui/MainMenuUi$Menu$1$4;-><init>(Lch/kingdoms/android/ui/MainMenuUi$Menu$1;)V

    invoke-virtual {v6, v1}, Lch/kingdoms/android/ui/HelpUi;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_0

    .line 339
    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
