.class public abstract Lcom/sec/android/ims/IMSEventListener;
.super Ljava/lang/Object;
.source "IMSEventListener.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/ims/IMSEventListener$MessageData;
    }
.end annotation


# static fields
.field private static final HANDLE_EVENT:I


# instance fields
.field mHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 16
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v0, Lcom/sec/android/ims/IMSEventListener$1;

    invoke-direct {v0, p0}, Lcom/sec/android/ims/IMSEventListener$1;-><init>(Lcom/sec/android/ims/IMSEventListener;)V

    iput-object v0, p0, Lcom/sec/android/ims/IMSEventListener;->mHandler:Landroid/os/Handler;

    .line 41
    return-void
.end method


# virtual methods
.method public abstract handleEvent(IIIILjava/lang/String;)V
.end method
