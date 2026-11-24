.class Lch/kingdoms/android/ui/StoreUi$StoreView$1;
.super Ljava/lang/Object;
.source "StoreUi.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lch/kingdoms/android/ui/StoreUi$StoreView;-><init>(Lch/kingdoms/android/ui/StoreUi;Landroid/content/Context;Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lch/kingdoms/android/ui/StoreUi$StoreView;

.field private final synthetic val$closeBtn:Lch/android/api/ui/ChBackButton;


# direct methods
.method constructor <init>(Lch/kingdoms/android/ui/StoreUi$StoreView;Lch/android/api/ui/ChBackButton;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lch/kingdoms/android/ui/StoreUi$StoreView$1;->this$1:Lch/kingdoms/android/ui/StoreUi$StoreView;

    iput-object p2, p0, Lch/kingdoms/android/ui/StoreUi$StoreView$1;->val$closeBtn:Lch/android/api/ui/ChBackButton;

    .line 274
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 278
    iget-object v0, p0, Lch/kingdoms/android/ui/StoreUi$StoreView$1;->val$closeBtn:Lch/android/api/ui/ChBackButton;

    invoke-virtual {v0}, Lch/android/api/ui/ChBackButton;->startAnimation()V

    .line 279
    return-void
.end method
