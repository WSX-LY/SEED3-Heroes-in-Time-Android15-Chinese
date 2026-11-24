.class Lcom/sponsorpay/sdk/android/publisher/OfferWallActivity$2;
.super Ljava/lang/Object;
.source "OfferWallActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sponsorpay/sdk/android/publisher/OfferWallActivity;->showErrorDialog(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sponsorpay/sdk/android/publisher/OfferWallActivity;


# direct methods
.method constructor <init>(Lcom/sponsorpay/sdk/android/publisher/OfferWallActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/sponsorpay/sdk/android/publisher/OfferWallActivity$2;->this$0:Lcom/sponsorpay/sdk/android/publisher/OfferWallActivity;

    .line 242
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 245
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 246
    iget-object v0, p0, Lcom/sponsorpay/sdk/android/publisher/OfferWallActivity$2;->this$0:Lcom/sponsorpay/sdk/android/publisher/OfferWallActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/sponsorpay/sdk/android/publisher/OfferWallActivity;->access$2(Lcom/sponsorpay/sdk/android/publisher/OfferWallActivity;Landroid/app/AlertDialog;)V

    .line 247
    iget-object v0, p0, Lcom/sponsorpay/sdk/android/publisher/OfferWallActivity$2;->this$0:Lcom/sponsorpay/sdk/android/publisher/OfferWallActivity;

    invoke-virtual {v0}, Lcom/sponsorpay/sdk/android/publisher/OfferWallActivity;->finish()V

    .line 248
    return-void
.end method
