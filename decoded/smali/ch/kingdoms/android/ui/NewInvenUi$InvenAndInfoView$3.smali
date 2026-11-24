.class Lch/kingdoms/android/ui/NewInvenUi$InvenAndInfoView$3;
.super Ljava/lang/Object;
.source "NewInvenUi.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lch/kingdoms/android/ui/NewInvenUi$InvenAndInfoView;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lch/kingdoms/android/ui/NewInvenUi$InvenAndInfoView;


# direct methods
.method constructor <init>(Lch/kingdoms/android/ui/NewInvenUi$InvenAndInfoView;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lch/kingdoms/android/ui/NewInvenUi$InvenAndInfoView$3;->this$1:Lch/kingdoms/android/ui/NewInvenUi$InvenAndInfoView;

    .line 346
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 350
    invoke-static {}, Lch/android/api/ui/ChViewGen;->closePopUpView()V

    .line 351
    return-void
.end method
