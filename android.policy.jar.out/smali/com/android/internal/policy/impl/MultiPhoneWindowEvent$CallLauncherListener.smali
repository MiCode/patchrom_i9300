.class Lcom/android/internal/policy/impl/MultiPhoneWindowEvent$CallLauncherListener;
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
    name = "CallLauncherListener"
.end annotation


# instance fields
.field private mOwner:Lcom/android/internal/policy/impl/PhoneWindow;

.field private mSelf:Lcom/android/internal/policy/impl/MultiPhoneWindowEvent;


# direct methods
.method public constructor <init>(Lcom/android/internal/policy/impl/MultiPhoneWindowEvent;)V
    .locals 1
    .parameter "self"

    .prologue
    .line 433
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 434
    iput-object p1, p0, Lcom/android/internal/policy/impl/MultiPhoneWindowEvent$CallLauncherListener;->mSelf:Lcom/android/internal/policy/impl/MultiPhoneWindowEvent;

    .line 435
    iget-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindowEvent$CallLauncherListener;->mSelf:Lcom/android/internal/policy/impl/MultiPhoneWindowEvent;

    #getter for: Lcom/android/internal/policy/impl/MultiPhoneWindowEvent;->mOwner:Lcom/android/internal/policy/impl/PhoneWindow;
    invoke-static {v0}, Lcom/android/internal/policy/impl/MultiPhoneWindowEvent;->access$000(Lcom/android/internal/policy/impl/MultiPhoneWindowEvent;)Lcom/android/internal/policy/impl/PhoneWindow;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindowEvent$CallLauncherListener;->mOwner:Lcom/android/internal/policy/impl/PhoneWindow;

    .line 436
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .parameter "v"

    .prologue
    .line 440
    iget-object v4, p0, Lcom/android/internal/policy/impl/MultiPhoneWindowEvent$CallLauncherListener;->mOwner:Lcom/android/internal/policy/impl/PhoneWindow;

    invoke-virtual {v4}, Lcom/android/internal/policy/impl/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 441
    .local v3, packageName:Ljava/lang/String;
    iget-object v4, p0, Lcom/android/internal/policy/impl/MultiPhoneWindowEvent$CallLauncherListener;->mOwner:Lcom/android/internal/policy/impl/PhoneWindow;

    invoke-virtual {v4}, Lcom/android/internal/policy/impl/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 442
    .local v0, className:Ljava/lang/String;
    new-instance v1, Landroid/content/ComponentName;

    invoke-direct {v1, v3, v0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 443
    .local v1, componentName:Landroid/content/ComponentName;
    iget-object v4, p0, Lcom/android/internal/policy/impl/MultiPhoneWindowEvent$CallLauncherListener;->mOwner:Lcom/android/internal/policy/impl/PhoneWindow;

    invoke-virtual {v4}, Lcom/android/internal/policy/impl/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 444
    .local v2, context:Landroid/content/Context;
    instance-of v4, v2, Landroid/app/Activity;

    if-eqz v4, :cond_0

    .line 445
    iget-object v4, p0, Lcom/android/internal/policy/impl/MultiPhoneWindowEvent$CallLauncherListener;->mSelf:Lcom/android/internal/policy/impl/MultiPhoneWindowEvent;

    #getter for: Lcom/android/internal/policy/impl/MultiPhoneWindowEvent;->mManager:Landroid/sec/multiwindow/IMultiWindowManager;
    invoke-static {v4}, Lcom/android/internal/policy/impl/MultiPhoneWindowEvent;->access$100(Lcom/android/internal/policy/impl/MultiPhoneWindowEvent;)Landroid/sec/multiwindow/IMultiWindowManager;

    move-result-object v4

    invoke-interface {v4, v1}, Landroid/sec/multiwindow/IMultiWindowManager;->startLauncher(Landroid/content/ComponentName;)Z

    .line 447
    :cond_0
    return-void
.end method
