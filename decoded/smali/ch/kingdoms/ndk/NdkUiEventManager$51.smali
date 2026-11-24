.class Lch/kingdoms/ndk/NdkUiEventManager$51;
.super Ljava/lang/Object;
.source "NdkUiEventManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lch/kingdoms/ndk/NdkUiEventManager;->skipTypingAndScrollText()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 1429
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1433
    invoke-static {}, Lch/kingdoms/ndk/NdkUiEventManager;->access$21()Lch/android/api/ui/ChTypingAndScrollTextView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1434
    invoke-static {}, Lch/kingdoms/ndk/NdkUiEventManager;->endTypingAndScrollText()V

    .line 1435
    invoke-static {}, Lch/kingdoms/ndk/NdkUiEventManager;->access$21()Lch/android/api/ui/ChTypingAndScrollTextView;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lch/android/api/ui/ChTypingAndScrollTextView;->setVisibility(I)V

    .line 1437
    :cond_0
    return-void
.end method
