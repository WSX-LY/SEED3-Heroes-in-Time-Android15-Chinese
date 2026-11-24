.class Lch/kingdoms/ndk/NdkUiEventManager$20$1;
.super Ljava/lang/Object;
.source "NdkUiEventManager.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lch/kingdoms/ndk/NdkUiEventManager$20;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lch/kingdoms/ndk/NdkUiEventManager$20;


# direct methods
.method constructor <init>(Lch/kingdoms/ndk/NdkUiEventManager$20;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lch/kingdoms/ndk/NdkUiEventManager$20$1;->this$1:Lch/kingdoms/ndk/NdkUiEventManager$20;

    .line 621
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 625
    invoke-static {}, Lch/kingdoms/ndk/NdkInputManager;->inputOk()V

    .line 626
    return-void
.end method
