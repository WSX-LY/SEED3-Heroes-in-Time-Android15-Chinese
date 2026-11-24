.class Lch/kingdoms/android/dpad/Dpad$6;
.super Ljava/lang/Object;
.source "Dpad.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lch/kingdoms/android/dpad/Dpad;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lch/kingdoms/android/dpad/Dpad;


# direct methods
.method constructor <init>(Lch/kingdoms/android/dpad/Dpad;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lch/kingdoms/android/dpad/Dpad$6;->this$0:Lch/kingdoms/android/dpad/Dpad;

    .line 226
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 230
    iget-object v0, p0, Lch/kingdoms/android/dpad/Dpad$6;->this$0:Lch/kingdoms/android/dpad/Dpad;

    invoke-static {v0}, Lch/kingdoms/android/dpad/Dpad;->access$0(Lch/kingdoms/android/dpad/Dpad;)[Lch/kingdoms/android/dpad/Dpad$SlotButton;

    move-result-object v0

    const/4 v1, 0x5

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lch/kingdoms/android/dpad/Dpad$SlotButton;->invalidate()V

    .line 231
    return-void
.end method
