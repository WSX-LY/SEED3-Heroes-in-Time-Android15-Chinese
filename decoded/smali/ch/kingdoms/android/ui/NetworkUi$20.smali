.class Lch/kingdoms/android/ui/NetworkUi$20;
.super Ljava/lang/Object;
.source "NetworkUi.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lch/kingdoms/android/ui/NetworkUi;->popUpMainTypeMenu()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lch/kingdoms/android/ui/NetworkUi;


# direct methods
.method constructor <init>(Lch/kingdoms/android/ui/NetworkUi;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lch/kingdoms/android/ui/NetworkUi$20;->this$0:Lch/kingdoms/android/ui/NetworkUi;

    .line 1763
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 1767
    invoke-static {}, Lch/android/api/ui/ChViewGen;->closePopUpView()V

    .line 1768
    iget-object v0, p0, Lch/kingdoms/android/ui/NetworkUi$20;->this$0:Lch/kingdoms/android/ui/NetworkUi;

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    invoke-static {v0, v1}, Lch/kingdoms/android/ui/NetworkUi;->access$32(Lch/kingdoms/android/ui/NetworkUi;I)V

    .line 1769
    return-void
.end method
