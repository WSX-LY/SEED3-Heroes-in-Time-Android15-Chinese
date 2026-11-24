.class Lch/android/api/ui/ChNetworkNoticeView$NoticeView;
.super Lch/android/api/ui/ChTextView;
.source "ChNetworkNoticeView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lch/android/api/ui/ChNetworkNoticeView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NoticeView"
.end annotation


# instance fields
.field final synthetic this$0:Lch/android/api/ui/ChNetworkNoticeView;


# direct methods
.method public constructor <init>(Lch/android/api/ui/ChNetworkNoticeView;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "title"    # Ljava/lang/String;
    .param p4, "date"    # Ljava/lang/String;
    .param p5, "contents"    # Ljava/lang/String;

    .prologue
    .line 69
    iput-object p1, p0, Lch/android/api/ui/ChNetworkNoticeView$NoticeView;->this$0:Lch/android/api/ui/ChNetworkNoticeView;

    .line 70
    invoke-direct {p0, p2}, Lch/android/api/ui/ChTextView;-><init>(Landroid/content/Context;)V

    .line 72
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "<font color=\'#ffffff\'>"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "</font><br />"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 73
    const-string v1, "<font color=\'#ffffff\'>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "</font><br />"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 74
    const-string v1, "<font color=\'#ffffff\'>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "</font><br />"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 72
    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    invoke-virtual {p0, v0}, Lch/android/api/ui/ChNetworkNoticeView$NoticeView;->setText(Ljava/lang/CharSequence;)V

    .line 77
    return-void
.end method
