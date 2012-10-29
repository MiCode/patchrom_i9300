.class public Lcom/android/OriginalSettings/nearby/AccessDeviceList;
.super Ljava/lang/Object;
.source "AccessDeviceList.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/OriginalSettings/nearby/AccessDeviceList$DeviceInfo;
    }
.end annotation


# instance fields
.field private mAcceptList:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/OriginalSettings/nearby/AccessDeviceList$DeviceInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mRejectList:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/OriginalSettings/nearby/AccessDeviceList$DeviceInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 92
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 77
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/OriginalSettings/nearby/AccessDeviceList;->mContext:Landroid/content/Context;

    .line 88
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/OriginalSettings/nearby/AccessDeviceList;->mAcceptList:Ljava/util/HashMap;

    .line 89
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/OriginalSettings/nearby/AccessDeviceList;->mRejectList:Ljava/util/HashMap;

    .line 93
    iput-object p1, p0, Lcom/android/OriginalSettings/nearby/AccessDeviceList;->mContext:Landroid/content/Context;

    .line 94
    return-void
.end method

.method private static broadcastRefreshToService(ZLjava/lang/String;Landroid/content/Context;)V
    .locals 2
    .parameter "accepted"
    .parameter "values"
    .parameter "context"

    .prologue
    .line 208
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sec.android.nearby.mediaserver.DELETE_ITEMS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 209
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "KEY"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 210
    const-string v1, "TYPE"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 211
    invoke-virtual {p2, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 212
    return-void
.end method

.method private loadDeviceList(Ljava/util/HashMap;Ljava/lang/String;)V
    .locals 16
    .parameter
    .parameter "prefName"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/OriginalSettings/nearby/AccessDeviceList$DeviceInfo;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 216
    .local p1, deviceList:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/android/OriginalSettings/nearby/AccessDeviceList$DeviceInfo;>;"
    const-string v2, "AllshareSetting"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "AccessDeviceList: LoadDeviceList "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p2

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v2, v14}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Ljava/util/HashMap;->clear()V

    .line 222
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/OriginalSettings/nearby/AccessDeviceList;->mContext:Landroid/content/Context;

    const-string v14, "com.sec.android.nearby.mediaserver"

    const/4 v15, 0x0

    invoke-virtual {v2, v14, v15}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v12

    .line 224
    .local v12, other:Landroid/content/Context;
    const/4 v2, 0x5

    move-object/from16 v0, p2

    invoke-virtual {v12, v0, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v13

    .line 225
    .local v13, pref_device:Landroid/content/SharedPreferences;
    const-string v2, "list_num"

    const/4 v14, 0x0

    invoke-interface {v13, v2, v14}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v7

    .line 227
    .local v7, count:I
    if-eqz v7, :cond_7

    .line 229
    const-string v8, ""

    .line 230
    .local v8, deviceTemp:Ljava/lang/String;
    const/4 v11, 0x0

    .local v11, n:I
    :goto_0
    if-ge v11, v7, :cond_7

    .line 232
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "device_"

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v14, ""

    invoke-interface {v13, v2, v14}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 233
    const-string v2, ""

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 235
    const-string v3, ""

    .local v3, mac:Ljava/lang/String;
    const-string v5, ""

    .local v5, name:Ljava/lang/String;
    const-string v4, ""

    .local v4, ip:Ljava/lang/String;
    const-string v6, ""

    .line 236
    .local v6, port:Ljava/lang/String;
    const/4 v10, 0x0

    .line 238
    .local v10, index:I
    const-string v2, "*--*"

    invoke-virtual {v8, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 241
    const-string v2, "*--*"

    invoke-virtual {v8, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v10

    .line 242
    if-lez v10, :cond_4

    .line 244
    const/4 v2, 0x0

    invoke-virtual {v8, v2, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 245
    const-string v2, "*--*"

    invoke-virtual {v8, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    const-string v14, "*--*"

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v14

    add-int/2addr v2, v14

    invoke-virtual {v8, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    .line 254
    :cond_0
    :goto_1
    if-eqz v8, :cond_1

    const-string v2, "*--*"

    invoke-virtual {v8, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 257
    const-string v2, "*--*"

    invoke-virtual {v8, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v10

    .line 258
    if-lez v10, :cond_5

    .line 260
    const/4 v2, 0x0

    invoke-virtual {v8, v2, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 261
    const-string v2, "*--*"

    invoke-virtual {v8, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    const-string v14, "*--*"

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v14

    add-int/2addr v2, v14

    invoke-virtual {v8, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    .line 270
    :cond_1
    :goto_2
    if-eqz v8, :cond_2

    const-string v2, "*--*"

    invoke-virtual {v8, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 273
    const-string v2, "*--*"

    invoke-virtual {v8, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v10

    .line 274
    if-lez v10, :cond_6

    .line 276
    const/4 v2, 0x0

    invoke-virtual {v8, v2, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 277
    const-string v2, "*--*"

    invoke-virtual {v8, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    const-string v14, "*--*"

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v14

    add-int/2addr v2, v14

    invoke-virtual {v8, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    .line 286
    :cond_2
    :goto_3
    move-object v6, v8

    .line 289
    const-string v2, "AllshareSetting"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "AccessDeviceList: LoadDevice"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v2, v14}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 291
    new-instance v1, Lcom/android/OriginalSettings/nearby/AccessDeviceList$DeviceInfo;

    move-object/from16 v2, p0

    invoke-direct/range {v1 .. v6}, Lcom/android/OriginalSettings/nearby/AccessDeviceList$DeviceInfo;-><init>(Lcom/android/OriginalSettings/nearby/AccessDeviceList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 292
    .local v1, deviceInfo:Lcom/android/OriginalSettings/nearby/AccessDeviceList$DeviceInfo;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/android/OriginalSettings/nearby/AccessDeviceList$DeviceInfo;->getMac()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Lcom/android/OriginalSettings/nearby/AccessDeviceList$DeviceInfo;->getName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 230
    .end local v1           #deviceInfo:Lcom/android/OriginalSettings/nearby/AccessDeviceList$DeviceInfo;
    .end local v3           #mac:Ljava/lang/String;
    .end local v4           #ip:Ljava/lang/String;
    .end local v5           #name:Ljava/lang/String;
    .end local v6           #port:Ljava/lang/String;
    .end local v10           #index:I
    :cond_3
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_0

    .line 249
    .restart local v3       #mac:Ljava/lang/String;
    .restart local v4       #ip:Ljava/lang/String;
    .restart local v5       #name:Ljava/lang/String;
    .restart local v6       #port:Ljava/lang/String;
    .restart local v10       #index:I
    :cond_4
    const-string v2, "AllshareSetting"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "AccessDeviceList: no mac info:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v2, v14}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    const-string v2, "*--*"

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v8, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_1

    .line 265
    :cond_5
    const-string v2, "AllshareSetting"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "AccessDeviceList: no name info:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v2, v14}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    const-string v2, "*--*"

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v8, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_2

    .line 281
    :cond_6
    const-string v2, "AllshareSetting"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "AccessDeviceList: no userAgent info:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v2, v14}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    const-string v2, "*--*"

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v8, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v8

    goto/16 :goto_3

    .line 297
    .end local v3           #mac:Ljava/lang/String;
    .end local v4           #ip:Ljava/lang/String;
    .end local v5           #name:Ljava/lang/String;
    .end local v6           #port:Ljava/lang/String;
    .end local v7           #count:I
    .end local v8           #deviceTemp:Ljava/lang/String;
    .end local v10           #index:I
    .end local v11           #n:I
    .end local v12           #other:Landroid/content/Context;
    .end local v13           #pref_device:Landroid/content/SharedPreferences;
    :catch_0
    move-exception v9

    .line 299
    .local v9, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v2, "AllshareSetting"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "AccessDeviceList: loadDeviceList: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v2, v14}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 300
    invoke-virtual {v9}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 302
    .end local v9           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_7
    return-void
.end method

.method public static removeAcceptList(Ljava/util/HashSet;Landroid/content/Context;)V
    .locals 4
    .parameter
    .parameter "context"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    .prologue
    .line 174
    .local p0, value:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-virtual {p0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 175
    .local v0, keys:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2}, Ljava/lang/String;-><init>()V

    .line 177
    .local v2, values:Ljava/lang/String;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 179
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 180
    .local v1, sb:Ljava/lang/StringBuffer;
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 181
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 182
    const-string v3, "*--*"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 184
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    .line 185
    goto :goto_0

    .line 186
    .end local v1           #sb:Ljava/lang/StringBuffer;
    :cond_0
    const/4 v3, 0x1

    invoke-static {v3, v2, p1}, Lcom/android/OriginalSettings/nearby/AccessDeviceList;->broadcastRefreshToService(ZLjava/lang/String;Landroid/content/Context;)V

    .line 187
    return-void
.end method

.method public static removeRejectList(Ljava/util/HashSet;Landroid/content/Context;)V
    .locals 4
    .parameter
    .parameter "context"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    .prologue
    .line 191
    .local p0, value:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-virtual {p0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 192
    .local v0, keys:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2}, Ljava/lang/String;-><init>()V

    .line 194
    .local v2, values:Ljava/lang/String;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 196
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 197
    .local v1, sb:Ljava/lang/StringBuffer;
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 198
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 199
    const-string v3, "*--*"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 201
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    .line 202
    goto :goto_0

    .line 203
    .end local v1           #sb:Ljava/lang/StringBuffer;
    :cond_0
    const/4 v3, 0x0

    invoke-static {v3, v2, p1}, Lcom/android/OriginalSettings/nearby/AccessDeviceList;->broadcastRefreshToService(ZLjava/lang/String;Landroid/content/Context;)V

    .line 204
    return-void
.end method


# virtual methods
.method public getAcceptEntries()[Ljava/lang/CharSequence;
    .locals 5

    .prologue
    .line 114
    iget-object v4, p0, Lcom/android/OriginalSettings/nearby/AccessDeviceList;->mAcceptList:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 115
    .local v3, keys:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/OriginalSettings/nearby/AccessDeviceList$DeviceInfo;>;>;"
    iget-object v4, p0, Lcom/android/OriginalSettings/nearby/AccessDeviceList;->mAcceptList:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->size()I

    move-result v4

    new-array v1, v4, [Ljava/lang/CharSequence;

    .line 117
    .local v1, entry:[Ljava/lang/CharSequence;
    const/4 v0, 0x0

    .line 118
    .local v0, count:I
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 120
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/OriginalSettings/nearby/AccessDeviceList$DeviceInfo;

    .line 121
    .local v2, info:Lcom/android/OriginalSettings/nearby/AccessDeviceList$DeviceInfo;
    invoke-virtual {v2}, Lcom/android/OriginalSettings/nearby/AccessDeviceList$DeviceInfo;->getName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v0

    .line 122
    add-int/lit8 v0, v0, 0x1

    .line 123
    goto :goto_0

    .line 124
    .end local v2           #info:Lcom/android/OriginalSettings/nearby/AccessDeviceList$DeviceInfo;
    :cond_0
    return-object v1
.end method

.method public getAcceptEntryValues()[Ljava/lang/CharSequence;
    .locals 6

    .prologue
    .line 129
    iget-object v4, p0, Lcom/android/OriginalSettings/nearby/AccessDeviceList;->mAcceptList:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 130
    .local v3, keys:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/OriginalSettings/nearby/AccessDeviceList$DeviceInfo;>;>;"
    iget-object v4, p0, Lcom/android/OriginalSettings/nearby/AccessDeviceList;->mAcceptList:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->size()I

    move-result v4

    new-array v1, v4, [Ljava/lang/CharSequence;

    .line 132
    .local v1, entry:[Ljava/lang/CharSequence;
    const/4 v0, 0x0

    .line 133
    .local v0, count:I
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 135
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/OriginalSettings/nearby/AccessDeviceList$DeviceInfo;

    .line 136
    .local v2, info:Lcom/android/OriginalSettings/nearby/AccessDeviceList$DeviceInfo;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Lcom/android/OriginalSettings/nearby/AccessDeviceList$DeviceInfo;->getMac()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Lcom/android/OriginalSettings/nearby/AccessDeviceList$DeviceInfo;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v0

    .line 137
    add-int/lit8 v0, v0, 0x1

    .line 138
    goto :goto_0

    .line 139
    .end local v2           #info:Lcom/android/OriginalSettings/nearby/AccessDeviceList$DeviceInfo;
    :cond_0
    return-object v1
.end method

.method public getAcceptSize()I
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/android/OriginalSettings/nearby/AccessDeviceList;->mAcceptList:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    return v0
.end method

.method public getRejectEntries()[Ljava/lang/CharSequence;
    .locals 5

    .prologue
    .line 144
    iget-object v4, p0, Lcom/android/OriginalSettings/nearby/AccessDeviceList;->mRejectList:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 145
    .local v3, keys:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/OriginalSettings/nearby/AccessDeviceList$DeviceInfo;>;>;"
    iget-object v4, p0, Lcom/android/OriginalSettings/nearby/AccessDeviceList;->mRejectList:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->size()I

    move-result v4

    new-array v1, v4, [Ljava/lang/CharSequence;

    .line 147
    .local v1, entry:[Ljava/lang/CharSequence;
    const/4 v0, 0x0

    .line 148
    .local v0, count:I
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 150
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/OriginalSettings/nearby/AccessDeviceList$DeviceInfo;

    .line 151
    .local v2, info:Lcom/android/OriginalSettings/nearby/AccessDeviceList$DeviceInfo;
    invoke-virtual {v2}, Lcom/android/OriginalSettings/nearby/AccessDeviceList$DeviceInfo;->getName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v0

    .line 152
    add-int/lit8 v0, v0, 0x1

    .line 153
    goto :goto_0

    .line 154
    .end local v2           #info:Lcom/android/OriginalSettings/nearby/AccessDeviceList$DeviceInfo;
    :cond_0
    return-object v1
.end method

.method public getRejectEntryValues()[Ljava/lang/CharSequence;
    .locals 6

    .prologue
    .line 159
    iget-object v4, p0, Lcom/android/OriginalSettings/nearby/AccessDeviceList;->mRejectList:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 160
    .local v3, keys:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/OriginalSettings/nearby/AccessDeviceList$DeviceInfo;>;>;"
    iget-object v4, p0, Lcom/android/OriginalSettings/nearby/AccessDeviceList;->mRejectList:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->size()I

    move-result v4

    new-array v1, v4, [Ljava/lang/CharSequence;

    .line 162
    .local v1, entry:[Ljava/lang/CharSequence;
    const/4 v0, 0x0

    .line 163
    .local v0, count:I
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 165
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/OriginalSettings/nearby/AccessDeviceList$DeviceInfo;

    .line 166
    .local v2, info:Lcom/android/OriginalSettings/nearby/AccessDeviceList$DeviceInfo;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Lcom/android/OriginalSettings/nearby/AccessDeviceList$DeviceInfo;->getMac()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Lcom/android/OriginalSettings/nearby/AccessDeviceList$DeviceInfo;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v0

    .line 167
    add-int/lit8 v0, v0, 0x1

    .line 168
    goto :goto_0

    .line 169
    .end local v2           #info:Lcom/android/OriginalSettings/nearby/AccessDeviceList$DeviceInfo;
    :cond_0
    return-object v1
.end method

.method public getRejectSize()I
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/android/OriginalSettings/nearby/AccessDeviceList;->mRejectList:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    return v0
.end method

.method public loadPreference()V
    .locals 2

    .prologue
    .line 108
    iget-object v0, p0, Lcom/android/OriginalSettings/nearby/AccessDeviceList;->mAcceptList:Ljava/util/HashMap;

    const-string v1, "AllshareAcceptList"

    invoke-direct {p0, v0, v1}, Lcom/android/OriginalSettings/nearby/AccessDeviceList;->loadDeviceList(Ljava/util/HashMap;Ljava/lang/String;)V

    .line 109
    iget-object v0, p0, Lcom/android/OriginalSettings/nearby/AccessDeviceList;->mRejectList:Ljava/util/HashMap;

    const-string v1, "AllshareRejectList"

    invoke-direct {p0, v0, v1}, Lcom/android/OriginalSettings/nearby/AccessDeviceList;->loadDeviceList(Ljava/util/HashMap;Ljava/lang/String;)V

    .line 110
    return-void
.end method
