.class Lch/kingdoms/android/ui/TabMenu$1;
.super Ljava/lang/Object;
.source "TabMenu.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lch/kingdoms/android/ui/TabMenu;-><init>(Landroid/app/Activity;Lch/android/api/util/DisplayInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lch/kingdoms/android/ui/TabMenu;

.field private final synthetic val$backBtn:Lch/android/api/ui/ChBackButton;


# direct methods
.method constructor <init>(Lch/kingdoms/android/ui/TabMenu;Lch/android/api/ui/ChBackButton;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lch/kingdoms/android/ui/TabMenu$1;->this$0:Lch/kingdoms/android/ui/TabMenu;

    iput-object p2, p0, Lch/kingdoms/android/ui/TabMenu$1;->val$backBtn:Lch/android/api/ui/ChBackButton;

    .line 128
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Lch/kingdoms/android/ui/TabMenu$1;->val$backBtn:Lch/android/api/ui/ChBackButton;

    invoke-virtual {v0}, Lch/android/api/ui/ChBackButton;->startAnimation()V

    .line 133
    return-void
.end method
