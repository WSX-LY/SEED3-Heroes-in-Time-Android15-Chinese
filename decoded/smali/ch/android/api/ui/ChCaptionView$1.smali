.class Lch/android/api/ui/ChCaptionView$1;
.super Ljava/lang/Object;
.source "ChCaptionView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lch/android/api/ui/ChCaptionView;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lch/android/api/ui/ChCaptionView;

.field private final synthetic val$id:I


# direct methods
.method constructor <init>(Lch/android/api/ui/ChCaptionView;I)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lch/android/api/ui/ChCaptionView$1;->this$0:Lch/android/api/ui/ChCaptionView;

    iput p2, p0, Lch/android/api/ui/ChCaptionView$1;->val$id:I

    .line 265
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/16 v1, 0x3e8

    .line 271
    iget v0, p0, Lch/android/api/ui/ChCaptionView$1;->val$id:I

    packed-switch v0, :pswitch_data_0

    .line 297
    :goto_0
    return-void

    .line 274
    :pswitch_0
    iget-object v0, p0, Lch/android/api/ui/ChCaptionView$1;->this$0:Lch/android/api/ui/ChCaptionView;

    invoke-static {v0}, Lch/android/api/ui/ChCaptionView;->access$1(Lch/android/api/ui/ChCaptionView;)Lch/android/api/ui/ChCaptionView$CpationView;

    move-result-object v0

    invoke-virtual {v0}, Lch/android/api/ui/ChCaptionView$CpationView;->isTypingEnd()Z

    move-result v0

    if-nez v0, :cond_0

    .line 278
    iget-object v0, p0, Lch/android/api/ui/ChCaptionView$1;->this$0:Lch/android/api/ui/ChCaptionView;

    invoke-static {v0}, Lch/android/api/ui/ChCaptionView;->access$1(Lch/android/api/ui/ChCaptionView;)Lch/android/api/ui/ChCaptionView$CpationView;

    move-result-object v0

    invoke-virtual {v0}, Lch/android/api/ui/ChCaptionView$CpationView;->passTyping()V

    goto :goto_0

    .line 282
    :cond_0
    iget-object v0, p0, Lch/android/api/ui/ChCaptionView$1;->this$0:Lch/android/api/ui/ChCaptionView;

    invoke-static {v0}, Lch/android/api/ui/ChCaptionView;->access$2(Lch/android/api/ui/ChCaptionView;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 283
    iget-object v0, p0, Lch/android/api/ui/ChCaptionView$1;->this$0:Lch/android/api/ui/ChCaptionView;

    iget-object v1, p0, Lch/android/api/ui/ChCaptionView$1;->this$0:Lch/android/api/ui/ChCaptionView;

    invoke-static {v1}, Lch/android/api/ui/ChCaptionView;->access$3(Lch/android/api/ui/ChCaptionView;)Z

    move-result v1

    const/4 v2, 0x0

    iget-object v3, p0, Lch/android/api/ui/ChCaptionView$1;->this$0:Lch/android/api/ui/ChCaptionView;

    invoke-static {v3}, Lch/android/api/ui/ChCaptionView;->access$4(Lch/android/api/ui/ChCaptionView;)I

    move-result v3

    iget-object v4, p0, Lch/android/api/ui/ChCaptionView$1;->this$0:Lch/android/api/ui/ChCaptionView;

    invoke-static {v4}, Lch/android/api/ui/ChCaptionView;->access$5(Lch/android/api/ui/ChCaptionView;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lch/android/api/ui/ChCaptionView;->showCaption(ZLjava/lang/String;ILjava/lang/String;)V

    goto :goto_0

    .line 285
    :cond_1
    const/16 v0, 0x45b

    invoke-static {v1, v0}, Lch/kingdoms/ndk/NdkInputManager;->input(II)V

    goto :goto_0

    .line 290
    :pswitch_1
    const/16 v0, 0x45a

    invoke-static {v1, v0}, Lch/kingdoms/ndk/NdkInputManager;->input(II)V

    goto :goto_0

    .line 271
    nop

    :pswitch_data_0
    .packed-switch 0x63
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
