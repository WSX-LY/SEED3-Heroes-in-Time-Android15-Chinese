.class Lch/kingdoms/android/ui/MainStateUi$11$1;
.super Ljava/lang/Object;
.source "MainStateUi.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lch/kingdoms/android/ui/MainStateUi$11;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private isClick:Z

.field final synthetic this$1:Lch/kingdoms/android/ui/MainStateUi$11;


# direct methods
.method constructor <init>(Lch/kingdoms/android/ui/MainStateUi$11;)V
    .locals 1

    .prologue
    .line 1
    iput-object p1, p0, Lch/kingdoms/android/ui/MainStateUi$11$1;->this$1:Lch/kingdoms/android/ui/MainStateUi$11;

    .line 316
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 317
    const/4 v0, 0x0

    iput-boolean v0, p0, Lch/kingdoms/android/ui/MainStateUi$11$1;->isClick:Z

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 321
    iget-boolean v0, p0, Lch/kingdoms/android/ui/MainStateUi$11$1;->isClick:Z

    if-nez v0, :cond_0

    .line 322
    const/4 v0, 0x1

    iput-boolean v0, p0, Lch/kingdoms/android/ui/MainStateUi$11$1;->isClick:Z

    .line 323
    invoke-static {}, Lch/android/api/ui/ChViewGen;->closePopUpView()V

    .line 324
    invoke-static {}, Lch/kingdoms/ndk/NdkUiEventManager;->enterDungeon()V

    .line 326
    :cond_0
    return-void
.end method
