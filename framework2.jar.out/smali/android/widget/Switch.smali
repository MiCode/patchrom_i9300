.class public Landroid/widget/Switch;
.super Landroid/widget/CompoundButton;
.source "Switch.java"


# static fields
.field private static final CHECKED_STATE_SET:[I = null

.field private static final MONOSPACE:I = 0x3

.field private static final SANS:I = 0x1

.field private static final SERIF:I = 0x2

.field private static final TOUCH_MODE_DOWN:I = 0x1

.field private static final TOUCH_MODE_DRAGGING:I = 0x2

.field private static final TOUCH_MODE_IDLE:I


# instance fields
.field mBdOff:Landroid/graphics/drawable/BitmapDrawable;

.field mBdOffDisabled:Landroid/graphics/drawable/BitmapDrawable;

.field mBdOffPressed:Landroid/graphics/drawable/BitmapDrawable;

.field mBdOn:Landroid/graphics/drawable/BitmapDrawable;

.field mBdOnDisabled:Landroid/graphics/drawable/BitmapDrawable;

.field mBdOnPressed:Landroid/graphics/drawable/BitmapDrawable;

.field mBitOff:Landroid/graphics/Bitmap;

.field mBitOffDisabled:Landroid/graphics/Bitmap;

.field mBitOffPressed:Landroid/graphics/Bitmap;

.field mBitOn:Landroid/graphics/Bitmap;

.field mBitOnDisabled:Landroid/graphics/Bitmap;

.field mBitOnPressed:Landroid/graphics/Bitmap;

.field private mIsDeviceDefaultTheme:Z

.field private mMinFlingVelocity:I

.field private mOffLayout:Landroid/text/Layout;

.field private mOnLayout:Landroid/text/Layout;

.field private mSwitchBottom:I

.field private mSwitchHeight:I

.field private mSwitchLeft:I

.field private mSwitchMinWidth:I

.field private mSwitchPadding:I

.field private mSwitchRight:I

.field private mSwitchTop:I

.field private mSwitchWidth:I

.field private final mTempRect:Landroid/graphics/Rect;

.field private mTextColors:Landroid/content/res/ColorStateList;

.field mTextColorsOff:Landroid/content/res/ColorStateList;

.field mTextColorsOn:Landroid/content/res/ColorStateList;

.field private mTextOff:Ljava/lang/CharSequence;

.field private mTextOn:Ljava/lang/CharSequence;

.field private mTextPaint:Landroid/text/TextPaint;

.field private mThumbDrawable:Landroid/graphics/drawable/Drawable;

.field private mThumbPosition:F

.field private mThumbTextPadding:I

.field private mThumbWidth:I

.field private mTouchMode:I

.field private mTouchSlop:I

.field private mTouchX:F

.field private mTouchY:F

.field private mTrackDrawable:Landroid/graphics/drawable/Drawable;

.field private mVelocityTracker:Landroid/view/VelocityTracker;

.field final switchOff:Ljava/lang/CharSequence;

.field final switchOn:Ljava/lang/CharSequence;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 121
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x10100a0

    aput v2, v0, v1

    sput-object v0, Landroid/widget/Switch;->CHECKED_STATE_SET:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 135
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/Switch;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 136
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 146
    const v0, 0x10103e1

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/Switch;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 147
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 9
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 159
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/CompoundButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 83
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v5

    iput-object v5, p0, Landroid/widget/Switch;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 101
    const-string v5, "ON"

    iput-object v5, p0, Landroid/widget/Switch;->switchOn:Ljava/lang/CharSequence;

    .line 102
    const-string v5, "OFF"

    iput-object v5, p0, Landroid/widget/Switch;->switchOff:Ljava/lang/CharSequence;

    .line 118
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    iput-object v5, p0, Landroid/widget/Switch;->mTempRect:Landroid/graphics/Rect;

    .line 125
    iput-boolean v7, p0, Landroid/widget/Switch;->mIsDeviceDefaultTheme:Z

    .line 161
    new-instance v5, Landroid/text/TextPaint;

    invoke-direct {v5, v8}, Landroid/text/TextPaint;-><init>(I)V

    iput-object v5, p0, Landroid/widget/Switch;->mTextPaint:Landroid/text/TextPaint;

    .line 162
    invoke-virtual {p0}, Landroid/widget/Switch;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 163
    .local v3, res:Landroid/content/res/Resources;
    iget-object v5, p0, Landroid/widget/Switch;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v6

    iget v6, v6, Landroid/util/DisplayMetrics;->density:F

    iput v6, v5, Landroid/text/TextPaint;->density:F

    .line 164
    iget-object v5, p0, Landroid/widget/Switch;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v3}, Landroid/content/res/Resources;->getCompatibilityInfo()Landroid/content/res/CompatibilityInfo;

    move-result-object v6

    iget v6, v6, Landroid/content/res/CompatibilityInfo;->applicationScale:F

    invoke-virtual {v5, v6}, Landroid/text/TextPaint;->setCompatibilityScaling(F)V

    .line 166
    sget-object v5, Lcom/android/internal/R$styleable;->Switch:[I

    invoke-virtual {p1, p2, v5, p3, v7}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 169
    .local v0, a:Landroid/content/res/TypedArray;
    const/4 v5, 0x2

    invoke-virtual {v0, v5}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iput-object v5, p0, Landroid/widget/Switch;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    .line 170
    const/4 v5, 0x4

    invoke-virtual {v0, v5}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iput-object v5, p0, Landroid/widget/Switch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    .line 171
    invoke-virtual {v0, v7}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    iput-object v5, p0, Landroid/widget/Switch;->mTextOn:Ljava/lang/CharSequence;

    .line 172
    invoke-virtual {v0, v8}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    iput-object v5, p0, Landroid/widget/Switch;->mTextOff:Ljava/lang/CharSequence;

    .line 173
    const/4 v5, 0x7

    invoke-virtual {v0, v5, v7}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    iput v5, p0, Landroid/widget/Switch;->mThumbTextPadding:I

    .line 175
    const/4 v5, 0x5

    invoke-virtual {v0, v5, v7}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    iput v5, p0, Landroid/widget/Switch;->mSwitchMinWidth:I

    .line 177
    const/4 v5, 0x6

    invoke-virtual {v0, v5, v7}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    iput v5, p0, Landroid/widget/Switch;->mSwitchPadding:I

    .line 180
    const v5, 0x10808b6

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    check-cast v5, Landroid/graphics/drawable/BitmapDrawable;

    iput-object v5, p0, Landroid/widget/Switch;->mBdOn:Landroid/graphics/drawable/BitmapDrawable;

    .line 181
    const v5, 0x10808b8

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    check-cast v5, Landroid/graphics/drawable/BitmapDrawable;

    iput-object v5, p0, Landroid/widget/Switch;->mBdOnPressed:Landroid/graphics/drawable/BitmapDrawable;

    .line 182
    const v5, 0x10808b7

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    check-cast v5, Landroid/graphics/drawable/BitmapDrawable;

    iput-object v5, p0, Landroid/widget/Switch;->mBdOnDisabled:Landroid/graphics/drawable/BitmapDrawable;

    .line 183
    const v5, 0x10808bf

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    check-cast v5, Landroid/graphics/drawable/BitmapDrawable;

    iput-object v5, p0, Landroid/widget/Switch;->mBdOff:Landroid/graphics/drawable/BitmapDrawable;

    .line 184
    const v5, 0x10808c1

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    check-cast v5, Landroid/graphics/drawable/BitmapDrawable;

    iput-object v5, p0, Landroid/widget/Switch;->mBdOffPressed:Landroid/graphics/drawable/BitmapDrawable;

    .line 185
    const v5, 0x10808c0

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    check-cast v5, Landroid/graphics/drawable/BitmapDrawable;

    iput-object v5, p0, Landroid/widget/Switch;->mBdOffDisabled:Landroid/graphics/drawable/BitmapDrawable;

    .line 187
    iget-object v5, p0, Landroid/widget/Switch;->mBdOn:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v5

    iput-object v5, p0, Landroid/widget/Switch;->mBitOn:Landroid/graphics/Bitmap;

    .line 188
    iget-object v5, p0, Landroid/widget/Switch;->mBdOnPressed:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v5

    iput-object v5, p0, Landroid/widget/Switch;->mBitOnPressed:Landroid/graphics/Bitmap;

    .line 189
    iget-object v5, p0, Landroid/widget/Switch;->mBdOnDisabled:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v5

    iput-object v5, p0, Landroid/widget/Switch;->mBitOnDisabled:Landroid/graphics/Bitmap;

    .line 190
    iget-object v5, p0, Landroid/widget/Switch;->mBdOff:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v5

    iput-object v5, p0, Landroid/widget/Switch;->mBitOff:Landroid/graphics/Bitmap;

    .line 191
    iget-object v5, p0, Landroid/widget/Switch;->mBdOffPressed:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v5

    iput-object v5, p0, Landroid/widget/Switch;->mBitOffPressed:Landroid/graphics/Bitmap;

    .line 192
    iget-object v5, p0, Landroid/widget/Switch;->mBdOffDisabled:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v5

    iput-object v5, p0, Landroid/widget/Switch;->mBitOffDisabled:Landroid/graphics/Bitmap;

    .line 194
    const/4 v5, 0x3

    invoke-virtual {v0, v5, v7}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    .line 196
    .local v1, appearance:I
    if-eqz v1, :cond_0

    .line 197
    invoke-virtual {p0, p1, v1}, Landroid/widget/Switch;->setSwitchTextAppearance(Landroid/content/Context;I)V

    .line 199
    :cond_0
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 201
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v2

    .line 202
    .local v2, config:Landroid/view/ViewConfiguration;
    invoke-virtual {v2}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v5

    iput v5, p0, Landroid/widget/Switch;->mTouchSlop:I

    .line 203
    invoke-virtual {v2}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v5

    iput v5, p0, Landroid/widget/Switch;->mMinFlingVelocity:I

    .line 206
    invoke-virtual {p0}, Landroid/widget/Switch;->refreshDrawableState()V

    .line 207
    invoke-virtual {p0}, Landroid/widget/Switch;->isChecked()Z

    move-result v5

    invoke-virtual {p0, v5}, Landroid/widget/Switch;->setChecked(Z)V

    .line 209
    const/4 v4, 0x0

    .line 211
    .local v4, xpp:Landroid/content/res/XmlResourceParser;
    :try_start_0
    invoke-virtual {p0}, Landroid/widget/Switch;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x1060099

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v4

    .line 212
    invoke-virtual {p0}, Landroid/widget/Switch;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-static {v5, v4}, Landroid/content/res/ColorStateList;->createFromXml(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;)Landroid/content/res/ColorStateList;

    move-result-object v5

    iput-object v5, p0, Landroid/widget/Switch;->mTextColorsOn:Landroid/content/res/ColorStateList;

    .line 213
    if-eqz v4, :cond_1

    invoke-interface {v4}, Landroid/content/res/XmlResourceParser;->close()V

    .line 215
    :cond_1
    invoke-virtual {p0}, Landroid/widget/Switch;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x1060098

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v4

    .line 216
    invoke-virtual {p0}, Landroid/widget/Switch;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-static {v5, v4}, Landroid/content/res/ColorStateList;->createFromXml(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;)Landroid/content/res/ColorStateList;

    move-result-object v5

    iput-object v5, p0, Landroid/widget/Switch;->mTextColorsOff:Landroid/content/res/ColorStateList;

    .line 217
    if-eqz v4, :cond_2

    invoke-interface {v4}, Landroid/content/res/XmlResourceParser;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 219
    :cond_2
    const/4 v4, 0x0

    .line 222
    if-eqz v4, :cond_3

    invoke-interface {v4}, Landroid/content/res/XmlResourceParser;->close()V

    .line 224
    :cond_3
    :goto_0
    return-void

    .line 220
    :catch_0
    move-exception v5

    .line 222
    if-eqz v4, :cond_3

    invoke-interface {v4}, Landroid/content/res/XmlResourceParser;->close()V

    goto :goto_0

    :catchall_0
    move-exception v5

    if-eqz v4, :cond_4

    invoke-interface {v4}, Landroid/content/res/XmlResourceParser;->close()V

    :cond_4
    throw v5
.end method

.method private animateThumbToCheckedState(Z)V
    .locals 0
    .parameter "newCheckedState"

    .prologue
    .line 589
    invoke-virtual {p0, p1}, Landroid/widget/Switch;->setChecked(Z)V

    .line 590
    return-void
.end method

.method private cancelSuperTouch(Landroid/view/MotionEvent;)V
    .locals 2
    .parameter "ev"

    .prologue
    .line 552
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    .line 553
    .local v0, cancel:Landroid/view/MotionEvent;
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->setAction(I)V

    .line 554
    invoke-super {p0, v0}, Landroid/widget/CompoundButton;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 555
    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    .line 556
    return-void
.end method

.method private getTargetCheckedState()Z
    .locals 2

    .prologue
    .line 593
    iget v0, p0, Landroid/widget/Switch;->mThumbPosition:F

    invoke-direct {p0}, Landroid/widget/Switch;->getThumbScrollRange()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getThumbScrollRange()I
    .locals 2

    .prologue
    .line 758
    iget-object v0, p0, Landroid/widget/Switch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    .line 759
    const/4 v0, 0x0

    .line 762
    :goto_0
    return v0

    .line 761
    :cond_0
    iget-object v0, p0, Landroid/widget/Switch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Landroid/widget/Switch;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 762
    iget v0, p0, Landroid/widget/Switch;->mSwitchWidth:I

    iget v1, p0, Landroid/widget/Switch;->mThumbWidth:I

    sub-int/2addr v0, v1

    iget-object v1, p0, Landroid/widget/Switch;->mTempRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, v1

    iget-object v1, p0, Landroid/widget/Switch;->mTempRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v0, v1

    goto :goto_0
.end method

.method private hitThumb(FF)Z
    .locals 7
    .parameter "x"
    .parameter "y"

    .prologue
    .line 475
    iget-object v4, p0, Landroid/widget/Switch;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v5, p0, Landroid/widget/Switch;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v4, v5}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 476
    iget v4, p0, Landroid/widget/Switch;->mSwitchTop:I

    iget v5, p0, Landroid/widget/Switch;->mTouchSlop:I

    sub-int v3, v4, v5

    .line 477
    .local v3, thumbTop:I
    iget v4, p0, Landroid/widget/Switch;->mSwitchLeft:I

    iget v5, p0, Landroid/widget/Switch;->mThumbPosition:F

    const/high16 v6, 0x3f00

    add-float/2addr v5, v6

    float-to-int v5, v5

    add-int/2addr v4, v5

    iget v5, p0, Landroid/widget/Switch;->mTouchSlop:I

    sub-int v1, v4, v5

    .line 478
    .local v1, thumbLeft:I
    iget v4, p0, Landroid/widget/Switch;->mThumbWidth:I

    add-int/2addr v4, v1

    iget-object v5, p0, Landroid/widget/Switch;->mTempRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    add-int/2addr v4, v5

    iget-object v5, p0, Landroid/widget/Switch;->mTempRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    add-int/2addr v4, v5

    iget v5, p0, Landroid/widget/Switch;->mTouchSlop:I

    add-int v2, v4, v5

    .line 480
    .local v2, thumbRight:I
    iget v4, p0, Landroid/widget/Switch;->mSwitchBottom:I

    iget v5, p0, Landroid/widget/Switch;->mTouchSlop:I

    add-int v0, v4, v5

    .line 481
    .local v0, thumbBottom:I
    int-to-float v4, v1

    cmpl-float v4, p1, v4

    if-lez v4, :cond_0

    int-to-float v4, v2

    cmpg-float v4, p1, v4

    if-gez v4, :cond_0

    add-int/lit8 v4, v3, -0x7

    int-to-float v4, v4

    cmpl-float v4, p2, v4

    if-lez v4, :cond_0

    add-int/lit8 v4, v0, 0x7

    int-to-float v4, v4

    cmpg-float v4, p2, v4

    if-gez v4, :cond_0

    const/4 v4, 0x1

    :goto_0
    return v4

    :cond_0
    const/4 v4, 0x0

    goto :goto_0
.end method

.method private makeLayout(Ljava/lang/CharSequence;)Landroid/text/Layout;
    .locals 8
    .parameter "text"

    .prologue
    .line 466
    new-instance v0, Landroid/text/StaticLayout;

    iget-object v2, p0, Landroid/widget/Switch;->mTextPaint:Landroid/text/TextPaint;

    iget-object v1, p0, Landroid/widget/Switch;->mTextPaint:Landroid/text/TextPaint;

    invoke-static {p1, v1}, Landroid/text/Layout;->getDesiredWidth(Ljava/lang/CharSequence;Landroid/text/TextPaint;)F

    move-result v1

    float-to-double v3, v1

    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v3

    double-to-int v3, v3

    sget-object v4, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    const/high16 v5, 0x3f80

    const/4 v6, 0x0

    const/4 v7, 0x1

    move-object v1, p1

    invoke-direct/range {v0 .. v7}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    return-object v0
.end method

.method private setSwitchTypefaceByIndex(II)V
    .locals 1
    .parameter "typefaceIndex"
    .parameter "styleIndex"

    .prologue
    .line 269
    const/4 v0, 0x0

    .line 270
    .local v0, tf:Landroid/graphics/Typeface;
    packed-switch p1, :pswitch_data_0

    .line 284
    :goto_0
    invoke-virtual {p0, v0, p2}, Landroid/widget/Switch;->setSwitchTypeface(Landroid/graphics/Typeface;I)V

    .line 285
    return-void

    .line 272
    :pswitch_0
    sget-object v0, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    .line 273
    goto :goto_0

    .line 276
    :pswitch_1
    sget-object v0, Landroid/graphics/Typeface;->SERIF:Landroid/graphics/Typeface;

    .line 277
    goto :goto_0

    .line 280
    :pswitch_2
    sget-object v0, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;

    goto :goto_0

    .line 270
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private stopDrag(Landroid/view/MotionEvent;)V
    .locals 7
    .parameter "ev"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 564
    iput v4, p0, Landroid/widget/Switch;->mTouchMode:I

    .line 566
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    if-ne v5, v3, :cond_0

    invoke-virtual {p0}, Landroid/widget/Switch;->isEnabled()Z

    move-result v5

    if-eqz v5, :cond_0

    move v0, v3

    .line 568
    .local v0, commitChange:Z
    :goto_0
    invoke-direct {p0, p1}, Landroid/widget/Switch;->cancelSuperTouch(Landroid/view/MotionEvent;)V

    .line 570
    if-eqz v0, :cond_3

    .line 572
    iget-object v5, p0, Landroid/widget/Switch;->mVelocityTracker:Landroid/view/VelocityTracker;

    const/16 v6, 0x3e8

    invoke-virtual {v5, v6}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    .line 573
    iget-object v5, p0, Landroid/widget/Switch;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v5}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v2

    .line 574
    .local v2, xvel:F
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v5

    iget v6, p0, Landroid/widget/Switch;->mMinFlingVelocity:I

    int-to-float v6, v6

    cmpl-float v5, v5, v6

    if-lez v5, :cond_2

    .line 575
    const/4 v5, 0x0

    cmpl-float v5, v2, v5

    if-lez v5, :cond_1

    move v1, v3

    .line 579
    .local v1, newState:Z
    :goto_1
    invoke-direct {p0, v1}, Landroid/widget/Switch;->animateThumbToCheckedState(Z)V

    .line 583
    .end local v1           #newState:Z
    .end local v2           #xvel:F
    :goto_2
    return-void

    .end local v0           #commitChange:Z
    :cond_0
    move v0, v4

    .line 566
    goto :goto_0

    .restart local v0       #commitChange:Z
    .restart local v2       #xvel:F
    :cond_1
    move v1, v4

    .line 575
    goto :goto_1

    .line 577
    :cond_2
    invoke-direct {p0}, Landroid/widget/Switch;->getTargetCheckedState()Z

    move-result v1

    .restart local v1       #newState:Z
    goto :goto_1

    .line 581
    .end local v1           #newState:Z
    .end local v2           #xvel:F
    :cond_3
    invoke-virtual {p0}, Landroid/widget/Switch;->isChecked()Z

    move-result v3

    invoke-direct {p0, v3}, Landroid/widget/Switch;->animateThumbToCheckedState(Z)V

    goto :goto_2
.end method


# virtual methods
.method protected drawableStateChanged()V
    .locals 2

    .prologue
    .line 776
    invoke-super {p0}, Landroid/widget/CompoundButton;->drawableStateChanged()V

    .line 778
    invoke-virtual {p0}, Landroid/widget/Switch;->getDrawableState()[I

    move-result-object v0

    .line 782
    .local v0, myDrawableState:[I
    iget-object v1, p0, Landroid/widget/Switch;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/widget/Switch;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 783
    :cond_0
    iget-object v1, p0, Landroid/widget/Switch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/widget/Switch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 785
    :cond_1
    invoke-virtual {p0}, Landroid/widget/Switch;->invalidate()V

    .line 786
    return-void
.end method

.method public getCompoundPaddingRight()I
    .locals 3

    .prologue
    .line 750
    invoke-super {p0}, Landroid/widget/CompoundButton;->getCompoundPaddingRight()I

    move-result v1

    iget v2, p0, Landroid/widget/Switch;->mSwitchWidth:I

    add-int v0, v1, v2

    .line 751
    .local v0, padding:I
    invoke-virtual {p0}, Landroid/widget/Switch;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 752
    iget v1, p0, Landroid/widget/Switch;->mSwitchPadding:I

    add-int/2addr v0, v1

    .line 754
    :cond_0
    return v0
.end method

.method public getTextOff()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 352
    iget-object v0, p0, Landroid/widget/Switch;->mTextOff:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getTextOn()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 337
    iget-object v0, p0, Landroid/widget/Switch;->mTextOn:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public jumpDrawablesToCurrentState()V
    .locals 1

    .prologue
    .line 795
    invoke-super {p0}, Landroid/widget/CompoundButton;->jumpDrawablesToCurrentState()V

    .line 796
    iget-object v0, p0, Landroid/widget/Switch;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    .line 797
    iget-object v0, p0, Landroid/widget/Switch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    .line 798
    return-void
.end method

.method protected onCreateDrawableState(I)[I
    .locals 2
    .parameter "extraSpace"

    .prologue
    .line 767
    add-int/lit8 v1, p1, 0x1

    invoke-super {p0, v1}, Landroid/widget/CompoundButton;->onCreateDrawableState(I)[I

    move-result-object v0

    .line 768
    .local v0, drawableState:[I
    invoke-virtual {p0}, Landroid/widget/Switch;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 769
    sget-object v1, Landroid/widget/Switch;->CHECKED_STATE_SET:[I

    invoke-static {v0, v1}, Landroid/widget/Switch;->mergeDrawableStates([I[I)[I

    .line 771
    :cond_0
    return-object v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 22
    .parameter "canvas"

    .prologue
    .line 660
    invoke-super/range {p0 .. p1}, Landroid/widget/CompoundButton;->onDraw(Landroid/graphics/Canvas;)V

    .line 663
    move-object/from16 v0, p0

    iget v11, v0, Landroid/widget/Switch;->mSwitchLeft:I

    .line 664
    .local v11, switchLeft:I
    move-object/from16 v0, p0

    iget v14, v0, Landroid/widget/Switch;->mSwitchTop:I

    .line 665
    .local v14, switchTop:I
    move-object/from16 v0, p0

    iget v12, v0, Landroid/widget/Switch;->mSwitchRight:I

    .line 666
    .local v12, switchRight:I
    move-object/from16 v0, p0

    iget v6, v0, Landroid/widget/Switch;->mSwitchBottom:I

    .line 668
    .local v6, switchBottom:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Switch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v11, v14, v12, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 669
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Switch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 671
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 673
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Switch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Switch;->mTempRect:Landroid/graphics/Rect;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 674
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Switch;->mTempRect:Landroid/graphics/Rect;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v18, v0

    add-int v8, v11, v18

    .line 675
    .local v8, switchInnerLeft:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Switch;->mTempRect:Landroid/graphics/Rect;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v18, v0

    add-int v10, v14, v18

    .line 676
    .local v10, switchInnerTop:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Switch;->mTempRect:Landroid/graphics/Rect;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v18, v0

    sub-int v9, v12, v18

    .line 677
    .local v9, switchInnerRight:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Switch;->mTempRect:Landroid/graphics/Rect;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v18, v0

    sub-int v7, v6, v18

    .line 678
    .local v7, switchInnerBottom:I
    move-object/from16 v0, p1

    invoke-virtual {v0, v8, v14, v9, v6}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 680
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Switch;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Switch;->mTempRect:Landroid/graphics/Rect;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 681
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/Switch;->mThumbPosition:F

    move/from16 v18, v0

    const/high16 v19, 0x3f00

    add-float v18, v18, v19

    move/from16 v0, v18

    float-to-int v0, v0

    move/from16 v16, v0

    .line 682
    .local v16, thumbPos:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Switch;->mTempRect:Landroid/graphics/Rect;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v18, v0

    sub-int v18, v8, v18

    add-int v15, v18, v16

    .line 683
    .local v15, thumbLeft:I
    add-int v18, v8, v16

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/Switch;->mThumbWidth:I

    move/from16 v19, v0

    add-int v18, v18, v19

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Switch;->mTempRect:Landroid/graphics/Rect;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v19, v0

    add-int v17, v18, v19

    .line 685
    .local v17, thumbRight:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Switch;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move/from16 v1, v17

    invoke-virtual {v0, v15, v14, v1, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 686
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Switch;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 688
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    .line 689
    .local v5, rectThumb:Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Switch;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 692
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/Switch;->mIsDeviceDefaultTheme:Z

    move/from16 v18, v0

    if-eqz v18, :cond_2

    .line 693
    invoke-direct/range {p0 .. p0}, Landroid/widget/Switch;->getTargetCheckedState()Z

    move-result v18

    if-eqz v18, :cond_1

    .line 694
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Switch;->mTextColorsOn:Landroid/content/res/ColorStateList;

    move-object/from16 v18, v0

    if-eqz v18, :cond_0

    .line 695
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Switch;->mTextPaint:Landroid/text/TextPaint;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Switch;->mTextColorsOn:Landroid/content/res/ColorStateList;

    move-object/from16 v19, v0

    invoke-virtual/range {p0 .. p0}, Landroid/widget/Switch;->getDrawableState()[I

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Switch;->mTextColorsOn:Landroid/content/res/ColorStateList;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v21

    invoke-virtual/range {v19 .. v21}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v19

    invoke-virtual/range {v18 .. v19}, Landroid/text/TextPaint;->setColor(I)V

    .line 712
    :cond_0
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Switch;->mTextPaint:Landroid/text/TextPaint;

    move-object/from16 v18, v0

    invoke-virtual/range {p0 .. p0}, Landroid/widget/Switch;->getDrawableState()[I

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    iput-object v0, v1, Landroid/text/TextPaint;->drawableState:[I

    .line 714
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/Switch;->mIsDeviceDefaultTheme:Z

    move/from16 v18, v0

    if-eqz v18, :cond_8

    .line 715
    invoke-direct/range {p0 .. p0}, Landroid/widget/Switch;->getTargetCheckedState()Z

    move-result v18

    if-eqz v18, :cond_5

    .line 716
    add-int v18, v15, v17

    div-int/lit8 v18, v18, 0x2

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Switch;->mBitOn:Landroid/graphics/Bitmap;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v19

    div-int/lit8 v19, v19, 0x2

    sub-int v18, v18, v19

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    iget v0, v5, Landroid/graphics/Rect;->top:I

    move/from16 v19, v0

    add-int v19, v19, v14

    iget v0, v5, Landroid/graphics/Rect;->bottom:I

    move/from16 v20, v0

    sub-int v20, v6, v20

    add-int v19, v19, v20

    div-int/lit8 v19, v19, 0x2

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Switch;->mBitOn:Landroid/graphics/Bitmap;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v20

    div-int/lit8 v20, v20, 0x2

    sub-int v19, v19, v20

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    move-object/from16 v0, p1

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 718
    invoke-virtual/range {p0 .. p0}, Landroid/widget/Switch;->isEnabled()Z

    move-result v18

    if-eqz v18, :cond_4

    .line 719
    invoke-virtual/range {p0 .. p0}, Landroid/widget/Switch;->isPressed()Z

    move-result v18

    if-eqz v18, :cond_3

    .line 720
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Switch;->mBitOnPressed:Landroid/graphics/Bitmap;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, v20

    move-object/from16 v4, v21

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 745
    :goto_1
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 746
    return-void

    .line 700
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Switch;->mTextColorsOff:Landroid/content/res/ColorStateList;

    move-object/from16 v18, v0

    if-eqz v18, :cond_0

    .line 701
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Switch;->mTextPaint:Landroid/text/TextPaint;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Switch;->mTextColorsOff:Landroid/content/res/ColorStateList;

    move-object/from16 v19, v0

    invoke-virtual/range {p0 .. p0}, Landroid/widget/Switch;->getDrawableState()[I

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Switch;->mTextColorsOff:Landroid/content/res/ColorStateList;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v21

    invoke-virtual/range {v19 .. v21}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v19

    invoke-virtual/range {v18 .. v19}, Landroid/text/TextPaint;->setColor(I)V

    goto/16 :goto_0

    .line 707
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Switch;->mTextColors:Landroid/content/res/ColorStateList;

    move-object/from16 v18, v0

    if-eqz v18, :cond_0

    .line 708
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Switch;->mTextPaint:Landroid/text/TextPaint;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Switch;->mTextColors:Landroid/content/res/ColorStateList;

    move-object/from16 v19, v0

    invoke-virtual/range {p0 .. p0}, Landroid/widget/Switch;->getDrawableState()[I

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Switch;->mTextColors:Landroid/content/res/ColorStateList;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v21

    invoke-virtual/range {v19 .. v21}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v19

    invoke-virtual/range {v18 .. v19}, Landroid/text/TextPaint;->setColor(I)V

    goto/16 :goto_0

    .line 722
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Switch;->mBitOn:Landroid/graphics/Bitmap;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, v20

    move-object/from16 v4, v21

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_1

    .line 724
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Switch;->mBitOnDisabled:Landroid/graphics/Bitmap;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, v20

    move-object/from16 v4, v21

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto/16 :goto_1

    .line 727
    :cond_5
    add-int v18, v15, v17

    div-int/lit8 v18, v18, 0x2

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Switch;->mBitOff:Landroid/graphics/Bitmap;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v19

    div-int/lit8 v19, v19, 0x2

    sub-int v18, v18, v19

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    iget v0, v5, Landroid/graphics/Rect;->top:I

    move/from16 v19, v0

    add-int v19, v19, v14

    iget v0, v5, Landroid/graphics/Rect;->bottom:I

    move/from16 v20, v0

    sub-int v20, v6, v20

    add-int v19, v19, v20

    div-int/lit8 v19, v19, 0x2

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Switch;->mBitOff:Landroid/graphics/Bitmap;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v20

    div-int/lit8 v20, v20, 0x2

    sub-int v19, v19, v20

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    move-object/from16 v0, p1

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 729
    invoke-virtual/range {p0 .. p0}, Landroid/widget/Switch;->isEnabled()Z

    move-result v18

    if-eqz v18, :cond_7

    .line 730
    invoke-virtual/range {p0 .. p0}, Landroid/widget/Switch;->isPressed()Z

    move-result v18

    if-eqz v18, :cond_6

    .line 731
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Switch;->mBitOffPressed:Landroid/graphics/Bitmap;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, v20

    move-object/from16 v4, v21

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto/16 :goto_1

    .line 733
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Switch;->mBitOff:Landroid/graphics/Bitmap;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, v20

    move-object/from16 v4, v21

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto/16 :goto_1

    .line 735
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Switch;->mBitOffDisabled:Landroid/graphics/Bitmap;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, v20

    move-object/from16 v4, v21

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto/16 :goto_1

    .line 739
    :cond_8
    invoke-direct/range {p0 .. p0}, Landroid/widget/Switch;->getTargetCheckedState()Z

    move-result v18

    if-eqz v18, :cond_9

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/Switch;->mOnLayout:Landroid/text/Layout;

    .line 740
    .local v13, switchText:Landroid/text/Layout;
    :goto_2
    add-int v18, v15, v17

    div-int/lit8 v18, v18, 0x2

    invoke-virtual {v13}, Landroid/text/Layout;->getWidth()I

    move-result v19

    div-int/lit8 v19, v19, 0x2

    sub-int v18, v18, v19

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    add-int v19, v10, v7

    div-int/lit8 v19, v19, 0x2

    invoke-virtual {v13}, Landroid/text/Layout;->getHeight()I

    move-result v20

    div-int/lit8 v20, v20, 0x2

    sub-int v19, v19, v20

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    move-object/from16 v0, p1

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 743
    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Landroid/text/Layout;->draw(Landroid/graphics/Canvas;)V

    goto/16 :goto_1

    .line 739
    .end local v13           #switchText:Landroid/text/Layout;
    :cond_9
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/Switch;->mOffLayout:Landroid/text/Layout;

    goto :goto_2
.end method

.method protected onLayout(ZIIII)V
    .locals 9
    .parameter "changed"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    const/4 v8, 0x0

    .line 605
    invoke-super/range {p0 .. p5}, Landroid/widget/CompoundButton;->onLayout(ZIIII)V

    .line 607
    invoke-virtual {p0}, Landroid/widget/Switch;->isChecked()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-direct {p0}, Landroid/widget/Switch;->getThumbScrollRange()I

    move-result v6

    int-to-float v6, v6

    :goto_0
    iput v6, p0, Landroid/widget/Switch;->mThumbPosition:F

    .line 609
    invoke-virtual {p0}, Landroid/widget/Switch;->getWidth()I

    move-result v6

    invoke-virtual {p0}, Landroid/widget/Switch;->getPaddingRight()I

    move-result v7

    sub-int v4, v6, v7

    .line 610
    .local v4, switchRight:I
    iget v6, p0, Landroid/widget/Switch;->mSwitchWidth:I

    sub-int v3, v4, v6

    .line 611
    .local v3, switchLeft:I
    const/4 v5, 0x0

    .line 612
    .local v5, switchTop:I
    const/4 v2, 0x0

    .line 613
    .local v2, switchBottom:I
    invoke-virtual {p0}, Landroid/widget/Switch;->getGravity()I

    move-result v6

    and-int/lit8 v6, v6, 0x70

    sparse-switch v6, :sswitch_data_0

    .line 616
    invoke-virtual {p0}, Landroid/widget/Switch;->getPaddingTop()I

    move-result v5

    .line 617
    iget v6, p0, Landroid/widget/Switch;->mSwitchHeight:I

    add-int v2, v5, v6

    .line 632
    :goto_1
    iput v3, p0, Landroid/widget/Switch;->mSwitchLeft:I

    .line 633
    iput v5, p0, Landroid/widget/Switch;->mSwitchTop:I

    .line 634
    iput v2, p0, Landroid/widget/Switch;->mSwitchBottom:I

    .line 635
    iput v4, p0, Landroid/widget/Switch;->mSwitchRight:I

    .line 648
    invoke-virtual {p0}, Landroid/widget/Switch;->getContext()Landroid/content/Context;

    move-result-object v6

    sget-object v7, Lcom/android/internal/R$styleable;->Theme:[I

    invoke-virtual {v6, v7}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 649
    .local v0, a:Landroid/content/res/TypedArray;
    const/16 v6, 0x118

    invoke-virtual {v0, v6, v8}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    .line 651
    .local v1, isDeviceDefault:Z
    if-eqz v1, :cond_1

    .line 652
    const/4 v6, 0x1

    iput-boolean v6, p0, Landroid/widget/Switch;->mIsDeviceDefaultTheme:Z

    .line 656
    :goto_2
    return-void

    .line 607
    .end local v0           #a:Landroid/content/res/TypedArray;
    .end local v1           #isDeviceDefault:Z
    .end local v2           #switchBottom:I
    .end local v3           #switchLeft:I
    .end local v4           #switchRight:I
    .end local v5           #switchTop:I
    :cond_0
    const/4 v6, 0x0

    goto :goto_0

    .line 621
    .restart local v2       #switchBottom:I
    .restart local v3       #switchLeft:I
    .restart local v4       #switchRight:I
    .restart local v5       #switchTop:I
    :sswitch_0
    invoke-virtual {p0}, Landroid/widget/Switch;->getPaddingTop()I

    move-result v6

    invoke-virtual {p0}, Landroid/widget/Switch;->getHeight()I

    move-result v7

    add-int/2addr v6, v7

    invoke-virtual {p0}, Landroid/widget/Switch;->getPaddingBottom()I

    move-result v7

    sub-int/2addr v6, v7

    div-int/lit8 v6, v6, 0x2

    iget v7, p0, Landroid/widget/Switch;->mSwitchHeight:I

    div-int/lit8 v7, v7, 0x2

    sub-int v5, v6, v7

    .line 623
    iget v6, p0, Landroid/widget/Switch;->mSwitchHeight:I

    add-int v2, v5, v6

    .line 624
    goto :goto_1

    .line 627
    :sswitch_1
    invoke-virtual {p0}, Landroid/widget/Switch;->getHeight()I

    move-result v6

    invoke-virtual {p0}, Landroid/widget/Switch;->getPaddingBottom()I

    move-result v7

    sub-int v2, v6, v7

    .line 628
    iget v6, p0, Landroid/widget/Switch;->mSwitchHeight:I

    sub-int v5, v2, v6

    goto :goto_1

    .line 654
    .restart local v0       #a:Landroid/content/res/TypedArray;
    .restart local v1       #isDeviceDefault:Z
    :cond_1
    iput-boolean v8, p0, Landroid/widget/Switch;->mIsDeviceDefaultTheme:Z

    goto :goto_2

    .line 613
    nop

    :sswitch_data_0
    .sparse-switch
        0x10 -> :sswitch_0
        0x50 -> :sswitch_1
    .end sparse-switch
.end method

.method public onMeasure(II)V
    .locals 13
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    const/4 v12, 0x0

    .line 365
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v8

    .line 366
    .local v8, widthMode:I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 367
    .local v1, heightMode:I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v9

    .line 368
    .local v9, widthSize:I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 371
    .local v2, heightSize:I
    invoke-virtual {p0}, Landroid/widget/Switch;->getContext()Landroid/content/Context;

    move-result-object v10

    sget-object v11, Lcom/android/internal/R$styleable;->Theme:[I

    invoke-virtual {v10, v11}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 372
    .local v0, a:Landroid/content/res/TypedArray;
    const/16 v10, 0x118

    invoke-virtual {v0, v10, v12}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    .line 374
    .local v3, isDeviceDefault:Z
    if-eqz v3, :cond_3

    .line 375
    const/4 v10, 0x1

    iput-boolean v10, p0, Landroid/widget/Switch;->mIsDeviceDefaultTheme:Z

    .line 380
    :goto_0
    iget-boolean v10, p0, Landroid/widget/Switch;->mIsDeviceDefaultTheme:Z

    if-eqz v10, :cond_4

    .line 381
    iget-object v10, p0, Landroid/widget/Switch;->mOnLayout:Landroid/text/Layout;

    if-nez v10, :cond_0

    .line 382
    iget-object v10, p0, Landroid/widget/Switch;->switchOn:Ljava/lang/CharSequence;

    invoke-direct {p0, v10}, Landroid/widget/Switch;->makeLayout(Ljava/lang/CharSequence;)Landroid/text/Layout;

    move-result-object v10

    iput-object v10, p0, Landroid/widget/Switch;->mOnLayout:Landroid/text/Layout;

    .line 384
    :cond_0
    iget-object v10, p0, Landroid/widget/Switch;->mOffLayout:Landroid/text/Layout;

    if-nez v10, :cond_1

    .line 385
    iget-object v10, p0, Landroid/widget/Switch;->switchOff:Ljava/lang/CharSequence;

    invoke-direct {p0, v10}, Landroid/widget/Switch;->makeLayout(Ljava/lang/CharSequence;)Landroid/text/Layout;

    move-result-object v10

    iput-object v10, p0, Landroid/widget/Switch;->mOffLayout:Landroid/text/Layout;

    .line 396
    :cond_1
    :goto_1
    iget-object v10, p0, Landroid/widget/Switch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v11, p0, Landroid/widget/Switch;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v10, v11}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 397
    iget-object v10, p0, Landroid/widget/Switch;->mOnLayout:Landroid/text/Layout;

    invoke-virtual {v10}, Landroid/text/Layout;->getWidth()I

    move-result v10

    iget-object v11, p0, Landroid/widget/Switch;->mOffLayout:Landroid/text/Layout;

    invoke-virtual {v11}, Landroid/text/Layout;->getWidth()I

    move-result v11

    invoke-static {v10, v11}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 398
    .local v4, maxTextWidth:I
    iget v10, p0, Landroid/widget/Switch;->mSwitchMinWidth:I

    mul-int/lit8 v11, v4, 0x2

    iget v12, p0, Landroid/widget/Switch;->mThumbTextPadding:I

    mul-int/lit8 v12, v12, 0x4

    add-int/2addr v11, v12

    iget-object v12, p0, Landroid/widget/Switch;->mTempRect:Landroid/graphics/Rect;

    iget v12, v12, Landroid/graphics/Rect;->left:I

    add-int/2addr v11, v12

    iget-object v12, p0, Landroid/widget/Switch;->mTempRect:Landroid/graphics/Rect;

    iget v12, v12, Landroid/graphics/Rect;->right:I

    add-int/2addr v11, v12

    invoke-static {v10, v11}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 400
    .local v7, switchWidth:I
    iget-object v10, p0, Landroid/widget/Switch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v10}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v6

    .line 402
    .local v6, switchHeight:I
    iget v10, p0, Landroid/widget/Switch;->mThumbTextPadding:I

    mul-int/lit8 v10, v10, 0x2

    add-int/2addr v10, v4

    iput v10, p0, Landroid/widget/Switch;->mThumbWidth:I

    .line 404
    sparse-switch v8, :sswitch_data_0

    .line 418
    :goto_2
    sparse-switch v1, :sswitch_data_1

    .line 432
    :goto_3
    iput v7, p0, Landroid/widget/Switch;->mSwitchWidth:I

    .line 433
    iput v6, p0, Landroid/widget/Switch;->mSwitchHeight:I

    .line 435
    invoke-super {p0, p1, p2}, Landroid/widget/CompoundButton;->onMeasure(II)V

    .line 436
    invoke-virtual {p0}, Landroid/widget/Switch;->getMeasuredHeight()I

    move-result v5

    .line 437
    .local v5, measuredHeight:I
    if-ge v5, v6, :cond_2

    .line 438
    invoke-virtual {p0}, Landroid/widget/Switch;->getMeasuredWidthAndState()I

    move-result v10

    invoke-virtual {p0, v10, v6}, Landroid/widget/Switch;->setMeasuredDimension(II)V

    .line 440
    :cond_2
    return-void

    .line 377
    .end local v4           #maxTextWidth:I
    .end local v5           #measuredHeight:I
    .end local v6           #switchHeight:I
    .end local v7           #switchWidth:I
    :cond_3
    iput-boolean v12, p0, Landroid/widget/Switch;->mIsDeviceDefaultTheme:Z

    goto :goto_0

    .line 388
    :cond_4
    iget-object v10, p0, Landroid/widget/Switch;->mOnLayout:Landroid/text/Layout;

    if-nez v10, :cond_5

    .line 389
    iget-object v10, p0, Landroid/widget/Switch;->mTextOn:Ljava/lang/CharSequence;

    invoke-direct {p0, v10}, Landroid/widget/Switch;->makeLayout(Ljava/lang/CharSequence;)Landroid/text/Layout;

    move-result-object v10

    iput-object v10, p0, Landroid/widget/Switch;->mOnLayout:Landroid/text/Layout;

    .line 391
    :cond_5
    iget-object v10, p0, Landroid/widget/Switch;->mOffLayout:Landroid/text/Layout;

    if-nez v10, :cond_1

    .line 392
    iget-object v10, p0, Landroid/widget/Switch;->mTextOff:Ljava/lang/CharSequence;

    invoke-direct {p0, v10}, Landroid/widget/Switch;->makeLayout(Ljava/lang/CharSequence;)Landroid/text/Layout;

    move-result-object v10

    iput-object v10, p0, Landroid/widget/Switch;->mOffLayout:Landroid/text/Layout;

    goto :goto_1

    .line 406
    .restart local v4       #maxTextWidth:I
    .restart local v6       #switchHeight:I
    .restart local v7       #switchWidth:I
    :sswitch_0
    invoke-static {v9, v7}, Ljava/lang/Math;->min(II)I

    move-result v9

    .line 407
    goto :goto_2

    .line 410
    :sswitch_1
    move v9, v7

    .line 411
    goto :goto_2

    .line 420
    :sswitch_2
    invoke-static {v2, v6}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 421
    goto :goto_3

    .line 424
    :sswitch_3
    move v2, v6

    .line 425
    goto :goto_3

    .line 404
    :sswitch_data_0
    .sparse-switch
        -0x80000000 -> :sswitch_0
        0x0 -> :sswitch_1
    .end sparse-switch

    .line 418
    :sswitch_data_1
    .sparse-switch
        -0x80000000 -> :sswitch_2
        0x0 -> :sswitch_3
    .end sparse-switch
.end method

.method public onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 3
    .parameter "event"

    .prologue
    .line 444
    invoke-super {p0, p1}, Landroid/widget/CompoundButton;->onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 447
    iget-object v1, p0, Landroid/widget/Switch;->mOnLayout:Landroid/text/Layout;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/widget/Switch;->mOffLayout:Landroid/text/Layout;

    if-nez v1, :cond_1

    .line 463
    :cond_0
    :goto_0
    return-void

    .line 450
    :cond_1
    invoke-virtual {p0}, Landroid/widget/Switch;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 451
    iget-object v1, p0, Landroid/widget/Switch;->mOnLayout:Landroid/text/Layout;

    invoke-virtual {v1}, Landroid/text/Layout;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    .line 452
    .local v0, text:Ljava/lang/CharSequence;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 453
    iget-object v1, p0, Landroid/widget/Switch;->mContext:Landroid/content/Context;

    const v2, 0x104058c

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 455
    :cond_2
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 457
    .end local v0           #text:Ljava/lang/CharSequence;
    :cond_3
    iget-object v1, p0, Landroid/widget/Switch;->mOffLayout:Landroid/text/Layout;

    invoke-virtual {v1}, Landroid/text/Layout;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    .line 458
    .restart local v0       #text:Ljava/lang/CharSequence;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 459
    iget-object v1, p0, Landroid/widget/Switch;->mContext:Landroid/content/Context;

    const v2, 0x104058d

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 461
    :cond_4
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 9
    .parameter "ev"

    .prologue
    const/4 v8, 0x2

    const/4 v5, 0x1

    .line 486
    iget-object v6, p0, Landroid/widget/Switch;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v6, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 487
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 488
    .local v0, action:I
    packed-switch v0, :pswitch_data_0

    .line 548
    :cond_0
    :goto_0
    :pswitch_0
    invoke-super {p0, p1}, Landroid/widget/CompoundButton;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v5

    :cond_1
    :goto_1
    return v5

    .line 490
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    .line 491
    .local v3, x:F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    .line 492
    .local v4, y:F
    invoke-virtual {p0}, Landroid/widget/Switch;->isEnabled()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-direct {p0, v3, v4}, Landroid/widget/Switch;->hitThumb(FF)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 493
    iput v5, p0, Landroid/widget/Switch;->mTouchMode:I

    .line 494
    iput v3, p0, Landroid/widget/Switch;->mTouchX:F

    .line 495
    iput v4, p0, Landroid/widget/Switch;->mTouchY:F

    goto :goto_0

    .line 501
    .end local v3           #x:F
    .end local v4           #y:F
    :pswitch_2
    iget v6, p0, Landroid/widget/Switch;->mTouchMode:I

    packed-switch v6, :pswitch_data_1

    goto :goto_0

    .line 507
    :pswitch_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    .line 508
    .restart local v3       #x:F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    .line 509
    .restart local v4       #y:F
    iget v6, p0, Landroid/widget/Switch;->mTouchX:F

    sub-float v6, v3, v6

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    iget v7, p0, Landroid/widget/Switch;->mTouchSlop:I

    int-to-float v7, v7

    cmpl-float v6, v6, v7

    if-gtz v6, :cond_2

    iget v6, p0, Landroid/widget/Switch;->mTouchY:F

    sub-float v6, v4, v6

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    iget v7, p0, Landroid/widget/Switch;->mTouchSlop:I

    int-to-float v7, v7

    cmpl-float v6, v6, v7

    if-lez v6, :cond_0

    .line 511
    :cond_2
    iput v8, p0, Landroid/widget/Switch;->mTouchMode:I

    .line 512
    invoke-virtual {p0}, Landroid/widget/Switch;->getParent()Landroid/view/ViewParent;

    move-result-object v6

    invoke-interface {v6, v5}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 513
    iput v3, p0, Landroid/widget/Switch;->mTouchX:F

    .line 514
    iput v4, p0, Landroid/widget/Switch;->mTouchY:F

    goto :goto_1

    .line 521
    .end local v3           #x:F
    .end local v4           #y:F
    :pswitch_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    .line 522
    .restart local v3       #x:F
    iget v6, p0, Landroid/widget/Switch;->mTouchX:F

    sub-float v1, v3, v6

    .line 523
    .local v1, dx:F
    const/4 v6, 0x0

    iget v7, p0, Landroid/widget/Switch;->mThumbPosition:F

    add-float/2addr v7, v1

    invoke-direct {p0}, Landroid/widget/Switch;->getThumbScrollRange()I

    move-result v8

    int-to-float v8, v8

    invoke-static {v7, v8}, Ljava/lang/Math;->min(FF)F

    move-result v7

    invoke-static {v6, v7}, Ljava/lang/Math;->max(FF)F

    move-result v2

    .line 525
    .local v2, newPos:F
    iget v6, p0, Landroid/widget/Switch;->mThumbPosition:F

    cmpl-float v6, v2, v6

    if-eqz v6, :cond_1

    .line 526
    iput v2, p0, Landroid/widget/Switch;->mThumbPosition:F

    .line 527
    iput v3, p0, Landroid/widget/Switch;->mTouchX:F

    .line 528
    invoke-virtual {p0}, Landroid/widget/Switch;->invalidate()V

    goto :goto_1

    .line 538
    .end local v1           #dx:F
    .end local v2           #newPos:F
    .end local v3           #x:F
    :pswitch_5
    iget v6, p0, Landroid/widget/Switch;->mTouchMode:I

    if-ne v6, v8, :cond_3

    .line 539
    invoke-direct {p0, p1}, Landroid/widget/Switch;->stopDrag(Landroid/view/MotionEvent;)V

    goto/16 :goto_1

    .line 542
    :cond_3
    const/4 v5, 0x0

    iput v5, p0, Landroid/widget/Switch;->mTouchMode:I

    .line 543
    iget-object v5, p0, Landroid/widget/Switch;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v5}, Landroid/view/VelocityTracker;->clear()V

    goto/16 :goto_0

    .line 488
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_5
        :pswitch_2
        :pswitch_5
    .end packed-switch

    .line 501
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_0
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public setChecked(Z)V
    .locals 1
    .parameter "checked"

    .prologue
    .line 598
    invoke-super {p0, p1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 599
    if-eqz p1, :cond_0

    invoke-direct {p0}, Landroid/widget/Switch;->getThumbScrollRange()I

    move-result v0

    int-to-float v0, v0

    :goto_0
    iput v0, p0, Landroid/widget/Switch;->mThumbPosition:F

    .line 600
    invoke-virtual {p0}, Landroid/widget/Switch;->invalidate()V

    .line 601
    return-void

    .line 599
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setSwitchTextAppearance(Landroid/content/Context;I)V
    .locals 8
    .parameter "context"
    .parameter "resid"

    .prologue
    const/4 v6, 0x0

    const/4 v7, -0x1

    .line 231
    sget-object v5, Lcom/android/internal/R$styleable;->TextAppearance:[I

    invoke-virtual {p1, p2, v5}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 238
    .local v0, appearance:Landroid/content/res/TypedArray;
    const/4 v5, 0x3

    invoke-virtual {v0, v5}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    .line 240
    .local v1, colors:Landroid/content/res/ColorStateList;
    if-eqz v1, :cond_1

    .line 241
    iput-object v1, p0, Landroid/widget/Switch;->mTextColors:Landroid/content/res/ColorStateList;

    .line 247
    :goto_0
    invoke-virtual {v0, v6, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    .line 249
    .local v3, ts:I
    if-eqz v3, :cond_0

    .line 250
    int-to-float v5, v3

    iget-object v6, p0, Landroid/widget/Switch;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v6}, Landroid/text/TextPaint;->getTextSize()F

    move-result v6

    cmpl-float v5, v5, v6

    if-eqz v5, :cond_0

    .line 251
    iget-object v5, p0, Landroid/widget/Switch;->mTextPaint:Landroid/text/TextPaint;

    int-to-float v6, v3

    invoke-virtual {v5, v6}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 252
    invoke-virtual {p0}, Landroid/widget/Switch;->requestLayout()V

    .line 258
    :cond_0
    const/4 v5, 0x1

    invoke-virtual {v0, v5, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    .line 260
    .local v4, typefaceIndex:I
    const/4 v5, 0x2

    invoke-virtual {v0, v5, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    .line 263
    .local v2, styleIndex:I
    invoke-direct {p0, v4, v2}, Landroid/widget/Switch;->setSwitchTypefaceByIndex(II)V

    .line 265
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 266
    return-void

    .line 244
    .end local v2           #styleIndex:I
    .end local v3           #ts:I
    .end local v4           #typefaceIndex:I
    :cond_1
    invoke-virtual {p0}, Landroid/widget/Switch;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v5

    iput-object v5, p0, Landroid/widget/Switch;->mTextColors:Landroid/content/res/ColorStateList;

    goto :goto_0
.end method

.method public setSwitchTypeface(Landroid/graphics/Typeface;)V
    .locals 1
    .parameter "tf"

    .prologue
    .line 325
    iget-object v0, p0, Landroid/widget/Switch;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/text/TextPaint;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v0

    if-eq v0, p1, :cond_0

    .line 326
    iget-object v0, p0, Landroid/widget/Switch;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0, p1}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 328
    invoke-virtual {p0}, Landroid/widget/Switch;->requestLayout()V

    .line 329
    invoke-virtual {p0}, Landroid/widget/Switch;->invalidate()V

    .line 331
    :cond_0
    return-void
.end method

.method public setSwitchTypeface(Landroid/graphics/Typeface;I)V
    .locals 6
    .parameter "tf"
    .parameter "style"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 294
    if-lez p2, :cond_4

    .line 295
    if-nez p1, :cond_1

    .line 296
    invoke-static {p2}, Landroid/graphics/Typeface;->defaultFromStyle(I)Landroid/graphics/Typeface;

    move-result-object p1

    .line 301
    :goto_0
    invoke-virtual {p0, p1}, Landroid/widget/Switch;->setSwitchTypeface(Landroid/graphics/Typeface;)V

    .line 303
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/graphics/Typeface;->getStyle()I

    move-result v1

    .line 304
    .local v1, typefaceStyle:I
    :goto_1
    xor-int/lit8 v4, v1, -0x1

    and-int v0, p2, v4

    .line 305
    .local v0, need:I
    iget-object v4, p0, Landroid/widget/Switch;->mTextPaint:Landroid/text/TextPaint;

    and-int/lit8 v5, v0, 0x1

    if-eqz v5, :cond_0

    const/4 v2, 0x1

    :cond_0
    invoke-virtual {v4, v2}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    .line 306
    iget-object v4, p0, Landroid/widget/Switch;->mTextPaint:Landroid/text/TextPaint;

    and-int/lit8 v2, v0, 0x2

    if-eqz v2, :cond_3

    const/high16 v2, -0x4180

    :goto_2
    invoke-virtual {v4, v2}, Landroid/text/TextPaint;->setTextSkewX(F)V

    .line 312
    .end local v0           #need:I
    .end local v1           #typefaceStyle:I
    :goto_3
    return-void

    .line 298
    :cond_1
    invoke-static {p1, p2}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object p1

    goto :goto_0

    :cond_2
    move v1, v2

    .line 303
    goto :goto_1

    .restart local v0       #need:I
    .restart local v1       #typefaceStyle:I
    :cond_3
    move v2, v3

    .line 306
    goto :goto_2

    .line 308
    .end local v0           #need:I
    .end local v1           #typefaceStyle:I
    :cond_4
    iget-object v4, p0, Landroid/widget/Switch;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v4, v2}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    .line 309
    iget-object v2, p0, Landroid/widget/Switch;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v2, v3}, Landroid/text/TextPaint;->setTextSkewX(F)V

    .line 310
    invoke-virtual {p0, p1}, Landroid/widget/Switch;->setSwitchTypeface(Landroid/graphics/Typeface;)V

    goto :goto_3
.end method

.method public setTextOff(Ljava/lang/CharSequence;)V
    .locals 0
    .parameter "textOff"

    .prologue
    .line 359
    iput-object p1, p0, Landroid/widget/Switch;->mTextOff:Ljava/lang/CharSequence;

    .line 360
    invoke-virtual {p0}, Landroid/widget/Switch;->requestLayout()V

    .line 361
    return-void
.end method

.method public setTextOn(Ljava/lang/CharSequence;)V
    .locals 0
    .parameter "textOn"

    .prologue
    .line 344
    iput-object p1, p0, Landroid/widget/Switch;->mTextOn:Ljava/lang/CharSequence;

    .line 345
    invoke-virtual {p0}, Landroid/widget/Switch;->requestLayout()V

    .line 346
    return-void
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1
    .parameter "who"

    .prologue
    .line 790
    invoke-super {p0, p1}, Landroid/widget/CompoundButton;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/widget/Switch;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Landroid/widget/Switch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    if-ne p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
