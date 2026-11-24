.class Lch/kingdoms/kor/KingdomsActivity$20;
.super Ljava/lang/Object;
.source "KingdomsActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lch/kingdoms/kor/KingdomsActivity;->setMainState(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lch/kingdoms/kor/KingdomsActivity;


# direct methods
.method constructor <init>(Lch/kingdoms/kor/KingdomsActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lch/kingdoms/kor/KingdomsActivity$20;->this$0:Lch/kingdoms/kor/KingdomsActivity;

    .line 589
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lch/kingdoms/kor/KingdomsActivity$20;)Lch/kingdoms/kor/KingdomsActivity;
    .locals 1

    .prologue
    .line 589
    iget-object v0, p0, Lch/kingdoms/kor/KingdomsActivity$20;->this$0:Lch/kingdoms/kor/KingdomsActivity;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 11

    .prologue
    const v6, 0x7f0201fc

    const v4, 0x7f0201fb

    const/4 v3, 0x0

    .line 593
    iget-object v2, p0, Lch/kingdoms/kor/KingdomsActivity$20;->this$0:Lch/kingdoms/kor/KingdomsActivity;

    invoke-virtual {v2}, Lch/kingdoms/kor/KingdomsActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 594
    .local v1, "context":Landroid/content/Context;
    new-instance v10, Lch/android/api/ui/ChTextSlimButton;

    const/16 v2, 0xaa

    invoke-static {v2}, Lch/kingdoms/ndk/NdkTextLoader;->getGameMenuTxt(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v10, v1, v6, v4, v2}, Lch/android/api/ui/ChTextSlimButton;-><init>(Landroid/content/Context;IILjava/lang/String;)V

    .line 595
    .local v10, "yesBtn":Lch/android/api/ui/ChTextSlimButton;
    const/16 v2, 0x2742

    invoke-virtual {v10, v2}, Lch/android/api/ui/ChTextSlimButton;->setId(I)V

    .line 596
    new-instance v7, Lch/android/api/ui/ChTextSlimButton;

    const/16 v2, 0xab

    invoke-static {v2}, Lch/kingdoms/ndk/NdkTextLoader;->getGameMenuTxt(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v7, v1, v6, v4, v2}, Lch/android/api/ui/ChTextSlimButton;-><init>(Landroid/content/Context;IILjava/lang/String;)V

    .line 597
    .local v7, "noBtn":Lch/android/api/ui/ChTextSlimButton;
    const/16 v2, 0x2743

    invoke-virtual {v7, v2}, Lch/android/api/ui/ChTextSlimButton;->setId(I)V

    .line 598
    const/4 v2, 0x2

    new-array v5, v2, [Landroid/view/View;

    aput-object v10, v5, v3

    const/4 v2, 0x1

    aput-object v7, v5, v2

    .line 599
    .local v5, "views":[Landroid/view/View;
    new-instance v8, Lch/kingdoms/kor/KingdomsActivity$20$1;

    invoke-direct {v8, p0}, Lch/kingdoms/kor/KingdomsActivity$20$1;-><init>(Lch/kingdoms/kor/KingdomsActivity$20;)V

    .line 631
    .local v8, "ocl":Landroid/view/View$OnClickListener;
    array-length v4, v5

    move v2, v3

    :goto_0
    if-lt v2, v4, :cond_0

    .line 635
    new-instance v0, Lch/android/api/ui/ChPopUpMenuView;

    iget-object v2, p0, Lch/kingdoms/kor/KingdomsActivity$20;->this$0:Lch/kingdoms/kor/KingdomsActivity;

    invoke-static {v2}, Lch/kingdoms/kor/KingdomsActivity;->access$0(Lch/kingdoms/kor/KingdomsActivity;)Lch/android/api/util/DisplayInfo;

    move-result-object v2

    const v4, 0x7f020248

    new-instance v6, Lch/kingdoms/kor/KingdomsActivity$20$2;

    invoke-direct {v6, p0}, Lch/kingdoms/kor/KingdomsActivity$20$2;-><init>(Lch/kingdoms/kor/KingdomsActivity$20;)V

    invoke-direct/range {v0 .. v6}, Lch/android/api/ui/ChPopUpMenuView;-><init>(Landroid/content/Context;Lch/android/api/util/DisplayInfo;II[Landroid/view/View;Landroid/view/View$OnClickListener;)V

    .line 644
    .local v0, "menuView":Lch/android/api/ui/ChPopUpMenuView;
    iget-object v2, p0, Lch/kingdoms/kor/KingdomsActivity$20;->this$0:Lch/kingdoms/kor/KingdomsActivity;

    invoke-static {v2, v0}, Lch/android/api/ui/ChViewGen;->popUp(Landroid/app/Activity;Landroid/view/View;)Landroid/view/View;

    .line 645
    return-void

    .line 631
    .end local v0    # "menuView":Lch/android/api/ui/ChPopUpMenuView;
    :cond_0
    aget-object v9, v5, v2

    .line 632
    .local v9, "view":Landroid/view/View;
    invoke-virtual {v9, v8}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 631
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method
