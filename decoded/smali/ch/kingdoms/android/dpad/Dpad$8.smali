.class Lch/kingdoms/android/dpad/Dpad$8;
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
    iput-object p1, p0, Lch/kingdoms/android/dpad/Dpad$8;->this$0:Lch/kingdoms/android/dpad/Dpad;

    .line 353
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 357
    iget-object v0, p0, Lch/kingdoms/android/dpad/Dpad$8;->this$0:Lch/kingdoms/android/dpad/Dpad;

    invoke-static {v0}, Lch/kingdoms/android/dpad/Dpad;->access$4(Lch/kingdoms/android/dpad/Dpad;)V

    .line 358
    return-void
.end method
