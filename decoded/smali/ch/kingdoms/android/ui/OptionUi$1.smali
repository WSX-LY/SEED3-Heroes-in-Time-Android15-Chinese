.class Lch/kingdoms/android/ui/OptionUi$1;
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

.field private final synthetic val$soundBtn:Lch/android/api/ui/ChOnOffButton;


# direct methods
.method constructor <init>(Lch/kingdoms/android/ui/OptionUi;Lch/android/api/ui/ChOnOffButton;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lch/kingdoms/android/ui/OptionUi$1;->this$0:Lch/kingdoms/android/ui/OptionUi;

    iput-object p2, p0, Lch/kingdoms/android/ui/OptionUi$1;->val$soundBtn:Lch/android/api/ui/ChOnOffButton;

    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 109
    iget-object v1, p0, Lch/kingdoms/android/ui/OptionUi$1;->val$soundBtn:Lch/android/api/ui/ChOnOffButton;

    invoke-virtual {v1}, Lch/android/api/ui/ChOnOffButton;->click()V

    .line 110
    iget-object v1, p0, Lch/kingdoms/android/ui/OptionUi$1;->val$soundBtn:Lch/android/api/ui/ChOnOffButton;

    invoke-virtual {v1}, Lch/android/api/ui/ChOnOffButton;->isOn()Z

    move-result v0

    .line 111
    .local v0, "isOn":Z
    invoke-static {v0}, Lch/kingdoms/ndk/NdkSoundManager;->setSoundOn(Z)V

    .line 112
    const/16 v1, 0x3d

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lch/kingdoms/ndk/NdkSoundManager;->playSound(BI)V

    .line 113
    return-void
.end method
