.class Lch/kingdoms/android/ui/SelectJobUi$3;
.super Ljava/lang/Object;
.source "SelectJobUi.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lch/kingdoms/android/ui/SelectJobUi;-><init>(Landroid/app/Activity;Lch/android/api/util/DisplayInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lch/kingdoms/android/ui/SelectJobUi;

.field private final synthetic val$activity:Landroid/app/Activity;

.field private final synthetic val$layerLevel:I


# direct methods
.method constructor <init>(Lch/kingdoms/android/ui/SelectJobUi;ILandroid/app/Activity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lch/kingdoms/android/ui/SelectJobUi$3;->this$0:Lch/kingdoms/android/ui/SelectJobUi;

    iput p2, p0, Lch/kingdoms/android/ui/SelectJobUi$3;->val$layerLevel:I

    iput-object p3, p0, Lch/kingdoms/android/ui/SelectJobUi$3;->val$activity:Landroid/app/Activity;

    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 112
    iget v0, p0, Lch/kingdoms/android/ui/SelectJobUi$3;->val$layerLevel:I

    invoke-static {}, Lch/android/api/ui/ChViewGen;->getEventLayerLevel()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 113
    iget-object v0, p0, Lch/kingdoms/android/ui/SelectJobUi$3;->val$activity:Landroid/app/Activity;

    const/16 v1, 0x59

    invoke-static {v1}, Lch/kingdoms/ndk/NdkTextLoader;->getGameMenuTxt(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lch/kingdoms/android/ui/SelectJobUi$3$1;

    invoke-direct {v2, p0}, Lch/kingdoms/android/ui/SelectJobUi$3$1;-><init>(Lch/kingdoms/android/ui/SelectJobUi$3;)V

    invoke-static {v0, v1, v2}, Lch/android/api/ui/ChViewGen;->popUpConfirmYesNoView(Landroid/app/Activity;Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;)Landroid/view/View;

    .line 135
    :cond_0
    return-void
.end method
