.class Lch/kingdoms/android/ui/OptionUi$6;
.super Ljava/lang/Object;
.source "OptionUi.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lch/kingdoms/android/ui/OptionUi;-><init>(Landroid/app/Activity;Lch/android/api/util/DisplayInfo;IZLandroid/view/View$OnClickListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lch/kingdoms/android/ui/OptionUi;

.field private final synthetic val$backBtn:Lch/android/api/ui/ChBackAnimationButton;


# direct methods
.method constructor <init>(Lch/kingdoms/android/ui/OptionUi;Lch/android/api/ui/ChBackAnimationButton;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lch/kingdoms/android/ui/OptionUi$6;->this$0:Lch/kingdoms/android/ui/OptionUi;

    iput-object p2, p0, Lch/kingdoms/android/ui/OptionUi$6;->val$backBtn:Lch/android/api/ui/ChBackAnimationButton;

    .line 197
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 201
    iget-object v0, p0, Lch/kingdoms/android/ui/OptionUi$6;->val$backBtn:Lch/android/api/ui/ChBackAnimationButton;

    invoke-virtual {v0}, Lch/android/api/ui/ChBackAnimationButton;->startAnimation()V

    .line 202
    return-void
.end method
