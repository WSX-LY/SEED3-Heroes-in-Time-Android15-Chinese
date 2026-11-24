.class Lch/kingdoms/android/ui/network/NewNetworkUi$15$1$1;
.super Ljava/lang/Object;
.source "NewNetworkUi.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lch/kingdoms/android/ui/network/NewNetworkUi$15$1;->onResult(Lch/android/api/network/ChResultPacket;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lch/kingdoms/android/ui/network/NewNetworkUi$15$1;


# direct methods
.method constructor <init>(Lch/kingdoms/android/ui/network/NewNetworkUi$15$1;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lch/kingdoms/android/ui/network/NewNetworkUi$15$1$1;->this$2:Lch/kingdoms/android/ui/network/NewNetworkUi$15$1;

    .line 1179
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 1183
    invoke-static {}, Lch/android/api/ui/ChViewGen;->closePopUpView()V

    .line 1184
    iget-object v0, p0, Lch/kingdoms/android/ui/network/NewNetworkUi$15$1$1;->this$2:Lch/kingdoms/android/ui/network/NewNetworkUi$15$1;

    invoke-static {v0}, Lch/kingdoms/android/ui/network/NewNetworkUi$15$1;->access$0(Lch/kingdoms/android/ui/network/NewNetworkUi$15$1;)Lch/kingdoms/android/ui/network/NewNetworkUi$15;

    move-result-object v0

    invoke-static {v0}, Lch/kingdoms/android/ui/network/NewNetworkUi$15;->access$0(Lch/kingdoms/android/ui/network/NewNetworkUi$15;)Lch/kingdoms/android/ui/network/NewNetworkUi;

    move-result-object v0

    invoke-static {v0}, Lch/kingdoms/android/ui/network/NewNetworkUi;->access$10(Lch/kingdoms/android/ui/network/NewNetworkUi;)V

    .line 1185
    return-void
.end method
