.class Lch/kingdoms/android/ui/CaptionUi$ConcreteCaptionView;
.super Lch/android/api/ui/ChCaptionView;
.source "CaptionUi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lch/kingdoms/android/ui/CaptionUi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ConcreteCaptionView"
.end annotation


# instance fields
.field final synthetic this$0:Lch/kingdoms/android/ui/CaptionUi;


# direct methods
.method public constructor <init>(Lch/kingdoms/android/ui/CaptionUi;Landroid/content/Context;Lch/android/api/util/DisplayInfo;)V
    .locals 0
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "_di"    # Lch/android/api/util/DisplayInfo;

    .prologue
    .line 101
    iput-object p1, p0, Lch/kingdoms/android/ui/CaptionUi$ConcreteCaptionView;->this$0:Lch/kingdoms/android/ui/CaptionUi;

    .line 102
    invoke-direct {p0, p2, p3}, Lch/android/api/ui/ChCaptionView;-><init>(Landroid/content/Context;Lch/android/api/util/DisplayInfo;)V

    .line 104
    return-void
.end method
