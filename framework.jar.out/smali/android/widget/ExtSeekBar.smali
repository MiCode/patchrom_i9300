.class public Landroid/widget/ExtSeekBar;
.super Landroid/widget/SeekBar;
.source "ExtSeekBar.java"


# instance fields
.field private mEnableChangeColor:Z

.field private mOffsetThumb:I

.field private mThumb:Landroid/graphics/drawable/Drawable;

.field private msetDrawable:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 25
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/SeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 21
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/ExtSeekBar;->mEnableChangeColor:Z

    .line 22
    const/4 v0, -0x1

    iput v0, p0, Landroid/widget/ExtSeekBar;->mOffsetThumb:I

    .line 26
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 29
    invoke-direct {p0, p1, p2}, Landroid/widget/SeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 21
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/ExtSeekBar;->mEnableChangeColor:Z

    .line 22
    const/4 v0, -0x1

    iput v0, p0, Landroid/widget/ExtSeekBar;->mOffsetThumb:I

    .line 30
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 33
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/SeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 21
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/ExtSeekBar;->mEnableChangeColor:Z

    .line 22
    const/4 v0, -0x1

    iput v0, p0, Landroid/widget/ExtSeekBar;->mOffsetThumb:I

    .line 34
    return-void
.end method

.method private updateDrawable()V
    .locals 4

    .prologue
    const v3, 0x108088c

    .line 60
    iget-object v0, p0, Landroid/widget/ExtSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    .line 61
    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Landroid/widget/ExtSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    .line 63
    :cond_0
    iget-object v0, p0, Landroid/widget/ExtSeekBar;->msetDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_1

    .line 64
    invoke-virtual {p0}, Landroid/widget/ExtSeekBar;->getCurrentDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/ExtSeekBar;->msetDrawable:Landroid/graphics/drawable/Drawable;

    .line 66
    :cond_1
    iget v0, p0, Landroid/widget/ExtSeekBar;->mOffsetThumb:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_2

    .line 67
    invoke-virtual {p0}, Landroid/widget/ExtSeekBar;->getThumbOffset()I

    move-result v0

    iput v0, p0, Landroid/widget/ExtSeekBar;->mOffsetThumb:I

    .line 69
    :cond_2
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {p0}, Landroid/widget/ExtSeekBar;->getThumbOffset()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(I)V

    .line 71
    invoke-virtual {p0}, Landroid/widget/ExtSeekBar;->isEnableChangeColor()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 72
    invoke-virtual {p0}, Landroid/widget/ExtSeekBar;->getProgress()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/ExtSeekBar;->getMax()I

    move-result v1

    if-ne v0, v1, :cond_3

    .line 73
    invoke-virtual {p0}, Landroid/widget/ExtSeekBar;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1080870

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/ExtSeekBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 75
    invoke-virtual {p0}, Landroid/widget/ExtSeekBar;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/ExtSeekBar;->setThumb(Landroid/graphics/drawable/Drawable;)V

    .line 77
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "max "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/widget/ExtSeekBar;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 79
    sget v0, Landroid/util/DisplayMetrics;->DENSITY_DEVICE:I

    int-to-float v0, v0

    const/high16 v1, 0x4320

    div-float/2addr v0, v1

    const/high16 v1, 0x41b8

    mul-float/2addr v0, v1

    float-to-int v0, v0

    invoke-virtual {p0, v0}, Landroid/widget/ExtSeekBar;->setThumbOffset(I)V

    .line 92
    :goto_0
    return-void

    .line 81
    :cond_3
    iget-object v0, p0, Landroid/widget/ExtSeekBar;->msetDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Landroid/widget/ExtSeekBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 82
    iget-object v0, p0, Landroid/widget/ExtSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Landroid/widget/ExtSeekBar;->setThumb(Landroid/graphics/drawable/Drawable;)V

    .line 83
    iget v0, p0, Landroid/widget/ExtSeekBar;->mOffsetThumb:I

    invoke-virtual {p0, v0}, Landroid/widget/ExtSeekBar;->setThumbOffset(I)V

    goto :goto_0

    .line 87
    :cond_4
    iget-object v0, p0, Landroid/widget/ExtSeekBar;->msetDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Landroid/widget/ExtSeekBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 88
    iget-object v0, p0, Landroid/widget/ExtSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Landroid/widget/ExtSeekBar;->setThumb(Landroid/graphics/drawable/Drawable;)V

    .line 89
    iget v0, p0, Landroid/widget/ExtSeekBar;->mOffsetThumb:I

    invoke-virtual {p0, v0}, Landroid/widget/ExtSeekBar;->setThumbOffset(I)V

    goto :goto_0
.end method


# virtual methods
.method public isEnableChangeColor()Z
    .locals 1

    .prologue
    .line 50
    iget-boolean v0, p0, Landroid/widget/ExtSeekBar;->mEnableChangeColor:Z

    return v0
.end method

.method public setChangeSeekbarColor(Z)V
    .locals 0
    .parameter "enabled"

    .prologue
    .line 44
    iput-boolean p1, p0, Landroid/widget/ExtSeekBar;->mEnableChangeColor:Z

    .line 46
    invoke-direct {p0}, Landroid/widget/ExtSeekBar;->updateDrawable()V

    .line 47
    return-void
.end method

.method public setProgress(I)V
    .locals 0
    .parameter "progress"

    .prologue
    .line 38
    invoke-super {p0, p1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 39
    invoke-direct {p0}, Landroid/widget/ExtSeekBar;->updateDrawable()V

    .line 41
    return-void
.end method

.method public setProgress(IZ)V
    .locals 1
    .parameter "progress"
    .parameter "fromUser"

    .prologue
    .line 54
    invoke-super {p0, p1, p2}, Landroid/widget/SeekBar;->setProgress(IZ)V

    .line 55
    invoke-virtual {p0}, Landroid/widget/ExtSeekBar;->isEnableChangeColor()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 56
    invoke-direct {p0}, Landroid/widget/ExtSeekBar;->updateDrawable()V

    .line 57
    :cond_0
    return-void
.end method
