.class public Lcom/android/server/sec/MWPackageItem$InnerItem;
.super Ljava/lang/Object;
.source "MWPackageItem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/sec/MWPackageItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "InnerItem"
.end annotation


# instance fields
.field private innerAction:Landroid/sec/multiwindow/IMultiWindowAction;

.field private innerClassName:Ljava/lang/String;

.field private innerParentClassName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "sPcn"
    .parameter "sCcn"

    .prologue
    .line 97
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/sec/MWPackageItem$InnerItem;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/sec/multiwindow/IMultiWindowAction;)V

    .line 98
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Landroid/sec/multiwindow/IMultiWindowAction;)V
    .locals 0
    .parameter "sPcn"
    .parameter "sCcn"
    .parameter "iAc"

    .prologue
    .line 100
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 101
    iput-object p1, p0, Lcom/android/server/sec/MWPackageItem$InnerItem;->innerParentClassName:Ljava/lang/String;

    .line 102
    iput-object p2, p0, Lcom/android/server/sec/MWPackageItem$InnerItem;->innerClassName:Ljava/lang/String;

    .line 103
    iput-object p3, p0, Lcom/android/server/sec/MWPackageItem$InnerItem;->innerAction:Landroid/sec/multiwindow/IMultiWindowAction;

    .line 104
    return-void
.end method


# virtual methods
.method public final getChildClassName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lcom/android/server/sec/MWPackageItem$InnerItem;->innerClassName:Ljava/lang/String;

    return-object v0
.end method

.method public final getMultiWindowAction()Landroid/sec/multiwindow/IMultiWindowAction;
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lcom/android/server/sec/MWPackageItem$InnerItem;->innerAction:Landroid/sec/multiwindow/IMultiWindowAction;

    return-object v0
.end method

.method public final getParentClassName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lcom/android/server/sec/MWPackageItem$InnerItem;->innerParentClassName:Ljava/lang/String;

    return-object v0
.end method

.method public setMultiWindowAction(Landroid/sec/multiwindow/IMultiWindowAction;)Z
    .locals 1
    .parameter "iAc"

    .prologue
    .line 115
    iput-object p1, p0, Lcom/android/server/sec/MWPackageItem$InnerItem;->innerAction:Landroid/sec/multiwindow/IMultiWindowAction;

    .line 116
    const/4 v0, 0x1

    return v0
.end method
