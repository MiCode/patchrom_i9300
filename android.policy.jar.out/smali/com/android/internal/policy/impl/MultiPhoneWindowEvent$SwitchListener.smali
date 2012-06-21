.class Lcom/android/internal/policy/impl/MultiPhoneWindowEvent$SwitchListener;
.super Ljava/lang/Object;
.source "MultiPhoneWindowEvent.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/MultiPhoneWindowEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SwitchListener"
.end annotation


# static fields
.field private static final TAG_Modify:Ljava/lang/String; = "SwitchListener"


# instance fields
.field private mOwner:Lcom/android/internal/policy/impl/PhoneWindow;


# direct methods
.method public constructor <init>(Lcom/android/internal/policy/impl/PhoneWindow;)V
    .locals 0
    .parameter "owner"

    .prologue
    .line 456
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 457
    iput-object p1, p0, Lcom/android/internal/policy/impl/MultiPhoneWindowEvent$SwitchListener;->mOwner:Lcom/android/internal/policy/impl/PhoneWindow;

    .line 458
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 9
    .parameter "v"

    .prologue
    .line 462
    const-string v7, "SwitchListener"

    const-string v8, "[onClick] "

    invoke-static {v7, v8}, Landroid/sec/multiwindow/MWlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 463
    iget-object v7, p0, Lcom/android/internal/policy/impl/MultiPhoneWindowEvent$SwitchListener;->mOwner:Lcom/android/internal/policy/impl/PhoneWindow;

    invoke-virtual {v7}, Lcom/android/internal/policy/impl/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 464
    .local v2, context:Landroid/content/Context;
    iget-object v7, p0, Lcom/android/internal/policy/impl/MultiPhoneWindowEvent$SwitchListener;->mOwner:Lcom/android/internal/policy/impl/PhoneWindow;

    invoke-virtual {v7}, Lcom/android/internal/policy/impl/PhoneWindow;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v7

    iget v6, v7, Landroid/view/WindowManager$LayoutParams;->windowMode:I

    .line 465
    .local v6, winMode:I
    and-int/lit8 v6, v6, 0x1

    .line 466
    if-eqz v6, :cond_0

    .line 476
    :goto_0
    return-void

    .line 469
    :cond_0
    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 470
    .local v4, packageName:Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 472
    .local v0, className:Ljava/lang/String;
    iget-object v7, p0, Lcom/android/internal/policy/impl/MultiPhoneWindowEvent$SwitchListener;->mOwner:Lcom/android/internal/policy/impl/PhoneWindow;

    invoke-virtual {v7}, Lcom/android/internal/policy/impl/PhoneWindow;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v5

    .line 473
    .local v5, par:Landroid/view/WindowManager$LayoutParams;
    new-instance v1, Landroid/content/ComponentName;

    invoke-direct {v1, v4, v0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 474
    .local v1, componentName:Landroid/content/ComponentName;
    invoke-static {v2}, Landroid/sec/multiwindow/MultiWindowManager;->getInstance(Landroid/content/Context;)Landroid/sec/multiwindow/IMultiWindowManager;

    move-result-object v3

    .line 475
    .local v3, mwm:Landroid/sec/multiwindow/IMultiWindowManager;
    invoke-interface {v3}, Landroid/sec/multiwindow/IMultiWindowManager;->exchangeSplitScreens()Z

    goto :goto_0
.end method
