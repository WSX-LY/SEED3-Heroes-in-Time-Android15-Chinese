.class Lch/kingdoms/android/ui/BlackSmithUi$ItemSelectView$2;
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
    iput-object p1, p0, Lch/kingdoms/android/ui/BlackSmithUi$ItemSelectView$2;->this$1:Lch/kingdoms/android/ui/BlackSmithUi$ItemSelectView;

    .line 672
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 676
    iget-object v0, p0, Lch/kingdoms/android/ui/BlackSmithUi$ItemSelectView$2;->this$1:Lch/kingdoms/android/ui/BlackSmithUi$ItemSelectView;

    invoke-static {v0}, Lch/kingdoms/android/ui/BlackSmithUi$ItemSelectView;->access$1(Lch/kingdoms/android/ui/BlackSmithUi$ItemSelectView;)Lch/kingdoms/android/ui/BlackSmithUi;

    move-result-object v0

    invoke-static {v0}, Lch/kingdoms/android/ui/BlackSmithUi;->access$14(Lch/kingdoms/android/ui/BlackSmithUi;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 687
    :goto_0
    return-void

    .line 678
    :pswitch_0
    iget-object v0, p0, Lch/kingdoms/android/ui/BlackSmithUi$ItemSelectView$2;->this$1:Lch/kingdoms/android/ui/BlackSmithUi$ItemSelectView;

    invoke-static {v0}, Lch/kingdoms/android/ui/BlackSmithUi$ItemSelectView;->access$1(Lch/kingdoms/android/ui/BlackSmithUi$ItemSelectView;)Lch/kingdoms/android/ui/BlackSmithUi;

    move-result-object v0

    invoke-static {v0}, Lch/kingdoms/android/ui/BlackSmithUi;->access$1(Lch/kingdoms/android/ui/BlackSmithUi;)V

    goto :goto_0

    .line 681
    :pswitch_1
    iget-object v0, p0, Lch/kingdoms/android/ui/BlackSmithUi$ItemSelectView$2;->this$1:Lch/kingdoms/android/ui/BlackSmithUi$ItemSelectView;

    invoke-static {v0}, Lch/kingdoms/android/ui/BlackSmithUi$ItemSelectView;->access$1(Lch/kingdoms/android/ui/BlackSmithUi$ItemSelectView;)Lch/kingdoms/android/ui/BlackSmithUi;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lch/kingdoms/android/ui/BlackSmithUi;->access$12(Lch/kingdoms/android/ui/BlackSmithUi;I)V

    goto :goto_0

    .line 684
    :pswitch_2
    iget-object v0, p0, Lch/kingdoms/android/ui/BlackSmithUi$ItemSelectView$2;->this$1:Lch/kingdoms/android/ui/BlackSmithUi$ItemSelectView;

    invoke-static {v0}, Lch/kingdoms/android/ui/BlackSmithUi$ItemSelectView;->access$1(Lch/kingdoms/android/ui/BlackSmithUi$ItemSelectView;)Lch/kingdoms/android/ui/BlackSmithUi;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lch/kingdoms/android/ui/BlackSmithUi;->access$12(Lch/kingdoms/android/ui/BlackSmithUi;I)V

    goto :goto_0

    .line 676
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
