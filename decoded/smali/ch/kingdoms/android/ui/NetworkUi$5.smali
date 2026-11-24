.class Lch/kingdoms/android/ui/NetworkUi$5;
.super Ljava/lang/Object;
.source "NetworkUi.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lch/kingdoms/android/ui/NetworkUi;->popUpRegisterId(Lch/android/api/ui/ChPopUpEditTextView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lch/kingdoms/android/ui/NetworkUi;


# direct methods
.method constructor <init>(Lch/kingdoms/android/ui/NetworkUi;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lch/kingdoms/android/ui/NetworkUi$5;->this$0:Lch/kingdoms/android/ui/NetworkUi;

    .line 319
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 323
    invoke-static {}, Lch/android/api/ui/ChViewGen;->closePopUpView()V

    .line 324
    return-void
.end method
