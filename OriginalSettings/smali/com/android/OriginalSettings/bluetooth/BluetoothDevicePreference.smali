.class public final Lcom/android/OriginalSettings/bluetooth/BluetoothDevicePreference;
.super Landroid/preference/Preference;
.source "BluetoothDevicePreference.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice$Callback;


# static fields
.field private static sDimAlpha:I


# instance fields
.field private final mCachedDevice:Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;

.field private mDisconnectDialog:Landroid/app/AlertDialog;

.field private mOnSettingsClickListener:Landroid/view/View$OnClickListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 53
    const/high16 v0, -0x8000

    sput v0, Lcom/android/OriginalSettings/bluetooth/BluetoothDevicePreference;->sDimAlpha:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;)V
    .locals 4
    .parameter "context"
    .parameter "cachedDevice"

    .prologue
    .line 62
    invoke-direct {p0, p1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 64
    sget v1, Lcom/android/OriginalSettings/bluetooth/BluetoothDevicePreference;->sDimAlpha:I

    const/high16 v2, -0x8000

    if-ne v1, v2, :cond_0

    .line 65
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 66
    .local v0, outValue:Landroid/util/TypedValue;
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const v2, 0x1010033

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 67
    invoke-virtual {v0}, Landroid/util/TypedValue;->getFloat()F

    move-result v1

    const/high16 v2, 0x437f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    sput v1, Lcom/android/OriginalSettings/bluetooth/BluetoothDevicePreference;->sDimAlpha:I

    .line 70
    .end local v0           #outValue:Landroid/util/TypedValue;
    :cond_0
    iput-object p2, p0, Lcom/android/OriginalSettings/bluetooth/BluetoothDevicePreference;->mCachedDevice:Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;

    .line 72
    invoke-virtual {p2}, Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;->getBondState()I

    move-result v1

    const/16 v2, 0xc

    if-ne v1, v2, :cond_1

    .line 73
    const v1, 0x7f04007f

    invoke-virtual {p0, v1}, Lcom/android/OriginalSettings/bluetooth/BluetoothDevicePreference;->setWidgetLayoutResource(I)V

    .line 76
    :cond_1
    iget-object v1, p0, Lcom/android/OriginalSettings/bluetooth/BluetoothDevicePreference;->mCachedDevice:Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v1, p0}, Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;->registerCallback(Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice$Callback;)V

    .line 78
    invoke-virtual {p0}, Lcom/android/OriginalSettings/bluetooth/BluetoothDevicePreference;->onDeviceAttributesChanged()V

    .line 79
    return-void
.end method

.method static synthetic access$000(Lcom/android/OriginalSettings/bluetooth/BluetoothDevicePreference;)Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;
    .locals 1
    .parameter "x0"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/OriginalSettings/bluetooth/BluetoothDevicePreference;->mCachedDevice:Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;

    return-object v0
.end method

.method private askDisconnect()V
    .locals 8

    .prologue
    .line 212
    invoke-virtual {p0}, Lcom/android/OriginalSettings/bluetooth/BluetoothDevicePreference;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 213
    .local v0, context:Landroid/content/Context;
    iget-object v5, p0, Lcom/android/OriginalSettings/bluetooth/BluetoothDevicePreference;->mCachedDevice:Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v5}, Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v3

    .line 214
    .local v3, name:Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 215
    const v5, 0x7f0d0092

    invoke-virtual {v0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 217
    :cond_0
    const v5, 0x7f0d0086

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v3, v6, v7

    invoke-virtual {v0, v5, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 218
    .local v2, message:Ljava/lang/String;
    const v5, 0x7f0d0085

    invoke-virtual {v0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 220
    .local v4, title:Ljava/lang/String;
    new-instance v1, Lcom/android/OriginalSettings/bluetooth/BluetoothDevicePreference$1;

    invoke-direct {v1, p0}, Lcom/android/OriginalSettings/bluetooth/BluetoothDevicePreference$1;-><init>(Lcom/android/OriginalSettings/bluetooth/BluetoothDevicePreference;)V

    .line 226
    .local v1, disconnectListener:Landroid/content/DialogInterface$OnClickListener;
    iget-object v5, p0, Lcom/android/OriginalSettings/bluetooth/BluetoothDevicePreference;->mDisconnectDialog:Landroid/app/AlertDialog;

    invoke-static {v2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v6

    invoke-static {v0, v5, v1, v4, v6}, Lcom/android/OriginalSettings/bluetooth/Utils;->showDisconnectDialog(Landroid/content/Context;Landroid/app/AlertDialog;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/app/AlertDialog;

    move-result-object v5

    iput-object v5, p0, Lcom/android/OriginalSettings/bluetooth/BluetoothDevicePreference;->mDisconnectDialog:Landroid/app/AlertDialog;

    .line 228
    return-void
.end method

.method private getBtClassDrawable()I
    .locals 7

    .prologue
    .line 326
    iget-object v5, p0, Lcom/android/OriginalSettings/bluetooth/BluetoothDevicePreference;->mCachedDevice:Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v5}, Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;->getBtClass()Landroid/bluetooth/BluetoothClass;

    move-result-object v0

    .line 327
    .local v0, btClass:Landroid/bluetooth/BluetoothClass;
    if-eqz v0, :cond_1

    .line 328
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothClass;->getMajorDeviceClass()I

    move-result v5

    sparse-switch v5, :sswitch_data_0

    .line 344
    const/4 v5, 0x1

    invoke-virtual {v0, v5}, Landroid/bluetooth/BluetoothClass;->doesClassMatch(I)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 345
    const v4, 0x7f02008b

    .line 364
    :goto_0
    return v4

    .line 330
    :sswitch_0
    const v4, 0x7f020092

    goto :goto_0

    .line 333
    :sswitch_1
    const v4, 0x7f020083

    goto :goto_0

    .line 336
    :sswitch_2
    invoke-static {v0}, Lcom/android/OriginalSettings/bluetooth/HidProfile;->getHidClassDrawable(Landroid/bluetooth/BluetoothClass;)I

    move-result v4

    goto :goto_0

    .line 339
    :sswitch_3
    const v4, 0x7f0200a0

    goto :goto_0

    .line 348
    :cond_0
    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Landroid/bluetooth/BluetoothClass;->doesClassMatch(I)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 349
    const v4, 0x7f02008c

    goto :goto_0

    .line 352
    :cond_1
    const-string v5, "BluetoothDevicePreference"

    const-string v6, "mBtClass is null"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 355
    :cond_2
    iget-object v5, p0, Lcom/android/OriginalSettings/bluetooth/BluetoothDevicePreference;->mCachedDevice:Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v5}, Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;->getProfiles()Ljava/util/List;

    move-result-object v3

    .line 356
    .local v3, profiles:Ljava/util/List;,"Ljava/util/List<Lcom/android/OriginalSettings/bluetooth/LocalBluetoothProfile;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/OriginalSettings/bluetooth/LocalBluetoothProfile;

    .line 357
    .local v2, profile:Lcom/android/OriginalSettings/bluetooth/LocalBluetoothProfile;
    invoke-interface {v2, v0}, Lcom/android/OriginalSettings/bluetooth/LocalBluetoothProfile;->getDrawableResource(Landroid/bluetooth/BluetoothClass;)I

    move-result v4

    .line 358
    .local v4, resId:I
    if-eqz v4, :cond_3

    goto :goto_0

    .line 364
    .end local v2           #profile:Lcom/android/OriginalSettings/bluetooth/LocalBluetoothProfile;
    .end local v4           #resId:I
    :cond_4
    const v4, 0x7f020085

    goto :goto_0

    .line 328
    :sswitch_data_0
    .sparse-switch
        0x100 -> :sswitch_0
        0x200 -> :sswitch_1
        0x500 -> :sswitch_2
        0x600 -> :sswitch_3
    .end sparse-switch
.end method

.method private getConnectionSummary()I
    .locals 11

    .prologue
    .line 238
    iget-object v1, p0, Lcom/android/OriginalSettings/bluetooth/BluetoothDevicePreference;->mCachedDevice:Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;

    .line 240
    .local v1, cachedDevice:Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;
    const/4 v9, 0x0

    .line 241
    .local v9, profileConnected:Z
    const/4 v0, 0x0

    .line 242
    .local v0, a2dpNotConnected:Z
    const/4 v3, 0x0

    .line 245
    .local v3, headsetNotConnected:Z
    const/4 v5, 0x0

    .line 246
    .local v5, isA2dpConnected:Z
    const/4 v6, 0x0

    .line 247
    .local v6, isHeadsetConnected:Z
    const/4 v7, 0x0

    .line 249
    .local v7, isHidConnected:Z
    invoke-virtual {v1}, Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;->getProfiles()Ljava/util/List;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/OriginalSettings/bluetooth/LocalBluetoothProfile;

    .line 250
    .local v8, profile:Lcom/android/OriginalSettings/bluetooth/LocalBluetoothProfile;
    invoke-virtual {v1, v8}, Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;->getProfileConnectionState(Lcom/android/OriginalSettings/bluetooth/LocalBluetoothProfile;)I

    move-result v2

    .line 252
    .local v2, connectionStatus:I
    packed-switch v2, :pswitch_data_0

    goto :goto_0

    .line 255
    :pswitch_0
    invoke-static {v2}, Lcom/android/OriginalSettings/bluetooth/Utils;->getConnectionStateSummary(I)I

    move-result v10

    .line 320
    .end local v2           #connectionStatus:I
    .end local v8           #profile:Lcom/android/OriginalSettings/bluetooth/LocalBluetoothProfile;
    :goto_1
    return v10

    .line 258
    .restart local v2       #connectionStatus:I
    .restart local v8       #profile:Lcom/android/OriginalSettings/bluetooth/LocalBluetoothProfile;
    :pswitch_1
    const/4 v9, 0x1

    .line 259
    instance-of v10, v8, Lcom/android/OriginalSettings/bluetooth/A2dpProfile;

    if-eqz v10, :cond_1

    .line 260
    const/4 v5, 0x1

    .line 262
    :cond_1
    instance-of v10, v8, Lcom/android/OriginalSettings/bluetooth/HeadsetProfile;

    if-eqz v10, :cond_2

    .line 263
    const/4 v6, 0x1

    .line 265
    :cond_2
    instance-of v10, v8, Lcom/android/OriginalSettings/bluetooth/HidProfile;

    if-eqz v10, :cond_0

    .line 266
    const/4 v7, 0x1

    goto :goto_0

    .line 299
    .end local v2           #connectionStatus:I
    .end local v8           #profile:Lcom/android/OriginalSettings/bluetooth/LocalBluetoothProfile;
    :cond_3
    if-eqz v9, :cond_8

    .line 300
    if-eqz v5, :cond_4

    if-eqz v6, :cond_4

    .line 301
    const v10, 0x7f0d08fd

    goto :goto_1

    .line 302
    :cond_4
    if-eqz v5, :cond_5

    .line 303
    const v10, 0x7f0d01c6

    goto :goto_1

    .line 304
    :cond_5
    if-eqz v6, :cond_6

    .line 305
    const v10, 0x7f0d01c7

    goto :goto_1

    .line 306
    :cond_6
    if-eqz v7, :cond_7

    .line 307
    const v10, 0x7f0d01ca

    goto :goto_1

    .line 309
    :cond_7
    const v10, 0x7f0d0089

    goto :goto_1

    .line 313
    :cond_8
    invoke-virtual {v1}, Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;->getBondState()I

    move-result v10

    packed-switch v10, :pswitch_data_1

    .line 320
    const/4 v10, 0x0

    goto :goto_1

    .line 315
    :pswitch_2
    const v10, 0x7f0d0091

    goto :goto_1

    .line 317
    :pswitch_3
    const v10, 0x7f0d08fe

    goto :goto_1

    .line 252
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch

    .line 313
    :pswitch_data_1
    .packed-switch 0xb
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private pair()V
    .locals 3

    .prologue
    .line 231
    iget-object v0, p0, Lcom/android/OriginalSettings/bluetooth/BluetoothDevicePreference;->mCachedDevice:Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v0}, Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;->startPairing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 232
    invoke-virtual {p0}, Lcom/android/OriginalSettings/bluetooth/BluetoothDevicePreference;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/OriginalSettings/bluetooth/BluetoothDevicePreference;->mCachedDevice:Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v1}, Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f0d01a0

    invoke-static {v0, v1, v2}, Lcom/android/OriginalSettings/bluetooth/Utils;->showError(Landroid/content/Context;Ljava/lang/String;I)V

    .line 235
    :cond_0
    return-void
.end method


# virtual methods
.method public compareTo(Landroid/preference/Preference;)I
    .locals 2
    .parameter "another"

    .prologue
    .line 189
    instance-of v0, p1, Lcom/android/OriginalSettings/bluetooth/BluetoothDevicePreference;

    if-nez v0, :cond_0

    .line 191
    invoke-super {p0, p1}, Landroid/preference/Preference;->compareTo(Landroid/preference/Preference;)I

    move-result v0

    .line 194
    .end local p1
    :goto_0
    return v0

    .restart local p1
    :cond_0
    iget-object v0, p0, Lcom/android/OriginalSettings/bluetooth/BluetoothDevicePreference;->mCachedDevice:Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;

    check-cast p1, Lcom/android/OriginalSettings/bluetooth/BluetoothDevicePreference;

    .end local p1
    iget-object v1, p1, Lcom/android/OriginalSettings/bluetooth/BluetoothDevicePreference;->mCachedDevice:Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v0, v1}, Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;->compareTo(Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;)I

    move-result v0

    goto :goto_0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 49
    check-cast p1, Landroid/preference/Preference;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/OriginalSettings/bluetooth/BluetoothDevicePreference;->compareTo(Landroid/preference/Preference;)I

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .parameter "o"

    .prologue
    .line 175
    if-eqz p1, :cond_0

    instance-of v0, p1, Lcom/android/OriginalSettings/bluetooth/BluetoothDevicePreference;

    if-nez v0, :cond_1

    .line 176
    :cond_0
    const/4 v0, 0x0

    .line 178
    .end local p1
    :goto_0
    return v0

    .restart local p1
    :cond_1
    iget-object v0, p0, Lcom/android/OriginalSettings/bluetooth/BluetoothDevicePreference;->mCachedDevice:Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;

    check-cast p1, Lcom/android/OriginalSettings/bluetooth/BluetoothDevicePreference;

    .end local p1
    iget-object v1, p1, Lcom/android/OriginalSettings/bluetooth/BluetoothDevicePreference;->mCachedDevice:Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v0, v1}, Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method getCachedDevice()Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/android/OriginalSettings/bluetooth/BluetoothDevicePreference;->mCachedDevice:Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 184
    iget-object v0, p0, Lcom/android/OriginalSettings/bluetooth/BluetoothDevicePreference;->mCachedDevice:Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v0}, Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;->hashCode()I

    move-result v0

    return v0
.end method

.method protected onBindView(Landroid/view/View;)V
    .locals 7
    .parameter "view"

    .prologue
    const/16 v6, 0x8

    const/4 v5, 0x1

    .line 129
    const-string v3, "bt_checkbox"

    invoke-virtual {p0, v3}, Lcom/android/OriginalSettings/bluetooth/BluetoothDevicePreference;->findPreferenceInHierarchy(Ljava/lang/String;)Landroid/preference/Preference;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 130
    const-string v3, "bt_checkbox"

    invoke-virtual {p0, v3}, Lcom/android/OriginalSettings/bluetooth/BluetoothDevicePreference;->setDependency(Ljava/lang/String;)V

    .line 133
    :cond_0
    iget-object v3, p0, Lcom/android/OriginalSettings/bluetooth/BluetoothDevicePreference;->mCachedDevice:Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v3}, Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;->getBondState()I

    move-result v3

    const/16 v4, 0xc

    if-ne v3, v4, :cond_1

    .line 134
    const v3, 0x7f0a0174

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 138
    .local v0, deviceDetails:Landroid/widget/ImageView;
    invoke-virtual {p0}, Lcom/android/OriginalSettings/bluetooth/BluetoothDevicePreference;->getContext()Landroid/content/Context;

    move-result-object v3

    instance-of v3, v3, Lcom/android/OriginalSettings/bluetooth/DevicePickerActivity;

    if-eqz v3, :cond_3

    .line 140
    const v3, 0x7f0a0173

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 141
    .local v1, divider:Landroid/widget/ImageView;
    if-eqz v0, :cond_1

    .line 142
    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 143
    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 156
    .end local v0           #deviceDetails:Landroid/widget/ImageView;
    .end local v1           #divider:Landroid/widget/ImageView;
    :cond_1
    :goto_0
    invoke-super {p0, p1}, Landroid/preference/Preference;->onBindView(Landroid/view/View;)V

    .line 159
    iget-object v3, p0, Lcom/android/OriginalSettings/bluetooth/BluetoothDevicePreference;->mCachedDevice:Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v3}, Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;->isConnected()Z

    move-result v3

    if-ne v3, v5, :cond_2

    .line 160
    const v3, 0x1020016

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 161
    .local v2, title:Landroid/widget/TextView;
    sget-object v3, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {v2, v3, v5}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 162
    const v3, -0xff6601

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 164
    .end local v2           #title:Landroid/widget/TextView;
    :cond_2
    return-void

    .line 148
    .restart local v0       #deviceDetails:Landroid/widget/ImageView;
    :cond_3
    if-eqz v0, :cond_1

    .line 149
    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 150
    iget-object v3, p0, Lcom/android/OriginalSettings/bluetooth/BluetoothDevicePreference;->mCachedDevice:Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 151
    invoke-virtual {p0}, Lcom/android/OriginalSettings/bluetooth/BluetoothDevicePreference;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_4

    const/16 v3, 0xff

    :goto_1
    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setAlpha(I)V

    goto :goto_0

    :cond_4
    sget v3, Lcom/android/OriginalSettings/bluetooth/BluetoothDevicePreference;->sDimAlpha:I

    goto :goto_1
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 168
    iget-object v0, p0, Lcom/android/OriginalSettings/bluetooth/BluetoothDevicePreference;->mOnSettingsClickListener:Landroid/view/View$OnClickListener;

    if-eqz v0, :cond_0

    .line 169
    iget-object v0, p0, Lcom/android/OriginalSettings/bluetooth/BluetoothDevicePreference;->mOnSettingsClickListener:Landroid/view/View$OnClickListener;

    invoke-interface {v0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 171
    :cond_0
    return-void
.end method

.method onClicked()V
    .locals 3

    .prologue
    .line 199
    iget-object v1, p0, Lcom/android/OriginalSettings/bluetooth/BluetoothDevicePreference;->mCachedDevice:Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v1}, Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;->getBondState()I

    move-result v0

    .line 201
    .local v0, bondState:I
    iget-object v1, p0, Lcom/android/OriginalSettings/bluetooth/BluetoothDevicePreference;->mCachedDevice:Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v1}, Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 202
    invoke-direct {p0}, Lcom/android/OriginalSettings/bluetooth/BluetoothDevicePreference;->askDisconnect()V

    .line 208
    :cond_0
    :goto_0
    return-void

    .line 203
    :cond_1
    const/16 v1, 0xc

    if-ne v0, v1, :cond_2

    .line 204
    iget-object v1, p0, Lcom/android/OriginalSettings/bluetooth/BluetoothDevicePreference;->mCachedDevice:Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;->connect(Z)V

    goto :goto_0

    .line 205
    :cond_2
    const/16 v1, 0xa

    if-ne v0, v1, :cond_0

    .line 206
    invoke-direct {p0}, Lcom/android/OriginalSettings/bluetooth/BluetoothDevicePreference;->pair()V

    goto :goto_0
.end method

.method public onDeviceAttributesChanged()V
    .locals 3

    .prologue
    .line 105
    iget-object v2, p0, Lcom/android/OriginalSettings/bluetooth/BluetoothDevicePreference;->mCachedDevice:Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v2}, Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/OriginalSettings/bluetooth/BluetoothDevicePreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 107
    invoke-direct {p0}, Lcom/android/OriginalSettings/bluetooth/BluetoothDevicePreference;->getConnectionSummary()I

    move-result v1

    .line 108
    .local v1, summaryResId:I
    if-eqz v1, :cond_1

    .line 109
    invoke-virtual {p0, v1}, Lcom/android/OriginalSettings/bluetooth/BluetoothDevicePreference;->setSummary(I)V

    .line 114
    :goto_0
    invoke-direct {p0}, Lcom/android/OriginalSettings/bluetooth/BluetoothDevicePreference;->getBtClassDrawable()I

    move-result v0

    .line 115
    .local v0, iconResId:I
    if-eqz v0, :cond_0

    .line 116
    invoke-virtual {p0, v0}, Lcom/android/OriginalSettings/bluetooth/BluetoothDevicePreference;->setIcon(I)V

    .line 120
    :cond_0
    iget-object v2, p0, Lcom/android/OriginalSettings/bluetooth/BluetoothDevicePreference;->mCachedDevice:Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v2}, Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;->isBusy()Z

    move-result v2

    if-nez v2, :cond_2

    const/4 v2, 0x1

    :goto_1
    invoke-virtual {p0, v2}, Lcom/android/OriginalSettings/bluetooth/BluetoothDevicePreference;->setEnabled(Z)V

    .line 123
    invoke-virtual {p0}, Lcom/android/OriginalSettings/bluetooth/BluetoothDevicePreference;->notifyHierarchyChanged()V

    .line 124
    return-void

    .line 111
    .end local v0           #iconResId:I
    :cond_1
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/android/OriginalSettings/bluetooth/BluetoothDevicePreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 120
    .restart local v0       #iconResId:I
    :cond_2
    const/4 v2, 0x0

    goto :goto_1
.end method

.method protected onPrepareForRemoval()V
    .locals 1

    .prologue
    .line 91
    invoke-super {p0}, Landroid/preference/Preference;->onPrepareForRemoval()V

    .line 92
    iget-object v0, p0, Lcom/android/OriginalSettings/bluetooth/BluetoothDevicePreference;->mCachedDevice:Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v0, p0}, Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;->unregisterCallback(Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice$Callback;)V

    .line 93
    iget-object v0, p0, Lcom/android/OriginalSettings/bluetooth/BluetoothDevicePreference;->mDisconnectDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 94
    iget-object v0, p0, Lcom/android/OriginalSettings/bluetooth/BluetoothDevicePreference;->mDisconnectDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 95
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/OriginalSettings/bluetooth/BluetoothDevicePreference;->mDisconnectDialog:Landroid/app/AlertDialog;

    .line 97
    :cond_0
    return-void
.end method

.method public setOnSettingsClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 86
    iput-object p1, p0, Lcom/android/OriginalSettings/bluetooth/BluetoothDevicePreference;->mOnSettingsClickListener:Landroid/view/View$OnClickListener;

    .line 87
    return-void
.end method
