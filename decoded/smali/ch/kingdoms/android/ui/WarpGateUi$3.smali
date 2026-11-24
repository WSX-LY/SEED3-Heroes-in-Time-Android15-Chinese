.class Lch/kingdoms/android/ui/WarpGateUi$3;
.super Ljava/lang/Object;
.source "WarpGateUi.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lch/kingdoms/android/ui/WarpGateUi;->popUp()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lch/kingdoms/android/ui/WarpGateUi;


# direct methods
.method constructor <init>(Lch/kingdoms/android/ui/WarpGateUi;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lch/kingdoms/android/ui/WarpGateUi$3;->this$0:Lch/kingdoms/android/ui/WarpGateUi;

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 79
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const/16 v1, 0x2742

    if-ne v0, v1, :cond_0

    .line 80
    invoke-static {}, Lch/android/api/ui/ChViewGen;->closePopUpView()V

    .line 84
    :goto_0
    return-void

    .line 82
    :cond_0
    invoke-static {}, Lch/android/api/ui/ChViewGen;->closePopUpView()V

    goto :goto_0
.end method
