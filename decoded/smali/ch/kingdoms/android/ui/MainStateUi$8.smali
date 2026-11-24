.class Lch/kingdoms/android/ui/MainStateUi$8;
.super Ljava/lang/Object;
.source "MainStateUi.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lch/kingdoms/android/ui/MainStateUi;->popUpColosseumOrDungeon(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private isClick:Z

.field private final synthetic val$activity:Landroid/app/Activity;


# direct methods
.method constructor <init>(Landroid/app/Activity;)V
    .locals 1

    .prologue
    .line 1
    iput-object p1, p0, Lch/kingdoms/android/ui/MainStateUi$8;->val$activity:Landroid/app/Activity;

    .line 204
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 205
    const/4 v0, 0x0

    iput-boolean v0, p0, Lch/kingdoms/android/ui/MainStateUi$8;->isClick:Z

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v1, 0x1

    .line 209
    iget-boolean v0, p0, Lch/kingdoms/android/ui/MainStateUi$8;->isClick:Z

    if-nez v0, :cond_0

    .line 210
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 230
    :cond_0
    :goto_0
    return-void

    .line 212
    :sswitch_0
    iput-boolean v1, p0, Lch/kingdoms/android/ui/MainStateUi$8;->isClick:Z

    .line 213
    invoke-static {}, Lch/android/api/ui/ChViewGen;->closePopUpView()V

    .line 215
    iget-object v0, p0, Lch/kingdoms/android/ui/MainStateUi$8;->val$activity:Landroid/app/Activity;

    invoke-static {v0, v1}, Lch/kingdoms/android/ui/MainStateUi;->popUpColosseumUi(Landroid/app/Activity;Z)V

    goto :goto_0

    .line 218
    :sswitch_1
    iput-boolean v1, p0, Lch/kingdoms/android/ui/MainStateUi$8;->isClick:Z

    .line 219
    invoke-static {}, Lch/android/api/ui/ChViewGen;->closePopUpView()V

    .line 221
    iget-object v0, p0, Lch/kingdoms/android/ui/MainStateUi$8;->val$activity:Landroid/app/Activity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lch/kingdoms/android/ui/MainStateUi;->popUpColosseumUi(Landroid/app/Activity;Z)V

    goto :goto_0

    .line 224
    :sswitch_2
    iput-boolean v1, p0, Lch/kingdoms/android/ui/MainStateUi$8;->isClick:Z

    .line 225
    invoke-static {}, Lch/android/api/ui/ChViewGen;->closePopUpView()V

    .line 226
    invoke-static {}, Lch/kingdoms/ndk/NdkInputManager;->inputCancel()V

    goto :goto_0

    .line 210
    nop

    :sswitch_data_0
    .sparse-switch
        0x64 -> :sswitch_0
        0x65 -> :sswitch_1
        0x2744 -> :sswitch_2
    .end sparse-switch
.end method
