.class public Lch/android/api/ui/ChTableRow;
.super Landroid/widget/TableRow;
.source "ChTableRow.java"

# interfaces
.implements Lch/android/api/ui/IChView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 8
    invoke-direct {p0, p1}, Landroid/widget/TableRow;-><init>(Landroid/content/Context;)V

    .line 10
    return-void
.end method


# virtual methods
.method public releaseRsources()V
    .locals 0

    .prologue
    .line 15
    invoke-static {p0}, Lch/android/api/ui/ChViewGen;->releaseResourcesInViewGroup(Landroid/view/ViewGroup;)V

    .line 16
    return-void
.end method
