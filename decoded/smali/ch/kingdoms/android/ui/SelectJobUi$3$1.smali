.class Lch/kingdoms/android/ui/SelectJobUi$3$1;
.super Ljava/lang/Object;
.source "SelectJobUi.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lch/kingdoms/android/ui/SelectJobUi$3;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private isClicked:Z

.field final synthetic this$1:Lch/kingdoms/android/ui/SelectJobUi$3;


# direct methods
.method constructor <init>(Lch/kingdoms/android/ui/SelectJobUi$3;)V
    .locals 1

    .prologue
    .line 1
    iput-object p1, p0, Lch/kingdoms/android/ui/SelectJobUi$3$1;->this$1:Lch/kingdoms/android/ui/SelectJobUi$3;

    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 114
    const/4 v0, 0x0

    iput-boolean v0, p0, Lch/kingdoms/android/ui/SelectJobUi$3$1;->isClicked:Z

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 118
    iget-boolean v0, p0, Lch/kingdoms/android/ui/SelectJobUi$3$1;->isClicked:Z

    if-nez v0, :cond_0

    .line 119
    const/4 v0, 0x1

    iput-boolean v0, p0, Lch/kingdoms/android/ui/SelectJobUi$3$1;->isClicked:Z

    .line 120
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 132
    :cond_0
    :goto_0
    return-void

    .line 122
    :pswitch_0
    invoke-static {}, Lch/kingdoms/ndk/NdkInputManager;->inputOk()V

    .line 123
    invoke-static {}, Lch/android/api/ui/ChViewGen;->closePopUpView()V

    .line 124
    invoke-static {}, Lch/android/api/ui/ChViewGen;->closePopUpView()V

    goto :goto_0

    .line 127
    :pswitch_1
    invoke-static {}, Lch/kingdoms/ndk/NdkInputManager;->inputCancel()V

    .line 128
    invoke-static {}, Lch/android/api/ui/ChViewGen;->closePopUpView()V

    goto :goto_0

    .line 120
    :pswitch_data_0
    .packed-switch 0x2742
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
