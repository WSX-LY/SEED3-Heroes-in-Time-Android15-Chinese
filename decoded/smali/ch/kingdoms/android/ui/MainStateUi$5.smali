.class Lch/kingdoms/android/ui/MainStateUi$5;
.super Ljava/lang/Object;
.source "MainStateUi.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lch/kingdoms/android/ui/MainStateUi;->popUpColosseumUi(Landroid/app/Activity;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private isClick:Z


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 141
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 142
    const/4 v0, 0x0

    iput-boolean v0, p0, Lch/kingdoms/android/ui/MainStateUi$5;->isClick:Z

    .line 1
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 146
    iget-boolean v0, p0, Lch/kingdoms/android/ui/MainStateUi$5;->isClick:Z

    if-nez v0, :cond_0

    .line 147
    const/4 v0, 0x1

    iput-boolean v0, p0, Lch/kingdoms/android/ui/MainStateUi$5;->isClick:Z

    .line 148
    invoke-static {}, Lch/kingdoms/ndk/NdkInputManager;->inputCancel()V

    .line 150
    :cond_0
    return-void
.end method
