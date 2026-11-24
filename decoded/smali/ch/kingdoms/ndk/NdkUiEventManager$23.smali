.class Lch/kingdoms/ndk/NdkUiEventManager$23;
.super Ljava/lang/Object;
.source "NdkUiEventManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lch/kingdoms/ndk/NdkUiEventManager;->updateColosseumState(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 696
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 700
    invoke-static {}, Lch/android/api/ui/ChViewGen;->closePopUpView()V

    .line 701
    const/4 v0, 0x0

    invoke-static {v0}, Lch/kingdoms/ndk/NdkUiEventManager;->access$11(Lch/android/api/ui/ChColosseumResultView;)V

    .line 702
    return-void
.end method
