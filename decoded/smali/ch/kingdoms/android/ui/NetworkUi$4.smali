.class Lch/kingdoms/android/ui/NetworkUi$4;
.super Ljava/lang/Object;
.source "NetworkUi.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lch/kingdoms/android/ui/NetworkUi;->popUpRegisterNewMember()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lch/kingdoms/android/ui/NetworkUi;


# direct methods
.method constructor <init>(Lch/kingdoms/android/ui/NetworkUi;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lch/kingdoms/android/ui/NetworkUi$4;->this$0:Lch/kingdoms/android/ui/NetworkUi;

    .line 287
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lch/kingdoms/android/ui/NetworkUi$4;)Lch/kingdoms/android/ui/NetworkUi;
    .locals 1

    .prologue
    .line 287
    iget-object v0, p0, Lch/kingdoms/android/ui/NetworkUi$4;->this$0:Lch/kingdoms/android/ui/NetworkUi;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 291
    invoke-static {}, Lch/android/api/ui/ChViewGen;->getEventLayerLevel()I

    move-result v2

    add-int/lit8 v1, v2, 0x1

    .line 292
    .local v1, "layerLvel":I
    new-instance v0, Lch/android/api/ui/ChPopUpEditTextView;

    iget-object v2, p0, Lch/kingdoms/android/ui/NetworkUi$4;->this$0:Lch/kingdoms/android/ui/NetworkUi;

    invoke-static {v2}, Lch/kingdoms/android/ui/NetworkUi;->access$4(Lch/kingdoms/android/ui/NetworkUi;)Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lch/kingdoms/android/ui/NetworkUi$4;->this$0:Lch/kingdoms/android/ui/NetworkUi;

    invoke-static {v3}, Lch/kingdoms/android/ui/NetworkUi;->access$10(Lch/kingdoms/android/ui/NetworkUi;)Lch/android/api/util/DisplayInfo;

    move-result-object v3

    const v4, 0x7f020243

    const/16 v5, 0xda

    invoke-static {v5}, Lch/kingdoms/ndk/NdkTextLoader;->getGameMenuTxt(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v2, v3, v4, v5}, Lch/android/api/ui/ChPopUpEditTextView;-><init>(Landroid/content/Context;Lch/android/api/util/DisplayInfo;ILjava/lang/String;)V

    .line 293
    .local v0, "editTxtPopUp":Lch/android/api/ui/ChPopUpEditTextView;
    iget-object v2, p0, Lch/kingdoms/android/ui/NetworkUi$4;->this$0:Lch/kingdoms/android/ui/NetworkUi;

    invoke-static {v2}, Lch/kingdoms/android/ui/NetworkUi;->access$4(Lch/kingdoms/android/ui/NetworkUi;)Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2, v0}, Lch/android/api/ui/ChViewGen;->popUp(Landroid/app/Activity;Landroid/view/View;)Landroid/view/View;

    .line 294
    new-instance v2, Lch/kingdoms/android/ui/NetworkUi$4$1;

    invoke-direct {v2, p0, v1, v0}, Lch/kingdoms/android/ui/NetworkUi$4$1;-><init>(Lch/kingdoms/android/ui/NetworkUi$4;ILch/android/api/ui/ChPopUpEditTextView;)V

    invoke-virtual {v0, v2}, Lch/android/api/ui/ChPopUpEditTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 312
    return-void
.end method
