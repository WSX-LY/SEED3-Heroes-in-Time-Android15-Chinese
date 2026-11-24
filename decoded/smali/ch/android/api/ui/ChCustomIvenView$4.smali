.class Lch/android/api/ui/ChCustomIvenView$4;
.super Ljava/lang/Object;
.source "ChCustomIvenView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lch/android/api/ui/ChCustomIvenView;-><init>(Landroid/app/Activity;Lch/android/api/util/DisplayInfo;Ljava/lang/String;Ljava/lang/String;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lch/android/api/ui/ChCustomIvenView;

.field private final synthetic val$backBtn:Lch/android/api/ui/ChBackAnimationButton;


# direct methods
.method constructor <init>(Lch/android/api/ui/ChCustomIvenView;Lch/android/api/ui/ChBackAnimationButton;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lch/android/api/ui/ChCustomIvenView$4;->this$0:Lch/android/api/ui/ChCustomIvenView;

    iput-object p2, p0, Lch/android/api/ui/ChCustomIvenView$4;->val$backBtn:Lch/android/api/ui/ChBackAnimationButton;

    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lch/android/api/ui/ChCustomIvenView$4;->val$backBtn:Lch/android/api/ui/ChBackAnimationButton;

    invoke-virtual {v0}, Lch/android/api/ui/ChBackAnimationButton;->startAnimation()V

    .line 111
    return-void
.end method
