.class public abstract Lcom/openfeint/internal/request/BitmapRequest;
.super Lcom/openfeint/internal/request/DownloadRequest;
.source "BitmapRequest.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Lcom/openfeint/internal/request/DownloadRequest;-><init>()V

    return-void
.end method


# virtual methods
.method public onSuccess(Landroid/graphics/Bitmap;)V
    .locals 0
    .param p1, "responseBody"    # Landroid/graphics/Bitmap;

    .prologue
    .line 12
    return-void
.end method

.method protected onSuccess([B)V
    .locals 3
    .param p1, "body"    # [B

    .prologue
    .line 15
    const/4 v1, 0x0

    array-length v2, p1

    invoke-static {p1, v1, v2}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 16
    .local v0, "b":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    .line 17
    invoke-virtual {p0, v0}, Lcom/openfeint/internal/request/BitmapRequest;->onSuccess(Landroid/graphics/Bitmap;)V

    .line 21
    :goto_0
    return-void

    .line 19
    :cond_0
    const-string v1, "of_bitmap_decode_error"

    invoke-static {v1}, Lcom/openfeint/internal/RR;->string(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Lcom/openfeint/internal/OpenFeintInternal;->getRString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/openfeint/internal/request/BitmapRequest;->onFailure(Ljava/lang/String;)V

    goto :goto_0
.end method
