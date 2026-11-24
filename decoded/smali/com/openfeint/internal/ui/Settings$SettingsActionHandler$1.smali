.class Lcom/openfeint/internal/ui/Settings$SettingsActionHandler$1;
.super Ljava/lang/Object;
.source "Settings.java"

# interfaces
.implements Lcom/openfeint/internal/request/IRawRequestDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/openfeint/internal/ui/Settings$SettingsActionHandler;->logout(Ljava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/openfeint/internal/ui/Settings$SettingsActionHandler;


# direct methods
.method constructor <init>(Lcom/openfeint/internal/ui/Settings$SettingsActionHandler;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/openfeint/internal/ui/Settings$SettingsActionHandler$1;->this$1:Lcom/openfeint/internal/ui/Settings$SettingsActionHandler;

    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResponse(ILjava/lang/String;)V
    .locals 1
    .param p1, "responseCode"    # I
    .param p2, "responseBody"    # Ljava/lang/String;

    .prologue
    .line 110
    iget-object v0, p0, Lcom/openfeint/internal/ui/Settings$SettingsActionHandler$1;->this$1:Lcom/openfeint/internal/ui/Settings$SettingsActionHandler;

    invoke-static {v0}, Lcom/openfeint/internal/ui/Settings$SettingsActionHandler;->access$0(Lcom/openfeint/internal/ui/Settings$SettingsActionHandler;)Lcom/openfeint/internal/ui/Settings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/openfeint/internal/ui/Settings;->finish()V

    .line 111
    return-void
.end method
