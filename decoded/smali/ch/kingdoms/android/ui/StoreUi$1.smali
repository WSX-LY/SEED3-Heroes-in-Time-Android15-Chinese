.class Lch/kingdoms/android/ui/StoreUi$1;
.super Ljava/lang/Object;
.source "StoreUi.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lch/kingdoms/android/ui/StoreUi;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private isClicked:Z

.field final synthetic this$0:Lch/kingdoms/android/ui/StoreUi;


# direct methods
.method constructor <init>(Lch/kingdoms/android/ui/StoreUi;)V
    .locals 1

    .prologue
    .line 1
    iput-object p1, p0, Lch/kingdoms/android/ui/StoreUi$1;->this$0:Lch/kingdoms/android/ui/StoreUi;

    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 100
    const/4 v0, 0x0

    iput-boolean v0, p0, Lch/kingdoms/android/ui/StoreUi$1;->isClicked:Z

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 104
    iget-boolean v0, p0, Lch/kingdoms/android/ui/StoreUi$1;->isClicked:Z

    if-nez v0, :cond_0

    .line 105
    const/4 v0, 0x1

    iput-boolean v0, p0, Lch/kingdoms/android/ui/StoreUi$1;->isClicked:Z

    .line 106
    invoke-static {}, Lch/android/api/ui/ChViewGen;->closePopUpView()V

    .line 107
    iget-object v0, p0, Lch/kingdoms/android/ui/StoreUi$1;->this$0:Lch/kingdoms/android/ui/StoreUi;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lch/kingdoms/android/ui/StoreUi;->access$5(Lch/kingdoms/android/ui/StoreUi;Z)V

    .line 109
    :cond_0
    return-void
.end method
