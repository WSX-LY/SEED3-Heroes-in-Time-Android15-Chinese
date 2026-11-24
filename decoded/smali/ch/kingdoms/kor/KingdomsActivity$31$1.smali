.class Lch/kingdoms/kor/KingdomsActivity$31$1;
.super Ljava/lang/Object;
.source "KingdomsActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lch/kingdoms/kor/KingdomsActivity$31;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private isClicked:Z

.field final synthetic this$1:Lch/kingdoms/kor/KingdomsActivity$31;


# direct methods
.method constructor <init>(Lch/kingdoms/kor/KingdomsActivity$31;)V
    .locals 1

    .prologue
    .line 1
    iput-object p1, p0, Lch/kingdoms/kor/KingdomsActivity$31$1;->this$1:Lch/kingdoms/kor/KingdomsActivity$31;

    .line 914
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 915
    const/4 v0, 0x0

    iput-boolean v0, p0, Lch/kingdoms/kor/KingdomsActivity$31$1;->isClicked:Z

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 919
    iget-boolean v0, p0, Lch/kingdoms/kor/KingdomsActivity$31$1;->isClicked:Z

    if-nez v0, :cond_0

    .line 920
    const/4 v0, 0x1

    iput-boolean v0, p0, Lch/kingdoms/kor/KingdomsActivity$31$1;->isClicked:Z

    .line 921
    invoke-static {}, Lch/android/api/ui/ChViewGen;->closePopUpView()V

    .line 922
    invoke-static {}, Lch/kingdoms/ndk/NdkInputManager;->inputCancel()V

    .line 924
    :cond_0
    return-void
.end method
