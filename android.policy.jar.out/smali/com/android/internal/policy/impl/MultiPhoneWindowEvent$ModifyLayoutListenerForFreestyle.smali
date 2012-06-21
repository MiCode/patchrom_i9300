.class Lcom/android/internal/policy/impl/MultiPhoneWindowEvent$ModifyLayoutListenerForFreestyle;
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
    name = "ModifyLayoutListenerForFreestyle"
.end annotation


# static fields
.field private static final TAG_Modify:Ljava/lang/String; = "ModifyLayoutListenerForFreestyle"


# instance fields
.field private mSelf:Lcom/android/internal/policy/impl/MultiPhoneWindowEvent;


# direct methods
.method public constructor <init>(Lcom/android/internal/policy/impl/MultiPhoneWindowEvent;)V
    .locals 0
    .parameter "owner"

    .prologue
    .line 515
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 516
    iput-object p1, p0, Lcom/android/internal/policy/impl/MultiPhoneWindowEvent$ModifyLayoutListenerForFreestyle;->mSelf:Lcom/android/internal/policy/impl/MultiPhoneWindowEvent;

    .line 517
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 9
    .parameter "src"

    .prologue
    .line 521
    iget-object v6, p0, Lcom/android/internal/policy/impl/MultiPhoneWindowEvent$ModifyLayoutListenerForFreestyle;->mSelf:Lcom/android/internal/policy/impl/MultiPhoneWindowEvent;

    #getter for: Lcom/android/internal/policy/impl/MultiPhoneWindowEvent;->mOwner:Lcom/android/internal/policy/impl/PhoneWindow;
    invoke-static {v6}, Lcom/android/internal/policy/impl/MultiPhoneWindowEvent;->access$000(Lcom/android/internal/policy/impl/MultiPhoneWindowEvent;)Lcom/android/internal/policy/impl/PhoneWindow;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/internal/policy/impl/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 522
    .local v2, context:Landroid/content/Context;
    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    .line 523
    .local v5, packageName:Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 524
    .local v0, className:Ljava/lang/String;
    const-string v6, "ModifyLayoutListenerForFreestyle"

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

    .line 526
    new-instance v1, Landroid/content/ComponentName;

    invoke-direct {v1, v5, v0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 527
    .local v1, componentName:Landroid/content/ComponentName;
    invoke-static {v2}, Landroid/sec/multiwindow/MultiWindowManager;->getInstance(Landroid/content/Context;)Landroid/sec/multiwindow/IMultiWindowManager;

    move-result-object v4

    .line 528
    .local v4, mwm:Landroid/sec/multiwindow/IMultiWindowManager;
    invoke-interface {v4, v1}, Landroid/sec/multiwindow/IMultiWindowManager;->getWindowInstance(Landroid/content/ComponentName;)Landroid/sec/multiwindow/IMultiWindow;

    move-result-object v3

    .line 530
    .local v3, imw:Landroid/sec/multiwindow/IMultiWindow;
    invoke-interface {v3}, Landroid/sec/multiwindow/IMultiWindow;->isMaximized()Z

    move-result v6

    if-nez v6, :cond_0

    .line 531
    invoke-interface {v3}, Landroid/sec/multiwindow/IMultiWindow;->maximize()Z

    .line 535
    :goto_0
    return-void

    .line 533
    :cond_0
    invoke-interface {v3}, Landroid/sec/multiwindow/IMultiWindow;->restore()Z

    goto :goto_0
.end method
