.class public Lcom/android/OriginalSettings/wifi/mobileap/WifiApConnectedDevice;
.super Landroid/preference/Preference;
.source "WifiApConnectedDevice.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private mConnectedTime:Ljava/lang/Long;

.field private mContext:Landroid/content/Context;

.field private mDeviceName:Ljava/lang/String;

.field private mIp:Ljava/lang/String;

.field private mIsContains:Z

.field private mMac:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter "context"
    .parameter "deviceName"
    .parameter "mac"
    .parameter "ip"
    .parameter "connectedTime"

    .prologue
    .line 62
    invoke-direct {p0, p1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 63
    iput-object p1, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApConnectedDevice;->mContext:Landroid/content/Context;

    .line 64
    iput-object p2, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApConnectedDevice;->mDeviceName:Ljava/lang/String;

    .line 65
    iput-object p3, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApConnectedDevice;->mMac:Ljava/lang/String;

    .line 66
    iput-object p4, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApConnectedDevice;->mIp:Ljava/lang/String;

    .line 67
    invoke-static {p5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    const-wide/16 v2, 0xe10

    sub-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApConnectedDevice;->mConnectedTime:Ljava/lang/Long;

    .line 68
    const v0, 0x7f040099

    invoke-virtual {p0, v0}, Lcom/android/OriginalSettings/wifi/mobileap/WifiApConnectedDevice;->setLayoutResource(I)V

    .line 69
    return-void
.end method

.method static synthetic access$000(Lcom/android/OriginalSettings/wifi/mobileap/WifiApConnectedDevice;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lcom/android/OriginalSettings/wifi/mobileap/WifiApConnectedDevice;->showDialog(I)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/OriginalSettings/wifi/mobileap/WifiApConnectedDevice;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApConnectedDevice;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/OriginalSettings/wifi/mobileap/WifiApConnectedDevice;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApConnectedDevice;->mDeviceName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/OriginalSettings/wifi/mobileap/WifiApConnectedDevice;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApConnectedDevice;->mIp:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/OriginalSettings/wifi/mobileap/WifiApConnectedDevice;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApConnectedDevice;->mMac:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/OriginalSettings/wifi/mobileap/WifiApConnectedDevice;)Ljava/lang/Long;
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApConnectedDevice;->mConnectedTime:Ljava/lang/Long;

    return-object v0
.end method

.method private reloadWhiteList()V
    .locals 4

    .prologue
    .line 242
    invoke-virtual {p0}, Lcom/android/OriginalSettings/wifi/mobileap/WifiApConnectedDevice;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "wifi"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiManager;

    .line 243
    .local v1, wm:Landroid/net/wifi/WifiManager;
    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v2

    const/16 v3, 0xd

    if-ne v2, v3, :cond_0

    .line 244
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 245
    .local v0, msg:Landroid/os/Message;
    const/4 v2, 0x5

    iput v2, v0, Landroid/os/Message;->what:I

    .line 247
    invoke-virtual {v1, v0}, Landroid/net/wifi/WifiManager;->callSECApi(Landroid/os/Message;)I

    .line 249
    .end local v0           #msg:Landroid/os/Message;
    :cond_0
    return-void
.end method

.method private showDialog(I)V
    .locals 5
    .parameter "id"

    .prologue
    .line 176
    packed-switch p1, :pswitch_data_0

    .line 190
    :goto_0
    return-void

    .line 178
    :pswitch_0
    new-instance v0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApWhitelistDialog;

    invoke-virtual {p0}, Lcom/android/OriginalSettings/wifi/mobileap/WifiApConnectedDevice;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApConnectedDevice;->mMac:Ljava/lang/String;

    invoke-direct {v0, v2, v3, v4, p0}, Lcom/android/OriginalSettings/wifi/mobileap/WifiApWhitelistDialog;-><init>(Landroid/content/Context;ILjava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    .line 181
    .local v0, addDialog:Lcom/android/OriginalSettings/wifi/mobileap/WifiApWhitelistDialog;
    invoke-virtual {v0}, Lcom/android/OriginalSettings/wifi/mobileap/WifiApWhitelistDialog;->show()V

    goto :goto_0

    .line 184
    .end local v0           #addDialog:Lcom/android/OriginalSettings/wifi/mobileap/WifiApWhitelistDialog;
    :pswitch_1
    new-instance v1, Lcom/android/OriginalSettings/wifi/mobileap/WifiApWhitelistDialog;

    invoke-virtual {p0}, Lcom/android/OriginalSettings/wifi/mobileap/WifiApConnectedDevice;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x3

    iget-object v4, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApConnectedDevice;->mMac:Ljava/lang/String;

    invoke-direct {v1, v2, v3, v4, p0}, Lcom/android/OriginalSettings/wifi/mobileap/WifiApWhitelistDialog;-><init>(Landroid/content/Context;ILjava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    .line 187
    .local v1, removeDialog:Lcom/android/OriginalSettings/wifi/mobileap/WifiApWhitelistDialog;
    invoke-virtual {v1}, Lcom/android/OriginalSettings/wifi/mobileap/WifiApWhitelistDialog;->show()V

    goto :goto_0

    .line 176
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public compareTo(Landroid/preference/Preference;)I
    .locals 3
    .parameter "preference"

    .prologue
    .line 128
    instance-of v1, p1, Lcom/android/OriginalSettings/wifi/mobileap/WifiApConnectedDevice;

    if-nez v1, :cond_0

    .line 129
    const/4 v1, 0x1

    .line 132
    :goto_0
    return v1

    :cond_0
    move-object v0, p1

    .line 131
    check-cast v0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApConnectedDevice;

    .line 132
    .local v0, other:Lcom/android/OriginalSettings/wifi/mobileap/WifiApConnectedDevice;
    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApConnectedDevice;->mMac:Ljava/lang/String;

    iget-object v2, v0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApConnectedDevice;->mMac:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v1

    goto :goto_0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    check-cast p1, Landroid/preference/Preference;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/OriginalSettings/wifi/mobileap/WifiApConnectedDevice;->compareTo(Landroid/preference/Preference;)I

    move-result v0

    return v0
.end method

.method protected onBindView(Landroid/view/View;)V
    .locals 8
    .parameter "view"

    .prologue
    const/4 v7, 0x0

    .line 73
    invoke-static {}, Landroid/net/wifi/WifiApWhiteList;->getInstance()Landroid/net/wifi/WifiApWhiteList;

    move-result-object v4

    .line 74
    .local v4, whiteList:Landroid/net/wifi/WifiApWhiteList;
    iget-object v5, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApConnectedDevice;->mMac:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/net/wifi/WifiApWhiteList;->isContains(Ljava/lang/String;)Z

    move-result v5

    iput-boolean v5, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApConnectedDevice;->mIsContains:Z

    .line 75
    iget-boolean v5, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApConnectedDevice;->mIsContains:Z

    if-eqz v5, :cond_0

    .line 76
    iget-object v5, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApConnectedDevice;->mMac:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/net/wifi/WifiApWhiteList;->getDeviceName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApConnectedDevice;->mDeviceName:Ljava/lang/String;

    .line 77
    :cond_0
    iget-object v5, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApConnectedDevice;->mDeviceName:Ljava/lang/String;

    invoke-virtual {p0, v5}, Lcom/android/OriginalSettings/wifi/mobileap/WifiApConnectedDevice;->setTitle(Ljava/lang/CharSequence;)V

    .line 78
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApConnectedDevice;->mMac:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApConnectedDevice;->mIp:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/OriginalSettings/wifi/mobileap/WifiApConnectedDevice;->setSummary(Ljava/lang/CharSequence;)V

    .line 79
    invoke-super {p0, p1}, Landroid/preference/Preference;->onBindView(Landroid/view/View;)V

    .line 81
    const v5, 0x7f0a01a6

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 82
    .local v2, devider:Landroid/widget/ImageView;
    const v5, 0x7f0a01a5

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 84
    .local v0, btn:Landroid/widget/LinearLayout;
    const v5, 0x7f0a01a7

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 85
    .local v1, btnImg:Landroid/widget/ImageView;
    iget-object v5, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApConnectedDevice;->mContext:Landroid/content/Context;

    const-string v6, "wifi"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/wifi/WifiManager;

    invoke-virtual {v5}, Landroid/net/wifi/WifiManager;->getWifiApConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v3

    .line 88
    .local v3, wc:Landroid/net/wifi/WifiConfiguration;
    iget v5, v3, Landroid/net/wifi/WifiConfiguration;->macaddrAcl:I

    const/4 v6, 0x3

    if-ne v5, v6, :cond_2

    .line 89
    iget-boolean v5, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApConnectedDevice;->mIsContains:Z

    if-nez v5, :cond_1

    .line 90
    const v5, 0x7f020168

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 91
    new-instance v5, Lcom/android/OriginalSettings/wifi/mobileap/WifiApConnectedDevice$1;

    invoke-direct {v5, p0}, Lcom/android/OriginalSettings/wifi/mobileap/WifiApConnectedDevice$1;-><init>(Lcom/android/OriginalSettings/wifi/mobileap/WifiApConnectedDevice;)V

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 98
    invoke-virtual {v0, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 116
    :cond_1
    :goto_0
    const v5, 0x7f0a01a4

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    new-instance v6, Lcom/android/OriginalSettings/wifi/mobileap/WifiApConnectedDevice$3;

    invoke-direct {v6, p0}, Lcom/android/OriginalSettings/wifi/mobileap/WifiApConnectedDevice$3;-><init>(Lcom/android/OriginalSettings/wifi/mobileap/WifiApConnectedDevice;)V

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 124
    return-void

    .line 100
    :cond_2
    iget v5, v3, Landroid/net/wifi/WifiConfiguration;->macaddrAcl:I

    const/4 v6, 0x1

    if-ne v5, v6, :cond_3

    .line 101
    iget-boolean v5, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApConnectedDevice;->mIsContains:Z

    if-eqz v5, :cond_1

    .line 102
    const v5, 0x7f020169

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 103
    new-instance v5, Lcom/android/OriginalSettings/wifi/mobileap/WifiApConnectedDevice$2;

    invoke-direct {v5, p0}, Lcom/android/OriginalSettings/wifi/mobileap/WifiApConnectedDevice$2;-><init>(Lcom/android/OriginalSettings/wifi/mobileap/WifiApConnectedDevice;)V

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 110
    invoke-virtual {v0, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    .line 113
    :cond_3
    const/16 v5, 0x8

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 17
    .parameter "dialog"
    .parameter "button"

    .prologue
    .line 194
    move-object/from16 v0, p1

    instance-of v11, v0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApWhitelistDialog;

    if-eqz v11, :cond_0

    .line 195
    const-string v11, "WifiApConnectedDevice"

    const-string v12, "onClick"

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v10, p1

    .line 196
    check-cast v10, Lcom/android/OriginalSettings/wifi/mobileap/WifiApWhitelistDialog;

    .line 197
    .local v10, whitelsitDialog:Lcom/android/OriginalSettings/wifi/mobileap/WifiApWhitelistDialog;
    const/4 v11, -0x1

    move/from16 v0, p2

    if-ne v0, v11, :cond_0

    .line 198
    invoke-static {}, Landroid/net/wifi/WifiApWhiteList;->getInstance()Landroid/net/wifi/WifiApWhiteList;

    move-result-object v9

    .line 200
    .local v9, whiteList:Landroid/net/wifi/WifiApWhiteList;
    invoke-virtual {v10}, Lcom/android/OriginalSettings/wifi/mobileap/WifiApWhitelistDialog;->getType()I

    move-result v11

    packed-switch v11, :pswitch_data_0

    .line 239
    .end local v9           #whiteList:Landroid/net/wifi/WifiApWhiteList;
    .end local v10           #whitelsitDialog:Lcom/android/OriginalSettings/wifi/mobileap/WifiApWhitelistDialog;
    .end local p1
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 202
    .restart local v9       #whiteList:Landroid/net/wifi/WifiApWhiteList;
    .restart local v10       #whitelsitDialog:Lcom/android/OriginalSettings/wifi/mobileap/WifiApWhitelistDialog;
    .restart local p1
    :pswitch_1
    const-string v11, "WifiApConnectedDevice"

    const-string v12, "ADD_DEVICE_FROM_CONNECTED"

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v11, p1

    .line 204
    check-cast v11, Lcom/android/OriginalSettings/wifi/mobileap/WifiApWhitelistDialog;

    invoke-virtual {v11}, Lcom/android/OriginalSettings/wifi/mobileap/WifiApWhitelistDialog;->getName()Ljava/lang/String;

    move-result-object v2

    .line 205
    .local v2, deviceName:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApConnectedDevice;->mMac:Ljava/lang/String;

    invoke-virtual {v9, v11, v2}, Landroid/net/wifi/WifiApWhiteList;->addWhiteList(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    check-cast p1, Lcom/android/OriginalSettings/wifi/mobileap/WifiApWhitelistDialog;

    .end local p1
    invoke-virtual/range {p1 .. p1}, Lcom/android/OriginalSettings/wifi/mobileap/WifiApWhitelistDialog;->getName()Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v11, v12}, Lcom/android/OriginalSettings/wifi/mobileap/WifiApConnectedDevice;->update(Ljava/lang/String;I)Z

    .line 208
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApConnectedDevice;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f0d0266

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "<font color=#59D0F3>"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "</font>"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    aput-object v15, v13, v14

    invoke-virtual {v11, v12, v13}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 212
    .local v4, msgAdd:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApConnectedDevice;->mContext:Landroid/content/Context;

    invoke-static {v4}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v12

    const/4 v13, 0x1

    invoke-static {v11, v12, v13}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v7

    .line 213
    .local v7, toastAdd:Landroid/widget/Toast;
    invoke-virtual {v7}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 216
    .end local v2           #deviceName:Ljava/lang/String;
    .end local v4           #msgAdd:Ljava/lang/String;
    .end local v7           #toastAdd:Landroid/widget/Toast;
    .restart local p1
    :pswitch_2
    const-string v11, "WifiApConnectedDevice"

    const-string v12, "REMOVE_DEVICE_FROM_CONNECTED"

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApConnectedDevice;->mMac:Ljava/lang/String;

    invoke-virtual {v9, v11}, Landroid/net/wifi/WifiApWhiteList;->getDeviceName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 218
    .local v6, removeDeviceName:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApConnectedDevice;->mMac:Ljava/lang/String;

    invoke-virtual {v9, v11}, Landroid/net/wifi/WifiApWhiteList;->removeWhiteList(Ljava/lang/String;)I

    .line 219
    invoke-direct/range {p0 .. p0}, Lcom/android/OriginalSettings/wifi/mobileap/WifiApConnectedDevice;->reloadWhiteList()V

    .line 221
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApConnectedDevice;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f0d0267

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "<font color=#59D0F3>"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "</font>"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    aput-object v15, v13, v14

    invoke-virtual {v11, v12, v13}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 225
    .local v5, msgRemove:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApConnectedDevice;->mContext:Landroid/content/Context;

    invoke-static {v5}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v12

    const/4 v13, 0x1

    invoke-static {v11, v12, v13}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v8

    .line 226
    .local v8, toastRemove:Landroid/widget/Toast;
    invoke-virtual {v8}, Landroid/widget/Toast;->show()V

    .line 228
    new-instance v3, Landroid/os/Message;

    invoke-direct {v3}, Landroid/os/Message;-><init>()V

    .line 229
    .local v3, msg:Landroid/os/Message;
    const/4 v11, 0x4

    iput v11, v3, Landroid/os/Message;->what:I

    .line 230
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 231
    .local v1, b:Landroid/os/Bundle;
    const-string v11, "mac"

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApConnectedDevice;->mMac:Ljava/lang/String;

    invoke-virtual {v1, v11, v12}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 232
    iput-object v1, v3, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 233
    invoke-virtual/range {p0 .. p0}, Lcom/android/OriginalSettings/wifi/mobileap/WifiApConnectedDevice;->getContext()Landroid/content/Context;

    move-result-object v11

    const-string v12, "wifi"

    invoke-virtual {v11, v12}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/net/wifi/WifiManager;

    invoke-virtual {v11, v3}, Landroid/net/wifi/WifiManager;->callSECApi(Landroid/os/Message;)I

    .line 234
    invoke-virtual/range {p0 .. p0}, Lcom/android/OriginalSettings/wifi/mobileap/WifiApConnectedDevice;->notifyHierarchyChanged()V

    goto/16 :goto_0

    .line 200
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method update(Ljava/lang/String;I)Z
    .locals 1
    .parameter "info"
    .parameter "type"

    .prologue
    const/4 v0, 0x1

    .line 147
    if-eqz p1, :cond_2

    .line 148
    if-ne p2, v0, :cond_1

    .line 149
    iput-object p1, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApConnectedDevice;->mIp:Ljava/lang/String;

    .line 153
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/android/OriginalSettings/wifi/mobileap/WifiApConnectedDevice;->notifyHierarchyChanged()V

    .line 156
    :goto_1
    return v0

    .line 150
    :cond_1
    if-nez p2, :cond_0

    .line 151
    iput-object p1, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApConnectedDevice;->mDeviceName:Ljava/lang/String;

    goto :goto_0

    .line 156
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method
