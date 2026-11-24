.class Lch/kingdoms/android/ui/MainMenuUi$2;
.super Ljava/lang/Object;
.source "MainMenuUi.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lch/kingdoms/android/ui/MainMenuUi;->settingMain()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lch/kingdoms/android/ui/MainMenuUi;


# direct methods
.method constructor <init>(Lch/kingdoms/android/ui/MainMenuUi;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lch/kingdoms/android/ui/MainMenuUi$2;->this$0:Lch/kingdoms/android/ui/MainMenuUi;

    .line 195
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 199
    invoke-static {}, Lch/android/lib/openfeint/ChOpenFeint;->openDashboard()V

    .line 200
    return-void
.end method
