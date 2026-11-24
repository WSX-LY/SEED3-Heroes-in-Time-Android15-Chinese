.class Lch/kingdoms/android/ui/NetworkUi$6$1;
.super Ljava/lang/Object;
.source "NetworkUi.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lch/kingdoms/android/ui/NetworkUi$6;->onResult(Lch/android/api/network/ChResultPacket;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lch/kingdoms/android/ui/NetworkUi$6;


# direct methods
.method constructor <init>(Lch/kingdoms/android/ui/NetworkUi$6;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lch/kingdoms/android/ui/NetworkUi$6$1;->this$1:Lch/kingdoms/android/ui/NetworkUi$6;

    .line 335
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 339
    invoke-static {}, Lch/android/api/ui/ChViewGen;->closePopUpView()V

    .line 340
    iget-object v0, p0, Lch/kingdoms/android/ui/NetworkUi$6$1;->this$1:Lch/kingdoms/android/ui/NetworkUi$6;

    invoke-static {v0}, Lch/kingdoms/android/ui/NetworkUi$6;->access$0(Lch/kingdoms/android/ui/NetworkUi$6;)Lch/kingdoms/android/ui/NetworkUi;

    move-result-object v0

    invoke-static {v0}, Lch/kingdoms/android/ui/NetworkUi;->access$6(Lch/kingdoms/android/ui/NetworkUi;)V

    .line 341
    return-void
.end method
