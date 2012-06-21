.class public Landroid/dirEncryption/DirEncryptionManager;
.super Ljava/lang/Object;
.source "DirEncryptionManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/dirEncryption/DirEncryptionManager$Error;,
        Landroid/dirEncryption/DirEncryptionManager$Status;
    }
.end annotation


# static fields
.field public static final ADMIN_START:Ljava/lang/String; = "adminStart"

.field private static final DEBUG:Z = true

.field public static final DECRYPT:I = 0x3

#the value of this static final field might be set in the static constructor
.field private static final DIR_ENCRYPTION:Z = false

.field public static final ENCRYPT:I = 0x2

.field public static final ENCRYPT_FULL_OFF:I = 0x5

.field public static final ENCRYPT_FULL_ON:I = 0x4

.field public static final ERR_FEATURE_UNAVAILABLE:I = 0xc8

.field public static final ERR_INVALID_PARAMETER:I = 0xcb

.field public static final ERR_INVALID_PERMISSION:I = 0xcc

.field public static final ERR_NOK:I = 0xc9

.field public static final ERR_SD_NOT_MOUNTED:I = 0xca

.field public static final EXCL_MEDIA_OFF:I = 0x7

.field public static final EXCL_MEDIA_ON:I = 0x6

.field public static final FLE_KEY_STORE:Ljava/lang/String; = "/data/system/"

.field private static final MSG_BASE:I = 0x0

.field private static final MSG_ERR_BASE:I = 0xc8

.field public static final NAME:Ljava/lang/String; = "DirEncryptService"

.field public static final OK:I = 0xb

.field public static final POLICY_ALREADY_SET:I = 0xa

.field public static final POLICY_NOT_SAVED:I = 0x9

.field public static final POLICY_SAVED:I = 0x8

.field public static final SD_CARD_ENCRYPTION_ACTION:Ljava/lang/String; = "android.app.action.START_SDCARD_ENCRYPTION"

.field public static SECURITY_POLICY_NOTIFICATION_ID:I = 0x0

.field public static final STATUS_BUSY:Ljava/lang/String; = "busy"

.field public static final STATUS_DONE:Ljava/lang/String; = "done"

.field public static final STATUS_FREE:Ljava/lang/String; = "free"

.field private static final TAG:Ljava/lang/String; = "DirEncryptionManager"

.field public static final VOLUME_STATE_HIDDEN:Ljava/lang/String; = "checking"


# instance fields
.field private mContext:Landroid/content/Context;

.field private m_InstDirEncSvc:Landroid/os/storage/IDirEncryptService;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 24
    const-string/jumbo v0, "ro.sec.fle.encryption"

    const-string v1, "false"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Landroid/dirEncryption/DirEncryptionManager;->DIR_ENCRYPTION:Z

    .line 42
    const v0, -0x35014542

    sput v0, Landroid/dirEncryption/DirEncryptionManager;->SECURITY_POLICY_NOTIFICATION_ID:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    .line 89
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 81
    iput-object v1, p0, Landroid/dirEncryption/DirEncryptionManager;->mContext:Landroid/content/Context;

    .line 82
    iput-object v1, p0, Landroid/dirEncryption/DirEncryptionManager;->m_InstDirEncSvc:Landroid/os/storage/IDirEncryptService;

    .line 90
    iput-object p1, p0, Landroid/dirEncryption/DirEncryptionManager;->mContext:Landroid/content/Context;

    .line 92
    const-string v0, "DirEncryptService"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/storage/IDirEncryptService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IDirEncryptService;

    move-result-object v0

    iput-object v0, p0, Landroid/dirEncryption/DirEncryptionManager;->m_InstDirEncSvc:Landroid/os/storage/IDirEncryptService;

    .line 94
    iget-object v0, p0, Landroid/dirEncryption/DirEncryptionManager;->m_InstDirEncSvc:Landroid/os/storage/IDirEncryptService;

    if-nez v0, :cond_0

    .line 95
    const-string v0, "Unable to get DirEncryptService instance."

    invoke-static {v0}, Landroid/dirEncryption/DirEncryptionManager;->log(Ljava/lang/String;)V

    .line 97
    :cond_0
    sget-boolean v0, Landroid/dirEncryption/DirEncryptionManager;->DIR_ENCRYPTION:Z

    if-nez v0, :cond_1

    .line 98
    const-string v0, "Dir Encryption not available"

    invoke-static {v0}, Landroid/dirEncryption/DirEncryptionManager;->log(Ljava/lang/String;)V

    .line 99
    iput-object v1, p0, Landroid/dirEncryption/DirEncryptionManager;->m_InstDirEncSvc:Landroid/os/storage/IDirEncryptService;

    .line 101
    :cond_1
    return-void
.end method

.method public static isEncryptionFeatureEnabled()Z
    .locals 1

    .prologue
    .line 142
    sget-boolean v0, Landroid/dirEncryption/DirEncryptionManager;->DIR_ENCRYPTION:Z

    return v0
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 86
    const-string v0, "DirEncryptionManager"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    return-void
.end method


# virtual methods
.method public encryptStorage(Ljava/lang/String;Ljava/lang/String;)I
    .locals 4
    .parameter "path"
    .parameter "password"

    .prologue
    .line 233
    const/16 v1, 0xc8

    .line 234
    .local v1, result:I
    iget-object v3, p0, Landroid/dirEncryption/DirEncryptionManager;->m_InstDirEncSvc:Landroid/os/storage/IDirEncryptService;

    if-nez v3, :cond_0

    move v2, v1

    .line 242
    .end local v1           #result:I
    .local v2, result:I
    :goto_0
    return v2

    .line 238
    .end local v2           #result:I
    .restart local v1       #result:I
    :cond_0
    :try_start_0
    iget-object v3, p0, Landroid/dirEncryption/DirEncryptionManager;->m_InstDirEncSvc:Landroid/os/storage/IDirEncryptService;

    invoke-interface {v3, p1, p2}, Landroid/os/storage/IDirEncryptService;->encryptStorage(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_1
    move v2, v1

    .line 242
    .end local v1           #result:I
    .restart local v2       #result:I
    goto :goto_0

    .line 239
    .end local v2           #result:I
    .restart local v1       #result:I
    :catch_0
    move-exception v0

    .line 240
    .local v0, re:Landroid/os/RemoteException;
    const-string v3, "Unable to communicate with DirEncryptService"

    invoke-static {v3}, Landroid/dirEncryption/DirEncryptionManager;->log(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public getAdditionalSpaceRequired()I
    .locals 4

    .prologue
    .line 288
    const/16 v1, 0xc8

    .line 289
    .local v1, result:I
    iget-object v3, p0, Landroid/dirEncryption/DirEncryptionManager;->m_InstDirEncSvc:Landroid/os/storage/IDirEncryptService;

    if-nez v3, :cond_0

    move v2, v1

    .line 297
    .end local v1           #result:I
    .local v2, result:I
    :goto_0
    return v2

    .line 293
    .end local v2           #result:I
    .restart local v1       #result:I
    :cond_0
    :try_start_0
    iget-object v3, p0, Landroid/dirEncryption/DirEncryptionManager;->m_InstDirEncSvc:Landroid/os/storage/IDirEncryptService;

    invoke-interface {v3}, Landroid/os/storage/IDirEncryptService;->getAdditionalSpaceRequired()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_1
    move v2, v1

    .line 297
    .end local v1           #result:I
    .restart local v2       #result:I
    goto :goto_0

    .line 294
    .end local v2           #result:I
    .restart local v1       #result:I
    :catch_0
    move-exception v0

    .line 295
    .local v0, re:Landroid/os/RemoteException;
    const-string v3, "Unable to communicate with DirEncryptService"

    invoke-static {v3}, Landroid/dirEncryption/DirEncryptionManager;->log(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public getCurrentStatus()I
    .locals 4

    .prologue
    .line 251
    const/16 v1, 0xc8

    .line 252
    .local v1, result:I
    iget-object v3, p0, Landroid/dirEncryption/DirEncryptionManager;->m_InstDirEncSvc:Landroid/os/storage/IDirEncryptService;

    if-nez v3, :cond_0

    move v2, v1

    .line 261
    .end local v1           #result:I
    .local v2, result:I
    :goto_0
    return v2

    .line 256
    .end local v2           #result:I
    .restart local v1       #result:I
    :cond_0
    :try_start_0
    iget-object v3, p0, Landroid/dirEncryption/DirEncryptionManager;->m_InstDirEncSvc:Landroid/os/storage/IDirEncryptService;

    invoke-interface {v3}, Landroid/os/storage/IDirEncryptService;->getCurrentStatus()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_1
    move v2, v1

    .line 261
    .end local v1           #result:I
    .restart local v2       #result:I
    goto :goto_0

    .line 257
    .end local v2           #result:I
    .restart local v1       #result:I
    :catch_0
    move-exception v0

    .line 258
    .local v0, re:Landroid/os/RemoteException;
    const-string v3, "Unable to communicate with DirEncryptService"

    invoke-static {v3}, Landroid/dirEncryption/DirEncryptionManager;->log(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public getExternalSdPath()Ljava/lang/String;
    .locals 7

    .prologue
    .line 149
    iget-object v5, p0, Landroid/dirEncryption/DirEncryptionManager;->mContext:Landroid/content/Context;

    const-string/jumbo v6, "storage"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/storage/StorageManager;

    .line 150
    .local v1, sm:Landroid/os/storage/StorageManager;
    invoke-virtual {v1}, Landroid/os/storage/StorageManager;->getVolumeList()[Landroid/os/storage/StorageVolume;

    move-result-object v3

    .line 151
    .local v3, storageVolumes:[Landroid/os/storage/StorageVolume;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v5, v3

    if-ge v0, v5, :cond_1

    .line 152
    aget-object v2, v3, v0

    .line 153
    .local v2, storageVolume:Landroid/os/storage/StorageVolume;
    invoke-virtual {v2}, Landroid/os/storage/StorageVolume;->getSubSystem()Ljava/lang/String;

    move-result-object v4

    .line 154
    .local v4, subsystem:Ljava/lang/String;
    if-eqz v4, :cond_0

    const-string/jumbo v5, "sd"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v2}, Landroid/os/storage/StorageVolume;->isRemovable()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 155
    invoke-virtual {v2}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v5

    .line 158
    .end local v2           #storageVolume:Landroid/os/storage/StorageVolume;
    .end local v4           #subsystem:Ljava/lang/String;
    :goto_1
    return-object v5

    .line 151
    .restart local v2       #storageVolume:Landroid/os/storage/StorageVolume;
    .restart local v4       #subsystem:Ljava/lang/String;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 158
    .end local v2           #storageVolume:Landroid/os/storage/StorageVolume;
    .end local v4           #subsystem:Ljava/lang/String;
    :cond_1
    const/4 v5, 0x0

    goto :goto_1
.end method

.method public getLastError()I
    .locals 4

    .prologue
    .line 270
    const/16 v1, 0xc8

    .line 271
    .local v1, result:I
    iget-object v3, p0, Landroid/dirEncryption/DirEncryptionManager;->m_InstDirEncSvc:Landroid/os/storage/IDirEncryptService;

    if-nez v3, :cond_0

    move v2, v1

    .line 279
    .end local v1           #result:I
    .local v2, result:I
    :goto_0
    return v2

    .line 275
    .end local v2           #result:I
    .restart local v1       #result:I
    :cond_0
    :try_start_0
    iget-object v3, p0, Landroid/dirEncryption/DirEncryptionManager;->m_InstDirEncSvc:Landroid/os/storage/IDirEncryptService;

    invoke-interface {v3}, Landroid/os/storage/IDirEncryptService;->getLastError()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_1
    move v2, v1

    .line 279
    .end local v1           #result:I
    .restart local v2       #result:I
    goto :goto_0

    .line 276
    .end local v2           #result:I
    .restart local v1       #result:I
    :catch_0
    move-exception v0

    .line 277
    .local v0, re:Landroid/os/RemoteException;
    const-string v3, "Unable to communicate with DirEncryptService"

    invoke-static {v3}, Landroid/dirEncryption/DirEncryptionManager;->log(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public getSDCardEncryptionPrefs()Landroid/dirEncryption/SDCardEncryptionPolicies;
    .locals 3

    .prologue
    .line 306
    iget-object v2, p0, Landroid/dirEncryption/DirEncryptionManager;->m_InstDirEncSvc:Landroid/os/storage/IDirEncryptService;

    if-nez v2, :cond_0

    .line 307
    const/4 v0, 0x0

    .line 315
    :goto_0
    return-object v0

    .line 309
    :cond_0
    const/4 v0, 0x0

    .line 311
    .local v0, policies:Landroid/dirEncryption/SDCardEncryptionPolicies;
    :try_start_0
    iget-object v2, p0, Landroid/dirEncryption/DirEncryptionManager;->m_InstDirEncSvc:Landroid/os/storage/IDirEncryptService;

    invoke-interface {v2}, Landroid/os/storage/IDirEncryptService;->getSDCardEncryptionPrefs()Landroid/dirEncryption/SDCardEncryptionPolicies;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 312
    :catch_0
    move-exception v1

    .line 313
    .local v1, re:Landroid/os/RemoteException;
    const-string v2, "Unable to communicate with DirEncryptService"

    invoke-static {v2}, Landroid/dirEncryption/DirEncryptionManager;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public isStorageCardEncryptionPoliciesApplied()Z
    .locals 5

    .prologue
    const/4 v3, 0x1

    .line 191
    const/4 v1, 0x0

    .line 192
    .local v1, result:Z
    iget-object v4, p0, Landroid/dirEncryption/DirEncryptionManager;->m_InstDirEncSvc:Landroid/os/storage/IDirEncryptService;

    if-nez v4, :cond_0

    move v2, v1

    .line 200
    .end local v1           #result:Z
    .local v2, result:I
    :goto_0
    return v2

    .line 196
    .end local v2           #result:I
    .restart local v1       #result:Z
    :cond_0
    :try_start_0
    iget-object v4, p0, Landroid/dirEncryption/DirEncryptionManager;->m_InstDirEncSvc:Landroid/os/storage/IDirEncryptService;

    invoke-interface {v4}, Landroid/os/storage/IDirEncryptService;->isStorageCardEncryptionPoliciesApplied()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    if-ne v4, v3, :cond_1

    move v1, v3

    :goto_1
    move v2, v1

    .line 200
    .restart local v2       #result:I
    goto :goto_0

    .line 196
    .end local v2           #result:I
    :cond_1
    const/4 v1, 0x0

    goto :goto_1

    .line 197
    :catch_0
    move-exception v0

    .line 198
    .local v0, re:Landroid/os/RemoteException;
    const-string v3, "Unable to communicate with DirEncryptService"

    invoke-static {v3}, Landroid/dirEncryption/DirEncryptionManager;->log(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public registerListener(Landroid/os/storage/IDirEncryptServiceListener;)V
    .locals 2
    .parameter "listener"

    .prologue
    .line 110
    iget-object v1, p0, Landroid/dirEncryption/DirEncryptionManager;->m_InstDirEncSvc:Landroid/os/storage/IDirEncryptService;

    if-nez v1, :cond_0

    .line 118
    :goto_0
    return-void

    .line 114
    :cond_0
    :try_start_0
    iget-object v1, p0, Landroid/dirEncryption/DirEncryptionManager;->m_InstDirEncSvc:Landroid/os/storage/IDirEncryptService;

    invoke-interface {v1, p1}, Landroid/os/storage/IDirEncryptService;->registerListener(Landroid/os/storage/IDirEncryptServiceListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 115
    :catch_0
    move-exception v0

    .line 116
    .local v0, re:Landroid/os/RemoteException;
    const-string v1, "Unable to communicate with DirEncryptService"

    invoke-static {v1}, Landroid/dirEncryption/DirEncryptionManager;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setPassword(Ljava/lang/String;)I
    .locals 4
    .parameter "password"

    .prologue
    .line 212
    const/16 v1, 0xc8

    .line 213
    .local v1, result:I
    iget-object v3, p0, Landroid/dirEncryption/DirEncryptionManager;->m_InstDirEncSvc:Landroid/os/storage/IDirEncryptService;

    if-nez v3, :cond_0

    move v2, v1

    .line 221
    .end local v1           #result:I
    .local v2, result:I
    :goto_0
    return v2

    .line 217
    .end local v2           #result:I
    .restart local v1       #result:I
    :cond_0
    :try_start_0
    iget-object v3, p0, Landroid/dirEncryption/DirEncryptionManager;->m_InstDirEncSvc:Landroid/os/storage/IDirEncryptService;

    invoke-interface {v3, p1}, Landroid/os/storage/IDirEncryptService;->setPassword(Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_1
    move v2, v1

    .line 221
    .end local v1           #result:I
    .restart local v2       #result:I
    goto :goto_0

    .line 218
    .end local v2           #result:I
    .restart local v1       #result:I
    :catch_0
    move-exception v0

    .line 219
    .local v0, re:Landroid/os/RemoteException;
    const-string v3, "Unable to communicate with DirEncryptService"

    invoke-static {v3}, Landroid/dirEncryption/DirEncryptionManager;->log(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public setStorageCardEncryptionPolicy(III)I
    .locals 4
    .parameter "encType"
    .parameter "fullEnc"
    .parameter "excludeMediaFiles"

    .prologue
    .line 174
    const/16 v1, 0xc8

    .line 175
    .local v1, result:I
    iget-object v3, p0, Landroid/dirEncryption/DirEncryptionManager;->m_InstDirEncSvc:Landroid/os/storage/IDirEncryptService;

    if-nez v3, :cond_0

    move v2, v1

    .line 183
    .end local v1           #result:I
    .local v2, result:I
    :goto_0
    return v2

    .line 179
    .end local v2           #result:I
    .restart local v1       #result:I
    :cond_0
    :try_start_0
    iget-object v3, p0, Landroid/dirEncryption/DirEncryptionManager;->m_InstDirEncSvc:Landroid/os/storage/IDirEncryptService;

    invoke-interface {v3, p1, p2, p3}, Landroid/os/storage/IDirEncryptService;->setStorageCardEncryptionPolicy(III)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_1
    move v2, v1

    .line 183
    .end local v1           #result:I
    .restart local v2       #result:I
    goto :goto_0

    .line 180
    .end local v2           #result:I
    .restart local v1       #result:I
    :catch_0
    move-exception v0

    .line 181
    .local v0, re:Landroid/os/RemoteException;
    const-string v3, "Unable to communicate with DirEncryptService"

    invoke-static {v3}, Landroid/dirEncryption/DirEncryptionManager;->log(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public unregisterListener(Landroid/os/storage/IDirEncryptServiceListener;)V
    .locals 2
    .parameter "listener"

    .prologue
    .line 126
    iget-object v1, p0, Landroid/dirEncryption/DirEncryptionManager;->m_InstDirEncSvc:Landroid/os/storage/IDirEncryptService;

    if-nez v1, :cond_0

    .line 134
    :goto_0
    return-void

    .line 130
    :cond_0
    :try_start_0
    iget-object v1, p0, Landroid/dirEncryption/DirEncryptionManager;->m_InstDirEncSvc:Landroid/os/storage/IDirEncryptService;

    invoke-interface {v1, p1}, Landroid/os/storage/IDirEncryptService;->unregisterListener(Landroid/os/storage/IDirEncryptServiceListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 131
    :catch_0
    move-exception v0

    .line 132
    .local v0, re:Landroid/os/RemoteException;
    const-string v1, "Unable to communicate with DirEncryptService"

    invoke-static {v1}, Landroid/dirEncryption/DirEncryptionManager;->log(Ljava/lang/String;)V

    goto :goto_0
.end method
