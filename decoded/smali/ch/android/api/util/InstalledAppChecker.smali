.class public Lch/android/api/util/InstalledAppChecker;
.super Ljava/lang/Object;
.source "InstalledAppChecker.java"


# static fields
.field private static sActivity:Landroid/app/Activity;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static init(Landroid/app/Activity;)V
    .locals 0
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    .line 16
    sput-object p0, Lch/android/api/util/InstalledAppChecker;->sActivity:Landroid/app/Activity;

    .line 17
    return-void
.end method

.method private static isExist(Landroid/content/pm/ApplicationInfo;[Ljava/lang/String;)Z
    .locals 6
    .param p0, "appInfo"    # Landroid/content/pm/ApplicationInfo;
    .param p1, "appPackageNames"    # [Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 70
    iget-object v0, p0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 71
    .local v0, "appName":Ljava/lang/String;
    array-length v4, p1

    move v3, v2

    :goto_0
    if-lt v3, v4, :cond_0

    .line 77
    :goto_1
    return v2

    .line 71
    :cond_0
    aget-object v1, p1, v3

    .line 72
    .local v1, "name":Ljava/lang/String;
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 73
    const/4 v2, 0x1

    goto :goto_1

    .line 71
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method public static isExistAtLeastOne([Ljava/lang/String;)Z
    .locals 6
    .param p0, "appPackageNames"    # [Ljava/lang/String;

    .prologue
    .line 34
    const/4 v2, 0x0

    .line 36
    .local v2, "isExist":Z
    sget-object v5, Lch/android/api/util/InstalledAppChecker;->sActivity:Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 37
    .local v4, "pm":Landroid/content/pm/PackageManager;
    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v1

    .line 38
    .local v1, "appList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 40
    .local v3, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/content/pm/ApplicationInfo;>;"
    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_1

    .line 48
    :goto_0
    return v2

    .line 41
    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ApplicationInfo;

    .line 42
    .local v0, "appInfo":Landroid/content/pm/ApplicationInfo;
    invoke-static {v0, p0}, Lch/android/api/util/InstalledAppChecker;->isExist(Landroid/content/pm/ApplicationInfo;[Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 43
    const/4 v2, 0x1

    .line 44
    goto :goto_0
.end method

.method public static toStringExistedPackageNames([Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "appPackageNames"    # [Ljava/lang/String;

    .prologue
    .line 52
    sget-object v5, Lch/android/api/util/InstalledAppChecker;->sActivity:Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 53
    .local v3, "pm":Landroid/content/pm/PackageManager;
    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v1

    .line 54
    .local v1, "appList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 56
    .local v2, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/content/pm/ApplicationInfo;>;"
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    .line 58
    .local v4, "sb":Ljava/lang/StringBuffer;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_1

    .line 66
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5

    .line 59
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ApplicationInfo;

    .line 60
    .local v0, "appInfo":Landroid/content/pm/ApplicationInfo;
    invoke-static {v0, p0}, Lch/android/api/util/InstalledAppChecker;->isExist(Landroid/content/pm/ApplicationInfo;[Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 61
    iget-object v5, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 62
    const-string v5, "line.separator"

    invoke-static {v5}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0
.end method

.method public static toStringIntalledApps()Ljava/lang/String;
    .locals 5

    .prologue
    .line 20
    sget-object v4, Lch/android/api/util/InstalledAppChecker;->sActivity:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 21
    .local v3, "pm":Landroid/content/pm/PackageManager;
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v0

    .line 22
    .local v0, "appList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 24
    .local v2, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/content/pm/ApplicationInfo;>;"
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 25
    .local v1, "buffer":Ljava/lang/StringBuffer;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_0

    .line 30
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 26
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 27
    const-string v4, "\n"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0
.end method
