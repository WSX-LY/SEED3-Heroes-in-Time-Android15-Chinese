.class Lch/kingdoms/ndk/NdkUiEventManager$41;
.super Ljava/lang/Object;
.source "NdkUiEventManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lch/kingdoms/ndk/NdkUiEventManager;->showPrisonBreakTimeView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 1168
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 1173
    invoke-static {}, Lch/kingdoms/ndk/NdkUiEventManager;->access$8()Lch/kingdoms/kor/KingdomsActivity;

    move-result-object v1

    sget-object v2, Lch/kingdoms/ndk/NdkUiEventManager;->s_prisonBreakTimeView:Lch/android/api/ui/ChPrisonBreakTimeView;

    invoke-static {}, Lch/kingdoms/ndk/NdkUiEventManager;->access$9()Lch/android/api/util/DisplayInfo;

    move-result-object v3

    iget v3, v3, Lch/android/api/util/DisplayInfo;->density:F

    const/high16 v4, 0x425c0000    # 55.0f

    mul-float/2addr v3, v4

    float-to-int v3, v3

    invoke-static {v1, v2, v3}, Lch/android/api/ui/ChViewGen;->popUp(Landroid/app/Activity;Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    .line 1174
    .local v0, "view":Landroid/view/View;
    const/16 v1, 0x2712

    invoke-virtual {v0, v1}, Landroid/view/View;->setId(I)V

    .line 1175
    return-void
.end method
