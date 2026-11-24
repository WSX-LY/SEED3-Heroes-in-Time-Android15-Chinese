.class Lch/kingdoms/kor/KingdomsActivity$21;
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
    iput-object p1, p0, Lch/kingdoms/kor/KingdomsActivity$21;->this$0:Lch/kingdoms/kor/KingdomsActivity;

    .line 649
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 653
    iget-object v0, p0, Lch/kingdoms/kor/KingdomsActivity$21;->this$0:Lch/kingdoms/kor/KingdomsActivity;

    invoke-static {}, Lch/kingdoms/ndk/NdkTextLoader;->getChangeTownPortalTxt()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lch/kingdoms/kor/KingdomsActivity$21$1;

    invoke-direct {v2, p0}, Lch/kingdoms/kor/KingdomsActivity$21$1;-><init>(Lch/kingdoms/kor/KingdomsActivity$21;)V

    invoke-static {v0, v1, v2}, Lch/android/api/ui/ChViewGen;->popUpOkView(Landroid/app/Activity;Ljava/lang/String;Landroid/view/View$OnClickListener;)Landroid/view/View;

    .line 665
    return-void
.end method
