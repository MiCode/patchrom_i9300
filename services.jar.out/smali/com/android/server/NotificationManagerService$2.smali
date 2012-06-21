.class Lcom/android/server/NotificationManagerService$2;
.super Landroid/content/BroadcastReceiver;
.source "NotificationManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/NotificationManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/NotificationManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/NotificationManagerService;)V
    .locals 0
    .parameter

    .prologue
    .line 351
    iput-object p1, p0, Lcom/android/server/NotificationManagerService$2;->this$0:Lcom/android/server/NotificationManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 12
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v9, 0x1

    const/4 v10, 0x0

    .line 354
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 356
    .local v0, action:Ljava/lang/String;
    const/4 v6, 0x0

    .line 358
    .local v6, queryRestart:Z
    const-string v8, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    const-string v8, "android.intent.action.PACKAGE_RESTARTED"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    const-string v8, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    const-string v8, "android.intent.action.QUERY_PACKAGE_RESTART"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    const-string v8, "android.intent.action.EXTERNAL_APPLICATIONS_UNAVAILABLE"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 363
    :cond_0
    const/4 v4, 0x0

    .line 364
    .local v4, pkgList:[Ljava/lang/String;
    const-string v8, "android.intent.action.EXTERNAL_APPLICATIONS_UNAVAILABLE"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 365
    const-string v8, "android.intent.extra.changed_package_list"

    invoke-virtual {p2, v8}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 379
    :goto_0
    if-eqz v4, :cond_3

    array-length v8, v4

    if-lez v8, :cond_3

    .line 380
    move-object v1, v4

    .local v1, arr$:[Ljava/lang/String;
    array-length v3, v1

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_1
    if-ge v2, v3, :cond_3

    aget-object v5, v1, v2

    .line 381
    .local v5, pkgName:Ljava/lang/String;
    iget-object v11, p0, Lcom/android/server/NotificationManagerService$2;->this$0:Lcom/android/server/NotificationManagerService;

    if-nez v6, :cond_5

    move v8, v9

    :goto_2
    invoke-virtual {v11, v5, v10, v10, v8}, Lcom/android/server/NotificationManagerService;->cancelAllNotificationsInt(Ljava/lang/String;IIZ)Z

    .line 380
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 366
    .end local v1           #arr$:[Ljava/lang/String;
    .end local v2           #i$:I
    .end local v3           #len$:I
    .end local v5           #pkgName:Ljava/lang/String;
    :cond_1
    if-eqz v6, :cond_2

    .line 367
    const-string v8, "android.intent.extra.PACKAGES"

    invoke-virtual {p2, v8}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 369
    :cond_2
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v7

    .line 370
    .local v7, uri:Landroid/net/Uri;
    if-nez v7, :cond_4

    .line 425
    .end local v4           #pkgList:[Ljava/lang/String;
    .end local v7           #uri:Landroid/net/Uri;
    :cond_3
    :goto_3
    return-void

    .line 373
    .restart local v4       #pkgList:[Ljava/lang/String;
    .restart local v7       #uri:Landroid/net/Uri;
    :cond_4
    invoke-virtual {v7}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v5

    .line 374
    .restart local v5       #pkgName:Ljava/lang/String;
    if-eqz v5, :cond_3

    .line 377
    new-array v4, v9, [Ljava/lang/String;

    .end local v4           #pkgList:[Ljava/lang/String;
    aput-object v5, v4, v10

    .restart local v4       #pkgList:[Ljava/lang/String;
    goto :goto_0

    .end local v7           #uri:Landroid/net/Uri;
    .restart local v1       #arr$:[Ljava/lang/String;
    .restart local v2       #i$:I
    .restart local v3       #len$:I
    :cond_5
    move v8, v10

    .line 381
    goto :goto_2

    .line 384
    .end local v1           #arr$:[Ljava/lang/String;
    .end local v2           #i$:I
    .end local v3           #len$:I
    .end local v4           #pkgList:[Ljava/lang/String;
    .end local v5           #pkgName:Ljava/lang/String;
    :cond_6
    const-string v8, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_8

    .line 387
    iget-object v8, p0, Lcom/android/server/NotificationManagerService$2;->this$0:Lcom/android/server/NotificationManagerService;

    #setter for: Lcom/android/server/NotificationManagerService;->mScreenOn:Z
    invoke-static {v8, v9}, Lcom/android/server/NotificationManagerService;->access$1202(Lcom/android/server/NotificationManagerService;Z)Z

    .line 390
    const-string v8, "STATUSBAR-NotificationService"

    const-string v9, "ACTION_SCREEN_ON"

    invoke-static {v8, v9}, Landroid/util/safelog/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 391
    iget-object v8, p0, Lcom/android/server/NotificationManagerService$2;->this$0:Lcom/android/server/NotificationManagerService;

    iget-object v8, v8, Lcom/android/server/NotificationManagerService;->mPickupPlayer:Lcom/android/server/NotificationManagerService$PickupPlayer;

    if-eqz v8, :cond_7

    .line 392
    iget-object v8, p0, Lcom/android/server/NotificationManagerService$2;->this$0:Lcom/android/server/NotificationManagerService;

    iget-object v8, v8, Lcom/android/server/NotificationManagerService;->mPickupPlayer:Lcom/android/server/NotificationManagerService$PickupPlayer;

    #calls: Lcom/android/server/NotificationManagerService$PickupPlayer;->unregister()V
    invoke-static {v8}, Lcom/android/server/NotificationManagerService$PickupPlayer;->access$1300(Lcom/android/server/NotificationManagerService$PickupPlayer;)V

    .line 399
    :goto_4
    iget-object v8, p0, Lcom/android/server/NotificationManagerService$2;->this$0:Lcom/android/server/NotificationManagerService;

    #calls: Lcom/android/server/NotificationManagerService;->updateNotificationPulse()V
    invoke-static {v8}, Lcom/android/server/NotificationManagerService;->access$1400(Lcom/android/server/NotificationManagerService;)V

    goto :goto_3

    .line 394
    :cond_7
    const-string v8, "STATUSBAR-NotificationService"

    const-string v9, "mPickupPlayer == null"

    invoke-static {v8, v9}, Landroid/util/safelog/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 401
    :cond_8
    const-string v8, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_a

    .line 402
    iget-object v8, p0, Lcom/android/server/NotificationManagerService$2;->this$0:Lcom/android/server/NotificationManagerService;

    #setter for: Lcom/android/server/NotificationManagerService;->mScreenOn:Z
    invoke-static {v8, v10}, Lcom/android/server/NotificationManagerService;->access$1202(Lcom/android/server/NotificationManagerService;Z)Z

    .line 405
    const-string v8, "STATUSBAR-NotificationService"

    const-string v9, "ACTION_SCREEN_OFF"

    invoke-static {v8, v9}, Landroid/util/safelog/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 406
    iget-object v8, p0, Lcom/android/server/NotificationManagerService$2;->this$0:Lcom/android/server/NotificationManagerService;

    iget-object v8, v8, Lcom/android/server/NotificationManagerService;->mPickupPlayer:Lcom/android/server/NotificationManagerService$PickupPlayer;

    if-eqz v8, :cond_9

    .line 407
    iget-object v8, p0, Lcom/android/server/NotificationManagerService$2;->this$0:Lcom/android/server/NotificationManagerService;

    iget-object v8, v8, Lcom/android/server/NotificationManagerService;->mPickupPlayer:Lcom/android/server/NotificationManagerService$PickupPlayer;

    #calls: Lcom/android/server/NotificationManagerService$PickupPlayer;->register()V
    invoke-static {v8}, Lcom/android/server/NotificationManagerService$PickupPlayer;->access$1500(Lcom/android/server/NotificationManagerService$PickupPlayer;)V

    .line 414
    :goto_5
    iget-object v8, p0, Lcom/android/server/NotificationManagerService$2;->this$0:Lcom/android/server/NotificationManagerService;

    #calls: Lcom/android/server/NotificationManagerService;->updateNotificationPulse()V
    invoke-static {v8}, Lcom/android/server/NotificationManagerService;->access$1400(Lcom/android/server/NotificationManagerService;)V

    goto :goto_3

    .line 409
    :cond_9
    const-string v8, "STATUSBAR-NotificationService"

    const-string v9, "mPickupPlayer == null"

    invoke-static {v8, v9}, Landroid/util/safelog/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 416
    :cond_a
    const-string v8, "android.intent.action.PHONE_STATE"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_b

    .line 417
    iget-object v8, p0, Lcom/android/server/NotificationManagerService$2;->this$0:Lcom/android/server/NotificationManagerService;

    const-string v9, "state"

    invoke-virtual {p2, v9}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    sget-object v10, Landroid/telephony/TelephonyManager;->EXTRA_STATE_OFFHOOK:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    #setter for: Lcom/android/server/NotificationManagerService;->mInCall:Z
    invoke-static {v8, v9}, Lcom/android/server/NotificationManagerService;->access$1602(Lcom/android/server/NotificationManagerService;Z)Z

    .line 419
    iget-object v8, p0, Lcom/android/server/NotificationManagerService$2;->this$0:Lcom/android/server/NotificationManagerService;

    #calls: Lcom/android/server/NotificationManagerService;->updateNotificationPulse()V
    invoke-static {v8}, Lcom/android/server/NotificationManagerService;->access$1400(Lcom/android/server/NotificationManagerService;)V

    goto/16 :goto_3

    .line 420
    :cond_b
    const-string v8, "android.intent.action.USER_PRESENT"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 421
    const-string v8, "STATUSBAR-NotificationService"

    const-string v9, "ACTION_USER_PRESENT"

    invoke-static {v8, v9}, Landroid/util/safelog/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 423
    iget-object v8, p0, Lcom/android/server/NotificationManagerService$2;->this$0:Lcom/android/server/NotificationManagerService;

    #getter for: Lcom/android/server/NotificationManagerService;->mNotificationLight:Lcom/android/server/LightsService$Light;
    invoke-static {v8}, Lcom/android/server/NotificationManagerService;->access$1700(Lcom/android/server/NotificationManagerService;)Lcom/android/server/LightsService$Light;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/server/LightsService$Light;->turnOff()V

    goto/16 :goto_3
.end method
