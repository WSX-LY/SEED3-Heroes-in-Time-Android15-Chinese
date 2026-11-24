.class Lch/android/api/ui/ChPopUpGameTipView$1;
.super Ljava/lang/Object;
.source "ChPopUpGameTipView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lch/android/api/ui/ChPopUpGameTipView;-><init>(Landroid/content/Context;Lch/android/api/util/DisplayInfo;Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lch/android/api/ui/ChPopUpGameTipView;

.field private final synthetic val$_isAutoClick:Z


# direct methods
.method constructor <init>(Lch/android/api/ui/ChPopUpGameTipView;Z)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lch/android/api/ui/ChPopUpGameTipView$1;->this$0:Lch/android/api/ui/ChPopUpGameTipView;

    iput-boolean p2, p0, Lch/android/api/ui/ChPopUpGameTipView$1;->val$_isAutoClick:Z

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 22
    iget-boolean v0, p0, Lch/android/api/ui/ChPopUpGameTipView$1;->val$_isAutoClick:Z

    if-eqz v0, :cond_0

    .line 24
    invoke-static {}, Lch/kingdoms/ndk/NdkInputManager;->inputOk()V

    .line 26
    :cond_0
    invoke-static {}, Lch/android/api/ui/ChViewGen;->closePopUpView()V

    .line 27
    return-void
.end method
