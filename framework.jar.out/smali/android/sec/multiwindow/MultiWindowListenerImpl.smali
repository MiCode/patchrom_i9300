.class public abstract Landroid/sec/multiwindow/MultiWindowListenerImpl;
.super Ljava/lang/Object;
.source "MultiWindowListenerImpl.java"

# interfaces
.implements Landroid/sec/multiwindow/IMultiWindowListener;


# instance fields
.field private final mBinder:Landroid/sec/multiwindow/IMultiWindowListener$Stub;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 6
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 11
    new-instance v0, Landroid/sec/multiwindow/MultiWindowListenerImpl$1;

    invoke-direct {v0, p0}, Landroid/sec/multiwindow/MultiWindowListenerImpl$1;-><init>(Landroid/sec/multiwindow/MultiWindowListenerImpl;)V

    iput-object v0, p0, Landroid/sec/multiwindow/MultiWindowListenerImpl;->mBinder:Landroid/sec/multiwindow/IMultiWindowListener$Stub;

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Landroid/sec/multiwindow/MultiWindowListenerImpl;->mBinder:Landroid/sec/multiwindow/IMultiWindowListener$Stub;

    return-object v0
.end method
