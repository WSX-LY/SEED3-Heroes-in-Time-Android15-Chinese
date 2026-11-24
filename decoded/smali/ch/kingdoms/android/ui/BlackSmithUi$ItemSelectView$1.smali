.class Lch/kingdoms/android/ui/BlackSmithUi$ItemSelectView$1;
.super Ljava/lang/Object;
.source "BlackSmithUi.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lch/kingdoms/android/ui/BlackSmithUi$ItemSelectView;-><init>(Lch/kingdoms/android/ui/BlackSmithUi;Landroid/content/Context;Lch/android/api/util/DisplayInfo;Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lch/kingdoms/android/ui/BlackSmithUi$ItemSelectView;


# direct methods
.method constructor <init>(Lch/kingdoms/android/ui/BlackSmithUi$ItemSelectView;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lch/kingdoms/android/ui/BlackSmithUi$ItemSelectView$1;->this$1:Lch/kingdoms/android/ui/BlackSmithUi$ItemSelectView;

    .line 646
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 650
    iget-object v0, p0, Lch/kingdoms/android/ui/BlackSmithUi$ItemSelectView$1;->this$1:Lch/kingdoms/android/ui/BlackSmithUi$ItemSelectView;

    invoke-static {v0}, Lch/kingdoms/android/ui/BlackSmithUi$ItemSelectView;->access$1(Lch/kingdoms/android/ui/BlackSmithUi$ItemSelectView;)Lch/kingdoms/android/ui/BlackSmithUi;

    move-result-object v0

    invoke-static {v0}, Lch/kingdoms/android/ui/BlackSmithUi;->access$14(Lch/kingdoms/android/ui/BlackSmithUi;)I

    move-result v0

    if-nez v0, :cond_1

    .line 651
    iget-object v0, p0, Lch/kingdoms/android/ui/BlackSmithUi$ItemSelectView$1;->this$1:Lch/kingdoms/android/ui/BlackSmithUi$ItemSelectView;

    invoke-static {v0}, Lch/kingdoms/android/ui/BlackSmithUi$ItemSelectView;->access$1(Lch/kingdoms/android/ui/BlackSmithUi$ItemSelectView;)Lch/kingdoms/android/ui/BlackSmithUi;

    move-result-object v0

    iget-object v1, p0, Lch/kingdoms/android/ui/BlackSmithUi$ItemSelectView$1;->this$1:Lch/kingdoms/android/ui/BlackSmithUi$ItemSelectView;

    invoke-static {v1}, Lch/kingdoms/android/ui/BlackSmithUi$ItemSelectView;->access$0(Lch/kingdoms/android/ui/BlackSmithUi$ItemSelectView;)Lch/android/api/ui/ChInvenAndInfoView;

    move-result-object v1

    invoke-virtual {v1}, Lch/android/api/ui/ChInvenAndInfoView;->getSelectedItem()Lch/kingdoms/ndk/data/Inven$Item;

    move-result-object v1

    iget v1, v1, Lch/kingdoms/ndk/data/Inven$Item;->index:I

    invoke-static {v0, v1}, Lch/kingdoms/android/ui/BlackSmithUi;->access$11(Lch/kingdoms/android/ui/BlackSmithUi;I)V

    .line 655
    :cond_0
    :goto_0
    iget-object v0, p0, Lch/kingdoms/android/ui/BlackSmithUi$ItemSelectView$1;->this$1:Lch/kingdoms/android/ui/BlackSmithUi$ItemSelectView;

    invoke-static {v0}, Lch/kingdoms/android/ui/BlackSmithUi$ItemSelectView;->access$1(Lch/kingdoms/android/ui/BlackSmithUi$ItemSelectView;)Lch/kingdoms/android/ui/BlackSmithUi;

    move-result-object v0

    iget-object v1, p0, Lch/kingdoms/android/ui/BlackSmithUi$ItemSelectView$1;->this$1:Lch/kingdoms/android/ui/BlackSmithUi$ItemSelectView;

    invoke-static {v1}, Lch/kingdoms/android/ui/BlackSmithUi$ItemSelectView;->access$1(Lch/kingdoms/android/ui/BlackSmithUi$ItemSelectView;)Lch/kingdoms/android/ui/BlackSmithUi;

    move-result-object v1

    invoke-static {v1}, Lch/kingdoms/android/ui/BlackSmithUi;->access$14(Lch/kingdoms/android/ui/BlackSmithUi;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Lch/kingdoms/android/ui/BlackSmithUi;->access$12(Lch/kingdoms/android/ui/BlackSmithUi;I)V

    .line 656
    return-void

    .line 652
    :cond_1
    iget-object v0, p0, Lch/kingdoms/android/ui/BlackSmithUi$ItemSelectView$1;->this$1:Lch/kingdoms/android/ui/BlackSmithUi$ItemSelectView;

    invoke-static {v0}, Lch/kingdoms/android/ui/BlackSmithUi$ItemSelectView;->access$1(Lch/kingdoms/android/ui/BlackSmithUi$ItemSelectView;)Lch/kingdoms/android/ui/BlackSmithUi;

    move-result-object v0

    invoke-static {v0}, Lch/kingdoms/android/ui/BlackSmithUi;->access$14(Lch/kingdoms/android/ui/BlackSmithUi;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 653
    iget-object v0, p0, Lch/kingdoms/android/ui/BlackSmithUi$ItemSelectView$1;->this$1:Lch/kingdoms/android/ui/BlackSmithUi$ItemSelectView;

    invoke-static {v0}, Lch/kingdoms/android/ui/BlackSmithUi$ItemSelectView;->access$1(Lch/kingdoms/android/ui/BlackSmithUi$ItemSelectView;)Lch/kingdoms/android/ui/BlackSmithUi;

    move-result-object v0

    iget-object v1, p0, Lch/kingdoms/android/ui/BlackSmithUi$ItemSelectView$1;->this$1:Lch/kingdoms/android/ui/BlackSmithUi$ItemSelectView;

    invoke-static {v1}, Lch/kingdoms/android/ui/BlackSmithUi$ItemSelectView;->access$0(Lch/kingdoms/android/ui/BlackSmithUi$ItemSelectView;)Lch/android/api/ui/ChInvenAndInfoView;

    move-result-object v1

    invoke-virtual {v1}, Lch/android/api/ui/ChInvenAndInfoView;->getSelectedItem()Lch/kingdoms/ndk/data/Inven$Item;

    move-result-object v1

    iget v1, v1, Lch/kingdoms/ndk/data/Inven$Item;->index:I

    invoke-static {v0, v1}, Lch/kingdoms/android/ui/BlackSmithUi;->access$9(Lch/kingdoms/android/ui/BlackSmithUi;I)V

    goto :goto_0
.end method
