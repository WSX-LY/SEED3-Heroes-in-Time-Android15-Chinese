.class Lch/kingdoms/kor/KingdomsActivity$12;
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
    iput-object p1, p0, Lch/kingdoms/kor/KingdomsActivity$12;->this$0:Lch/kingdoms/kor/KingdomsActivity;

    .line 491
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 495
    iget-object v0, p0, Lch/kingdoms/kor/KingdomsActivity$12;->this$0:Lch/kingdoms/kor/KingdomsActivity;

    invoke-static {v0}, Lch/kingdoms/kor/KingdomsActivity;->access$5(Lch/kingdoms/kor/KingdomsActivity;)Lch/kingdoms/android/ui/MainMenuUi;

    move-result-object v0

    invoke-virtual {v0}, Lch/kingdoms/android/ui/MainMenuUi;->endLogo()V

    .line 496
    return-void
.end method
