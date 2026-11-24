.class Lch/kingdoms/kor/KingdomsActivity$41;
.super Ljava/lang/Object;
.source "KingdomsActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lch/kingdoms/kor/KingdomsActivity;->showFinishDialog()V
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
    iput-object p1, p0, Lch/kingdoms/kor/KingdomsActivity$41;->this$0:Lch/kingdoms/kor/KingdomsActivity;

    .line 1245
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 1248
    iget-object v0, p0, Lch/kingdoms/kor/KingdomsActivity$41;->this$0:Lch/kingdoms/kor/KingdomsActivity;

    invoke-static {v0}, Lch/kingdoms/kor/KingdomsActivity;->access$10(Lch/kingdoms/kor/KingdomsActivity;)Lch/kingdoms/android/ChGLSurfaceView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1249
    iget-object v0, p0, Lch/kingdoms/kor/KingdomsActivity$41;->this$0:Lch/kingdoms/kor/KingdomsActivity;

    invoke-static {v0}, Lch/kingdoms/kor/KingdomsActivity;->access$10(Lch/kingdoms/kor/KingdomsActivity;)Lch/kingdoms/android/ChGLSurfaceView;

    move-result-object v0

    invoke-virtual {v0}, Lch/kingdoms/android/ChGLSurfaceView;->onResume()V

    .line 1251
    :cond_0
    invoke-static {}, Lch/kingdoms/kor/KingdomsActivity;->access$11()V

    .line 1252
    iget-object v0, p0, Lch/kingdoms/kor/KingdomsActivity$41;->this$0:Lch/kingdoms/kor/KingdomsActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lch/kingdoms/kor/KingdomsActivity;->access$12(Lch/kingdoms/kor/KingdomsActivity;Landroid/app/AlertDialog$Builder;)V

    .line 1253
    invoke-static {}, Lch/kingdoms/ndk/NdkSoundManager;->onResume()V

    .line 1254
    return-void
.end method
