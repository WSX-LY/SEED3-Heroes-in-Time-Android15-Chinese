.class public final Lcom/openfeint/internal/ui/NativeBrowser$JSInterface;
.super Ljava/lang/Object;
.source "NativeBrowser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/openfeint/internal/ui/NativeBrowser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "JSInterface"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/openfeint/internal/ui/NativeBrowser;


# direct methods
.method public constructor <init>(Lcom/openfeint/internal/ui/NativeBrowser;)V
    .locals 0

    .prologue
    .line 21
    iput-object p1, p0, Lcom/openfeint/internal/ui/NativeBrowser$JSInterface;->this$0:Lcom/openfeint/internal/ui/NativeBrowser;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/openfeint/internal/ui/NativeBrowser$JSInterface;)Lcom/openfeint/internal/ui/NativeBrowser;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/openfeint/internal/ui/NativeBrowser$JSInterface;->this$0:Lcom/openfeint/internal/ui/NativeBrowser;

    return-object v0
.end method


# virtual methods
.method public returnValue(Ljava/lang/String;)V
    .locals 2
    .param p1, "returnValue"    # Ljava/lang/String;

    .prologue
    .line 23
    iget-object v0, p0, Lcom/openfeint/internal/ui/NativeBrowser$JSInterface;->this$0:Lcom/openfeint/internal/ui/NativeBrowser;

    new-instance v1, Lcom/openfeint/internal/ui/NativeBrowser$JSInterface$1;

    invoke-direct {v1, p0, p1}, Lcom/openfeint/internal/ui/NativeBrowser$JSInterface$1;-><init>(Lcom/openfeint/internal/ui/NativeBrowser$JSInterface;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/openfeint/internal/ui/NativeBrowser;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 33
    return-void
.end method
