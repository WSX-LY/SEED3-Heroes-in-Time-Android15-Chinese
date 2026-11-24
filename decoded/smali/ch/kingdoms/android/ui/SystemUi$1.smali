.class Lch/kingdoms/android/ui/SystemUi$1;
.super Ljava/lang/Object;
.source "SystemUi.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lch/kingdoms/android/ui/SystemUi;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field isClicked:Z

.field final synthetic this$0:Lch/kingdoms/android/ui/SystemUi;


# direct methods
.method constructor <init>(Lch/kingdoms/android/ui/SystemUi;)V
    .locals 1

    .prologue
    .line 1
    iput-object p1, p0, Lch/kingdoms/android/ui/SystemUi$1;->this$0:Lch/kingdoms/android/ui/SystemUi;

    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 116
    const/4 v0, 0x0

    iput-boolean v0, p0, Lch/kingdoms/android/ui/SystemUi$1;->isClicked:Z

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 120
    iget-boolean v1, p0, Lch/kingdoms/android/ui/SystemUi$1;->isClicked:Z

    if-nez v1, :cond_0

    .line 121
    const/4 v1, 0x1

    iput-boolean v1, p0, Lch/kingdoms/android/ui/SystemUi$1;->isClicked:Z

    .line 122
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 141
    :cond_0
    :goto_0
    return-void

    .line 124
    :pswitch_0
    invoke-static {}, Lch/android/api/ui/ChViewGen;->closePopUpView()V

    .line 127
    invoke-static {}, Lch/android/lib/openfeint/ChOpenFeint;->isLogedIn()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 128
    new-instance v0, Lch/kingdoms/android/ui/network/NewNetworkUi;

    iget-object v1, p0, Lch/kingdoms/android/ui/SystemUi$1;->this$0:Lch/kingdoms/android/ui/SystemUi;

    invoke-static {v1}, Lch/kingdoms/android/ui/SystemUi;->access$0(Lch/kingdoms/android/ui/SystemUi;)Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lch/kingdoms/android/ui/SystemUi$1;->this$0:Lch/kingdoms/android/ui/SystemUi;

    invoke-static {v2}, Lch/kingdoms/android/ui/SystemUi;->access$1(Lch/kingdoms/android/ui/SystemUi;)Lch/android/api/util/DisplayInfo;

    move-result-object v2

    iget-object v3, p0, Lch/kingdoms/android/ui/SystemUi$1;->this$0:Lch/kingdoms/android/ui/SystemUi;

    invoke-static {v3}, Lch/kingdoms/android/ui/SystemUi;->access$2(Lch/kingdoms/android/ui/SystemUi;)Lch/kingdoms/android/ui/IGameMenu;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lch/kingdoms/android/ui/network/NewNetworkUi;-><init>(Landroid/app/Activity;Lch/android/api/util/DisplayInfo;Lch/kingdoms/android/ui/IGameMenu;)V

    .line 129
    .local v0, "networkUi":Lch/kingdoms/android/ui/network/NewNetworkUi;
    invoke-virtual {v0}, Lch/kingdoms/android/ui/network/NewNetworkUi;->connect()V

    goto :goto_0

    .line 131
    .end local v0    # "networkUi":Lch/kingdoms/android/ui/network/NewNetworkUi;
    :cond_1
    iget-object v1, p0, Lch/kingdoms/android/ui/SystemUi$1;->this$0:Lch/kingdoms/android/ui/SystemUi;

    invoke-static {v1}, Lch/kingdoms/android/ui/SystemUi;->access$0(Lch/kingdoms/android/ui/SystemUi;)Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f0500a1

    invoke-static {v1, v2}, Lch/android/api/ui/ChViewGen;->popUpOkView(Landroid/app/Activity;I)Landroid/view/View;

    .line 132
    iget-object v1, p0, Lch/kingdoms/android/ui/SystemUi$1;->this$0:Lch/kingdoms/android/ui/SystemUi;

    invoke-static {v1}, Lch/kingdoms/android/ui/SystemUi;->access$2(Lch/kingdoms/android/ui/SystemUi;)Lch/kingdoms/android/ui/IGameMenu;

    move-result-object v1

    invoke-interface {v1}, Lch/kingdoms/android/ui/IGameMenu;->showViewInCenter()V

    goto :goto_0

    .line 136
    :pswitch_1
    invoke-static {}, Lch/android/api/ui/ChViewGen;->closePopUpView()V

    .line 137
    iget-object v1, p0, Lch/kingdoms/android/ui/SystemUi$1;->this$0:Lch/kingdoms/android/ui/SystemUi;

    invoke-static {v1}, Lch/kingdoms/android/ui/SystemUi;->access$2(Lch/kingdoms/android/ui/SystemUi;)Lch/kingdoms/android/ui/IGameMenu;

    move-result-object v1

    invoke-interface {v1}, Lch/kingdoms/android/ui/IGameMenu;->showViewInCenter()V

    goto :goto_0

    .line 122
    :pswitch_data_0
    .packed-switch 0x2742
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
