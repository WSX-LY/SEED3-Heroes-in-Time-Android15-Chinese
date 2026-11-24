.class Lch/kingdoms/kor/KingdomsActivity$18$1;
.super Ljava/lang/Object;
.source "KingdomsActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lch/kingdoms/kor/KingdomsActivity$18;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lch/kingdoms/kor/KingdomsActivity$18;


# direct methods
.method constructor <init>(Lch/kingdoms/kor/KingdomsActivity$18;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lch/kingdoms/kor/KingdomsActivity$18$1;->this$1:Lch/kingdoms/kor/KingdomsActivity$18;

    .line 564
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 568
    invoke-static {}, Lch/android/api/ui/ChViewGen;->closePopUpView()V

    .line 569
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const/16 v1, 0x2742

    if-ne v0, v1, :cond_0

    .line 570
    invoke-static {}, Lch/kingdoms/ndk/NdkInputManager;->inputOk()V

    .line 574
    :goto_0
    return-void

    .line 572
    :cond_0
    invoke-static {}, Lch/kingdoms/ndk/NdkInputManager;->inputCancel()V

    goto :goto_0
.end method
