.class Lch/android/api/ui/ChPopUpAlarmView$1;
.super Ljava/lang/Object;
.source "ChPopUpAlarmView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lch/android/api/ui/ChPopUpAlarmView;-><init>(Landroid/content/Context;Lch/android/api/util/DisplayInfo;IILjava/lang/String;Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lch/android/api/ui/ChPopUpAlarmView;

.field private final synthetic val$isInputOk:Z


# direct methods
.method constructor <init>(Lch/android/api/ui/ChPopUpAlarmView;Z)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lch/android/api/ui/ChPopUpAlarmView$1;->this$0:Lch/android/api/ui/ChPopUpAlarmView;

    iput-boolean p2, p0, Lch/android/api/ui/ChPopUpAlarmView$1;->val$isInputOk:Z

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 46
    iget-boolean v0, p0, Lch/android/api/ui/ChPopUpAlarmView$1;->val$isInputOk:Z

    if-eqz v0, :cond_0

    .line 47
    invoke-static {}, Lch/kingdoms/ndk/NdkInputManager;->inputOk()V

    .line 49
    :cond_0
    invoke-static {}, Lch/android/api/ui/ChViewGen;->closePopUpView()V

    .line 50
    return-void
.end method
