.class public Lch/android/api/util/Consts$SCRIPT;
.super Ljava/lang/Object;
.source "Consts.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lch/android/api/util/Consts;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SCRIPT"
.end annotation


# static fields
.field public static final DELQUEST_COMPLETE:I = 0x1

.field public static final DELQUEST_GIFT:I = 0x0

.field public static final SCR_CREATEQUEST:I = 0xb

.field public static final SCR_DELETEQUEST:I = 0xd

.field public static final SCR_DELITEM:I = 0x9

.field public static final SCR_GETITEM:I = 0x8

.field public static final SCR_MAPMOVE:I = 0x5

.field public static final SCR_MAPTARGETPOINTMOVE:I = 0x7

.field public static final SCR_MAPTILEPOINTMOVE:I = 0x6

.field public static final SCR_M_INVENOVER:I = -0x1

.field public static final SCR_M_LOADING:I = 0x0

.field public static final SCR_M_PLAY:I = 0x1

.field public static final SCR_M_QUESTOVER:I = -0x2

.field public static final SCR_QUESTSELECT:I = 0xa

.field public static final SCR_RENEWALQUEST:I = 0xc

.field public static final SCR_SCROLLTEXTSHOW:I = 0x4

.field public static final SCR_TALKTEXTSHOW:I = 0x2

.field public static final SCR_TYPINGTEXTSHOW:I = 0x3

.field public static final SCS_SCROLLTEXTSHOW:I = 0x12

.field public static final SCS_TYPINGTEXTSHOW:I = 0x11

.field public static final TEXTSHOW_PAGEAUTO:I = 0x1

.field public static final TEXTSHOW_PAGEEND:I = 0x2

.field public static final TEXTSHOW_WAIT:I


# instance fields
.field final synthetic this$0:Lch/android/api/util/Consts;


# direct methods
.method public constructor <init>(Lch/android/api/util/Consts;)V
    .locals 0

    .prologue
    .line 31
    iput-object p1, p0, Lch/android/api/util/Consts$SCRIPT;->this$0:Lch/android/api/util/Consts;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
