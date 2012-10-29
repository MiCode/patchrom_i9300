.class public Lcom/sec/android/app/sysscope/service/SysScopeVerifier;
.super Ljava/lang/Object;
.source "SysScopeVerifier.java"


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 55
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput-object p1, p0, Lcom/sec/android/app/sysscope/service/SysScopeVerifier;->mContext:Landroid/content/Context;

    .line 59
    return-void
.end method

.method private parseScopeApk(Ljava/lang/String;)Z
    .locals 14
    .parameter "apkPath"

    .prologue
    .line 135
    const/4 v10, 0x0

    .line 149
    .local v10, retValue:Z
    :try_start_0
    const-string v11, "SHA-1"

    invoke-static {v11}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v2

    .line 151
    .local v2, digest:Ljava/security/MessageDigest;
    const/4 v3, 0x0

    .line 153
    .local v3, digestB64String:Ljava/lang/String;
    const/4 v1, 0x0

    check-cast v1, [Ljava/security/cert/Certificate;

    .line 157
    .local v1, certs:[Ljava/security/cert/Certificate;
    const/16 v11, 0x2000

    new-array v9, v11, [B

    .line 169
    .local v9, readBuffer:[B
    new-instance v0, Ljava/util/jar/JarFile;

    const/4 v11, 0x1

    invoke-direct {v0, p1, v11}, Ljava/util/jar/JarFile;-><init>(Ljava/lang/String;Z)V

    .line 179
    .local v0, apkFile:Ljava/util/jar/JarFile;
    invoke-virtual {v0}, Ljava/util/jar/JarFile;->entries()Ljava/util/Enumeration;

    move-result-object v5

    .line 183
    .local v5, entries:Ljava/util/Enumeration;
    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v11

    if-nez v11, :cond_1

    .line 255
    const/4 v10, 0x1

    .line 279
    .end local v0           #apkFile:Ljava/util/jar/JarFile;
    .end local v1           #certs:[Ljava/security/cert/Certificate;
    .end local v2           #digest:Ljava/security/MessageDigest;
    .end local v3           #digestB64String:Ljava/lang/String;
    .end local v5           #entries:Ljava/util/Enumeration;
    .end local v9           #readBuffer:[B
    :goto_1
    return v10

    .line 185
    .restart local v0       #apkFile:Ljava/util/jar/JarFile;
    .restart local v1       #certs:[Ljava/security/cert/Certificate;
    .restart local v2       #digest:Ljava/security/MessageDigest;
    .restart local v3       #digestB64String:Ljava/lang/String;
    .restart local v5       #entries:Ljava/util/Enumeration;
    .restart local v9       #readBuffer:[B
    :cond_1
    invoke-interface {v5}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/jar/JarEntry;

    .line 189
    .local v7, je:Ljava/util/jar/JarEntry;
    invoke-virtual {v7}, Ljava/util/jar/JarEntry;->isDirectory()Z

    move-result v11

    if-nez v11, :cond_0

    .line 197
    new-instance v6, Ljava/io/BufferedInputStream;

    .line 199
    invoke-virtual {v0, v7}, Ljava/util/jar/JarFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v11

    .line 197
    invoke-direct {v6, v11}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 203
    .local v6, is:Ljava/io/InputStream;
    invoke-virtual {v2}, Ljava/security/MessageDigest;->reset()V

    .line 205
    const/4 v8, 0x0

    .line 207
    .local v8, nByteCount:I
    :goto_2
    const/4 v11, 0x0

    array-length v12, v9

    invoke-virtual {v6, v9, v11, v12}, Ljava/io/InputStream;->read([BII)I

    move-result v8

    const/4 v11, -0x1

    if-ne v8, v11, :cond_2

    .line 213
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V

    .line 217
    invoke-virtual {v2}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v11

    .line 219
    const/4 v12, 0x0

    .line 217
    invoke-static {v11, v12}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v3

    .line 221
    invoke-virtual {v2}, Ljava/security/MessageDigest;->reset()V

    .line 233
    invoke-virtual {v7}, Ljava/util/jar/JarEntry;->getName()Ljava/lang/String;

    move-result-object v11

    const-string v12, "META-INF/"

    invoke-virtual {v11, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_0

    .line 241
    invoke-virtual {v7}, Ljava/util/jar/JarEntry;->getName()Ljava/lang/String;

    move-result-object v11

    const-string v12, "AndroidManifest.xml"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_0

    .line 243
    invoke-virtual {v7}, Ljava/util/jar/JarEntry;->getName()Ljava/lang/String;

    move-result-object v11

    const-string v12, "resources.arsc"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_0

    .line 245
    invoke-virtual {v7}, Ljava/util/jar/JarEntry;->getName()Ljava/lang/String;

    move-result-object v11

    const-string v12, "classes.dex"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_0

    .line 257
    .end local v0           #apkFile:Ljava/util/jar/JarFile;
    .end local v1           #certs:[Ljava/security/cert/Certificate;
    .end local v2           #digest:Ljava/security/MessageDigest;
    .end local v3           #digestB64String:Ljava/lang/String;
    .end local v5           #entries:Ljava/util/Enumeration;
    .end local v6           #is:Ljava/io/InputStream;
    .end local v7           #je:Ljava/util/jar/JarEntry;
    .end local v8           #nByteCount:I
    .end local v9           #readBuffer:[B
    :catch_0
    move-exception v4

    .line 259
    .local v4, e:Ljava/io/IOException;
    const-string v11, "SysScopeVerifier"

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "Exception: "

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    const/4 v10, 0x0

    goto :goto_1

    .line 209
    .end local v4           #e:Ljava/io/IOException;
    .restart local v0       #apkFile:Ljava/util/jar/JarFile;
    .restart local v1       #certs:[Ljava/security/cert/Certificate;
    .restart local v2       #digest:Ljava/security/MessageDigest;
    .restart local v3       #digestB64String:Ljava/lang/String;
    .restart local v5       #entries:Ljava/util/Enumeration;
    .restart local v6       #is:Ljava/io/InputStream;
    .restart local v7       #je:Ljava/util/jar/JarEntry;
    .restart local v8       #nByteCount:I
    .restart local v9       #readBuffer:[B
    :cond_2
    const/4 v11, 0x0

    :try_start_1
    invoke-virtual {v2, v9, v11, v8}, Ljava/security/MessageDigest;->update([BII)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_2

    .line 263
    .end local v0           #apkFile:Ljava/util/jar/JarFile;
    .end local v1           #certs:[Ljava/security/cert/Certificate;
    .end local v2           #digest:Ljava/security/MessageDigest;
    .end local v3           #digestB64String:Ljava/lang/String;
    .end local v5           #entries:Ljava/util/Enumeration;
    .end local v6           #is:Ljava/io/InputStream;
    .end local v7           #je:Ljava/util/jar/JarEntry;
    .end local v8           #nByteCount:I
    .end local v9           #readBuffer:[B
    :catch_1
    move-exception v4

    .line 265
    .local v4, e:Ljava/lang/RuntimeException;
    const-string v11, "SysScopeVerifier"

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "Exception: "

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/RuntimeException;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    const/4 v10, 0x0

    goto/16 :goto_1

    .line 269
    .end local v4           #e:Ljava/lang/RuntimeException;
    :catch_2
    move-exception v4

    .line 271
    .local v4, e:Ljava/security/NoSuchAlgorithmException;
    const-string v11, "SysScopeVerifier"

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "Exception: "

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/security/NoSuchAlgorithmException;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    const/4 v10, 0x0

    goto/16 :goto_1
.end method

.method private verifyWithPmKey()Z
    .locals 3

    .prologue
    .line 125
    iget-object v0, p0, Lcom/sec/android/app/sysscope/service/SysScopeVerifier;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 127
    const-string v1, "com.android.settings"

    const-string v2, "com.sec.android.app.sysscope"

    .line 125
    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->checkSignatures(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method final verifySysScopeService()Z
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 65
    const/4 v0, 0x0

    .line 69
    .local v0, apkPath:Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    const-string v3, "/data/app/com.sec.android.app.sysscope-1.apk"

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 73
    .local v1, file:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 75
    const-string v0, "/data/app/com.sec.android.app.sysscope-1.apk"

    .line 95
    :goto_0
    invoke-direct {p0, v0}, Lcom/sec/android/app/sysscope/service/SysScopeVerifier;->parseScopeApk(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 97
    const-string v3, "SysScopeVerifier"

    const-string v4, "parse error"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    :goto_1
    return v2

    .line 79
    :cond_0
    new-instance v1, Ljava/io/File;

    .end local v1           #file:Ljava/io/File;
    const-string v3, "/data/app/com.sec.android.app.sysscope-2.apk"

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 81
    .restart local v1       #file:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 83
    const-string v0, "/data/app/com.sec.android.app.sysscope-2.apk"

    goto :goto_0

    .line 87
    :cond_1
    const-string v0, "/system/app/SysScope.apk"

    goto :goto_0

    .line 105
    :cond_2
    invoke-direct {p0}, Lcom/sec/android/app/sysscope/service/SysScopeVerifier;->verifyWithPmKey()Z

    move-result v3

    if-nez v3, :cond_3

    .line 107
    const-string v3, "SysScopeVerifier"

    const-string v4, "verifyWithPmKey error"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 115
    :cond_3
    const/4 v2, 0x1

    goto :goto_1
.end method
