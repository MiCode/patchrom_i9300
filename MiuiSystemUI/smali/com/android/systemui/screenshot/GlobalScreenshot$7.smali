.class Lcom/android/systemui/screenshot/GlobalScreenshot$7;
.super Ljava/lang/Object;
.source "GlobalScreenshot.java"

# interfaces
.implements Landroid/view/animation/Interpolator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/screenshot/GlobalScreenshot;->createScreenshotDropInAnimation()Landroid/animation/ValueAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/screenshot/GlobalScreenshot;


# direct methods
.method constructor <init>(Lcom/android/systemui/screenshot/GlobalScreenshot;)V
    .locals 0
    .parameter

    .prologue
    .line 704
    iput-object p1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot$7;->this$0:Lcom/android/systemui/screenshot/GlobalScreenshot;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getInterpolation(F)F
    .locals 2
    .parameter "x"

    .prologue
    .line 708
    const v0, 0x3e9aca6b

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    .line 709
    const/4 v0, 0x0

    .line 711
    :goto_0
    return v0

    :cond_0
    const v0, 0x3f1aca6b

    sub-float v0, p1, v0

    const v1, 0x3eca6b2a

    div-float/2addr v0, v1

    goto :goto_0
.end method
