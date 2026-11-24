.class Lch/kingdoms/android/ui/MainStateUi$16;
.super Ljava/lang/Object;
.source "MainStateUi.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lch/kingdoms/android/ui/MainStateUi;->showStoreUi(Landroid/app/Activity;Lch/android/api/util/DisplayInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$_activity:Landroid/app/Activity;

.field private final synthetic val$_di:Lch/android/api/util/DisplayInfo;


# direct methods
.method constructor <init>(Landroid/app/Activity;Lch/android/api/util/DisplayInfo;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lch/kingdoms/android/ui/MainStateUi$16;->val$_activity:Landroid/app/Activity;

    iput-object p2, p0, Lch/kingdoms/android/ui/MainStateUi$16;->val$_di:Lch/android/api/util/DisplayInfo;

    .line 419
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v6, -0x1

    .line 423
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 437
    :goto_0
    return-void

    .line 426
    :cond_0
    invoke-static {}, Lch/android/api/ui/ChViewGen;->closePopUpView()V

    .line 425
    :pswitch_0
    invoke-static {}, Lch/android/api/ui/ChViewGen;->getEventLayerLevel()I

    move-result v0

    if-gtz v0, :cond_0

    .line 428
    iget-object v0, p0, Lch/kingdoms/android/ui/MainStateUi$16;->val$_activity:Landroid/app/Activity;

    new-instance v1, Lch/kingdoms/android/ui/StoreUi;

    iget-object v2, p0, Lch/kingdoms/android/ui/MainStateUi$16;->val$_activity:Landroid/app/Activity;

    iget-object v3, p0, Lch/kingdoms/android/ui/MainStateUi$16;->val$_di:Lch/android/api/util/DisplayInfo;

    const/16 v4, 0x4a

    invoke-static {v4}, Lch/kingdoms/ndk/NdkTextLoader;->getGameMenuTxt(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    invoke-direct {v1, v2, v3, v4, v5}, Lch/kingdoms/android/ui/StoreUi;-><init>(Landroid/app/Activity;Lch/android/api/util/DisplayInfo;Ljava/lang/String;Z)V

    invoke-virtual {v1}, Lch/kingdoms/android/ui/StoreUi;->getView()Landroid/view/View;

    move-result-object v1

    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v2, v6, v6}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 432
    :cond_1
    invoke-static {}, Lch/android/api/ui/ChViewGen;->closePopUpView()V

    .line 431
    :pswitch_1
    invoke-static {}, Lch/android/api/ui/ChViewGen;->getEventLayerLevel()I

    move-result v0

    if-gtz v0, :cond_1

    .line 434
    iget-object v0, p0, Lch/kingdoms/android/ui/MainStateUi$16;->val$_activity:Landroid/app/Activity;

    new-instance v1, Lch/kingdoms/android/ui/StoreUi;

    iget-object v2, p0, Lch/kingdoms/android/ui/MainStateUi$16;->val$_activity:Landroid/app/Activity;

    iget-object v3, p0, Lch/kingdoms/android/ui/MainStateUi$16;->val$_di:Lch/android/api/util/DisplayInfo;

    const/16 v4, 0x4c

    invoke-static {v4}, Lch/kingdoms/ndk/NdkTextLoader;->getGameMenuTxt(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-direct {v1, v2, v3, v4, v5}, Lch/kingdoms/android/ui/StoreUi;-><init>(Landroid/app/Activity;Lch/android/api/util/DisplayInfo;Ljava/lang/String;Z)V

    invoke-virtual {v1}, Lch/kingdoms/android/ui/StoreUi;->getView()Landroid/view/View;

    move-result-object v1

    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v2, v6, v6}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 423
    nop

    :pswitch_data_0
    .packed-switch 0x2745
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
