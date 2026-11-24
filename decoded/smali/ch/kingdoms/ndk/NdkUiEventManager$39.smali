.class Lch/kingdoms/ndk/NdkUiEventManager$39;
.super Ljava/lang/Object;
.source "NdkUiEventManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lch/kingdoms/ndk/NdkUiEventManager;->closeHuntingView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 1121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 1126
    invoke-static {}, Lch/android/api/ui/ChViewGen;->closePopUpView()V

    .line 1127
    const/4 v0, 0x0

    sput-object v0, Lch/kingdoms/ndk/NdkUiEventManager;->s_huntingView:Lch/android/api/ui/ChHuntingView;

    .line 1128
    return-void
.end method
