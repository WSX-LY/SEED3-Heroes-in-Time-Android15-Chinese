.class Lch/kingdoms/ndk/NdkUiEventManager$14;
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
    .line 1203
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 1207
    sget-object v0, Lch/kingdoms/ndk/NdkUiEventManager;->s_prisonBreakTimeView:Lch/android/api/ui/ChPrisonBreakTimeView;

    if-eqz v0, :cond_0

    .line 1208
    sget-object v0, Lch/kingdoms/ndk/NdkUiEventManager;->s_prisonBreakTimeView:Lch/android/api/ui/ChPrisonBreakTimeView;

    invoke-virtual {v0}, Lch/android/api/ui/ChPrisonBreakTimeView;->invalidate()V

    .line 1210
    :cond_0
    return-void
.end method
