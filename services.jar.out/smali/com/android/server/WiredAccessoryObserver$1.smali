.class Lcom/android/server/WiredAccessoryObserver$1;
.super Landroid/os/UEventObserver;
.source "WiredAccessoryObserver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/WiredAccessoryObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/WiredAccessoryObserver;


# direct methods
.method constructor <init>(Lcom/android/server/WiredAccessoryObserver;)V
    .locals 0
    .parameter

    .prologue
    .line 138
    iput-object p1, p0, Lcom/android/server/WiredAccessoryObserver$1;->this$0:Lcom/android/server/WiredAccessoryObserver;

    invoke-direct {p0}, Landroid/os/UEventObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onUEvent(Landroid/os/UEventObserver$UEvent;)V
    .locals 12
    .parameter "event"

    .prologue
    .line 141
    invoke-static {}, Lcom/android/server/WiredAccessoryObserver;->access$300()Ljava/lang/String;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "USB AUDIO UEVENT: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {p1}, Landroid/os/UEventObserver$UEvent;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    const-string v9, "ACTION"

    invoke-virtual {p1, v9}, Landroid/os/UEventObserver$UEvent;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 144
    .local v0, action:Ljava/lang/String;
    const-string v9, "DEVPATH"

    invoke-virtual {p1, v9}, Landroid/os/UEventObserver$UEvent;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 145
    .local v5, devpath:Ljava/lang/String;
    const-string v9, "MAJOR"

    invoke-virtual {p1, v9}, Landroid/os/UEventObserver$UEvent;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 146
    .local v6, major:Ljava/lang/String;
    const-string v9, "MINOR"

    invoke-virtual {p1, v9}, Landroid/os/UEventObserver$UEvent;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 147
    .local v7, minor:Ljava/lang/String;
    const-string v9, "DEVNAME"

    invoke-virtual {p1, v9}, Landroid/os/UEventObserver$UEvent;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 148
    .local v4, devname:Ljava/lang/String;
    const-string v1, "1"

    .line 149
    .local v1, cardNumber:Ljava/lang/String;
    const-string v3, "0"

    .line 150
    .local v3, deviceNumber:Ljava/lang/String;
    const-string v2, "1"

    .line 151
    .local v2, channels:Ljava/lang/String;
    const/4 v8, 0x0

    .line 152
    .local v8, state:I
    invoke-static {}, Lcom/android/server/WiredAccessoryObserver;->access$300()Ljava/lang/String;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "onUEvent(device) :: action = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", MAJOR = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", MINOR = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", DEVPATH = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    invoke-static {}, Lcom/android/server/WiredAccessoryObserver;->access$300()Ljava/lang/String;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "DEVPATH = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    invoke-static {}, Lcom/android/server/WiredAccessoryObserver;->access$300()Ljava/lang/String;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "devname = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    const-string v9, "116"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 157
    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    .line 158
    const-string v9, "usb"

    invoke-virtual {v5, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 160
    const-string v9, "p"

    invoke-virtual {v4, v9}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 161
    const/16 v9, 0x8

    invoke-virtual {v4, v9}, Ljava/lang/String;->charAt(I)C

    move-result v9

    invoke-static {v9}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v1

    .line 162
    invoke-static {}, Lcom/android/server/WiredAccessoryObserver;->access$300()Ljava/lang/String;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, " cardNumber = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    const/16 v9, 0xa

    invoke-virtual {v4, v9}, Ljava/lang/String;->charAt(I)C

    move-result v9

    invoke-static {v9}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v3

    .line 164
    invoke-static {}, Lcom/android/server/WiredAccessoryObserver;->access$300()Ljava/lang/String;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, " deviceNumber = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    iget-object v9, p0, Lcom/android/server/WiredAccessoryObserver$1;->this$0:Lcom/android/server/WiredAccessoryObserver;

    #calls: Lcom/android/server/WiredAccessoryObserver;->getChannel(Ljava/lang/String;)I
    invoke-static {v9, v1}, Lcom/android/server/WiredAccessoryObserver;->access$400(Lcom/android/server/WiredAccessoryObserver;Ljava/lang/String;)I

    move-result v9

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    .line 166
    invoke-static {}, Lcom/android/server/WiredAccessoryObserver;->access$300()Ljava/lang/String;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, " channels = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    const-string v9, "add"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 168
    const/4 v8, 0x1

    .line 171
    :goto_0
    iget-object v9, p0, Lcom/android/server/WiredAccessoryObserver$1;->this$0:Lcom/android/server/WiredAccessoryObserver;

    #calls: Lcom/android/server/WiredAccessoryObserver;->update_usbaudio(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v9, v8, v2, v1, v3}, Lcom/android/server/WiredAccessoryObserver;->access$500(Lcom/android/server/WiredAccessoryObserver;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    :cond_0
    return-void

    .line 170
    :cond_1
    const/4 v8, 0x0

    goto :goto_0
.end method
