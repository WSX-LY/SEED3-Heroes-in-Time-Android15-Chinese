.class Lch/kingdoms/android/ui/MainStateUi$7;
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

.field private final synthetic val$activity:Landroid/app/Activity;


# direct methods
.method constructor <init>(Landroid/app/Activity;)V
    .locals 1

    .prologue
    .line 1
    iput-object p1, p0, Lch/kingdoms/android/ui/MainStateUi$7;->val$activity:Landroid/app/Activity;

    .line 167
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 168
    const/4 v0, 0x0

    iput-boolean v0, p0, Lch/kingdoms/android/ui/MainStateUi$7;->isClick:Z

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 172
    iget-boolean v0, p0, Lch/kingdoms/android/ui/MainStateUi$7;->isClick:Z

    if-nez v0, :cond_0

    .line 173
    const/4 v0, 0x1

    iput-boolean v0, p0, Lch/kingdoms/android/ui/MainStateUi$7;->isClick:Z

    .line 174
    invoke-static {}, Lch/android/api/ui/ChViewGen;->closePopUpView()V

    .line 175
    invoke-static {}, Lch/kingdoms/ndk/NdkInputManager;->inputOk()V

    .line 176
    iget-object v0, p0, Lch/kingdoms/android/ui/MainStateUi$7;->val$activity:Landroid/app/Activity;

    invoke-static {v0}, Lch/kingdoms/android/ui/MainStateUi;->access$1(Landroid/app/Activity;)V

    .line 178
    :cond_0
    return-void
.end method
