.class Lcom/android/internal/widget/LockPatternUtils$PasswordFileObserver;
.super Landroid/os/FileObserver;
.source "LockPatternUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/widget/LockPatternUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PasswordFileObserver"
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter "path"
    .parameter "mask"

    .prologue
    .line 199
    invoke-direct {p0, p1, p2}, Landroid/os/FileObserver;-><init>(Ljava/lang/String;I)V

    .line 200
    return-void
.end method


# virtual methods
.method public onEvent(ILjava/lang/String;)V
    .locals 7
    .parameter "event"
    .parameter "path"

    .prologue
    const-wide/16 v5, 0x0

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 204
    const-string v2, "gesture.key"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 205
    const-string v2, "LockPatternUtils"

    const-string/jumbo v3, "lock pattern file changed"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    invoke-static {}, Lcom/android/internal/widget/LockPatternUtils;->access$200()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v2

    new-instance v3, Ljava/io/File;

    invoke-static {}, Lcom/android/internal/widget/LockPatternUtils;->access$100()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v3

    cmp-long v3, v3, v5

    if-lez v3, :cond_1

    :goto_0
    invoke-virtual {v2, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 221
    :cond_0
    :goto_1
    return-void

    :cond_1
    move v0, v1

    .line 206
    goto :goto_0

    .line 207
    :cond_2
    const-string/jumbo v2, "password.key"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 208
    const-string v2, "LockPatternUtils"

    const-string/jumbo v3, "lock password file changed"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    invoke-static {}, Lcom/android/internal/widget/LockPatternUtils;->access$400()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v2

    new-instance v3, Ljava/io/File;

    invoke-static {}, Lcom/android/internal/widget/LockPatternUtils;->access$300()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v3

    cmp-long v3, v3, v5

    if-lez v3, :cond_3

    :goto_2
    invoke-virtual {v2, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto :goto_1

    :cond_3
    move v0, v1

    goto :goto_2

    .line 210
    :cond_4
    const-string/jumbo v2, "sparepassword.key"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 211
    const-string v2, "LockPatternUtils"

    const-string/jumbo v3, "lock sparepassword file changed"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    invoke-static {}, Lcom/android/internal/widget/LockPatternUtils;->access$600()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v2

    new-instance v3, Ljava/io/File;

    invoke-static {}, Lcom/android/internal/widget/LockPatternUtils;->access$500()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v3

    cmp-long v3, v3, v5

    if-lez v3, :cond_5

    :goto_3
    invoke-virtual {v2, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto :goto_1

    :cond_5
    move v0, v1

    goto :goto_3

    .line 213
    :cond_6
    const-string/jumbo v2, "recovery_password.key"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 214
    const-string v2, "LockPatternUtils"

    const-string/jumbo v3, "lock recovery password file changed"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    invoke-static {}, Lcom/android/internal/widget/LockPatternUtils;->access$800()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v2

    new-instance v3, Ljava/io/File;

    invoke-static {}, Lcom/android/internal/widget/LockPatternUtils;->access$700()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v3

    cmp-long v3, v3, v5

    if-lez v3, :cond_7

    :goto_4
    invoke-virtual {v2, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto/16 :goto_1

    :cond_7
    move v0, v1

    goto :goto_4

    .line 216
    :cond_8
    const-string/jumbo v2, "signature.key"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 217
    const-string v2, "LockPatternUtils"

    const-string/jumbo v3, "lock signatures file changed"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    invoke-static {}, Lcom/android/internal/widget/LockPatternUtils;->access$1000()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v2

    new-instance v3, Ljava/io/File;

    invoke-static {}, Lcom/android/internal/widget/LockPatternUtils;->access$900()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v3

    cmp-long v3, v3, v5

    if-lez v3, :cond_9

    :goto_5
    invoke-virtual {v2, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto/16 :goto_1

    :cond_9
    move v0, v1

    goto :goto_5
.end method
