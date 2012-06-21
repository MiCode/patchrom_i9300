.class public Lcom/android/server/sec/FreestyleWindowModule;
.super Lcom/android/server/sec/MultiWindowModule;
.source "FreestyleWindowModule.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "FreestyleWindowModule"

.field private static mInstance:Lcom/android/server/sec/FreestyleWindowModule;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 11
    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/sec/FreestyleWindowModule;->mInstance:Lcom/android/server/sec/FreestyleWindowModule;

    return-void
.end method

.method private constructor <init>(Landroid/sec/multiwindow/MultiWindowType;Landroid/content/Context;Lcom/android/server/sec/MultiWindowActionHandler;Landroid/view/WindowManager;)V
    .locals 1
    .parameter "mwt"
    .parameter "context"
    .parameter "handler"
    .parameter "wm"

    .prologue
    .line 16
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/sec/MultiWindowModule;-><init>(Landroid/sec/multiwindow/MultiWindowType;Landroid/content/Context;Lcom/android/server/sec/MultiWindowActionHandler;Landroid/view/WindowManager;)V

    .line 17
    new-instance v0, Lcom/android/server/sec/MultiWindowList;

    invoke-direct {v0}, Lcom/android/server/sec/MultiWindowList;-><init>()V

    iput-object v0, p0, Lcom/android/server/sec/MultiWindowModule;->mAppList:Lcom/android/server/sec/MultiWindowList;

    .line 18
    return-void
.end method

.method public static getInstance(Landroid/sec/multiwindow/MultiWindowType;Landroid/content/Context;Lcom/android/server/sec/MultiWindowActionHandler;Landroid/view/WindowManager;)Lcom/android/server/sec/FreestyleWindowModule;
    .locals 1
    .parameter "mwt"
    .parameter "context"
    .parameter "handler"
    .parameter "wm"

    .prologue
    .line 23
    sget-object v0, Lcom/android/server/sec/FreestyleWindowModule;->mInstance:Lcom/android/server/sec/FreestyleWindowModule;

    if-nez v0, :cond_0

    .line 24
    new-instance v0, Lcom/android/server/sec/FreestyleWindowModule;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/server/sec/FreestyleWindowModule;-><init>(Landroid/sec/multiwindow/MultiWindowType;Landroid/content/Context;Lcom/android/server/sec/MultiWindowActionHandler;Landroid/view/WindowManager;)V

    sput-object v0, Lcom/android/server/sec/FreestyleWindowModule;->mInstance:Lcom/android/server/sec/FreestyleWindowModule;

    .line 26
    :cond_0
    sget-object v0, Lcom/android/server/sec/FreestyleWindowModule;->mInstance:Lcom/android/server/sec/FreestyleWindowModule;

    return-object v0
.end method

.method public static removeInstance()V
    .locals 1

    .prologue
    .line 30
    sget-object v0, Lcom/android/server/sec/FreestyleWindowModule;->mInstance:Lcom/android/server/sec/FreestyleWindowModule;

    if-nez v0, :cond_0

    .line 38
    :goto_0
    return-void

    .line 33
    :cond_0
    sget-object v0, Lcom/android/server/sec/FreestyleWindowModule;->mInstance:Lcom/android/server/sec/FreestyleWindowModule;

    invoke-virtual {v0}, Lcom/android/server/sec/FreestyleWindowModule;->finishAllWindow()Z

    .line 34
    sget-object v0, Lcom/android/server/sec/FreestyleWindowModule;->mInstance:Lcom/android/server/sec/FreestyleWindowModule;

    iget-object v0, v0, Lcom/android/server/sec/MultiWindowModule;->mAppList:Lcom/android/server/sec/MultiWindowList;

    if-eqz v0, :cond_1

    .line 35
    sget-object v0, Lcom/android/server/sec/FreestyleWindowModule;->mInstance:Lcom/android/server/sec/FreestyleWindowModule;

    iget-object v0, v0, Lcom/android/server/sec/MultiWindowModule;->mAppList:Lcom/android/server/sec/MultiWindowList;

    invoke-virtual {v0}, Lcom/android/server/sec/MultiWindowList;->clear()V

    .line 37
    :cond_1
    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/sec/FreestyleWindowModule;->mInstance:Lcom/android/server/sec/FreestyleWindowModule;

    goto :goto_0
.end method
