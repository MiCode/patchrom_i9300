.class Lcom/android/internal/policy/impl/MultiPhoneWindowEvent$ModifyLayoutListenerForSplit;
.super Ljava/lang/Object;
.source "MultiPhoneWindowEvent.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/MultiPhoneWindowEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ModifyLayoutListenerForSplit"
.end annotation


# static fields
.field private static final TAG_Modify:Ljava/lang/String; = "ModifyLayoutListenerForSplit"


# instance fields
.field private mSelf:Lcom/android/internal/policy/impl/MultiPhoneWindowEvent;


# direct methods
.method public constructor <init>(Lcom/android/internal/policy/impl/MultiPhoneWindowEvent;)V
    .locals 0
    .parameter "owner"

    .prologue
    .line 485
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 486
    iput-object p1, p0, Lcom/android/internal/policy/impl/MultiPhoneWindowEvent$ModifyLayoutListenerForSplit;->mSelf:Lcom/android/internal/policy/impl/MultiPhoneWindowEvent;

    .line 487
    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 9
    .parameter "v"

    .prologue
    .line 491
    iget-object v6, p0, Lcom/android/internal/policy/impl/MultiPhoneWindowEvent$ModifyLayoutListenerForSplit;->mSelf:Lcom/android/internal/policy/impl/MultiPhoneWindowEvent;

    #getter for: Lcom/android/internal/policy/impl/MultiPhoneWindowEvent;->mOwner:Lcom/android/internal/policy/impl/PhoneWindow;
    invoke-static {v6}, Lcom/android/internal/policy/impl/MultiPhoneWindowEvent;->access$000(Lcom/android/internal/policy/impl/MultiPhoneWindowEvent;)Lcom/android/internal/policy/impl/PhoneWindow;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/internal/policy/impl/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 492
    .local v2, context:Landroid/content/Context;
    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    .line 493
    .local v5, packageName:Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 494
    .local v0, className:Ljava/lang/String;
    const-string v6, "ModifyLayoutListenerForSplit"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "pkg : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "   className:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/sec/multiwindow/MWlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 496
    new-instance v1, Landroid/content/ComponentName;

    invoke-direct {v1, v5, v0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 497
    .local v1, componentName:Landroid/content/ComponentName;
    invoke-static {v2}, Landroid/sec/multiwindow/MultiWindowManager;->getInstance(Landroid/content/Context;)Landroid/sec/multiwindow/IMultiWindowManager;

    move-result-object v4

    .line 498
    .local v4, mwm:Landroid/sec/multiwindow/IMultiWindowManager;
    invoke-interface {v4, v1}, Landroid/sec/multiwindow/IMultiWindowManager;->getWindowInstance(Landroid/content/ComponentName;)Landroid/sec/multiwindow/IMultiWindow;

    move-result-object v3

    .line 501
    .local v3, imw:Landroid/sec/multiwindow/IMultiWindow;
    invoke-interface {v3}, Landroid/sec/multiwindow/IMultiWindow;->isMaximized()Z

    move-result v6

    if-nez v6, :cond_0

    .line 502
    invoke-interface {v3}, Landroid/sec/multiwindow/IMultiWindow;->maximize()Z

    .line 506
    :goto_0
    const/4 v6, 0x0

    return v6

    .line 504
    :cond_0
    invoke-interface {v3}, Landroid/sec/multiwindow/IMultiWindow;->restore()Z

    goto :goto_0
.end method
