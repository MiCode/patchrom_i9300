.class public Landroid/sec/enterprise/BluetoothUtils;
.super Ljava/lang/Object;
.source "BluetoothUtils.java"


# static fields
.field public static final BasicPrinting:Landroid/os/ParcelUuid; = null

.field public static final FTP:Landroid/os/ParcelUuid; = null

.field public static final NO_PROFILE:I = -0x1

.field public static final PBAP:Landroid/os/ParcelUuid; = null

.field private static final TAG:Ljava/lang/String; = "BluetoothUtils"

.field static final TYPE_L2CAP:I = 0x3

.field static final TYPE_RFCOMM:I = 0x1

.field static final TYPE_SCO:I = 0x2


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 59
    const-string v0, "00001106-0000-1000-8000-00805f9b34fb"

    invoke-static {v0}, Landroid/os/ParcelUuid;->fromString(Ljava/lang/String;)Landroid/os/ParcelUuid;

    move-result-object v0

    sput-object v0, Landroid/sec/enterprise/BluetoothUtils;->FTP:Landroid/os/ParcelUuid;

    .line 61
    const-string v0, "00001130-0000-1000-8000-00805f9b34fb"

    invoke-static {v0}, Landroid/os/ParcelUuid;->fromString(Ljava/lang/String;)Landroid/os/ParcelUuid;

    move-result-object v0

    sput-object v0, Landroid/sec/enterprise/BluetoothUtils;->PBAP:Landroid/os/ParcelUuid;

    .line 63
    const-string v0, "00001122-0000-1000-8000-00805f9b34fb"

    invoke-static {v0}, Landroid/os/ParcelUuid;->fromString(Ljava/lang/String;)Landroid/os/ParcelUuid;

    move-result-object v0

    sput-object v0, Landroid/sec/enterprise/BluetoothUtils;->BasicPrinting:Landroid/os/ParcelUuid;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 52
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static bluetoothLog(Ljava/lang/String;ILandroid/bluetooth/BluetoothDevice;)V
    .locals 8
    .parameter "tag"
    .parameter "profile"
    .parameter "device"

    .prologue
    const/16 v7, 0xa

    .line 333
    const-string v2, ""

    .line 334
    .local v2, localName:Ljava/lang/String;
    const-string v1, ""

    .line 335
    .local v1, localAddress:Ljava/lang/String;
    const-string v5, ""

    .line 336
    .local v5, remoteName:Ljava/lang/String;
    const-string v4, ""

    .line 337
    .local v4, remoteAddress:Ljava/lang/String;
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 338
    .local v0, adapter:Landroid/bluetooth/BluetoothAdapter;
    if-eqz v0, :cond_0

    .line 339
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getName()Ljava/lang/String;

    move-result-object v2

    .line 340
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getAddress()Ljava/lang/String;

    move-result-object v1

    .line 342
    :cond_0
    if-eqz p2, :cond_1

    .line 343
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v5

    .line 344
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v4

    .line 347
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v6, ""

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 348
    .local v3, logMsg:Ljava/lang/StringBuilder;
    const/4 v6, -0x1

    if-eq p1, v6, :cond_2

    .line 349
    invoke-static {p1}, Landroid/sec/enterprise/BluetoothUtils;->convertBluetoothProfile(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 351
    :cond_2
    if-eqz v4, :cond_3

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_3

    .line 352
    const-string v6, "Remote Address: "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 353
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 354
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 356
    :cond_3
    if-eqz v4, :cond_4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_4

    .line 357
    const-string v6, "Remote Name: "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 358
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 359
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 361
    :cond_4
    if-eqz v1, :cond_5

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_5

    .line 362
    const-string v6, "Local Address: "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 363
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 364
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 366
    :cond_5
    if-eqz v1, :cond_6

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_6

    .line 367
    const-string v6, "Local Name: "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 368
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 369
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 372
    :cond_6
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {p0, v6}, Landroid/sec/enterprise/BluetoothUtils;->bluetoothLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 373
    return-void
.end method

.method public static bluetoothLog(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter "tag"
    .parameter "msg"

    .prologue
    .line 260
    :try_start_0
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getInstance()Landroid/sec/enterprise/EnterpriseDeviceManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getBluetoothPolicy()Landroid/sec/enterprise/BluetoothPolicy;

    move-result-object v1

    .line 262
    .local v1, service:Landroid/sec/enterprise/BluetoothPolicy;
    invoke-virtual {v1, p0, p1}, Landroid/sec/enterprise/BluetoothPolicy;->bluetoothLog(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 266
    .end local v1           #service:Landroid/sec/enterprise/BluetoothPolicy;
    :goto_0
    return-void

    .line 263
    :catch_0
    move-exception v0

    .line 264
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "BluetoothUtils"

    const-string v3, "Exception on blutoothLog"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static bluetoothLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter "tag"
    .parameter "remoteName"
    .parameter "remoteAddress"

    .prologue
    const/16 v3, 0xa

    .line 293
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 294
    .local v0, adapter:Landroid/bluetooth/BluetoothAdapter;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 295
    .local v1, logMsg:Ljava/lang/StringBuilder;
    if-eqz v0, :cond_0

    .line 296
    const-string v2, "Local Name: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 297
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 298
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 299
    const-string v2, "Local Address: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 300
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 301
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 303
    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_1

    .line 304
    const-string v2, "Remote Name: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 305
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 306
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 308
    :cond_1
    if-eqz p2, :cond_2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_2

    .line 309
    const-string v2, "Remote Address: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 310
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 311
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 313
    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Landroid/sec/enterprise/BluetoothUtils;->bluetoothLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 314
    return-void
.end method

.method public static bluetoothSocketLog(Ljava/lang/String;Landroid/bluetooth/BluetoothDevice;II)V
    .locals 4
    .parameter "tag"
    .parameter "device"
    .parameter "aPortNum"
    .parameter "aPortType"

    .prologue
    .line 269
    if-nez p1, :cond_0

    .line 290
    :goto_0
    return-void

    .line 275
    :cond_0
    packed-switch p3, :pswitch_data_0

    goto :goto_0

    .line 277
    :pswitch_0
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RFCOMM "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Landroid/sec/enterprise/BluetoothUtils;->bluetoothLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 287
    :catch_0
    move-exception v0

    .line 288
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "BluetoothUtils"

    const-string v2, "Exception on bluetoothLogSocket"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 280
    .end local v0           #e:Ljava/lang/Exception;
    :pswitch_1
    :try_start_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SCO "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Landroid/sec/enterprise/BluetoothUtils;->bluetoothLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 283
    :pswitch_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "L2CAP "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Landroid/sec/enterprise/BluetoothUtils;->bluetoothLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 275
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private static convertBluetoothProfile(I)Ljava/lang/String;
    .locals 1
    .parameter "profile"

    .prologue
    .line 376
    packed-switch p0, :pswitch_data_0

    .line 392
    const-string v0, ""

    :goto_0
    return-object v0

    .line 378
    :pswitch_0
    const-string v0, "Profile: A2DP\n"

    goto :goto_0

    .line 380
    :pswitch_1
    const-string v0, "Profile: Headset and Handsfree\n"

    goto :goto_0

    .line 382
    :pswitch_2
    const-string v0, "Profile: HEALTH\n"

    goto :goto_0

    .line 384
    :pswitch_3
    const-string v0, "Profile: INPUT DEVICE\n"

    goto :goto_0

    .line 386
    :pswitch_4
    const-string v0, "Profile: MAP\n"

    goto :goto_0

    .line 388
    :pswitch_5
    const-string v0, "Profile: PAN\n"

    goto :goto_0

    .line 390
    :pswitch_6
    const-string v0, "Profile: PBAP\n"

    goto :goto_0

    .line 376
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_5
        :pswitch_6
        :pswitch_4
    .end packed-switch
.end method

.method public static isBluetoothLogEnabled()Z
    .locals 4

    .prologue
    .line 321
    :try_start_0
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getInstance()Landroid/sec/enterprise/EnterpriseDeviceManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getBluetoothPolicy()Landroid/sec/enterprise/BluetoothPolicy;

    move-result-object v1

    .line 322
    .local v1, service:Landroid/sec/enterprise/BluetoothPolicy;
    invoke-virtual {v1}, Landroid/sec/enterprise/BluetoothPolicy;->isBluetoothLogEnabled()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 325
    :goto_0
    return v2

    .line 323
    :catch_0
    move-exception v0

    .line 324
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "BluetoothUtils"

    const-string v3, "Exception on isBluetoothLogEnabled"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 325
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static isHeadsetAllowedBySecurityPolicy(Landroid/bluetooth/BluetoothDevice;I)Z
    .locals 7
    .parameter "device"
    .parameter "aPortNum"

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 151
    if-nez p0, :cond_1

    .line 193
    :cond_0
    :goto_0
    return v4

    .line 155
    :cond_1
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getInstance()Landroid/sec/enterprise/EnterpriseDeviceManager;

    move-result-object v6

    invoke-virtual {v6}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getBluetoothPolicy()Landroid/sec/enterprise/BluetoothPolicy;

    move-result-object v3

    .line 157
    .local v3, service:Landroid/sec/enterprise/BluetoothPolicy;
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothDevice;->getUuids()[Landroid/os/ParcelUuid;

    move-result-object v2

    .line 160
    .local v2, ids:[Landroid/os/ParcelUuid;
    const/16 v6, 0x80

    invoke-virtual {v3, v6}, Landroid/sec/enterprise/BluetoothPolicy;->isProfileEnabled(I)Z

    move-result v6

    if-nez v6, :cond_2

    .line 161
    const-string v4, "BluetoothUtils"

    const-string v6, "MDM - SPP Profile is disabled"

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v4, v5

    .line 162
    goto :goto_0

    .line 167
    :cond_2
    sget-object v6, Landroid/bluetooth/BluetoothUuid;->HSP:Landroid/os/ParcelUuid;

    invoke-virtual {p0, v6}, Landroid/bluetooth/BluetoothDevice;->getServiceChannel(Landroid/os/ParcelUuid;)I

    move-result v1

    .line 169
    .local v1, hspchannel:I
    sget-object v6, Landroid/bluetooth/BluetoothUuid;->HSP:Landroid/os/ParcelUuid;

    invoke-static {v2, v6}, Landroid/bluetooth/BluetoothUuid;->isUuidPresent([Landroid/os/ParcelUuid;Landroid/os/ParcelUuid;)Z

    move-result v6

    if-nez v6, :cond_3

    sget-object v6, Landroid/bluetooth/BluetoothUuid;->HSP_AG:Landroid/os/ParcelUuid;

    invoke-static {v2, v6}, Landroid/bluetooth/BluetoothUuid;->isUuidPresent([Landroid/os/ParcelUuid;Landroid/os/ParcelUuid;)Z

    move-result v6

    if-eqz v6, :cond_4

    :cond_3
    invoke-virtual {v3, v4}, Landroid/sec/enterprise/BluetoothPolicy;->isProfileEnabled(I)Z

    move-result v6

    if-nez v6, :cond_4

    if-ne v1, p1, :cond_4

    move v4, v5

    .line 173
    goto :goto_0

    .line 178
    :cond_4
    sget-object v6, Landroid/bluetooth/BluetoothUuid;->Handsfree:Landroid/os/ParcelUuid;

    invoke-virtual {p0, v6}, Landroid/bluetooth/BluetoothDevice;->getServiceChannel(Landroid/os/ParcelUuid;)I

    move-result v0

    .line 179
    .local v0, hfpchannel:I
    sget-object v6, Landroid/bluetooth/BluetoothUuid;->Handsfree:Landroid/os/ParcelUuid;

    invoke-static {v2, v6}, Landroid/bluetooth/BluetoothUuid;->isUuidPresent([Landroid/os/ParcelUuid;Landroid/os/ParcelUuid;)Z

    move-result v6

    if-nez v6, :cond_5

    sget-object v6, Landroid/bluetooth/BluetoothUuid;->Handsfree_AG:Landroid/os/ParcelUuid;

    invoke-static {v2, v6}, Landroid/bluetooth/BluetoothUuid;->isUuidPresent([Landroid/os/ParcelUuid;Landroid/os/ParcelUuid;)Z

    move-result v6

    if-eqz v6, :cond_6

    :cond_5
    const/4 v6, 0x2

    invoke-virtual {v3, v6}, Landroid/sec/enterprise/BluetoothPolicy;->isProfileEnabled(I)Z

    move-result v6

    if-nez v6, :cond_6

    if-ne v0, p1, :cond_6

    move v4, v5

    .line 183
    goto :goto_0

    .line 186
    :cond_6
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothDevice;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/sec/enterprise/BluetoothPolicy;->isBluetoothDeviceAllowed(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 187
    const-string v4, "BluetoothUtils"

    const-string v6, "MDM: Remote Device Blocked"

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v4, v5

    .line 188
    goto :goto_0
.end method

.method public static isPairingAllowedbySecurityPolicy(Ljava/lang/String;)Z
    .locals 4
    .parameter "address"

    .prologue
    const/4 v1, 0x0

    .line 198
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getInstance()Landroid/sec/enterprise/EnterpriseDeviceManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getBluetoothPolicy()Landroid/sec/enterprise/BluetoothPolicy;

    move-result-object v0

    .line 200
    .local v0, service:Landroid/sec/enterprise/BluetoothPolicy;
    invoke-virtual {v0}, Landroid/sec/enterprise/BluetoothPolicy;->isPairingEnabled()Z

    move-result v2

    if-nez v2, :cond_0

    .line 201
    const-string v2, "BluetoothUtils"

    const-string v3, "MDM: Pairing Blocked"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    :goto_0
    return v1

    .line 205
    :cond_0
    invoke-virtual {v0, p0}, Landroid/sec/enterprise/BluetoothPolicy;->isBluetoothDeviceAllowed(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 206
    const-string v2, "BluetoothUtils"

    const-string v3, "MDM: Remote Device Blocked"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 210
    :cond_1
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public static isProfileAuthorizedBySecurityPolicy(Landroid/os/ParcelUuid;)Z
    .locals 1
    .parameter "uuid"

    .prologue
    .line 217
    const/4 v0, 0x1

    invoke-static {p0, v0}, Landroid/sec/enterprise/BluetoothUtils;->isProfileAuthorizedBySecurityPolicy(Landroid/os/ParcelUuid;I)Z

    move-result v0

    return v0
.end method

.method public static isProfileAuthorizedBySecurityPolicy(Landroid/os/ParcelUuid;I)Z
    .locals 5
    .parameter "uuid"
    .parameter "portType"

    .prologue
    const/16 v3, 0x80

    const/4 v1, 0x0

    .line 222
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getInstance()Landroid/sec/enterprise/EnterpriseDeviceManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getBluetoothPolicy()Landroid/sec/enterprise/BluetoothPolicy;

    move-result-object v0

    .line 226
    .local v0, service:Landroid/sec/enterprise/BluetoothPolicy;
    const/4 v2, 0x2

    if-ne v2, p1, :cond_0

    invoke-virtual {v0}, Landroid/sec/enterprise/BluetoothPolicy;->isOutgoingCallsAllowed()Z

    move-result v2

    if-nez v2, :cond_0

    .line 227
    const-string v2, "BluetoothUtils"

    const-string v3, "MDM: Outgoing Call is Disabled"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    :goto_0
    return v1

    .line 230
    :cond_0
    invoke-static {p0}, Landroid/bluetooth/BluetoothUuid;->isAudioSource(Landroid/os/ParcelUuid;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-static {p0}, Landroid/bluetooth/BluetoothUuid;->isAdvAudioDist(Landroid/os/ParcelUuid;)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_1
    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/sec/enterprise/BluetoothPolicy;->isProfileEnabled(I)Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_2
    invoke-virtual {v0, v3}, Landroid/sec/enterprise/BluetoothPolicy;->isProfileEnabled(I)Z

    move-result v2

    if-nez v2, :cond_4

    .line 233
    :cond_3
    const-string v2, "BluetoothUtils"

    const-string v3, "MDM: SPP or A2DP profile is disabled"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 236
    :cond_4
    invoke-static {p0}, Landroid/bluetooth/BluetoothUuid;->isAvrcpTarget(Landroid/os/ParcelUuid;)Z

    move-result v2

    if-nez v2, :cond_5

    invoke-static {p0}, Landroid/bluetooth/BluetoothUuid;->isAvrcpController(Landroid/os/ParcelUuid;)Z

    move-result v2

    if-eqz v2, :cond_6

    :cond_5
    const/16 v2, 0x10

    invoke-virtual {v0, v2}, Landroid/sec/enterprise/BluetoothPolicy;->isProfileEnabled(I)Z

    move-result v2

    if-nez v2, :cond_6

    .line 238
    const-string v2, "BluetoothUtils"

    const-string v3, "MDM: AVRCP profile is disabled"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 242
    :cond_6
    sget-object v2, Landroid/bluetooth/BluetoothUuid;->ObexObjectPush:Landroid/os/ParcelUuid;

    invoke-virtual {p0, v2}, Landroid/os/ParcelUuid;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-virtual {v0}, Landroid/sec/enterprise/BluetoothPolicy;->getAllowBluetoothDataTransfer()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-virtual {v0, v3}, Landroid/sec/enterprise/BluetoothPolicy;->isProfileEnabled(I)Z

    move-result v2

    if-nez v2, :cond_8

    .line 245
    :cond_7
    const-string v2, "BluetoothUtils"

    const-string v3, "MDM: OPP profile is disabled"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 249
    :cond_8
    invoke-virtual {p0}, Landroid/os/ParcelUuid;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/sec/enterprise/BluetoothPolicy;->isBluetoothUUIDAllowed(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_9

    .line 250
    const-string v2, "BluetoothUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MDM: profile UUID = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Landroid/os/ParcelUuid;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is disabled"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 254
    :cond_9
    const/4 v1, 0x1

    goto/16 :goto_0
.end method

.method public static isSocketAllowedBySecurityPolicy(Landroid/bluetooth/BluetoothDevice;IILandroid/os/ParcelUuid;)Z
    .locals 8
    .parameter "device"
    .parameter "aPortNum"
    .parameter "aPortType"
    .parameter "uuid"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 81
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getInstance()Landroid/sec/enterprise/EnterpriseDeviceManager;

    move-result-object v6

    invoke-virtual {v6}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getBluetoothPolicy()Landroid/sec/enterprise/BluetoothPolicy;

    move-result-object v3

    .line 83
    .local v3, service:Landroid/sec/enterprise/BluetoothPolicy;
    if-ne v5, p2, :cond_1

    invoke-virtual {v3}, Landroid/sec/enterprise/BluetoothPolicy;->getAllowBluetoothDataTransfer()Z

    move-result v6

    if-eqz v6, :cond_0

    const/16 v6, 0x80

    invoke-virtual {v3, v6}, Landroid/sec/enterprise/BluetoothPolicy;->isProfileEnabled(I)Z

    move-result v6

    if-nez v6, :cond_1

    .line 86
    :cond_0
    const-string v5, "BluetoothUtils"

    const-string/jumbo v6, "isSocketAllowedBySecurityPolicy : device requesting for spp, block it"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    :goto_0
    return v4

    .line 90
    :cond_1
    const/4 v6, 0x2

    if-ne v6, p2, :cond_2

    invoke-virtual {v3}, Landroid/sec/enterprise/BluetoothPolicy;->isOutgoingCallsAllowed()Z

    move-result v6

    if-nez v6, :cond_2

    .line 91
    const-string v5, "BluetoothUtils"

    const-string/jumbo v6, "isSocketAllowedBySecurityPolicy : device requesting for SCO, block it"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 95
    :cond_2
    if-eqz p3, :cond_3

    invoke-virtual {p3}, Landroid/os/ParcelUuid;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/sec/enterprise/BluetoothPolicy;->isBluetoothUUIDAllowed(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 96
    const-string v5, "BluetoothUtils"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "MDM: profile UUID = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p3}, Landroid/os/ParcelUuid;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " is disabled"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 100
    :cond_3
    if-eqz p0, :cond_4

    if-gez p1, :cond_5

    .line 101
    :cond_4
    const-string v4, "BluetoothUtils"

    const-string/jumbo v6, "isSocketAllowedBySecurityPolicy start : device null"

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v4, v5

    .line 102
    goto :goto_0

    .line 105
    :cond_5
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothDevice;->getUuids()[Landroid/os/ParcelUuid;

    move-result-object v1

    .line 106
    .local v1, ids:[Landroid/os/ParcelUuid;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    array-length v6, v1

    if-ge v0, v6, :cond_7

    .line 107
    aget-object v6, v1, v0

    invoke-virtual {p0, v6}, Landroid/bluetooth/BluetoothDevice;->getServiceChannel(Landroid/os/ParcelUuid;)I

    move-result v2

    .line 108
    .local v2, lPortNum:I
    if-ne v2, p1, :cond_6

    aget-object v6, v1, v0

    invoke-virtual {v6}, Landroid/os/ParcelUuid;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/sec/enterprise/BluetoothPolicy;->isBluetoothUUIDAllowed(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_6

    .line 109
    const-string v5, "BluetoothUtils"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "MDM: Profile UUID = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget-object v7, v1, v0

    invoke-virtual {v7}, Landroid/os/ParcelUuid;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " Blocked"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 106
    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .end local v2           #lPortNum:I
    :cond_7
    move v4, v5

    .line 113
    goto/16 :goto_0
.end method

.method public static isSvcRfComPortNumberBlockedBySecurityPolicy(I)Z
    .locals 12
    .parameter "aPortNum"

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 117
    const/4 v4, 0x0

    .line 120
    .local v4, ret:Z
    :try_start_0
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getInstance()Landroid/sec/enterprise/EnterpriseDeviceManager;

    move-result-object v9

    invoke-virtual {v9}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getBluetoothPolicy()Landroid/sec/enterprise/BluetoothPolicy;

    move-result-object v5

    .line 122
    .local v5, service:Landroid/sec/enterprise/BluetoothPolicy;
    const/16 v9, 0x80

    invoke-virtual {v5, v9}, Landroid/sec/enterprise/BluetoothPolicy;->isProfileEnabled(I)Z

    move-result v9

    if-nez v9, :cond_1

    .line 123
    const-string v8, "BluetoothUtils"

    const-string v9, "MDM - SPP Profile is disabled"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v4, v7

    .line 147
    .end local v4           #ret:Z
    .end local v5           #service:Landroid/sec/enterprise/BluetoothPolicy;
    :cond_0
    :goto_0
    return v4

    .line 127
    .restart local v4       #ret:Z
    .restart local v5       #service:Landroid/sec/enterprise/BluetoothPolicy;
    :cond_1
    const/4 v7, 0x2

    new-array v0, v7, [[Ljava/lang/String;

    const/4 v7, 0x0

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    const-string v11, "12"

    aput-object v11, v9, v10

    const/4 v10, 0x1

    const-string v11, "00001105-0000-1000-8000-00805f9b34fb"

    aput-object v11, v9, v10

    aput-object v9, v0, v7

    const/4 v7, 0x1

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    const-string v11, "19"

    aput-object v11, v9, v10

    const/4 v10, 0x1

    const-string v11, "00001130-0000-1000-8000-00805f9b34fb"

    aput-object v11, v9, v10

    aput-object v9, v0, v7

    .line 134
    .local v0, RESERVED_RFCOMM_CHANNELS:[[Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    array-length v7, v0

    if-ge v2, v7, :cond_0

    .line 135
    aget-object v7, v0, v2

    const/4 v9, 0x0

    aget-object v3, v7, v9

    .line 136
    .local v3, port:Ljava/lang/String;
    aget-object v7, v0, v2

    const/4 v9, 0x1

    aget-object v6, v7, v9

    .line 137
    .local v6, uuid:Ljava/lang/String;
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    if-ne v7, p0, :cond_2

    invoke-virtual {v5, v6}, Landroid/sec/enterprise/BluetoothPolicy;->isBluetoothUUIDAllowed(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 139
    const-string v7, "BluetoothUtils"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "MDM: Profile UUID = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " Blocked"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v4, v8

    .line 140
    goto :goto_0

    .line 134
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 143
    .end local v0           #RESERVED_RFCOMM_CHANNELS:[[Ljava/lang/String;
    .end local v2           #i:I
    .end local v3           #port:Ljava/lang/String;
    .end local v5           #service:Landroid/sec/enterprise/BluetoothPolicy;
    .end local v6           #uuid:Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 144
    .local v1, e:Ljava/lang/Exception;
    const-string v7, "BluetoothUtils"

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
