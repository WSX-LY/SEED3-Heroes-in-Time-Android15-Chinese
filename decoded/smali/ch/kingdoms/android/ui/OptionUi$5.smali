.class Lch/kingdoms/android/ui/OptionUi$5;
.super Ljava/lang/Object;
.source "OptionUi.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lch/kingdoms/android/ui/OptionUi;-><init>(Landroid/app/Activity;Lch/android/api/util/DisplayInfo;IZLandroid/view/View$OnClickListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lch/kingdoms/android/ui/OptionUi;

.field private final synthetic val$autoRoutingBtn:Lch/android/api/ui/ChOnOffButton;

.field private final synthetic val$backBtnOnClickListener:Landroid/view/View$OnClickListener;

.field private final synthetic val$isInMain:Z

.field private final synthetic val$seekBar:Lch/kingdoms/android/ui/OptionUi$GameSpeedSeekBar;

.field private final synthetic val$soundBtn:Lch/android/api/ui/ChOnOffButton;

.field private final synthetic val$vibBtn:Lch/android/api/ui/ChOnOffButton;


# direct methods
.method constructor <init>(Lch/kingdoms/android/ui/OptionUi;Lch/kingdoms/android/ui/OptionUi$GameSpeedSeekBar;Lch/android/api/ui/ChOnOffButton;Lch/android/api/ui/ChOnOffButton;Lch/android/api/ui/ChOnOffButton;ZLandroid/view/View$OnClickListener;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lch/kingdoms/android/ui/OptionUi$5;->this$0:Lch/kingdoms/android/ui/OptionUi;

    iput-object p2, p0, Lch/kingdoms/android/ui/OptionUi$5;->val$seekBar:Lch/kingdoms/android/ui/OptionUi$GameSpeedSeekBar;

    iput-object p3, p0, Lch/kingdoms/android/ui/OptionUi$5;->val$soundBtn:Lch/android/api/ui/ChOnOffButton;

    iput-object p4, p0, Lch/kingdoms/android/ui/OptionUi$5;->val$vibBtn:Lch/android/api/ui/ChOnOffButton;

    iput-object p5, p0, Lch/kingdoms/android/ui/OptionUi$5;->val$autoRoutingBtn:Lch/android/api/ui/ChOnOffButton;

    iput-boolean p6, p0, Lch/kingdoms/android/ui/OptionUi$5;->val$isInMain:Z

    iput-object p7, p0, Lch/kingdoms/android/ui/OptionUi$5;->val$backBtnOnClickListener:Landroid/view/View$OnClickListener;

    .line 169
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 173
    iget-object v5, p0, Lch/kingdoms/android/ui/OptionUi$5;->val$seekBar:Lch/kingdoms/android/ui/OptionUi$GameSpeedSeekBar;

    invoke-virtual {v5}, Lch/kingdoms/android/ui/OptionUi$GameSpeedSeekBar;->getProgress()I

    move-result v1

    .line 174
    .local v1, "gameSpeed":I
    iget-object v5, p0, Lch/kingdoms/android/ui/OptionUi$5;->val$soundBtn:Lch/android/api/ui/ChOnOffButton;

    invoke-virtual {v5}, Lch/android/api/ui/ChOnOffButton;->isOn()Z

    move-result v3

    .line 175
    .local v3, "isSoundOn":Z
    iget-object v5, p0, Lch/kingdoms/android/ui/OptionUi$5;->val$vibBtn:Lch/android/api/ui/ChOnOffButton;

    invoke-virtual {v5}, Lch/android/api/ui/ChOnOffButton;->isOn()Z

    move-result v4

    .line 176
    .local v4, "isVibOn":Z
    iget-object v5, p0, Lch/kingdoms/android/ui/OptionUi$5;->val$autoRoutingBtn:Lch/android/api/ui/ChOnOffButton;

    invoke-virtual {v5}, Lch/android/api/ui/ChOnOffButton;->isOn()Z

    move-result v2

    .line 177
    .local v2, "isAutoOn":Z
    invoke-static {}, Lch/kingdoms/android/db/DBAdapter;->getInstance()Lch/kingdoms/android/db/DBAdapter;

    move-result-object v0

    .line 180
    .local v0, "dba":Lch/kingdoms/android/db/DBAdapter;
    invoke-virtual {v0, v3}, Lch/kingdoms/android/db/DBAdapter;->setSoundOn(Z)V

    .line 181
    invoke-static {v3}, Lch/kingdoms/ndk/NdkUiEventManager;->setSoundOn(Z)V

    .line 183
    iget-boolean v5, p0, Lch/kingdoms/android/ui/OptionUi$5;->val$isInMain:Z

    if-nez v5, :cond_0

    .line 184
    invoke-static {}, Lch/kingdoms/ndk/NdkUiEventManager;->getCurrentSaveSlotIndex()I

    move-result v5

    invoke-virtual {v0, v5, v2}, Lch/kingdoms/android/db/DBAdapter;->setAutoRouting(IZ)Z

    .line 185
    invoke-static {v2}, Lch/kingdoms/ndk/NdkUiEventManager;->setAutoRouting(Z)V

    .line 188
    :cond_0
    invoke-static {v1}, Lch/kingdoms/ndk/NdkUiEventManager;->setGameSpeedLevel(I)V

    .line 189
    if-eqz v4, :cond_1

    const/4 v5, 0x1

    :goto_0
    invoke-static {v5}, Lch/kingdoms/ndk/NdkUiEventManager;->setVibration(I)V

    .line 190
    invoke-static {}, Lch/kingdoms/ndk/NdkUiEventManager;->saveOptions()V

    .line 192
    iget-object v5, p0, Lch/kingdoms/android/ui/OptionUi$5;->val$backBtnOnClickListener:Landroid/view/View$OnClickListener;

    invoke-interface {v5, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 193
    return-void

    .line 189
    :cond_1
    const/4 v5, 0x0

    goto :goto_0
.end method
