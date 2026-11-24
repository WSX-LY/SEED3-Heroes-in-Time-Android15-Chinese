.class public Lch/android/api/ui/ChNetworkNoticeView$NoticeData;
.super Ljava/lang/Object;
.source "ChNetworkNoticeView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lch/android/api/ui/ChNetworkNoticeView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NoticeData"
.end annotation


# instance fields
.field private final contents:Ljava/lang/String;

.field private final date:Ljava/lang/String;

.field private final title:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "date"    # Ljava/lang/String;
    .param p3, "contents"    # Ljava/lang/String;

    .prologue
    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    iput-object p1, p0, Lch/android/api/ui/ChNetworkNoticeView$NoticeData;->title:Ljava/lang/String;

    .line 91
    iput-object p2, p0, Lch/android/api/ui/ChNetworkNoticeView$NoticeData;->date:Ljava/lang/String;

    .line 92
    iput-object p3, p0, Lch/android/api/ui/ChNetworkNoticeView$NoticeData;->contents:Ljava/lang/String;

    .line 93
    return-void
.end method

.method static synthetic access$0(Lch/android/api/ui/ChNetworkNoticeView$NoticeData;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lch/android/api/ui/ChNetworkNoticeView$NoticeData;->title:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1(Lch/android/api/ui/ChNetworkNoticeView$NoticeData;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lch/android/api/ui/ChNetworkNoticeView$NoticeData;->date:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2(Lch/android/api/ui/ChNetworkNoticeView$NoticeData;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lch/android/api/ui/ChNetworkNoticeView$NoticeData;->contents:Ljava/lang/String;

    return-object v0
.end method
