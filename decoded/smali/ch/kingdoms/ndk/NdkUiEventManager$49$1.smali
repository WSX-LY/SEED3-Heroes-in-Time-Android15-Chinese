.class Lch/kingdoms/ndk/NdkUiEventManager$49$1;
.super Ljava/lang/Object;
.source "NdkUiEventManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lch/kingdoms/ndk/NdkUiEventManager$49;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lch/kingdoms/ndk/NdkUiEventManager$49;


# direct methods
.method constructor <init>(Lch/kingdoms/ndk/NdkUiEventManager$49;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lch/kingdoms/ndk/NdkUiEventManager$49$1;->this$1:Lch/kingdoms/ndk/NdkUiEventManager$49;

    .line 1332
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 1336
    invoke-static {}, Lch/kingdoms/ndk/NdkUiEventManager;->access$19()Lch/kingdoms/ndk/NdkUiEventManager$RaceResultView;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1337
    const/4 v1, 0x1

    new-array v0, v1, [I

    const/4 v1, 0x0

    const v2, 0xc350

    aput v2, v0, v1

    .line 1338
    .local v0, "ids":[I
    invoke-static {v0}, Lch/android/api/ui/ChViewGen;->closePopUpViews([I)V

    .line 1339
    const/4 v1, 0x0

    invoke-static {v1}, Lch/kingdoms/ndk/NdkUiEventManager;->access$20(Lch/kingdoms/ndk/NdkUiEventManager$RaceResultView;)V

    .line 1341
    .end local v0    # "ids":[I
    :cond_0
    return-void
.end method
