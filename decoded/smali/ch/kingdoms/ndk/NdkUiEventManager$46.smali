.class Lch/kingdoms/ndk/NdkUiEventManager$46;
.super Ljava/lang/Object;
.source "NdkUiEventManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lch/kingdoms/ndk/NdkUiEventManager;->showNpcName(III)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$strShorts:[S

.field private final synthetic val$x:I

.field private final synthetic val$y:I


# direct methods
.method constructor <init>([SII)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lch/kingdoms/ndk/NdkUiEventManager$46;->val$strShorts:[S

    iput p2, p0, Lch/kingdoms/ndk/NdkUiEventManager$46;->val$x:I

    iput p3, p0, Lch/kingdoms/ndk/NdkUiEventManager$46;->val$y:I

    .line 1262
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 1268
    :try_start_0
    invoke-static {}, Lch/kingdoms/ndk/NdkUiEventManager;->access$18()Lch/kingdoms/android/ui/CaptionUi;

    move-result-object v1

    new-instance v2, Ljava/lang/String;

    iget-object v3, p0, Lch/kingdoms/ndk/NdkUiEventManager$46;->val$strShorts:[S

    invoke-static {v3}, Lch/kingdoms/ndk/NdkTextLoader;->shortArrayToByteArray([S)[B

    move-result-object v3

    const-string v4, "UTF-16"

    invoke-direct {v2, v3, v4}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    iget v3, p0, Lch/kingdoms/ndk/NdkUiEventManager$46;->val$x:I

    int-to-float v3, v3

    iget v4, p0, Lch/kingdoms/ndk/NdkUiEventManager$46;->val$y:I

    int-to-float v4, v4

    invoke-virtual {v1, v2, v3, v4}, Lch/kingdoms/android/ui/CaptionUi;->showNpcName(Ljava/lang/String;FF)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1273
    :goto_0
    return-void

    .line 1269
    :catch_0
    move-exception v0

    .line 1271
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_0
.end method
