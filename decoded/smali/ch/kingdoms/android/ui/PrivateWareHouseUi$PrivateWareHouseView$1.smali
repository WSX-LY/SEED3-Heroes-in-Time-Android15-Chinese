.class Lch/kingdoms/android/ui/PrivateWareHouseUi$PrivateWareHouseView$1;
.super Ljava/lang/Object;
.source "PrivateWareHouseUi.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lch/kingdoms/android/ui/PrivateWareHouseUi$PrivateWareHouseView;-><init>(Lch/kingdoms/android/ui/PrivateWareHouseUi;Landroid/content/Context;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private isClicked:Z

.field final synthetic this$1:Lch/kingdoms/android/ui/PrivateWareHouseUi$PrivateWareHouseView;


# direct methods
.method constructor <init>(Lch/kingdoms/android/ui/PrivateWareHouseUi$PrivateWareHouseView;)V
    .locals 1

    .prologue
    .line 1
    iput-object p1, p0, Lch/kingdoms/android/ui/PrivateWareHouseUi$PrivateWareHouseView$1;->this$1:Lch/kingdoms/android/ui/PrivateWareHouseUi$PrivateWareHouseView;

    .line 121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 122
    const/4 v0, 0x0

    iput-boolean v0, p0, Lch/kingdoms/android/ui/PrivateWareHouseUi$PrivateWareHouseView$1;->isClicked:Z

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 126
    iget-object v1, p0, Lch/kingdoms/android/ui/PrivateWareHouseUi$PrivateWareHouseView$1;->this$1:Lch/kingdoms/android/ui/PrivateWareHouseUi$PrivateWareHouseView;

    invoke-static {v1}, Lch/kingdoms/android/ui/PrivateWareHouseUi$PrivateWareHouseView;->access$3(Lch/kingdoms/android/ui/PrivateWareHouseUi$PrivateWareHouseView;)Lch/kingdoms/android/ui/PrivateWareHouseUi;

    move-result-object v1

    invoke-static {v1}, Lch/kingdoms/android/ui/PrivateWareHouseUi;->access$3(Lch/kingdoms/android/ui/PrivateWareHouseUi;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lch/kingdoms/android/ui/PrivateWareHouseUi$PrivateWareHouseView$1;->isClicked:Z

    if-nez v1, :cond_1

    .line 127
    const/4 v1, 0x1

    iput-boolean v1, p0, Lch/kingdoms/android/ui/PrivateWareHouseUi$PrivateWareHouseView$1;->isClicked:Z

    .line 128
    iget-object v1, p0, Lch/kingdoms/android/ui/PrivateWareHouseUi$PrivateWareHouseView$1;->this$1:Lch/kingdoms/android/ui/PrivateWareHouseUi$PrivateWareHouseView;

    invoke-static {v1}, Lch/kingdoms/android/ui/PrivateWareHouseUi$PrivateWareHouseView;->access$3(Lch/kingdoms/android/ui/PrivateWareHouseUi$PrivateWareHouseView;)Lch/kingdoms/android/ui/PrivateWareHouseUi;

    move-result-object v1

    invoke-static {v1}, Lch/kingdoms/android/ui/PrivateWareHouseUi;->access$4(Lch/kingdoms/android/ui/PrivateWareHouseUi;)Lch/android/api/ui/ChRelativeLayout;

    move-result-object v1

    invoke-virtual {v1}, Lch/android/api/ui/ChRelativeLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 129
    .local v0, "vg":Landroid/view/ViewGroup;
    if-eqz v0, :cond_0

    .line 130
    iget-object v1, p0, Lch/kingdoms/android/ui/PrivateWareHouseUi$PrivateWareHouseView$1;->this$1:Lch/kingdoms/android/ui/PrivateWareHouseUi$PrivateWareHouseView;

    invoke-static {v1}, Lch/kingdoms/android/ui/PrivateWareHouseUi$PrivateWareHouseView;->access$3(Lch/kingdoms/android/ui/PrivateWareHouseUi$PrivateWareHouseView;)Lch/kingdoms/android/ui/PrivateWareHouseUi;

    move-result-object v1

    invoke-static {v1}, Lch/kingdoms/android/ui/PrivateWareHouseUi;->access$4(Lch/kingdoms/android/ui/PrivateWareHouseUi;)Lch/android/api/ui/ChRelativeLayout;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 132
    :cond_0
    iget-object v1, p0, Lch/kingdoms/android/ui/PrivateWareHouseUi$PrivateWareHouseView$1;->this$1:Lch/kingdoms/android/ui/PrivateWareHouseUi$PrivateWareHouseView;

    invoke-static {v1}, Lch/kingdoms/android/ui/PrivateWareHouseUi$PrivateWareHouseView;->access$3(Lch/kingdoms/android/ui/PrivateWareHouseUi$PrivateWareHouseView;)Lch/kingdoms/android/ui/PrivateWareHouseUi;

    move-result-object v1

    invoke-static {v1}, Lch/kingdoms/android/ui/PrivateWareHouseUi;->access$5(Lch/kingdoms/android/ui/PrivateWareHouseUi;)Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lch/kingdoms/android/ui/PrivateWareHouseUi$PrivateWareHouseView$1;->this$1:Lch/kingdoms/android/ui/PrivateWareHouseUi$PrivateWareHouseView;

    invoke-static {v2}, Lch/kingdoms/android/ui/PrivateWareHouseUi$PrivateWareHouseView;->access$3(Lch/kingdoms/android/ui/PrivateWareHouseUi$PrivateWareHouseView;)Lch/kingdoms/android/ui/PrivateWareHouseUi;

    move-result-object v2

    invoke-static {v2}, Lch/kingdoms/android/ui/PrivateWareHouseUi;->access$0(Lch/kingdoms/android/ui/PrivateWareHouseUi;)Lch/android/api/util/DisplayInfo;

    move-result-object v2

    invoke-static {v1, v2}, Lch/kingdoms/android/ui/MainStateUi;->showWareHouseUi(Landroid/app/Activity;Lch/android/api/util/DisplayInfo;)V

    .line 134
    .end local v0    # "vg":Landroid/view/ViewGroup;
    :cond_1
    return-void
.end method
