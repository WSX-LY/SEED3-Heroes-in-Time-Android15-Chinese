.class Lch/kingdoms/android/ui/network/NetworkInvenView$6;
.super Ljava/lang/Object;
.source "NetworkInvenView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lch/kingdoms/android/ui/network/NetworkInvenView;->popUpMoneyMenu(Lch/android/api/ui/ChTextView;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lch/kingdoms/android/ui/network/NetworkInvenView;

.field private final synthetic val$money:I

.field private final synthetic val$moneyView:Lch/android/api/ui/ChTextView;


# direct methods
.method constructor <init>(Lch/kingdoms/android/ui/network/NetworkInvenView;Lch/android/api/ui/ChTextView;I)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lch/kingdoms/android/ui/network/NetworkInvenView$6;->this$0:Lch/kingdoms/android/ui/network/NetworkInvenView;

    iput-object p2, p0, Lch/kingdoms/android/ui/network/NetworkInvenView$6;->val$moneyView:Lch/android/api/ui/ChTextView;

    iput p3, p0, Lch/kingdoms/android/ui/network/NetworkInvenView$6;->val$money:I

    .line 328
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 332
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 342
    :goto_0
    return-void

    .line 334
    :pswitch_0
    invoke-static {}, Lch/android/api/ui/ChViewGen;->closePopUpView()V

    .line 335
    iget-object v0, p0, Lch/kingdoms/android/ui/network/NetworkInvenView$6;->this$0:Lch/kingdoms/android/ui/network/NetworkInvenView;

    iget-object v1, p0, Lch/kingdoms/android/ui/network/NetworkInvenView$6;->val$moneyView:Lch/android/api/ui/ChTextView;

    iget v2, p0, Lch/kingdoms/android/ui/network/NetworkInvenView$6;->val$money:I

    invoke-static {v0, v1, v2}, Lch/kingdoms/android/ui/network/NetworkInvenView;->access$9(Lch/kingdoms/android/ui/network/NetworkInvenView;Lch/android/api/ui/ChTextView;I)V

    goto :goto_0

    .line 338
    :pswitch_1
    invoke-static {}, Lch/android/api/ui/ChViewGen;->closePopUpView()V

    .line 339
    iget-object v0, p0, Lch/kingdoms/android/ui/network/NetworkInvenView$6;->this$0:Lch/kingdoms/android/ui/network/NetworkInvenView;

    iget-object v1, p0, Lch/kingdoms/android/ui/network/NetworkInvenView$6;->val$moneyView:Lch/android/api/ui/ChTextView;

    iget v2, p0, Lch/kingdoms/android/ui/network/NetworkInvenView$6;->val$money:I

    invoke-static {v0, v1, v2}, Lch/kingdoms/android/ui/network/NetworkInvenView;->access$10(Lch/kingdoms/android/ui/network/NetworkInvenView;Lch/android/api/ui/ChTextView;I)V

    goto :goto_0

    .line 332
    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
