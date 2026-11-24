.class Lch/kingdoms/android/ui/StaticTabMenu$TabMenuLayout;
.super Lch/android/api/ui/ChRelativeLayout;
.source "StaticTabMenu.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lch/kingdoms/android/ui/StaticTabMenu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TabMenuLayout"
.end annotation


# instance fields
.field final synthetic this$0:Lch/kingdoms/android/ui/StaticTabMenu;


# direct methods
.method public constructor <init>(Lch/kingdoms/android/ui/StaticTabMenu;Landroid/content/Context;)V
    .locals 0
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 401
    iput-object p1, p0, Lch/kingdoms/android/ui/StaticTabMenu$TabMenuLayout;->this$0:Lch/kingdoms/android/ui/StaticTabMenu;

    .line 402
    invoke-direct {p0, p2}, Lch/android/api/ui/ChRelativeLayout;-><init>(Landroid/content/Context;)V

    .line 404
    return-void
.end method


# virtual methods
.method public setVisibility(I)V
    .locals 1
    .param p1, "visibility"    # I

    .prologue
    .line 409
    invoke-super {p0, p1}, Lch/android/api/ui/ChRelativeLayout;->setVisibility(I)V

    .line 410
    iget-object v0, p0, Lch/kingdoms/android/ui/StaticTabMenu$TabMenuLayout;->this$0:Lch/kingdoms/android/ui/StaticTabMenu;

    invoke-static {v0}, Lch/kingdoms/android/ui/StaticTabMenu;->access$0(Lch/kingdoms/android/ui/StaticTabMenu;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 411
    iget-object v0, p0, Lch/kingdoms/android/ui/StaticTabMenu$TabMenuLayout;->this$0:Lch/kingdoms/android/ui/StaticTabMenu;

    invoke-static {v0}, Lch/kingdoms/android/ui/StaticTabMenu;->access$0(Lch/kingdoms/android/ui/StaticTabMenu;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 413
    :cond_0
    return-void
.end method
