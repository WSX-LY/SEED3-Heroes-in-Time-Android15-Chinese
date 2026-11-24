.class Lch/kingdoms/ndk/NdkUiEventManager$40;
.super Ljava/lang/Object;
.source "NdkUiEventManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lch/kingdoms/ndk/NdkUiEventManager;->setPrisonBreakTimeViewVisibility(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$visibility:I


# direct methods
.method constructor <init>(I)V
    .locals 0

    .prologue
    .line 1
    iput p1, p0, Lch/kingdoms/ndk/NdkUiEventManager$40;->val$visibility:I

    .line 1153
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1157
    sget-object v0, Lch/kingdoms/ndk/NdkUiEventManager;->s_prisonBreakTimeView:Lch/android/api/ui/ChPrisonBreakTimeView;

    iget v1, p0, Lch/kingdoms/ndk/NdkUiEventManager$40;->val$visibility:I

    invoke-virtual {v0, v1}, Lch/android/api/ui/ChPrisonBreakTimeView;->setVisibility(I)V

    .line 1158
    return-void
.end method
