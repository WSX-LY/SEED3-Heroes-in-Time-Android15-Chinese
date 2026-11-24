.class Lch/kingdoms/android/ui/MainStateUi$15;
.super Ljava/lang/Object;
.source "MainStateUi.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lch/kingdoms/android/ui/MainStateUi;->showWareHouseUi(Landroid/app/Activity;Lch/android/api/util/DisplayInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$_activity:Landroid/app/Activity;

.field private final synthetic val$_di:Lch/android/api/util/DisplayInfo;


# direct methods
.method constructor <init>(Landroid/app/Activity;Lch/android/api/util/DisplayInfo;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lch/kingdoms/android/ui/MainStateUi$15;->val$_activity:Landroid/app/Activity;

    iput-object p2, p0, Lch/kingdoms/android/ui/MainStateUi$15;->val$_di:Lch/android/api/util/DisplayInfo;

    .line 401
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v5, -0x1

    .line 405
    iget-object v0, p0, Lch/kingdoms/android/ui/MainStateUi$15;->val$_activity:Landroid/app/Activity;

    new-instance v1, Lch/kingdoms/android/ui/PrivateWareHouseUi;

    iget-object v2, p0, Lch/kingdoms/android/ui/MainStateUi$15;->val$_activity:Landroid/app/Activity;

    iget-object v3, p0, Lch/kingdoms/android/ui/MainStateUi$15;->val$_di:Lch/android/api/util/DisplayInfo;

    const/4 v4, 0x5

    invoke-direct {v1, v2, v3, v4}, Lch/kingdoms/android/ui/PrivateWareHouseUi;-><init>(Landroid/app/Activity;Lch/android/api/util/DisplayInfo;I)V

    invoke-virtual {v1}, Lch/kingdoms/android/ui/PrivateWareHouseUi;->getView()Landroid/view/View;

    move-result-object v1

    .line 406
    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v2, v5, v5}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 405
    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 407
    invoke-static {}, Lch/android/api/ui/ChViewGen;->closePopUpView()V

    .line 408
    return-void
.end method
