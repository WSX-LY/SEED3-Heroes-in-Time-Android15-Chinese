.class Lch/kingdoms/android/ui/MainStateUi$3$1;
.super Ljava/lang/Object;
.source "MainStateUi.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lch/kingdoms/android/ui/MainStateUi$3;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lch/kingdoms/android/ui/MainStateUi$3;


# direct methods
.method constructor <init>(Lch/kingdoms/android/ui/MainStateUi$3;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lch/kingdoms/android/ui/MainStateUi$3$1;->this$1:Lch/kingdoms/android/ui/MainStateUi$3;

    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 104
    invoke-static {}, Lch/android/api/ui/ChViewGen;->closePopUpView()V

    .line 105
    invoke-static {}, Lch/kingdoms/ndk/NdkInputManager;->inputCancel()V

    .line 106
    return-void
.end method
