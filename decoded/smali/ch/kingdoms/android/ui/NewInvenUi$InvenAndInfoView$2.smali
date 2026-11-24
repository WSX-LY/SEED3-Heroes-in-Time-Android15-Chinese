.class Lch/kingdoms/android/ui/NewInvenUi$InvenAndInfoView$2;
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

.field private final synthetic val$selectedItem:Lch/kingdoms/ndk/data/Inven$Item;


# direct methods
.method constructor <init>(Lch/kingdoms/android/ui/NewInvenUi$InvenAndInfoView;Lch/kingdoms/ndk/data/Inven$Item;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lch/kingdoms/android/ui/NewInvenUi$InvenAndInfoView$2;->this$1:Lch/kingdoms/android/ui/NewInvenUi$InvenAndInfoView;

    iput-object p2, p0, Lch/kingdoms/android/ui/NewInvenUi$InvenAndInfoView$2;->val$selectedItem:Lch/kingdoms/ndk/data/Inven$Item;

    .line 320
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 324
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 339
    :goto_0
    return-void

    .line 326
    :sswitch_0
    invoke-static {}, Lch/android/api/ui/ChViewGen;->closePopUpView()V

    .line 327
    iget-object v0, p0, Lch/kingdoms/android/ui/NewInvenUi$InvenAndInfoView$2;->val$selectedItem:Lch/kingdoms/ndk/data/Inven$Item;

    iget v0, v0, Lch/kingdoms/ndk/data/Inven$Item;->index:I

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lch/kingdoms/ndk/NdkUiEventManager;->callNativeEquipItem(II)V

    .line 328
    iget-object v0, p0, Lch/kingdoms/android/ui/NewInvenUi$InvenAndInfoView$2;->this$1:Lch/kingdoms/android/ui/NewInvenUi$InvenAndInfoView;

    invoke-virtual {v0}, Lch/kingdoms/android/ui/NewInvenUi$InvenAndInfoView;->refreshInven()V

    goto :goto_0

    .line 331
    :sswitch_1
    invoke-static {}, Lch/android/api/ui/ChViewGen;->closePopUpView()V

    .line 332
    iget-object v0, p0, Lch/kingdoms/android/ui/NewInvenUi$InvenAndInfoView$2;->val$selectedItem:Lch/kingdoms/ndk/data/Inven$Item;

    iget v0, v0, Lch/kingdoms/ndk/data/Inven$Item;->index:I

    const/4 v1, 0x5

    invoke-static {v0, v1}, Lch/kingdoms/ndk/NdkUiEventManager;->callNativeEquipItem(II)V

    .line 333
    iget-object v0, p0, Lch/kingdoms/android/ui/NewInvenUi$InvenAndInfoView$2;->this$1:Lch/kingdoms/android/ui/NewInvenUi$InvenAndInfoView;

    invoke-virtual {v0}, Lch/kingdoms/android/ui/NewInvenUi$InvenAndInfoView;->refreshInven()V

    goto :goto_0

    .line 336
    :sswitch_2
    invoke-static {}, Lch/android/api/ui/ChViewGen;->closePopUpView()V

    goto :goto_0

    .line 324
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x2744 -> :sswitch_2
    .end sparse-switch
.end method
