.class Lch/kingdoms/kor/KingdomsActivity$22$1;
.super Ljava/lang/Object;
.source "KingdomsActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lch/kingdoms/kor/KingdomsActivity$22;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lch/kingdoms/kor/KingdomsActivity$22;


# direct methods
.method constructor <init>(Lch/kingdoms/kor/KingdomsActivity$22;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lch/kingdoms/kor/KingdomsActivity$22$1;->this$1:Lch/kingdoms/kor/KingdomsActivity$22;

    .line 673
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lch/kingdoms/kor/KingdomsActivity$22$1;)Lch/kingdoms/kor/KingdomsActivity$22;
    .locals 1

    .prologue
    .line 673
    iget-object v0, p0, Lch/kingdoms/kor/KingdomsActivity$22$1;->this$1:Lch/kingdoms/kor/KingdomsActivity$22;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 15

    .prologue
    const v6, 0x7f0201fc

    const v4, 0x7f0201fb

    const/4 v3, 0x0

    .line 677
    const/16 v9, 0x65

    .line 678
    .local v9, "ID_USE_REVIVESTONE":I
    const/16 v7, 0x66

    .line 679
    .local v7, "ID_BUY_REVIVESTONE":I
    const/16 v8, 0x67

    .line 680
    .local v8, "ID_MAINMENU":I
    new-instance v13, Lch/android/api/ui/ChTextSlimButton;

    iget-object v1, p0, Lch/kingdoms/kor/KingdomsActivity$22$1;->this$1:Lch/kingdoms/kor/KingdomsActivity$22;

    invoke-static {v1}, Lch/kingdoms/kor/KingdomsActivity$22;->access$0(Lch/kingdoms/kor/KingdomsActivity$22;)Lch/kingdoms/kor/KingdomsActivity;

    move-result-object v1

    invoke-virtual {v1}, Lch/kingdoms/kor/KingdomsActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 681
    const/16 v2, 0x5a

    invoke-static {v2}, Lch/kingdoms/ndk/NdkTextLoader;->getGameMenuTxt(I)Ljava/lang/String;

    move-result-object v2

    .line 680
    invoke-direct {v13, v1, v6, v4, v2}, Lch/android/api/ui/ChTextSlimButton;-><init>(Landroid/content/Context;IILjava/lang/String;)V

    .line 682
    .local v13, "useReviveStoneBtn":Lch/android/api/ui/ChTextSlimButton;
    const/16 v1, 0x65

    invoke-virtual {v13, v1}, Lch/android/api/ui/ChTextSlimButton;->setId(I)V

    .line 683
    new-instance v10, Lch/android/api/ui/ChTextSlimButton;

    iget-object v1, p0, Lch/kingdoms/kor/KingdomsActivity$22$1;->this$1:Lch/kingdoms/kor/KingdomsActivity$22;

    invoke-static {v1}, Lch/kingdoms/kor/KingdomsActivity$22;->access$0(Lch/kingdoms/kor/KingdomsActivity$22;)Lch/kingdoms/kor/KingdomsActivity;

    move-result-object v1

    invoke-virtual {v1}, Lch/kingdoms/kor/KingdomsActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 684
    const/16 v2, 0x5b

    invoke-static {v2}, Lch/kingdoms/ndk/NdkTextLoader;->getGameMenuTxt(I)Ljava/lang/String;

    move-result-object v2

    .line 683
    invoke-direct {v10, v1, v6, v4, v2}, Lch/android/api/ui/ChTextSlimButton;-><init>(Landroid/content/Context;IILjava/lang/String;)V

    .line 685
    .local v10, "buyReviveStoneBtn":Lch/android/api/ui/ChTextSlimButton;
    const/16 v1, 0x66

    invoke-virtual {v10, v1}, Lch/android/api/ui/ChTextSlimButton;->setId(I)V

    .line 686
    new-instance v11, Lch/android/api/ui/ChTextSlimButton;

    iget-object v1, p0, Lch/kingdoms/kor/KingdomsActivity$22$1;->this$1:Lch/kingdoms/kor/KingdomsActivity$22;

    invoke-static {v1}, Lch/kingdoms/kor/KingdomsActivity$22;->access$0(Lch/kingdoms/kor/KingdomsActivity$22;)Lch/kingdoms/kor/KingdomsActivity;

    move-result-object v1

    invoke-virtual {v1}, Lch/kingdoms/kor/KingdomsActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 687
    const/16 v2, 0x5c

    invoke-static {v2}, Lch/kingdoms/ndk/NdkTextLoader;->getGameMenuTxt(I)Ljava/lang/String;

    move-result-object v2

    .line 686
    invoke-direct {v11, v1, v6, v4, v2}, Lch/android/api/ui/ChTextSlimButton;-><init>(Landroid/content/Context;IILjava/lang/String;)V

    .line 688
    .local v11, "mainMenuBtn":Lch/android/api/ui/ChTextSlimButton;
    const/16 v1, 0x67

    invoke-virtual {v11, v1}, Lch/android/api/ui/ChTextSlimButton;->setId(I)V

    .line 690
    new-instance v12, Lch/kingdoms/kor/KingdomsActivity$22$1$1;

    invoke-direct {v12, p0}, Lch/kingdoms/kor/KingdomsActivity$22$1$1;-><init>(Lch/kingdoms/kor/KingdomsActivity$22$1;)V

    .line 751
    .local v12, "ocl":Landroid/view/View$OnClickListener;
    const/4 v1, 0x3

    new-array v5, v1, [Landroid/view/View;

    aput-object v13, v5, v3

    const/4 v1, 0x1

    aput-object v10, v5, v1

    const/4 v1, 0x2

    aput-object v11, v5, v1

    .line 752
    .local v5, "views":[Landroid/view/View;
    array-length v2, v5

    move v1, v3

    :goto_0
    if-lt v1, v2, :cond_0

    .line 755
    new-instance v0, Lch/android/api/ui/ChPopUpMenuView;

    iget-object v1, p0, Lch/kingdoms/kor/KingdomsActivity$22$1;->this$1:Lch/kingdoms/kor/KingdomsActivity$22;

    invoke-static {v1}, Lch/kingdoms/kor/KingdomsActivity$22;->access$0(Lch/kingdoms/kor/KingdomsActivity$22;)Lch/kingdoms/kor/KingdomsActivity;

    move-result-object v1

    invoke-virtual {v1}, Lch/kingdoms/kor/KingdomsActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lch/kingdoms/kor/KingdomsActivity$22$1;->this$1:Lch/kingdoms/kor/KingdomsActivity$22;

    invoke-static {v2}, Lch/kingdoms/kor/KingdomsActivity$22;->access$0(Lch/kingdoms/kor/KingdomsActivity$22;)Lch/kingdoms/kor/KingdomsActivity;

    move-result-object v2

    invoke-static {v2}, Lch/kingdoms/kor/KingdomsActivity;->access$0(Lch/kingdoms/kor/KingdomsActivity;)Lch/android/api/util/DisplayInfo;

    move-result-object v2

    const v4, 0x7f020248

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v6}, Lch/android/api/ui/ChPopUpMenuView;-><init>(Landroid/content/Context;Lch/android/api/util/DisplayInfo;II[Landroid/view/View;Landroid/view/View$OnClickListener;)V

    .line 756
    .local v0, "menuView":Lch/android/api/ui/ChPopUpMenuView;
    iget-object v1, p0, Lch/kingdoms/kor/KingdomsActivity$22$1;->this$1:Lch/kingdoms/kor/KingdomsActivity$22;

    invoke-static {v1}, Lch/kingdoms/kor/KingdomsActivity$22;->access$0(Lch/kingdoms/kor/KingdomsActivity$22;)Lch/kingdoms/kor/KingdomsActivity;

    move-result-object v1

    invoke-static {v1, v0}, Lch/android/api/ui/ChViewGen;->popUp(Landroid/app/Activity;Landroid/view/View;)Landroid/view/View;

    .line 757
    return-void

    .line 752
    .end local v0    # "menuView":Lch/android/api/ui/ChPopUpMenuView;
    :cond_0
    aget-object v14, v5, v1

    .line 753
    .local v14, "view":Landroid/view/View;
    invoke-virtual {v14, v12}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 752
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method
