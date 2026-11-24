.class Lch/kingdoms/android/ui/MainMenuUi$SlotListView$1;
.super Ljava/lang/Object;
.source "MainMenuUi.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lch/kingdoms/android/ui/MainMenuUi$SlotListView;-><init>(Lch/kingdoms/android/ui/MainMenuUi;Landroid/content/Context;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lch/kingdoms/android/ui/MainMenuUi$SlotListView;


# direct methods
.method constructor <init>(Lch/kingdoms/android/ui/MainMenuUi$SlotListView;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lch/kingdoms/android/ui/MainMenuUi$SlotListView$1;->this$1:Lch/kingdoms/android/ui/MainMenuUi$SlotListView;

    .line 499
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 503
    iget-object v0, p0, Lch/kingdoms/android/ui/MainMenuUi$SlotListView$1;->this$1:Lch/kingdoms/android/ui/MainMenuUi$SlotListView;

    invoke-static {v0}, Lch/kingdoms/android/ui/MainMenuUi$SlotListView;->access$0(Lch/kingdoms/android/ui/MainMenuUi$SlotListView;)Lch/android/api/ui/ChBackAnimationButton;

    move-result-object v0

    invoke-virtual {v0}, Lch/android/api/ui/ChBackAnimationButton;->startAnimation()V

    .line 504
    return-void
.end method
