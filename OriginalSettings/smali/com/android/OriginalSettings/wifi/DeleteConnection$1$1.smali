.class Lcom/android/OriginalSettings/wifi/DeleteConnection$1$1;
.super Ljava/lang/Object;
.source "DeleteConnection.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/OriginalSettings/wifi/DeleteConnection$1;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/OriginalSettings/wifi/DeleteConnection$1;


# direct methods
.method constructor <init>(Lcom/android/OriginalSettings/wifi/DeleteConnection$1;)V
    .locals 0
    .parameter

    .prologue
    .line 97
    iput-object p1, p0, Lcom/android/OriginalSettings/wifi/DeleteConnection$1$1;->this$1:Lcom/android/OriginalSettings/wifi/DeleteConnection$1;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 9
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v8, 0x0

    .line 99
    const-string v5, "DeleteConnection"

    const-string v6, "aps_to_forget != null"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    const/4 v1, 0x0

    .local v1, j:I
    :goto_0
    iget-object v5, p0, Lcom/android/OriginalSettings/wifi/DeleteConnection$1$1;->this$1:Lcom/android/OriginalSettings/wifi/DeleteConnection$1;

    iget-object v5, v5, Lcom/android/OriginalSettings/wifi/DeleteConnection$1;->this$0:Lcom/android/OriginalSettings/wifi/DeleteConnection;

    iget-object v5, v5, Lcom/android/OriginalSettings/wifi/DeleteConnection;->aps_to_forget:[Ljava/lang/String;

    array-length v5, v5

    if-ge v1, v5, :cond_1

    .line 101
    iget-object v5, p0, Lcom/android/OriginalSettings/wifi/DeleteConnection$1$1;->this$1:Lcom/android/OriginalSettings/wifi/DeleteConnection$1;

    iget-object v5, v5, Lcom/android/OriginalSettings/wifi/DeleteConnection$1;->this$0:Lcom/android/OriginalSettings/wifi/DeleteConnection;

    iget-object v5, v5, Lcom/android/OriginalSettings/wifi/DeleteConnection;->aps_to_forget:[Ljava/lang/String;

    aget-object v5, v5, v1

    if-eqz v5, :cond_0

    .line 102
    const-string v5, "DeleteConnection"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "forgotten AP: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/OriginalSettings/wifi/DeleteConnection$1$1;->this$1:Lcom/android/OriginalSettings/wifi/DeleteConnection$1;

    iget-object v7, v7, Lcom/android/OriginalSettings/wifi/DeleteConnection$1;->this$0:Lcom/android/OriginalSettings/wifi/DeleteConnection;

    iget-object v7, v7, Lcom/android/OriginalSettings/wifi/DeleteConnection;->aps_to_forget:[Ljava/lang/String;

    aget-object v7, v7, v1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    iget-object v5, p0, Lcom/android/OriginalSettings/wifi/DeleteConnection$1$1;->this$1:Lcom/android/OriginalSettings/wifi/DeleteConnection$1;

    iget-object v5, v5, Lcom/android/OriginalSettings/wifi/DeleteConnection$1;->this$0:Lcom/android/OriginalSettings/wifi/DeleteConnection;

    iget-object v5, v5, Lcom/android/OriginalSettings/wifi/DeleteConnection;->aps_to_forget:[Ljava/lang/String;

    aget-object v5, v5, v1

    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 104
    .local v2, row:J
    sget-object v5, Lcom/android/OriginalSettings/WifiDatabaseProvider;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v5, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v4

    .line 105
    .local v4, uri:Landroid/net/Uri;
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 106
    .local v0, initialValues:Landroid/content/ContentValues;
    const-string v5, "profile"

    iget-object v6, p0, Lcom/android/OriginalSettings/wifi/DeleteConnection$1$1;->this$1:Lcom/android/OriginalSettings/wifi/DeleteConnection$1;

    iget-object v6, v6, Lcom/android/OriginalSettings/wifi/DeleteConnection$1;->this$0:Lcom/android/OriginalSettings/wifi/DeleteConnection;

    iget-object v6, v6, Lcom/android/OriginalSettings/wifi/DeleteConnection;->Null:Ljava/lang/String;

    invoke-virtual {v0, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    iget-object v5, p0, Lcom/android/OriginalSettings/wifi/DeleteConnection$1$1;->this$1:Lcom/android/OriginalSettings/wifi/DeleteConnection$1;

    iget-object v5, v5, Lcom/android/OriginalSettings/wifi/DeleteConnection$1;->this$0:Lcom/android/OriginalSettings/wifi/DeleteConnection;

    iget-object v5, v5, Lcom/android/OriginalSettings/wifi/DeleteConnection;->cr:Landroid/content/ContentResolver;

    invoke-virtual {v5, v4, v0, v8, v8}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 100
    .end local v0           #initialValues:Landroid/content/ContentValues;
    .end local v2           #row:J
    .end local v4           #uri:Landroid/net/Uri;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 110
    :cond_1
    iget-object v5, p0, Lcom/android/OriginalSettings/wifi/DeleteConnection$1$1;->this$1:Lcom/android/OriginalSettings/wifi/DeleteConnection$1;

    iget-object v5, v5, Lcom/android/OriginalSettings/wifi/DeleteConnection$1;->this$0:Lcom/android/OriginalSettings/wifi/DeleteConnection;

    invoke-virtual {v5}, Lcom/android/OriginalSettings/wifi/DeleteConnection;->finish()V

    .line 111
    return-void
.end method
