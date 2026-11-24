.class Lch/kingdoms/android/ui/MainStateUi$9$1;
.super Ljava/lang/Object;
.source "MainStateUi.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lch/kingdoms/android/ui/MainStateUi$9;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lch/kingdoms/android/ui/MainStateUi$9;


# direct methods
.method constructor <init>(Lch/kingdoms/android/ui/MainStateUi$9;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lch/kingdoms/android/ui/MainStateUi$9$1;->this$1:Lch/kingdoms/android/ui/MainStateUi$9;

    .line 251
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 255
    invoke-static {}, Lch/android/api/ui/ChViewGen;->closePopUpView()V

    .line 256
    invoke-static {}, Lch/kingdoms/ndk/NdkInputManager;->inputOk()V

    .line 257
    return-void
.end method
