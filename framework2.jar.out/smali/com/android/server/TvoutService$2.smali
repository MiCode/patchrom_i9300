.class Lcom/android/server/TvoutService$2;
.super Landroid/view/OrientationEventListener;
.source "TvoutService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/TvoutService;->setOrientationListener(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/TvoutService;


# direct methods
.method constructor <init>(Lcom/android/server/TvoutService;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 195
    iput-object p1, p0, Lcom/android/server/TvoutService$2;->this$0:Lcom/android/server/TvoutService;

    invoke-direct {p0, p2}, Landroid/view/OrientationEventListener;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public onOrientationChanged(I)V
    .locals 7
    .parameter "orientation"

    .prologue
    const-wide/16 v5, 0x2

    const-wide/16 v2, 0x0

    const/4 v4, 0x1

    .line 198
    const/4 v1, -0x1

    if-ne p1, v1, :cond_1

    .line 257
    :cond_0
    :goto_0
    return-void

    .line 205
    :cond_1
    iget-object v1, p0, Lcom/android/server/TvoutService$2;->this$0:Lcom/android/server/TvoutService;

    #getter for: Lcom/android/server/TvoutService;->CAMERA_POSITION:I
    invoke-static {v1}, Lcom/android/server/TvoutService;->access$100(Lcom/android/server/TvoutService;)I

    move-result v1

    if-nez v1, :cond_5

    .line 206
    const/16 v0, 0x5a

    .line 210
    .local v0, newOrientation:I
    :goto_1
    rem-int/lit16 p1, p1, 0x168

    .line 211
    const/16 v1, 0x2d

    if-ge p1, v1, :cond_7

    .line 214
    iget-object v1, p0, Lcom/android/server/TvoutService$2;->this$0:Lcom/android/server/TvoutService;

    #getter for: Lcom/android/server/TvoutService;->CAMERA_POSITION:I
    invoke-static {v1}, Lcom/android/server/TvoutService;->access$100(Lcom/android/server/TvoutService;)I

    move-result v1

    if-nez v1, :cond_6

    .line 215
    const/16 v0, 0x5a

    .line 216
    iget-object v1, p0, Lcom/android/server/TvoutService$2;->this$0:Lcom/android/server/TvoutService;

    #setter for: Lcom/android/server/TvoutService;->sTransform:J
    invoke-static {v1, v2, v3}, Lcom/android/server/TvoutService;->access$202(Lcom/android/server/TvoutService;J)J

    .line 251
    :cond_2
    :goto_2
    const-string v1, "TvoutService_Java"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "orientation = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "newOrientation = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    iget-object v1, p0, Lcom/android/server/TvoutService$2;->this$0:Lcom/android/server/TvoutService;

    #getter for: Lcom/android/server/TvoutService;->CAMERA_ON:Z
    invoke-static {v1}, Lcom/android/server/TvoutService;->access$300(Lcom/android/server/TvoutService;)Z

    move-result v1

    if-ne v1, v4, :cond_3

    iget-object v1, p0, Lcom/android/server/TvoutService$2;->this$0:Lcom/android/server/TvoutService;

    #getter for: Lcom/android/server/TvoutService;->HDMI_CONNECT:Z
    invoke-static {v1}, Lcom/android/server/TvoutService;->access$400(Lcom/android/server/TvoutService;)Z

    move-result v1

    if-eq v1, v4, :cond_4

    :cond_3
    iget-object v1, p0, Lcom/android/server/TvoutService$2;->this$0:Lcom/android/server/TvoutService;

    #getter for: Lcom/android/server/TvoutService;->CAMERA_ON:Z
    invoke-static {v1}, Lcom/android/server/TvoutService;->access$300(Lcom/android/server/TvoutService;)Z

    move-result v1

    if-ne v1, v4, :cond_0

    iget-object v1, p0, Lcom/android/server/TvoutService$2;->this$0:Lcom/android/server/TvoutService;

    #getter for: Lcom/android/server/TvoutService;->ALLSHARE_CAST_CONNECT:Z
    invoke-static {v1}, Lcom/android/server/TvoutService;->access$500(Lcom/android/server/TvoutService;)Z

    move-result v1

    if-ne v1, v4, :cond_0

    .line 254
    :cond_4
    const-string v1, "persist.sys.camera.transform"

    iget-object v2, p0, Lcom/android/server/TvoutService$2;->this$0:Lcom/android/server/TvoutService;

    #getter for: Lcom/android/server/TvoutService;->sTransform:J
    invoke-static {v2}, Lcom/android/server/TvoutService;->access$200(Lcom/android/server/TvoutService;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 255
    iget-object v1, p0, Lcom/android/server/TvoutService$2;->this$0:Lcom/android/server/TvoutService;

    invoke-virtual {v1, v0}, Lcom/android/server/TvoutService;->TvoutSetVideoRotation(I)Z

    goto :goto_0

    .line 208
    .end local v0           #newOrientation:I
    :cond_5
    const/16 v0, 0x10e

    .restart local v0       #newOrientation:I
    goto :goto_1

    .line 219
    :cond_6
    const/16 v0, 0x10e

    .line 220
    iget-object v1, p0, Lcom/android/server/TvoutService$2;->this$0:Lcom/android/server/TvoutService;

    #setter for: Lcom/android/server/TvoutService;->sTransform:J
    invoke-static {v1, v5, v6}, Lcom/android/server/TvoutService;->access$202(Lcom/android/server/TvoutService;J)J

    goto :goto_2

    .line 223
    :cond_7
    const/16 v1, 0x87

    if-ge p1, v1, :cond_9

    .line 225
    iget-object v1, p0, Lcom/android/server/TvoutService$2;->this$0:Lcom/android/server/TvoutService;

    const-wide/16 v2, 0x1

    #setter for: Lcom/android/server/TvoutService;->sTransform:J
    invoke-static {v1, v2, v3}, Lcom/android/server/TvoutService;->access$202(Lcom/android/server/TvoutService;J)J

    .line 226
    iget-object v1, p0, Lcom/android/server/TvoutService$2;->this$0:Lcom/android/server/TvoutService;

    #getter for: Lcom/android/server/TvoutService;->CAMERA_POSITION:I
    invoke-static {v1}, Lcom/android/server/TvoutService;->access$100(Lcom/android/server/TvoutService;)I

    move-result v1

    if-nez v1, :cond_8

    .line 227
    const/16 v0, 0xb4

    goto :goto_2

    .line 229
    :cond_8
    const/16 v0, 0xb4

    goto :goto_2

    .line 231
    :cond_9
    const/16 v1, 0xe1

    if-ge p1, v1, :cond_b

    .line 234
    iget-object v1, p0, Lcom/android/server/TvoutService$2;->this$0:Lcom/android/server/TvoutService;

    #getter for: Lcom/android/server/TvoutService;->CAMERA_POSITION:I
    invoke-static {v1}, Lcom/android/server/TvoutService;->access$100(Lcom/android/server/TvoutService;)I

    move-result v1

    if-nez v1, :cond_a

    .line 235
    iget-object v1, p0, Lcom/android/server/TvoutService$2;->this$0:Lcom/android/server/TvoutService;

    #setter for: Lcom/android/server/TvoutService;->sTransform:J
    invoke-static {v1, v5, v6}, Lcom/android/server/TvoutService;->access$202(Lcom/android/server/TvoutService;J)J

    .line 236
    const/16 v0, 0x10e

    goto/16 :goto_2

    .line 239
    :cond_a
    const/16 v0, 0x5a

    .line 240
    iget-object v1, p0, Lcom/android/server/TvoutService$2;->this$0:Lcom/android/server/TvoutService;

    #setter for: Lcom/android/server/TvoutService;->sTransform:J
    invoke-static {v1, v2, v3}, Lcom/android/server/TvoutService;->access$202(Lcom/android/server/TvoutService;J)J

    goto/16 :goto_2

    .line 243
    :cond_b
    const/16 v1, 0x13b

    if-ge p1, v1, :cond_2

    .line 245
    iget-object v1, p0, Lcom/android/server/TvoutService$2;->this$0:Lcom/android/server/TvoutService;

    const-wide/16 v2, 0x3

    #setter for: Lcom/android/server/TvoutService;->sTransform:J
    invoke-static {v1, v2, v3}, Lcom/android/server/TvoutService;->access$202(Lcom/android/server/TvoutService;J)J

    .line 246
    iget-object v1, p0, Lcom/android/server/TvoutService$2;->this$0:Lcom/android/server/TvoutService;

    #getter for: Lcom/android/server/TvoutService;->CAMERA_POSITION:I
    invoke-static {v1}, Lcom/android/server/TvoutService;->access$100(Lcom/android/server/TvoutService;)I

    move-result v1

    if-nez v1, :cond_c

    .line 247
    const/4 v0, 0x0

    goto/16 :goto_2

    .line 249
    :cond_c
    const/4 v0, 0x0

    goto/16 :goto_2
.end method
