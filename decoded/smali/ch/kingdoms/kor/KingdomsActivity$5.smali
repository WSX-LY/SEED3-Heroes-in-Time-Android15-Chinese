.class Lch/kingdoms/kor/KingdomsActivity$5;
.super Ljava/lang/Object;
.source "KingdomsActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lch/kingdoms/kor/KingdomsActivity;->initGame()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lch/kingdoms/kor/KingdomsActivity;

.field private final synthetic val$context:Landroid/content/Context;

.field private final synthetic val$dba:Lch/kingdoms/android/db/DBAdapter;

.field private final synthetic val$pd:Landroid/app/ProgressDialog;

.field private final synthetic val$res:Landroid/content/res/Resources;


# direct methods
.method constructor <init>(Lch/kingdoms/kor/KingdomsActivity;Landroid/content/Context;Lch/kingdoms/android/db/DBAdapter;Landroid/app/ProgressDialog;Landroid/content/res/Resources;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lch/kingdoms/kor/KingdomsActivity$5;->this$0:Lch/kingdoms/kor/KingdomsActivity;

    iput-object p2, p0, Lch/kingdoms/kor/KingdomsActivity$5;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lch/kingdoms/kor/KingdomsActivity$5;->val$dba:Lch/kingdoms/android/db/DBAdapter;

    iput-object p4, p0, Lch/kingdoms/kor/KingdomsActivity$5;->val$pd:Landroid/app/ProgressDialog;

    iput-object p5, p0, Lch/kingdoms/kor/KingdomsActivity$5;->val$res:Landroid/content/res/Resources;

    .line 311
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lch/kingdoms/kor/KingdomsActivity$5;)Lch/kingdoms/kor/KingdomsActivity;
    .locals 1

    .prologue
    .line 311
    iget-object v0, p0, Lch/kingdoms/kor/KingdomsActivity$5;->this$0:Lch/kingdoms/kor/KingdomsActivity;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 315
    iget-object v0, p0, Lch/kingdoms/kor/KingdomsActivity$5;->this$0:Lch/kingdoms/kor/KingdomsActivity;

    invoke-static {v0}, Lch/kingdoms/kor/KingdomsActivity;->access$0(Lch/kingdoms/kor/KingdomsActivity;)Lch/android/api/util/DisplayInfo;

    move-result-object v0

    invoke-static {v0}, Lch/android/api/util/TextPaints;->init(Lch/android/api/util/DisplayInfo;)V

    .line 316
    iget-object v0, p0, Lch/kingdoms/kor/KingdomsActivity$5;->val$context:Landroid/content/Context;

    invoke-static {v0}, Lch/kingdoms/ndk/NdkResourceManager;->init(Landroid/content/Context;)V

    .line 317
    iget-object v0, p0, Lch/kingdoms/kor/KingdomsActivity$5;->val$dba:Lch/kingdoms/android/db/DBAdapter;

    invoke-virtual {v0}, Lch/kingdoms/android/db/DBAdapter;->updateSaveData()V

    .line 318
    iget-object v0, p0, Lch/kingdoms/kor/KingdomsActivity$5;->this$0:Lch/kingdoms/kor/KingdomsActivity;

    invoke-static {v0}, Lch/kingdoms/kor/KingdomsActivity;->access$1(Lch/kingdoms/kor/KingdomsActivity;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lch/kingdoms/kor/KingdomsActivity$5$1;

    iget-object v2, p0, Lch/kingdoms/kor/KingdomsActivity$5;->val$pd:Landroid/app/ProgressDialog;

    iget-object v3, p0, Lch/kingdoms/kor/KingdomsActivity$5;->val$res:Landroid/content/res/Resources;

    invoke-direct {v1, p0, v2, v3}, Lch/kingdoms/kor/KingdomsActivity$5$1;-><init>(Lch/kingdoms/kor/KingdomsActivity$5;Landroid/app/ProgressDialog;Landroid/content/res/Resources;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 327
    return-void
.end method
