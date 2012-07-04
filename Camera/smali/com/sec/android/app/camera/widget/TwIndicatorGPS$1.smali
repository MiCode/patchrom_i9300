.class Lcom/sec/android/app/camera/widget/TwIndicatorGPS$1;
.super Ljava/lang/Object;
.source "TwIndicatorGPS.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/camera/widget/TwIndicatorGPS;->setGPS(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/widget/TwIndicatorGPS;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/widget/TwIndicatorGPS;)V
    .locals 0
    .parameter

    .prologue
    .line 103
    iput-object p1, p0, Lcom/sec/android/app/camera/widget/TwIndicatorGPS$1;->this$0:Lcom/sec/android/app/camera/widget/TwIndicatorGPS;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 105
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/TwIndicatorGPS$1;->this$0:Lcom/sec/android/app/camera/widget/TwIndicatorGPS;

    iget-object v1, p0, Lcom/sec/android/app/camera/widget/TwIndicatorGPS$1;->this$0:Lcom/sec/android/app/camera/widget/TwIndicatorGPS;

    iget-object v1, v1, Lcom/sec/android/app/camera/widget/TwIndicatorGPS;->mAni:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/TwIndicatorGPS;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 106
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/TwIndicatorGPS$1;->this$0:Lcom/sec/android/app/camera/widget/TwIndicatorGPS;

    iget-object v0, v0, Lcom/sec/android/app/camera/widget/TwIndicatorGPS;->mAni:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 107
    return-void
.end method
