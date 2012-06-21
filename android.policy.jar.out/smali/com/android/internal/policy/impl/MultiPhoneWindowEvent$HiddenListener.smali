.class Lcom/android/internal/policy/impl/MultiPhoneWindowEvent$HiddenListener;
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
    name = "HiddenListener"
.end annotation


# static fields
.field private static final TAG_Modify:Ljava/lang/String; = "HiddenListener"


# instance fields
.field private mOwner:Lcom/android/internal/policy/impl/PhoneWindow;

.field private mSelf:Lcom/android/internal/policy/impl/MultiPhoneWindowEvent;


# direct methods
.method public constructor <init>(Lcom/android/internal/policy/impl/MultiPhoneWindowEvent;)V
    .locals 1
    .parameter "self"

    .prologue
    .line 900
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 901
    iput-object p1, p0, Lcom/android/internal/policy/impl/MultiPhoneWindowEvent$HiddenListener;->mSelf:Lcom/android/internal/policy/impl/MultiPhoneWindowEvent;

    .line 902
    iget-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindowEvent$HiddenListener;->mSelf:Lcom/android/internal/policy/impl/MultiPhoneWindowEvent;

    #getter for: Lcom/android/internal/policy/impl/MultiPhoneWindowEvent;->mOwner:Lcom/android/internal/policy/impl/PhoneWindow;
    invoke-static {v0}, Lcom/android/internal/policy/impl/MultiPhoneWindowEvent;->access$000(Lcom/android/internal/policy/impl/MultiPhoneWindowEvent;)Lcom/android/internal/policy/impl/PhoneWindow;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindowEvent$HiddenListener;->mOwner:Lcom/android/internal/policy/impl/PhoneWindow;

    .line 903
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .parameter "v"

    .prologue
    .line 906
    const-string v4, "HiddenListener"

    const-string v5, "onClick of HiddenListener is called"

    invoke-static {v4, v5}, Landroid/sec/multiwindow/MWlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 907
    iget-object v4, p0, Lcom/android/internal/policy/impl/MultiPhoneWindowEvent$HiddenListener;->mOwner:Lcom/android/internal/policy/impl/PhoneWindow;

    invoke-virtual {v4}, Lcom/android/internal/policy/impl/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 909
    .local v1, context:Landroid/content/Context;
    instance-of v4, v1, Landroid/app/Activity;

    if-eqz v4, :cond_0

    .line 910
    check-cast v1, Landroid/app/Activity;

    .end local v1           #context:Landroid/content/Context;
    invoke-virtual {v1}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v0

    .line 918
    .local v0, className:Landroid/content/ComponentName;
    :goto_0
    iget-object v4, p0, Lcom/android/internal/policy/impl/MultiPhoneWindowEvent$HiddenListener;->mSelf:Lcom/android/internal/policy/impl/MultiPhoneWindowEvent;

    #getter for: Lcom/android/internal/policy/impl/MultiPhoneWindowEvent;->mManager:Landroid/sec/multiwindow/IMultiWindowManager;
    invoke-static {v4}, Lcom/android/internal/policy/impl/MultiPhoneWindowEvent;->access$100(Lcom/android/internal/policy/impl/MultiPhoneWindowEvent;)Landroid/sec/multiwindow/IMultiWindowManager;

    move-result-object v4

    invoke-interface {v4, v0}, Landroid/sec/multiwindow/IMultiWindowManager;->getWindowInstance(Landroid/content/ComponentName;)Landroid/sec/multiwindow/IMultiWindow;

    move-result-object v2

    .line 919
    .local v2, imw:Landroid/sec/multiwindow/IMultiWindow;
    invoke-interface {v2}, Landroid/sec/multiwindow/IMultiWindow;->minimize()Z

    .line 921
    return-void

    .line 912
    .end local v0           #className:Landroid/content/ComponentName;
    .end local v2           #imw:Landroid/sec/multiwindow/IMultiWindow;
    .restart local v1       #context:Landroid/content/Context;
    :cond_0
    invoke-virtual {v1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    iget-object v3, v4, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    .line 913
    .local v3, sCn:Ljava/lang/String;
    if-nez v3, :cond_1

    .line 914
    const-string v3, ""

    .line 915
    :cond_1
    new-instance v0, Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .restart local v0       #className:Landroid/content/ComponentName;
    goto :goto_0
.end method
