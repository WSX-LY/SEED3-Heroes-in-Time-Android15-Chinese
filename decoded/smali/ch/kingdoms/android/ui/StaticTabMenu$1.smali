.class Lch/kingdoms/android/ui/StaticTabMenu$1;
.super Ljava/lang/Object;
.source "StaticTabMenu.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lch/kingdoms/android/ui/StaticTabMenu;-><init>(Landroid/app/Activity;Lch/android/api/util/DisplayInfo;Lch/kingdoms/android/ui/IGameMenu;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lch/kingdoms/android/ui/StaticTabMenu;


# direct methods
.method constructor <init>(Lch/kingdoms/android/ui/StaticTabMenu;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lch/kingdoms/android/ui/StaticTabMenu$1;->this$0:Lch/kingdoms/android/ui/StaticTabMenu;

    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 110
    iget-object v0, p0, Lch/kingdoms/android/ui/StaticTabMenu$1;->this$0:Lch/kingdoms/android/ui/StaticTabMenu;

    invoke-static {v0}, Lch/kingdoms/android/ui/StaticTabMenu;->access$1(Lch/kingdoms/android/ui/StaticTabMenu;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 111
    iget-object v0, p0, Lch/kingdoms/android/ui/StaticTabMenu$1;->this$0:Lch/kingdoms/android/ui/StaticTabMenu;

    invoke-static {v0}, Lch/kingdoms/android/ui/StaticTabMenu;->access$0(Lch/kingdoms/android/ui/StaticTabMenu;)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lch/kingdoms/android/ui/StaticTabMenu$1;->this$0:Lch/kingdoms/android/ui/StaticTabMenu;

    invoke-static {v1}, Lch/kingdoms/android/ui/StaticTabMenu;->access$2(Lch/kingdoms/android/ui/StaticTabMenu;)Landroid/view/View;

    move-result-object v1

    if-ne v0, v1, :cond_1

    .line 112
    iget-object v0, p0, Lch/kingdoms/android/ui/StaticTabMenu$1;->this$0:Lch/kingdoms/android/ui/StaticTabMenu;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lch/kingdoms/android/ui/StaticTabMenu;->access$3(Lch/kingdoms/android/ui/StaticTabMenu;Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 113
    iget-object v0, p0, Lch/kingdoms/android/ui/StaticTabMenu$1;->this$0:Lch/kingdoms/android/ui/StaticTabMenu;

    invoke-virtual {v0}, Lch/kingdoms/android/ui/StaticTabMenu;->close()V

    .line 119
    :cond_0
    :goto_0
    return-void

    .line 116
    :cond_1
    iget-object v0, p0, Lch/kingdoms/android/ui/StaticTabMenu$1;->this$0:Lch/kingdoms/android/ui/StaticTabMenu;

    invoke-virtual {v0}, Lch/kingdoms/android/ui/StaticTabMenu;->close()V

    goto :goto_0
.end method
