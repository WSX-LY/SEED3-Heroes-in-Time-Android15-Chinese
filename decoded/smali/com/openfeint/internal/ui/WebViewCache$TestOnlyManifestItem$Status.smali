.class public final enum Lcom/openfeint/internal/ui/WebViewCache$TestOnlyManifestItem$Status;
.super Ljava/lang/Enum;
.source "WebViewCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/openfeint/internal/ui/WebViewCache$TestOnlyManifestItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Status"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/openfeint/internal/ui/WebViewCache$TestOnlyManifestItem$Status;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic ENUM$VALUES:[Lcom/openfeint/internal/ui/WebViewCache$TestOnlyManifestItem$Status;

.field public static final enum NotOnServer:Lcom/openfeint/internal/ui/WebViewCache$TestOnlyManifestItem$Status;

.field public static final enum NotYetDownloaded:Lcom/openfeint/internal/ui/WebViewCache$TestOnlyManifestItem$Status;

.field public static final enum OutOfDate:Lcom/openfeint/internal/ui/WebViewCache$TestOnlyManifestItem$Status;

.field public static final enum UpToDate:Lcom/openfeint/internal/ui/WebViewCache$TestOnlyManifestItem$Status;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1154
    new-instance v0, Lcom/openfeint/internal/ui/WebViewCache$TestOnlyManifestItem$Status;

    const-string v1, "NotYetDownloaded"

    invoke-direct {v0, v1, v2}, Lcom/openfeint/internal/ui/WebViewCache$TestOnlyManifestItem$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/openfeint/internal/ui/WebViewCache$TestOnlyManifestItem$Status;->NotYetDownloaded:Lcom/openfeint/internal/ui/WebViewCache$TestOnlyManifestItem$Status;

    .line 1155
    new-instance v0, Lcom/openfeint/internal/ui/WebViewCache$TestOnlyManifestItem$Status;

    const-string v1, "NotOnServer"

    invoke-direct {v0, v1, v3}, Lcom/openfeint/internal/ui/WebViewCache$TestOnlyManifestItem$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/openfeint/internal/ui/WebViewCache$TestOnlyManifestItem$Status;->NotOnServer:Lcom/openfeint/internal/ui/WebViewCache$TestOnlyManifestItem$Status;

    .line 1156
    new-instance v0, Lcom/openfeint/internal/ui/WebViewCache$TestOnlyManifestItem$Status;

    const-string v1, "UpToDate"

    invoke-direct {v0, v1, v4}, Lcom/openfeint/internal/ui/WebViewCache$TestOnlyManifestItem$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/openfeint/internal/ui/WebViewCache$TestOnlyManifestItem$Status;->UpToDate:Lcom/openfeint/internal/ui/WebViewCache$TestOnlyManifestItem$Status;

    .line 1157
    new-instance v0, Lcom/openfeint/internal/ui/WebViewCache$TestOnlyManifestItem$Status;

    const-string v1, "OutOfDate"

    invoke-direct {v0, v1, v5}, Lcom/openfeint/internal/ui/WebViewCache$TestOnlyManifestItem$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/openfeint/internal/ui/WebViewCache$TestOnlyManifestItem$Status;->OutOfDate:Lcom/openfeint/internal/ui/WebViewCache$TestOnlyManifestItem$Status;

    .line 1153
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/openfeint/internal/ui/WebViewCache$TestOnlyManifestItem$Status;

    sget-object v1, Lcom/openfeint/internal/ui/WebViewCache$TestOnlyManifestItem$Status;->NotYetDownloaded:Lcom/openfeint/internal/ui/WebViewCache$TestOnlyManifestItem$Status;

    aput-object v1, v0, v2

    sget-object v1, Lcom/openfeint/internal/ui/WebViewCache$TestOnlyManifestItem$Status;->NotOnServer:Lcom/openfeint/internal/ui/WebViewCache$TestOnlyManifestItem$Status;

    aput-object v1, v0, v3

    sget-object v1, Lcom/openfeint/internal/ui/WebViewCache$TestOnlyManifestItem$Status;->UpToDate:Lcom/openfeint/internal/ui/WebViewCache$TestOnlyManifestItem$Status;

    aput-object v1, v0, v4

    sget-object v1, Lcom/openfeint/internal/ui/WebViewCache$TestOnlyManifestItem$Status;->OutOfDate:Lcom/openfeint/internal/ui/WebViewCache$TestOnlyManifestItem$Status;

    aput-object v1, v0, v5

    sput-object v0, Lcom/openfeint/internal/ui/WebViewCache$TestOnlyManifestItem$Status;->ENUM$VALUES:[Lcom/openfeint/internal/ui/WebViewCache$TestOnlyManifestItem$Status;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 1153
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/openfeint/internal/ui/WebViewCache$TestOnlyManifestItem$Status;
    .locals 1

    .prologue
    .line 1
    const-class v0, Lcom/openfeint/internal/ui/WebViewCache$TestOnlyManifestItem$Status;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/openfeint/internal/ui/WebViewCache$TestOnlyManifestItem$Status;

    return-object v0
.end method

.method public static values()[Lcom/openfeint/internal/ui/WebViewCache$TestOnlyManifestItem$Status;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/openfeint/internal/ui/WebViewCache$TestOnlyManifestItem$Status;->ENUM$VALUES:[Lcom/openfeint/internal/ui/WebViewCache$TestOnlyManifestItem$Status;

    array-length v1, v0

    new-array v2, v1, [Lcom/openfeint/internal/ui/WebViewCache$TestOnlyManifestItem$Status;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
