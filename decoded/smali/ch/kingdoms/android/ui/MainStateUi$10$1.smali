.class Lch/kingdoms/android/ui/MainStateUi$10$1;
.super Ljava/lang/Object;
.source "MainStateUi.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lch/kingdoms/android/ui/MainStateUi$10;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lch/kingdoms/android/ui/MainStateUi$10;

.field private final synthetic val$dba:Lch/kingdoms/android/db/DBAdapter;


# direct methods
.method constructor <init>(Lch/kingdoms/android/ui/MainStateUi$10;Lch/kingdoms/android/db/DBAdapter;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lch/kingdoms/android/ui/MainStateUi$10$1;->this$1:Lch/kingdoms/android/ui/MainStateUi$10;

    iput-object p2, p0, Lch/kingdoms/android/ui/MainStateUi$10$1;->val$dba:Lch/kingdoms/android/db/DBAdapter;

    .line 283
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 287
    invoke-static {}, Lch/android/api/ui/ChViewGen;->closePopUpView()V

    .line 289
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-wide/32 v3, 0x5265c00

    div-long/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 290
    .local v0, "day":Ljava/lang/Long;
    iget-object v1, p0, Lch/kingdoms/android/ui/MainStateUi$10$1;->val$dba:Lch/kingdoms/android/db/DBAdapter;

    const-string v2, "MYSTERYDUNGEON_LAST_DAY"

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lch/kingdoms/android/db/DBAdapter;->setData(Ljava/lang/String;[B)Z

    .line 291
    invoke-static {}, Lch/kingdoms/ndk/NdkUiEventManager;->enterDungeon()V

    .line 292
    return-void
.end method
