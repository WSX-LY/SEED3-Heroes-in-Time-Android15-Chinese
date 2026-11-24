.class public Lch/lib/gsonobjects/BannerInfo;
.super Ljava/lang/Object;
.source "BannerInfo.java"


# instance fields
.field private imageSrc:Ljava/lang/String;

.field private link:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "imageSrc"    # Ljava/lang/String;
    .param p2, "link"    # Ljava/lang/String;

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-object p1, p0, Lch/lib/gsonobjects/BannerInfo;->imageSrc:Ljava/lang/String;

    .line 11
    iput-object p2, p0, Lch/lib/gsonobjects/BannerInfo;->link:Ljava/lang/String;

    .line 12
    return-void
.end method


# virtual methods
.method public getImageSrc()Ljava/lang/String;
    .locals 1

    .prologue
    .line 15
    iget-object v0, p0, Lch/lib/gsonobjects/BannerInfo;->imageSrc:Ljava/lang/String;

    return-object v0
.end method

.method public getLink()Ljava/lang/String;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lch/lib/gsonobjects/BannerInfo;->link:Ljava/lang/String;

    return-object v0
.end method
