.class Lch/kingdoms/android/ui/NetworkUi$11;
.super Ljava/lang/Object;
.source "NetworkUi.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lch/kingdoms/android/ui/NetworkUi;->popUpGiftFencePopUp(IILch/android/api/network/ChResultPacket;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lch/kingdoms/android/ui/NetworkUi;

.field private final synthetic val$pageNum:I

.field private final synthetic val$resultPacket:Lch/android/api/network/ChResultPacket;

.field private final synthetic val$size:I


# direct methods
.method constructor <init>(Lch/kingdoms/android/ui/NetworkUi;IILch/android/api/network/ChResultPacket;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lch/kingdoms/android/ui/NetworkUi$11;->this$0:Lch/kingdoms/android/ui/NetworkUi;

    iput p2, p0, Lch/kingdoms/android/ui/NetworkUi$11;->val$pageNum:I

    iput p3, p0, Lch/kingdoms/android/ui/NetworkUi$11;->val$size:I

    iput-object p4, p0, Lch/kingdoms/android/ui/NetworkUi$11;->val$resultPacket:Lch/android/api/network/ChResultPacket;

    .line 580
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 584
    iget v0, p0, Lch/kingdoms/android/ui/NetworkUi$11;->val$pageNum:I

    add-int/lit8 v0, v0, 0x1

    iget v1, p0, Lch/kingdoms/android/ui/NetworkUi$11;->val$size:I

    if-ge v0, v1, :cond_0

    .line 585
    iget-object v0, p0, Lch/kingdoms/android/ui/NetworkUi$11;->this$0:Lch/kingdoms/android/ui/NetworkUi;

    iget v1, p0, Lch/kingdoms/android/ui/NetworkUi$11;->val$pageNum:I

    add-int/lit8 v1, v1, 0x1

    iget v2, p0, Lch/kingdoms/android/ui/NetworkUi$11;->val$size:I

    iget-object v3, p0, Lch/kingdoms/android/ui/NetworkUi$11;->val$resultPacket:Lch/android/api/network/ChResultPacket;

    invoke-static {v0, v1, v2, v3}, Lch/kingdoms/android/ui/NetworkUi;->access$24(Lch/kingdoms/android/ui/NetworkUi;IILch/android/api/network/ChResultPacket;)V

    .line 587
    :cond_0
    return-void
.end method
