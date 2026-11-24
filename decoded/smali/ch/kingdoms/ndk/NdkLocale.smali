.class public Lch/kingdoms/ndk/NdkLocale;
.super Ljava/lang/Object;
.source "NdkLocale.java"


# static fields
.field public static final CHINESE:I = 0x3ea

.field public static final ENGLISH:I = 0x3e9

.field public static final KOREAN:I = 0x3e8

.field private static curLocale:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static init()V
    .locals 5

    .prologue
    .line 19
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    .line 20
    .local v1, "locale":Ljava/util/Locale;
    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    .line 22
    .local v0, "language":Ljava/lang/String;
    sget-object v2, Ljava/util/Locale;->KOREAN:Ljava/util/Locale;

    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 23
    const/16 v2, 0x3e8

    sput v2, Lch/kingdoms/ndk/NdkLocale;->curLocale:I

    .line 29
    :goto_0
    sget-boolean v2, Lch/android/api/util/Consts;->DEBUG:Z

    if-eqz v2, :cond_0

    .line 30
    const-string v2, "KD"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Locale : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget v4, Lch/kingdoms/ndk/NdkLocale;->curLocale:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    :cond_0
    sget v2, Lch/kingdoms/ndk/NdkLocale;->curLocale:I

    invoke-static {v2}, Lch/kingdoms/ndk/NdkLocale;->setLocaleToNdk(I)V

    .line 33
    return-void

    .line 24
    :cond_1
    sget-object v2, Ljava/util/Locale;->CHINESE:Ljava/util/Locale;

    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 25
    const/16 v2, 0x3ea

    sput v2, Lch/kingdoms/ndk/NdkLocale;->curLocale:I

    goto :goto_0

    .line 27
    :cond_2
    const/16 v2, 0x3e9

    sput v2, Lch/kingdoms/ndk/NdkLocale;->curLocale:I

    goto :goto_0
.end method

.method public static isKorean()Z
    .locals 2

    .prologue
    .line 36
    sget v0, Lch/kingdoms/ndk/NdkLocale;->curLocale:I

    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static native setLocaleToNdk(I)V
.end method
