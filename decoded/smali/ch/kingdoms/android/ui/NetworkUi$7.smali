.class Lch/kingdoms/android/ui/NetworkUi$7;
.super Ljava/lang/Object;
.source "NetworkUi.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lch/kingdoms/android/ui/NetworkUi;->popUpNetworkMenu()V
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
    iput-object p1, p0, Lch/kingdoms/android/ui/NetworkUi$7;->this$0:Lch/kingdoms/android/ui/NetworkUi;

    .line 358
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lch/kingdoms/android/ui/NetworkUi$7;)Lch/kingdoms/android/ui/NetworkUi;
    .locals 1

    .prologue
    .line 358
    iget-object v0, p0, Lch/kingdoms/android/ui/NetworkUi$7;->this$0:Lch/kingdoms/android/ui/NetworkUi;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 15

    .prologue
    const v3, 0x7f0201fc

    const v2, 0x7f0201fb

    .line 362
    iget-object v1, p0, Lch/kingdoms/android/ui/NetworkUi$7;->this$0:Lch/kingdoms/android/ui/NetworkUi;

    invoke-static {v1}, Lch/kingdoms/android/ui/NetworkUi;->access$4(Lch/kingdoms/android/ui/NetworkUi;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v10

    .line 363
    .local v10, "appContext":Landroid/content/Context;
    const/16 v8, 0x64

    .line 364
    .local v8, "ID_ITEM_MANAGE":I
    const/16 v9, 0x65

    .line 365
    .local v9, "ID_RANK":I
    const/16 v7, 0x66

    .line 366
    .local v7, "ID_COLOSSEUM_RANK":I
    new-instance v12, Lch/android/api/ui/ChTextSlimButton;

    const/4 v1, 0x6

    invoke-static {v1}, Lch/kingdoms/ndk/NdkTextLoader;->getNetworkTxt(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v12, v10, v3, v2, v1}, Lch/android/api/ui/ChTextSlimButton;-><init>(Landroid/content/Context;IILjava/lang/String;)V

    .line 367
    .local v12, "itemManageBtn":Lch/android/api/ui/ChTextSlimButton;
    const/16 v1, 0x64

    invoke-virtual {v12, v1}, Lch/android/api/ui/ChTextSlimButton;->setId(I)V

    .line 368
    new-instance v14, Lch/android/api/ui/ChTextSlimButton;

    const/4 v1, 0x7

    invoke-static {v1}, Lch/kingdoms/ndk/NdkTextLoader;->getNetworkTxt(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v14, v10, v3, v2, v1}, Lch/android/api/ui/ChTextSlimButton;-><init>(Landroid/content/Context;IILjava/lang/String;)V

    .line 369
    .local v14, "rankBtn":Lch/android/api/ui/ChTextSlimButton;
    const/16 v1, 0x65

    invoke-virtual {v14, v1}, Lch/android/api/ui/ChTextSlimButton;->setId(I)V

    .line 370
    new-instance v11, Lch/android/api/ui/ChTextSlimButton;

    const/16 v1, 0x8

    invoke-static {v1}, Lch/kingdoms/ndk/NdkTextLoader;->getNetworkTxt(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v11, v10, v3, v2, v1}, Lch/android/api/ui/ChTextSlimButton;-><init>(Landroid/content/Context;IILjava/lang/String;)V

    .line 371
    .local v11, "colosseumRankBtn":Lch/android/api/ui/ChTextSlimButton;
    const/16 v1, 0x66

    invoke-virtual {v11, v1}, Lch/android/api/ui/ChTextSlimButton;->setId(I)V

    .line 372
    const/4 v1, 0x3

    new-array v5, v1, [Landroid/view/View;

    const/4 v1, 0x0

    aput-object v12, v5, v1

    const/4 v1, 0x1

    aput-object v14, v5, v1

    const/4 v1, 0x2

    aput-object v11, v5, v1

    .line 374
    .local v5, "btns":[Landroid/view/View;
    new-instance v0, Lch/android/api/ui/ChPopUpMenuView;

    iget-object v1, p0, Lch/kingdoms/android/ui/NetworkUi$7;->this$0:Lch/kingdoms/android/ui/NetworkUi;

    invoke-static {v1}, Lch/kingdoms/android/ui/NetworkUi;->access$4(Lch/kingdoms/android/ui/NetworkUi;)Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lch/kingdoms/android/ui/NetworkUi$7;->this$0:Lch/kingdoms/android/ui/NetworkUi;

    invoke-static {v2}, Lch/kingdoms/android/ui/NetworkUi;->access$10(Lch/kingdoms/android/ui/NetworkUi;)Lch/android/api/util/DisplayInfo;

    move-result-object v2

    const v3, 0x7f020210

    const v4, 0x7f020244

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v6}, Lch/android/api/ui/ChPopUpMenuView;-><init>(Landroid/content/Context;Lch/android/api/util/DisplayInfo;II[Landroid/view/View;Landroid/view/View$OnClickListener;)V

    .line 375
    .local v0, "menuPopUp":Lch/android/api/ui/ChPopUpMenuView;
    new-instance v13, Lch/kingdoms/android/ui/NetworkUi$7$1;

    invoke-direct {v13, p0}, Lch/kingdoms/android/ui/NetworkUi$7$1;-><init>(Lch/kingdoms/android/ui/NetworkUi$7;)V

    .line 400
    .local v13, "onClickListener":Landroid/view/View$OnClickListener;
    invoke-virtual {v0, v13}, Lch/android/api/ui/ChPopUpMenuView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 401
    invoke-virtual {v12, v13}, Lch/android/api/ui/ChTextSlimButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 402
    invoke-virtual {v14, v13}, Lch/android/api/ui/ChTextSlimButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 403
    invoke-virtual {v11, v13}, Lch/android/api/ui/ChTextSlimButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 405
    iget-object v1, p0, Lch/kingdoms/android/ui/NetworkUi$7;->this$0:Lch/kingdoms/android/ui/NetworkUi;

    invoke-static {v1}, Lch/kingdoms/android/ui/NetworkUi;->access$4(Lch/kingdoms/android/ui/NetworkUi;)Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1, v0}, Lch/android/api/ui/ChViewGen;->popUp(Landroid/app/Activity;Landroid/view/View;)Landroid/view/View;

    .line 406
    return-void
.end method
