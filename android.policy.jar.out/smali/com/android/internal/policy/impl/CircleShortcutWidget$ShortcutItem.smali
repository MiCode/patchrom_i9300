.class public Lcom/android/internal/policy/impl/CircleShortcutWidget$ShortcutItem;
.super Landroid/widget/LinearLayout;
.source "CircleShortcutWidget.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/CircleShortcutWidget;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ShortcutItem"
.end annotation


# instance fields
.field private mIcon:Lcom/android/internal/policy/impl/CircleShortcutWidget$ShortcutImageView;

.field private mIntent:Landroid/content/Intent;

.field private mIsDummy:Z

.field private mItemPadding:I

.field final synthetic this$0:Lcom/android/internal/policy/impl/CircleShortcutWidget;


# direct methods
.method public constructor <init>(Lcom/android/internal/policy/impl/CircleShortcutWidget;Landroid/content/Context;Landroid/content/ComponentName;Z)V
    .locals 11
    .parameter
    .parameter "context"
    .parameter "cn"
    .parameter "isNotDummy"

    .prologue
    const/4 v10, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 440
    iput-object p1, p0, Lcom/android/internal/policy/impl/CircleShortcutWidget$ShortcutItem;->this$0:Lcom/android/internal/policy/impl/CircleShortcutWidget;

    .line 441
    invoke-direct {p0, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 443
    if-nez p4, :cond_2

    move v5, v6

    :goto_0
    iput-boolean v5, p0, Lcom/android/internal/policy/impl/CircleShortcutWidget$ShortcutItem;->mIsDummy:Z

    .line 445
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    .line 446
    .local v2, inflater:Landroid/view/LayoutInflater;
    const v5, 0x1090059

    invoke-virtual {v2, v5, p0, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 448
    const v5, 0x10202fb

    invoke-virtual {p0, v5}, Lcom/android/internal/policy/impl/CircleShortcutWidget$ShortcutItem;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    .line 449
    .local v3, mRoot:Landroid/widget/LinearLayout;
    const v5, 0x1020006

    invoke-virtual {p0, v5}, Lcom/android/internal/policy/impl/CircleShortcutWidget$ShortcutItem;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/android/internal/policy/impl/CircleShortcutWidget$ShortcutImageView;

    iput-object v5, p0, Lcom/android/internal/policy/impl/CircleShortcutWidget$ShortcutItem;->mIcon:Lcom/android/internal/policy/impl/CircleShortcutWidget$ShortcutImageView;

    .line 451
    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getPaddingLeft()I

    move-result v5

    iput v5, p0, Lcom/android/internal/policy/impl/CircleShortcutWidget$ShortcutItem;->mItemPadding:I

    .line 455
    iget-object v5, p0, Lcom/android/internal/policy/impl/CircleShortcutWidget$ShortcutItem;->mIcon:Lcom/android/internal/policy/impl/CircleShortcutWidget$ShortcutImageView;

    invoke-virtual {v5}, Lcom/android/internal/policy/impl/CircleShortcutWidget$ShortcutImageView;->getWidth()I

    move-result v5

    #setter for: Lcom/android/internal/policy/impl/CircleShortcutWidget;->mIconHeight:I
    invoke-static {p1, v5}, Lcom/android/internal/policy/impl/CircleShortcutWidget;->access$902(Lcom/android/internal/policy/impl/CircleShortcutWidget;I)I

    move-result v5

    #setter for: Lcom/android/internal/policy/impl/CircleShortcutWidget;->mIconWidth:I
    invoke-static {p1, v5}, Lcom/android/internal/policy/impl/CircleShortcutWidget;->access$802(Lcom/android/internal/policy/impl/CircleShortcutWidget;I)I

    .line 459
    #getter for: Lcom/android/internal/policy/impl/CircleShortcutWidget;->DBG:Z
    invoke-static {p1}, Lcom/android/internal/policy/impl/CircleShortcutWidget;->access$300(Lcom/android/internal/policy/impl/CircleShortcutWidget;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 460
    #getter for: Lcom/android/internal/policy/impl/CircleShortcutWidget;->TAG:Ljava/lang/String;
    invoke-static {p1}, Lcom/android/internal/policy/impl/CircleShortcutWidget;->access$100(Lcom/android/internal/policy/impl/CircleShortcutWidget;)Ljava/lang/String;

    move-result-object v5

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "mIconWidth ="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    #getter for: Lcom/android/internal/policy/impl/CircleShortcutWidget;->mIconWidth:I
    invoke-static {p1}, Lcom/android/internal/policy/impl/CircleShortcutWidget;->access$800(Lcom/android/internal/policy/impl/CircleShortcutWidget;)I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 462
    :cond_0
    #calls: Lcom/android/internal/policy/impl/CircleShortcutWidget;->getLaunchIntent(Landroid/content/ComponentName;)Landroid/content/Intent;
    invoke-static {p1, p3}, Lcom/android/internal/policy/impl/CircleShortcutWidget;->access$1000(Lcom/android/internal/policy/impl/CircleShortcutWidget;Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v5

    iput-object v5, p0, Lcom/android/internal/policy/impl/CircleShortcutWidget$ShortcutItem;->mIntent:Landroid/content/Intent;

    .line 463
    iget-object v5, p0, Lcom/android/internal/policy/impl/CircleShortcutWidget$ShortcutItem;->mIntent:Landroid/content/Intent;

    if-nez v5, :cond_3

    .line 464
    #getter for: Lcom/android/internal/policy/impl/CircleShortcutWidget;->DBG:Z
    invoke-static {p1}, Lcom/android/internal/policy/impl/CircleShortcutWidget;->access$300(Lcom/android/internal/policy/impl/CircleShortcutWidget;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 465
    #getter for: Lcom/android/internal/policy/impl/CircleShortcutWidget;->TAG:Ljava/lang/String;
    invoke-static {p1}, Lcom/android/internal/policy/impl/CircleShortcutWidget;->access$100(Lcom/android/internal/policy/impl/CircleShortcutWidget;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "There\'s no activity"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 466
    :cond_1
    iput-object v10, p0, Lcom/android/internal/policy/impl/CircleShortcutWidget$ShortcutItem;->mIntent:Landroid/content/Intent;

    .line 505
    :goto_1
    return-void

    .end local v2           #inflater:Landroid/view/LayoutInflater;
    .end local v3           #mRoot:Landroid/widget/LinearLayout;
    :cond_2
    move v5, v7

    .line 443
    goto :goto_0

    .line 471
    .restart local v2       #inflater:Landroid/view/LayoutInflater;
    .restart local v3       #mRoot:Landroid/widget/LinearLayout;
    :cond_3
    #getter for: Lcom/android/internal/policy/impl/CircleShortcutWidget;->mPm:Landroid/content/pm/PackageManager;
    invoke-static {p1}, Lcom/android/internal/policy/impl/CircleShortcutWidget;->access$1100(Lcom/android/internal/policy/impl/CircleShortcutWidget;)Landroid/content/pm/PackageManager;

    move-result-object v5

    iget-object v8, p0, Lcom/android/internal/policy/impl/CircleShortcutWidget$ShortcutItem;->mIntent:Landroid/content/Intent;

    invoke-virtual {v5, v8, v7}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v4

    .line 472
    .local v4, resolveInfo:Landroid/content/pm/ResolveInfo;
    if-nez v4, :cond_5

    .line 473
    #getter for: Lcom/android/internal/policy/impl/CircleShortcutWidget;->DBG:Z
    invoke-static {p1}, Lcom/android/internal/policy/impl/CircleShortcutWidget;->access$300(Lcom/android/internal/policy/impl/CircleShortcutWidget;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 474
    #getter for: Lcom/android/internal/policy/impl/CircleShortcutWidget;->TAG:Ljava/lang/String;
    invoke-static {p1}, Lcom/android/internal/policy/impl/CircleShortcutWidget;->access$100(Lcom/android/internal/policy/impl/CircleShortcutWidget;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "There\'s no activity"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 475
    :cond_4
    iput-object v10, p0, Lcom/android/internal/policy/impl/CircleShortcutWidget$ShortcutItem;->mIntent:Landroid/content/Intent;

    goto :goto_1

    .line 478
    :cond_5
    iget-object v5, p0, Lcom/android/internal/policy/impl/CircleShortcutWidget$ShortcutItem;->mIcon:Lcom/android/internal/policy/impl/CircleShortcutWidget$ShortcutImageView;

    invoke-virtual {p1, v4}, Lcom/android/internal/policy/impl/CircleShortcutWidget;->getFullResIcon(Landroid/content/pm/ResolveInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    #calls: Lcom/android/internal/policy/impl/CircleShortcutWidget;->createIconThumbnail(Landroid/graphics/drawable/Drawable;Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
    invoke-static {p1, v7, p2}, Lcom/android/internal/policy/impl/CircleShortcutWidget;->access$1200(Lcom/android/internal/policy/impl/CircleShortcutWidget;Landroid/graphics/drawable/Drawable;Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-virtual {v5, v7}, Lcom/android/internal/policy/impl/CircleShortcutWidget$ShortcutImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 479
    iget-object v5, p0, Lcom/android/internal/policy/impl/CircleShortcutWidget$ShortcutItem;->mIcon:Lcom/android/internal/policy/impl/CircleShortcutWidget$ShortcutImageView;

    sget-object v7, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v5, v7}, Lcom/android/internal/policy/impl/CircleShortcutWidget$ShortcutImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 482
    :try_start_0
    #getter for: Lcom/android/internal/policy/impl/CircleShortcutWidget;->mPm:Landroid/content/pm/PackageManager;
    invoke-static {p1}, Lcom/android/internal/policy/impl/CircleShortcutWidget;->access$1100(Lcom/android/internal/policy/impl/CircleShortcutWidget;)Landroid/content/pm/PackageManager;

    move-result-object v5

    const/4 v7, 0x0

    invoke-virtual {v5, p3, v7}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v0

    .line 484
    .local v0, aInfo:Landroid/content/pm/ActivityInfo;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #getter for: Lcom/android/internal/policy/impl/CircleShortcutWidget;->mPm:Landroid/content/pm/PackageManager;
    invoke-static {p1}, Lcom/android/internal/policy/impl/CircleShortcutWidget;->access$1100(Lcom/android/internal/policy/impl/CircleShortcutWidget;)Landroid/content/pm/PackageManager;

    move-result-object v7

    invoke-virtual {v0, v7}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, ". "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v7, p0, Lcom/android/internal/policy/impl/CircleShortcutWidget$ShortcutItem;->mContext:Landroid/content/Context;

    const v8, 0x1040609

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/internal/policy/impl/CircleShortcutWidget$ShortcutItem;->setContentDescription(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 504
    .end local v0           #aInfo:Landroid/content/pm/ActivityInfo;
    :goto_2
    invoke-virtual {p0, v6}, Lcom/android/internal/policy/impl/CircleShortcutWidget$ShortcutItem;->setFocusableInTouchMode(Z)V

    goto :goto_1

    .line 486
    :catch_0
    move-exception v1

    .line 488
    .local v1, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_2
.end method

.method static synthetic access$200(Lcom/android/internal/policy/impl/CircleShortcutWidget$ShortcutItem;)Landroid/content/Intent;
    .locals 1
    .parameter "x0"

    .prologue
    .line 433
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleShortcutWidget$ShortcutItem;->mIntent:Landroid/content/Intent;

    return-object v0
.end method


# virtual methods
.method public getItemPadding()I
    .locals 1

    .prologue
    .line 508
    iget v0, p0, Lcom/android/internal/policy/impl/CircleShortcutWidget$ShortcutItem;->mItemPadding:I

    return v0
.end method

.method public isDummy()Z
    .locals 1

    .prologue
    .line 512
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/CircleShortcutWidget$ShortcutItem;->mIsDummy:Z

    return v0
.end method

.method public onPressed(Z)V
    .locals 1
    .parameter "pressed"

    .prologue
    .line 516
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleShortcutWidget$ShortcutItem;->mIcon:Lcom/android/internal/policy/impl/CircleShortcutWidget$ShortcutImageView;

    invoke-virtual {v0, p1}, Lcom/android/internal/policy/impl/CircleShortcutWidget$ShortcutImageView;->onPressed(Z)V

    .line 517
    return-void
.end method

.method public setOpacity(D)V
    .locals 1
    .parameter "distanceRatio"

    .prologue
    .line 520
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleShortcutWidget$ShortcutItem;->mIcon:Lcom/android/internal/policy/impl/CircleShortcutWidget$ShortcutImageView;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/policy/impl/CircleShortcutWidget$ShortcutImageView;->setDistanceRatio(D)V

    .line 521
    return-void
.end method
