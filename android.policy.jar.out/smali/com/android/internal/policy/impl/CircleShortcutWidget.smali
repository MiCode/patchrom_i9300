.class public Lcom/android/internal/policy/impl/CircleShortcutWidget;
.super Landroid/widget/LinearLayout;
.source "CircleShortcutWidget.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/impl/CircleShortcutWidget$ShortcutImageView;,
        Lcom/android/internal/policy/impl/CircleShortcutWidget$ShortcutItem;
    }
.end annotation


# static fields
.field private static final APPLICATION_SEPERATOR:C = ';'

.field private static final PACKAGE_CLASS_SEPERATOR:C = '/'

.field private static final mBlurPaint:Landroid/graphics/Paint;

.field private static mGlowCanvas:Landroid/graphics/Canvas;

.field private static final mHolographicPaint:Landroid/graphics/Paint;

.field private static mOuterGlowColor:I

.field private static final mSaturationPaint:Landroid/graphics/Paint;

.field private static mTempOffset:[I

.field private static sCoarseClipTable:Landroid/graphics/MaskFilter;

.field private static sMediumOuterBlurMaskFilter:Landroid/graphics/BlurMaskFilter;


# instance fields
.field private final CAMERA_ACTIVITY_NAME:Ljava/lang/String;

.field private final CAMERA_PACKAGE_NAME:Ljava/lang/String;

.field private DBG:Z

.field private final FADE_IN_OUT_ANIMATION_DURATION:I

.field private TAG:Ljava/lang/String;

.field private mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

.field private mCanvas:Landroid/graphics/Canvas;

.field private mCircleUnlockWidget:Lcom/android/internal/policy/impl/CircleUnlockWidget;

.field private mFadeInAnimation:Landroid/view/animation/AlphaAnimation;

.field private mFadeOutAnimation:Landroid/view/animation/AlphaAnimation;

.field private mIconDpi:I

.field private mIconHeight:I

.field private mIconWidth:I

.field private mIsFaceLockOn:Z

.field private mIsTablet:Z

.field private mItemCount:I

.field private mLandBlankLayout:Landroid/widget/LinearLayout;

.field private mOldBounds:Landroid/graphics/Rect;

.field private mOrientation:I

.field private mPm:Landroid/content/pm/PackageManager;

.field private mShortcutListener:Lcom/android/internal/policy/impl/CircleUnlockWidget$OnCircleUnlockListener;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 100
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    sput-object v0, Lcom/android/internal/policy/impl/CircleShortcutWidget;->mHolographicPaint:Landroid/graphics/Paint;

    .line 101
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    sput-object v0, Lcom/android/internal/policy/impl/CircleShortcutWidget;->mBlurPaint:Landroid/graphics/Paint;

    .line 102
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    sput-object v0, Lcom/android/internal/policy/impl/CircleShortcutWidget;->mSaturationPaint:Landroid/graphics/Paint;

    .line 104
    const/4 v0, 0x0

    const/16 v1, 0xc8

    invoke-static {v0, v1}, Landroid/graphics/TableMaskFilter;->CreateClipTable(II)Landroid/graphics/TableMaskFilter;

    move-result-object v0

    sput-object v0, Lcom/android/internal/policy/impl/CircleShortcutWidget;->sCoarseClipTable:Landroid/graphics/MaskFilter;

    .line 105
    const/4 v0, 0x2

    new-array v0, v0, [I

    sput-object v0, Lcom/android/internal/policy/impl/CircleShortcutWidget;->mTempOffset:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/internal/policy/impl/KeyguardScreenCallback;Lcom/android/internal/policy/impl/CircleUnlockWidget;Landroid/content/res/Configuration;Z)V
    .locals 23
    .parameter "context"
    .parameter "callback"
    .parameter "circleUnlockWidget"
    .parameter "configuration"
    .parameter "facelockOn"

    .prologue
    .line 110
    invoke-direct/range {p0 .. p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 64
    const-string v19, "CircleShortcutWidget"

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/policy/impl/CircleShortcutWidget;->TAG:Ljava/lang/String;

    .line 65
    const/16 v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/CircleShortcutWidget;->DBG:Z

    .line 77
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/policy/impl/CircleShortcutWidget;->mIconWidth:I

    .line 78
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/policy/impl/CircleShortcutWidget;->mIconHeight:I

    .line 85
    new-instance v19, Landroid/view/animation/AlphaAnimation;

    const/16 v20, 0x0

    const/high16 v21, 0x3f80

    invoke-direct/range {v19 .. v21}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/policy/impl/CircleShortcutWidget;->mFadeInAnimation:Landroid/view/animation/AlphaAnimation;

    .line 86
    new-instance v19, Landroid/view/animation/AlphaAnimation;

    const/high16 v20, 0x3f80

    const/16 v21, 0x0

    invoke-direct/range {v19 .. v21}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/policy/impl/CircleShortcutWidget;->mFadeOutAnimation:Landroid/view/animation/AlphaAnimation;

    .line 87
    const/16 v19, 0x12c

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/policy/impl/CircleShortcutWidget;->FADE_IN_OUT_ANIMATION_DURATION:I

    .line 91
    const-string v19, "com.sec.android.app.camera"

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/policy/impl/CircleShortcutWidget;->CAMERA_PACKAGE_NAME:Ljava/lang/String;

    .line 92
    const-string v19, "com.sec.android.app.camera.Camera"

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/policy/impl/CircleShortcutWidget;->CAMERA_ACTIVITY_NAME:Ljava/lang/String;

    .line 96
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/policy/impl/CircleShortcutWidget;->mItemCount:I

    .line 112
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/policy/impl/CircleShortcutWidget;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    .line 113
    move-object/from16 v0, p3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/policy/impl/CircleShortcutWidget;->mCircleUnlockWidget:Lcom/android/internal/policy/impl/CircleUnlockWidget;

    .line 114
    move-object/from16 v0, p4

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    move/from16 v19, v0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/policy/impl/CircleShortcutWidget;->mOrientation:I

    .line 115
    move/from16 v0, p5

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/CircleShortcutWidget;->mIsFaceLockOn:Z

    .line 117
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/CircleShortcutWidget;->mFadeInAnimation:Landroid/view/animation/AlphaAnimation;

    move-object/from16 v19, v0

    const/16 v20, 0x1

    invoke-virtual/range {v19 .. v20}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V

    .line 118
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/CircleShortcutWidget;->mFadeInAnimation:Landroid/view/animation/AlphaAnimation;

    move-object/from16 v19, v0

    const-wide/16 v20, 0x12c

    invoke-virtual/range {v19 .. v21}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 120
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/CircleShortcutWidget;->mFadeOutAnimation:Landroid/view/animation/AlphaAnimation;

    move-object/from16 v19, v0

    const/16 v20, 0x1

    invoke-virtual/range {v19 .. v20}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V

    .line 121
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/CircleShortcutWidget;->mFadeOutAnimation:Landroid/view/animation/AlphaAnimation;

    move-object/from16 v19, v0

    const-wide/16 v20, 0x12c

    invoke-virtual/range {v19 .. v21}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 125
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v19

    const-string v20, "lock_screen_shortcut"

    const/16 v21, 0x0

    invoke-static/range {v19 .. v21}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v19

    if-nez v19, :cond_1

    .line 128
    const/16 v19, 0x8

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/CircleShortcutWidget;->setVisibility(I)V

    .line 379
    :cond_0
    :goto_0
    return-void

    .line 132
    :cond_1
    invoke-static {}, Lcom/android/internal/policy/impl/SamsungLockScreenProperties;->isKoreaFeature()Z

    move-result v19

    if-eqz v19, :cond_2

    .line 133
    const/16 v19, 0x8

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/CircleShortcutWidget;->setVisibility(I)V

    goto :goto_0

    .line 148
    :cond_2
    invoke-static {}, Lcom/android/internal/policy/impl/SamsungLockScreenProperties;->isTabletDevice()Z

    move-result v19

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/CircleShortcutWidget;->mIsTablet:Z

    .line 150
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/CircleShortcutWidget;->mOrientation:I

    move/from16 v19, v0

    const/16 v20, 0x2

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_3

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/CircleShortcutWidget;->mIsTablet:Z

    move/from16 v19, v0

    if-nez v19, :cond_3

    .line 151
    new-instance v19, Landroid/widget/LinearLayout;

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/policy/impl/CircleShortcutWidget;->mLandBlankLayout:Landroid/widget/LinearLayout;

    .line 155
    :cond_3
    new-instance v19, Landroid/graphics/Rect;

    invoke-direct/range {v19 .. v19}, Landroid/graphics/Rect;-><init>()V

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/policy/impl/CircleShortcutWidget;->mOldBounds:Landroid/graphics/Rect;

    .line 156
    new-instance v19, Landroid/graphics/Canvas;

    invoke-direct/range {v19 .. v19}, Landroid/graphics/Canvas;-><init>()V

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/policy/impl/CircleShortcutWidget;->mCanvas:Landroid/graphics/Canvas;

    .line 157
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/CircleShortcutWidget;->mCanvas:Landroid/graphics/Canvas;

    move-object/from16 v19, v0

    new-instance v20, Landroid/graphics/PaintFlagsDrawFilter;

    const/16 v21, 0x4

    const/16 v22, 0x2

    invoke-direct/range {v20 .. v22}, Landroid/graphics/PaintFlagsDrawFilter;-><init>(II)V

    invoke-virtual/range {v19 .. v20}, Landroid/graphics/Canvas;->setDrawFilter(Landroid/graphics/DrawFilter;)V

    .line 160
    new-instance v19, Landroid/graphics/Canvas;

    invoke-direct/range {v19 .. v19}, Landroid/graphics/Canvas;-><init>()V

    sput-object v19, Lcom/android/internal/policy/impl/CircleShortcutWidget;->mGlowCanvas:Landroid/graphics/Canvas;

    .line 161
    sget-object v19, Lcom/android/internal/policy/impl/CircleShortcutWidget;->mGlowCanvas:Landroid/graphics/Canvas;

    new-instance v20, Landroid/graphics/PaintFlagsDrawFilter;

    const/16 v21, 0x4

    const/16 v22, 0x2

    invoke-direct/range {v20 .. v22}, Landroid/graphics/PaintFlagsDrawFilter;-><init>(II)V

    invoke-virtual/range {v19 .. v20}, Landroid/graphics/Canvas;->setDrawFilter(Landroid/graphics/DrawFilter;)V

    .line 163
    sget-object v19, Lcom/android/internal/policy/impl/CircleShortcutWidget;->mHolographicPaint:Landroid/graphics/Paint;

    const/16 v20, 0x1

    invoke-virtual/range {v19 .. v20}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 164
    sget-object v19, Lcom/android/internal/policy/impl/CircleShortcutWidget;->mHolographicPaint:Landroid/graphics/Paint;

    const/16 v20, 0x1

    invoke-virtual/range {v19 .. v20}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 165
    new-instance v19, Landroid/graphics/BlurMaskFilter;

    const/high16 v20, 0x40c0

    sget-object v21, Landroid/graphics/BlurMaskFilter$Blur;->OUTER:Landroid/graphics/BlurMaskFilter$Blur;

    invoke-direct/range {v19 .. v21}, Landroid/graphics/BlurMaskFilter;-><init>(FLandroid/graphics/BlurMaskFilter$Blur;)V

    sput-object v19, Lcom/android/internal/policy/impl/CircleShortcutWidget;->sMediumOuterBlurMaskFilter:Landroid/graphics/BlurMaskFilter;

    .line 166
    sget-object v19, Lcom/android/internal/policy/impl/CircleShortcutWidget;->mBlurPaint:Landroid/graphics/Paint;

    const/16 v20, 0x1

    invoke-virtual/range {v19 .. v20}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 167
    sget-object v19, Lcom/android/internal/policy/impl/CircleShortcutWidget;->mBlurPaint:Landroid/graphics/Paint;

    const/16 v20, 0x1

    invoke-virtual/range {v19 .. v20}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 168
    sget-object v19, Lcom/android/internal/policy/impl/CircleShortcutWidget;->mBlurPaint:Landroid/graphics/Paint;

    sget-object v20, Lcom/android/internal/policy/impl/CircleShortcutWidget;->sMediumOuterBlurMaskFilter:Landroid/graphics/BlurMaskFilter;

    invoke-virtual/range {v19 .. v20}, Landroid/graphics/Paint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    .line 169
    const/16 v19, -0x1

    sput v19, Lcom/android/internal/policy/impl/CircleShortcutWidget;->mOuterGlowColor:I

    .line 171
    new-instance v8, Landroid/graphics/ColorMatrix;

    invoke-direct {v8}, Landroid/graphics/ColorMatrix;-><init>()V

    .line 172
    .local v8, cm:Landroid/graphics/ColorMatrix;
    const/high16 v19, 0x3f00

    const/high16 v20, 0x3f00

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-static {v8, v0, v1}, Lcom/android/internal/policy/impl/CircleShortcutWidget;->setContrastSaturation(Landroid/graphics/ColorMatrix;FF)V

    .line 175
    sget-object v19, Lcom/android/internal/policy/impl/CircleShortcutWidget;->mSaturationPaint:Landroid/graphics/Paint;

    const/16 v20, 0x1

    invoke-virtual/range {v19 .. v20}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 176
    sget-object v19, Lcom/android/internal/policy/impl/CircleShortcutWidget;->mSaturationPaint:Landroid/graphics/Paint;

    const/16 v20, 0x1

    invoke-virtual/range {v19 .. v20}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 177
    sget-object v19, Lcom/android/internal/policy/impl/CircleShortcutWidget;->mSaturationPaint:Landroid/graphics/Paint;

    new-instance v20, Landroid/graphics/ColorMatrixColorFilter;

    move-object/from16 v0, v20

    invoke-direct {v0, v8}, Landroid/graphics/ColorMatrixColorFilter;-><init>(Landroid/graphics/ColorMatrix;)V

    invoke-virtual/range {v19 .. v20}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 179
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/policy/impl/CircleShortcutWidget;->mPm:Landroid/content/pm/PackageManager;

    .line 181
    new-instance v19, Lcom/android/internal/policy/impl/CircleShortcutWidget$1;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/internal/policy/impl/CircleShortcutWidget$1;-><init>(Lcom/android/internal/policy/impl/CircleShortcutWidget;)V

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/policy/impl/CircleShortcutWidget;->mShortcutListener:Lcom/android/internal/policy/impl/CircleUnlockWidget$OnCircleUnlockListener;

    .line 198
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v19

    move-object/from16 v0, v19

    iget v12, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    .line 199
    .local v12, density:I
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/impl/CircleShortcutWidget;->isScreenLarge()Z

    move-result v19

    if-eqz v19, :cond_b

    .line 200
    const/16 v19, 0x78

    move/from16 v0, v19

    if-ne v12, v0, :cond_8

    .line 201
    const/16 v19, 0xa0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/policy/impl/CircleShortcutWidget;->mIconDpi:I

    .line 213
    :cond_4
    :goto_1
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/CircleShortcutWidget;->DBG:Z

    move/from16 v19, v0

    if-eqz v19, :cond_5

    .line 214
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/CircleShortcutWidget;->TAG:Ljava/lang/String;

    move-object/from16 v19, v0

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "density = "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/CircleShortcutWidget;->mIconDpi:I

    move/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    :cond_5
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v19

    const-string v20, "lock_screen_shortcut_app_list"

    invoke-static/range {v19 .. v20}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 229
    .local v5, activityList:Ljava/lang/String;
    if-eqz v5, :cond_11

    .line 233
    const/4 v13, 0x0

    .line 236
    .local v13, dummyItem:Lcom/android/internal/policy/impl/CircleShortcutWidget$ShortcutItem;
    new-instance v17, Landroid/text/TextUtils$SimpleStringSplitter;

    const/16 v19, 0x3b

    move-object/from16 v0, v17

    move/from16 v1, v19

    invoke-direct {v0, v1}, Landroid/text/TextUtils$SimpleStringSplitter;-><init>(C)V

    .line 237
    .local v17, splitter:Landroid/text/TextUtils$StringSplitter;
    move-object/from16 v0, v17

    invoke-interface {v0, v5}, Landroid/text/TextUtils$StringSplitter;->setString(Ljava/lang/String;)V

    .line 238
    const/4 v11, 0x0

    .line 239
    .local v11, count:I
    invoke-interface/range {v17 .. v17}, Landroid/text/TextUtils$StringSplitter;->iterator()Ljava/util/Iterator;

    move-result-object v14

    .local v14, i$:Ljava/util/Iterator;
    :goto_2
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_10

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    .line 240
    .local v15, pkgActivity:Ljava/lang/String;
    add-int/lit8 v11, v11, 0x1

    .line 242
    const/16 v19, 0x2f

    move/from16 v0, v19

    invoke-virtual {v15, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v10

    .line 243
    .local v10, commaIndex:I
    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-virtual {v15, v0, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v16

    .line 244
    .local v16, pkgName:Ljava/lang/String;
    add-int/lit8 v19, v10, 0x1

    move/from16 v0, v19

    invoke-virtual {v15, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    .line 245
    .local v6, activityName:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/CircleShortcutWidget;->DBG:Z

    move/from16 v19, v0

    if-eqz v19, :cond_6

    .line 246
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/CircleShortcutWidget;->TAG:Ljava/lang/String;

    move-object/from16 v19, v0

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "pkg name ="

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ", activityName="

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    :cond_6
    const/4 v9, 0x0

    .line 260
    .local v9, cn:Landroid/content/ComponentName;
    new-instance v9, Landroid/content/ComponentName;

    .end local v9           #cn:Landroid/content/ComponentName;
    move-object/from16 v0, v16

    invoke-direct {v9, v0, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 261
    .restart local v9       #cn:Landroid/content/ComponentName;
    new-instance v18, Lcom/android/internal/policy/impl/CircleShortcutWidget$ShortcutItem;

    const/16 v19, 0x1

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v3, v19

    invoke-direct {v0, v1, v2, v9, v3}, Lcom/android/internal/policy/impl/CircleShortcutWidget$ShortcutItem;-><init>(Lcom/android/internal/policy/impl/CircleShortcutWidget;Landroid/content/Context;Landroid/content/ComponentName;Z)V

    .line 264
    .local v18, testItem:Lcom/android/internal/policy/impl/CircleShortcutWidget$ShortcutItem;
    #getter for: Lcom/android/internal/policy/impl/CircleShortcutWidget$ShortcutItem;->mIntent:Landroid/content/Intent;
    invoke-static/range {v18 .. v18}, Lcom/android/internal/policy/impl/CircleShortcutWidget$ShortcutItem;->access$200(Lcom/android/internal/policy/impl/CircleShortcutWidget$ShortcutItem;)Landroid/content/Intent;

    move-result-object v19

    if-eqz v19, :cond_e

    .line 265
    new-instance v19, Lcom/android/internal/policy/impl/CircleShortcutWidget$2;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/internal/policy/impl/CircleShortcutWidget$2;-><init>(Lcom/android/internal/policy/impl/CircleShortcutWidget;)V

    invoke-virtual/range {v18 .. v19}, Lcom/android/internal/policy/impl/CircleShortcutWidget$ShortcutItem;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 329
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/CircleShortcutWidget;->mOrientation:I

    move/from16 v19, v0

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_7

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/CircleShortcutWidget;->mIsTablet:Z

    move/from16 v19, v0

    if-eqz v19, :cond_c

    .line 330
    :cond_7
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/CircleShortcutWidget;->addView(Landroid/view/View;)V

    .line 359
    :goto_3
    const/4 v9, 0x0

    .line 361
    goto/16 :goto_2

    .line 202
    .end local v5           #activityList:Ljava/lang/String;
    .end local v6           #activityName:Ljava/lang/String;
    .end local v9           #cn:Landroid/content/ComponentName;
    .end local v10           #commaIndex:I
    .end local v11           #count:I
    .end local v13           #dummyItem:Lcom/android/internal/policy/impl/CircleShortcutWidget$ShortcutItem;
    .end local v14           #i$:Ljava/util/Iterator;
    .end local v15           #pkgActivity:Ljava/lang/String;
    .end local v16           #pkgName:Ljava/lang/String;
    .end local v17           #splitter:Landroid/text/TextUtils$StringSplitter;
    .end local v18           #testItem:Lcom/android/internal/policy/impl/CircleShortcutWidget$ShortcutItem;
    :cond_8
    const/16 v19, 0xa0

    move/from16 v0, v19

    if-ne v12, v0, :cond_9

    .line 203
    const/16 v19, 0xf0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/policy/impl/CircleShortcutWidget;->mIconDpi:I

    goto/16 :goto_1

    .line 204
    :cond_9
    const/16 v19, 0xf0

    move/from16 v0, v19

    if-ne v12, v0, :cond_a

    .line 205
    const/16 v19, 0x140

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/policy/impl/CircleShortcutWidget;->mIconDpi:I

    goto/16 :goto_1

    .line 206
    :cond_a
    const/16 v19, 0x140

    move/from16 v0, v19

    if-ne v12, v0, :cond_4

    .line 208
    const/16 v19, 0x140

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/policy/impl/CircleShortcutWidget;->mIconDpi:I

    goto/16 :goto_1

    .line 211
    :cond_b
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v19

    move-object/from16 v0, v19

    iget v0, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    move/from16 v19, v0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/policy/impl/CircleShortcutWidget;->mIconDpi:I

    goto/16 :goto_1

    .line 332
    .restart local v5       #activityList:Ljava/lang/String;
    .restart local v6       #activityName:Ljava/lang/String;
    .restart local v9       #cn:Landroid/content/ComponentName;
    .restart local v10       #commaIndex:I
    .restart local v11       #count:I
    .restart local v13       #dummyItem:Lcom/android/internal/policy/impl/CircleShortcutWidget$ShortcutItem;
    .restart local v14       #i$:Ljava/util/Iterator;
    .restart local v15       #pkgActivity:Ljava/lang/String;
    .restart local v16       #pkgName:Ljava/lang/String;
    .restart local v17       #splitter:Landroid/text/TextUtils$StringSplitter;
    .restart local v18       #testItem:Lcom/android/internal/policy/impl/CircleShortcutWidget$ShortcutItem;
    :cond_c
    invoke-virtual/range {v18 .. v18}, Lcom/android/internal/policy/impl/CircleShortcutWidget$ShortcutItem;->getItemPadding()I

    move-result v19

    const/16 v20, 0x0

    invoke-virtual/range {v18 .. v18}, Lcom/android/internal/policy/impl/CircleShortcutWidget$ShortcutItem;->getItemPadding()I

    move-result v21

    const/16 v22, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, v21

    move/from16 v4, v22

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/internal/policy/impl/CircleShortcutWidget;->setPadding(IIII)V

    .line 335
    const/16 v19, 0x3

    move/from16 v0, v19

    if-eq v11, v0, :cond_d

    .line 336
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/CircleShortcutWidget;->addView(Landroid/view/View;)V

    goto :goto_3

    .line 339
    :cond_d
    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v19, -0x1

    const/16 v20, -0x1

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-direct {v7, v0, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 341
    .local v7, blankLayoutParams:Landroid/widget/LinearLayout$LayoutParams;
    const/high16 v19, 0x3f80

    move/from16 v0, v19

    iput v0, v7, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 342
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/CircleShortcutWidget;->mLandBlankLayout:Landroid/widget/LinearLayout;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1, v7}, Lcom/android/internal/policy/impl/CircleShortcutWidget;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 345
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/CircleShortcutWidget;->addView(Landroid/view/View;)V

    .line 348
    new-instance v13, Lcom/android/internal/policy/impl/CircleShortcutWidget$ShortcutItem;

    .end local v13           #dummyItem:Lcom/android/internal/policy/impl/CircleShortcutWidget$ShortcutItem;
    const/16 v19, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v19

    invoke-direct {v13, v0, v1, v9, v2}, Lcom/android/internal/policy/impl/CircleShortcutWidget$ShortcutItem;-><init>(Lcom/android/internal/policy/impl/CircleShortcutWidget;Landroid/content/Context;Landroid/content/ComponentName;Z)V

    .line 349
    .restart local v13       #dummyItem:Lcom/android/internal/policy/impl/CircleShortcutWidget$ShortcutItem;
    goto/16 :goto_3

    .line 353
    .end local v7           #blankLayoutParams:Landroid/widget/LinearLayout$LayoutParams;
    :cond_e
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/CircleShortcutWidget;->DBG:Z

    move/from16 v19, v0

    if-eqz v19, :cond_f

    .line 354
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/CircleShortcutWidget;->TAG:Ljava/lang/String;

    move-object/from16 v19, v0

    const-string v20, "mIntent=null"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 356
    :cond_f
    add-int/lit8 v11, v11, -0x1

    goto/16 :goto_3

    .line 364
    .end local v6           #activityName:Ljava/lang/String;
    .end local v9           #cn:Landroid/content/ComponentName;
    .end local v10           #commaIndex:I
    .end local v15           #pkgActivity:Ljava/lang/String;
    .end local v16           #pkgName:Ljava/lang/String;
    .end local v18           #testItem:Lcom/android/internal/policy/impl/CircleShortcutWidget$ShortcutItem;
    :cond_10
    move-object/from16 v0, p0

    iput v11, v0, Lcom/android/internal/policy/impl/CircleShortcutWidget;->mItemCount:I

    .line 366
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/CircleShortcutWidget;->mOrientation:I

    move/from16 v19, v0

    const/16 v20, 0x2

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_0

    .line 368
    const/16 v19, 0x3

    move/from16 v0, v19

    if-ne v11, v0, :cond_0

    if-eqz v13, :cond_0

    .line 369
    const/16 v19, 0x4

    move/from16 v0, v19

    invoke-virtual {v13, v0}, Lcom/android/internal/policy/impl/CircleShortcutWidget$ShortcutItem;->setVisibility(I)V

    .line 370
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/internal/policy/impl/CircleShortcutWidget;->addView(Landroid/view/View;)V

    goto/16 :goto_0

    .line 376
    .end local v11           #count:I
    .end local v13           #dummyItem:Lcom/android/internal/policy/impl/CircleShortcutWidget$ShortcutItem;
    .end local v14           #i$:Ljava/util/Iterator;
    .end local v17           #splitter:Landroid/text/TextUtils$StringSplitter;
    :cond_11
    const/16 v19, 0x8

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/CircleShortcutWidget;->setVisibility(I)V

    goto/16 :goto_0
.end method

.method static synthetic access$000(Lcom/android/internal/policy/impl/CircleShortcutWidget;)Lcom/android/internal/policy/impl/KeyguardScreenCallback;
    .locals 1
    .parameter "x0"

    .prologue
    .line 62
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleShortcutWidget;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/internal/policy/impl/CircleShortcutWidget;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 62
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleShortcutWidget;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/internal/policy/impl/CircleShortcutWidget;Landroid/content/ComponentName;)Landroid/content/Intent;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 62
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/CircleShortcutWidget;->getLaunchIntent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/internal/policy/impl/CircleShortcutWidget;)Landroid/content/pm/PackageManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 62
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleShortcutWidget;->mPm:Landroid/content/pm/PackageManager;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/internal/policy/impl/CircleShortcutWidget;Landroid/graphics/drawable/Drawable;Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 62
    invoke-direct {p0, p1, p2}, Lcom/android/internal/policy/impl/CircleShortcutWidget;->createIconThumbnail(Landroid/graphics/drawable/Drawable;Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1300()Landroid/graphics/MaskFilter;
    .locals 1

    .prologue
    .line 62
    sget-object v0, Lcom/android/internal/policy/impl/CircleShortcutWidget;->sCoarseClipTable:Landroid/graphics/MaskFilter;

    return-object v0
.end method

.method static synthetic access$1400()Landroid/graphics/Paint;
    .locals 1

    .prologue
    .line 62
    sget-object v0, Lcom/android/internal/policy/impl/CircleShortcutWidget;->mHolographicPaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method static synthetic access$1500()I
    .locals 1

    .prologue
    .line 62
    sget v0, Lcom/android/internal/policy/impl/CircleShortcutWidget;->mOuterGlowColor:I

    return v0
.end method

.method static synthetic access$1600()Landroid/graphics/Paint;
    .locals 1

    .prologue
    .line 62
    sget-object v0, Lcom/android/internal/policy/impl/CircleShortcutWidget;->mSaturationPaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method static synthetic access$1700()Landroid/graphics/Paint;
    .locals 1

    .prologue
    .line 62
    sget-object v0, Lcom/android/internal/policy/impl/CircleShortcutWidget;->mBlurPaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method static synthetic access$1800()[I
    .locals 1

    .prologue
    .line 62
    sget-object v0, Lcom/android/internal/policy/impl/CircleShortcutWidget;->mTempOffset:[I

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/internal/policy/impl/CircleShortcutWidget;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 62
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/CircleShortcutWidget;->DBG:Z

    return v0
.end method

.method static synthetic access$400(Lcom/android/internal/policy/impl/CircleShortcutWidget;)Lcom/android/internal/policy/impl/CircleUnlockWidget;
    .locals 1
    .parameter "x0"

    .prologue
    .line 62
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleShortcutWidget;->mCircleUnlockWidget:Lcom/android/internal/policy/impl/CircleUnlockWidget;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/internal/policy/impl/CircleShortcutWidget;)Lcom/android/internal/policy/impl/CircleUnlockWidget$OnCircleUnlockListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 62
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleShortcutWidget;->mShortcutListener:Lcom/android/internal/policy/impl/CircleUnlockWidget$OnCircleUnlockListener;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/internal/policy/impl/CircleShortcutWidget;)Landroid/view/animation/AlphaAnimation;
    .locals 1
    .parameter "x0"

    .prologue
    .line 62
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleShortcutWidget;->mFadeOutAnimation:Landroid/view/animation/AlphaAnimation;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/internal/policy/impl/CircleShortcutWidget;Landroid/view/View;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 62
    invoke-direct {p0, p1, p2}, Lcom/android/internal/policy/impl/CircleShortcutWidget;->hideOtherShortcuts(Landroid/view/View;Z)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/internal/policy/impl/CircleShortcutWidget;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 62
    iget v0, p0, Lcom/android/internal/policy/impl/CircleShortcutWidget;->mIconWidth:I

    return v0
.end method

.method static synthetic access$802(Lcom/android/internal/policy/impl/CircleShortcutWidget;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 62
    iput p1, p0, Lcom/android/internal/policy/impl/CircleShortcutWidget;->mIconWidth:I

    return p1
.end method

.method static synthetic access$902(Lcom/android/internal/policy/impl/CircleShortcutWidget;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 62
    iput p1, p0, Lcom/android/internal/policy/impl/CircleShortcutWidget;->mIconHeight:I

    return p1
.end method

.method private createIconThumbnail(Landroid/graphics/drawable/Drawable;Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .locals 22
    .parameter "icon"
    .parameter "context"

    .prologue
    .line 549
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/CircleShortcutWidget;->mCanvas:Landroid/graphics/Canvas;

    move-object/from16 v20, v0

    monitor-enter v20

    .line 551
    :try_start_0
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/CircleShortcutWidget;->mIconWidth:I

    move/from16 v16, v0

    .line 552
    .local v16, width:I
    move-object/from16 v0, p0

    iget v9, v0, Lcom/android/internal/policy/impl/CircleShortcutWidget;->mIconHeight:I

    .line 554
    .local v9, height:I
    move-object/from16 v0, p1

    instance-of v0, v0, Landroid/graphics/drawable/PaintDrawable;

    move/from16 v19, v0

    if-eqz v19, :cond_6

    .line 555
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/CircleShortcutWidget;->DBG:Z

    move/from16 v19, v0

    if-eqz v19, :cond_0

    .line 556
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/CircleShortcutWidget;->TAG:Ljava/lang/String;

    move-object/from16 v19, v0

    const-string v21, "PaintDrawable"

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 557
    :cond_0
    move-object/from16 v0, p1

    check-cast v0, Landroid/graphics/drawable/PaintDrawable;

    move-object v13, v0

    .line 558
    .local v13, painter:Landroid/graphics/drawable/PaintDrawable;
    move/from16 v0, v16

    invoke-virtual {v13, v0}, Landroid/graphics/drawable/PaintDrawable;->setIntrinsicWidth(I)V

    .line 559
    invoke-virtual {v13, v9}, Landroid/graphics/drawable/PaintDrawable;->setIntrinsicHeight(I)V

    .line 570
    .end local v13           #painter:Landroid/graphics/drawable/PaintDrawable;
    :cond_1
    :goto_0
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v12

    .line 571
    .local v12, iconWidth:I
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v11

    .line 573
    .local v11, iconHeight:I
    if-lez v16, :cond_5

    if-lez v9, :cond_5

    .line 574
    move/from16 v0, v16

    if-lt v0, v12, :cond_2

    if-ge v9, v11, :cond_a

    .line 575
    :cond_2
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/CircleShortcutWidget;->DBG:Z

    move/from16 v19, v0

    if-eqz v19, :cond_3

    .line 576
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/CircleShortcutWidget;->TAG:Ljava/lang/String;

    move-object/from16 v19, v0

    const-string v21, "width < iconWidth || height < iconHeight"

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 577
    :cond_3
    int-to-float v0, v12

    move/from16 v19, v0

    int-to-float v0, v11

    move/from16 v21, v0

    div-float v14, v19, v21

    .line 579
    .local v14, ratio:F
    if-le v12, v11, :cond_8

    .line 580
    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v19, v0

    div-float v19, v19, v14

    move/from16 v0, v19

    float-to-int v9, v0

    .line 585
    :cond_4
    :goto_1
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v19

    const/16 v21, -0x1

    move/from16 v0, v19

    move/from16 v1, v21

    if-eq v0, v1, :cond_9

    sget-object v7, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 586
    .local v7, c:Landroid/graphics/Bitmap$Config;
    :goto_2
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/CircleShortcutWidget;->mIconWidth:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/CircleShortcutWidget;->mIconHeight:I

    move/from16 v21, v0

    move/from16 v0, v19

    move/from16 v1, v21

    invoke-static {v0, v1, v7}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v15

    .line 587
    .local v15, thumb:Landroid/graphics/Bitmap;
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/internal/policy/impl/CircleShortcutWidget;->mCanvas:Landroid/graphics/Canvas;

    .line 588
    .local v8, canvas:Landroid/graphics/Canvas;
    invoke-virtual {v8, v15}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 594
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/CircleShortcutWidget;->mOldBounds:Landroid/graphics/Rect;

    move-object/from16 v19, v0

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v21

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 595
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/CircleShortcutWidget;->mIconWidth:I

    move/from16 v19, v0

    sub-int v19, v19, v16

    div-int/lit8 v17, v19, 0x2

    .line 596
    .local v17, x:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/CircleShortcutWidget;->mIconHeight:I

    move/from16 v19, v0

    sub-int v19, v19, v9

    div-int/lit8 v18, v19, 0x2

    .line 597
    .local v18, y:I
    add-int v19, v17, v16

    add-int v21, v18, v9

    move-object/from16 v0, p1

    move/from16 v1, v17

    move/from16 v2, v18

    move/from16 v3, v19

    move/from16 v4, v21

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 598
    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 599
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/CircleShortcutWidget;->mOldBounds:Landroid/graphics/Rect;

    move-object/from16 v19, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 601
    new-instance v10, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual/range {p2 .. p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-direct {v10, v0, v15}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .end local p1
    .local v10, icon:Landroid/graphics/drawable/Drawable;
    move-object/from16 p1, v10

    .line 620
    .end local v7           #c:Landroid/graphics/Bitmap$Config;
    .end local v8           #canvas:Landroid/graphics/Canvas;
    .end local v10           #icon:Landroid/graphics/drawable/Drawable;
    .end local v14           #ratio:F
    .end local v15           #thumb:Landroid/graphics/Bitmap;
    .end local v17           #x:I
    .end local v18           #y:I
    .restart local p1
    :cond_5
    :goto_3
    monitor-exit v20

    .line 622
    return-object p1

    .line 560
    .end local v11           #iconHeight:I
    .end local v12           #iconWidth:I
    :cond_6
    move-object/from16 v0, p1

    instance-of v0, v0, Landroid/graphics/drawable/BitmapDrawable;

    move/from16 v19, v0

    if-eqz v19, :cond_1

    .line 561
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/CircleShortcutWidget;->DBG:Z

    move/from16 v19, v0

    if-eqz v19, :cond_7

    .line 562
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/CircleShortcutWidget;->TAG:Ljava/lang/String;

    move-object/from16 v19, v0

    const-string v21, "BitmapDrawable"

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 564
    :cond_7
    move-object/from16 v0, p1

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    move-object v6, v0

    .line 565
    .local v6, bitmapDrawable:Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual {v6}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v5

    .line 566
    .local v5, bitmap:Landroid/graphics/Bitmap;
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getDensity()I

    move-result v19

    if-nez v19, :cond_1

    .line 567
    invoke-virtual/range {p2 .. p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v6, v0}, Landroid/graphics/drawable/BitmapDrawable;->setTargetDensity(Landroid/util/DisplayMetrics;)V

    goto/16 :goto_0

    .line 620
    .end local v5           #bitmap:Landroid/graphics/Bitmap;
    .end local v6           #bitmapDrawable:Landroid/graphics/drawable/BitmapDrawable;
    .end local v9           #height:I
    .end local v16           #width:I
    :catchall_0
    move-exception v19

    monitor-exit v20
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v19

    .line 581
    .restart local v9       #height:I
    .restart local v11       #iconHeight:I
    .restart local v12       #iconWidth:I
    .restart local v14       #ratio:F
    .restart local v16       #width:I
    :cond_8
    if-le v11, v12, :cond_4

    .line 582
    int-to-float v0, v9

    move/from16 v19, v0

    mul-float v19, v19, v14

    move/from16 v0, v19

    float-to-int v0, v0

    move/from16 v16, v0

    goto/16 :goto_1

    .line 585
    :cond_9
    :try_start_1
    sget-object v7, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    goto/16 :goto_2

    .line 603
    .end local v14           #ratio:F
    :cond_a
    move/from16 v0, v16

    if-ge v12, v0, :cond_5

    if-ge v11, v9, :cond_5

    .line 604
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/CircleShortcutWidget;->DBG:Z

    move/from16 v19, v0

    if-eqz v19, :cond_b

    .line 605
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/CircleShortcutWidget;->TAG:Ljava/lang/String;

    move-object/from16 v19, v0

    const-string v21, "iconWidth < width && iconHeight < height"

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 606
    :cond_b
    sget-object v7, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 607
    .restart local v7       #c:Landroid/graphics/Bitmap$Config;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/CircleShortcutWidget;->mIconWidth:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/CircleShortcutWidget;->mIconHeight:I

    move/from16 v21, v0

    move/from16 v0, v19

    move/from16 v1, v21

    invoke-static {v0, v1, v7}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v15

    .line 608
    .restart local v15       #thumb:Landroid/graphics/Bitmap;
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/internal/policy/impl/CircleShortcutWidget;->mCanvas:Landroid/graphics/Canvas;

    .line 609
    .restart local v8       #canvas:Landroid/graphics/Canvas;
    invoke-virtual {v8, v15}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 610
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/CircleShortcutWidget;->mOldBounds:Landroid/graphics/Rect;

    move-object/from16 v19, v0

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v21

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 611
    sub-int v19, v16, v12

    div-int/lit8 v17, v19, 0x2

    .line 612
    .restart local v17       #x:I
    sub-int v19, v9, v11

    div-int/lit8 v18, v19, 0x2

    .line 613
    .restart local v18       #y:I
    add-int v19, v17, v12

    add-int v21, v18, v11

    move-object/from16 v0, p1

    move/from16 v1, v17

    move/from16 v2, v18

    move/from16 v3, v19

    move/from16 v4, v21

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 614
    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 615
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/CircleShortcutWidget;->mOldBounds:Landroid/graphics/Rect;

    move-object/from16 v19, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 616
    new-instance v10, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual/range {p2 .. p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-direct {v10, v0, v15}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local p1
    .restart local v10       #icon:Landroid/graphics/drawable/Drawable;
    move-object/from16 p1, v10

    .end local v10           #icon:Landroid/graphics/drawable/Drawable;
    .restart local p1
    goto/16 :goto_3
.end method

.method private getLaunchIntent(Landroid/content/ComponentName;)Landroid/content/Intent;
    .locals 2
    .parameter "cn"

    .prologue
    .line 530
    const/4 v0, 0x0

    .line 531
    .local v0, intent:Landroid/content/Intent;
    if-eqz p1, :cond_0

    .line 532
    new-instance v0, Landroid/content/Intent;

    .end local v0           #intent:Landroid/content/Intent;
    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 533
    .restart local v0       #intent:Landroid/content/Intent;
    const-string v1, "android.intent.category.LAUNCHER"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 534
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 535
    const/high16 v1, 0x1020

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 537
    :cond_0
    return-object v0
.end method

.method private hideOtherShortcuts(Landroid/view/View;Z)V
    .locals 3
    .parameter "v"
    .parameter "hide"

    .prologue
    .line 388
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/CircleShortcutWidget;->getChildCount()I

    move-result v0

    .local v0, children:I
    :goto_0
    if-ltz v0, :cond_2

    .line 389
    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/CircleShortcutWidget;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 390
    .local v1, tmpView:Landroid/view/View;
    instance-of v2, v1, Lcom/android/internal/policy/impl/CircleShortcutWidget$ShortcutItem;

    if-eqz v2, :cond_0

    if-eq p1, v1, :cond_0

    .line 391
    if-eqz p2, :cond_1

    move-object v2, v1

    check-cast v2, Lcom/android/internal/policy/impl/CircleShortcutWidget$ShortcutItem;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/CircleShortcutWidget$ShortcutItem;->isDummy()Z

    move-result v2

    if-nez v2, :cond_1

    .line 392
    iget-object v2, p0, Lcom/android/internal/policy/impl/CircleShortcutWidget;->mFadeOutAnimation:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v1, v2}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 388
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    move-object v2, v1

    .line 393
    check-cast v2, Lcom/android/internal/policy/impl/CircleShortcutWidget$ShortcutItem;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/CircleShortcutWidget$ShortcutItem;->isDummy()Z

    move-result v2

    if-nez v2, :cond_0

    .line 394
    iget-object v2, p0, Lcom/android/internal/policy/impl/CircleShortcutWidget;->mFadeInAnimation:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v1, v2}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_1

    .line 397
    .end local v1           #tmpView:Landroid/view/View;
    :cond_2
    return-void
.end method

.method private isScreenLarge()Z
    .locals 2

    .prologue
    .line 626
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/CircleShortcutWidget;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v0, v1, 0xf

    .line 627
    .local v0, screenSize:I
    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private refreshShortcutItems()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 414
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/CircleShortcutWidget;->getChildCount()I

    move-result v0

    .local v0, children:I
    :goto_0
    if-ltz v0, :cond_1

    .line 415
    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/CircleShortcutWidget;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 416
    .local v1, tmpView:Landroid/view/View;
    instance-of v2, v1, Lcom/android/internal/policy/impl/CircleShortcutWidget$ShortcutItem;

    if-eqz v2, :cond_0

    move-object v2, v1

    .line 417
    check-cast v2, Lcom/android/internal/policy/impl/CircleShortcutWidget$ShortcutItem;

    invoke-virtual {v2, v4}, Lcom/android/internal/policy/impl/CircleShortcutWidget$ShortcutItem;->onPressed(Z)V

    .line 418
    check-cast v1, Lcom/android/internal/policy/impl/CircleShortcutWidget$ShortcutItem;

    .end local v1           #tmpView:Landroid/view/View;
    const-wide/16 v2, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/policy/impl/CircleShortcutWidget$ShortcutItem;->setOpacity(D)V

    .line 414
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 421
    :cond_1
    const/4 v2, 0x0

    invoke-direct {p0, v2, v4}, Lcom/android/internal/policy/impl/CircleShortcutWidget;->hideOtherShortcuts(Landroid/view/View;Z)V

    .line 422
    return-void
.end method

.method private static setContrastSaturation(Landroid/graphics/ColorMatrix;FF)V
    .locals 11
    .parameter "cm"
    .parameter "contrast"
    .parameter "saturation"

    .prologue
    const/high16 v10, 0x3f80

    const/4 v9, 0x0

    .line 765
    add-float v4, p1, v10

    .line 766
    .local v4, scale:F
    const/high16 v6, -0x4100

    mul-float/2addr v6, v4

    const/high16 v7, 0x3f00

    add-float/2addr v6, v7

    const/high16 v7, 0x437f

    mul-float v5, v6, v7

    .line 767
    .local v5, translate:F
    sub-float v3, v10, p2

    .line 768
    .local v3, invSat:F
    const v6, 0x3e5a1cac

    mul-float v2, v6, v3

    .line 769
    .local v2, R:F
    const v6, 0x3f370a3d

    mul-float v1, v6, v3

    .line 770
    .local v1, G:F
    const v6, 0x3d9374bc

    mul-float v0, v6, v3

    .line 772
    .local v0, B:F
    const/16 v6, 0x14

    new-array v6, v6, [F

    const/4 v7, 0x0

    add-float v8, v2, p2

    aput v8, v6, v7

    const/4 v7, 0x1

    aput v1, v6, v7

    const/4 v7, 0x2

    aput v0, v6, v7

    const/4 v7, 0x3

    aput v9, v6, v7

    const/4 v7, 0x4

    aput v5, v6, v7

    const/4 v7, 0x5

    aput v2, v6, v7

    const/4 v7, 0x6

    add-float v8, v1, p2

    aput v8, v6, v7

    const/4 v7, 0x7

    aput v0, v6, v7

    const/16 v7, 0x8

    aput v9, v6, v7

    const/16 v7, 0x9

    aput v5, v6, v7

    const/16 v7, 0xa

    aput v2, v6, v7

    const/16 v7, 0xb

    aput v1, v6, v7

    const/16 v7, 0xc

    add-float v8, v0, p2

    aput v8, v6, v7

    const/16 v7, 0xd

    aput v9, v6, v7

    const/16 v7, 0xe

    aput v5, v6, v7

    const/16 v7, 0xf

    aput v9, v6, v7

    const/16 v7, 0x10

    aput v9, v6, v7

    const/16 v7, 0x11

    aput v9, v6, v7

    const/16 v7, 0x12

    aput v10, v6, v7

    const/16 v7, 0x13

    aput v9, v6, v7

    invoke-virtual {p0, v6}, Landroid/graphics/ColorMatrix;->set([F)V

    .line 778
    return-void
.end method


# virtual methods
.method public cleanUp()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 425
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/CircleShortcutWidget;->DBG:Z

    if-eqz v0, :cond_0

    .line 426
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleShortcutWidget;->TAG:Ljava/lang/String;

    const-string v1, "cleanUp()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 427
    :cond_0
    iput-object v2, p0, Lcom/android/internal/policy/impl/CircleShortcutWidget;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    .line 428
    iput-object v2, p0, Lcom/android/internal/policy/impl/CircleShortcutWidget;->mShortcutListener:Lcom/android/internal/policy/impl/CircleUnlockWidget$OnCircleUnlockListener;

    .line 429
    iput-object v2, p0, Lcom/android/internal/policy/impl/CircleShortcutWidget;->mOldBounds:Landroid/graphics/Rect;

    .line 430
    iput-object v2, p0, Lcom/android/internal/policy/impl/CircleShortcutWidget;->mCanvas:Landroid/graphics/Canvas;

    .line 431
    return-void
.end method

.method public getFullResDefaultActivityIcon()Landroid/graphics/drawable/Drawable;
    .locals 2

    .prologue
    .line 667
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v1, 0x10d

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/policy/impl/CircleShortcutWidget;->getFullResIcon(Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getFullResIcon(Landroid/content/pm/ResolveInfo;)Landroid/graphics/drawable/Drawable;
    .locals 6
    .parameter "info"

    .prologue
    .line 643
    const/4 v1, 0x0

    .line 645
    .local v1, icon:Landroid/graphics/drawable/Drawable;
    :try_start_0
    iget-object v4, p0, Lcom/android/internal/policy/impl/CircleShortcutWidget;->mPm:Landroid/content/pm/PackageManager;

    iget-object v5, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/Resources;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 649
    .local v3, resources:Landroid/content/res/Resources;
    :goto_0
    if-eqz v3, :cond_2

    .line 650
    iget-object v4, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v4, :cond_1

    .line 651
    iget-object v5, p0, Lcom/android/internal/policy/impl/CircleShortcutWidget;->mPm:Landroid/content/pm/PackageManager;

    iget-object v4, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget v4, v4, Landroid/content/pm/ActivityInfo;->icon:I

    if-eqz v4, :cond_0

    iget-object v4, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    :goto_1
    invoke-virtual {v5, v4}, Landroid/content/pm/PackageManager;->getCSCPackageItemIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 653
    if-eqz v1, :cond_1

    move-object v4, v1

    .line 663
    :goto_2
    return-object v4

    .line 646
    .end local v3           #resources:Landroid/content/res/Resources;
    :catch_0
    move-exception v0

    .line 647
    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v3, 0x0

    .restart local v3       #resources:Landroid/content/res/Resources;
    goto :goto_0

    .line 651
    .end local v0           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_0
    iget-object v4, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    goto :goto_1

    .line 658
    :cond_1
    iget-object v4, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v4}, Landroid/content/pm/ActivityInfo;->getIconResource()I

    move-result v2

    .line 659
    .local v2, iconId:I
    if-eqz v2, :cond_2

    .line 660
    invoke-virtual {p0, v3, v2}, Lcom/android/internal/policy/impl/CircleShortcutWidget;->getFullResIcon(Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    goto :goto_2

    .line 663
    .end local v2           #iconId:I
    :cond_2
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/CircleShortcutWidget;->getFullResDefaultActivityIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    goto :goto_2
.end method

.method public getFullResIcon(Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;
    .locals 3
    .parameter "resources"
    .parameter "iconId"

    .prologue
    .line 633
    :try_start_0
    iget v2, p0, Lcom/android/internal/policy/impl/CircleShortcutWidget;->mIconDpi:I

    invoke-virtual {p1, p2, v2}, Landroid/content/res/Resources;->getDrawableForDensity(II)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 638
    .local v0, d:Landroid/graphics/drawable/Drawable;
    :goto_0
    if-eqz v0, :cond_0

    .end local v0           #d:Landroid/graphics/drawable/Drawable;
    :goto_1
    return-object v0

    .line 634
    :catch_0
    move-exception v1

    .line 635
    .local v1, e:Landroid/content/res/Resources$NotFoundException;
    const/4 v0, 0x0

    .restart local v0       #d:Landroid/graphics/drawable/Drawable;
    goto :goto_0

    .line 638
    .end local v1           #e:Landroid/content/res/Resources$NotFoundException;
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/CircleShortcutWidget;->getFullResDefaultActivityIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_1
.end method

.method public getItemCount()I
    .locals 1

    .prologue
    .line 383
    iget v0, p0, Lcom/android/internal/policy/impl/CircleShortcutWidget;->mItemCount:I

    return v0
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 400
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/CircleShortcutWidget;->DBG:Z

    if-eqz v0, :cond_0

    .line 401
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleShortcutWidget;->TAG:Ljava/lang/String;

    const-string v1, "onPause()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 403
    :cond_0
    invoke-direct {p0}, Lcom/android/internal/policy/impl/CircleShortcutWidget;->refreshShortcutItems()V

    .line 404
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 407
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/CircleShortcutWidget;->DBG:Z

    if-eqz v0, :cond_0

    .line 408
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleShortcutWidget;->TAG:Ljava/lang/String;

    const-string v1, "onResume()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 410
    :cond_0
    invoke-direct {p0}, Lcom/android/internal/policy/impl/CircleShortcutWidget;->refreshShortcutItems()V

    .line 411
    return-void
.end method
