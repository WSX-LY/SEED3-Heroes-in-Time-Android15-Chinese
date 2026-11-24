.class Lch/android/api/ui/ChStaffRollView$StaffText;
.super Ljava/lang/Object;
.source "ChStaffRollView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lch/android/api/ui/ChStaffRollView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StaffText"
.end annotation


# instance fields
.field public text:Ljava/lang/String;

.field public textPaint:Landroid/graphics/Paint;

.field final synthetic this$0:Lch/android/api/ui/ChStaffRollView;


# direct methods
.method public constructor <init>(Lch/android/api/ui/ChStaffRollView;Ljava/lang/String;Landroid/graphics/Paint;)V
    .locals 0
    .param p2, "text"    # Ljava/lang/String;
    .param p3, "textPaint"    # Landroid/graphics/Paint;

    .prologue
    .line 92
    iput-object p1, p0, Lch/android/api/ui/ChStaffRollView$StaffText;->this$0:Lch/android/api/ui/ChStaffRollView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 93
    iput-object p2, p0, Lch/android/api/ui/ChStaffRollView$StaffText;->text:Ljava/lang/String;

    .line 94
    iput-object p3, p0, Lch/android/api/ui/ChStaffRollView$StaffText;->textPaint:Landroid/graphics/Paint;

    .line 95
    return-void
.end method
