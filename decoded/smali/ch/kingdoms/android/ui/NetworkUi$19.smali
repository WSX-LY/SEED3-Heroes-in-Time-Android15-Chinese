.class Lch/kingdoms/android/ui/NetworkUi$19;
.super Ljava/lang/Object;
.source "NetworkUi.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lch/kingdoms/android/ui/NetworkUi;->popUpItemManageMenu()V
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
    iput-object p1, p0, Lch/kingdoms/android/ui/NetworkUi$19;->this$0:Lch/kingdoms/android/ui/NetworkUi;

    .line 1071
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 1075
    invoke-static {}, Lch/android/api/ui/ChViewGen;->closePopUpView()V

    .line 1076
    iget-object v0, p0, Lch/kingdoms/android/ui/NetworkUi$19;->this$0:Lch/kingdoms/android/ui/NetworkUi;

    invoke-static {v0}, Lch/kingdoms/android/ui/NetworkUi;->access$6(Lch/kingdoms/android/ui/NetworkUi;)V

    .line 1077
    return-void
.end method
