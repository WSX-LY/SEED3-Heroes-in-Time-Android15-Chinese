.class Lch/kingdoms/android/ui/PrivateWareHouseUi$PrivateWareHouseView$2;
.super Ljava/lang/Object;
.source "PrivateWareHouseUi.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lch/kingdoms/android/ui/PrivateWareHouseUi$PrivateWareHouseView;->processWareHouse(ZLch/kingdoms/ndk/data/Inven$Item;)Z
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
    iput-object p1, p0, Lch/kingdoms/android/ui/PrivateWareHouseUi$PrivateWareHouseView$2;->this$1:Lch/kingdoms/android/ui/PrivateWareHouseUi$PrivateWareHouseView;

    .line 199
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 200
    const/4 v0, 0x0

    iput-boolean v0, p0, Lch/kingdoms/android/ui/PrivateWareHouseUi$PrivateWareHouseView$2;->isClicked:Z

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 204
    iget-boolean v0, p0, Lch/kingdoms/android/ui/PrivateWareHouseUi$PrivateWareHouseView$2;->isClicked:Z

    if-nez v0, :cond_0

    .line 205
    const/4 v0, 0x1

    iput-boolean v0, p0, Lch/kingdoms/android/ui/PrivateWareHouseUi$PrivateWareHouseView$2;->isClicked:Z

    .line 206
    invoke-static {}, Lch/android/api/ui/ChViewGen;->closePopUpView()V

    .line 207
    iget-object v0, p0, Lch/kingdoms/android/ui/PrivateWareHouseUi$PrivateWareHouseView$2;->this$1:Lch/kingdoms/android/ui/PrivateWareHouseUi$PrivateWareHouseView;

    invoke-static {v0}, Lch/kingdoms/android/ui/PrivateWareHouseUi$PrivateWareHouseView;->access$3(Lch/kingdoms/android/ui/PrivateWareHouseUi$PrivateWareHouseView;)Lch/kingdoms/android/ui/PrivateWareHouseUi;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lch/kingdoms/android/ui/PrivateWareHouseUi;->access$6(Lch/kingdoms/android/ui/PrivateWareHouseUi;Z)V

    .line 209
    :cond_0
    return-void
.end method
