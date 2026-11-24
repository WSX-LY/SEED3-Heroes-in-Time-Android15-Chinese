.class Lch/android/api/iap/ChAndroidIab$2$1$2;
.super Ljava/lang/Object;
.source "ChAndroidIab.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lch/android/api/iap/ChAndroidIab$2$1;->onPurchased(ILjava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lch/android/api/iap/ChAndroidIab$2$1;

.field private final synthetic val$id:Ljava/lang/String;

.field private final synthetic val$quantity:I


# direct methods
.method constructor <init>(Lch/android/api/iap/ChAndroidIab$2$1;Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lch/android/api/iap/ChAndroidIab$2$1$2;->this$2:Lch/android/api/iap/ChAndroidIab$2$1;

    iput-object p2, p0, Lch/android/api/iap/ChAndroidIab$2$1$2;->val$id:Ljava/lang/String;

    iput p3, p0, Lch/android/api/iap/ChAndroidIab$2$1$2;->val$quantity:I

    .line 162
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 166
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    .line 167
    .local v0, "gson":Lcom/google/gson/Gson;
    const-string v2, "http://ch-games.appspot.com/seedpointlog"

    .line 168
    new-instance v3, Lch/lib/gsonobjects/SeedPoint;

    invoke-static {}, Lch/android/api/iap/ChAndroidIab;->access$5()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 169
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "false/Seed3And/"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, p0, Lch/android/api/iap/ChAndroidIab$2$1$2;->val$id:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iget v7, p0, Lch/android/api/iap/ChAndroidIab$2$1$2;->val$quantity:I

    invoke-direct {v3, v4, v5, v6, v7}, Lch/lib/gsonobjects/SeedPoint;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 168
    invoke-virtual {v0, v3}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 167
    invoke-static {v2, v3}, Lch/android/api/network/ChHttp;->post(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    .line 171
    .local v1, "result":Z
    const-string v2, "IAB"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "send purchase data to server : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    return-void
.end method
