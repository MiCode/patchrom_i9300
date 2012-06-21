.class Lcom/android/server/am/AppPermissionAlertDialog;
.super Lcom/android/server/am/BaseErrorDialog;
.source "AppPermissionAlertDialog.java"


# static fields
.field private static final CONTINUE:I = 0x0

.field private static final FORCE_QUIT:I = 0x1

.field private static final GETMSGBYAPP:I = 0x2


# instance fields
.field private mAppName:Ljava/lang/String;

.field private mCMAppName:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private final mHandler:Landroid/os/Handler;

.field private mMessageByApp:Ljava/lang/String;

.field private mPermissions:[Ljava/lang/String;

.field private mResource:Landroid/content/res/Resources;

.field private mService:Landroid/app/ICMDialogMessageManager;

.field private mTitleByApp:Ljava/lang/String;

.field private newIntent:Landroid/content/Intent;

.field private serviceConn:Landroid/content/ServiceConnection;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/content/Intent;[Ljava/lang/String;)V
    .locals 9
    .parameter "context"
    .parameter "packagename"
    .parameter "intent"
    .parameter "permissions"

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    const/4 v5, 0x0

    .line 79
    invoke-direct {p0, p1}, Lcom/android/server/am/BaseErrorDialog;-><init>(Landroid/content/Context;)V

    .line 39
    iput-object v5, p0, Lcom/android/server/am/AppPermissionAlertDialog;->mContext:Landroid/content/Context;

    .line 46
    iput-object v5, p0, Lcom/android/server/am/AppPermissionAlertDialog;->newIntent:Landroid/content/Intent;

    .line 47
    iput-object v5, p0, Lcom/android/server/am/AppPermissionAlertDialog;->mTitleByApp:Ljava/lang/String;

    .line 48
    iput-object v5, p0, Lcom/android/server/am/AppPermissionAlertDialog;->mMessageByApp:Ljava/lang/String;

    .line 49
    iput-object v5, p0, Lcom/android/server/am/AppPermissionAlertDialog;->mAppName:Ljava/lang/String;

    .line 50
    const-string v4, "Permission manager"

    iput-object v4, p0, Lcom/android/server/am/AppPermissionAlertDialog;->mCMAppName:Ljava/lang/String;

    .line 51
    iput-object v5, p0, Lcom/android/server/am/AppPermissionAlertDialog;->mPermissions:[Ljava/lang/String;

    .line 54
    iput-object v5, p0, Lcom/android/server/am/AppPermissionAlertDialog;->mService:Landroid/app/ICMDialogMessageManager;

    .line 55
    new-instance v4, Lcom/android/server/am/AppPermissionAlertDialog$1;

    invoke-direct {v4, p0}, Lcom/android/server/am/AppPermissionAlertDialog$1;-><init>(Lcom/android/server/am/AppPermissionAlertDialog;)V

    iput-object v4, p0, Lcom/android/server/am/AppPermissionAlertDialog;->serviceConn:Landroid/content/ServiceConnection;

    .line 140
    new-instance v4, Lcom/android/server/am/AppPermissionAlertDialog$2;

    invoke-direct {v4, p0}, Lcom/android/server/am/AppPermissionAlertDialog$2;-><init>(Lcom/android/server/am/AppPermissionAlertDialog;)V

    iput-object v4, p0, Lcom/android/server/am/AppPermissionAlertDialog;->mHandler:Landroid/os/Handler;

    .line 81
    iput-object p1, p0, Lcom/android/server/am/AppPermissionAlertDialog;->mContext:Landroid/content/Context;

    .line 82
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/am/AppPermissionAlertDialog;->mResource:Landroid/content/res/Resources;

    .line 84
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4, p3}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    iput-object v4, p0, Lcom/android/server/am/AppPermissionAlertDialog;->newIntent:Landroid/content/Intent;

    .line 85
    iget-object v4, p0, Lcom/android/server/am/AppPermissionAlertDialog;->newIntent:Landroid/content/Intent;

    const-string v5, "sec_wdlg_newIntent_touch"

    invoke-virtual {v4, v5, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 89
    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/pm/IPackageManager;->getPermissionAlertDialogEnableType()I

    move-result v4

    if-ne v4, v7, :cond_0

    .line 90
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v4

    const/4 v5, 0x5

    const/4 v6, 0x0

    invoke-interface {v4, v5, v6, p2}, Landroid/content/pm/IPackageManager;->updateManagedPermissionOfPackage(I[Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 95
    :cond_0
    :goto_0
    iput-object p4, p0, Lcom/android/server/am/AppPermissionAlertDialog;->mPermissions:[Ljava/lang/String;

    .line 98
    :try_start_1
    iget-object v4, p0, Lcom/android/server/am/AppPermissionAlertDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const/16 v5, 0x80

    invoke-virtual {v4, p2, v5}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 99
    .local v1, appinfo:Landroid/content/pm/ApplicationInfo;
    iget-object v4, p0, Lcom/android/server/am/AppPermissionAlertDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/am/AppPermissionAlertDialog;->mAppName:Ljava/lang/String;

    .line 101
    iget-object v4, p0, Lcom/android/server/am/AppPermissionAlertDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const-string v5, "com.sec.android.app.capabilitymanager"

    const/16 v6, 0x80

    invoke-virtual {v4, v5, v6}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 102
    .local v0, CMInfo:Landroid/content/pm/ApplicationInfo;
    iget-object v4, p0, Lcom/android/server/am/AppPermissionAlertDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/am/AppPermissionAlertDialog;->mCMAppName:Ljava/lang/String;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 109
    .end local v0           #CMInfo:Landroid/content/pm/ApplicationInfo;
    .end local v1           #appinfo:Landroid/content/pm/ApplicationInfo;
    :goto_1
    invoke-virtual {p0}, Lcom/android/server/am/AppPermissionAlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    const/high16 v5, 0x4000

    invoke-virtual {v4, v5}, Landroid/view/Window;->addFlags(I)V

    .line 110
    invoke-virtual {p0}, Lcom/android/server/am/AppPermissionAlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    const-string v5, "Warning"

    invoke-virtual {v4, v5}, Landroid/view/Window;->setTitle(Ljava/lang/CharSequence;)V

    .line 112
    invoke-virtual {p0, v8}, Lcom/android/server/am/AppPermissionAlertDialog;->setCancelable(Z)V

    .line 113
    const/4 v4, -0x1

    iget-object v5, p0, Lcom/android/server/am/AppPermissionAlertDialog;->mResource:Landroid/content/res/Resources;

    const v6, 0x104000a

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/am/AppPermissionAlertDialog;->mHandler:Landroid/os/Handler;

    invoke-virtual {v6, v8}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    invoke-virtual {p0, v4, v5, v6}, Lcom/android/server/am/AppPermissionAlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/os/Message;)V

    .line 117
    invoke-direct {p0}, Lcom/android/server/am/AppPermissionAlertDialog;->setTitleAndMessage()V

    .line 119
    new-instance v2, Landroid/content/Intent;

    const-string v4, "com.android.security.capabilitymanager.action.GET_DIALOGMESSAGE"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 120
    .local v2, bindIntent:Landroid/content/Intent;
    iget-object v4, p0, Lcom/android/server/am/AppPermissionAlertDialog;->serviceConn:Landroid/content/ServiceConnection;

    invoke-virtual {p1, v2, v4, v7}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 121
    return-void

    .line 92
    .end local v2           #bindIntent:Landroid/content/Intent;
    :catch_0
    move-exception v3

    .line 93
    .local v3, e:Landroid/os/RemoteException;
    invoke-virtual {v3}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 104
    .end local v3           #e:Landroid/os/RemoteException;
    :catch_1
    move-exception v3

    .line 105
    .local v3, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    iput-object p2, p0, Lcom/android/server/am/AppPermissionAlertDialog;->mAppName:Ljava/lang/String;

    .line 106
    const-string v4, "Permission manager"

    iput-object v4, p0, Lcom/android/server/am/AppPermissionAlertDialog;->mCMAppName:Ljava/lang/String;

    goto :goto_1
.end method

.method static synthetic access$000(Lcom/android/server/am/AppPermissionAlertDialog;)Landroid/app/ICMDialogMessageManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget-object v0, p0, Lcom/android/server/am/AppPermissionAlertDialog;->mService:Landroid/app/ICMDialogMessageManager;

    return-object v0
.end method

.method static synthetic access$002(Lcom/android/server/am/AppPermissionAlertDialog;Landroid/app/ICMDialogMessageManager;)Landroid/app/ICMDialogMessageManager;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 37
    iput-object p1, p0, Lcom/android/server/am/AppPermissionAlertDialog;->mService:Landroid/app/ICMDialogMessageManager;

    return-object p1
.end method

.method static synthetic access$102(Lcom/android/server/am/AppPermissionAlertDialog;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 37
    iput-object p1, p0, Lcom/android/server/am/AppPermissionAlertDialog;->mTitleByApp:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$202(Lcom/android/server/am/AppPermissionAlertDialog;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 37
    iput-object p1, p0, Lcom/android/server/am/AppPermissionAlertDialog;->mMessageByApp:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$300(Lcom/android/server/am/AppPermissionAlertDialog;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget-object v0, p0, Lcom/android/server/am/AppPermissionAlertDialog;->mAppName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/am/AppPermissionAlertDialog;)[Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget-object v0, p0, Lcom/android/server/am/AppPermissionAlertDialog;->mPermissions:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/server/am/AppPermissionAlertDialog;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget-object v0, p0, Lcom/android/server/am/AppPermissionAlertDialog;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/server/am/AppPermissionAlertDialog;)Landroid/content/Intent;
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget-object v0, p0, Lcom/android/server/am/AppPermissionAlertDialog;->newIntent:Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/server/am/AppPermissionAlertDialog;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget-object v0, p0, Lcom/android/server/am/AppPermissionAlertDialog;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/server/am/AppPermissionAlertDialog;)Landroid/content/ServiceConnection;
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget-object v0, p0, Lcom/android/server/am/AppPermissionAlertDialog;->serviceConn:Landroid/content/ServiceConnection;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/server/am/AppPermissionAlertDialog;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/android/server/am/AppPermissionAlertDialog;->setTitleAndMessageByApp()V

    return-void
.end method

.method private setTitleAndMessage()V
    .locals 2

    .prologue
    .line 124
    iget-object v0, p0, Lcom/android/server/am/AppPermissionAlertDialog;->mTitleByApp:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/am/AppPermissionAlertDialog;->mMessageByApp:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 125
    iget-object v0, p0, Lcom/android/server/am/AppPermissionAlertDialog;->mTitleByApp:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/server/am/AppPermissionAlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 126
    iget-object v0, p0, Lcom/android/server/am/AppPermissionAlertDialog;->mMessageByApp:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/server/am/AppPermissionAlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 131
    :goto_0
    return-void

    .line 128
    :cond_0
    const-string v0, "Warning"

    invoke-virtual {p0, v0}, Lcom/android/server/am/AppPermissionAlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 129
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/server/am/AppPermissionAlertDialog;->mAppName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " can be terminated suddenly. Because some of permission are managed by "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/am/AppPermissionAlertDialog;->mCMAppName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n\nIf you want more detiled information, please go to the"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/am/AppPermissionAlertDialog;->mCMAppName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/am/AppPermissionAlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private setTitleAndMessageByApp()V
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Lcom/android/server/am/AppPermissionAlertDialog;->mTitleByApp:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/am/AppPermissionAlertDialog;->mMessageByApp:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 135
    iget-object v0, p0, Lcom/android/server/am/AppPermissionAlertDialog;->mTitleByApp:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/server/am/AppPermissionAlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 136
    iget-object v0, p0, Lcom/android/server/am/AppPermissionAlertDialog;->mMessageByApp:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/server/am/AppPermissionAlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 138
    :cond_0
    return-void
.end method
