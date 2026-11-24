.class Lch/kingdoms/android/ui/BlackSmithUi$BlackSmithView$2;
.super Ljava/lang/Object;
.source "BlackSmithUi.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lch/kingdoms/android/ui/BlackSmithUi$BlackSmithView;-><init>(Lch/kingdoms/android/ui/BlackSmithUi;Landroid/content/Context;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private islock:Z

.field final synthetic this$1:Lch/kingdoms/android/ui/BlackSmithUi$BlackSmithView;

.field private final synthetic val$confirmTxt:Ljava/lang/String;

.field private final synthetic val$loadTxt:Ljava/lang/String;

.field private final synthetic val$resultType:I


# direct methods
.method constructor <init>(Lch/kingdoms/android/ui/BlackSmithUi$BlackSmithView;Ljava/lang/String;ILjava/lang/String;)V
    .locals 1

    .prologue
    .line 1
    iput-object p1, p0, Lch/kingdoms/android/ui/BlackSmithUi$BlackSmithView$2;->this$1:Lch/kingdoms/android/ui/BlackSmithUi$BlackSmithView;

    iput-object p2, p0, Lch/kingdoms/android/ui/BlackSmithUi$BlackSmithView$2;->val$confirmTxt:Ljava/lang/String;

    iput p3, p0, Lch/kingdoms/android/ui/BlackSmithUi$BlackSmithView$2;->val$resultType:I

    iput-object p4, p0, Lch/kingdoms/android/ui/BlackSmithUi$BlackSmithView$2;->val$loadTxt:Ljava/lang/String;

    .line 315
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 316
    const/4 v0, 0x0

    iput-boolean v0, p0, Lch/kingdoms/android/ui/BlackSmithUi$BlackSmithView$2;->islock:Z

    return-void
.end method

.method static synthetic access$0(Lch/kingdoms/android/ui/BlackSmithUi$BlackSmithView$2;Z)V
    .locals 0

    .prologue
    .line 316
    iput-boolean p1, p0, Lch/kingdoms/android/ui/BlackSmithUi$BlackSmithView$2;->islock:Z

    return-void
.end method

.method static synthetic access$1(Lch/kingdoms/android/ui/BlackSmithUi$BlackSmithView$2;)Lch/kingdoms/android/ui/BlackSmithUi$BlackSmithView;
    .locals 1

    .prologue
    .line 315
    iget-object v0, p0, Lch/kingdoms/android/ui/BlackSmithUi$BlackSmithView$2;->this$1:Lch/kingdoms/android/ui/BlackSmithUi$BlackSmithView;

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v1, 0x1

    .line 320
    iget-boolean v0, p0, Lch/kingdoms/android/ui/BlackSmithUi$BlackSmithView$2;->islock:Z

    if-nez v0, :cond_0

    .line 321
    iput-boolean v1, p0, Lch/kingdoms/android/ui/BlackSmithUi$BlackSmithView$2;->islock:Z

    .line 322
    iget-object v0, p0, Lch/kingdoms/android/ui/BlackSmithUi$BlackSmithView$2;->this$1:Lch/kingdoms/android/ui/BlackSmithUi$BlackSmithView;

    invoke-static {v0, v1}, Lch/kingdoms/android/ui/BlackSmithUi$BlackSmithView;->access$1(Lch/kingdoms/android/ui/BlackSmithUi$BlackSmithView;Z)V

    .line 323
    iget-object v0, p0, Lch/kingdoms/android/ui/BlackSmithUi$BlackSmithView$2;->this$1:Lch/kingdoms/android/ui/BlackSmithUi$BlackSmithView;

    invoke-static {v0}, Lch/kingdoms/android/ui/BlackSmithUi$BlackSmithView;->access$12(Lch/kingdoms/android/ui/BlackSmithUi$BlackSmithView;)Lch/kingdoms/android/ui/BlackSmithUi;

    move-result-object v0

    invoke-static {v0}, Lch/kingdoms/android/ui/BlackSmithUi;->access$3(Lch/kingdoms/android/ui/BlackSmithUi;)Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lch/kingdoms/android/ui/BlackSmithUi$BlackSmithView$2;->val$confirmTxt:Ljava/lang/String;

    new-instance v2, Lch/kingdoms/android/ui/BlackSmithUi$BlackSmithView$2$1;

    iget v3, p0, Lch/kingdoms/android/ui/BlackSmithUi$BlackSmithView$2;->val$resultType:I

    iget-object v4, p0, Lch/kingdoms/android/ui/BlackSmithUi$BlackSmithView$2;->val$loadTxt:Ljava/lang/String;

    invoke-direct {v2, p0, v3, v4}, Lch/kingdoms/android/ui/BlackSmithUi$BlackSmithView$2$1;-><init>(Lch/kingdoms/android/ui/BlackSmithUi$BlackSmithView$2;ILjava/lang/String;)V

    invoke-static {v0, v1, v2}, Lch/android/api/ui/ChViewGen;->popUpConfirmYesNoView(Landroid/app/Activity;Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;)Landroid/view/View;

    .line 369
    :cond_0
    return-void
.end method
