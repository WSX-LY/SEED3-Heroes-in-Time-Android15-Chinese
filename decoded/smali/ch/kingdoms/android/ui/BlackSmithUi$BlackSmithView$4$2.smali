.class Lch/kingdoms/android/ui/BlackSmithUi$BlackSmithView$4$2;
.super Ljava/lang/Object;
.source "BlackSmithUi.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lch/kingdoms/android/ui/BlackSmithUi$BlackSmithView$4;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lch/kingdoms/android/ui/BlackSmithUi$BlackSmithView$4;

.field private final synthetic val$animationDrawable:Landroid/graphics/drawable/AnimationDrawable;


# direct methods
.method constructor <init>(Lch/kingdoms/android/ui/BlackSmithUi$BlackSmithView$4;Landroid/graphics/drawable/AnimationDrawable;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lch/kingdoms/android/ui/BlackSmithUi$BlackSmithView$4$2;->this$2:Lch/kingdoms/android/ui/BlackSmithUi$BlackSmithView$4;

    iput-object p2, p0, Lch/kingdoms/android/ui/BlackSmithUi$BlackSmithView$4$2;->val$animationDrawable:Landroid/graphics/drawable/AnimationDrawable;

    .line 551
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 555
    iget-object v0, p0, Lch/kingdoms/android/ui/BlackSmithUi$BlackSmithView$4$2;->val$animationDrawable:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 556
    return-void
.end method
