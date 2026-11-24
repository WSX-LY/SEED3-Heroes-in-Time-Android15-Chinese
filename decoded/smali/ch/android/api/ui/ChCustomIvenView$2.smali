.class Lch/android/api/ui/ChCustomIvenView$2;
.super Ljava/lang/Object;
.source "ChCustomIvenView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lch/android/api/ui/ChCustomIvenView;-><init>(Landroid/app/Activity;Lch/android/api/util/DisplayInfo;Ljava/lang/String;Ljava/lang/String;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lch/android/api/ui/ChCustomIvenView;


# direct methods
.method constructor <init>(Lch/android/api/ui/ChCustomIvenView;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lch/android/api/ui/ChCustomIvenView$2;->this$0:Lch/android/api/ui/ChCustomIvenView;

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 63
    iget-object v0, p0, Lch/android/api/ui/ChCustomIvenView$2;->this$0:Lch/android/api/ui/ChCustomIvenView;

    iget-object v1, p0, Lch/android/api/ui/ChCustomIvenView$2;->this$0:Lch/android/api/ui/ChCustomIvenView;

    invoke-static {v1}, Lch/android/api/ui/ChCustomIvenView;->access$1(Lch/android/api/ui/ChCustomIvenView;)Lch/android/api/ui/ChTextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Lch/android/api/ui/ChCustomIvenView;->onMoneyClick(Lch/android/api/ui/ChTextView;)V

    .line 64
    return-void
.end method
