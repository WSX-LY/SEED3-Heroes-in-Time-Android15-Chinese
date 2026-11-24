.class Lch/kingdoms/android/ui/SelectJobUi$2;
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

.field private final synthetic val$classNameView:Lch/android/api/ui/ChImageView;

.field private final synthetic val$layerLevel:I

.field private final synthetic val$txtView:Lch/android/api/ui/ChTextView;


# direct methods
.method constructor <init>(Lch/kingdoms/android/ui/SelectJobUi;ILch/android/api/ui/ChTextView;Lch/android/api/ui/ChImageView;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lch/kingdoms/android/ui/SelectJobUi$2;->this$0:Lch/kingdoms/android/ui/SelectJobUi;

    iput p2, p0, Lch/kingdoms/android/ui/SelectJobUi$2;->val$layerLevel:I

    iput-object p3, p0, Lch/kingdoms/android/ui/SelectJobUi$2;->val$txtView:Lch/android/api/ui/ChTextView;

    iput-object p4, p0, Lch/kingdoms/android/ui/SelectJobUi$2;->val$classNameView:Lch/android/api/ui/ChImageView;

    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 102
    iget v0, p0, Lch/kingdoms/android/ui/SelectJobUi$2;->val$layerLevel:I

    invoke-static {}, Lch/android/api/ui/ChViewGen;->getEventLayerLevel()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 103
    iget-object v0, p0, Lch/kingdoms/android/ui/SelectJobUi$2;->this$0:Lch/kingdoms/android/ui/SelectJobUi;

    const/4 v1, 0x0

    iget-object v2, p0, Lch/kingdoms/android/ui/SelectJobUi$2;->val$txtView:Lch/android/api/ui/ChTextView;

    iget-object v3, p0, Lch/kingdoms/android/ui/SelectJobUi$2;->val$classNameView:Lch/android/api/ui/ChImageView;

    invoke-static {v0, v1, v2, v3}, Lch/kingdoms/android/ui/SelectJobUi;->access$0(Lch/kingdoms/android/ui/SelectJobUi;ZLch/android/api/ui/ChTextView;Lch/android/api/ui/ChImageView;)V

    .line 105
    :cond_0
    return-void
.end method
