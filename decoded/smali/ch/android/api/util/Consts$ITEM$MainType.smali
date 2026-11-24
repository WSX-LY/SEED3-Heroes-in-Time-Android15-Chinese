.class public Lch/android/api/util/Consts$ITEM$MainType;
.super Ljava/lang/Object;
.source "Consts.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lch/android/api/util/Consts$ITEM;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MainType"
.end annotation


# static fields
.field public static final EQUIP:I = 0x1

.field public static final QUEST:I = 0x2

.field public static final USE:I


# instance fields
.field final synthetic this$1:Lch/android/api/util/Consts$ITEM;


# direct methods
.method public constructor <init>(Lch/android/api/util/Consts$ITEM;)V
    .locals 0

    .prologue
    .line 103
    iput-object p1, p0, Lch/android/api/util/Consts$ITEM$MainType;->this$1:Lch/android/api/util/Consts$ITEM;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
