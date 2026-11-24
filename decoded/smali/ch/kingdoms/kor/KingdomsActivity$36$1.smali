.class Lch/kingdoms/kor/KingdomsActivity$36$1;
.super Ljava/lang/Object;
.source "KingdomsActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lch/kingdoms/kor/KingdomsActivity$36;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private isClicked:Z

.field final synthetic this$1:Lch/kingdoms/kor/KingdomsActivity$36;


# direct methods
.method constructor <init>(Lch/kingdoms/kor/KingdomsActivity$36;)V
    .locals 1

    .prologue
    .line 1
    iput-object p1, p0, Lch/kingdoms/kor/KingdomsActivity$36$1;->this$1:Lch/kingdoms/kor/KingdomsActivity$36;

    .line 992
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 993
    const/4 v0, 0x0

    iput-boolean v0, p0, Lch/kingdoms/kor/KingdomsActivity$36$1;->isClicked:Z

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 997
    iget-boolean v0, p0, Lch/kingdoms/kor/KingdomsActivity$36$1;->isClicked:Z

    if-nez v0, :cond_0

    .line 998
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const/16 v1, 0x2742

    if-ne v0, v1, :cond_1

    .line 999
    invoke-static {}, Lch/android/api/ui/ChViewGen;->closePopUpView()V

    .line 1000
    invoke-static {}, Lch/kingdoms/ndk/NdkInputManager;->inputOk()V

    .line 1006
    :cond_0
    :goto_0
    return-void

    .line 1002
    :cond_1
    invoke-static {}, Lch/android/api/ui/ChViewGen;->closePopUpView()V

    .line 1003
    invoke-static {}, Lch/kingdoms/ndk/NdkInputManager;->inputCancel()V

    goto :goto_0
.end method
