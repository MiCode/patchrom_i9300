.class Landroid/widget/RemoteViews$SetLaunchPendingIntent$1;
.super Ljava/lang/Object;
.source "RemoteViews.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/RemoteViews$SetLaunchPendingIntent;->apply(Landroid/view/View;Landroid/view/ViewGroup;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/widget/RemoteViews$SetLaunchPendingIntent;


# direct methods
.method constructor <init>(Landroid/widget/RemoteViews$SetLaunchPendingIntent;)V
    .locals 0
    .parameter

    .prologue
    .line 1724
    iput-object p1, p0, Landroid/widget/RemoteViews$SetLaunchPendingIntent$1;->this$1:Landroid/widget/RemoteViews$SetLaunchPendingIntent;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 11
    .parameter "v"

    .prologue
    const/4 v5, 0x1

    const/4 v3, 0x0

    const/high16 v4, 0x3f00

    .line 1733
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/app/IActivityManager;->resumeAppSwitches()V

    .line 1736
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/app/IActivityManager;->dismissKeyguardOnNextActivity()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1743
    :goto_0
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getCompatibilityInfo()Landroid/content/res/CompatibilityInfo;

    move-result-object v1

    iget v6, v1, Landroid/content/res/CompatibilityInfo;->applicationScale:F

    .line 1745
    .local v6, appScale:F
    const/4 v1, 0x2

    new-array v8, v1, [I

    .line 1746
    .local v8, pos:[I
    invoke-virtual {p1, v8}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 1748
    new-instance v9, Landroid/graphics/Rect;

    invoke-direct {v9}, Landroid/graphics/Rect;-><init>()V

    .line 1749
    .local v9, rect:Landroid/graphics/Rect;
    aget v1, v8, v3

    int-to-float v1, v1

    mul-float/2addr v1, v6

    add-float/2addr v1, v4

    float-to-int v1, v1

    iput v1, v9, Landroid/graphics/Rect;->left:I

    .line 1750
    aget v1, v8, v5

    int-to-float v1, v1

    mul-float/2addr v1, v6

    add-float/2addr v1, v4

    float-to-int v1, v1

    iput v1, v9, Landroid/graphics/Rect;->top:I

    .line 1751
    aget v1, v8, v3

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v3

    add-int/2addr v1, v3

    int-to-float v1, v1

    mul-float/2addr v1, v6

    add-float/2addr v1, v4

    float-to-int v1, v1

    iput v1, v9, Landroid/graphics/Rect;->right:I

    .line 1752
    aget v1, v8, v5

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v3

    add-int/2addr v1, v3

    int-to-float v1, v1

    mul-float/2addr v1, v6

    add-float/2addr v1, v4

    float-to-int v1, v1

    iput v1, v9, Landroid/graphics/Rect;->bottom:I

    .line 1754
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 1755
    .local v2, intent:Landroid/content/Intent;
    invoke-virtual {v2, v9}, Landroid/content/Intent;->setSourceBounds(Landroid/graphics/Rect;)V

    .line 1758
    :try_start_1
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 1759
    .local v0, context:Landroid/content/Context;
    iget-object v1, p0, Landroid/widget/RemoteViews$SetLaunchPendingIntent$1;->this$1:Landroid/widget/RemoteViews$SetLaunchPendingIntent;

    iget-object v1, v1, Landroid/widget/RemoteViews$SetLaunchPendingIntent;->pendingIntent:Landroid/app/PendingIntent;

    invoke-virtual {v1}, Landroid/app/PendingIntent;->getIntentSender()Landroid/content/IntentSender;

    move-result-object v1

    const/high16 v3, 0x1000

    const/high16 v4, 0x1000

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->startIntentSender(Landroid/content/IntentSender;Landroid/content/Intent;III)V

    .line 1764
    const-string/jumbo v1, "statusbar"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/app/StatusBarManager;

    .line 1765
    .local v10, sbm:Landroid/app/StatusBarManager;
    invoke-virtual {v10}, Landroid/app/StatusBarManager;->collapse()V
    :try_end_1
    .catch Landroid/content/IntentSender$SendIntentException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1769
    .end local v0           #context:Landroid/content/Context;
    .end local v10           #sbm:Landroid/app/StatusBarManager;
    :goto_1
    return-void

    .line 1766
    :catch_0
    move-exception v7

    .line 1767
    .local v7, e:Landroid/content/IntentSender$SendIntentException;
    const-string v1, "RemoteViews"

    const-string v3, "Cannot send pending intent: "

    invoke-static {v1, v3, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 1737
    .end local v2           #intent:Landroid/content/Intent;
    .end local v6           #appScale:F
    .end local v7           #e:Landroid/content/IntentSender$SendIntentException;
    .end local v8           #pos:[I
    .end local v9           #rect:Landroid/graphics/Rect;
    :catch_1
    move-exception v1

    goto :goto_0
.end method
