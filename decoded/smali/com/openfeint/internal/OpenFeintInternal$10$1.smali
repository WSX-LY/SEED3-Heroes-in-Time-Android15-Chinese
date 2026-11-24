.class Lcom/openfeint/internal/OpenFeintInternal$10$1;
.super Ljava/lang/Object;
.source "OpenFeintInternal.java"

# interfaces
.implements Lcom/openfeint/internal/request/IRawRequestDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/openfeint/internal/OpenFeintInternal$10;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/openfeint/internal/OpenFeintInternal$10;

.field private final synthetic val$savedUser:Lcom/openfeint/api/resource/User;

.field private final synthetic val$spotlight:Z


# direct methods
.method constructor <init>(Lcom/openfeint/internal/OpenFeintInternal$10;ZLcom/openfeint/api/resource/User;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/openfeint/internal/OpenFeintInternal$10$1;->this$1:Lcom/openfeint/internal/OpenFeintInternal$10;

    iput-boolean p2, p0, Lcom/openfeint/internal/OpenFeintInternal$10$1;->val$spotlight:Z

    iput-object p3, p0, Lcom/openfeint/internal/OpenFeintInternal$10$1;->val$savedUser:Lcom/openfeint/api/resource/User;

    .line 1035
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResponse(ILjava/lang/String;)V
    .locals 3
    .param p1, "responseCode"    # I
    .param p2, "responseBody"    # Ljava/lang/String;

    .prologue
    .line 1037
    const/16 v0, 0xc8

    if-gt v0, p1, :cond_0

    const/16 v0, 0x12c

    if-lt p1, v0, :cond_2

    .line 1038
    :cond_0
    const/16 v0, 0x193

    if-ne v0, p1, :cond_1

    .line 1040
    iget-object v0, p0, Lcom/openfeint/internal/OpenFeintInternal$10$1;->this$1:Lcom/openfeint/internal/OpenFeintInternal$10;

    invoke-static {v0}, Lcom/openfeint/internal/OpenFeintInternal$10;->access$0(Lcom/openfeint/internal/OpenFeintInternal$10;)Lcom/openfeint/internal/OpenFeintInternal;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/openfeint/internal/OpenFeintInternal;->access$20(Lcom/openfeint/internal/OpenFeintInternal;Z)V

    .line 1049
    :goto_0
    return-void

    .line 1043
    :cond_1
    iget-object v0, p0, Lcom/openfeint/internal/OpenFeintInternal$10$1;->this$1:Lcom/openfeint/internal/OpenFeintInternal$10;

    invoke-static {v0}, Lcom/openfeint/internal/OpenFeintInternal$10;->access$0(Lcom/openfeint/internal/OpenFeintInternal$10;)Lcom/openfeint/internal/OpenFeintInternal;

    move-result-object v0

    iget-boolean v1, p0, Lcom/openfeint/internal/OpenFeintInternal$10$1;->val$spotlight:Z

    invoke-virtual {v0, v1}, Lcom/openfeint/internal/OpenFeintInternal;->launchIntroFlow(Z)V

    goto :goto_0

    .line 1047
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Welcome back "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/openfeint/internal/OpenFeintInternal$10$1;->val$savedUser:Lcom/openfeint/api/resource/User;

    iget-object v1, v1, Lcom/openfeint/api/resource/User;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/openfeint/api/Notification$Category;->Login:Lcom/openfeint/api/Notification$Category;

    sget-object v2, Lcom/openfeint/api/Notification$Type;->Success:Lcom/openfeint/api/Notification$Type;

    invoke-static {v0, v1, v2}, Lcom/openfeint/internal/notifications/SimpleNotification;->show(Ljava/lang/String;Lcom/openfeint/api/Notification$Category;Lcom/openfeint/api/Notification$Type;)V

    goto :goto_0
.end method
