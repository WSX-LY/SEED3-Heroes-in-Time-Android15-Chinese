.class Lch/kingdoms/android/ui/NetworkUi$9$2;
.super Ljava/lang/Object;
.source "NetworkUi.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lch/kingdoms/android/ui/NetworkUi$9;->onResult(Lch/android/api/network/ChResultPacket;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lch/kingdoms/android/ui/NetworkUi$9;


# direct methods
.method constructor <init>(Lch/kingdoms/android/ui/NetworkUi$9;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lch/kingdoms/android/ui/NetworkUi$9$2;->this$1:Lch/kingdoms/android/ui/NetworkUi$9;

    .line 488
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 492
    iget-object v0, p0, Lch/kingdoms/android/ui/NetworkUi$9$2;->this$1:Lch/kingdoms/android/ui/NetworkUi$9;

    invoke-static {v0}, Lch/kingdoms/android/ui/NetworkUi$9;->access$0(Lch/kingdoms/android/ui/NetworkUi$9;)Lch/kingdoms/android/ui/NetworkUi;

    move-result-object v0

    invoke-static {v0}, Lch/kingdoms/android/ui/NetworkUi;->access$23(Lch/kingdoms/android/ui/NetworkUi;)V

    .line 493
    return-void
.end method
