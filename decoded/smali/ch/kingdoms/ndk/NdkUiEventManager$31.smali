.class Lch/kingdoms/ndk/NdkUiEventManager$31;
.super Ljava/lang/Object;
.source "NdkUiEventManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lch/kingdoms/ndk/NdkUiEventManager;->setColosseumVisibility(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$visible:I


# direct methods
.method constructor <init>(I)V
    .locals 0

    .prologue
    .line 1
    iput p1, p0, Lch/kingdoms/ndk/NdkUiEventManager$31;->val$visible:I

    .line 898
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 902
    invoke-static {}, Lch/kingdoms/ndk/NdkUiEventManager;->access$1()Lch/android/api/ui/ChColosseumView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 903
    invoke-static {}, Lch/kingdoms/ndk/NdkUiEventManager;->access$1()Lch/android/api/ui/ChColosseumView;

    move-result-object v0

    iget v1, p0, Lch/kingdoms/ndk/NdkUiEventManager$31;->val$visible:I

    invoke-virtual {v0, v1}, Lch/android/api/ui/ChColosseumView;->setVisibility(I)V

    .line 905
    :cond_0
    return-void
.end method
