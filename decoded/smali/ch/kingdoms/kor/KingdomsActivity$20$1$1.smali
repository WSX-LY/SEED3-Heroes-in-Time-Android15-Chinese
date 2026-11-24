.class Lch/kingdoms/kor/KingdomsActivity$20$1$1;
.super Ljava/lang/Object;
.source "KingdomsActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lch/kingdoms/kor/KingdomsActivity$20$1;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private isClicked:Z

.field final synthetic this$2:Lch/kingdoms/kor/KingdomsActivity$20$1;


# direct methods
.method constructor <init>(Lch/kingdoms/kor/KingdomsActivity$20$1;)V
    .locals 1

    .prologue
    .line 1
    iput-object p1, p0, Lch/kingdoms/kor/KingdomsActivity$20$1$1;->this$2:Lch/kingdoms/kor/KingdomsActivity$20$1;

    .line 611
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 612
    const/4 v0, 0x0

    iput-boolean v0, p0, Lch/kingdoms/kor/KingdomsActivity$20$1$1;->isClicked:Z

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 616
    iget-boolean v0, p0, Lch/kingdoms/kor/KingdomsActivity$20$1$1;->isClicked:Z

    if-nez v0, :cond_0

    .line 617
    const/4 v0, 0x1

    iput-boolean v0, p0, Lch/kingdoms/kor/KingdomsActivity$20$1$1;->isClicked:Z

    .line 618
    invoke-static {}, Lch/android/api/ui/ChViewGen;->closePopUpView()V

    .line 619
    invoke-static {}, Lch/kingdoms/ndk/NdkInputManager;->inputCancel()V

    .line 621
    :cond_0
    return-void
.end method
