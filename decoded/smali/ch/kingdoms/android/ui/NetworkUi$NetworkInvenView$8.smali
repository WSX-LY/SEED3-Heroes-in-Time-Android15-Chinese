.class Lch/kingdoms/android/ui/NetworkUi$NetworkInvenView$8;
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


# direct methods
.method constructor <init>(Lch/kingdoms/android/ui/NetworkUi$NetworkInvenView;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lch/kingdoms/android/ui/NetworkUi$NetworkInvenView$8;->this$1:Lch/kingdoms/android/ui/NetworkUi$NetworkInvenView;

    .line 1587
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 1591
    invoke-static {}, Lch/kingdoms/android/ui/NetworkUi;->access$12()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1592
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 1599
    :cond_0
    :goto_0
    return-void

    .line 1594
    :pswitch_0
    invoke-static {}, Lch/android/api/ui/ChViewGen;->closePopUpView()V

    .line 1595
    const/4 v0, 0x0

    invoke-static {v0}, Lch/kingdoms/android/ui/NetworkUi;->access$11(Z)V

    goto :goto_0

    .line 1592
    :pswitch_data_0
    .packed-switch 0x2744
        :pswitch_0
    .end packed-switch
.end method
