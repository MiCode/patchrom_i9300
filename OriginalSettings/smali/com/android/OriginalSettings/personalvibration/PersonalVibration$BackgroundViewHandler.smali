.class Lcom/android/OriginalSettings/personalvibration/PersonalVibration$BackgroundViewHandler;
.super Landroid/os/Handler;
.source "PersonalVibration.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/OriginalSettings/personalvibration/PersonalVibration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BackgroundViewHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/OriginalSettings/personalvibration/PersonalVibration;


# direct methods
.method private constructor <init>(Lcom/android/OriginalSettings/personalvibration/PersonalVibration;)V
    .locals 0
    .parameter

    .prologue
    .line 177
    iput-object p1, p0, Lcom/android/OriginalSettings/personalvibration/PersonalVibration$BackgroundViewHandler;->this$0:Lcom/android/OriginalSettings/personalvibration/PersonalVibration;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/OriginalSettings/personalvibration/PersonalVibration;Lcom/android/OriginalSettings/personalvibration/PersonalVibration$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 177
    invoke-direct {p0, p1}, Lcom/android/OriginalSettings/personalvibration/PersonalVibration$BackgroundViewHandler;-><init>(Lcom/android/OriginalSettings/personalvibration/PersonalVibration;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .parameter "msg"

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x0

    .line 184
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 213
    :goto_0
    return-void

    .line 187
    :pswitch_0
    const-string v0, "PersonalVibration"

    const-string v1, "handleMessage : 111"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    iget-object v0, p0, Lcom/android/OriginalSettings/personalvibration/PersonalVibration$BackgroundViewHandler;->this$0:Lcom/android/OriginalSettings/personalvibration/PersonalVibration;

    iget-object v0, v0, Lcom/android/OriginalSettings/personalvibration/PersonalVibration;->centerText:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 189
    iget-object v0, p0, Lcom/android/OriginalSettings/personalvibration/PersonalVibration$BackgroundViewHandler;->this$0:Lcom/android/OriginalSettings/personalvibration/PersonalVibration;

    iget-object v0, v0, Lcom/android/OriginalSettings/personalvibration/PersonalVibration;->centerButton:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 190
    iget-object v0, p0, Lcom/android/OriginalSettings/personalvibration/PersonalVibration$BackgroundViewHandler;->this$0:Lcom/android/OriginalSettings/personalvibration/PersonalVibration;

    iget-object v0, v0, Lcom/android/OriginalSettings/personalvibration/PersonalVibration;->buttonLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 191
    iget-object v0, p0, Lcom/android/OriginalSettings/personalvibration/PersonalVibration$BackgroundViewHandler;->this$0:Lcom/android/OriginalSettings/personalvibration/PersonalVibration;

    iget-object v0, v0, Lcom/android/OriginalSettings/personalvibration/PersonalVibration;->stopButtonLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 192
    iget-object v0, p0, Lcom/android/OriginalSettings/personalvibration/PersonalVibration$BackgroundViewHandler;->this$0:Lcom/android/OriginalSettings/personalvibration/PersonalVibration;

    iget-object v0, v0, Lcom/android/OriginalSettings/personalvibration/PersonalVibration;->stopButton:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0

    .line 197
    :pswitch_1
    const-string v0, "PersonalVibration"

    const-string v1, "handleMessage : 112"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    iget-object v0, p0, Lcom/android/OriginalSettings/personalvibration/PersonalVibration$BackgroundViewHandler;->this$0:Lcom/android/OriginalSettings/personalvibration/PersonalVibration;

    iget-object v0, v0, Lcom/android/OriginalSettings/personalvibration/PersonalVibration;->centerButton:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 199
    iget-object v0, p0, Lcom/android/OriginalSettings/personalvibration/PersonalVibration$BackgroundViewHandler;->this$0:Lcom/android/OriginalSettings/personalvibration/PersonalVibration;

    iget-object v0, v0, Lcom/android/OriginalSettings/personalvibration/PersonalVibration;->centerButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/OriginalSettings/personalvibration/PersonalVibration$BackgroundViewHandler;->this$0:Lcom/android/OriginalSettings/personalvibration/PersonalVibration;

    invoke-virtual {v1}, Lcom/android/OriginalSettings/personalvibration/PersonalVibration;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0201d1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 201
    iget-object v0, p0, Lcom/android/OriginalSettings/personalvibration/PersonalVibration$BackgroundViewHandler;->this$0:Lcom/android/OriginalSettings/personalvibration/PersonalVibration;

    iget-object v0, v0, Lcom/android/OriginalSettings/personalvibration/PersonalVibration;->leftButton:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 203
    iget-object v0, p0, Lcom/android/OriginalSettings/personalvibration/PersonalVibration$BackgroundViewHandler;->this$0:Lcom/android/OriginalSettings/personalvibration/PersonalVibration;

    iget-object v0, v0, Lcom/android/OriginalSettings/personalvibration/PersonalVibration;->buttonLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 204
    iget-object v0, p0, Lcom/android/OriginalSettings/personalvibration/PersonalVibration$BackgroundViewHandler;->this$0:Lcom/android/OriginalSettings/personalvibration/PersonalVibration;

    iget-object v0, v0, Lcom/android/OriginalSettings/personalvibration/PersonalVibration;->stopButtonLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    .line 209
    :pswitch_2
    const-string v0, "PersonalVibration"

    const-string v1, "handleMessage : 112"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    iget-object v0, p0, Lcom/android/OriginalSettings/personalvibration/PersonalVibration$BackgroundViewHandler;->this$0:Lcom/android/OriginalSettings/personalvibration/PersonalVibration;

    iget-object v0, v0, Lcom/android/OriginalSettings/personalvibration/PersonalVibration;->centerButton:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0

    .line 184
    :pswitch_data_0
    .packed-switch 0x6f
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
