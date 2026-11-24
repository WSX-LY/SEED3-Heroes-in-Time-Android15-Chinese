.class public Lcom/openfeint/internal/Util11;
.super Ljava/lang/Object;
.source "Util11.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isPad(Landroid/content/Context;)Z
    .locals 5
    .param p0, "ctx"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x0

    .line 15
    :try_start_0
    const-class v0, Landroid/content/res/Configuration;

    .line 16
    .local v0, "configuration":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v4, "SCREENLAYOUT_SIZE_XLARGE"

    invoke-virtual {v0, v4}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 17
    .local v1, "f":Ljava/lang/reflect/Field;
    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v2

    .line 18
    .local v2, "mask":I
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget v4, v4, Landroid/content/res/Configuration;->screenLayout:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    and-int/2addr v4, v2

    if-ne v4, v2, :cond_0

    const/4 v3, 0x1

    .line 21
    .end local v0    # "configuration":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v1    # "f":Ljava/lang/reflect/Field;
    .end local v2    # "mask":I
    :cond_0
    :goto_0
    return v3

    .line 19
    :catch_0
    move-exception v4

    goto :goto_0
.end method
