.class public Landroid/sec/multiwindow/MultiWindowObject;
.super Ljava/lang/Object;
.source "MultiWindowObject.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/sec/multiwindow/MultiWindowObject$MultiWindowFlag;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/sec/multiwindow/MultiWindowObject;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mClassName:Ljava/lang/String;

.field private mFixedSizeList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/graphics/Point;",
            ">;"
        }
    .end annotation
.end field

.field private mFullScreenLock:Landroid/sec/multiwindow/MultiWindowObject$MultiWindowFlag;

.field private mPackageName:Ljava/lang/String;

.field private mRect:Landroid/graphics/Rect;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 205
    new-instance v0, Landroid/sec/multiwindow/MultiWindowObject$1;

    invoke-direct {v0}, Landroid/sec/multiwindow/MultiWindowObject$1;-><init>()V

    sput-object v0, Landroid/sec/multiwindow/MultiWindowObject;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/content/ComponentName;)V
    .locals 3
    .parameter "className"

    .prologue
    .line 77
    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Landroid/sec/multiwindow/MultiWindowObject$MultiWindowFlag;->FALSE:Landroid/sec/multiwindow/MultiWindowObject$MultiWindowFlag;

    invoke-direct {p0, v0, v1, v2}, Landroid/sec/multiwindow/MultiWindowObject;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/sec/multiwindow/MultiWindowObject$MultiWindowFlag;)V

    .line 78
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .parameter "source"

    .prologue
    .line 68
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 62
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/sec/multiwindow/MultiWindowObject;->mFixedSizeList:Ljava/util/List;

    .line 69
    invoke-virtual {p0, p1}, Landroid/sec/multiwindow/MultiWindowObject;->readFromSource(Landroid/os/Parcel;)V

    .line 70
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Landroid/sec/multiwindow/MultiWindowObject$MultiWindowFlag;)V
    .locals 1
    .parameter "appClass"
    .parameter "appPackage"
    .parameter "bLock"

    .prologue
    .line 87
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 62
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/sec/multiwindow/MultiWindowObject;->mFixedSizeList:Ljava/util/List;

    .line 88
    iput-object p1, p0, Landroid/sec/multiwindow/MultiWindowObject;->mClassName:Ljava/lang/String;

    .line 89
    iput-object p2, p0, Landroid/sec/multiwindow/MultiWindowObject;->mPackageName:Ljava/lang/String;

    .line 91
    iput-object p3, p0, Landroid/sec/multiwindow/MultiWindowObject;->mFullScreenLock:Landroid/sec/multiwindow/MultiWindowObject$MultiWindowFlag;

    .line 92
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/sec/multiwindow/MultiWindowObject;->mRect:Landroid/graphics/Rect;

    .line 93
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 216
    const/4 v0, 0x0

    return v0
.end method

.method public getClassName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 180
    iget-object v0, p0, Landroid/sec/multiwindow/MultiWindowObject;->mClassName:Ljava/lang/String;

    return-object v0
.end method

.method public getFixedSizeList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/graphics/Point;",
            ">;"
        }
    .end annotation

    .prologue
    .line 148
    iget-object v0, p0, Landroid/sec/multiwindow/MultiWindowObject;->mFixedSizeList:Ljava/util/List;

    return-object v0
.end method

.method public getFullScreenLock()Landroid/sec/multiwindow/MultiWindowObject$MultiWindowFlag;
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Landroid/sec/multiwindow/MultiWindowObject;->mFullScreenLock:Landroid/sec/multiwindow/MultiWindowObject$MultiWindowFlag;

    return-object v0
.end method

.method public getMultiWindowRect()Landroid/graphics/Rect;
    .locals 1

    .prologue
    .line 168
    iget-object v0, p0, Landroid/sec/multiwindow/MultiWindowObject;->mRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 176
    iget-object v0, p0, Landroid/sec/multiwindow/MultiWindowObject;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public hasFixedSizeList()Z
    .locals 2

    .prologue
    .line 140
    const/4 v0, 0x0

    .line 142
    .local v0, result:Z
    iget-object v1, p0, Landroid/sec/multiwindow/MultiWindowObject;->mFixedSizeList:Ljava/util/List;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/sec/multiwindow/MultiWindowObject;->mFixedSizeList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 143
    const/4 v0, 0x1

    .line 144
    :cond_0
    return v0
.end method

.method public isFullScreen()Z
    .locals 2

    .prologue
    .line 132
    iget-object v0, p0, Landroid/sec/multiwindow/MultiWindowObject;->mFullScreenLock:Landroid/sec/multiwindow/MultiWindowObject$MultiWindowFlag;

    sget-object v1, Landroid/sec/multiwindow/MultiWindowObject$MultiWindowFlag;->TRUE:Landroid/sec/multiwindow/MultiWindowObject$MultiWindowFlag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected readFromSource(Landroid/os/Parcel;)V
    .locals 2
    .parameter "source"

    .prologue
    .line 193
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/sec/multiwindow/MultiWindowObject;->mPackageName:Ljava/lang/String;

    .line 194
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/sec/multiwindow/MultiWindowObject;->mClassName:Ljava/lang/String;

    .line 195
    const-class v0, Landroid/graphics/Rect;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    iput-object v0, p0, Landroid/sec/multiwindow/MultiWindowObject;->mRect:Landroid/graphics/Rect;

    .line 197
    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Landroid/sec/multiwindow/MultiWindowObject$MultiWindowFlag;

    iput-object v0, p0, Landroid/sec/multiwindow/MultiWindowObject;->mFullScreenLock:Landroid/sec/multiwindow/MultiWindowObject$MultiWindowFlag;

    .line 198
    iget-object v0, p0, Landroid/sec/multiwindow/MultiWindowObject;->mFixedSizeList:Ljava/util/List;

    sget-object v1, Landroid/graphics/Point;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readTypedList(Ljava/util/List;Landroid/os/Parcelable$Creator;)V

    .line 200
    return-void
.end method

.method public setFixedSizeList(Ljava/util/List;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/graphics/Point;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 152
    .local p1, sizeList:Ljava/util/List;,"Ljava/util/List<Landroid/graphics/Point;>;"
    iput-object p1, p0, Landroid/sec/multiwindow/MultiWindowObject;->mFixedSizeList:Ljava/util/List;

    .line 153
    return-void
.end method

.method public setFullScreenLock(Landroid/sec/multiwindow/MultiWindowObject$MultiWindowFlag;)V
    .locals 0
    .parameter "bLock"

    .prologue
    .line 116
    iput-object p1, p0, Landroid/sec/multiwindow/MultiWindowObject;->mFullScreenLock:Landroid/sec/multiwindow/MultiWindowObject$MultiWindowFlag;

    .line 117
    return-void
.end method

.method public setMultiWindowRect(Landroid/graphics/Rect;)V
    .locals 1
    .parameter "r"

    .prologue
    .line 160
    iget-object v0, p0, Landroid/sec/multiwindow/MultiWindowObject;->mRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 161
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 225
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 226
    .local v0, sb:Ljava/lang/StringBuilder;
    iget-object v1, p0, Landroid/sec/multiwindow/MultiWindowObject;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 229
    const-string v1, ", FullScreen: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 230
    iget-object v1, p0, Landroid/sec/multiwindow/MultiWindowObject;->mFullScreenLock:Landroid/sec/multiwindow/MultiWindowObject$MultiWindowFlag;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 231
    const-string v1, ", rect: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 232
    iget-object v1, p0, Landroid/sec/multiwindow/MultiWindowObject;->mRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 234
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 184
    iget-object v0, p0, Landroid/sec/multiwindow/MultiWindowObject;->mPackageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 185
    iget-object v0, p0, Landroid/sec/multiwindow/MultiWindowObject;->mClassName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 186
    iget-object v0, p0, Landroid/sec/multiwindow/MultiWindowObject;->mRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 188
    iget-object v0, p0, Landroid/sec/multiwindow/MultiWindowObject;->mFullScreenLock:Landroid/sec/multiwindow/MultiWindowObject$MultiWindowFlag;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    .line 189
    iget-object v0, p0, Landroid/sec/multiwindow/MultiWindowObject;->mFixedSizeList:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 190
    return-void
.end method
