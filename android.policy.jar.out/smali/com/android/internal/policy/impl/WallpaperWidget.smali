.class Lcom/android/internal/policy/impl/WallpaperWidget;
.super Landroid/widget/FrameLayout;
.source "WallpaperWidget.java"


# instance fields
.field private final DBG:Z

.field private final LANDSCAPE_WALLPAPER_IMAGE_PATH:Ljava/lang/String;

.field private final PORTRAIT_WALLPAPER_IMAGE_PATH:Ljava/lang/String;

.field private final TAG:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mCreationOrientation:I

.field private mIsLiveWallpaper:Z

.field private mLockScreenWallpaperImage:Landroid/widget/ImageView;

.field private mWallpapaerPath:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/res/Configuration;)V
    .locals 4
    .parameter "context"
    .parameter "configuration"

    .prologue
    const/4 v3, -0x1

    const/4 v0, 0x1

    .line 38
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 22
    const-string v1, "WallpaperWidget"

    iput-object v1, p0, Lcom/android/internal/policy/impl/WallpaperWidget;->TAG:Ljava/lang/String;

    .line 23
    iput-boolean v0, p0, Lcom/android/internal/policy/impl/WallpaperWidget;->DBG:Z

    .line 26
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/internal/policy/impl/WallpaperWidget;->mLockScreenWallpaperImage:Landroid/widget/ImageView;

    .line 29
    const-string v1, "/data/system/theme/lock_wallpaper"

    iput-object v1, p0, Lcom/android/internal/policy/impl/WallpaperWidget;->PORTRAIT_WALLPAPER_IMAGE_PATH:Ljava/lang/String;

    .line 30
    const-string v1, "/data/data/com.sec.android.gallery3d/lockscreen_wallpaper_land.jpg"

    iput-object v1, p0, Lcom/android/internal/policy/impl/WallpaperWidget;->LANDSCAPE_WALLPAPER_IMAGE_PATH:Ljava/lang/String;

    .line 40
    iput-object p1, p0, Lcom/android/internal/policy/impl/WallpaperWidget;->mContext:Landroid/content/Context;

    .line 41
    iget v1, p2, Landroid/content/res/Configuration;->orientation:I

    iput v1, p0, Lcom/android/internal/policy/impl/WallpaperWidget;->mCreationOrientation:I

    .line 44
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "lockscreen_wallpaper"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v0, :cond_0

    const/4 v0, 0x0

    :cond_0
    iput-boolean v0, p0, Lcom/android/internal/policy/impl/WallpaperWidget;->mIsLiveWallpaper:Z

    .line 45
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/WallpaperWidget;->mIsLiveWallpaper:Z

    if-eqz v0, :cond_1

    .line 56
    :goto_0
    return-void

    .line 49
    :cond_1
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/WallpaperWidget;->mLockScreenWallpaperImage:Landroid/widget/ImageView;

    .line 50
    iget-object v0, p0, Lcom/android/internal/policy/impl/WallpaperWidget;->mLockScreenWallpaperImage:Landroid/widget/ImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 52
    iget-object v0, p0, Lcom/android/internal/policy/impl/WallpaperWidget;->mLockScreenWallpaperImage:Landroid/widget/ImageView;

    invoke-virtual {p0, v0, v3, v3}, Lcom/android/internal/policy/impl/WallpaperWidget;->addView(Landroid/view/View;II)V

    .line 55
    invoke-direct {p0}, Lcom/android/internal/policy/impl/WallpaperWidget;->setLockScreenWallpaper()V

    goto :goto_0
.end method

.method private setDefaultWallpaper()Landroid/graphics/drawable/BitmapDrawable;
    .locals 6

    .prologue
    const v5, 0x10803ff

    .line 98
    new-instance v1, Ljava/io/File;

    const-string v4, "//system/wallpaper/lockscreen_default_wallpaper.jpg"

    invoke-direct {v1, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 99
    .local v1, file:Ljava/io/File;
    const/4 v2, 0x0

    .line 100
    .local v2, is:Ljava/io/InputStream;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 102
    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    .end local v2           #is:Ljava/io/InputStream;
    invoke-direct {v2, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 109
    .restart local v2       #is:Ljava/io/InputStream;
    :goto_0
    new-instance v3, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/WallpaperWidget;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-direct {v3, v4, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Ljava/io/InputStream;)V

    .line 112
    .local v3, tempBitmapDrawable:Landroid/graphics/drawable/BitmapDrawable;
    :try_start_1
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 116
    :goto_1
    return-object v3

    .line 103
    .end local v2           #is:Ljava/io/InputStream;
    .end local v3           #tempBitmapDrawable:Landroid/graphics/drawable/BitmapDrawable;
    :catch_0
    move-exception v0

    .line 104
    .local v0, e:Ljava/io/IOException;
    iget-object v4, p0, Lcom/android/internal/policy/impl/WallpaperWidget;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v2

    .line 105
    .restart local v2       #is:Ljava/io/InputStream;
    goto :goto_0

    .line 107
    .end local v0           #e:Ljava/io/IOException;
    :cond_0
    iget-object v4, p0, Lcom/android/internal/policy/impl/WallpaperWidget;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v2

    goto :goto_0

    .line 113
    .restart local v3       #tempBitmapDrawable:Landroid/graphics/drawable/BitmapDrawable;
    :catch_1
    move-exception v0

    .line 114
    .restart local v0       #e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1
.end method

.method private setLockScreenWallpaper()V
    .locals 7

    .prologue
    .line 66
    iget v3, p0, Lcom/android/internal/policy/impl/WallpaperWidget;->mCreationOrientation:I

    const/4 v4, 0x2

    if-eq v3, v4, :cond_0

    .line 67
    const-string v3, "/data/system/theme/lock_wallpaper"

    iput-object v3, p0, Lcom/android/internal/policy/impl/WallpaperWidget;->mWallpapaerPath:Ljava/lang/String;

    .line 71
    :goto_0
    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/android/internal/policy/impl/WallpaperWidget;->mWallpapaerPath:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 73
    .local v2, file:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 75
    :try_start_0
    iget-object v3, p0, Lcom/android/internal/policy/impl/WallpaperWidget;->mLockScreenWallpaperImage:Landroid/widget/ImageView;

    new-instance v4, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/WallpaperWidget;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/policy/impl/WallpaperWidget;->mWallpapaerPath:Ljava/lang/String;

    invoke-direct {v4, v5, v6}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 94
    :goto_1
    return-void

    .line 69
    .end local v2           #file:Ljava/io/File;
    :cond_0
    const-string v3, "/data/data/com.sec.android.gallery3d/lockscreen_wallpaper_land.jpg"

    iput-object v3, p0, Lcom/android/internal/policy/impl/WallpaperWidget;->mWallpapaerPath:Ljava/lang/String;

    goto :goto_0

    .line 76
    .restart local v2       #file:Ljava/io/File;
    :catch_0
    move-exception v1

    .line 77
    .local v1, ex:Ljava/lang/Exception;
    iget-object v3, p0, Lcom/android/internal/policy/impl/WallpaperWidget;->mLockScreenWallpaperImage:Landroid/widget/ImageView;

    invoke-direct {p0}, Lcom/android/internal/policy/impl/WallpaperWidget;->setDefaultWallpaper()Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 81
    .end local v1           #ex:Ljava/lang/Exception;
    :cond_1
    iget-object v3, p0, Lcom/android/internal/policy/impl/WallpaperWidget;->mWallpapaerPath:Ljava/lang/String;

    const-string v4, "/data/system/theme/lock_wallpaper"

    if-ne v3, v4, :cond_2

    const-string v3, "/data/data/com.sec.android.gallery3d/lockscreen_wallpaper_land.jpg"

    :goto_2
    iput-object v3, p0, Lcom/android/internal/policy/impl/WallpaperWidget;->mWallpapaerPath:Ljava/lang/String;

    .line 82
    new-instance v0, Ljava/io/File;

    iget-object v3, p0, Lcom/android/internal/policy/impl/WallpaperWidget;->mWallpapaerPath:Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 83
    .local v0, alternateFile:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 85
    :try_start_1
    iget-object v3, p0, Lcom/android/internal/policy/impl/WallpaperWidget;->mLockScreenWallpaperImage:Landroid/widget/ImageView;

    new-instance v4, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/WallpaperWidget;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/policy/impl/WallpaperWidget;->mWallpapaerPath:Ljava/lang/String;

    invoke-direct {v4, v5, v6}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 86
    :catch_1
    move-exception v1

    .line 87
    .restart local v1       #ex:Ljava/lang/Exception;
    iget-object v3, p0, Lcom/android/internal/policy/impl/WallpaperWidget;->mLockScreenWallpaperImage:Landroid/widget/ImageView;

    invoke-direct {p0}, Lcom/android/internal/policy/impl/WallpaperWidget;->setDefaultWallpaper()Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 81
    .end local v0           #alternateFile:Ljava/io/File;
    .end local v1           #ex:Ljava/lang/Exception;
    :cond_2
    const-string v3, "/data/system/theme/lock_wallpaper"

    goto :goto_2

    .line 91
    .restart local v0       #alternateFile:Ljava/io/File;
    :cond_3
    iget-object v3, p0, Lcom/android/internal/policy/impl/WallpaperWidget;->mLockScreenWallpaperImage:Landroid/widget/ImageView;

    invoke-direct {p0}, Lcom/android/internal/policy/impl/WallpaperWidget;->setDefaultWallpaper()Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1
.end method


# virtual methods
.method public cleanUp()V
    .locals 2

    .prologue
    .line 61
    const-string v0, "WallpaperWidget"

    const-string v1, "cleanUp()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    return-void
.end method
