.class public final Lcom/android/server/DirEncryptServiceHelper$AppliedPolicies;
.super Ljava/lang/Object;
.source "DirEncryptServiceHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/DirEncryptServiceHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AppliedPolicies"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 235
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkPoliciesApplied()Z
    .locals 5

    .prologue
    .line 266
    new-instance v1, Ljava/io/File;

    const-string v3, "/data/system/"

    const-string v4, "applied_sdcard_policies"

    invoke-direct {v1, v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 267
    .local v1, policy:Ljava/io/File;
    const/4 v2, 0x0

    .line 269
    .local v2, result:Z
    :try_start_0
    invoke-virtual {v1}, Ljava/io/File;->exists()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    move v3, v2

    .line 274
    :goto_0
    return v3

    .line 270
    :catch_0
    move-exception v0

    .line 271
    .local v0, e:Ljava/lang/Exception;
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public static setPoliciesApplied()Z
    .locals 5

    .prologue
    .line 237
    new-instance v1, Ljava/io/File;

    const-string v3, "/data/system/"

    const-string v4, "applied_sdcard_policies"

    invoke-direct {v1, v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 238
    .local v1, policy:Ljava/io/File;
    const/4 v2, 0x1

    .line 240
    .local v2, result:Z
    :try_start_0
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 241
    const/4 v2, 0x1

    :goto_0
    move v3, v2

    .line 248
    :goto_1
    return v3

    .line 243
    :cond_0
    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    goto :goto_0

    .line 245
    :catch_0
    move-exception v0

    .line 246
    .local v0, e:Ljava/lang/Exception;
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public static setPoliciesRemoved()Z
    .locals 5

    .prologue
    .line 252
    new-instance v1, Ljava/io/File;

    const-string v3, "/data/system/"

    const-string v4, "applied_sdcard_policies"

    invoke-direct {v1, v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 253
    .local v1, policy:Ljava/io/File;
    const/4 v2, 0x1

    .line 255
    .local v2, result:Z
    :try_start_0
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 256
    invoke-virtual {v1}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    :cond_0
    move v3, v2

    .line 262
    :goto_0
    return v3

    .line 258
    :catch_0
    move-exception v0

    .line 259
    .local v0, e:Ljava/lang/Exception;
    const/4 v3, 0x0

    goto :goto_0
.end method
