.class Lch/kingdoms/kor/KingdomsActivity$22$1$1$1;
.super Ljava/lang/Object;
.source "KingdomsActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lch/kingdoms/kor/KingdomsActivity$22$1$1;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private isClick:Z

.field final synthetic this$3:Lch/kingdoms/kor/KingdomsActivity$22$1$1;


# direct methods
.method constructor <init>(Lch/kingdoms/kor/KingdomsActivity$22$1$1;)V
    .locals 1

    .prologue
    .line 1
    iput-object p1, p0, Lch/kingdoms/kor/KingdomsActivity$22$1$1$1;->this$3:Lch/kingdoms/kor/KingdomsActivity$22$1$1;

    .line 715
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 716
    const/4 v0, 0x0

    iput-boolean v0, p0, Lch/kingdoms/kor/KingdomsActivity$22$1$1$1;->isClick:Z

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 721
    iget-boolean v0, p0, Lch/kingdoms/kor/KingdomsActivity$22$1$1$1;->isClick:Z

    if-nez v0, :cond_1

    .line 722
    const/4 v0, 0x1

    iput-boolean v0, p0, Lch/kingdoms/kor/KingdomsActivity$22$1$1$1;->isClick:Z

    .line 723
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const/16 v1, 0x2742

    if-ne v0, v1, :cond_0

    .line 724
    const/4 v0, 0x0

    invoke-static {v0}, Lch/kingdoms/ndk/NdkUiEventManager;->reviveHero(Z)V

    .line 726
    :cond_0
    invoke-static {}, Lch/android/api/ui/ChViewGen;->closePopUpView()V

    .line 728
    :cond_1
    return-void
.end method
