.class Lch/kingdoms/android/ui/OptionUi$2;
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

.field private final synthetic val$vibBtn:Lch/android/api/ui/ChOnOffButton;


# direct methods
.method constructor <init>(Lch/kingdoms/android/ui/OptionUi;Lch/android/api/ui/ChOnOffButton;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lch/kingdoms/android/ui/OptionUi$2;->this$0:Lch/kingdoms/android/ui/OptionUi;

    iput-object p2, p0, Lch/kingdoms/android/ui/OptionUi$2;->val$vibBtn:Lch/android/api/ui/ChOnOffButton;

    .line 119
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 123
    iget-object v1, p0, Lch/kingdoms/android/ui/OptionUi$2;->val$vibBtn:Lch/android/api/ui/ChOnOffButton;

    invoke-virtual {v1}, Lch/android/api/ui/ChOnOffButton;->click()V

    .line 124
    iget-object v1, p0, Lch/kingdoms/android/ui/OptionUi$2;->val$vibBtn:Lch/android/api/ui/ChOnOffButton;

    invoke-virtual {v1}, Lch/android/api/ui/ChOnOffButton;->isOn()Z

    move-result v0

    .line 125
    .local v0, "isVibOn":Z
    if-eqz v0, :cond_1

    const/4 v1, 0x1

    :goto_0
    invoke-static {v1}, Lch/kingdoms/ndk/NdkUiEventManager;->setVibration(I)V

    .line 126
    if-eqz v0, :cond_0

    .line 127
    const/4 v1, 0x2

    invoke-static {v1}, Lch/kingdoms/ndk/NdkVibManager;->vibe(I)V

    .line 129
    :cond_0
    return-void

    .line 125
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method
