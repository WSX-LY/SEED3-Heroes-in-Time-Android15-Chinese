.class Lch/kingdoms/android/ui/StoreUi$3;
.super Ljava/lang/Object;
.source "StoreUi.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lch/kingdoms/android/ui/StoreUi;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lch/kingdoms/android/ui/StoreUi;


# direct methods
.method constructor <init>(Lch/kingdoms/android/ui/StoreUi;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lch/kingdoms/android/ui/StoreUi$3;->this$0:Lch/kingdoms/android/ui/StoreUi;

    .line 142
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 146
    invoke-static {}, Lch/android/api/ui/ChViewGen;->closePopUpView()V

    .line 147
    invoke-static {}, Lch/android/api/ui/ChViewGen;->closePopUpView()V

    .line 148
    iget-object v0, p0, Lch/kingdoms/android/ui/StoreUi$3;->this$0:Lch/kingdoms/android/ui/StoreUi;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lch/kingdoms/android/ui/StoreUi;->access$5(Lch/kingdoms/android/ui/StoreUi;Z)V

    .line 149
    return-void
.end method
