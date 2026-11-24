.class Lch/kingdoms/kor/KingdomsActivity$5$1;
.super Ljava/lang/Object;
.source "KingdomsActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lch/kingdoms/kor/KingdomsActivity$5;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lch/kingdoms/kor/KingdomsActivity$5;

.field private final synthetic val$pd:Landroid/app/ProgressDialog;

.field private final synthetic val$res:Landroid/content/res/Resources;


# direct methods
.method constructor <init>(Lch/kingdoms/kor/KingdomsActivity$5;Landroid/app/ProgressDialog;Landroid/content/res/Resources;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lch/kingdoms/kor/KingdomsActivity$5$1;->this$1:Lch/kingdoms/kor/KingdomsActivity$5;

    iput-object p2, p0, Lch/kingdoms/kor/KingdomsActivity$5$1;->val$pd:Landroid/app/ProgressDialog;

    iput-object p3, p0, Lch/kingdoms/kor/KingdomsActivity$5$1;->val$res:Landroid/content/res/Resources;

    .line 318
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 322
    iget-object v0, p0, Lch/kingdoms/kor/KingdomsActivity$5$1;->val$pd:Landroid/app/ProgressDialog;

    iget-object v1, p0, Lch/kingdoms/kor/KingdomsActivity$5$1;->val$res:Landroid/content/res/Resources;

    const v2, 0x7f050046

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 323
    iget-object v0, p0, Lch/kingdoms/kor/KingdomsActivity$5$1;->this$1:Lch/kingdoms/kor/KingdomsActivity$5;

    invoke-static {v0}, Lch/kingdoms/kor/KingdomsActivity$5;->access$0(Lch/kingdoms/kor/KingdomsActivity$5;)Lch/kingdoms/kor/KingdomsActivity;

    move-result-object v0

    invoke-virtual {v0}, Lch/kingdoms/kor/KingdomsActivity;->startGame()V

    .line 324
    iget-object v0, p0, Lch/kingdoms/kor/KingdomsActivity$5$1;->val$pd:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 325
    return-void
.end method
