.class Lch/kingdoms/android/dpad/Dpad$7;
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
    iput-object p1, p0, Lch/kingdoms/android/dpad/Dpad$7;->this$0:Lch/kingdoms/android/dpad/Dpad;

    .line 332
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 336
    invoke-static {}, Lch/kingdoms/ndk/NdkUiEventManager;->callNativeGetQuickSlotsData()Lch/kingdoms/ndk/data/QuickSlotsData;

    move-result-object v2

    .line 338
    .local v2, "quickSlotData":Lch/kingdoms/ndk/data/QuickSlotsData;
    iget-object v3, p0, Lch/kingdoms/android/dpad/Dpad$7;->this$0:Lch/kingdoms/android/dpad/Dpad;

    invoke-static {v3}, Lch/kingdoms/android/dpad/Dpad;->access$1(Lch/kingdoms/android/dpad/Dpad;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 339
    invoke-virtual {v2}, Lch/kingdoms/ndk/data/QuickSlotsData;->getSlotA()[Lch/kingdoms/ndk/data/QuickSlotsData$QSlot;

    move-result-object v1

    .line 344
    .local v1, "qslots":[Lch/kingdoms/ndk/data/QuickSlotsData$QSlot;
    :goto_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v3, p0, Lch/kingdoms/android/dpad/Dpad$7;->this$0:Lch/kingdoms/android/dpad/Dpad;

    invoke-static {v3}, Lch/kingdoms/android/dpad/Dpad;->access$0(Lch/kingdoms/android/dpad/Dpad;)[Lch/kingdoms/android/dpad/Dpad$SlotButton;

    move-result-object v3

    array-length v3, v3

    add-int/lit8 v3, v3, -0x1

    if-lt v0, v3, :cond_1

    .line 350
    return-void

    .line 341
    .end local v0    # "i":I
    .end local v1    # "qslots":[Lch/kingdoms/ndk/data/QuickSlotsData$QSlot;
    :cond_0
    invoke-virtual {v2}, Lch/kingdoms/ndk/data/QuickSlotsData;->getSlotB()[Lch/kingdoms/ndk/data/QuickSlotsData$QSlot;

    move-result-object v1

    .restart local v1    # "qslots":[Lch/kingdoms/ndk/data/QuickSlotsData$QSlot;
    goto :goto_0

    .line 345
    .restart local v0    # "i":I
    :cond_1
    aget-object v3, v1, v0

    invoke-virtual {v3}, Lch/kingdoms/ndk/data/QuickSlotsData$QSlot;->getType()B

    move-result v3

    if-nez v3, :cond_2

    aget-object v3, v1, v0

    invoke-virtual {v3}, Lch/kingdoms/ndk/data/QuickSlotsData$QSlot;->getSlotState()B

    move-result v3

    if-eqz v3, :cond_2

    aget-object v3, v1, v0

    iget-object v4, p0, Lch/kingdoms/android/dpad/Dpad$7;->this$0:Lch/kingdoms/android/dpad/Dpad;

    invoke-static {v4}, Lch/kingdoms/android/dpad/Dpad;->access$2(Lch/kingdoms/android/dpad/Dpad;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lch/kingdoms/ndk/data/QuickSlotsData$QSlot;->isEqualItem(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 346
    iget-object v3, p0, Lch/kingdoms/android/dpad/Dpad$7;->this$0:Lch/kingdoms/android/dpad/Dpad;

    invoke-static {v3}, Lch/kingdoms/android/dpad/Dpad;->access$0(Lch/kingdoms/android/dpad/Dpad;)[Lch/kingdoms/android/dpad/Dpad$SlotButton;

    move-result-object v3

    aget-object v3, v3, v0

    iget-object v4, p0, Lch/kingdoms/android/dpad/Dpad$7;->this$0:Lch/kingdoms/android/dpad/Dpad;

    invoke-static {v4}, Lch/kingdoms/android/dpad/Dpad;->access$3(Lch/kingdoms/android/dpad/Dpad;)I

    move-result v4

    invoke-virtual {v3, v4}, Lch/kingdoms/android/dpad/Dpad$SlotButton;->updateCnt(I)V

    .line 347
    iget-object v3, p0, Lch/kingdoms/android/dpad/Dpad$7;->this$0:Lch/kingdoms/android/dpad/Dpad;

    invoke-static {v3}, Lch/kingdoms/android/dpad/Dpad;->access$0(Lch/kingdoms/android/dpad/Dpad;)[Lch/kingdoms/android/dpad/Dpad$SlotButton;

    move-result-object v3

    aget-object v3, v3, v0

    invoke-virtual {v3}, Lch/kingdoms/android/dpad/Dpad$SlotButton;->invalidate()V

    .line 344
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method
