.class Lch/kingdoms/android/ui/OptionUi$3;
.super Ljava/lang/Object;
.source "OptionUi.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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

.field private final synthetic val$autoRoutingBtn:Lch/android/api/ui/ChOnOffButton;


# direct methods
.method constructor <init>(Lch/kingdoms/android/ui/OptionUi;Lch/android/api/ui/ChOnOffButton;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lch/kingdoms/android/ui/OptionUi$3;->this$0:Lch/kingdoms/android/ui/OptionUi;

    iput-object p2, p0, Lch/kingdoms/android/ui/OptionUi$3;->val$autoRoutingBtn:Lch/android/api/ui/ChOnOffButton;

    .line 140
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 148
    iget-object v0, p0, Lch/kingdoms/android/ui/OptionUi$3;->val$autoRoutingBtn:Lch/android/api/ui/ChOnOffButton;

    invoke-virtual {v0}, Lch/android/api/ui/ChOnOffButton;->click()V

    .line 150
    return-void
.end method
