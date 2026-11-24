.class Lch/kingdoms/android/ui/NetworkUi$25;
.super Ljava/lang/Object;
.source "NetworkUi.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lch/kingdoms/android/ui/NetworkUi;->popUpOkNetworkView(Landroid/app/Activity;Ljava/lang/String;Landroid/view/View$OnClickListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private isClicked:Z

.field private final synthetic val$isAlreadyPopUped:Z

.field private final synthetic val$ocl:Landroid/view/View$OnClickListener;


# direct methods
.method constructor <init>(ZLandroid/view/View$OnClickListener;)V
    .locals 1

    .prologue
    .line 1
    iput-boolean p1, p0, Lch/kingdoms/android/ui/NetworkUi$25;->val$isAlreadyPopUped:Z

    iput-object p2, p0, Lch/kingdoms/android/ui/NetworkUi$25;->val$ocl:Landroid/view/View$OnClickListener;

    .line 2500
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2501
    const/4 v0, 0x0

    iput-boolean v0, p0, Lch/kingdoms/android/ui/NetworkUi$25;->isClicked:Z

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 2505
    iget-boolean v0, p0, Lch/kingdoms/android/ui/NetworkUi$25;->isClicked:Z

    if-nez v0, :cond_0

    .line 2506
    const/4 v0, 0x1

    iput-boolean v0, p0, Lch/kingdoms/android/ui/NetworkUi$25;->isClicked:Z

    .line 2507
    invoke-static {}, Lch/android/api/ui/ChViewGen;->closePopUpView()V

    .line 2509
    :cond_0
    iget-boolean v0, p0, Lch/kingdoms/android/ui/NetworkUi$25;->val$isAlreadyPopUped:Z

    if-nez v0, :cond_1

    .line 2510
    const/4 v0, 0x0

    invoke-static {v0}, Lch/kingdoms/android/ui/NetworkUi;->access$11(Z)V

    .line 2512
    :cond_1
    iget-object v0, p0, Lch/kingdoms/android/ui/NetworkUi$25;->val$ocl:Landroid/view/View$OnClickListener;

    if-eqz v0, :cond_2

    .line 2513
    iget-object v0, p0, Lch/kingdoms/android/ui/NetworkUi$25;->val$ocl:Landroid/view/View$OnClickListener;

    invoke-interface {v0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 2515
    :cond_2
    return-void
.end method
