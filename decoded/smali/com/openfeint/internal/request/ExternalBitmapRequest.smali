.class public Lcom/openfeint/internal/request/ExternalBitmapRequest;
.super Lcom/openfeint/internal/request/BitmapRequest;
.source "ExternalBitmapRequest.java"


# instance fields
.field private mURL:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 6
    invoke-direct {p0}, Lcom/openfeint/internal/request/BitmapRequest;-><init>()V

    iput-object p1, p0, Lcom/openfeint/internal/request/ExternalBitmapRequest;->mURL:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public path()Ljava/lang/String;
    .locals 1

    .prologue
    .line 10
    const-string v0, ""

    return-object v0
.end method

.method public signed()Z
    .locals 1

    .prologue
    .line 8
    const/4 v0, 0x0

    return v0
.end method

.method public url()Ljava/lang/String;
    .locals 1

    .prologue
    .line 9
    iget-object v0, p0, Lcom/openfeint/internal/request/ExternalBitmapRequest;->mURL:Ljava/lang/String;

    return-object v0
.end method
