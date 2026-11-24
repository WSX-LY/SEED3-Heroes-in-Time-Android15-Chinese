.class Lch/kingdoms/android/ui/NetworkUi$NetworkInvenView$2;
.super Ljava/lang/Object;
.source "NetworkUi.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lch/kingdoms/android/ui/NetworkUi$NetworkInvenView;->popUpSelectMenu(Lch/kingdoms/ndk/data/Inven$Item;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lch/kingdoms/android/ui/NetworkUi$NetworkInvenView;

.field private final synthetic val$item:Lch/kingdoms/ndk/data/Inven$Item;


# direct methods
.method constructor <init>(Lch/kingdoms/android/ui/NetworkUi$NetworkInvenView;Lch/kingdoms/ndk/data/Inven$Item;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lch/kingdoms/android/ui/NetworkUi$NetworkInvenView$2;->this$1:Lch/kingdoms/android/ui/NetworkUi$NetworkInvenView;

    iput-object p2, p0, Lch/kingdoms/android/ui/NetworkUi$NetworkInvenView$2;->val$item:Lch/kingdoms/ndk/data/Inven$Item;

    .line 1291
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 1295
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 1309
    :goto_0
    return-void

    .line 1297
    :pswitch_0
    invoke-static {}, Lch/android/api/ui/ChViewGen;->closePopUpView()V

    .line 1298
    iget-object v0, p0, Lch/kingdoms/android/ui/NetworkUi$NetworkInvenView$2;->this$1:Lch/kingdoms/android/ui/NetworkUi$NetworkInvenView;

    iget-object v1, p0, Lch/kingdoms/android/ui/NetworkUi$NetworkInvenView$2;->val$item:Lch/kingdoms/ndk/data/Inven$Item;

    invoke-static {v0, v1}, Lch/kingdoms/android/ui/NetworkUi$NetworkInvenView;->access$0(Lch/kingdoms/android/ui/NetworkUi$NetworkInvenView;Lch/kingdoms/ndk/data/Inven$Item;)V

    goto :goto_0

    .line 1301
    :pswitch_1
    invoke-static {}, Lch/android/api/ui/ChViewGen;->closePopUpView()V

    .line 1302
    iget-object v0, p0, Lch/kingdoms/android/ui/NetworkUi$NetworkInvenView$2;->this$1:Lch/kingdoms/android/ui/NetworkUi$NetworkInvenView;

    iget-object v1, p0, Lch/kingdoms/android/ui/NetworkUi$NetworkInvenView$2;->val$item:Lch/kingdoms/ndk/data/Inven$Item;

    invoke-static {v0, v1}, Lch/kingdoms/android/ui/NetworkUi$NetworkInvenView;->access$1(Lch/kingdoms/android/ui/NetworkUi$NetworkInvenView;Lch/kingdoms/ndk/data/Inven$Item;)V

    goto :goto_0

    .line 1305
    :pswitch_2
    invoke-static {}, Lch/android/api/ui/ChViewGen;->closePopUpView()V

    .line 1306
    iget-object v0, p0, Lch/kingdoms/android/ui/NetworkUi$NetworkInvenView$2;->this$1:Lch/kingdoms/android/ui/NetworkUi$NetworkInvenView;

    iget-object v1, p0, Lch/kingdoms/android/ui/NetworkUi$NetworkInvenView$2;->val$item:Lch/kingdoms/ndk/data/Inven$Item;

    invoke-static {v0, v1}, Lch/kingdoms/android/ui/NetworkUi$NetworkInvenView;->access$2(Lch/kingdoms/android/ui/NetworkUi$NetworkInvenView;Lch/kingdoms/ndk/data/Inven$Item;)V

    goto :goto_0

    .line 1295
    nop

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
