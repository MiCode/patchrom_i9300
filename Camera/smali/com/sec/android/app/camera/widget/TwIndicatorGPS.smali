.class public Lcom/sec/android/app/camera/widget/TwIndicatorGPS;
.super Lcom/sec/android/app/camera/widget/TwGroupImageView;
.source "TwIndicatorGPS.java"


# static fields
.field public static final GPS_CONNECTED:I = 0x2

.field public static final GPS_CONNECTING:I = 0x1

.field public static final GPS_DISCONNECTED:I = 0x0

.field protected static final TAG:Ljava/lang/String; = "TwIndicatorGPS"

.field private static final TAG_GPS_CONNECTED:I = 0x1

.field private static final TAG_GPS_DISCONNECTED:I


# instance fields
.field mAni:Landroid/graphics/drawable/AnimationDrawable;

.field private mGpsState:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 46
    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/camera/widget/TwGroupImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 37
    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/app/camera/widget/TwIndicatorGPS;->mGpsState:I

    .line 48
    invoke-virtual {p0, p2}, Lcom/sec/android/app/camera/widget/TwIndicatorGPS;->init(Landroid/util/AttributeSet;)V

    .line 49
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 52
    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/app/camera/widget/TwGroupImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 37
    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/app/camera/widget/TwIndicatorGPS;->mGpsState:I

    .line 54
    invoke-virtual {p0, p2}, Lcom/sec/android/app/camera/widget/TwIndicatorGPS;->init(Landroid/util/AttributeSet;)V

    .line 55
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/TwIndicatorGPS;->mAni:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    .line 74
    return-void
.end method

.method protected init(Landroid/util/AttributeSet;)V
    .locals 5
    .parameter "attrs"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 58
    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/TwIndicatorGPS;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/sec/android/app/camera/R$styleable;->TwIndicatorGPS:[I

    invoke-virtual {v1, p1, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 60
    .local v0, attr:Landroid/content/res/TypedArray;
    const v1, 0x7f020043

    invoke-virtual {v0, v3, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    invoke-virtual {p0, v3, v1}, Lcom/sec/android/app/camera/widget/TwIndicatorGPS;->addImageId(II)V

    .line 63
    const/4 v1, 0x4

    const v2, 0x7f020044

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    invoke-virtual {p0, v4, v1}, Lcom/sec/android/app/camera/widget/TwIndicatorGPS;->addImageId(II)V

    .line 67
    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/TwIndicatorGPS;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f040001

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/AnimationDrawable;

    iput-object v1, p0, Lcom/sec/android/app/camera/widget/TwIndicatorGPS;->mAni:Landroid/graphics/drawable/AnimationDrawable;

    .line 68
    invoke-virtual {p0, v4}, Lcom/sec/android/app/camera/widget/TwIndicatorGPS;->replaceBackground(I)V

    .line 69
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 70
    return-void
.end method

.method public pause()V
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/TwIndicatorGPS;->mAni:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    .line 78
    return-void
.end method

.method public setGPS(I)V
    .locals 2
    .parameter "gps"

    .prologue
    .line 81
    iget v0, p0, Lcom/sec/android/app/camera/widget/TwIndicatorGPS;->mGpsState:I

    if-ne v0, p1, :cond_0

    .line 82
    const-string v0, "TwIndicatorGPS"

    const-string v1, "duplicated setGPS is called"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    :goto_0
    return-void

    .line 85
    :cond_0
    iput p1, p0, Lcom/sec/android/app/camera/widget/TwIndicatorGPS;->mGpsState:I

    .line 87
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 89
    :pswitch_0
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/TwIndicatorGPS;->mAni:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    .line 90
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/widget/TwIndicatorGPS;->replaceBackground(I)V

    goto :goto_0

    .line 93
    :pswitch_1
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/TwIndicatorGPS;->mAni:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    .line 94
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/widget/TwIndicatorGPS;->replaceBackground(I)V

    goto :goto_0

    .line 97
    :pswitch_2
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/TwIndicatorGPS;->mAni:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 98
    const-string v0, "TwIndicatorGPS"

    const-string v1, "GPS animation is already running"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 103
    :cond_1
    new-instance v0, Lcom/sec/android/app/camera/widget/TwIndicatorGPS$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/widget/TwIndicatorGPS$1;-><init>(Lcom/sec/android/app/camera/widget/TwIndicatorGPS;)V

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/widget/TwIndicatorGPS;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 87
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
