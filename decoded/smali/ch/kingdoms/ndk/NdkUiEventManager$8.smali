.class Lch/kingdoms/ndk/NdkUiEventManager$8;
.super Ljava/lang/Object;
.source "NdkUiEventManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lch/kingdoms/ndk/NdkUiEventManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 1017
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 1021
    invoke-static {}, Lch/kingdoms/ndk/NdkUiEventManager;->access$3()Lch/kingdoms/android/ui/RaceUi;

    move-result-object v0

    invoke-virtual {v0}, Lch/kingdoms/android/ui/RaceUi;->hideDirBtns()V

    .line 1022
    return-void
.end method
