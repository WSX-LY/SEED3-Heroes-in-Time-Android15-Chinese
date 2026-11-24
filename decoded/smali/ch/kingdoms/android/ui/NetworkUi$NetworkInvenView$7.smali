.class Lch/kingdoms/android/ui/NetworkUi$NetworkInvenView$7;
.super Ljava/lang/Object;
.source "NetworkUi.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lch/kingdoms/android/ui/NetworkUi$NetworkInvenView;->popUpMoneyMenu(Lch/android/api/ui/ChTextView;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lch/kingdoms/android/ui/NetworkUi$NetworkInvenView;

.field private final synthetic val$money:I

.field private final synthetic val$moneyView:Lch/android/api/ui/ChTextView;


# direct methods
.method constructor <init>(Lch/kingdoms/android/ui/NetworkUi$NetworkInvenView;Lch/android/api/ui/ChTextView;I)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lch/kingdoms/android/ui/NetworkUi$NetworkInvenView$7;->this$1:Lch/kingdoms/android/ui/NetworkUi$NetworkInvenView;

    iput-object p2, p0, Lch/kingdoms/android/ui/NetworkUi$NetworkInvenView$7;->val$moneyView:Lch/android/api/ui/ChTextView;

    iput p3, p0, Lch/kingdoms/android/ui/NetworkUi$NetworkInvenView$7;->val$money:I

    .line 1566
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 1570
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 1580
    :goto_0
    return-void

    .line 1572
    :pswitch_0
    invoke-static {}, Lch/android/api/ui/ChViewGen;->closePopUpView()V

    .line 1573
    iget-object v0, p0, Lch/kingdoms/android/ui/NetworkUi$NetworkInvenView$7;->this$1:Lch/kingdoms/android/ui/NetworkUi$NetworkInvenView;

    iget-object v1, p0, Lch/kingdoms/android/ui/NetworkUi$NetworkInvenView$7;->val$moneyView:Lch/android/api/ui/ChTextView;

    iget v2, p0, Lch/kingdoms/android/ui/NetworkUi$NetworkInvenView$7;->val$money:I

    invoke-static {v0, v1, v2}, Lch/kingdoms/android/ui/NetworkUi$NetworkInvenView;->access$5(Lch/kingdoms/android/ui/NetworkUi$NetworkInvenView;Lch/android/api/ui/ChTextView;I)V

    goto :goto_0

    .line 1576
    :pswitch_1
    invoke-static {}, Lch/android/api/ui/ChViewGen;->closePopUpView()V

    .line 1577
    iget-object v0, p0, Lch/kingdoms/android/ui/NetworkUi$NetworkInvenView$7;->this$1:Lch/kingdoms/android/ui/NetworkUi$NetworkInvenView;

    iget-object v1, p0, Lch/kingdoms/android/ui/NetworkUi$NetworkInvenView$7;->val$moneyView:Lch/android/api/ui/ChTextView;

    iget v2, p0, Lch/kingdoms/android/ui/NetworkUi$NetworkInvenView$7;->val$money:I

    invoke-static {v0, v1, v2}, Lch/kingdoms/android/ui/NetworkUi$NetworkInvenView;->access$6(Lch/kingdoms/android/ui/NetworkUi$NetworkInvenView;Lch/android/api/ui/ChTextView;I)V

    goto :goto_0

    .line 1570
    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
