.class public final Lcom/android/server/sec/MWClassItem;
.super Ljava/lang/Object;
.source "MWClassItem.java"


# static fields
.field private static final VISIBLE_FUNC_CALLE:I = 0x8

.field public static final VISIBLE_INVISIBLE_PAUSE:I = 0x4

.field public static final VISIBLE_RESUME:I = 0x1


# instance fields
.field private mClassName:Ljava/lang/String;

.field private mMultiWindowAction:Landroid/sec/multiwindow/IMultiWindowAction;

.field private mMultiWindowVisibleFlag:I

.field private mTaskId:I


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .parameter "className"

    .prologue
    .line 41
    const/4 v0, 0x0

    const/4 v1, -0x1

    invoke-direct {p0, p1, v0, v1}, Lcom/android/server/sec/MWClassItem;-><init>(Ljava/lang/String;Landroid/sec/multiwindow/IMultiWindowAction;I)V

    .line 42
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1
    .parameter "className"
    .parameter "taskId"

    .prologue
    .line 45
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lcom/android/server/sec/MWClassItem;-><init>(Ljava/lang/String;Landroid/sec/multiwindow/IMultiWindowAction;I)V

    .line 46
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/sec/multiwindow/IMultiWindowAction;I)V
    .locals 1
    .parameter "className"
    .parameter "multiWindowAction"
    .parameter "taskId"

    .prologue
    .line 48
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 38
    const/16 v0, 0x9

    iput v0, p0, Lcom/android/server/sec/MWClassItem;->mMultiWindowVisibleFlag:I

    .line 49
    iput-object p1, p0, Lcom/android/server/sec/MWClassItem;->mClassName:Ljava/lang/String;

    .line 50
    iput-object p2, p0, Lcom/android/server/sec/MWClassItem;->mMultiWindowAction:Landroid/sec/multiwindow/IMultiWindowAction;

    .line 51
    iput p3, p0, Lcom/android/server/sec/MWClassItem;->mTaskId:I

    .line 52
    return-void
.end method


# virtual methods
.method public getClassName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/server/sec/MWClassItem;->mClassName:Ljava/lang/String;

    return-object v0
.end method

.method public getMultiWindowAction()Landroid/sec/multiwindow/IMultiWindowAction;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/server/sec/MWClassItem;->mMultiWindowAction:Landroid/sec/multiwindow/IMultiWindowAction;

    return-object v0
.end method

.method public getMultiWindowVisibleFlag()I
    .locals 1

    .prologue
    .line 76
    iget v0, p0, Lcom/android/server/sec/MWClassItem;->mMultiWindowVisibleFlag:I

    return v0
.end method

.method public getTaskId()I
    .locals 1

    .prologue
    .line 68
    iget v0, p0, Lcom/android/server/sec/MWClassItem;->mTaskId:I

    return v0
.end method

.method public isMultiWindowVisibleFlagFuncCalled()Z
    .locals 2

    .prologue
    .line 109
    iget v0, p0, Lcom/android/server/sec/MWClassItem;->mMultiWindowVisibleFlag:I

    and-int/lit8 v0, v0, 0x8

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public procMultiWindowVisibleFlagFuncCalled()V
    .locals 1

    .prologue
    .line 99
    invoke-virtual {p0}, Lcom/android/server/sec/MWClassItem;->isMultiWindowVisibleFlagFuncCalled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 100
    iget v0, p0, Lcom/android/server/sec/MWClassItem;->mMultiWindowVisibleFlag:I

    add-int/lit8 v0, v0, -0x8

    iput v0, p0, Lcom/android/server/sec/MWClassItem;->mMultiWindowVisibleFlag:I

    .line 102
    :cond_0
    return-void
.end method

.method public setMultiWindowAction(Landroid/sec/multiwindow/IMultiWindowAction;I)V
    .locals 0
    .parameter "multiWindowAction"
    .parameter "taskId"

    .prologue
    .line 55
    iput-object p1, p0, Lcom/android/server/sec/MWClassItem;->mMultiWindowAction:Landroid/sec/multiwindow/IMultiWindowAction;

    .line 56
    iput p2, p0, Lcom/android/server/sec/MWClassItem;->mTaskId:I

    .line 57
    return-void
.end method

.method public setMultiWindowVisibleFlag(I)V
    .locals 2
    .parameter "flag"

    .prologue
    .line 86
    invoke-virtual {p0}, Lcom/android/server/sec/MWClassItem;->isMultiWindowVisibleFlagFuncCalled()Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/android/server/sec/MWClassItem;->mMultiWindowVisibleFlag:I

    add-int/lit8 v0, v1, -0x8

    .line 88
    .local v0, compareFlag:I
    :goto_0
    if-ne v0, p1, :cond_1

    .line 93
    :goto_1
    return-void

    .line 86
    .end local v0           #compareFlag:I
    :cond_0
    iget v0, p0, Lcom/android/server/sec/MWClassItem;->mMultiWindowVisibleFlag:I

    goto :goto_0

    .line 92
    .restart local v0       #compareFlag:I
    :cond_1
    add-int/lit8 v1, p1, 0x8

    iput v1, p0, Lcom/android/server/sec/MWClassItem;->mMultiWindowVisibleFlag:I

    goto :goto_1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 114
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/server/sec/MWClassItem;->mClassName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/ Action is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lcom/android/server/sec/MWClassItem;->mMultiWindowAction:Landroid/sec/multiwindow/IMultiWindowAction;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/ Flag "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/sec/MWClassItem;->mMultiWindowVisibleFlag:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
