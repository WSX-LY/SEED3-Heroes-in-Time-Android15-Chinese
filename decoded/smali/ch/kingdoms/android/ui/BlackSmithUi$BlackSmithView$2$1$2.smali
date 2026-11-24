.class Lch/kingdoms/android/ui/BlackSmithUi$BlackSmithView$2$1$2;
.super Ljava/lang/Object;
.source "BlackSmithUi.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lch/kingdoms/android/ui/BlackSmithUi$BlackSmithView$2$1;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$3:Lch/kingdoms/android/ui/BlackSmithUi$BlackSmithView$2$1;


# direct methods
.method constructor <init>(Lch/kingdoms/android/ui/BlackSmithUi$BlackSmithView$2$1;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lch/kingdoms/android/ui/BlackSmithUi$BlackSmithView$2$1$2;->this$3:Lch/kingdoms/android/ui/BlackSmithUi$BlackSmithView$2$1;

    .line 345
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 349
    invoke-static {}, Lch/android/api/ui/ChViewGen;->closePopUpView()V

    .line 350
    return-void
.end method
