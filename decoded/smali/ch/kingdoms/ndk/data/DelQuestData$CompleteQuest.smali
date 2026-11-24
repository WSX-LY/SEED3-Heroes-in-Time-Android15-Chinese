.class public Lch/kingdoms/ndk/data/DelQuestData$CompleteQuest;
.super Ljava/lang/Object;
.source "DelQuestData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lch/kingdoms/ndk/data/DelQuestData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CompleteQuest"
.end annotation


# static fields
.field public static TYPE_MAIN:I

.field public static TYPE_SUB:I


# instance fields
.field public questName:Ljava/lang/String;

.field public type:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 137
    const/4 v0, 0x0

    sput v0, Lch/kingdoms/ndk/data/DelQuestData$CompleteQuest;->TYPE_MAIN:I

    .line 138
    const/4 v0, 0x1

    sput v0, Lch/kingdoms/ndk/data/DelQuestData$CompleteQuest;->TYPE_SUB:I

    .line 136
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 136
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
