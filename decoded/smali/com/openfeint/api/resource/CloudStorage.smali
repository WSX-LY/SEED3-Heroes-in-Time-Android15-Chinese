.class public Lcom/openfeint/api/resource/CloudStorage;
.super Ljava/lang/Object;
.source "CloudStorage.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/openfeint/api/resource/CloudStorage$DeleteCB;,
        Lcom/openfeint/api/resource/CloudStorage$ListCB;,
        Lcom/openfeint/api/resource/CloudStorage$LoadCB;,
        Lcom/openfeint/api/resource/CloudStorage$SaveCB;
    }
.end annotation


# static fields
.field public static MAX_SIZE:I

.field private static sValidKeyPattern:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 43
    const/high16 v0, 0x40000

    sput v0, Lcom/openfeint/api/resource/CloudStorage;->MAX_SIZE:I

    .line 41
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static delete(Ljava/lang/String;Lcom/openfeint/api/resource/CloudStorage$DeleteCB;)V
    .locals 5
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "cb"    # Lcom/openfeint/api/resource/CloudStorage$DeleteCB;

    .prologue
    .line 252
    invoke-static {}, Lcom/openfeint/internal/OpenFeintInternal;->getInstance()Lcom/openfeint/internal/OpenFeintInternal;

    move-result-object v3

    invoke-virtual {v3}, Lcom/openfeint/internal/OpenFeintInternal;->getUserID()Ljava/lang/String;

    move-result-object v2

    .line 253
    .local v2, "userID":Ljava/lang/String;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_1

    .line 254
    :cond_0
    if-eqz p1, :cond_1

    .line 255
    const-string v3, "The user who owns this CloudStorage blob is not logged in. The CloudStorage blob specified was not deleted."

    invoke-virtual {p1, v3}, Lcom/openfeint/api/resource/CloudStorage$DeleteCB;->onFailure(Ljava/lang/String;)V

    .line 259
    :cond_1
    invoke-static {p0}, Lcom/openfeint/api/resource/CloudStorage;->isValidKey(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 260
    if-eqz p1, :cond_2

    .line 261
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v3, "\'"

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-nez p0, :cond_3

    const-string v3, "(null)"

    :goto_0
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\' is not a valid CloudStorage key."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/openfeint/api/resource/CloudStorage$DeleteCB;->onFailure(Ljava/lang/String;)V

    .line 265
    :cond_2
    invoke-static {}, Lcom/openfeint/internal/OpenFeintInternal;->getInstance()Lcom/openfeint/internal/OpenFeintInternal;

    move-result-object v3

    invoke-virtual {v3}, Lcom/openfeint/internal/OpenFeintInternal;->getAppID()Ljava/lang/String;

    move-result-object v0

    .line 267
    .local v0, "appID":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "/xp/users/"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/games/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/save_cards/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 269
    .local v1, "path":Ljava/lang/String;
    new-instance v3, Lcom/openfeint/api/resource/CloudStorage$4;

    invoke-direct {v3, v1, p1}, Lcom/openfeint/api/resource/CloudStorage$4;-><init>(Ljava/lang/String;Lcom/openfeint/api/resource/CloudStorage$DeleteCB;)V

    .line 279
    invoke-virtual {v3}, Lcom/openfeint/api/resource/CloudStorage$4;->launch()V

    .line 280
    return-void

    .end local v0    # "appID":Ljava/lang/String;
    .end local v1    # "path":Ljava/lang/String;
    :cond_3
    move-object v3, p0

    .line 261
    goto :goto_0
.end method

.method public static isValidKey(Ljava/lang/String;)Z
    .locals 3
    .param p0, "key"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 290
    if-nez p0, :cond_0

    .line 298
    :goto_0
    return v1

    .line 291
    :cond_0
    sget-object v2, Lcom/openfeint/api/resource/CloudStorage;->sValidKeyPattern:Ljava/util/regex/Pattern;

    if-nez v2, :cond_1

    .line 293
    :try_start_0
    const-string v2, "[a-zA-Z][a-zA-Z0-9-_]*"

    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v2

    sput-object v2, Lcom/openfeint/api/resource/CloudStorage;->sValidKeyPattern:Ljava/util/regex/Pattern;
    :try_end_0
    .catch Ljava/util/regex/PatternSyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    .line 298
    :cond_1
    sget-object v1, Lcom/openfeint/api/resource/CloudStorage;->sValidKeyPattern:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    goto :goto_0

    .line 294
    :catch_0
    move-exception v0

    .line 295
    .local v0, "e":Ljava/util/regex/PatternSyntaxException;
    goto :goto_0
.end method

.method public static list(Lcom/openfeint/api/resource/CloudStorage$ListCB;)V
    .locals 5
    .param p0, "cb"    # Lcom/openfeint/api/resource/CloudStorage$ListCB;

    .prologue
    .line 63
    invoke-static {}, Lcom/openfeint/internal/OpenFeintInternal;->getInstance()Lcom/openfeint/internal/OpenFeintInternal;

    move-result-object v3

    invoke-virtual {v3}, Lcom/openfeint/internal/OpenFeintInternal;->getUserID()Ljava/lang/String;

    move-result-object v2

    .line 64
    .local v2, "userID":Ljava/lang/String;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_1

    .line 65
    :cond_0
    if-eqz p0, :cond_1

    .line 66
    const-string v3, "A user must be logged in to list their persisted CloudStorage blobs."

    invoke-virtual {p0, v3}, Lcom/openfeint/api/resource/CloudStorage$ListCB;->onFailure(Ljava/lang/String;)V

    .line 70
    :cond_1
    invoke-static {}, Lcom/openfeint/internal/OpenFeintInternal;->getInstance()Lcom/openfeint/internal/OpenFeintInternal;

    move-result-object v3

    invoke-virtual {v3}, Lcom/openfeint/internal/OpenFeintInternal;->getAppID()Ljava/lang/String;

    move-result-object v0

    .line 72
    .local v0, "appID":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "/xp/users/"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/games/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/save_cards"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 73
    .local v1, "path":Ljava/lang/String;
    new-instance v3, Lcom/openfeint/api/resource/CloudStorage$1;

    invoke-direct {v3, v1, p0}, Lcom/openfeint/api/resource/CloudStorage$1;-><init>(Ljava/lang/String;Lcom/openfeint/api/resource/CloudStorage$ListCB;)V

    .line 119
    invoke-virtual {v3}, Lcom/openfeint/api/resource/CloudStorage$1;->launch()V

    .line 120
    return-void
.end method

.method public static load(Ljava/lang/String;Lcom/openfeint/api/resource/CloudStorage$LoadCB;)V
    .locals 5
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "cb"    # Lcom/openfeint/api/resource/CloudStorage$LoadCB;

    .prologue
    .line 138
    invoke-static {}, Lcom/openfeint/internal/OpenFeintInternal;->getInstance()Lcom/openfeint/internal/OpenFeintInternal;

    move-result-object v3

    invoke-virtual {v3}, Lcom/openfeint/internal/OpenFeintInternal;->getUserID()Ljava/lang/String;

    move-result-object v2

    .line 139
    .local v2, "userID":Ljava/lang/String;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_1

    .line 140
    :cond_0
    if-eqz p1, :cond_1

    .line 141
    const-string v3, "A user must be logged in to load data from a CloudStorage blob."

    invoke-virtual {p1, v3}, Lcom/openfeint/api/resource/CloudStorage$LoadCB;->onFailure(Ljava/lang/String;)V

    .line 145
    :cond_1
    invoke-static {p0}, Lcom/openfeint/api/resource/CloudStorage;->isValidKey(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 146
    if-eqz p1, :cond_2

    .line 147
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v3, "\'"

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-nez p0, :cond_3

    const-string v3, "(null)"

    :goto_0
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\' is not a valid CloudStorage key."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/openfeint/api/resource/CloudStorage$LoadCB;->onFailure(Ljava/lang/String;)V

    .line 151
    :cond_2
    invoke-static {}, Lcom/openfeint/internal/OpenFeintInternal;->getInstance()Lcom/openfeint/internal/OpenFeintInternal;

    move-result-object v3

    invoke-virtual {v3}, Lcom/openfeint/internal/OpenFeintInternal;->getAppID()Ljava/lang/String;

    move-result-object v0

    .line 153
    .local v0, "appID":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "/xp/users/"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/games/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/save_cards/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 154
    .local v1, "path":Ljava/lang/String;
    new-instance v3, Lcom/openfeint/api/resource/CloudStorage$2;

    invoke-direct {v3, v1, p1}, Lcom/openfeint/api/resource/CloudStorage$2;-><init>(Ljava/lang/String;Lcom/openfeint/api/resource/CloudStorage$LoadCB;)V

    .line 163
    invoke-virtual {v3}, Lcom/openfeint/api/resource/CloudStorage$2;->launch()V

    .line 164
    return-void

    .end local v0    # "appID":Ljava/lang/String;
    .end local v1    # "path":Ljava/lang/String;
    :cond_3
    move-object v3, p0

    .line 147
    goto :goto_0
.end method

.method public static save(Ljava/lang/String;[BLcom/openfeint/api/resource/CloudStorage$SaveCB;)V
    .locals 5
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "data"    # [B
    .param p2, "cb"    # Lcom/openfeint/api/resource/CloudStorage$SaveCB;

    .prologue
    .line 183
    invoke-static {}, Lcom/openfeint/internal/OpenFeintInternal;->getInstance()Lcom/openfeint/internal/OpenFeintInternal;

    move-result-object v3

    invoke-virtual {v3}, Lcom/openfeint/internal/OpenFeintInternal;->getUserID()Ljava/lang/String;

    move-result-object v2

    .line 184
    .local v2, "userID":Ljava/lang/String;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_2

    .line 185
    :cond_0
    if-eqz p2, :cond_1

    .line 186
    const-string v3, "Cannot save because the owner of this CloudStorage blob is not logged in."

    invoke-virtual {p2, v3}, Lcom/openfeint/api/resource/CloudStorage$SaveCB;->onFailure(Ljava/lang/String;)V

    .line 234
    .end local p0    # "key":Ljava/lang/String;
    :cond_1
    :goto_0
    return-void

    .line 191
    .restart local p0    # "key":Ljava/lang/String;
    :cond_2
    invoke-static {p0}, Lcom/openfeint/api/resource/CloudStorage;->isValidKey(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 192
    if-eqz p2, :cond_1

    .line 193
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "\'"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-nez p0, :cond_3

    const-string p0, "(null)"

    .end local p0    # "key":Ljava/lang/String;
    :cond_3
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\' is not a valid CloudStorage key."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Lcom/openfeint/api/resource/CloudStorage$SaveCB;->onFailure(Ljava/lang/String;)V

    goto :goto_0

    .line 198
    .restart local p0    # "key":Ljava/lang/String;
    :cond_4
    if-eqz p1, :cond_5

    array-length v3, p1

    if-nez v3, :cond_6

    .line 199
    :cond_5
    if-eqz p2, :cond_1

    .line 200
    const-string v3, "data is empty.  data must be set before saving."

    invoke-virtual {p2, v3}, Lcom/openfeint/api/resource/CloudStorage$SaveCB;->onFailure(Ljava/lang/String;)V

    goto :goto_0

    .line 205
    :cond_6
    sget v3, Lcom/openfeint/api/resource/CloudStorage;->MAX_SIZE:I

    array-length v4, p1

    if-ge v3, v4, :cond_7

    .line 206
    if-eqz p2, :cond_1

    .line 208
    const-string v3, "You cannot exceed 256 kB per save card"

    invoke-virtual {p2, v3}, Lcom/openfeint/api/resource/CloudStorage$SaveCB;->onFailure(Ljava/lang/String;)V

    goto :goto_0

    .line 213
    :cond_7
    invoke-static {}, Lcom/openfeint/internal/OpenFeintInternal;->getInstance()Lcom/openfeint/internal/OpenFeintInternal;

    move-result-object v3

    invoke-virtual {v3}, Lcom/openfeint/internal/OpenFeintInternal;->getAppID()Ljava/lang/String;

    move-result-object v0

    .line 215
    .local v0, "appID":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "/xp/users/"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/games/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/save_cards/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 217
    .local v1, "path":Ljava/lang/String;
    new-instance v3, Lcom/openfeint/api/resource/CloudStorage$3;

    invoke-direct {v3, v1, p1, p2}, Lcom/openfeint/api/resource/CloudStorage$3;-><init>(Ljava/lang/String;[BLcom/openfeint/api/resource/CloudStorage$SaveCB;)V

    .line 233
    invoke-virtual {v3}, Lcom/openfeint/api/resource/CloudStorage$3;->launch()V

    goto :goto_0
.end method
