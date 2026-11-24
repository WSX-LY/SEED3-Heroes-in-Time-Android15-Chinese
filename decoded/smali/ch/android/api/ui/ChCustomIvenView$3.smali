.class Lch/android/api/ui/ChCustomIvenView$3;
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
    iput-object p1, p0, Lch/android/api/ui/ChCustomIvenView$3;->this$0:Lch/android/api/ui/ChCustomIvenView;

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 81
    iget-object v0, p0, Lch/android/api/ui/ChCustomIvenView$3;->this$0:Lch/android/api/ui/ChCustomIvenView;

    invoke-virtual {v0}, Lch/android/api/ui/ChCustomIvenView;->onBackButtonClick()V

    .line 82
    return-void
.end method
