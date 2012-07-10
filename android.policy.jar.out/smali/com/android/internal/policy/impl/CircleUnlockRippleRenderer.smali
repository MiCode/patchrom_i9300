.class public Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;
.super Ljava/lang/Object;
.source "CircleUnlockRippleRenderer.java"

# interfaces
.implements Landroid/opengl/GLSurfaceView$Renderer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer$SoundPoolThread;
    }
.end annotation


# static fields
.field private static final DEFAULT_WALLPAPER_IMAGE_PATH:Ljava/lang/String; = "/system/wallpaper/lockscreen_default_wallpaper.jpg"

.field private static final LANDSCAPE_WALLPAPER_IMAGE_PATH:Ljava/lang/String; = "/data/data/com.sec.android.gallery3d/lockscreen_wallpaper_land.jpg"

.field public static final MISSED_CALL:I = 0x0

.field public static final MISSED_SMS:I = 0x1

.field public static final NORMAL_EVENT:I = -0x1

.field private static final PORTRAIT_WALLPAPER_IMAGE_PATH:Ljava/lang/String; = "/data/system/theme/lock_wallpaper"


# instance fields
.field BGResId:I

.field private final DBG:Z

.field private INV_NUM_DETAILS_HEIGHT:F

.field private INV_NUM_DETAILS_WIDTH:F

.field private MESH_SIZE_HEIGHT:I

.field private MESH_SIZE_WIDTH:I

.field MISSED_DRAG_THRESHOLD:D

.field MISSED_RELEASE_THRESHOLD:D

.field private NUM_DETAILS_HEIGHT:I

.field private NUM_DETAILS_WIDTH:I

.field RIPPLE_DRAG_THRESHOLD:D

.field final SOUND_ID_DOWN:I

.field final SOUND_ID_UP:I

.field private SURFACE_DETAILS_HEIGHT:I

.field private SURFACE_DETAILS_WIDTH:I

.field private final TAG:Ljava/lang/String;

.field UNLOCK_DRAG_THRESHOLD:D

.field UNLOCK_RELEASE_THRESHOLD:D

.field private VCOUNT:I

.field XRatioAdjustLandscape:F

.field XRatioAdjustPortrait:F

.field XRatioForLandscape:F

.field XRatioForPortrait:F

.field YRatioForLandscape:F

.field YRatioForPortrait:F

.field alphaRatio1:F

.field alphaRatio2:F

.field bitmapOriginal:Landroid/graphics/Bitmap;

.field bitmapWater:Landroid/graphics/Bitmap;

.field private boxHeight:F

.field private diffPressTime:J

.field private distance:D

.field private downX:F

.field private downX2:F

.field private downY:F

.field private downY2:F

.field private drawCount:I

.field glX:F

.field glY:F

.field private heights:[F

.field private i:Ljava/nio/ShortBuffer;

.field private i_buf:I

.field private indices:[S

.field intensityForLandscape:F

.field intensityForLandscapeTicker:F

.field intensityForPortrait:F

.field intensityForPortraitTicker:F

.field intensityForRipple:F

.field private isSystemSoundChecked:Z

.field private isUnlocked:Z

.field private mContext:Landroid/content/Context;

.field mFragmentShader:Ljava/lang/String;

.field private mLongPressRunnable:Ljava/lang/Runnable;

.field mParent:Landroid/view/View;

.field private mRDownId:I

.field private mRUpId:I

.field private mScreenHeight:I

.field private mScreenWidth:I

.field private mSoundPool:Landroid/media/SoundPool;

.field private mTouchedView:Landroid/view/View;

.field mVertexShader:Ljava/lang/String;

.field private m_handle:I

.field private mouseInputCount:I

.field private mouseX:F

.field private mouseY:F

.field private moveCount:I

.field private prevPressTime:J

.field private proj:[F

.field reflectionRatio:F

.field refractiveIndex:F

.field private rippleDistance:I

.field rippleDragThreshold:D

.field private shader:I

.field private soundNum:I

.field private soundTime:I

.field private sounds:[I

.field spanXForLandscape:I

.field spanXForPortrait:I

.field spanYForLandscape:I

.field spanYForPortrait:I

.field startLocation:I

.field private texture0:I

.field private texture1:I

.field textures0:[I

.field textures1:[I

.field tickerAjustYForLandscape:F

.field tickerAjustYForPortrait:F

.field private tickerCloseLandscapeY:F

.field private tickerClosePortraitY:F

.field private tickerMoveCriteria:I

.field private tickerOpenLandscapeY:F

.field private tickerOpenPortraitY:F

.field private tickerTotalCount:I

.field private tmp_buffer:[I

.field tmx:F

.field tmy:F

.field translateXForLandscape:F

.field translateXForPortrait:F

.field translateYForLandscape:F

.field translateYForPortrait:F

.field translateZForLandscape:F

.field translateZForPortrait:F

.field private u0:Ljava/nio/FloatBuffer;

.field private u1:Ljava/nio/FloatBuffer;

.field unitCellHeight:F

.field unitCellWidth:F

.field unlockDragThreshold:D

.field unlockReleaseThreshold:D

.field private uv0:[F

.field private uv0_buf:I

.field private uv1:[F

.field private uv1_buf:I

.field private uv_handle0:I

.field private uv_handle1:I

.field private v:Ljava/nio/FloatBuffer;

.field private v_buf:I

.field private v_handle:I

.field private velocity:[F

.field private vertices:[F

.field private view:[F

.field windowHeight:I

.field windowWidth:I

.field private world:[F

.field private wvp:[F


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/View;)V
    .locals 8
    .parameter "context"
    .parameter "view"

    .prologue
    const/high16 v7, 0x3f80

    const/4 v6, 0x1

    const/16 v3, 0x10

    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 329
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 83
    iput-boolean v6, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->DBG:Z

    .line 85
    const-string v2, "CircleUnlockRippleRenderer"

    iput-object v2, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->TAG:Ljava/lang/String;

    .line 90
    const-string v2, "uniform mat4 uMVPMatrix;\nattribute vec4 aPosition;\nattribute vec2 aTexture0Coord;\nattribute vec2 aTexture1Coord;\nvarying vec2 vTexture0Coord;\nvarying vec2 vTexture1Coord;\nvoid main() {\n  gl_Position = uMVPMatrix * aPosition;\n  vTexture0Coord = aTexture0Coord;\n  vTexture1Coord = aTexture1Coord;\n}\n"

    iput-object v2, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->mVertexShader:Ljava/lang/String;

    .line 94
    const-string v2, "precision mediump float;\nvarying vec2 vTexture0Coord;\nvarying vec2 vTexture1Coord;\nuniform sampler2D texture0;\nuniform sampler2D texture1;\nuniform highp float reflectionRatio;\nuniform highp float alphaRatio1;\nuniform highp float alphaRatio2;\nvoid main() {\n  highp float iReflectionRatio = 1.0 - reflectionRatio;\n  vec4 texCoord0 = texture2D(texture0, vec2(vTexture0Coord.s, vTexture0Coord.t));\n  vec4 texCoord1 = texture2D(texture1, vec2(vTexture1Coord.s, vTexture1Coord.t));\n  gl_FragColor = texCoord0 * reflectionRatio * (alphaRatio1) + texCoord1 * iReflectionRatio * (alphaRatio2);\n}\n"

    iput-object v2, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->mFragmentShader:Ljava/lang/String;

    .line 108
    iput v4, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->NUM_DETAILS_WIDTH:I

    .line 110
    iput v4, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->NUM_DETAILS_HEIGHT:I

    .line 114
    iput v5, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->INV_NUM_DETAILS_WIDTH:F

    .line 116
    iput v5, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->INV_NUM_DETAILS_HEIGHT:F

    .line 118
    iput v4, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->MESH_SIZE_WIDTH:I

    .line 120
    iput v4, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->MESH_SIZE_HEIGHT:I

    .line 122
    iput v4, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->SURFACE_DETAILS_WIDTH:I

    .line 124
    iput v4, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->SURFACE_DETAILS_HEIGHT:I

    .line 126
    iput v4, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->VCOUNT:I

    .line 135
    iput v5, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->boxHeight:F

    .line 140
    new-array v2, v4, [F

    iput-object v2, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->vertices:[F

    .line 141
    new-array v2, v4, [F

    iput-object v2, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->uv0:[F

    .line 142
    new-array v2, v4, [F

    iput-object v2, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->uv1:[F

    .line 143
    new-array v2, v4, [S

    iput-object v2, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->indices:[S

    .line 167
    new-array v2, v3, [F

    iput-object v2, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->view:[F

    .line 168
    new-array v2, v3, [F

    iput-object v2, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->proj:[F

    .line 169
    new-array v2, v3, [F

    iput-object v2, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->world:[F

    .line 170
    new-array v2, v3, [F

    iput-object v2, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->wvp:[F

    .line 180
    const v2, 0x3f6e147b

    iput v2, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->refractiveIndex:F

    .line 181
    const v2, 0x3e051eb8

    iput v2, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->reflectionRatio:F

    .line 183
    iput v7, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->alphaRatio1:F

    .line 184
    iput v7, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->alphaRatio2:F

    .line 195
    iput v5, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->glY:F

    .line 196
    iput v5, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->glX:F

    .line 202
    const/high16 v2, 0x3f00

    iput v2, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->intensityForLandscape:F

    .line 203
    iput v7, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->intensityForPortrait:F

    .line 207
    iput v5, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->translateXForLandscape:F

    .line 208
    const/high16 v2, -0x8000

    iput v2, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->translateXForPortrait:F

    .line 210
    iput v5, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->translateYForLandscape:F

    .line 211
    const/high16 v2, -0x8000

    iput v2, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->translateYForPortrait:F

    .line 213
    const/high16 v2, -0x3dd0

    iput v2, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->translateZForPortrait:F

    .line 214
    const/high16 v2, -0x3e48

    iput v2, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->translateZForLandscape:F

    .line 217
    iput v6, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->spanXForLandscape:I

    .line 218
    iput v3, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->spanYForLandscape:I

    .line 219
    iput v3, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->spanXForPortrait:I

    .line 220
    iput v6, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->spanYForPortrait:I

    .line 223
    const/high16 v2, 0x4234

    iput v2, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->XRatioForLandscape:F

    .line 224
    const/high16 v2, 0x41c8

    iput v2, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->YRatioForLandscape:F

    .line 227
    const/high16 v2, 0x41c8

    iput v2, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->XRatioForPortrait:F

    .line 229
    const/high16 v2, 0x4238

    iput v2, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->YRatioForPortrait:F

    .line 231
    iput v5, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->XRatioAdjustPortrait:F

    .line 233
    iput v5, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->XRatioAdjustLandscape:F

    .line 238
    const/high16 v2, 0x42c8

    iput v2, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->tickerAjustYForPortrait:F

    .line 239
    const/high16 v2, 0x42c8

    iput v2, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->tickerAjustYForLandscape:F

    .line 244
    iput v7, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->intensityForRipple:F

    .line 252
    iput v3, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->tickerTotalCount:I

    .line 254
    const/high16 v2, 0x3f00

    iput v2, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->intensityForLandscapeTicker:F

    .line 256
    iput v7, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->intensityForPortraitTicker:F

    .line 258
    const/high16 v2, 0x4416

    iput v2, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->tickerOpenPortraitY:F

    .line 260
    const/high16 v2, 0x44a0

    iput v2, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->tickerClosePortraitY:F

    .line 262
    const/high16 v2, 0x4416

    iput v2, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->tickerOpenLandscapeY:F

    .line 264
    const/high16 v2, 0x44a0

    iput v2, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->tickerCloseLandscapeY:F

    .line 266
    const/16 v2, 0x19

    iput v2, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->tickerMoveCriteria:I

    .line 269
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->distance:D

    .line 270
    iput v5, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->downX:F

    .line 271
    iput v5, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->downY:F

    .line 272
    iput v5, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->downX2:F

    .line 273
    iput v5, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->downY2:F

    .line 274
    iput v4, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->rippleDistance:I

    .line 275
    iput v4, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->mouseInputCount:I

    .line 276
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->isUnlocked:Z

    .line 283
    const/4 v2, 0x5

    iput v2, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->soundNum:I

    .line 284
    const/16 v2, 0xa

    iput v2, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->soundTime:I

    .line 285
    iput v4, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->SOUND_ID_DOWN:I

    .line 286
    iput v6, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->SOUND_ID_UP:I

    .line 290
    iput v4, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->drawCount:I

    .line 291
    iput v4, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->moveCount:I

    .line 293
    iput-boolean v6, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->isSystemSoundChecked:Z

    .line 295
    const-wide/high16 v2, 0x406b

    iput-wide v2, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->UNLOCK_RELEASE_THRESHOLD:D

    .line 296
    const-wide/high16 v2, 0x407b

    iput-wide v2, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->UNLOCK_DRAG_THRESHOLD:D

    .line 297
    const-wide v2, 0x4062c00000000000L

    iput-wide v2, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->RIPPLE_DRAG_THRESHOLD:D

    .line 299
    const-wide/high16 v2, 0x406b

    iput-wide v2, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->MISSED_RELEASE_THRESHOLD:D

    .line 300
    const-wide/high16 v2, 0x406b

    iput-wide v2, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->MISSED_DRAG_THRESHOLD:D

    .line 302
    iget-wide v2, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->UNLOCK_RELEASE_THRESHOLD:D

    iput-wide v2, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->unlockReleaseThreshold:D

    .line 303
    iget-wide v2, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->UNLOCK_DRAG_THRESHOLD:D

    iput-wide v2, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->unlockDragThreshold:D

    .line 304
    iget-wide v2, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->RIPPLE_DRAG_THRESHOLD:D

    iput-wide v2, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->rippleDragThreshold:D

    .line 310
    const/4 v2, -0x1

    iput v2, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->startLocation:I

    .line 312
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->mTouchedView:Landroid/view/View;

    .line 330
    iput-object p1, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->mContext:Landroid/content/Context;

    .line 332
    iput-object p2, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->mParent:Landroid/view/View;

    .line 334
    new-instance v2, Landroid/media/SoundPool;

    const/16 v3, 0xa

    invoke-direct {v2, v3, v6, v4}, Landroid/media/SoundPool;-><init>(III)V

    iput-object v2, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->mSoundPool:Landroid/media/SoundPool;

    .line 336
    const/4 v2, 0x2

    new-array v2, v2, [I

    iput-object v2, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->sounds:[I

    .line 340
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 342
    .local v0, displayMetrics:Landroid/util/DisplayMetrics;
    iget-object v2, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->mContext:Landroid/content/Context;

    const-string v3, "window"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    .line 344
    .local v1, mWindowManager:Landroid/view/WindowManager;
    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    .line 346
    iget v2, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v2, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->windowWidth:I

    .line 348
    iget v2, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v2, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->windowHeight:I

    .line 350
    invoke-direct {p0}, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->setModeleConfiguration()V

    .line 352
    invoke-direct {p0}, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->initWaters()V

    .line 354
    invoke-direct {p0}, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->checkSound()V

    .line 356
    iput v4, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->drawCount:I

    .line 357
    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;FFF)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 81
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->ripple(FFF)V

    return-void
.end method

.method static synthetic access$102(Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 81
    iput-object p1, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->mLongPressRunnable:Ljava/lang/Runnable;

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 81
    iget v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->soundNum:I

    return v0
.end method

.method static synthetic access$300(Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 81
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->isSystemSoundChecked:Z

    return v0
.end method

.method static synthetic access$400(Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;)Landroid/media/SoundPool;
    .locals 1
    .parameter "x0"

    .prologue
    .line 81
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->mSoundPool:Landroid/media/SoundPool;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 81
    iget v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->soundTime:I

    return v0
.end method

.method private checkSound()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 2280
    iget-object v3, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 2282
    .local v0, cr:Landroid/content/ContentResolver;
    const/4 v2, 0x0

    .line 2286
    .local v2, result:I
    :try_start_0
    const-string v3, "lockscreen_sounds_enabled"

    invoke-static {v0, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 2294
    :goto_0
    if-ne v2, v4, :cond_0

    .line 2296
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->isSystemSoundChecked:Z

    .line 2302
    :goto_1
    return-void

    .line 2288
    :catch_0
    move-exception v1

    .line 2290
    .local v1, e:Landroid/provider/Settings$SettingNotFoundException;
    invoke-virtual {v1}, Landroid/provider/Settings$SettingNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 2300
    .end local v1           #e:Landroid/provider/Settings$SettingNotFoundException;
    :cond_0
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->isSystemSoundChecked:Z

    goto :goto_1
.end method

.method private clearRipple()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 2221
    iget v2, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->NUM_DETAILS_WIDTH:I

    iget v3, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->NUM_DETAILS_HEIGHT:I

    mul-int v1, v2, v3

    .line 2223
    .local v1, max:I
    iget v2, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->NUM_DETAILS_WIDTH:I

    if-nez v2, :cond_1

    .line 2239
    :cond_0
    return-void

    .line 2226
    :cond_1
    iget-object v2, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->velocity:[F

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->heights:[F

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->velocity:[F

    array-length v2, v2

    if-lt v2, v1, :cond_0

    iget-object v2, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->heights:[F

    array-length v2, v2

    if-lt v2, v1, :cond_0

    .line 2231
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 2233
    iget-object v2, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->velocity:[F

    aput v4, v2, v0

    .line 2235
    iget-object v2, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->heights:[F

    aput v4, v2, v0

    .line 2231
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private createBuffers()V
    .locals 3

    .prologue
    const/4 v2, 0x4

    .line 1221
    new-array v0, v2, [I

    iput-object v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->tmp_buffer:[I

    .line 1222
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->tmp_buffer:[I

    const/4 v1, 0x0

    invoke-static {v2, v0, v1}, Landroid/opengl/GLES20;->glGenBuffers(I[II)V

    .line 1223
    return-void
.end method

.method public static createProgram(Ljava/lang/String;Ljava/lang/String;)I
    .locals 7
    .parameter "vertexSource"
    .parameter "fragmentSource"

    .prologue
    const/4 v6, 0x1

    const/4 v4, 0x0

    .line 1293
    const v5, 0x8b31

    invoke-static {v5, p0}, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->loadShader(ILjava/lang/String;)I

    move-result v3

    .line 1295
    .local v3, vertexShader:I
    if-nez v3, :cond_1

    move v2, v4

    .line 1319
    :cond_0
    :goto_0
    return v2

    .line 1299
    :cond_1
    const v5, 0x8b30

    invoke-static {v5, p1}, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->loadShader(ILjava/lang/String;)I

    move-result v1

    .line 1301
    .local v1, pixelShader:I
    if-nez v1, :cond_2

    move v2, v4

    .line 1302
    goto :goto_0

    .line 1305
    :cond_2
    invoke-static {}, Landroid/opengl/GLES20;->glCreateProgram()I

    move-result v2

    .line 1307
    .local v2, program:I
    if-eqz v2, :cond_0

    .line 1308
    invoke-static {v2, v3}, Landroid/opengl/GLES20;->glAttachShader(II)V

    .line 1309
    invoke-static {v2, v1}, Landroid/opengl/GLES20;->glAttachShader(II)V

    .line 1310
    invoke-static {v2}, Landroid/opengl/GLES20;->glLinkProgram(I)V

    .line 1311
    new-array v0, v6, [I

    .line 1312
    .local v0, linkStatus:[I
    const v5, 0x8b82

    invoke-static {v2, v5, v0, v4}, Landroid/opengl/GLES20;->glGetProgramiv(II[II)V

    .line 1314
    aget v4, v0, v4

    if-eq v4, v6, :cond_0

    .line 1315
    invoke-static {v2}, Landroid/opengl/GLES20;->glDeleteProgram(I)V

    .line 1316
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private initWaters()V
    .locals 13

    .prologue
    .line 1359
    iget v9, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->VCOUNT:I

    mul-int/lit8 v9, v9, 0x3

    new-array v9, v9, [F

    iput-object v9, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->vertices:[F

    .line 1361
    iget v9, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->VCOUNT:I

    mul-int/lit8 v9, v9, 0x2

    new-array v9, v9, [F

    iput-object v9, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->uv0:[F

    .line 1363
    iget v9, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->VCOUNT:I

    mul-int/lit8 v9, v9, 0x2

    new-array v9, v9, [F

    iput-object v9, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->uv1:[F

    .line 1366
    const/4 v3, 0x0

    .line 1368
    .local v3, cnt:I
    iget v9, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->windowWidth:I

    const/16 v10, 0x320

    if-eq v9, v10, :cond_0

    iget v9, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->windowHeight:I

    const/16 v10, 0x320

    if-ne v9, v10, :cond_1

    .line 1370
    :cond_0
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    iget v9, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->VCOUNT:I

    if-ge v4, v9, :cond_2

    .line 1372
    iget v9, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->MESH_SIZE_WIDTH:I

    int-to-float v9, v9

    iget v10, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->SURFACE_DETAILS_WIDTH:I

    int-to-float v10, v10

    div-float/2addr v9, v10

    iput v9, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->unitCellWidth:F

    .line 1374
    iget v9, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->MESH_SIZE_HEIGHT:I

    int-to-float v9, v9

    iget v10, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->SURFACE_DETAILS_HEIGHT:I

    int-to-float v10, v10

    div-float/2addr v9, v10

    iput v9, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->unitCellHeight:F

    .line 1376
    iget v9, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->SURFACE_DETAILS_HEIGHT:I

    rem-int v9, v4, v9

    int-to-float v9, v9

    iget v10, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->SURFACE_DETAILS_WIDTH:I

    div-int/lit8 v10, v10, 0x2

    int-to-float v10, v10

    sub-float v8, v9, v10

    .line 1378
    .local v8, ypos:F
    iget v9, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->unitCellWidth:F

    mul-float/2addr v9, v8

    iget v10, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->unitCellWidth:F

    const/high16 v11, 0x4000

    div-float/2addr v10, v11

    add-float/2addr v9, v10

    neg-float v8, v9

    .line 1380
    iget v9, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->SURFACE_DETAILS_WIDTH:I

    div-int v9, v4, v9

    int-to-double v9, v9

    invoke-static {v9, v10}, Ljava/lang/Math;->floor(D)D

    move-result-wide v9

    double-to-float v9, v9

    iget v10, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->SURFACE_DETAILS_HEIGHT:I

    div-int/lit8 v10, v10, 0x2

    int-to-float v10, v10

    sub-float v7, v9, v10

    .line 1382
    .local v7, xpos:F
    iget v9, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->unitCellHeight:F

    mul-float/2addr v9, v7

    iget v10, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->unitCellHeight:F

    const/high16 v11, 0x4000

    div-float/2addr v10, v11

    add-float v7, v9, v10

    .line 1384
    iget-object v9, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->vertices:[F

    aput v7, v9, v3

    .line 1386
    iget-object v9, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->vertices:[F

    add-int/lit8 v10, v3, 0x1

    aput v8, v9, v10

    .line 1388
    iget-object v9, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->vertices:[F

    add-int/lit8 v10, v3, 0x2

    const/4 v11, 0x0

    aput v11, v9, v10

    .line 1390
    add-int/lit8 v3, v3, 0x3

    .line 1370
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1396
    .end local v4           #i:I
    .end local v7           #xpos:F
    .end local v8           #ypos:F
    :cond_1
    const/4 v4, 0x0

    .restart local v4       #i:I
    :goto_1
    iget v9, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->VCOUNT:I

    if-ge v4, v9, :cond_2

    .line 1398
    iget v9, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->SURFACE_DETAILS_WIDTH:I

    div-int v9, v4, v9

    int-to-double v9, v9

    invoke-static {v9, v10}, Ljava/lang/Math;->floor(D)D

    move-result-wide v9

    const-wide/high16 v11, 0x4000

    add-double/2addr v9, v11

    iget v11, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->INV_NUM_DETAILS_WIDTH:F

    float-to-double v11, v11

    mul-double/2addr v9, v11

    const-wide/high16 v11, 0x3fe0

    sub-double/2addr v9, v11

    iget v11, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->MESH_SIZE_WIDTH:I

    int-to-double v11, v11

    mul-double/2addr v9, v11

    double-to-float v0, v9

    .line 1400
    .local v0, c1:F
    iget v9, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->SURFACE_DETAILS_HEIGHT:I

    rem-int v9, v4, v9

    int-to-double v9, v9

    invoke-static {v9, v10}, Ljava/lang/Math;->floor(D)D

    move-result-wide v9

    const-wide/high16 v11, 0x4000

    add-double/2addr v9, v11

    iget v11, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->INV_NUM_DETAILS_HEIGHT:F

    neg-float v11, v11

    float-to-double v11, v11

    mul-double/2addr v9, v11

    const-wide/high16 v11, 0x3fe0

    add-double/2addr v9, v11

    iget v11, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->MESH_SIZE_HEIGHT:I

    int-to-double v11, v11

    mul-double/2addr v9, v11

    double-to-float v1, v9

    .line 1402
    .local v1, c2:F
    const/4 v2, 0x0

    .line 1404
    .local v2, c3:F
    iget-object v9, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->vertices:[F

    aput v0, v9, v3

    .line 1406
    iget-object v9, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->vertices:[F

    add-int/lit8 v10, v3, 0x1

    aput v1, v9, v10

    .line 1408
    iget-object v9, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->vertices:[F

    add-int/lit8 v10, v3, 0x2

    aput v2, v9, v10

    .line 1410
    add-int/lit8 v3, v3, 0x3

    .line 1396
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 1416
    .end local v0           #c1:F
    .end local v1           #c2:F
    .end local v2           #c3:F
    :cond_2
    const/4 v3, 0x0

    .line 1418
    iget v9, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->SURFACE_DETAILS_WIDTH:I

    add-int/lit8 v9, v9, -0x1

    iget v10, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->SURFACE_DETAILS_HEIGHT:I

    add-int/lit8 v10, v10, -0x1

    mul-int/2addr v9, v10

    mul-int/lit8 v9, v9, 0x6

    new-array v9, v9, [S

    iput-object v9, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->indices:[S

    .line 1420
    const/4 v4, 0x1

    :goto_2
    iget v9, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->SURFACE_DETAILS_HEIGHT:I

    if-ge v4, v9, :cond_4

    .line 1422
    const/4 v6, 0x1

    .local v6, j:I
    :goto_3
    iget v9, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->SURFACE_DETAILS_WIDTH:I

    if-ge v6, v9, :cond_3

    .line 1424
    iget v9, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->SURFACE_DETAILS_HEIGHT:I

    mul-int/2addr v9, v6

    add-int v5, v9, v4

    .line 1426
    .local v5, idx:I
    iget-object v9, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->indices:[S

    iget v10, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->SURFACE_DETAILS_HEIGHT:I

    sub-int v10, v5, v10

    add-int/lit8 v10, v10, -0x1

    int-to-short v10, v10

    aput-short v10, v9, v3

    .line 1428
    iget-object v9, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->indices:[S

    add-int/lit8 v10, v3, 0x1

    iget v11, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->SURFACE_DETAILS_HEIGHT:I

    sub-int v11, v5, v11

    int-to-short v11, v11

    aput-short v11, v9, v10

    .line 1430
    iget-object v9, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->indices:[S

    add-int/lit8 v10, v3, 0x2

    int-to-short v11, v5

    aput-short v11, v9, v10

    .line 1432
    iget-object v9, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->indices:[S

    add-int/lit8 v10, v3, 0x3

    iget v11, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->SURFACE_DETAILS_HEIGHT:I

    sub-int v11, v5, v11

    add-int/lit8 v11, v11, -0x1

    int-to-short v11, v11

    aput-short v11, v9, v10

    .line 1434
    iget-object v9, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->indices:[S

    add-int/lit8 v10, v3, 0x4

    int-to-short v11, v5

    aput-short v11, v9, v10

    .line 1436
    iget-object v9, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->indices:[S

    add-int/lit8 v10, v3, 0x5

    add-int/lit8 v11, v5, -0x1

    int-to-short v11, v11

    aput-short v11, v9, v10

    .line 1438
    add-int/lit8 v3, v3, 0x6

    .line 1422
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 1420
    .end local v5           #idx:I
    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 1443
    .end local v6           #j:I
    :cond_4
    iget v9, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->NUM_DETAILS_WIDTH:I

    iget v10, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->NUM_DETAILS_HEIGHT:I

    mul-int/2addr v9, v10

    new-array v9, v9, [F

    iput-object v9, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->heights:[F

    .line 1444
    iget v9, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->NUM_DETAILS_WIDTH:I

    iget v10, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->NUM_DETAILS_HEIGHT:I

    mul-int/2addr v9, v10

    new-array v9, v9, [F

    iput-object v9, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->velocity:[F

    .line 1445
    const/4 v4, 0x0

    :goto_4
    iget v9, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->NUM_DETAILS_WIDTH:I

    iget v10, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->NUM_DETAILS_HEIGHT:I

    mul-int/2addr v9, v10

    if-ge v4, v9, :cond_5

    .line 1447
    iget-object v9, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->velocity:[F

    const/4 v10, 0x0

    aput v10, v9, v4

    .line 1448
    iget-object v9, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->heights:[F

    const/4 v10, 0x0

    aput v10, v9, v4

    .line 1445
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 1450
    :cond_5
    return-void
.end method

.method private loadBuffers()V
    .locals 6

    .prologue
    const v5, 0x8893

    const v4, 0x88e4

    const/4 v3, 0x0

    const v2, 0x8892

    .line 1238
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->v:Ljava/nio/FloatBuffer;

    iget-object v1, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->vertices:[F

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    .line 1239
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->v:Ljava/nio/FloatBuffer;

    invoke-virtual {v0, v3}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 1241
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->i:Ljava/nio/ShortBuffer;

    iget-object v1, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->indices:[S

    invoke-virtual {v0, v1}, Ljava/nio/ShortBuffer;->put([S)Ljava/nio/ShortBuffer;

    .line 1242
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->i:Ljava/nio/ShortBuffer;

    invoke-virtual {v0, v3}, Ljava/nio/ShortBuffer;->position(I)Ljava/nio/Buffer;

    .line 1244
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->u0:Ljava/nio/FloatBuffer;

    iget-object v1, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->uv0:[F

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    .line 1245
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->u0:Ljava/nio/FloatBuffer;

    invoke-virtual {v0, v3}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 1247
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->u1:Ljava/nio/FloatBuffer;

    iget-object v1, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->uv1:[F

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    .line 1248
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->u1:Ljava/nio/FloatBuffer;

    invoke-virtual {v0, v3}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 1250
    invoke-static {v2, v3}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    .line 1251
    iget v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->v_buf:I

    invoke-static {v2, v0}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    .line 1252
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->vertices:[F

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x4

    iget-object v1, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->v:Ljava/nio/FloatBuffer;

    invoke-static {v2, v0, v1, v4}, Landroid/opengl/GLES20;->glBufferData(IILjava/nio/Buffer;I)V

    .line 1253
    invoke-static {v2, v3}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    .line 1255
    iget v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->i_buf:I

    invoke-static {v5, v0}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    .line 1256
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->indices:[S

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x2

    iget-object v1, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->i:Ljava/nio/ShortBuffer;

    invoke-static {v5, v0, v1, v4}, Landroid/opengl/GLES20;->glBufferData(IILjava/nio/Buffer;I)V

    .line 1257
    invoke-static {v5, v3}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    .line 1259
    iget v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->uv0_buf:I

    invoke-static {v2, v0}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    .line 1260
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->uv0:[F

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x4

    iget-object v1, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->u0:Ljava/nio/FloatBuffer;

    invoke-static {v2, v0, v1, v4}, Landroid/opengl/GLES20;->glBufferData(IILjava/nio/Buffer;I)V

    .line 1261
    invoke-static {v2, v3}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    .line 1263
    iget v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->uv1_buf:I

    invoke-static {v2, v0}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    .line 1264
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->uv1:[F

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x4

    iget-object v1, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->u1:Ljava/nio/FloatBuffer;

    invoke-static {v2, v0, v1, v4}, Landroid/opengl/GLES20;->glBufferData(IILjava/nio/Buffer;I)V

    .line 1265
    invoke-static {v2, v3}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    .line 1266
    return-void
.end method

.method private static loadShader(ILjava/lang/String;)I
    .locals 4
    .parameter "shaderType"
    .parameter "source"

    .prologue
    const/4 v3, 0x0

    .line 1323
    invoke-static {p0}, Landroid/opengl/GLES20;->glCreateShader(I)I

    move-result v1

    .line 1325
    .local v1, shader:I
    if-eqz v1, :cond_0

    .line 1326
    invoke-static {v1, p1}, Landroid/opengl/GLES20;->glShaderSource(ILjava/lang/String;)V

    .line 1327
    invoke-static {v1}, Landroid/opengl/GLES20;->glCompileShader(I)V

    .line 1328
    const/4 v2, 0x1

    new-array v0, v2, [I

    .line 1329
    .local v0, compiled:[I
    const v2, 0x8b81

    invoke-static {v1, v2, v0, v3}, Landroid/opengl/GLES20;->glGetShaderiv(II[II)V

    .line 1331
    aget v2, v0, v3

    if-nez v2, :cond_0

    .line 1332
    invoke-static {v1}, Landroid/opengl/GLES20;->glDeleteShader(I)V

    .line 1333
    const/4 v1, 0x0

    .line 1337
    .end local v0           #compiled:[I
    :cond_0
    return v1
.end method

.method private loadShaderProp()V
    .locals 2

    .prologue
    .line 1341
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->mVertexShader:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->mFragmentShader:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->createProgram(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->shader:I

    .line 1342
    iget v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->shader:I

    const-string v1, "aPosition"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->v_handle:I

    .line 1343
    iget v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->shader:I

    const-string v1, "aTexture0Coord"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->uv_handle0:I

    .line 1344
    iget v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->shader:I

    const-string v1, "aTexture1Coord"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->uv_handle1:I

    .line 1345
    iget v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->shader:I

    const-string v1, "uMVPMatrix"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->m_handle:I

    .line 1346
    return-void
.end method

.method private loadTexture()V
    .locals 9

    .prologue
    const/16 v8, 0x2800

    const/4 v1, 0x1

    const v7, 0x46180400

    const/16 v6, 0xde1

    const/4 v3, 0x0

    .line 1269
    new-array v0, v1, [I

    iput-object v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->textures0:[I

    .line 1270
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->textures0:[I

    invoke-static {v1, v0, v3}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    .line 1271
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->textures0:[I

    aget v0, v0, v3

    iput v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->texture0:I

    .line 1272
    iget v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->texture0:I

    invoke-static {v6, v0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 1273
    const/16 v0, 0x2801

    invoke-static {v6, v0, v7}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    .line 1274
    invoke-static {v6, v8, v7}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    .line 1275
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->bitmapWater:Landroid/graphics/Bitmap;

    invoke-static {v6, v3, v0, v3}, Landroid/opengl/GLUtils;->texImage2D(IILandroid/graphics/Bitmap;I)V

    .line 1276
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->bitmapWater:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 1278
    new-array v0, v1, [I

    iput-object v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->textures1:[I

    .line 1279
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->textures1:[I

    invoke-static {v1, v0, v3}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    .line 1280
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->textures1:[I

    aget v0, v0, v3

    iput v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->texture1:I

    .line 1281
    const v0, 0x8892

    iget v1, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->uv1_buf:I

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    .line 1282
    iget v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->uv_handle1:I

    const/4 v1, 0x2

    const/16 v2, 0x1406

    move v4, v3

    move v5, v3

    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZII)V

    .line 1283
    iget v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->uv_handle1:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 1284
    const v0, 0x84c1

    invoke-static {v0}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 1285
    iget v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->texture1:I

    invoke-static {v6, v0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 1286
    const/16 v0, 0x2801

    invoke-static {v6, v0, v7}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    .line 1287
    invoke-static {v6, v8, v7}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    .line 1288
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->bitmapOriginal:Landroid/graphics/Bitmap;

    invoke-static {v6, v3, v0, v3}, Landroid/opengl/GLUtils;->texImage2D(IILandroid/graphics/Bitmap;I)V

    .line 1289
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->bitmapOriginal:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 1290
    return-void
.end method

.method private makeBuffers()V
    .locals 2

    .prologue
    .line 1226
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->vertices:[F

    invoke-static {v0}, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->makeFloatBuffer([F)Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->v:Ljava/nio/FloatBuffer;

    .line 1227
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->indices:[S

    invoke-static {v0}, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->makeShortBuffer([S)Ljava/nio/ShortBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->i:Ljava/nio/ShortBuffer;

    .line 1228
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->uv0:[F

    invoke-static {v0}, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->makeFloatBuffer([F)Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->u0:Ljava/nio/FloatBuffer;

    .line 1229
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->uv1:[F

    invoke-static {v0}, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->makeFloatBuffer([F)Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->u1:Ljava/nio/FloatBuffer;

    .line 1231
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->tmp_buffer:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    iput v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->v_buf:I

    .line 1232
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->tmp_buffer:[I

    const/4 v1, 0x1

    aget v0, v0, v1

    iput v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->i_buf:I

    .line 1233
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->tmp_buffer:[I

    const/4 v1, 0x2

    aget v0, v0, v1

    iput v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->uv1_buf:I

    .line 1234
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->tmp_buffer:[I

    const/4 v1, 0x3

    aget v0, v0, v1

    iput v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->uv0_buf:I

    .line 1235
    return-void
.end method

.method public static final makeFloatBuffer([F)Ljava/nio/FloatBuffer;
    .locals 3
    .parameter "arr"

    .prologue
    .line 1997
    array-length v2, p0

    mul-int/lit8 v2, v2, 0x4

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 1999
    .local v0, bb:Ljava/nio/ByteBuffer;
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 2001
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v1

    .line 2003
    .local v1, fb:Ljava/nio/FloatBuffer;
    return-object v1
.end method

.method public static final makeShortBuffer([S)Ljava/nio/ShortBuffer;
    .locals 3
    .parameter "arr"

    .prologue
    .line 2011
    array-length v2, p0

    mul-int/lit8 v2, v2, 0x2

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 2013
    .local v0, bb:Ljava/nio/ByteBuffer;
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 2015
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asShortBuffer()Ljava/nio/ShortBuffer;

    move-result-object v1

    .line 2017
    .local v1, fb:Ljava/nio/ShortBuffer;
    return-object v1
.end method

.method private move()V
    .locals 13

    .prologue
    const/high16 v12, 0x41a0

    const/high16 v11, -0x3e60

    .line 1463
    const/4 v6, 0x1

    .line 1465
    .local v6, xSpan:I
    const/4 v7, 0x1

    .line 1468
    .local v7, ySpan:I
    iget v8, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->mScreenWidth:I

    iget v9, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->mScreenHeight:I

    if-le v8, v9, :cond_1

    .line 1470
    iget v6, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->spanXForLandscape:I

    .line 1472
    iget v7, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->spanYForLandscape:I

    .line 1474
    iget v8, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->NUM_DETAILS_WIDTH:I

    sub-int v2, v8, v7

    .line 1476
    .local v2, imax:I
    iget v8, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->NUM_DETAILS_HEIGHT:I

    add-int/lit8 v4, v8, -0x1

    .line 1491
    .local v4, jmax:I
    :goto_0
    move v0, v7

    .local v0, i:I
    :goto_1
    if-ge v0, v2, :cond_4

    .line 1493
    move v3, v6

    .local v3, j:I
    :goto_2
    if-ge v3, v4, :cond_3

    .line 1495
    iget v8, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->NUM_DETAILS_WIDTH:I

    mul-int/2addr v8, v3

    add-int v1, v8, v0

    .line 1497
    .local v1, idx:I
    iget-object v8, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->heights:[F

    aget v9, v8, v1

    iget-object v10, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->velocity:[F

    aget v10, v10, v1

    add-float/2addr v9, v10

    aput v9, v8, v1

    .line 1499
    iget-object v8, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->heights:[F

    aget v8, v8, v1

    cmpl-float v8, v8, v12

    if-lez v8, :cond_2

    .line 1501
    iget-object v8, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->heights:[F

    aput v12, v8, v1

    .line 1493
    :cond_0
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 1480
    .end local v0           #i:I
    .end local v1           #idx:I
    .end local v2           #imax:I
    .end local v3           #j:I
    .end local v4           #jmax:I
    :cond_1
    iget v6, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->spanXForPortrait:I

    .line 1482
    iget v7, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->spanYForPortrait:I

    .line 1484
    iget v8, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->NUM_DETAILS_WIDTH:I

    add-int/lit8 v2, v8, -0x1

    .line 1486
    .restart local v2       #imax:I
    iget v8, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->NUM_DETAILS_HEIGHT:I

    sub-int v4, v8, v6

    .restart local v4       #jmax:I
    goto :goto_0

    .line 1503
    .restart local v0       #i:I
    .restart local v1       #idx:I
    .restart local v3       #j:I
    :cond_2
    iget-object v8, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->heights:[F

    aget v8, v8, v1

    cmpg-float v8, v8, v11

    if-gez v8, :cond_0

    .line 1505
    iget-object v8, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->heights:[F

    aput v11, v8, v1

    goto :goto_3

    .line 1491
    .end local v1           #idx:I
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1513
    .end local v3           #j:I
    :cond_4
    move v0, v7

    :goto_4
    if-ge v0, v2, :cond_6

    .line 1515
    move v3, v6

    .restart local v3       #j:I
    :goto_5
    if-ge v3, v4, :cond_5

    .line 1517
    iget v8, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->NUM_DETAILS_WIDTH:I

    mul-int/2addr v8, v3

    add-int v1, v8, v0

    .line 1519
    .restart local v1       #idx:I
    iget-object v8, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->heights:[F

    aget v8, v8, v1

    neg-float v8, v8

    const/high16 v9, 0x4080

    mul-float v5, v8, v9

    .line 1521
    .local v5, v:F
    iget v8, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->NUM_DETAILS_WIDTH:I

    sub-int/2addr v1, v8

    .line 1523
    iget-object v8, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->heights:[F

    aget v8, v8, v1

    add-float/2addr v5, v8

    .line 1525
    iget v8, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->NUM_DETAILS_WIDTH:I

    add-int/lit8 v8, v8, -0x1

    add-int/2addr v1, v8

    .line 1527
    iget-object v8, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->heights:[F

    aget v8, v8, v1

    add-float/2addr v5, v8

    .line 1529
    add-int/lit8 v1, v1, 0x2

    .line 1531
    iget-object v8, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->heights:[F

    aget v8, v8, v1

    add-float/2addr v5, v8

    .line 1533
    iget v8, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->NUM_DETAILS_WIDTH:I

    add-int/lit8 v8, v8, -0x1

    add-int/2addr v1, v8

    .line 1535
    iget-object v8, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->heights:[F

    aget v8, v8, v1

    add-float/2addr v5, v8

    .line 1537
    iget v8, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->NUM_DETAILS_WIDTH:I

    sub-int/2addr v1, v8

    .line 1539
    iget-object v8, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->velocity:[F

    iget-object v9, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->velocity:[F

    aget v9, v9, v1

    const/high16 v10, 0x3f00

    mul-float/2addr v10, v5

    add-float/2addr v9, v10

    const v10, 0x3f666666

    mul-float/2addr v9, v10

    aput v9, v8, v1

    .line 1515
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 1513
    .end local v1           #idx:I
    .end local v5           #v:F
    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 1545
    .end local v3           #j:I
    :cond_6
    return-void
.end method

.method private perspectiveM([FFFFF)V
    .locals 9
    .parameter "m"
    .parameter "angle"
    .parameter "aspect"
    .parameter "near"
    .parameter "far"

    .prologue
    const/4 v8, 0x0

    .line 1951
    const-wide/high16 v2, 0x3fe0

    const-wide v4, 0x400921fb54442d18L

    float-to-double v6, p2

    sub-double/2addr v4, v6

    mul-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->tan(D)D

    move-result-wide v2

    double-to-float v0, v2

    .line 1953
    .local v0, f:F
    sub-float v1, p4, p5

    .line 1956
    .local v1, range:F
    const/4 v2, 0x0

    div-float v3, v0, p3

    aput v3, p1, v2

    .line 1958
    const/4 v2, 0x1

    aput v8, p1, v2

    .line 1960
    const/4 v2, 0x2

    aput v8, p1, v2

    .line 1962
    const/4 v2, 0x3

    aput v8, p1, v2

    .line 1965
    const/4 v2, 0x4

    aput v8, p1, v2

    .line 1967
    const/4 v2, 0x5

    aput v0, p1, v2

    .line 1969
    const/4 v2, 0x6

    aput v8, p1, v2

    .line 1971
    const/4 v2, 0x7

    aput v8, p1, v2

    .line 1974
    const/16 v2, 0x8

    aput v8, p1, v2

    .line 1976
    const/16 v2, 0x9

    aput v8, p1, v2

    .line 1978
    const/16 v2, 0xa

    div-float v3, p5, v1

    aput v3, p1, v2

    .line 1980
    const/16 v2, 0xb

    const/high16 v3, -0x4080

    aput v3, p1, v2

    .line 1983
    const/16 v2, 0xc

    aput v8, p1, v2

    .line 1985
    const/16 v2, 0xd

    aput v8, p1, v2

    .line 1987
    const/16 v2, 0xe

    mul-float v3, p4, p5

    div-float/2addr v3, v1

    aput v3, p1, v2

    .line 1989
    const/16 v2, 0xf

    aput v8, p1, v2

    .line 1991
    return-void
.end method

.method private playDragSound(I)V
    .locals 9
    .parameter "soundId"

    .prologue
    const/4 v4, 0x0

    const/high16 v2, 0x3f80

    .line 1160
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->isSystemSoundChecked:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->mSoundPool:Landroid/media/SoundPool;

    if-eqz v0, :cond_0

    .line 1161
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->mSoundPool:Landroid/media/SoundPool;

    iget-object v1, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->sounds:[I

    aget v1, v1, p1

    move v3, v2

    move v5, v4

    move v6, v2

    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->play(IFFIIF)I

    move-result v8

    .line 1162
    .local v8, streanID:I
    add-int/lit8 v8, v8, -0x1

    .line 1163
    new-instance v7, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer$SoundPoolThread;

    invoke-direct {v7, p0, v8}, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer$SoundPoolThread;-><init>(Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;I)V

    .line 1164
    .local v7, soundpoolThread:Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer$SoundPoolThread;
    invoke-virtual {v7}, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer$SoundPoolThread;->run()V

    .line 1166
    .end local v7           #soundpoolThread:Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer$SoundPoolThread;
    .end local v8           #streanID:I
    :cond_0
    return-void
.end method

.method private playSound(I)V
    .locals 7
    .parameter "soundId"

    .prologue
    const/4 v4, 0x0

    const/high16 v2, 0x3f80

    .line 1154
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->isSystemSoundChecked:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->mSoundPool:Landroid/media/SoundPool;

    if-eqz v0, :cond_0

    .line 1155
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->mSoundPool:Landroid/media/SoundPool;

    iget-object v1, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->sounds:[I

    aget v1, v1, p1

    move v3, v2

    move v5, v4

    move v6, v2

    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->play(IFFIIF)I

    .line 1157
    :cond_0
    return-void
.end method

.method private ripple(FFF)V
    .locals 13
    .parameter "mx"
    .parameter "my"
    .parameter "intensity"

    .prologue
    .line 1567
    const/4 v0, 0x0

    .line 1570
    .local v0, acc:F
    iget v9, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->MESH_SIZE_WIDTH:I

    int-to-float v9, v9

    div-float v9, p1, v9

    const/high16 v10, 0x3f00

    add-float/2addr v9, v10

    iget v10, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->NUM_DETAILS_WIDTH:I

    int-to-float v10, v10

    mul-float p1, v9, v10

    .line 1572
    iget v9, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->MESH_SIZE_HEIGHT:I

    int-to-float v9, v9

    div-float v9, p2, v9

    const/high16 v10, 0x3f00

    add-float/2addr v9, v10

    iget v10, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->NUM_DETAILS_HEIGHT:I

    int-to-float v10, v10

    mul-float p2, v9, v10

    .line 1574
    const/high16 v9, 0x40a0

    cmpl-float v9, p1, v9

    if-lez v9, :cond_1

    const/high16 v9, 0x4040

    sub-float v9, p1, v9

    float-to-double v9, v9

    invoke-static {v9, v10}, Ljava/lang/Math;->floor(D)D

    move-result-wide v9

    double-to-int v5, v9

    .line 1576
    .local v5, imin:I
    :goto_0
    const/high16 v9, 0x40a0

    cmpl-float v9, p2, v9

    if-lez v9, :cond_2

    const/high16 v9, 0x4040

    sub-float v9, p2, v9

    float-to-double v9, v9

    invoke-static {v9, v10}, Ljava/lang/Math;->floor(D)D

    move-result-wide v9

    double-to-int v8, v9

    .line 1578
    .local v8, jmin:I
    :goto_1
    iget v9, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->NUM_DETAILS_WIDTH:I

    add-int/lit8 v9, v9, -0x5

    int-to-float v9, v9

    cmpg-float v9, p1, v9

    if-gez v9, :cond_3

    const/high16 v9, 0x4080

    add-float/2addr v9, p1

    float-to-double v9, v9

    invoke-static {v9, v10}, Ljava/lang/Math;->floor(D)D

    move-result-wide v9

    double-to-int v4, v9

    .line 1580
    .local v4, imax:I
    :goto_2
    iget v9, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->NUM_DETAILS_HEIGHT:I

    add-int/lit8 v9, v9, -0x5

    int-to-float v9, v9

    cmpg-float v9, p2, v9

    if-gez v9, :cond_4

    const/high16 v9, 0x4080

    add-float/2addr v9, p2

    float-to-double v9, v9

    invoke-static {v9, v10}, Ljava/lang/Math;->floor(D)D

    move-result-wide v9

    double-to-int v7, v9

    .line 1583
    .local v7, jmax:I
    :goto_3
    move v3, v5

    .local v3, i:I
    :goto_4
    if-ge v3, v4, :cond_6

    .line 1585
    move v6, v8

    .local v6, j:I
    :goto_5
    if-ge v6, v7, :cond_5

    .line 1587
    int-to-float v9, v3

    sub-float v1, p1, v9

    .line 1589
    .local v1, dx:F
    int-to-float v9, v6

    sub-float v2, p2, v9

    .line 1591
    .local v2, dy:F
    const/high16 v9, 0x4040

    mul-float v10, v1, v1

    mul-float v11, v2, v2

    add-float/2addr v10, v11

    float-to-double v10, v10

    invoke-static {v10, v11}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v10

    double-to-float v10, v10

    sub-float v0, v9, v10

    .line 1593
    const/4 v9, 0x0

    cmpl-float v9, v0, v9

    if-lez v9, :cond_0

    .line 1595
    iget-object v9, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->velocity:[F

    iget v10, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->NUM_DETAILS_WIDTH:I

    mul-int/2addr v10, v6

    add-int/2addr v10, v3

    aget v11, v9, v10

    mul-float v12, v0, p3

    add-float/2addr v11, v12

    aput v11, v9, v10

    .line 1585
    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_5

    .line 1574
    .end local v1           #dx:F
    .end local v2           #dy:F
    .end local v3           #i:I
    .end local v4           #imax:I
    .end local v5           #imin:I
    .end local v6           #j:I
    .end local v7           #jmax:I
    .end local v8           #jmin:I
    :cond_1
    const/4 v5, 0x2

    goto :goto_0

    .line 1576
    .restart local v5       #imin:I
    :cond_2
    const/4 v8, 0x2

    goto :goto_1

    .line 1578
    .restart local v8       #jmin:I
    :cond_3
    iget v9, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->NUM_DETAILS_WIDTH:I

    add-int/lit8 v4, v9, -0x1

    goto :goto_2

    .line 1580
    .restart local v4       #imax:I
    :cond_4
    iget v9, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->NUM_DETAILS_HEIGHT:I

    add-int/lit8 v7, v9, -0x1

    goto :goto_3

    .line 1583
    .restart local v3       #i:I
    .restart local v6       #j:I
    .restart local v7       #jmax:I
    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 1601
    .end local v6           #j:I
    :cond_6
    return-void
.end method

.method private setBackground()V
    .locals 7

    .prologue
    .line 2322
    const/4 v2, 0x0

    .line 2324
    .local v2, inputStream:Ljava/io/InputStream;
    :try_start_0
    new-instance v4, Ljava/io/File;

    const-string v5, "/data/system/theme/lock_wallpaper"

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2328
    .local v4, wallpaperFile:Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 2330
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .end local v2           #inputStream:Ljava/io/InputStream;
    .local v3, inputStream:Ljava/io/InputStream;
    move-object v2, v3

    .line 2348
    .end local v3           #inputStream:Ljava/io/InputStream;
    .restart local v2       #inputStream:Ljava/io/InputStream;
    :goto_0
    new-instance v5, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v5, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v5}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->setTexture(Landroid/graphics/Bitmap;)V

    .line 2350
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    .line 2352
    iget-object v5, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->mParent:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x10805d0

    invoke-static {v5, v6}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->setWaterTexture(Landroid/graphics/Bitmap;)V

    .line 2360
    .end local v4           #wallpaperFile:Ljava/io/File;
    :goto_1
    return-void

    .line 2334
    .restart local v4       #wallpaperFile:Ljava/io/File;
    :cond_0
    new-instance v0, Ljava/io/File;

    const-string v5, "/system/wallpaper/lockscreen_default_wallpaper.jpg"

    invoke-direct {v0, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2336
    .local v0, defaultWallpaperFile:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 2338
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .end local v2           #inputStream:Ljava/io/InputStream;
    .restart local v3       #inputStream:Ljava/io/InputStream;
    move-object v2, v3

    .end local v3           #inputStream:Ljava/io/InputStream;
    .restart local v2       #inputStream:Ljava/io/InputStream;
    goto :goto_0

    .line 2342
    :cond_1
    iget-object v5, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x10803ff

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    .line 2354
    .end local v0           #defaultWallpaperFile:Ljava/io/File;
    .end local v4           #wallpaperFile:Ljava/io/File;
    :catch_0
    move-exception v1

    .line 2356
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method private setMesh()V
    .locals 34

    .prologue
    .line 1621
    const/16 v21, 0x0

    .local v21, u:F
    const/16 v23, 0x0

    .line 1633
    .local v23, v:F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->refractiveIndex:F

    move/from16 v30, v0

    const/high16 v31, 0x3f80

    sub-float v17, v30, v31

    .line 1635
    .local v17, rimo:F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->MESH_SIZE_WIDTH:I

    move/from16 v30, v0

    move/from16 v0, v30

    int-to-float v0, v0

    move/from16 v30, v0

    const/high16 v31, 0x3f00

    mul-float v28, v30, v31

    .line 1637
    .local v28, xmax:F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->MESH_SIZE_HEIGHT:I

    move/from16 v30, v0

    move/from16 v0, v30

    int-to-float v0, v0

    move/from16 v30, v0

    const/high16 v31, 0x3f00

    mul-float v29, v30, v31

    .line 1639
    .local v29, ymax:F
    const/high16 v30, 0x3f80

    div-float v9, v30, v28

    .line 1641
    .local v9, ixmax:F
    const/high16 v30, 0x3f80

    div-float v10, v30, v29

    .line 1644
    .local v10, iymax:F
    const/4 v6, 0x0

    .local v6, i:I
    :goto_0
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->SURFACE_DETAILS_HEIGHT:I

    move/from16 v30, v0

    move/from16 v0, v30

    if-ge v6, v0, :cond_16

    .line 1646
    const/4 v11, 0x0

    .local v11, j:I
    :goto_1
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->SURFACE_DETAILS_WIDTH:I

    move/from16 v30, v0

    move/from16 v0, v30

    if-ge v11, v0, :cond_15

    .line 1648
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->SURFACE_DETAILS_HEIGHT:I

    move/from16 v30, v0

    mul-int v30, v30, v11

    add-int v30, v30, v6

    mul-int/lit8 v7, v30, 0x3

    .line 1650
    .local v7, index:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->SURFACE_DETAILS_HEIGHT:I

    move/from16 v30, v0

    mul-int v30, v30, v11

    add-int v30, v30, v6

    mul-int/lit8 v8, v30, 0x2

    .line 1654
    .local v8, index2:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->drawCount:I

    move/from16 v30, v0

    const/16 v31, 0x1

    move/from16 v0, v30

    move/from16 v1, v31

    if-gt v0, v1, :cond_3

    .line 1657
    const/4 v12, 0x0

    .line 1661
    .local v12, len:F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->vertices:[F

    move-object/from16 v30, v0

    aget v24, v30, v7

    .line 1663
    .local v24, vx:F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->vertices:[F

    move-object/from16 v30, v0

    add-int/lit8 v31, v7, 0x1

    aget v26, v30, v31

    .line 1665
    .local v26, vy:F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->vertices:[F

    move-object/from16 v30, v0

    add-int/lit8 v31, v7, 0x2

    const/16 v27, 0x0

    aput v27, v30, v31

    .line 1671
    .local v27, vz:F
    const/4 v13, 0x0

    .line 1673
    .local v13, nx:F
    const/4 v14, 0x0

    .line 1675
    .local v14, ny:F
    const/4 v15, 0x0

    .line 1677
    .local v15, nz:F
    const/4 v13, 0x0

    .line 1679
    const/4 v14, 0x0

    .line 1683
    move/from16 v2, v24

    .line 1685
    .local v2, dx:F
    move/from16 v3, v26

    .line 1687
    .local v3, dy:F
    const/high16 v4, 0x41f0

    .line 1689
    .local v4, dz:F
    const/high16 v12, 0x3e80

    .line 1691
    mul-float/2addr v2, v12

    .line 1693
    mul-float/2addr v3, v12

    .line 1695
    mul-float/2addr v4, v12

    .line 1701
    mul-float v20, v4, v17

    .line 1763
    .local v20, t:F
    :goto_2
    const/16 v30, 0x0

    cmpl-float v30, v2, v30

    if-nez v30, :cond_6

    .line 1765
    const/16 v30, 0x0

    cmpl-float v30, v3, v30

    if-nez v30, :cond_4

    .line 1767
    const/high16 v23, 0x3f00

    move/from16 v21, v23

    .line 1769
    const/16 v19, 0x0

    .line 1834
    .local v19, sign:F
    :goto_3
    const/16 v30, 0x0

    cmpl-float v30, v19, v30

    if-eqz v30, :cond_2

    .line 1836
    mul-float v30, v19, v29

    sub-float v30, v30, v26

    div-float v20, v30, v3

    .line 1838
    mul-float v30, v20, v2

    add-float v18, v30, v24

    .line 1840
    .local v18, s:F
    mul-float v30, v20, v4

    add-float v5, v30, v27

    .line 1842
    .local v5, hitz:F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->boxHeight:F

    move/from16 v30, v0

    cmpl-float v30, v5, v30

    if-lez v30, :cond_14

    .line 1844
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->windowWidth:I

    move/from16 v30, v0

    const/16 v31, 0x320

    move/from16 v0, v30

    move/from16 v1, v31

    if-eq v0, v1, :cond_0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->windowHeight:I

    move/from16 v30, v0

    const/16 v31, 0x320

    move/from16 v0, v30

    move/from16 v1, v31

    if-ne v0, v1, :cond_11

    .line 1845
    :cond_0
    const v30, 0x41f73333

    sub-float v30, v30, v27

    div-float v16, v30, v4

    .line 1849
    .local v16, r:F
    :goto_4
    mul-float v30, v2, v16

    add-float v30, v30, v24

    mul-float v30, v30, v10

    const/high16 v31, 0x3e80

    mul-float v30, v30, v31

    const/high16 v31, 0x3f00

    add-float v21, v30, v31

    .line 1851
    mul-float v30, v3, v16

    add-float v30, v30, v26

    mul-float v30, v30, v10

    const/high16 v31, 0x3e80

    mul-float v30, v30, v31

    const/high16 v31, 0x3f00

    add-float v23, v30, v31

    .line 1853
    move/from16 v0, v21

    float-to-double v0, v0

    move-wide/from16 v30, v0

    const-wide/high16 v32, 0x3ff0

    cmpl-double v30, v30, v32

    if-lez v30, :cond_12

    .line 1854
    const/high16 v21, 0x3f80

    .line 1858
    :cond_1
    :goto_5
    move/from16 v0, v23

    float-to-double v0, v0

    move-wide/from16 v30, v0

    const-wide/high16 v32, 0x3ff0

    cmpl-double v30, v30, v32

    if-lez v30, :cond_13

    .line 1859
    const/high16 v23, 0x3f80

    .line 1875
    .end local v5           #hitz:F
    .end local v16           #r:F
    .end local v18           #s:F
    :cond_2
    :goto_6
    const/high16 v30, 0x3f00

    mul-float v30, v30, v13

    const/high16 v31, 0x3f00

    add-float v30, v30, v31

    int-to-float v0, v6

    move/from16 v31, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->NUM_DETAILS_WIDTH:I

    move/from16 v32, v0

    move/from16 v0, v32

    int-to-float v0, v0

    move/from16 v32, v0

    const/high16 v33, 0x3f00

    mul-float v32, v32, v33

    sub-float v31, v31, v32

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->INV_NUM_DETAILS_WIDTH:F

    move/from16 v32, v0

    mul-float v31, v31, v32

    const/high16 v32, 0x3e80

    mul-float v31, v31, v32

    add-float v22, v30, v31

    .line 1877
    .local v22, uxx:F
    const/high16 v30, 0x3f00

    mul-float v30, v30, v14

    const/high16 v31, 0x3f00

    add-float v30, v30, v31

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->NUM_DETAILS_HEIGHT:I

    move/from16 v31, v0

    move/from16 v0, v31

    int-to-float v0, v0

    move/from16 v31, v0

    const/high16 v32, 0x3f00

    mul-float v31, v31, v32

    int-to-float v0, v11

    move/from16 v32, v0

    sub-float v31, v31, v32

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->INV_NUM_DETAILS_HEIGHT:F

    move/from16 v32, v0

    mul-float v31, v31, v32

    const/high16 v32, 0x3e80

    mul-float v31, v31, v32

    add-float v25, v30, v31

    .line 1879
    .local v25, vxx:F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->uv0:[F

    move-object/from16 v30, v0

    aput v22, v30, v8

    .line 1881
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->uv0:[F

    move-object/from16 v30, v0

    add-int/lit8 v31, v8, 0x1

    aput v25, v30, v31

    .line 1883
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->uv1:[F

    move-object/from16 v30, v0

    aput v21, v30, v8

    .line 1885
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->uv1:[F

    move-object/from16 v30, v0

    add-int/lit8 v31, v8, 0x1

    move/from16 v0, v23

    neg-float v0, v0

    move/from16 v32, v0

    aput v32, v30, v31

    .line 1646
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_1

    .line 1707
    .end local v2           #dx:F
    .end local v3           #dy:F
    .end local v4           #dz:F
    .end local v12           #len:F
    .end local v13           #nx:F
    .end local v14           #ny:F
    .end local v15           #nz:F
    .end local v19           #sign:F
    .end local v20           #t:F
    .end local v22           #uxx:F
    .end local v24           #vx:F
    .end local v25           #vxx:F
    .end local v26           #vy:F
    .end local v27           #vz:F
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->heights:[F

    move-object/from16 v30, v0

    add-int/lit8 v31, v11, 0x2

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->NUM_DETAILS_WIDTH:I

    move/from16 v32, v0

    mul-int v31, v31, v32

    add-int v31, v31, v6

    add-int/lit8 v31, v31, 0x2

    aget v12, v30, v31

    .line 1711
    .restart local v12       #len:F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->vertices:[F

    move-object/from16 v30, v0

    aget v24, v30, v7

    .line 1713
    .restart local v24       #vx:F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->vertices:[F

    move-object/from16 v30, v0

    add-int/lit8 v31, v7, 0x1

    aget v26, v30, v31

    .line 1715
    .restart local v26       #vy:F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->vertices:[F

    move-object/from16 v30, v0

    add-int/lit8 v31, v7, 0x2

    const/high16 v32, 0x3e80

    mul-float v27, v12, v32

    aput v27, v30, v31

    .line 1721
    .restart local v27       #vz:F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->heights:[F

    move-object/from16 v30, v0

    add-int/lit8 v31, v11, 0x2

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->NUM_DETAILS_HEIGHT:I

    move/from16 v32, v0

    mul-int v31, v31, v32

    add-int v31, v31, v6

    add-int/lit8 v31, v31, 0x1

    aget v30, v30, v31

    sub-float v30, v12, v30

    const/high16 v31, 0x3e80

    mul-float v13, v30, v31

    .line 1723
    .restart local v13       #nx:F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->heights:[F

    move-object/from16 v30, v0

    add-int/lit8 v31, v11, 0x1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->NUM_DETAILS_HEIGHT:I

    move/from16 v32, v0

    mul-int v31, v31, v32

    add-int v31, v31, v6

    add-int/lit8 v31, v31, 0x2

    aget v30, v30, v31

    sub-float v30, v12, v30

    const/high16 v31, 0x3e80

    mul-float v14, v30, v31

    .line 1725
    .restart local v14       #ny:F
    const-wide/high16 v30, 0x3ff0

    mul-float v32, v13, v13

    mul-float v33, v14, v14

    add-float v32, v32, v33

    const/high16 v33, 0x3f80

    add-float v32, v32, v33

    move/from16 v0, v32

    float-to-double v0, v0

    move-wide/from16 v32, v0

    invoke-static/range {v32 .. v33}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v32

    div-double v30, v30, v32

    move-wide/from16 v0, v30

    double-to-float v15, v0

    .line 1727
    .restart local v15       #nz:F
    mul-float/2addr v13, v15

    .line 1729
    mul-float/2addr v14, v15

    .line 1733
    move/from16 v2, v24

    .line 1735
    .restart local v2       #dx:F
    move/from16 v3, v26

    .line 1737
    .restart local v3       #dy:F
    const/high16 v30, 0x41f0

    add-float v4, v27, v30

    .line 1739
    .restart local v4       #dz:F
    const-wide/high16 v30, 0x3ff0

    mul-float v32, v2, v2

    mul-float v33, v3, v3

    add-float v32, v32, v33

    mul-float v33, v4, v4

    add-float v32, v32, v33

    move/from16 v0, v32

    float-to-double v0, v0

    move-wide/from16 v32, v0

    invoke-static/range {v32 .. v33}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v32

    div-double v30, v30, v32

    move-wide/from16 v0, v30

    double-to-float v12, v0

    .line 1741
    mul-float/2addr v2, v12

    .line 1743
    mul-float/2addr v3, v12

    .line 1745
    mul-float/2addr v4, v12

    .line 1751
    mul-float v30, v2, v13

    mul-float v31, v3, v14

    add-float v30, v30, v31

    add-float v30, v30, v4

    mul-float v20, v30, v17

    .line 1753
    .restart local v20       #t:F
    mul-float v30, v13, v20

    add-float v2, v2, v30

    .line 1755
    mul-float v30, v14, v20

    add-float v3, v3, v30

    goto/16 :goto_2

    .line 1773
    :cond_4
    const/16 v30, 0x0

    cmpg-float v30, v3, v30

    if-gez v30, :cond_5

    const/high16 v19, -0x4080

    .restart local v19       #sign:F
    :goto_7
    goto/16 :goto_3

    .end local v19           #sign:F
    :cond_5
    const/high16 v19, 0x3f80

    goto :goto_7

    .line 1779
    :cond_6
    const/16 v30, 0x0

    cmpg-float v30, v2, v30

    if-gez v30, :cond_a

    const/high16 v19, -0x4080

    .line 1781
    .restart local v19       #sign:F
    :goto_8
    mul-float v30, v19, v28

    sub-float v30, v30, v24

    div-float v20, v30, v2

    .line 1783
    mul-float v30, v20, v3

    add-float v18, v30, v26

    .line 1787
    .restart local v18       #s:F
    move/from16 v0, v28

    neg-float v0, v0

    move/from16 v30, v0

    cmpg-float v30, v30, v18

    if-gez v30, :cond_f

    cmpg-float v30, v18, v28

    if-gez v30, :cond_f

    .line 1789
    mul-float v30, v20, v4

    add-float v5, v30, v27

    .line 1791
    .restart local v5       #hitz:F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->boxHeight:F

    move/from16 v30, v0

    cmpl-float v30, v5, v30

    if-lez v30, :cond_e

    .line 1793
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->windowWidth:I

    move/from16 v30, v0

    const/16 v31, 0x320

    move/from16 v0, v30

    move/from16 v1, v31

    if-eq v0, v1, :cond_7

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->windowHeight:I

    move/from16 v30, v0

    const/16 v31, 0x320

    move/from16 v0, v30

    move/from16 v1, v31

    if-ne v0, v1, :cond_b

    .line 1794
    :cond_7
    const v30, 0x41f73333

    sub-float v30, v30, v27

    div-float v16, v30, v4

    .line 1798
    .restart local v16       #r:F
    :goto_9
    mul-float v30, v2, v16

    add-float v30, v30, v24

    mul-float v30, v30, v9

    const/high16 v31, 0x3e80

    mul-float v30, v30, v31

    const/high16 v31, 0x3f00

    add-float v21, v30, v31

    .line 1800
    mul-float v30, v3, v16

    add-float v30, v30, v26

    mul-float v30, v30, v9

    const/high16 v31, 0x3e80

    mul-float v30, v30, v31

    const/high16 v31, 0x3f00

    add-float v23, v30, v31

    .line 1802
    move/from16 v0, v21

    float-to-double v0, v0

    move-wide/from16 v30, v0

    const-wide/high16 v32, 0x3ff0

    cmpl-double v30, v30, v32

    if-lez v30, :cond_c

    .line 1803
    const/high16 v21, 0x3f80

    .line 1807
    :cond_8
    :goto_a
    move/from16 v0, v23

    float-to-double v0, v0

    move-wide/from16 v30, v0

    const-wide/high16 v32, 0x3ff0

    cmpl-double v30, v30, v32

    if-lez v30, :cond_d

    .line 1808
    const/high16 v23, 0x3f80

    .line 1822
    :cond_9
    :goto_b
    const/16 v19, 0x0

    goto/16 :goto_3

    .line 1779
    .end local v5           #hitz:F
    .end local v16           #r:F
    .end local v18           #s:F
    .end local v19           #sign:F
    :cond_a
    const/high16 v19, 0x3f80

    goto/16 :goto_8

    .line 1796
    .restart local v5       #hitz:F
    .restart local v18       #s:F
    .restart local v19       #sign:F
    :cond_b
    const/high16 v30, 0x41f0

    sub-float v30, v30, v27

    div-float v16, v30, v4

    .restart local v16       #r:F
    goto :goto_9

    .line 1804
    :cond_c
    move/from16 v0, v21

    float-to-double v0, v0

    move-wide/from16 v30, v0

    const-wide/16 v32, 0x0

    cmpg-double v30, v30, v32

    if-gez v30, :cond_8

    .line 1805
    const/16 v21, 0x0

    goto :goto_a

    .line 1809
    :cond_d
    move/from16 v0, v23

    float-to-double v0, v0

    move-wide/from16 v30, v0

    const-wide/16 v32, 0x0

    cmpg-double v30, v30, v32

    if-gez v30, :cond_9

    .line 1810
    const/16 v23, 0x0

    goto :goto_b

    .line 1814
    .end local v16           #r:F
    :cond_e
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->boxHeight:F

    move/from16 v30, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->boxHeight:F

    move/from16 v31, v0

    add-float v31, v31, v5

    div-float v16, v30, v31

    .line 1816
    .restart local v16       #r:F
    mul-float v30, v19, v16

    const/high16 v31, 0x3f00

    mul-float v30, v30, v31

    const/high16 v31, 0x3f00

    add-float v21, v30, v31

    .line 1818
    mul-float v30, v18, v9

    mul-float v30, v30, v16

    const/high16 v31, 0x3f00

    mul-float v30, v30, v31

    const/high16 v31, 0x3f00

    add-float v23, v30, v31

    goto :goto_b

    .line 1826
    .end local v5           #hitz:F
    .end local v16           #r:F
    :cond_f
    const/16 v30, 0x0

    cmpg-float v30, v3, v30

    if-gez v30, :cond_10

    const/high16 v19, -0x4080

    :goto_c
    goto/16 :goto_3

    :cond_10
    const/high16 v19, 0x3f80

    goto :goto_c

    .line 1847
    .restart local v5       #hitz:F
    :cond_11
    const/high16 v30, 0x41f0

    sub-float v30, v30, v27

    div-float v16, v30, v4

    .restart local v16       #r:F
    goto/16 :goto_4

    .line 1855
    :cond_12
    move/from16 v0, v21

    float-to-double v0, v0

    move-wide/from16 v30, v0

    const-wide/16 v32, 0x0

    cmpg-double v30, v30, v32

    if-gez v30, :cond_1

    .line 1856
    const/16 v21, 0x0

    goto/16 :goto_5

    .line 1860
    :cond_13
    move/from16 v0, v23

    float-to-double v0, v0

    move-wide/from16 v30, v0

    const-wide/16 v32, 0x0

    cmpg-double v30, v30, v32

    if-gez v30, :cond_2

    .line 1861
    const/16 v23, 0x0

    goto/16 :goto_6

    .line 1865
    .end local v16           #r:F
    :cond_14
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->boxHeight:F

    move/from16 v30, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->boxHeight:F

    move/from16 v31, v0

    add-float v31, v31, v5

    div-float v16, v30, v31

    .line 1867
    .restart local v16       #r:F
    mul-float v30, v18, v10

    mul-float v30, v30, v16

    const/high16 v31, 0x3f00

    mul-float v30, v30, v31

    const/high16 v31, 0x3f00

    add-float v21, v30, v31

    .line 1869
    mul-float v30, v19, v16

    const/high16 v31, 0x3f00

    mul-float v30, v30, v31

    const/high16 v31, 0x3f00

    add-float v23, v30, v31

    goto/16 :goto_6

    .line 1644
    .end local v2           #dx:F
    .end local v3           #dy:F
    .end local v4           #dz:F
    .end local v5           #hitz:F
    .end local v7           #index:I
    .end local v8           #index2:I
    .end local v12           #len:F
    .end local v13           #nx:F
    .end local v14           #ny:F
    .end local v15           #nz:F
    .end local v16           #r:F
    .end local v18           #s:F
    .end local v19           #sign:F
    .end local v20           #t:F
    .end local v24           #vx:F
    .end local v26           #vy:F
    .end local v27           #vz:F
    :cond_15
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_0

    .line 1891
    .end local v11           #j:I
    :cond_16
    return-void
.end method

.method private setModeleConfiguration()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/high16 v5, 0x42c8

    const/16 v4, 0x10

    const/high16 v3, 0x3f80

    const/4 v2, 0x0

    .line 364
    iget v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->windowWidth:I

    const/16 v1, 0x2d0

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->windowHeight:I

    const/16 v1, 0x500

    if-eq v0, v1, :cond_1

    :cond_0
    iget v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->windowWidth:I

    const/16 v1, 0x500

    if-ne v0, v1, :cond_3

    iget v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->windowHeight:I

    const/16 v1, 0x2d0

    if-ne v0, v1, :cond_3

    .line 367
    :cond_1
    const/16 v0, 0x52

    iput v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->NUM_DETAILS_WIDTH:I

    .line 369
    const/16 v0, 0x52

    iput v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->NUM_DETAILS_HEIGHT:I

    .line 373
    iget v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->NUM_DETAILS_WIDTH:I

    int-to-float v0, v0

    div-float v0, v3, v0

    iput v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->INV_NUM_DETAILS_WIDTH:F

    .line 375
    iget v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->NUM_DETAILS_HEIGHT:I

    int-to-float v0, v0

    div-float v0, v3, v0

    iput v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->INV_NUM_DETAILS_HEIGHT:F

    .line 377
    const/16 v0, 0x32

    iput v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->MESH_SIZE_WIDTH:I

    .line 379
    const/16 v0, 0x32

    iput v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->MESH_SIZE_HEIGHT:I

    .line 381
    iget v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->NUM_DETAILS_WIDTH:I

    add-int/lit8 v0, v0, -0x4

    iput v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->SURFACE_DETAILS_WIDTH:I

    .line 383
    iget v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->NUM_DETAILS_HEIGHT:I

    iput v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->SURFACE_DETAILS_HEIGHT:I

    .line 385
    iget v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->SURFACE_DETAILS_WIDTH:I

    iget v1, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->SURFACE_DETAILS_HEIGHT:I

    mul-int/2addr v0, v1

    iput v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->VCOUNT:I

    .line 390
    const v0, 0x3f333333

    iput v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->intensityForLandscape:F

    .line 392
    iput v3, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->intensityForPortrait:F

    .line 400
    iput v2, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->translateXForPortrait:F

    .line 402
    iput v2, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->translateXForLandscape:F

    .line 408
    iput v2, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->translateYForPortrait:F

    .line 410
    iput v2, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->translateYForLandscape:F

    .line 416
    const v0, -0x3dd0cccd

    iput v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->translateZForPortrait:F

    .line 418
    const v0, -0x3e44cccd

    iput v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->translateZForLandscape:F

    .line 424
    iput v6, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->spanXForLandscape:I

    .line 426
    iput v4, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->spanYForLandscape:I

    .line 430
    iput v4, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->spanXForPortrait:I

    .line 432
    iput v6, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->spanYForPortrait:I

    .line 438
    const/high16 v0, 0x4234

    iput v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->XRatioForLandscape:F

    .line 440
    const/high16 v0, 0x41c8

    iput v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->YRatioForLandscape:F

    .line 444
    const/high16 v0, 0x41f0

    iput v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->XRatioForPortrait:F

    .line 446
    const/high16 v0, 0x4238

    iput v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->YRatioForPortrait:F

    .line 449
    const/high16 v0, 0x41a0

    iput v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->XRatioAdjustPortrait:F

    .line 451
    const/high16 v0, 0x41a0

    iput v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->XRatioAdjustLandscape:F

    .line 455
    iput v5, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->tickerAjustYForPortrait:F

    .line 457
    iput v5, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->tickerAjustYForLandscape:F

    .line 459
    iput v4, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->tickerTotalCount:I

    .line 461
    const/high16 v0, 0x3f00

    iput v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->intensityForLandscapeTicker:F

    .line 463
    iput v3, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->intensityForPortraitTicker:F

    .line 465
    const/high16 v0, 0x4416

    iput v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->tickerOpenPortraitY:F

    .line 467
    const/high16 v0, 0x44a0

    iput v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->tickerClosePortraitY:F

    .line 469
    const/high16 v0, 0x43a9

    iput v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->tickerOpenLandscapeY:F

    .line 471
    const/high16 v0, 0x4434

    iput v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->tickerCloseLandscapeY:F

    .line 473
    const/16 v0, 0x19

    iput v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->tickerMoveCriteria:I

    .line 813
    :goto_0
    invoke-static {}, Lcom/android/internal/policy/impl/SamsungLockScreenProperties;->isTMODevice()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 814
    const-wide v0, 0x4065e00000000000L

    iput-wide v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->UNLOCK_RELEASE_THRESHOLD:D

    .line 815
    const-wide v0, 0x4065e00000000000L

    iput-wide v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->UNLOCK_DRAG_THRESHOLD:D

    .line 816
    const-wide v0, 0x4062c00000000000L

    iput-wide v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->RIPPLE_DRAG_THRESHOLD:D

    .line 818
    :cond_2
    return-void

    .line 479
    :cond_3
    iget v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->windowWidth:I

    const/16 v1, 0x21c

    if-ne v0, v1, :cond_4

    iget v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->windowHeight:I

    const/16 v1, 0x3c0

    if-eq v0, v1, :cond_5

    :cond_4
    iget v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->windowWidth:I

    const/16 v1, 0x3c0

    if-ne v0, v1, :cond_6

    iget v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->windowHeight:I

    const/16 v1, 0x21c

    if-ne v0, v1, :cond_6

    .line 482
    :cond_5
    const/16 v0, 0x52

    iput v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->NUM_DETAILS_WIDTH:I

    .line 484
    const/16 v0, 0x52

    iput v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->NUM_DETAILS_HEIGHT:I

    .line 488
    iget v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->NUM_DETAILS_WIDTH:I

    int-to-float v0, v0

    div-float v0, v3, v0

    iput v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->INV_NUM_DETAILS_WIDTH:F

    .line 490
    iget v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->NUM_DETAILS_HEIGHT:I

    int-to-float v0, v0

    div-float v0, v3, v0

    iput v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->INV_NUM_DETAILS_HEIGHT:F

    .line 492
    const/16 v0, 0x32

    iput v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->MESH_SIZE_WIDTH:I

    .line 494
    const/16 v0, 0x32

    iput v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->MESH_SIZE_HEIGHT:I

    .line 496
    iget v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->NUM_DETAILS_WIDTH:I

    add-int/lit8 v0, v0, -0x4

    iput v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->SURFACE_DETAILS_WIDTH:I

    .line 498
    iget v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->NUM_DETAILS_HEIGHT:I

    iput v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->SURFACE_DETAILS_HEIGHT:I

    .line 500
    iget v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->SURFACE_DETAILS_WIDTH:I

    iget v1, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->SURFACE_DETAILS_HEIGHT:I

    mul-int/2addr v0, v1

    iput v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->VCOUNT:I

    .line 505
    const/high16 v0, 0x3f00

    iput v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->intensityForLandscape:F

    .line 507
    iput v3, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->intensityForPortrait:F

    .line 515
    iput v2, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->translateXForPortrait:F

    .line 517
    iput v2, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->translateXForLandscape:F

    .line 523
    iput v2, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->translateYForPortrait:F

    .line 525
    iput v2, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->translateYForLandscape:F

    .line 531
    const v0, -0x3dd0cccd

    iput v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->translateZForPortrait:F

    .line 533
    const v0, -0x3e3d999a

    iput v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->translateZForLandscape:F

    .line 539
    iput v6, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->spanXForLandscape:I

    .line 541
    iput v4, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->spanYForLandscape:I

    .line 545
    iput v4, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->spanXForPortrait:I

    .line 547
    iput v6, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->spanYForPortrait:I

    .line 553
    const/high16 v0, 0x41c8

    iput v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->XRatioForLandscape:F

    .line 555
    const/high16 v0, 0x4170

    iput v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->YRatioForLandscape:F

    .line 559
    const/high16 v0, 0x41f0

    iput v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->XRatioForPortrait:F

    .line 561
    const/high16 v0, 0x4238

    iput v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->YRatioForPortrait:F

    .line 564
    const/high16 v0, 0x41a0

    iput v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->XRatioAdjustPortrait:F

    .line 566
    const/high16 v0, 0x41a0

    iput v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->XRatioAdjustLandscape:F

    .line 572
    iput v5, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->tickerAjustYForPortrait:F

    .line 574
    iput v5, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->tickerAjustYForLandscape:F

    .line 576
    iput v4, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->tickerTotalCount:I

    .line 578
    const/high16 v0, 0x3f00

    iput v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->intensityForLandscapeTicker:F

    .line 580
    iput v3, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->intensityForPortraitTicker:F

    .line 582
    const/high16 v0, 0x43e1

    iput v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->tickerOpenPortraitY:F

    .line 584
    const/high16 v0, 0x4470

    iput v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->tickerClosePortraitY:F

    .line 586
    const/high16 v0, 0x4383

    iput v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->tickerOpenLandscapeY:F

    .line 588
    const/high16 v0, 0x440c

    iput v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->tickerCloseLandscapeY:F

    .line 591
    const/16 v0, 0x19

    iput v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->tickerMoveCriteria:I

    .line 595
    const-wide v0, 0x4064400000000000L

    iput-wide v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->UNLOCK_RELEASE_THRESHOLD:D

    .line 597
    const-wide v0, 0x4074400000000000L

    iput-wide v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->UNLOCK_DRAG_THRESHOLD:D

    .line 599
    const-wide v0, 0x4062c00000000000L

    iput-wide v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->RIPPLE_DRAG_THRESHOLD:D

    .line 603
    const-wide v0, 0x4064400000000000L

    iput-wide v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->MISSED_RELEASE_THRESHOLD:D

    .line 605
    const-wide v0, 0x4064400000000000L

    iput-wide v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->MISSED_DRAG_THRESHOLD:D

    goto/16 :goto_0

    .line 611
    :cond_6
    iget v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->windowWidth:I

    const/16 v1, 0x500

    if-ne v0, v1, :cond_7

    iget v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->windowHeight:I

    const/16 v1, 0x320

    if-eq v0, v1, :cond_8

    :cond_7
    iget v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->windowWidth:I

    const/16 v1, 0x320

    if-ne v0, v1, :cond_9

    iget v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->windowHeight:I

    const/16 v1, 0x500

    if-ne v0, v1, :cond_9

    .line 615
    :cond_8
    const/16 v0, 0x68

    iput v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->NUM_DETAILS_WIDTH:I

    .line 617
    const/16 v0, 0x68

    iput v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->NUM_DETAILS_HEIGHT:I

    .line 621
    iget v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->NUM_DETAILS_WIDTH:I

    int-to-float v0, v0

    div-float v0, v3, v0

    iput v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->INV_NUM_DETAILS_WIDTH:F

    .line 623
    iget v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->NUM_DETAILS_HEIGHT:I

    int-to-float v0, v0

    div-float v0, v3, v0

    iput v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->INV_NUM_DETAILS_HEIGHT:F

    .line 625
    const/16 v0, 0x32

    iput v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->MESH_SIZE_WIDTH:I

    .line 627
    const/16 v0, 0x32

    iput v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->MESH_SIZE_HEIGHT:I

    .line 629
    iget v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->NUM_DETAILS_WIDTH:I

    add-int/lit8 v0, v0, -0x4

    iput v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->SURFACE_DETAILS_WIDTH:I

    .line 631
    iget v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->NUM_DETAILS_HEIGHT:I

    add-int/lit8 v0, v0, -0x4

    iput v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->SURFACE_DETAILS_HEIGHT:I

    .line 633
    iget v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->SURFACE_DETAILS_WIDTH:I

    iget v1, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->SURFACE_DETAILS_HEIGHT:I

    mul-int/2addr v0, v1

    iput v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->VCOUNT:I

    .line 637
    const/high16 v0, 0x3f00

    iput v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->intensityForLandscape:F

    .line 639
    iput v3, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->intensityForPortrait:F

    .line 647
    iput v2, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->translateXForPortrait:F

    .line 649
    iput v2, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->translateXForLandscape:F

    .line 655
    const v0, -0x42b33333

    iput v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->translateYForPortrait:F

    .line 657
    const v0, -0x42b33333

    iput v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->translateYForLandscape:F

    .line 663
    const/high16 v0, -0x3dda

    iput v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->translateZForPortrait:F

    .line 665
    const v0, -0x3e3851ec

    iput v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->translateZForLandscape:F

    .line 671
    iput v6, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->spanXForLandscape:I

    .line 673
    iput v4, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->spanYForLandscape:I

    .line 677
    const/16 v0, 0x14

    iput v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->spanXForPortrait:I

    .line 679
    iput v6, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->spanYForPortrait:I

    .line 685
    const/high16 v0, 0x4234

    iput v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->XRatioForLandscape:F

    .line 687
    const/high16 v0, 0x41c8

    iput v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->YRatioForLandscape:F

    .line 691
    const/high16 v0, 0x41e0

    iput v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->XRatioForPortrait:F

    .line 693
    const/high16 v0, 0x4234

    iput v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->YRatioForPortrait:F

    .line 699
    iput v5, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->tickerAjustYForPortrait:F

    .line 701
    iput v5, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->tickerAjustYForLandscape:F

    .line 703
    iput v4, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->tickerTotalCount:I

    .line 705
    const/high16 v0, 0x3f00

    iput v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->intensityForLandscapeTicker:F

    .line 707
    iput v3, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->intensityForPortraitTicker:F

    .line 709
    const/high16 v0, 0x4416

    iput v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->tickerOpenPortraitY:F

    .line 711
    const v0, 0x4499c000

    iput v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->tickerClosePortraitY:F

    .line 713
    const v0, 0x43bb8000

    iput v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->tickerOpenLandscapeY:F

    .line 715
    const v0, 0x443b8000

    iput v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->tickerCloseLandscapeY:F

    .line 717
    const/16 v0, 0x19

    iput v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->tickerMoveCriteria:I

    goto/16 :goto_0

    .line 725
    :cond_9
    const/high16 v0, 0x3f00

    iput v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->intensityForLandscape:F

    .line 727
    iput v3, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->intensityForPortrait:F

    .line 735
    iput v2, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->translateXForPortrait:F

    .line 737
    iput v2, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->translateXForLandscape:F

    .line 743
    iput v2, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->translateYForPortrait:F

    .line 745
    iput v2, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->translateYForLandscape:F

    .line 753
    const v0, -0x3dd0cccd

    iput v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->translateZForPortrait:F

    .line 757
    const/high16 v0, -0x3e48

    iput v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->translateZForLandscape:F

    .line 763
    iput v6, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->spanXForLandscape:I

    .line 765
    iput v4, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->spanYForLandscape:I

    .line 769
    iput v4, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->spanXForPortrait:I

    .line 771
    iput v6, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->spanYForPortrait:I

    .line 777
    const/high16 v0, 0x4234

    iput v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->XRatioForLandscape:F

    .line 779
    const/high16 v0, 0x41c8

    iput v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->YRatioForLandscape:F

    .line 783
    const/high16 v0, 0x41c8

    iput v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->XRatioForPortrait:F

    .line 785
    const/high16 v0, 0x4238

    iput v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->YRatioForPortrait:F

    .line 791
    iput v5, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->tickerAjustYForPortrait:F

    .line 793
    iput v5, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->tickerAjustYForLandscape:F

    .line 795
    iput v4, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->tickerTotalCount:I

    .line 797
    const/high16 v0, 0x3f00

    iput v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->intensityForLandscapeTicker:F

    .line 799
    iput v3, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->intensityForPortraitTicker:F

    .line 801
    const/high16 v0, 0x4416

    iput v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->tickerOpenPortraitY:F

    .line 803
    const/high16 v0, 0x44a0

    iput v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->tickerClosePortraitY:F

    .line 805
    const/high16 v0, 0x43a9

    iput v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->tickerOpenLandscapeY:F

    .line 807
    const/high16 v0, 0x4434

    iput v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->tickerCloseLandscapeY:F

    .line 809
    const/16 v0, 0x19

    iput v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->tickerMoveCriteria:I

    goto/16 :goto_0
.end method

.method private tickAnimation(FF)V
    .locals 4
    .parameter "startY"
    .parameter "intensity"

    .prologue
    .line 2189
    const/4 v1, 0x0

    .line 2191
    .local v1, tempX:F
    move v2, p1

    .line 2193
    .local v2, tempY:F
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget v3, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->tickerTotalCount:I

    if-ge v0, v3, :cond_0

    .line 2195
    int-to-float v1, v0

    .line 2197
    invoke-direct {p0, v2, v1, p2}, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->ripple(FFF)V

    .line 2199
    neg-float v3, v1

    invoke-direct {p0, v2, v3, p2}, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->ripple(FFF)V

    .line 2193
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2203
    :cond_0
    const/4 v3, 0x1

    invoke-direct {p0, v3}, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->playDragSound(I)V

    .line 2205
    return-void
.end method


# virtual methods
.method public alphaAnimation()V
    .locals 1

    .prologue
    .line 2025
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->reflectionRatio:F

    .line 2027
    return-void
.end method

.method public cleanUp()V
    .locals 1

    .prologue
    .line 2307
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->mSoundPool:Landroid/media/SoundPool;

    if-eqz v0, :cond_0

    .line 2309
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->mSoundPool:Landroid/media/SoundPool;

    invoke-virtual {v0}, Landroid/media/SoundPool;->release()V

    .line 2311
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->mSoundPool:Landroid/media/SoundPool;

    .line 2315
    :cond_0
    return-void
.end method

.method public getReflection()F
    .locals 1

    .prologue
    .line 1931
    iget v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->reflectionRatio:F

    return v0
.end method

.method public getRefraction()F
    .locals 1

    .prologue
    .line 1923
    iget v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->refractiveIndex:F

    return v0
.end method

.method public getSoundNum()I
    .locals 1

    .prologue
    .line 1169
    iget v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->soundNum:I

    return v0
.end method

.method public getSoundTime()I
    .locals 1

    .prologue
    .line 1173
    iget v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->soundTime:I

    return v0
.end method

.method public mouseMove(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 18
    .parameter "view"
    .parameter "event"

    .prologue
    .line 953
    const-string v2, "CircleUnlockRippleRenderer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleTouchEvent event : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", mTouchedView = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->mTouchedView:Landroid/view/View;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", view = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 955
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->mTouchedView:Landroid/view/View;

    if-eqz v2, :cond_0

    .line 956
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->mTouchedView:Landroid/view/View;

    move-object/from16 v0, p1

    if-eq v2, v0, :cond_0

    .line 957
    const/4 v2, 0x0

    .line 1113
    :goto_0
    return v2

    .line 960
    :cond_0
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->mouseX:F

    .line 961
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->mouseY:F

    .line 963
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_1

    .line 964
    const/4 v2, 0x2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->mouseInputCount:I

    .line 965
    const/4 v2, 0x0

    goto :goto_0

    .line 967
    :cond_1
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->mouseInputCount:I

    const/4 v3, 0x1

    if-le v2, v3, :cond_2

    .line 968
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->mouseInputCount:I

    .line 969
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->mouseX:F

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->downX2:F

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->downX:F

    .line 970
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->mouseY:F

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->downY2:F

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->downY:F

    .line 973
    :cond_2
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->mScreenWidth:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->mScreenHeight:I

    if-le v2, v3, :cond_6

    .line 975
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->mouseX:F

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->mScreenWidth:I

    int-to-float v3, v3

    const/high16 v4, 0x4000

    div-float/2addr v3, v4

    sub-float/2addr v2, v3

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->XRatioAdjustLandscape:F

    sub-float/2addr v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->glX:F

    .line 977
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->glX:F

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->XRatioForLandscape:F

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->mScreenWidth:I

    int-to-float v4, v4

    div-float/2addr v3, v4

    mul-float/2addr v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->glX:F

    .line 980
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->mScreenHeight:I

    int-to-float v2, v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->mouseY:F

    sub-float/2addr v2, v3

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->mScreenHeight:I

    int-to-float v3, v3

    const/high16 v4, 0x4000

    div-float/2addr v3, v4

    sub-float/2addr v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->glY:F

    .line 982
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->glY:F

    neg-float v2, v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->YRatioForLandscape:F

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->mScreenHeight:I

    int-to-float v4, v4

    div-float/2addr v3, v4

    mul-float/2addr v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->glY:F

    .line 994
    :goto_1
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_8

    .line 995
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->mTouchedView:Landroid/view/View;

    .line 997
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->isUnlocked:Z

    if-eqz v2, :cond_4

    .line 998
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->mSoundPool:Landroid/media/SoundPool;

    if-nez v2, :cond_3

    .line 1002
    const-string v2, "CircleUnlockRippleRenderer"

    const-string v3, "handleTouchEvent isUnlocked is true"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1003
    new-instance v2, Landroid/media/SoundPool;

    const/16 v3, 0xa

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-direct {v2, v3, v4, v5}, Landroid/media/SoundPool;-><init>(III)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->mSoundPool:Landroid/media/SoundPool;

    .line 1004
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->sounds:[I

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->mSoundPool:Landroid/media/SoundPool;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->mRDownId:I

    const/4 v7, 0x1

    invoke-virtual {v4, v5, v6, v7}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v4

    aput v4, v2, v3

    .line 1005
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->sounds:[I

    const/4 v3, 0x1

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->mSoundPool:Landroid/media/SoundPool;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->mRUpId:I

    const/4 v7, 0x1

    invoke-virtual {v4, v5, v6, v7}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v4

    aput v4, v2, v3

    .line 1007
    :cond_3
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->isUnlocked:Z

    .line 1010
    :cond_4
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->startLocation:I

    const/4 v3, -0x1

    if-le v2, v3, :cond_7

    .line 1011
    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->MISSED_RELEASE_THRESHOLD:D

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->unlockReleaseThreshold:D

    .line 1012
    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->MISSED_DRAG_THRESHOLD:D

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->unlockDragThreshold:D

    .line 1017
    :goto_2
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->mouseInputCount:I

    .line 1018
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->mouseX:F

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->downX2:F

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->downX:F

    .line 1019
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->mouseY:F

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->downY2:F

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->downY:F

    .line 1020
    const-wide/16 v2, 0x0

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->distance:D

    .line 1021
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->rippleDistance:I

    .line 1023
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->prevPressTime:J

    .line 1024
    const-wide/16 v2, 0x0

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->diffPressTime:J

    .line 1027
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->glY:F

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->glX:F

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->intensityForRipple:F

    const/high16 v5, 0x4080

    mul-float/2addr v4, v5

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3, v4}, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->ripple(FFF)V

    .line 1029
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->playSound(I)V

    .line 1113
    :cond_5
    :goto_3
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 986
    :cond_6
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->mouseX:F

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->mScreenWidth:I

    int-to-float v3, v3

    const/high16 v4, 0x4000

    div-float/2addr v3, v4

    sub-float/2addr v2, v3

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->XRatioAdjustPortrait:F

    sub-float/2addr v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->glX:F

    .line 988
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->glX:F

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->XRatioForPortrait:F

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->mScreenWidth:I

    int-to-float v4, v4

    div-float/2addr v3, v4

    mul-float/2addr v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->glX:F

    .line 990
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->mScreenHeight:I

    int-to-float v2, v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->mouseY:F

    sub-float/2addr v2, v3

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->mScreenHeight:I

    int-to-float v3, v3

    const/high16 v4, 0x4000

    div-float/2addr v3, v4

    sub-float/2addr v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->glY:F

    .line 991
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->glY:F

    neg-float v2, v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->YRatioForPortrait:F

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->mScreenHeight:I

    int-to-float v4, v4

    div-float/2addr v3, v4

    mul-float/2addr v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->glY:F

    goto/16 :goto_1

    .line 1014
    :cond_7
    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->UNLOCK_RELEASE_THRESHOLD:D

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->unlockReleaseThreshold:D

    .line 1015
    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->UNLOCK_DRAG_THRESHOLD:D

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->unlockDragThreshold:D

    goto/16 :goto_2

    .line 1031
    :cond_8
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_c

    .line 1033
    if-eqz p1, :cond_9

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->mTouchedView:Landroid/view/View;

    if-nez v2, :cond_9

    .line 1034
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->mouseX:F

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->downX2:F

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->downX:F

    .line 1035
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->mouseY:F

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->downY2:F

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->downY:F

    .line 1038
    :cond_9
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->mouseX:F

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->downX:F

    sub-float v14, v2, v3

    .line 1039
    .local v14, dx:F
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->mouseY:F

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->downY:F

    sub-float v16, v2, v3

    .line 1041
    .local v16, dy:F
    float-to-double v2, v14

    const-wide/high16 v4, 0x4000

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    move/from16 v0, v16

    float-to-double v4, v0

    const-wide/high16 v6, 0x4000

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    add-double v12, v2, v4

    .line 1042
    .local v12, distance_square:D
    invoke-static {v12, v13}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v9

    .line 1043
    .local v9, distForUnlock:D
    move-object/from16 v0, p0

    iput-wide v9, v0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->distance:D

    .line 1045
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->mouseX:F

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->downX2:F

    sub-float v15, v2, v3

    .line 1046
    .local v15, dx2:F
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->mouseY:F

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->downY2:F

    sub-float v17, v2, v3

    .line 1047
    .local v17, dy2:F
    float-to-double v2, v15

    const-wide/high16 v4, 0x4000

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    move/from16 v0, v17

    float-to-double v4, v0

    const-wide/high16 v6, 0x4000

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    add-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    double-to-int v11, v2

    .line 1049
    .local v11, distForwWave:I
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->rippleDistance:I

    add-int/2addr v2, v11

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->rippleDistance:I

    .line 1051
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->mouseX:F

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->downX2:F

    .line 1052
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->mouseY:F

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->downY2:F

    .line 1054
    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->distance:D

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->unlockDragThreshold:D

    cmpl-double v2, v2, v4

    if-ltz v2, :cond_b

    .line 1055
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->isUnlocked:Z

    if-eqz v2, :cond_a

    .line 1056
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->cleanUp()V

    .line 1057
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 1060
    :cond_a
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->mTouchedView:Landroid/view/View;

    .line 1061
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->isUnlocked:Z

    .line 1063
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->mouseInputCount:I

    .line 1064
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 1066
    :cond_b
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->rippleDistance:I

    int-to-double v2, v2

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->rippleDragThreshold:D

    cmpl-double v2, v2, v4

    if-lez v2, :cond_5

    .line 1067
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->glY:F

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->glX:F

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->intensityForRipple:F

    const/high16 v5, 0x4040

    mul-float/2addr v4, v5

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3, v4}, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->ripple(FFF)V

    .line 1068
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->mParent:Landroid/view/View;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->glY:F

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->glX:F

    const-wide/16 v6, 0x14

    const/high16 v8, 0x4040

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v8}, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->startLongPressCheck2(Landroid/view/View;FFJF)V

    .line 1070
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->rippleDistance:I

    .line 1071
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->mouseX:F

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->downX2:F

    .line 1072
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->mouseY:F

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->downY2:F

    .line 1073
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->isUnlocked:Z

    if-nez v2, :cond_5

    .line 1074
    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->playDragSound(I)V

    goto/16 :goto_3

    .line 1077
    .end local v9           #distForUnlock:D
    .end local v11           #distForwWave:I
    .end local v12           #distance_square:D
    .end local v14           #dx:F
    .end local v15           #dx2:F
    .end local v16           #dy:F
    .end local v17           #dy2:F
    :cond_c
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_11

    .line 1079
    if-eqz p1, :cond_d

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->mTouchedView:Landroid/view/View;

    if-nez v2, :cond_d

    .line 1080
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->mouseX:F

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->downX2:F

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->downX:F

    .line 1081
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->mouseY:F

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->downY2:F

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->downY:F

    .line 1084
    :cond_d
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->mTouchedView:Landroid/view/View;

    .line 1086
    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->unlockReleaseThreshold:D

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->distance:D

    cmpg-double v2, v2, v4

    if-gtz v2, :cond_f

    .line 1087
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->isUnlocked:Z

    if-eqz v2, :cond_e

    .line 1088
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 1089
    :cond_e
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->isUnlocked:Z

    .line 1091
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->mTouchedView:Landroid/view/View;

    .line 1092
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->mouseInputCount:I

    .line 1093
    const/4 v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->startLocation:I

    .line 1094
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 1096
    :cond_f
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->prevPressTime:J

    sub-long/2addr v2, v4

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->diffPressTime:J

    .line 1097
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->mouseInputCount:I

    .line 1099
    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->diffPressTime:J

    const-wide/16 v4, 0x12c

    cmp-long v2, v2, v4

    if-lez v2, :cond_10

    .line 1100
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->glY:F

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->glX:F

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->intensityForRipple:F

    const/high16 v5, 0x4040

    mul-float/2addr v4, v5

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3, v4}, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->ripple(FFF)V

    .line 1101
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->mParent:Landroid/view/View;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->glY:F

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->glX:F

    const-wide/16 v6, 0x96

    const/high16 v8, 0x4040

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v8}, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->startLongPressCheck2(Landroid/view/View;FFJF)V

    .line 1102
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->isUnlocked:Z

    if-nez v2, :cond_10

    .line 1103
    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->playDragSound(I)V

    .line 1106
    :cond_10
    const/4 v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->startLocation:I

    goto/16 :goto_3

    .line 1107
    :cond_11
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_5

    .line 1109
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->mTouchedView:Landroid/view/View;

    goto/16 :goto_3
.end method

.method public onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 8
    .parameter "gl"

    .prologue
    const v7, 0x8892

    const/16 v2, 0x1406

    const/4 v6, 0x1

    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 894
    iget v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->drawCount:I

    if-nez v0, :cond_0

    .line 895
    invoke-direct {p0}, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->loadTexture()V

    .line 896
    invoke-direct {p0}, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->loadBuffers()V

    .line 897
    invoke-direct {p0}, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->setMesh()V

    .line 898
    iget v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->drawCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->drawCount:I

    .line 908
    :goto_0
    invoke-static {v1, v1, v1, v1}, Landroid/opengl/GLES20;->glClearColor(FFFF)V

    .line 909
    const/16 v0, 0x4100

    invoke-static {v0}, Landroid/opengl/GLES20;->glClear(I)V

    .line 910
    iget v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->shader:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glUseProgram(I)V

    .line 912
    iget v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->m_handle:I

    iget-object v1, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->wvp:[F

    invoke-static {v0, v6, v3, v1, v3}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    .line 915
    iget v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->v_buf:I

    invoke-static {v7, v0}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    .line 916
    iget v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->v_handle:I

    const/4 v1, 0x3

    move v4, v3

    move v5, v3

    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZII)V

    .line 917
    iget v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->v_handle:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 920
    iget v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->uv0_buf:I

    invoke-static {v7, v0}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    .line 921
    iget v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->shader:I

    const-string v1, "aTexture0Coord"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    const/4 v1, 0x2

    move v4, v3

    move v5, v3

    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZII)V

    .line 922
    iget v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->uv_handle0:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 923
    const v0, 0x84c0

    invoke-static {v0}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 924
    const/16 v0, 0xde1

    iget-object v1, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->textures0:[I

    aget v1, v1, v3

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 925
    iget v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->shader:I

    const-string v1, "texture0"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    invoke-static {v0, v3}, Landroid/opengl/GLES20;->glUniform1i(II)V

    .line 928
    iget v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->uv1_buf:I

    invoke-static {v7, v0}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    .line 929
    iget v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->uv_handle1:I

    const/4 v1, 0x2

    move v4, v3

    move v5, v3

    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZII)V

    .line 930
    iget v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->uv_handle1:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 931
    const v0, 0x84c1

    invoke-static {v0}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 932
    const/16 v0, 0xde1

    iget v1, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->texture1:I

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 933
    iget v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->shader:I

    const-string v1, "texture1"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    invoke-static {v0, v6}, Landroid/opengl/GLES20;->glUniform1i(II)V

    .line 936
    iget v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->shader:I

    const-string v1, "reflectionRatio"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iget v1, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->reflectionRatio:F

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 937
    iget v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->shader:I

    const-string v1, "alphaRatio1"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iget v1, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->alphaRatio1:F

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 938
    iget v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->shader:I

    const-string v1, "alphaRatio2"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iget v1, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->alphaRatio2:F

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 941
    const v0, 0x8893

    iget v1, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->i_buf:I

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    .line 943
    const/4 v0, 0x4

    iget-object v1, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->indices:[S

    array-length v1, v1

    const/16 v2, 0x1403

    invoke-static {v0, v1, v2, v3}, Landroid/opengl/GLES20;->glDrawElements(IIII)V

    .line 945
    iget v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->v_handle:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    .line 946
    iget v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->uv_handle0:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    .line 947
    iget v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->uv_handle1:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    .line 948
    return-void

    .line 899
    :cond_0
    iget v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->drawCount:I

    if-ne v0, v6, :cond_1

    .line 900
    invoke-direct {p0}, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->loadBuffers()V

    .line 901
    iget v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->drawCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->drawCount:I

    goto/16 :goto_0

    .line 903
    :cond_1
    invoke-direct {p0}, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->loadBuffers()V

    .line 904
    invoke-direct {p0}, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->move()V

    .line 905
    invoke-direct {p0}, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->setMesh()V

    goto/16 :goto_0
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 2211
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->mParent:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->stopLongPressCheck(Landroid/view/View;)V

    .line 2213
    invoke-direct {p0}, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->clearRipple()V

    .line 2215
    return-void
.end method

.method public onResume()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 2247
    const-string v0, "CircleUnlockRippleRenderer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onResume isUnlocked = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->isUnlocked:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2250
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->isUnlocked:Z

    if-eqz v0, :cond_1

    .line 2252
    invoke-direct {p0}, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->clearRipple()V

    .line 2254
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->mSoundPool:Landroid/media/SoundPool;

    if-nez v0, :cond_0

    .line 2258
    const-string v0, "CircleUnlockRippleRenderer"

    const-string v1, "onResume mSoundPool is null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2260
    new-instance v0, Landroid/media/SoundPool;

    const/16 v1, 0xa

    invoke-direct {v0, v1, v4, v5}, Landroid/media/SoundPool;-><init>(III)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->mSoundPool:Landroid/media/SoundPool;

    .line 2262
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->sounds:[I

    iget-object v1, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->mSoundPool:Landroid/media/SoundPool;

    iget-object v2, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->mContext:Landroid/content/Context;

    iget v3, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->mRDownId:I

    invoke-virtual {v1, v2, v3, v4}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v1

    aput v1, v0, v5

    .line 2264
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->sounds:[I

    iget-object v1, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->mSoundPool:Landroid/media/SoundPool;

    iget-object v2, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->mContext:Landroid/content/Context;

    iget v3, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->mRUpId:I

    invoke-virtual {v1, v2, v3, v4}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v1

    aput v1, v0, v4

    .line 2268
    :cond_0
    iput-boolean v5, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->isUnlocked:Z

    .line 2272
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->mTouchedView:Landroid/view/View;

    .line 2274
    return-void
.end method

.method public onSurfaceChanged(Ljavax/microedition/khronos/opengles/GL10;II)V
    .locals 17
    .parameter "gl"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 834
    move/from16 v0, p2

    move/from16 v1, p3

    if-le v0, v1, :cond_1

    .line 835
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->intensityForLandscape:F

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->intensityForRipple:F

    .line 836
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->windowWidth:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->windowHeight:I

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->mScreenWidth:I

    .line 837
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->windowWidth:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->windowHeight:I

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->mScreenHeight:I

    .line 839
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->mScreenHeight:I

    const/16 v3, 0x320

    if-ne v2, v3, :cond_0

    .line 841
    invoke-static/range {p2 .. p3}, Ljava/lang/Math;->max(II)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->mScreenWidth:I

    .line 843
    invoke-static/range {p2 .. p3}, Ljava/lang/Math;->min(II)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->mScreenHeight:I

    .line 863
    :cond_0
    :goto_0
    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->mScreenWidth:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->mScreenHeight:I

    invoke-static {v2, v3, v4, v5}, Landroid/opengl/GLES20;->glViewport(IIII)V

    .line 864
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->mScreenWidth:I

    int-to-float v2, v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->mScreenHeight:I

    int-to-float v3, v3

    div-float v13, v2, v3

    .line 866
    .local v13, ratio:F
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->view:[F

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/high16 v6, 0x3f80

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/high16 v11, 0x3f80

    const/4 v12, 0x0

    invoke-static/range {v2 .. v12}, Landroid/opengl/Matrix;->setLookAtM([FIFFFFFFFFF)V

    .line 867
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->proj:[F

    const/high16 v4, 0x4234

    const v6, 0x3dcccccd

    const/high16 v7, 0x43fa

    move-object/from16 v2, p0

    move v5, v13

    invoke-direct/range {v2 .. v7}, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->perspectiveM([FFFFF)V

    .line 869
    const/4 v14, 0x0

    .line 870
    .local v14, translateX:F
    const/4 v15, 0x0

    .line 871
    .local v15, translateY:F
    const/16 v16, 0x0

    .line 873
    .local v16, translateZ:F
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->mScreenWidth:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->mScreenHeight:I

    if-le v2, v3, :cond_2

    .line 874
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->translateXForLandscape:F

    .line 875
    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->translateYForLandscape:F

    .line 876
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->translateZForLandscape:F

    move/from16 v16, v0

    .line 883
    :goto_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->world:[F

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 884
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->wvp:[F

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->view:[F

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->world:[F

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    .line 885
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->wvp:[F

    const/4 v3, 0x0

    move/from16 v0, v16

    invoke-static {v2, v3, v14, v15, v0}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    .line 886
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->wvp:[F

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->proj:[F

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->wvp:[F

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    .line 887
    return-void

    .line 848
    .end local v13           #ratio:F
    .end local v14           #translateX:F
    .end local v15           #translateY:F
    .end local v16           #translateZ:F
    :cond_1
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->intensityForPortrait:F

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->intensityForRipple:F

    .line 850
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->windowWidth:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->windowHeight:I

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->mScreenWidth:I

    .line 852
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->windowWidth:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->windowHeight:I

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->mScreenHeight:I

    .line 854
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->mScreenWidth:I

    const/16 v3, 0x320

    if-ne v2, v3, :cond_0

    .line 856
    invoke-static/range {p2 .. p3}, Ljava/lang/Math;->min(II)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->mScreenWidth:I

    .line 858
    invoke-static/range {p2 .. p3}, Ljava/lang/Math;->max(II)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->mScreenHeight:I

    goto/16 :goto_0

    .line 878
    .restart local v13       #ratio:F
    .restart local v14       #translateX:F
    .restart local v15       #translateY:F
    .restart local v16       #translateZ:F
    :cond_2
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->translateXForPortrait:F

    .line 879
    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->translateYForPortrait:F

    .line 880
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->translateZForPortrait:F

    move/from16 v16, v0

    goto/16 :goto_1
.end method

.method public onSurfaceCreated(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V
    .locals 0
    .parameter "gl"
    .parameter "config"

    .prologue
    .line 824
    invoke-direct {p0}, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->setBackground()V

    .line 825
    invoke-direct {p0}, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->createBuffers()V

    .line 826
    invoke-direct {p0}, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->loadShaderProp()V

    .line 827
    invoke-direct {p0}, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->makeBuffers()V

    .line 828
    return-void
.end method

.method public setReflection(F)V
    .locals 0
    .parameter "reflec"

    .prologue
    .line 1915
    iput p1, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->reflectionRatio:F

    .line 1917
    return-void
.end method

.method public setRefraction(F)V
    .locals 1
    .parameter "refrac"

    .prologue
    .line 1907
    const/high16 v0, 0x3f80

    add-float/2addr v0, p1

    iput v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->refractiveIndex:F

    .line 1909
    return-void
.end method

.method public setSoundNum(I)V
    .locals 0
    .parameter "value"

    .prologue
    .line 1177
    iput p1, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->soundNum:I

    .line 1178
    return-void
.end method

.method public setSoundRID(II)V
    .locals 5
    .parameter "RDownId"
    .parameter "RUpId"

    .prologue
    const/4 v4, 0x1

    .line 2057
    iput p1, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->mRDownId:I

    .line 2059
    iput p2, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->mRUpId:I

    .line 2061
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->sounds:[I

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->mSoundPool:Landroid/media/SoundPool;

    iget-object v3, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v3, p1, v4}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v2

    aput v2, v0, v1

    .line 2063
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->sounds:[I

    iget-object v1, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->mSoundPool:Landroid/media/SoundPool;

    iget-object v2, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2, p2, v4}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v1

    aput v1, v0, v4

    .line 2065
    return-void
.end method

.method public setSoundTime(I)V
    .locals 0
    .parameter "value"

    .prologue
    .line 1181
    iput p1, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->soundTime:I

    .line 1182
    return-void
.end method

.method public setStartLocation(I)V
    .locals 0
    .parameter "startLocation"

    .prologue
    .line 2071
    iput p1, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->startLocation:I

    .line 2073
    return-void
.end method

.method public setTexture(Landroid/graphics/Bitmap;)V
    .locals 1
    .parameter "pBitmap"

    .prologue
    .line 2033
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->bitmapOriginal:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 2035
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->bitmapOriginal:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 2037
    :cond_0
    iput-object p1, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->bitmapOriginal:Landroid/graphics/Bitmap;

    .line 2039
    return-void
.end method

.method public setWaterTexture(Landroid/graphics/Bitmap;)V
    .locals 1
    .parameter "pBitmap"

    .prologue
    .line 2045
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->bitmapWater:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 2047
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->bitmapWater:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 2049
    :cond_0
    iput-object p1, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->bitmapWater:Landroid/graphics/Bitmap;

    .line 2051
    return-void
.end method

.method public startLongPressCheck(Landroid/view/View;FFJF)V
    .locals 1
    .parameter "view"
    .parameter "mouseX"
    .parameter "mouseY"
    .parameter "delay"
    .parameter "pIntensity"

    .prologue
    .line 1117
    iput p2, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->tmx:F

    .line 1118
    iput p3, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->tmy:F

    .line 1120
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->mLongPressRunnable:Ljava/lang/Runnable;

    if-nez v0, :cond_0

    .line 1121
    new-instance v0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer$1;

    invoke-direct {v0, p0, p6}, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer$1;-><init>(Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;F)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->mLongPressRunnable:Ljava/lang/Runnable;

    .line 1129
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->mLongPressRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, v0, p4, p5}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1130
    return-void
.end method

.method public startLongPressCheck2(Landroid/view/View;FFJF)V
    .locals 1
    .parameter "view"
    .parameter "mouseX"
    .parameter "mouseY"
    .parameter "delay"
    .parameter "pIntensity"

    .prologue
    .line 1133
    iput p2, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->tmx:F

    .line 1134
    iput p3, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->tmy:F

    .line 1136
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->mLongPressRunnable:Ljava/lang/Runnable;

    if-nez v0, :cond_0

    .line 1137
    new-instance v0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer$2;

    invoke-direct {v0, p0, p6, p4, p5}, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer$2;-><init>(Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;FJ)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->mLongPressRunnable:Ljava/lang/Runnable;

    .line 1146
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->mLongPressRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, v0, p4, p5}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1147
    return-void
.end method

.method public stopLongPressCheck(Landroid/view/View;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 1150
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->mLongPressRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1151
    return-void
.end method

.method public tikerRippleForClose()V
    .locals 4

    .prologue
    const/high16 v3, 0x4000

    .line 2115
    iget v1, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->mScreenWidth:I

    iget v2, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->mScreenHeight:I

    if-le v1, v2, :cond_0

    .line 2117
    iget v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->tickerCloseLandscapeY:F

    .line 2119
    .local v0, tickerStartY:F
    iget v1, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->mScreenHeight:I

    int-to-float v1, v1

    sub-float/2addr v1, v0

    iget v2, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->mScreenHeight:I

    int-to-float v2, v2

    div-float/2addr v2, v3

    sub-float v0, v1, v2

    .line 2121
    neg-float v1, v0

    iget v2, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->YRatioForLandscape:F

    iget v3, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->mScreenHeight:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    mul-float v0, v1, v2

    .line 2133
    :goto_0
    iget v1, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->intensityForPortraitTicker:F

    invoke-direct {p0, v0, v1}, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->tickAnimation(FF)V

    .line 2135
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->moveCount:I

    .line 2137
    return-void

    .line 2125
    .end local v0           #tickerStartY:F
    :cond_0
    iget v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->tickerClosePortraitY:F

    .line 2127
    .restart local v0       #tickerStartY:F
    iget v1, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->mScreenHeight:I

    int-to-float v1, v1

    sub-float/2addr v1, v0

    iget v2, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->mScreenHeight:I

    int-to-float v2, v2

    div-float/2addr v2, v3

    sub-float v0, v1, v2

    .line 2129
    neg-float v1, v0

    iget v2, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->YRatioForPortrait:F

    iget v3, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->mScreenHeight:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    mul-float v0, v1, v2

    goto :goto_0
.end method

.method public tikerRippleForMove(F)V
    .locals 4
    .parameter "startY"

    .prologue
    const/high16 v3, 0x4000

    .line 2143
    iget v1, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->moveCount:I

    iget v2, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->tickerMoveCriteria:I

    if-eq v1, v2, :cond_0

    .line 2145
    iget v1, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->moveCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->moveCount:I

    .line 2183
    :goto_0
    return-void

    .line 2151
    :cond_0
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->moveCount:I

    .line 2153
    const/4 v0, 0x0

    .line 2155
    .local v0, tickerStartY:F
    iget v1, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->mScreenWidth:I

    iget v2, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->mScreenHeight:I

    if-le v1, v2, :cond_1

    .line 2157
    iget v1, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->tickerAjustYForPortrait:F

    add-float/2addr p1, v1

    .line 2167
    :goto_1
    iget v1, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->mScreenWidth:I

    iget v2, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->mScreenHeight:I

    if-le v1, v2, :cond_2

    .line 2169
    iget v1, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->mScreenHeight:I

    int-to-float v1, v1

    sub-float/2addr v1, p1

    iget v2, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->mScreenHeight:I

    int-to-float v2, v2

    div-float/2addr v2, v3

    sub-float v0, v1, v2

    .line 2171
    neg-float v1, v0

    iget v2, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->YRatioForLandscape:F

    iget v3, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->mScreenHeight:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    mul-float v0, v1, v2

    .line 2181
    :goto_2
    iget v1, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->intensityForPortraitTicker:F

    invoke-direct {p0, v0, v1}, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->tickAnimation(FF)V

    goto :goto_0

    .line 2161
    :cond_1
    iget v1, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->tickerAjustYForLandscape:F

    add-float/2addr p1, v1

    goto :goto_1

    .line 2175
    :cond_2
    iget v1, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->mScreenHeight:I

    int-to-float v1, v1

    sub-float/2addr v1, p1

    iget v2, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->mScreenHeight:I

    int-to-float v2, v2

    div-float/2addr v2, v3

    sub-float v0, v1, v2

    .line 2177
    neg-float v1, v0

    iget v2, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->YRatioForPortrait:F

    iget v3, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->mScreenHeight:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    mul-float v0, v1, v2

    goto :goto_2
.end method

.method public tikerRippleForOpen()V
    .locals 4

    .prologue
    const/high16 v3, 0x4000

    .line 2082
    iget v1, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->mScreenWidth:I

    iget v2, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->mScreenHeight:I

    if-le v1, v2, :cond_0

    .line 2084
    iget v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->tickerOpenLandscapeY:F

    .line 2086
    .local v0, tickerStartY:F
    iget v1, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->mScreenHeight:I

    int-to-float v1, v1

    sub-float/2addr v1, v0

    iget v2, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->mScreenHeight:I

    int-to-float v2, v2

    div-float/2addr v2, v3

    sub-float v0, v1, v2

    .line 2088
    neg-float v1, v0

    iget v2, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->YRatioForLandscape:F

    iget v3, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->mScreenHeight:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    mul-float v0, v1, v2

    .line 2102
    :goto_0
    iget v1, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->intensityForPortraitTicker:F

    invoke-direct {p0, v0, v1}, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->tickAnimation(FF)V

    .line 2104
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->moveCount:I

    .line 2106
    return-void

    .line 2092
    .end local v0           #tickerStartY:F
    :cond_0
    iget v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->tickerOpenPortraitY:F

    .line 2094
    .restart local v0       #tickerStartY:F
    iget v1, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->mScreenHeight:I

    int-to-float v1, v1

    sub-float/2addr v1, v0

    iget v2, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->mScreenHeight:I

    int-to-float v2, v2

    div-float/2addr v2, v3

    sub-float v0, v1, v2

    .line 2096
    neg-float v1, v0

    iget v2, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->YRatioForPortrait:F

    iget v3, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->mScreenHeight:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    mul-float v0, v1, v2

    goto :goto_0
.end method
