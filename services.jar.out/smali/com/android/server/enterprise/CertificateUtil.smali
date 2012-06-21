.class Lcom/android/server/enterprise/CertificateUtil;
.super Ljava/lang/Object;
.source "CertificateUtil.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "CertificateUtil"


# instance fields
.field private mCaCerts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/security/cert/X509Certificate;",
            ">;"
        }
    .end annotation
.end field

.field private mKeyStore:Landroid/security/KeyStore;

.field private mUserCert:Ljava/security/cert/X509Certificate;

.field private mUserKey:Ljava/security/PrivateKey;


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 81
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 85
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/enterprise/CertificateUtil;->mKeyStore:Landroid/security/KeyStore;

    .line 87
    iput-object v1, p0, Lcom/android/server/enterprise/CertificateUtil;->mUserKey:Ljava/security/PrivateKey;

    .line 88
    iput-object v1, p0, Lcom/android/server/enterprise/CertificateUtil;->mUserCert:Ljava/security/cert/X509Certificate;

    .line 89
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/enterprise/CertificateUtil;->mCaCerts:Ljava/util/List;

    return-void
.end method

.method private varargs convertToPem([Ljava/lang/Object;)[B
    .locals 12
    .parameter "objects"

    .prologue
    .line 216
    :try_start_0
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 217
    .local v1, bao:Ljava/io/ByteArrayOutputStream;
    new-instance v6, Ljava/io/OutputStreamWriter;

    invoke-direct {v6, v1}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    .line 218
    .local v6, osw:Ljava/io/OutputStreamWriter;
    new-instance v7, Lcom/android/org/bouncycastle/openssl/PEMWriter;

    invoke-direct {v7, v6}, Lcom/android/org/bouncycastle/openssl/PEMWriter;-><init>(Ljava/io/Writer;)V

    .line 219
    .local v7, pw:Lcom/android/org/bouncycastle/openssl/PEMWriter;
    move-object v0, p1

    .local v0, arr$:[Ljava/lang/Object;
    array-length v4, v0

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_0
    if-ge v3, v4, :cond_0

    aget-object v5, v0, v3

    .line 220
    .local v5, o:Ljava/lang/Object;
    invoke-virtual {v7, v5}, Lcom/android/org/bouncycastle/openssl/PEMWriter;->writeObject(Ljava/lang/Object;)V

    .line 219
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 221
    .end local v5           #o:Ljava/lang/Object;
    :cond_0
    invoke-virtual {v7}, Lcom/android/org/bouncycastle/openssl/PEMWriter;->close()V

    .line 222
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v8

    .line 223
    .local v8, ret:[B
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 224
    return-object v8

    .line 226
    .end local v0           #arr$:[Ljava/lang/Object;
    .end local v1           #bao:Ljava/io/ByteArrayOutputStream;
    .end local v3           #i$:I
    .end local v4           #len$:I
    .end local v6           #osw:Ljava/io/OutputStreamWriter;
    .end local v7           #pw:Lcom/android/org/bouncycastle/openssl/PEMWriter;
    .end local v8           #ret:[B
    :catch_0
    move-exception v2

    .line 228
    .local v2, e:Ljava/io/IOException;
    const-string v9, "CertificateUtil"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "convertToPem(): "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    new-instance v9, Ljava/lang/RuntimeException;

    invoke-direct {v9, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v9
.end method

.method private extractPkcs12([BLjava/lang/String;)Z
    .locals 10
    .parameter "data"
    .parameter "password"

    .prologue
    const/4 v6, 0x0

    .line 169
    if-nez p2, :cond_1

    .line 194
    :cond_0
    :goto_0
    return v6

    .line 173
    :cond_1
    :try_start_0
    const-string v7, "PKCS12"

    invoke-static {v7}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v4

    .line 174
    .local v4, keystore:Ljava/security/KeyStore;
    new-instance v5, Ljava/security/KeyStore$PasswordProtection;

    invoke-virtual {p2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v7

    invoke-direct {v5, v7}, Ljava/security/KeyStore$PasswordProtection;-><init>([C)V

    .line 175
    .local v5, passwordProtection:Ljava/security/KeyStore$PasswordProtection;
    new-instance v7, Ljava/io/ByteArrayInputStream;

    invoke-direct {v7, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {v5}, Ljava/security/KeyStore$PasswordProtection;->getPassword()[C

    move-result-object v8

    invoke-virtual {v4, v7, v8}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V

    .line 177
    invoke-virtual {v4}, Ljava/security/KeyStore;->aliases()Ljava/util/Enumeration;

    move-result-object v1

    .line 178
    .local v1, aliases:Ljava/util/Enumeration;,"Ljava/util/Enumeration<Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 181
    :cond_2
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 182
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 183
    .local v0, alias:Ljava/lang/String;
    invoke-virtual {v4, v0, v5}, Ljava/security/KeyStore;->getEntry(Ljava/lang/String;Ljava/security/KeyStore$ProtectionParameter;)Ljava/security/KeyStore$Entry;

    move-result-object v3

    .line 187
    .local v3, entry:Ljava/security/KeyStore$Entry;
    instance-of v7, v3, Ljava/security/KeyStore$PrivateKeyEntry;

    if-eqz v7, :cond_2

    .line 188
    check-cast v3, Ljava/security/KeyStore$PrivateKeyEntry;

    .end local v3           #entry:Ljava/security/KeyStore$Entry;
    invoke-direct {p0, v3}, Lcom/android/server/enterprise/CertificateUtil;->installFrom(Ljava/security/KeyStore$PrivateKeyEntry;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    goto :goto_0

    .line 191
    .end local v0           #alias:Ljava/lang/String;
    .end local v1           #aliases:Ljava/util/Enumeration;,"Ljava/util/Enumeration<Ljava/lang/String;>;"
    .end local v4           #keystore:Ljava/security/KeyStore;
    .end local v5           #passwordProtection:Ljava/security/KeyStore$PasswordProtection;
    :catch_0
    move-exception v2

    .line 192
    .local v2, e:Ljava/lang/Exception;
    const-string v7, "CertificateUtil"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "extractPkcs12(): "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private declared-synchronized installFrom(Ljava/security/KeyStore$PrivateKeyEntry;)Z
    .locals 11
    .parameter "entry"

    .prologue
    .line 198
    monitor-enter p0

    :try_start_0
    invoke-virtual {p1}, Ljava/security/KeyStore$PrivateKeyEntry;->getPrivateKey()Ljava/security/PrivateKey;

    move-result-object v8

    iput-object v8, p0, Lcom/android/server/enterprise/CertificateUtil;->mUserKey:Ljava/security/PrivateKey;

    .line 199
    invoke-virtual {p1}, Ljava/security/KeyStore$PrivateKeyEntry;->getCertificate()Ljava/security/cert/Certificate;

    move-result-object v8

    check-cast v8, Ljava/security/cert/X509Certificate;

    iput-object v8, p0, Lcom/android/server/enterprise/CertificateUtil;->mUserCert:Ljava/security/cert/X509Certificate;

    .line 201
    invoke-virtual {p1}, Ljava/security/KeyStore$PrivateKeyEntry;->getCertificateChain()[Ljava/security/cert/Certificate;

    move-result-object v5

    .line 202
    .local v5, certs:[Ljava/security/cert/Certificate;
    const-string v8, "CertificateUtil"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "# certs extracted = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    array-length v10, v5

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    new-instance v3, Ljava/util/ArrayList;

    array-length v8, v5

    invoke-direct {v3, v8}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v3, p0, Lcom/android/server/enterprise/CertificateUtil;->mCaCerts:Ljava/util/List;

    .line 204
    .local v3, caCerts:Ljava/util/List;,"Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    move-object v1, v5

    .local v1, arr$:[Ljava/security/cert/Certificate;
    array-length v7, v1

    .local v7, len$:I
    const/4 v6, 0x0

    .local v6, i$:I
    :goto_0
    if-ge v6, v7, :cond_1

    aget-object v2, v1, v6

    .line 205
    .local v2, c:Ljava/security/cert/Certificate;
    move-object v0, v2

    check-cast v0, Ljava/security/cert/X509Certificate;

    move-object v4, v0

    .line 206
    .local v4, cert:Ljava/security/cert/X509Certificate;
    invoke-direct {p0, v4}, Lcom/android/server/enterprise/CertificateUtil;->isCa(Ljava/security/cert/X509Certificate;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 207
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 204
    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 209
    .end local v2           #c:Ljava/security/cert/Certificate;
    .end local v4           #cert:Ljava/security/cert/X509Certificate;
    :cond_1
    const-string v8, "CertificateUtil"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "# ca certs extracted = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/server/enterprise/CertificateUtil;->mCaCerts:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 211
    const/4 v8, 0x1

    monitor-exit p0

    return v8

    .line 198
    .end local v1           #arr$:[Ljava/security/cert/Certificate;
    .end local v3           #caCerts:Ljava/util/List;,"Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    .end local v5           #certs:[Ljava/security/cert/Certificate;
    .end local v6           #i$:I
    .end local v7           #len$:I
    :catchall_0
    move-exception v8

    monitor-exit p0

    throw v8
.end method

.method private isCa(Ljava/security/cert/X509Certificate;)Z
    .locals 5
    .parameter "cert"

    .prologue
    const/4 v3, 0x0

    .line 156
    :try_start_0
    const-string v4, "2.5.29.19"

    invoke-virtual {p1, v4}, Ljava/security/cert/X509Certificate;->getExtensionValue(Ljava/lang/String;)[B

    move-result-object v0

    .line 157
    .local v0, basicConstraints:[B
    if-nez v0, :cond_0

    .line 164
    .end local v0           #basicConstraints:[B
    :goto_0
    return v3

    .line 159
    .restart local v0       #basicConstraints:[B
    :cond_0
    new-instance v4, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;

    invoke-direct {v4, v0}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;-><init>([B)V

    invoke-virtual {v4}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;->readObject()Lcom/android/org/bouncycastle/asn1/DERObject;

    move-result-object v2

    .line 160
    .local v2, obj:Lcom/android/org/bouncycastle/asn1/DERObject;
    check-cast v2, Lcom/android/org/bouncycastle/asn1/DEROctetString;

    .end local v2           #obj:Lcom/android/org/bouncycastle/asn1/DERObject;
    invoke-virtual {v2}, Lcom/android/org/bouncycastle/asn1/DEROctetString;->getOctets()[B

    move-result-object v0

    .line 161
    new-instance v4, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;

    invoke-direct {v4, v0}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;-><init>([B)V

    invoke-virtual {v4}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;->readObject()Lcom/android/org/bouncycastle/asn1/DERObject;

    move-result-object v2

    .line 162
    .restart local v2       #obj:Lcom/android/org/bouncycastle/asn1/DERObject;
    new-instance v4, Lcom/android/org/bouncycastle/asn1/x509/BasicConstraints;

    check-cast v2, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    .end local v2           #obj:Lcom/android/org/bouncycastle/asn1/DERObject;
    invoke-direct {v4, v2}, Lcom/android/org/bouncycastle/asn1/x509/BasicConstraints;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1Sequence;)V

    invoke-virtual {v4}, Lcom/android/org/bouncycastle/asn1/x509/BasicConstraints;->isCA()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    goto :goto_0

    .line 163
    .end local v0           #basicConstraints:[B
    :catch_0
    move-exception v1

    .line 164
    .local v1, e:Ljava/lang/Exception;
    goto :goto_0
.end method

.method private parseCert([B)Z
    .locals 7
    .parameter "bytes"

    .prologue
    .line 133
    const/4 v3, 0x0

    .line 135
    .local v3, ret:Z
    :try_start_0
    const-string v4, "X.509"

    invoke-static {v4}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v1

    .line 136
    .local v1, certFactory:Ljava/security/cert/CertificateFactory;
    new-instance v4, Ljava/io/ByteArrayInputStream;

    invoke-direct {v4, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {v1, v4}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v0

    check-cast v0, Ljava/security/cert/X509Certificate;

    .line 138
    .local v0, cert:Ljava/security/cert/X509Certificate;
    invoke-direct {p0, v0}, Lcom/android/server/enterprise/CertificateUtil;->isCa(Ljava/security/cert/X509Certificate;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 139
    const-string v4, "CertificateUtil"

    const-string v5, "got a CA cert"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    iget-object v4, p0, Lcom/android/server/enterprise/CertificateUtil;->mCaCerts:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 141
    const/4 v3, 0x1

    .line 151
    .end local v0           #cert:Ljava/security/cert/X509Certificate;
    .end local v1           #certFactory:Ljava/security/cert/CertificateFactory;
    :goto_0
    const/4 v4, 0x1

    return v4

    .line 143
    .restart local v0       #cert:Ljava/security/cert/X509Certificate;
    .restart local v1       #certFactory:Ljava/security/cert/CertificateFactory;
    :cond_0
    const-string v4, "CertificateUtil"

    const-string v5, "got a user cert"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    iput-object v0, p0, Lcom/android/server/enterprise/CertificateUtil;->mUserCert:Ljava/security/cert/X509Certificate;
    :try_end_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 145
    const/4 v3, 0x1

    goto :goto_0

    .line 147
    .end local v0           #cert:Ljava/security/cert/X509Certificate;
    .end local v1           #certFactory:Ljava/security/cert/CertificateFactory;
    :catch_0
    move-exception v2

    .line 148
    .local v2, e:Ljava/security/cert/CertificateException;
    const-string v4, "CertificateUtil"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "parseCert(): "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    const/4 v3, 0x0

    goto :goto_0
.end method


# virtual methods
.method public install(Ljava/lang/String;[BLjava/lang/String;Ljava/lang/String;)Z
    .locals 9
    .parameter "type"
    .parameter "data"
    .parameter "name"
    .parameter "password"

    .prologue
    const/4 v8, 0x1

    .line 93
    const/4 v2, 0x0

    .line 97
    .local v2, ret:Z
    const-string v3, ".crt"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "CERT"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 98
    :cond_0
    invoke-direct {p0, p2}, Lcom/android/server/enterprise/CertificateUtil;->parseCert([B)Z

    move-result v2

    .line 106
    :goto_0
    if-ne v2, v8, :cond_3

    .line 108
    :try_start_0
    iget-object v3, p0, Lcom/android/server/enterprise/CertificateUtil;->mCaCerts:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    .line 109
    iget-object v3, p0, Lcom/android/server/enterprise/CertificateUtil;->mCaCerts:Ljava/util/List;

    iget-object v4, p0, Lcom/android/server/enterprise/CertificateUtil;->mCaCerts:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    new-array v4, v4, [Ljava/security/cert/X509Certificate;

    invoke-interface {v3, v4}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    .line 111
    .local v0, caCerts:[Ljava/lang/Object;
    iget-object v3, p0, Lcom/android/server/enterprise/CertificateUtil;->mKeyStore:Landroid/security/KeyStore;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CACERT_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v0}, Lcom/android/server/enterprise/CertificateUtil;->convertToPem([Ljava/lang/Object;)[B

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/security/KeyStore;->put(Ljava/lang/String;[B)Z

    move-result v2

    .line 112
    const-string v3, "CertificateUtil"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CaCerts put state : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    .end local v0           #caCerts:[Ljava/lang/Object;
    :cond_1
    if-ne v2, v8, :cond_2

    iget-object v3, p0, Lcom/android/server/enterprise/CertificateUtil;->mUserCert:Ljava/security/cert/X509Certificate;

    if-eqz v3, :cond_2

    .line 115
    iget-object v3, p0, Lcom/android/server/enterprise/CertificateUtil;->mKeyStore:Landroid/security/KeyStore;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "USRCERT_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/android/server/enterprise/CertificateUtil;->mUserCert:Ljava/security/cert/X509Certificate;

    aput-object v7, v5, v6

    invoke-direct {p0, v5}, Lcom/android/server/enterprise/CertificateUtil;->convertToPem([Ljava/lang/Object;)[B

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/security/KeyStore;->put(Ljava/lang/String;[B)Z

    move-result v2

    .line 117
    const-string v3, "CertificateUtil"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "UserCert put state : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    :cond_2
    if-ne v2, v8, :cond_3

    iget-object v3, p0, Lcom/android/server/enterprise/CertificateUtil;->mUserKey:Ljava/security/PrivateKey;

    if-eqz v3, :cond_3

    .line 120
    iget-object v3, p0, Lcom/android/server/enterprise/CertificateUtil;->mKeyStore:Landroid/security/KeyStore;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "USRPKEY_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/android/server/enterprise/CertificateUtil;->mUserKey:Ljava/security/PrivateKey;

    aput-object v7, v5, v6

    invoke-direct {p0, v5}, Lcom/android/server/enterprise/CertificateUtil;->convertToPem([Ljava/lang/Object;)[B

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/security/KeyStore;->put(Ljava/lang/String;[B)Z

    move-result v2

    .line 122
    const-string v3, "CertificateUtil"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "UserPKey put state : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 129
    :cond_3
    :goto_1
    return v2

    .line 99
    :cond_4
    const-string v3, ".p12"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_5

    const-string v3, "PKCS12"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 101
    :cond_5
    invoke-direct {p0, p2, p4}, Lcom/android/server/enterprise/CertificateUtil;->extractPkcs12([BLjava/lang/String;)Z

    move-result v2

    goto/16 :goto_0

    .line 103
    :cond_6
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 124
    :catch_0
    move-exception v1

    .line 125
    .local v1, e:Ljava/lang/Exception;
    const-string v3, "CertificateUtil"

    const-string v4, "install(): "

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method
