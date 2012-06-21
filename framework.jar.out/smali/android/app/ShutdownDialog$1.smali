.class Landroid/app/ShutdownDialog$1;
.super Landroid/os/Handler;
.source "ShutdownDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/app/ShutdownDialog;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/app/ShutdownDialog;


# direct methods
.method constructor <init>(Landroid/app/ShutdownDialog;)V
    .locals 0
    .parameter

    .prologue
    .line 122
    iput-object p1, p0, Landroid/app/ShutdownDialog$1;->this$0:Landroid/app/ShutdownDialog;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 11
    .parameter "msg"

    .prologue
    const/4 v2, 0x0

    .line 125
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 128
    iget-object v0, p0, Landroid/app/ShutdownDialog$1;->this$0:Landroid/app/ShutdownDialog;

    #getter for: Landroid/app/ShutdownDialog;->handle:I
    invoke-static {v0}, Landroid/app/ShutdownDialog;->access$000(Landroid/app/ShutdownDialog;)I

    move-result v0

    iget-object v1, p0, Landroid/app/ShutdownDialog$1;->this$0:Landroid/app/ShutdownDialog;

    #getter for: Landroid/app/ShutdownDialog;->buf:[I
    invoke-static {v1}, Landroid/app/ShutdownDialog;->access$100(Landroid/app/ShutdownDialog;)[I

    move-result-object v1

    invoke-static {v0, v1}, Landroid/app/LibQmg;->qmgLoadFrame(I[I)I

    move-result v10

    .line 129
    .local v10, ret:I
    if-ltz v10, :cond_4

    .line 130
    const-string v0, "ShutdownDialog"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Draw frame: ret="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    iget-object v0, p0, Landroid/app/ShutdownDialog$1;->this$0:Landroid/app/ShutdownDialog;

    #getter for: Landroid/app/ShutdownDialog;->mImages:Landroid/graphics/Bitmap;
    invoke-static {v0}, Landroid/app/ShutdownDialog;->access$400(Landroid/app/ShutdownDialog;)Landroid/graphics/Bitmap;

    move-result-object v0

    iget-object v1, p0, Landroid/app/ShutdownDialog$1;->this$0:Landroid/app/ShutdownDialog;

    #getter for: Landroid/app/ShutdownDialog;->buf:[I
    invoke-static {v1}, Landroid/app/ShutdownDialog;->access$100(Landroid/app/ShutdownDialog;)[I

    move-result-object v1

    iget-object v3, p0, Landroid/app/ShutdownDialog$1;->this$0:Landroid/app/ShutdownDialog;

    #getter for: Landroid/app/ShutdownDialog;->width:I
    invoke-static {v3}, Landroid/app/ShutdownDialog;->access$200(Landroid/app/ShutdownDialog;)I

    move-result v3

    iget-object v4, p0, Landroid/app/ShutdownDialog$1;->this$0:Landroid/app/ShutdownDialog;

    #getter for: Landroid/app/ShutdownDialog;->width:I
    invoke-static {v4}, Landroid/app/ShutdownDialog;->access$200(Landroid/app/ShutdownDialog;)I

    move-result v6

    iget-object v4, p0, Landroid/app/ShutdownDialog$1;->this$0:Landroid/app/ShutdownDialog;

    #getter for: Landroid/app/ShutdownDialog;->height:I
    invoke-static {v4}, Landroid/app/ShutdownDialog;->access$300(Landroid/app/ShutdownDialog;)I

    move-result v7

    move v4, v2

    move v5, v2

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    .line 136
    iget-object v0, p0, Landroid/app/ShutdownDialog$1;->this$0:Landroid/app/ShutdownDialog;

    #getter for: Landroid/app/ShutdownDialog;->mImages:Landroid/graphics/Bitmap;
    invoke-static {v0}, Landroid/app/ShutdownDialog;->access$400(Landroid/app/ShutdownDialog;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->prepareToDraw()V

    .line 137
    iget-object v0, p0, Landroid/app/ShutdownDialog$1;->this$0:Landroid/app/ShutdownDialog;

    #getter for: Landroid/app/ShutdownDialog;->mShutdownView:Landroid/widget/ImageView;
    invoke-static {v0}, Landroid/app/ShutdownDialog;->access$500(Landroid/app/ShutdownDialog;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Landroid/app/ShutdownDialog$1;->this$0:Landroid/app/ShutdownDialog;

    #getter for: Landroid/app/ShutdownDialog;->mImages:Landroid/graphics/Bitmap;
    invoke-static {v1}, Landroid/app/ShutdownDialog;->access$400(Landroid/app/ShutdownDialog;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 139
    if-nez v10, :cond_3

    .line 140
    sget-object v0, Landroid/os/Build;->BOARD:Ljava/lang/String;

    const-string v1, "YP-GB70D"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 142
    const/4 v9, 0x0

    .line 143
    .local v9, lastImageFilePath:Ljava/lang/String;
    :try_start_0
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->KOREA:Ljava/util/Locale;

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 144
    const-string v9, "//system/media/video/shutdown/shutdown_kor.png"

    .line 148
    :goto_0
    const-string v0, "ShutdownDialog"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "FileName : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    iget-object v0, p0, Landroid/app/ShutdownDialog$1;->this$0:Landroid/app/ShutdownDialog;

    invoke-static {v9}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    #setter for: Landroid/app/ShutdownDialog;->mImages:Landroid/graphics/Bitmap;
    invoke-static {v0, v1}, Landroid/app/ShutdownDialog;->access$402(Landroid/app/ShutdownDialog;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 150
    const-string v0, "ShutdownDialog"

    const-string v1, "Got Last mImage"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    iget-object v0, p0, Landroid/app/ShutdownDialog$1;->this$0:Landroid/app/ShutdownDialog;

    #getter for: Landroid/app/ShutdownDialog;->mShutdownView:Landroid/widget/ImageView;
    invoke-static {v0}, Landroid/app/ShutdownDialog;->access$500(Landroid/app/ShutdownDialog;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Landroid/app/ShutdownDialog$1;->this$0:Landroid/app/ShutdownDialog;

    #getter for: Landroid/app/ShutdownDialog;->mImages:Landroid/graphics/Bitmap;
    invoke-static {v1}, Landroid/app/ShutdownDialog;->access$400(Landroid/app/ShutdownDialog;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 152
    const-string v0, "ShutdownDialog"

    const-string/jumbo v1, "set Last mImage"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 158
    .end local v9           #lastImageFilePath:Ljava/lang/String;
    :cond_0
    :goto_1
    iget-object v0, p0, Landroid/app/ShutdownDialog$1;->this$0:Landroid/app/ShutdownDialog;

    #getter for: Landroid/app/ShutdownDialog;->mRunOnAnimationEnd:Ljava/lang/Runnable;
    invoke-static {v0}, Landroid/app/ShutdownDialog;->access$600(Landroid/app/ShutdownDialog;)Ljava/lang/Runnable;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 159
    iget-object v0, p0, Landroid/app/ShutdownDialog$1;->this$0:Landroid/app/ShutdownDialog;

    #getter for: Landroid/app/ShutdownDialog;->mRunOnAnimationEnd:Ljava/lang/Runnable;
    invoke-static {v0}, Landroid/app/ShutdownDialog;->access$600(Landroid/app/ShutdownDialog;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 161
    :cond_1
    iget-object v0, p0, Landroid/app/ShutdownDialog$1;->this$0:Landroid/app/ShutdownDialog;

    #getter for: Landroid/app/ShutdownDialog;->handle:I
    invoke-static {v0}, Landroid/app/ShutdownDialog;->access$000(Landroid/app/ShutdownDialog;)I

    move-result v0

    invoke-static {v0}, Landroid/app/LibQmg;->qmgClose(I)I

    .line 172
    :goto_2
    return-void

    .line 146
    .restart local v9       #lastImageFilePath:Ljava/lang/String;
    :cond_2
    :try_start_1
    const-string v9, "//system/media/video/shutdown/shutdown_eng.png"
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 153
    :catch_0
    move-exception v8

    .line 154
    .local v8, ex:Ljava/lang/Exception;
    const-string v0, "ShutdownDialog"

    const-string v1, "Exceptions when shutting down Last mImage..."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    const-string v0, "ShutdownDialog"

    invoke-virtual {v8}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 164
    .end local v8           #ex:Ljava/lang/Exception;
    .end local v9           #lastImageFilePath:Ljava/lang/String;
    :cond_3
    iget-object v0, p0, Landroid/app/ShutdownDialog$1;->this$0:Landroid/app/ShutdownDialog;

    #getter for: Landroid/app/ShutdownDialog;->mViewUpdateHandler:Landroid/os/Handler;
    invoke-static {v0}, Landroid/app/ShutdownDialog;->access$700(Landroid/app/ShutdownDialog;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x12c

    const-wide/16 v2, 0x1e

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_2

    .line 167
    :cond_4
    iget-object v0, p0, Landroid/app/ShutdownDialog$1;->this$0:Landroid/app/ShutdownDialog;

    #getter for: Landroid/app/ShutdownDialog;->mRunOnAnimationEnd:Ljava/lang/Runnable;
    invoke-static {v0}, Landroid/app/ShutdownDialog;->access$600(Landroid/app/ShutdownDialog;)Ljava/lang/Runnable;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 168
    iget-object v0, p0, Landroid/app/ShutdownDialog$1;->this$0:Landroid/app/ShutdownDialog;

    #getter for: Landroid/app/ShutdownDialog;->mRunOnAnimationEnd:Ljava/lang/Runnable;
    invoke-static {v0}, Landroid/app/ShutdownDialog;->access$600(Landroid/app/ShutdownDialog;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 170
    :cond_5
    iget-object v0, p0, Landroid/app/ShutdownDialog$1;->this$0:Landroid/app/ShutdownDialog;

    #getter for: Landroid/app/ShutdownDialog;->handle:I
    invoke-static {v0}, Landroid/app/ShutdownDialog;->access$000(Landroid/app/ShutdownDialog;)I

    move-result v0

    invoke-static {v0}, Landroid/app/LibQmg;->qmgClose(I)I

    goto :goto_2
.end method
