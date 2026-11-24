.class Lch/kingdoms/android/ui/network/NetworkInvenView$1;
.super Ljava/lang/Object;
.source "NetworkInvenView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lch/kingdoms/android/ui/network/NetworkInvenView;->popUpSelectMenu(Lch/kingdoms/ndk/data/Inven$Item;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lch/kingdoms/android/ui/network/NetworkInvenView;

.field private final synthetic val$item:Lch/kingdoms/ndk/data/Inven$Item;


# direct methods
.method constructor <init>(Lch/kingdoms/android/ui/network/NetworkInvenView;Lch/kingdoms/ndk/data/Inven$Item;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lch/kingdoms/android/ui/network/NetworkInvenView$1;->this$0:Lch/kingdoms/android/ui/network/NetworkInvenView;

    iput-object p2, p0, Lch/kingdoms/android/ui/network/NetworkInvenView$1;->val$item:Lch/kingdoms/ndk/data/Inven$Item;

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 89
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 103
    :goto_0
    return-void

    .line 91
    :pswitch_0
    invoke-static {}, Lch/android/api/ui/ChViewGen;->closePopUpView()V

    .line 92
    iget-object v0, p0, Lch/kingdoms/android/ui/network/NetworkInvenView$1;->this$0:Lch/kingdoms/android/ui/network/NetworkInvenView;

    iget-object v1, p0, Lch/kingdoms/android/ui/network/NetworkInvenView$1;->val$item:Lch/kingdoms/ndk/data/Inven$Item;

    invoke-static {v0, v1}, Lch/kingdoms/android/ui/network/NetworkInvenView;->access$0(Lch/kingdoms/android/ui/network/NetworkInvenView;Lch/kingdoms/ndk/data/Inven$Item;)V

    goto :goto_0

    .line 95
    :pswitch_1
    invoke-static {}, Lch/android/api/ui/ChViewGen;->closePopUpView()V

    .line 96
    iget-object v0, p0, Lch/kingdoms/android/ui/network/NetworkInvenView$1;->this$0:Lch/kingdoms/android/ui/network/NetworkInvenView;

    iget-object v1, p0, Lch/kingdoms/android/ui/network/NetworkInvenView$1;->val$item:Lch/kingdoms/ndk/data/Inven$Item;

    invoke-static {v0, v1}, Lch/kingdoms/android/ui/network/NetworkInvenView;->access$1(Lch/kingdoms/android/ui/network/NetworkInvenView;Lch/kingdoms/ndk/data/Inven$Item;)V

    goto :goto_0

    .line 99
    :pswitch_2
    invoke-static {}, Lch/android/api/ui/ChViewGen;->closePopUpView()V

    .line 100
    iget-object v0, p0, Lch/kingdoms/android/ui/network/NetworkInvenView$1;->this$0:Lch/kingdoms/android/ui/network/NetworkInvenView;

    iget-object v1, p0, Lch/kingdoms/android/ui/network/NetworkInvenView$1;->val$item:Lch/kingdoms/ndk/data/Inven$Item;

    invoke-static {v0, v1}, Lch/kingdoms/android/ui/network/NetworkInvenView;->access$2(Lch/kingdoms/android/ui/network/NetworkInvenView;Lch/kingdoms/ndk/data/Inven$Item;)V

    goto :goto_0

    .line 89
    nop

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
