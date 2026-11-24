.class public Lch/android/api/util/Consts$QSLOT_STATE;
.super Ljava/lang/Object;
.source "Consts.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lch/android/api/util/Consts;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "QSLOT_STATE"
.end annotation


# static fields
.field public static final NO:B = 0x0t

.field public static final REGISTER:B = 0x1t

.field public static final REGISTER_ZERO:B = 0x2t


# instance fields
.field final synthetic this$0:Lch/android/api/util/Consts;


# direct methods
.method public constructor <init>(Lch/android/api/util/Consts;)V
    .locals 0

    .prologue
    .line 193
    iput-object p1, p0, Lch/android/api/util/Consts$QSLOT_STATE;->this$0:Lch/android/api/util/Consts;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
