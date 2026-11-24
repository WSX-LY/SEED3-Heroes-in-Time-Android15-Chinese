.class Lch/android/api/ui/ChCaptionView$CharacterInfo;
.super Ljava/lang/Object;
.source "ChCaptionView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lch/android/api/ui/ChCaptionView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CharacterInfo"
.end annotation


# instance fields
.field public final CharacterResId:I

.field public final MouthResId:I

.field public final MouthX:F

.field public final MouthY:F

.field final synthetic this$0:Lch/android/api/ui/ChCaptionView;


# direct methods
.method public constructor <init>(Lch/android/api/ui/ChCaptionView;FFII)V
    .locals 0
    .param p2, "_mouthX"    # F
    .param p3, "_mouthY"    # F
    .param p4, "_characterResId"    # I
    .param p5, "_mouthResId"    # I

    .prologue
    .line 742
    iput-object p1, p0, Lch/android/api/ui/ChCaptionView$CharacterInfo;->this$0:Lch/android/api/ui/ChCaptionView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 743
    iput p2, p0, Lch/android/api/ui/ChCaptionView$CharacterInfo;->MouthX:F

    .line 744
    iput p3, p0, Lch/android/api/ui/ChCaptionView$CharacterInfo;->MouthY:F

    .line 745
    iput p4, p0, Lch/android/api/ui/ChCaptionView$CharacterInfo;->CharacterResId:I

    .line 746
    iput p5, p0, Lch/android/api/ui/ChCaptionView$CharacterInfo;->MouthResId:I

    .line 747
    return-void
.end method
