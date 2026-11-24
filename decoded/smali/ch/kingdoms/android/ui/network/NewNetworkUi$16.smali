.class Lch/kingdoms/android/ui/network/NewNetworkUi$16;
.super Ljava/lang/Object;
.source "NewNetworkUi.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lch/kingdoms/android/ui/network/NewNetworkUi;->popUpRegisterId(Lch/android/api/ui/ChPopUpEditTextView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lch/kingdoms/android/ui/network/NewNetworkUi;


# direct methods
.method constructor <init>(Lch/kingdoms/android/ui/network/NewNetworkUi;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lch/kingdoms/android/ui/network/NewNetworkUi$16;->this$0:Lch/kingdoms/android/ui/network/NewNetworkUi;

    .line 1236
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 1240
    invoke-static {}, Lch/android/api/ui/ChViewGen;->closePopUpView()V

    .line 1241
    return-void
.end method
