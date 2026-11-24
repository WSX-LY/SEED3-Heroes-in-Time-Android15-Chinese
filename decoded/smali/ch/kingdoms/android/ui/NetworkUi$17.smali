.class Lch/kingdoms/android/ui/NetworkUi$17;
.super Ljava/lang/Object;
.source "NetworkUi.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lch/kingdoms/android/ui/NetworkUi;->popUpColosseumMenu()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lch/kingdoms/android/ui/NetworkUi;

.field private final synthetic val$appContext:Landroid/content/Context;

.field private final synthetic val$colosseumWords:Ljava/lang/String;


# direct methods
.method constructor <init>(Lch/kingdoms/android/ui/NetworkUi;Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lch/kingdoms/android/ui/NetworkUi$17;->this$0:Lch/kingdoms/android/ui/NetworkUi;

    iput-object p2, p0, Lch/kingdoms/android/ui/NetworkUi$17;->val$appContext:Landroid/content/Context;

    iput-object p3, p0, Lch/kingdoms/android/ui/NetworkUi$17;->val$colosseumWords:Ljava/lang/String;

    .line 752
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 9
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 756
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v7

    .line 757
    .local v7, "index":I
    invoke-static {}, Lch/android/api/ui/ChViewGen;->closePopUpView()V

    .line 758
    iget-object v0, p0, Lch/kingdoms/android/ui/NetworkUi$17;->this$0:Lch/kingdoms/android/ui/NetworkUi;

    add-int/lit8 v1, v7, 0x4

    invoke-static {v0, v1}, Lch/kingdoms/android/ui/NetworkUi;->access$29(Lch/kingdoms/android/ui/NetworkUi;I)V

    .line 759
    iget-object v0, p0, Lch/kingdoms/android/ui/NetworkUi$17;->this$0:Lch/kingdoms/android/ui/NetworkUi;

    invoke-static {v0}, Lch/kingdoms/android/ui/NetworkUi;->access$4(Lch/kingdoms/android/ui/NetworkUi;)Landroid/app/Activity;

    move-result-object v8

    new-instance v0, Lch/kingdoms/android/ui/NetworkUi$ColosseumRankView;

    iget-object v1, p0, Lch/kingdoms/android/ui/NetworkUi$17;->this$0:Lch/kingdoms/android/ui/NetworkUi;

    iget-object v2, p0, Lch/kingdoms/android/ui/NetworkUi$17;->val$appContext:Landroid/content/Context;

    iget-object v3, p0, Lch/kingdoms/android/ui/NetworkUi$17;->this$0:Lch/kingdoms/android/ui/NetworkUi;

    invoke-static {v3}, Lch/kingdoms/android/ui/NetworkUi;->access$10(Lch/kingdoms/android/ui/NetworkUi;)Lch/android/api/util/DisplayInfo;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    add-int/lit16 v5, v7, 0xbe

    invoke-static {v5}, Lch/kingdoms/ndk/NdkTextLoader;->getGameMenuTxt(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lch/kingdoms/android/ui/NetworkUi$17;->val$colosseumWords:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lch/kingdoms/android/ui/NetworkUi$17;->this$0:Lch/kingdoms/android/ui/NetworkUi;

    invoke-static {v5}, Lch/kingdoms/android/ui/NetworkUi;->access$8(Lch/kingdoms/android/ui/NetworkUi;)I

    move-result v5

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v6}, Lch/kingdoms/android/ui/NetworkUi$ColosseumRankView;-><init>(Lch/kingdoms/android/ui/NetworkUi;Landroid/content/Context;Lch/android/api/util/DisplayInfo;Ljava/lang/String;IZ)V

    invoke-static {v8, v0}, Lch/android/api/ui/ChViewGen;->popUp(Landroid/app/Activity;Landroid/view/View;)Landroid/view/View;

    .line 760
    return-void
.end method
