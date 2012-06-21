.class public Lcom/android/internal/telephony/PhoneFactory;
.super Ljava/lang/Object;
.source "PhoneFactory.java"


# static fields
.field static final LOG_TAG:Ljava/lang/String; = "PHONE"

.field static final SOCKET_OPEN_MAX_RETRY:I = 0x3

.field static final SOCKET_OPEN_RETRY_MILLIS:I = 0x7d0

.field static final preferredCdmaSubscription:I = 0x1

.field private static sCommandsInterface:Lcom/android/internal/telephony/CommandsInterface;

.field private static sContext:Landroid/content/Context;

.field private static sIMSInterface:Lcom/android/internal/telephony/CommandsInterface;

.field private static sIMSPhone:Lcom/android/internal/telephony/Phone;

.field private static sLooper:Landroid/os/Looper;

.field private static sMadeDefaults:Z

.field private static sPhoneNotifier:Lcom/android/internal/telephony/PhoneNotifier;

.field private static sProxyPhone:Lcom/android/internal/telephony/Phone;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 50
    sput-object v1, Lcom/android/internal/telephony/PhoneFactory;->sProxyPhone:Lcom/android/internal/telephony/Phone;

    .line 51
    sput-object v1, Lcom/android/internal/telephony/PhoneFactory;->sCommandsInterface:Lcom/android/internal/telephony/CommandsInterface;

    .line 53
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/internal/telephony/PhoneFactory;->sMadeDefaults:Z

    .line 61
    sput-object v1, Lcom/android/internal/telephony/PhoneFactory;->sIMSPhone:Lcom/android/internal/telephony/Phone;

    .line 62
    sput-object v1, Lcom/android/internal/telephony/PhoneFactory;->sIMSInterface:Lcom/android/internal/telephony/CommandsInterface;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 43
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getCdmaPhone()Lcom/android/internal/telephony/Phone;
    .locals 5

    .prologue
    .line 291
    sget-object v2, Lcom/android/internal/telephony/PhoneProxy;->lockForRadioTechnologyChange:Ljava/lang/Object;

    monitor-enter v2

    .line 292
    :try_start_0
    invoke-static {}, Lcom/android/internal/telephony/BaseCommands;->getLteOnCdmaModeStatic()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 300
    new-instance v0, Lcom/android/internal/telephony/cdma/CDMAPhone;

    sget-object v1, Lcom/android/internal/telephony/PhoneFactory;->sContext:Landroid/content/Context;

    sget-object v3, Lcom/android/internal/telephony/PhoneFactory;->sCommandsInterface:Lcom/android/internal/telephony/CommandsInterface;

    sget-object v4, Lcom/android/internal/telephony/PhoneFactory;->sPhoneNotifier:Lcom/android/internal/telephony/PhoneNotifier;

    invoke-direct {v0, v1, v3, v4}, Lcom/android/internal/telephony/cdma/CDMAPhone;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/PhoneNotifier;)V

    .line 304
    .local v0, phone:Lcom/android/internal/telephony/Phone;
    :goto_0
    monitor-exit v2

    .line 305
    return-object v0

    .line 294
    .end local v0           #phone:Lcom/android/internal/telephony/Phone;
    :pswitch_0
    new-instance v0, Lcom/android/internal/telephony/cdma/CDMALTEPhone;

    sget-object v1, Lcom/android/internal/telephony/PhoneFactory;->sContext:Landroid/content/Context;

    sget-object v3, Lcom/android/internal/telephony/PhoneFactory;->sCommandsInterface:Lcom/android/internal/telephony/CommandsInterface;

    sget-object v4, Lcom/android/internal/telephony/PhoneFactory;->sPhoneNotifier:Lcom/android/internal/telephony/PhoneNotifier;

    invoke-direct {v0, v1, v3, v4}, Lcom/android/internal/telephony/cdma/CDMALTEPhone;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/PhoneNotifier;)V

    .line 295
    .restart local v0       #phone:Lcom/android/internal/telephony/Phone;
    goto :goto_0

    .line 304
    .end local v0           #phone:Lcom/android/internal/telephony/Phone;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 292
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public static getDefaultPhone()Lcom/android/internal/telephony/Phone;
    .locals 2

    .prologue
    .line 257
    sget-object v0, Lcom/android/internal/telephony/PhoneFactory;->sLooper:Landroid/os/Looper;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 258
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "PhoneFactory.getDefaultPhone must be called from Looper thread"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 262
    :cond_0
    sget-boolean v0, Lcom/android/internal/telephony/PhoneFactory;->sMadeDefaults:Z

    if-nez v0, :cond_1

    .line 263
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Default phones haven\'t been made yet!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 265
    :cond_1
    sget-object v0, Lcom/android/internal/telephony/PhoneFactory;->sProxyPhone:Lcom/android/internal/telephony/Phone;

    return-object v0
.end method

.method public static getGsmPhone()Lcom/android/internal/telephony/Phone;
    .locals 5

    .prologue
    .line 309
    sget-object v2, Lcom/android/internal/telephony/PhoneProxy;->lockForRadioTechnologyChange:Ljava/lang/Object;

    monitor-enter v2

    .line 310
    :try_start_0
    new-instance v0, Lcom/android/internal/telephony/gsm/GSMPhone;

    sget-object v1, Lcom/android/internal/telephony/PhoneFactory;->sContext:Landroid/content/Context;

    sget-object v3, Lcom/android/internal/telephony/PhoneFactory;->sCommandsInterface:Lcom/android/internal/telephony/CommandsInterface;

    sget-object v4, Lcom/android/internal/telephony/PhoneFactory;->sPhoneNotifier:Lcom/android/internal/telephony/PhoneNotifier;

    invoke-direct {v0, v1, v3, v4}, Lcom/android/internal/telephony/gsm/GSMPhone;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/PhoneNotifier;)V

    .line 311
    .local v0, phone:Lcom/android/internal/telephony/Phone;
    monitor-exit v2

    return-object v0

    .line 312
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static getIMSPhone()Lcom/android/internal/telephony/Phone;
    .locals 2

    .prologue
    .line 269
    const-string v0, "PHONE"

    const-string v1, "getIMSPhone "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    sget-object v0, Lcom/android/internal/telephony/PhoneFactory;->sIMSPhone:Lcom/android/internal/telephony/Phone;

    return-object v0
.end method

.method public static getPhoneType(I)I
    .locals 3
    .parameter "networkMode"

    .prologue
    const/4 v0, 0x2

    const/4 v1, 0x1

    .line 227
    packed-switch p0, :pswitch_data_0

    :pswitch_0
    move v0, v1

    .line 252
    :cond_0
    :goto_0
    :pswitch_1
    return v0

    :pswitch_2
    move v0, v1

    .line 237
    goto :goto_0

    .line 246
    :pswitch_3
    invoke-static {}, Lcom/android/internal/telephony/BaseCommands;->getLteOnCdmaModeStatic()I

    move-result v2

    if-eq v2, v1, :cond_0

    move v0, v1

    .line 249
    goto :goto_0

    .line 227
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method public static getSecondaryPhone()Lcom/android/internal/telephony/Phone;
    .locals 2

    .prologue
    .line 277
    sget-object v0, Lcom/android/internal/telephony/PhoneFactory;->sLooper:Landroid/os/Looper;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 278
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "PhoneFactory.getDefaultPhone must be called from Looper thread"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 282
    :cond_0
    sget-boolean v0, Lcom/android/internal/telephony/PhoneFactory;->sMadeDefaults:Z

    if-nez v0, :cond_1

    .line 283
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Default phones haven\'t been made yet!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 285
    :cond_1
    sget-object v0, Lcom/android/internal/telephony/PhoneFactory;->sProxyPhone:Lcom/android/internal/telephony/Phone;

    return-object v0
.end method

.method public static makeDefaultPhone(Landroid/content/Context;)V
    .locals 14
    .parameter "context"

    .prologue
    const/4 v13, 0x1

    .line 76
    const-class v10, Lcom/android/internal/telephony/Phone;

    monitor-enter v10

    .line 77
    :try_start_0
    sget-boolean v9, Lcom/android/internal/telephony/PhoneFactory;->sMadeDefaults:Z

    if-nez v9, :cond_3

    .line 78
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v9

    sput-object v9, Lcom/android/internal/telephony/PhoneFactory;->sLooper:Landroid/os/Looper;

    .line 79
    sput-object p0, Lcom/android/internal/telephony/PhoneFactory;->sContext:Landroid/content/Context;

    .line 81
    sget-object v9, Lcom/android/internal/telephony/PhoneFactory;->sLooper:Landroid/os/Looper;

    if-nez v9, :cond_0

    .line 82
    new-instance v9, Ljava/lang/RuntimeException;

    const-string v11, "PhoneFactory.makeDefaultPhone must be called from Looper thread"

    invoke-direct {v9, v11}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 216
    :catchall_0
    move-exception v9

    monitor-exit v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v9

    .line 86
    :cond_0
    const/4 v8, 0x0

    .line 88
    .local v8, retryCount:I
    :goto_0
    const/4 v2, 0x0

    .line 89
    .local v2, hasException:Z
    add-int/lit8 v8, v8, 0x1

    .line 94
    :try_start_1
    new-instance v9, Landroid/net/LocalServerSocket;

    const-string v11, "com.android.internal.telephony"

    invoke-direct {v9, v11}, Landroid/net/LocalServerSocket;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 99
    :goto_1
    if-nez v2, :cond_4

    .line 111
    :try_start_2
    new-instance v9, Lcom/android/internal/telephony/DefaultPhoneNotifier;

    invoke-direct {v9}, Lcom/android/internal/telephony/DefaultPhoneNotifier;-><init>()V

    sput-object v9, Lcom/android/internal/telephony/PhoneFactory;->sPhoneNotifier:Lcom/android/internal/telephony/PhoneNotifier;

    .line 114
    const/4 v7, 0x0

    .line 115
    .local v7, preferredNetworkMode:I
    invoke-static {}, Lcom/android/internal/telephony/BaseCommands;->getLteOnCdmaModeStatic()I

    move-result v9

    if-ne v9, v13, :cond_1

    .line 116
    const/4 v7, 0x7

    .line 118
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string/jumbo v11, "preferred_network_mode"

    invoke-static {v9, v11, v7}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    .line 120
    .local v5, networkMode:I
    const-string v9, "PHONE"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Network Mode set to "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    invoke-static {}, Lcom/android/internal/telephony/BaseCommands;->getLteOnCdmaModeStatic()I

    move-result v3

    .line 128
    .local v3, lteOnCdma:I
    packed-switch v3, :pswitch_data_0

    .line 140
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string/jumbo v11, "preferred_cdma_subscription"

    const/4 v12, 0x1

    invoke-static {v9, v11, v12}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 143
    .local v0, cdmaSubscription:I
    const-string v9, "PHONE"

    const-string/jumbo v11, "lteOnCdma not set, using PREFERRED_CDMA_SUBSCRIPTION"

    invoke-static {v9, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    :goto_2
    const-string v9, "PHONE"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Cdma Subscription set to "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    new-instance v9, Lcom/android/internal/telephony/RIL;

    invoke-direct {v9, p0, v5, v0}, Lcom/android/internal/telephony/RIL;-><init>(Landroid/content/Context;II)V

    sput-object v9, Lcom/android/internal/telephony/PhoneFactory;->sCommandsInterface:Lcom/android/internal/telephony/CommandsInterface;

    .line 152
    const/4 v4, 0x0

    .line 171
    .local v4, mPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {v5}, Lcom/android/internal/telephony/PhoneFactory;->getPhoneType(I)I

    move-result v6

    .line 172
    .local v6, phoneType:I
    if-ne v6, v13, :cond_6

    .line 173
    const-string v9, "PHONE"

    const-string v11, "Creating GSMPhone"

    invoke-static {v9, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    new-instance v4, Lcom/android/internal/telephony/gsm/GSMPhone;

    .end local v4           #mPhone:Lcom/android/internal/telephony/Phone;
    sget-object v9, Lcom/android/internal/telephony/PhoneFactory;->sCommandsInterface:Lcom/android/internal/telephony/CommandsInterface;

    sget-object v11, Lcom/android/internal/telephony/PhoneFactory;->sPhoneNotifier:Lcom/android/internal/telephony/PhoneNotifier;

    invoke-direct {v4, p0, v9, v11}, Lcom/android/internal/telephony/gsm/GSMPhone;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/PhoneNotifier;)V

    .line 175
    .restart local v4       #mPhone:Lcom/android/internal/telephony/Phone;
    new-instance v9, Lcom/android/internal/telephony/PhoneProxy;

    invoke-direct {v9, v4}, Lcom/android/internal/telephony/PhoneProxy;-><init>(Lcom/android/internal/telephony/Phone;)V

    sput-object v9, Lcom/android/internal/telephony/PhoneFactory;->sProxyPhone:Lcom/android/internal/telephony/Phone;

    .line 204
    :cond_2
    :goto_3
    const/4 v9, 0x1

    sput-boolean v9, Lcom/android/internal/telephony/PhoneFactory;->sMadeDefaults:Z

    .line 216
    .end local v0           #cdmaSubscription:I
    .end local v2           #hasException:Z
    .end local v3           #lteOnCdma:I
    .end local v4           #mPhone:Lcom/android/internal/telephony/Phone;
    .end local v5           #networkMode:I
    .end local v6           #phoneType:I
    .end local v7           #preferredNetworkMode:I
    .end local v8           #retryCount:I
    :cond_3
    monitor-exit v10

    .line 217
    return-void

    .line 95
    .restart local v2       #hasException:Z
    .restart local v8       #retryCount:I
    :catch_0
    move-exception v1

    .line 96
    .local v1, ex:Ljava/io/IOException;
    const/4 v2, 0x1

    goto/16 :goto_1

    .line 101
    .end local v1           #ex:Ljava/io/IOException;
    :cond_4
    const/4 v9, 0x3

    if-le v8, v9, :cond_5

    .line 102
    new-instance v9, Ljava/lang/RuntimeException;

    const-string v11, "PhoneFactory probably already running"

    invoke-direct {v9, v11}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v9
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 105
    :cond_5
    const-wide/16 v11, 0x7d0

    :try_start_3
    invoke-static {v11, v12}, Ljava/lang/Thread;->sleep(J)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_0

    .line 106
    :catch_1
    move-exception v9

    goto/16 :goto_0

    .line 130
    .restart local v3       #lteOnCdma:I
    .restart local v5       #networkMode:I
    .restart local v7       #preferredNetworkMode:I
    :pswitch_0
    const/4 v0, 0x1

    .line 131
    .restart local v0       #cdmaSubscription:I
    :try_start_4
    const-string v9, "PHONE"

    const-string/jumbo v11, "lteOnCdma is 0 use SUBSCRIPTION_FROM_NV"

    invoke-static {v9, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 134
    .end local v0           #cdmaSubscription:I
    :pswitch_1
    const/4 v0, 0x0

    .line 135
    .restart local v0       #cdmaSubscription:I
    const-string v9, "PHONE"

    const-string/jumbo v11, "lteOnCdma is 1 use SUBSCRIPTION_FROM_RUIM"

    invoke-static {v9, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 176
    .restart local v4       #mPhone:Lcom/android/internal/telephony/Phone;
    .restart local v6       #phoneType:I
    :cond_6
    const/4 v9, 0x2

    if-ne v6, v9, :cond_2

    .line 177
    invoke-static {}, Lcom/android/internal/telephony/BaseCommands;->getLteOnCdmaModeStatic()I

    move-result v9

    packed-switch v9, :pswitch_data_1

    .line 192
    const-string v9, "PHONE"

    const-string v11, "Creating CDMAPhone"

    invoke-static {v9, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    new-instance v4, Lcom/android/internal/telephony/cdma/CDMAPhone;

    .end local v4           #mPhone:Lcom/android/internal/telephony/Phone;
    sget-object v9, Lcom/android/internal/telephony/PhoneFactory;->sCommandsInterface:Lcom/android/internal/telephony/CommandsInterface;

    sget-object v11, Lcom/android/internal/telephony/PhoneFactory;->sPhoneNotifier:Lcom/android/internal/telephony/PhoneNotifier;

    invoke-direct {v4, p0, v9, v11}, Lcom/android/internal/telephony/cdma/CDMAPhone;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/PhoneNotifier;)V

    .line 194
    .restart local v4       #mPhone:Lcom/android/internal/telephony/Phone;
    new-instance v9, Lcom/android/internal/telephony/PhoneProxy;

    invoke-direct {v9, v4}, Lcom/android/internal/telephony/PhoneProxy;-><init>(Lcom/android/internal/telephony/Phone;)V

    sput-object v9, Lcom/android/internal/telephony/PhoneFactory;->sProxyPhone:Lcom/android/internal/telephony/Phone;

    goto :goto_3

    .line 179
    :pswitch_2
    const-string v9, "PHONE"

    const-string v11, "Creating CDMALTEPhone"

    invoke-static {v9, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    new-instance v4, Lcom/android/internal/telephony/cdma/CDMALTEPhone;

    .end local v4           #mPhone:Lcom/android/internal/telephony/Phone;
    sget-object v9, Lcom/android/internal/telephony/PhoneFactory;->sCommandsInterface:Lcom/android/internal/telephony/CommandsInterface;

    sget-object v11, Lcom/android/internal/telephony/PhoneFactory;->sPhoneNotifier:Lcom/android/internal/telephony/PhoneNotifier;

    invoke-direct {v4, p0, v9, v11}, Lcom/android/internal/telephony/cdma/CDMALTEPhone;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/PhoneNotifier;)V

    .line 181
    .restart local v4       #mPhone:Lcom/android/internal/telephony/Phone;
    new-instance v9, Lcom/android/internal/telephony/PhoneProxy;

    invoke-direct {v9, v4}, Lcom/android/internal/telephony/PhoneProxy;-><init>(Lcom/android/internal/telephony/Phone;)V

    sput-object v9, Lcom/android/internal/telephony/PhoneFactory;->sProxyPhone:Lcom/android/internal/telephony/Phone;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_3

    .line 128
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 177
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2
    .end packed-switch
.end method

.method public static makeDefaultPhones(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 68
    invoke-static {p0}, Lcom/android/internal/telephony/PhoneFactory;->makeDefaultPhone(Landroid/content/Context;)V

    .line 69
    return-void
.end method

.method public static makeSipPhone(Ljava/lang/String;)Lcom/android/internal/telephony/sip/SipPhone;
    .locals 2
    .parameter "sipUri"

    .prologue
    .line 321
    sget-object v0, Lcom/android/internal/telephony/PhoneFactory;->sContext:Landroid/content/Context;

    sget-object v1, Lcom/android/internal/telephony/PhoneFactory;->sPhoneNotifier:Lcom/android/internal/telephony/PhoneNotifier;

    invoke-static {p0, v0, v1}, Lcom/android/internal/telephony/sip/SipPhoneFactory;->makePhone(Ljava/lang/String;Landroid/content/Context;Lcom/android/internal/telephony/PhoneNotifier;)Lcom/android/internal/telephony/sip/SipPhone;

    move-result-object v0

    return-object v0
.end method
