.class final Landroid/sec/multiwindow/MultiWindowObject$1;
.super Ljava/lang/Object;
.source "MultiWindowObject.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/sec/multiwindow/MultiWindowObject;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Landroid/sec/multiwindow/MultiWindowObject;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 205
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/sec/multiwindow/MultiWindowObject;
    .locals 1
    .parameter "source"

    .prologue
    .line 207
    new-instance v0, Landroid/sec/multiwindow/MultiWindowObject;

    invoke-direct {v0, p1}, Landroid/sec/multiwindow/MultiWindowObject;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 205
    invoke-virtual {p0, p1}, Landroid/sec/multiwindow/MultiWindowObject$1;->createFromParcel(Landroid/os/Parcel;)Landroid/sec/multiwindow/MultiWindowObject;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Landroid/sec/multiwindow/MultiWindowObject;
    .locals 1
    .parameter "size"

    .prologue
    .line 211
    new-array v0, p1, [Landroid/sec/multiwindow/MultiWindowObject;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 205
    invoke-virtual {p0, p1}, Landroid/sec/multiwindow/MultiWindowObject$1;->newArray(I)[Landroid/sec/multiwindow/MultiWindowObject;

    move-result-object v0

    return-object v0
.end method
