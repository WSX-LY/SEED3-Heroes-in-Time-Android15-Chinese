.class Lch/kingdoms/android/ui/NewInvenUi$InvenAndInfoView$1;
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
    iput-object p1, p0, Lch/kingdoms/android/ui/NewInvenUi$InvenAndInfoView$1;->this$1:Lch/kingdoms/android/ui/NewInvenUi$InvenAndInfoView;

    iput-object p2, p0, Lch/kingdoms/android/ui/NewInvenUi$InvenAndInfoView$1;->val$selectedItem:Lch/kingdoms/ndk/data/Inven$Item;

    .line 287
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 291
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 305
    :goto_0
    return-void

    .line 293
    :pswitch_0
    invoke-static {}, Lch/android/api/ui/ChViewGen;->closePopUpView()V

    goto :goto_0

    .line 296
    :pswitch_1
    invoke-static {}, Lch/android/api/ui/ChViewGen;->closePopUpView()V

    .line 298
    iget-object v0, p0, Lch/kingdoms/android/ui/NewInvenUi$InvenAndInfoView$1;->val$selectedItem:Lch/kingdoms/ndk/data/Inven$Item;

    iget v0, v0, Lch/kingdoms/ndk/data/Inven$Item;->index:I

    const/4 v1, -0x1

    invoke-static {v0, v1}, Lch/kingdoms/ndk/NdkUiEventManager;->callNativeDeleteItem(II)Z

    move-result v0

    if-nez v0, :cond_0

    .line 299
    iget-object v0, p0, Lch/kingdoms/android/ui/NewInvenUi$InvenAndInfoView$1;->this$1:Lch/kingdoms/android/ui/NewInvenUi$InvenAndInfoView;

    invoke-static {v0}, Lch/kingdoms/android/ui/NewInvenUi$InvenAndInfoView;->access$5(Lch/kingdoms/android/ui/NewInvenUi$InvenAndInfoView;)Lch/kingdoms/android/ui/NewInvenUi;

    move-result-object v0

    invoke-static {v0}, Lch/kingdoms/android/ui/NewInvenUi;->access$0(Lch/kingdoms/android/ui/NewInvenUi;)Landroid/app/Activity;

    move-result-object v0

    const/16 v1, 0x34

    invoke-static {v1}, Lch/kingdoms/ndk/NdkTextLoader;->getGameMenuTxt(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lch/android/api/ui/ChViewGen;->popUpOkView(Landroid/app/Activity;Ljava/lang/String;)Landroid/view/View;

    .line 301
    :cond_0
    iget-object v0, p0, Lch/kingdoms/android/ui/NewInvenUi$InvenAndInfoView$1;->this$1:Lch/kingdoms/android/ui/NewInvenUi$InvenAndInfoView;

    invoke-virtual {v0}, Lch/kingdoms/android/ui/NewInvenUi$InvenAndInfoView;->refreshInven()V

    .line 302
    iget-object v0, p0, Lch/kingdoms/android/ui/NewInvenUi$InvenAndInfoView$1;->this$1:Lch/kingdoms/android/ui/NewInvenUi$InvenAndInfoView;

    invoke-static {v0}, Lch/kingdoms/android/ui/NewInvenUi$InvenAndInfoView;->access$0(Lch/kingdoms/android/ui/NewInvenUi$InvenAndInfoView;)Lch/kingdoms/android/ui/NewInvenUi$InfoView;

    move-result-object v0

    invoke-virtual {v0}, Lch/kingdoms/android/ui/NewInvenUi$InfoView;->update()V

    goto :goto_0

    .line 291
    :pswitch_data_0
    .packed-switch 0x2742
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
