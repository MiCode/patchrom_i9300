.class Lcom/sec/android/ims/IMSEventListener$MessageData;
.super Ljava/lang/Object;
.source "IMSEventListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/ims/IMSEventListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MessageData"
.end annotation


# instance fields
.field arg1:I

.field arg2:I

.field data:Ljava/lang/String;

.field final synthetic this$0:Lcom/sec/android/ims/IMSEventListener;


# direct methods
.method constructor <init>(Lcom/sec/android/ims/IMSEventListener;IILjava/lang/String;)V
    .locals 0
    .parameter
    .parameter "arg1"
    .parameter "arg2"
    .parameter "data"

    .prologue
    .line 46
    iput-object p1, p0, Lcom/sec/android/ims/IMSEventListener$MessageData;->this$0:Lcom/sec/android/ims/IMSEventListener;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput p2, p0, Lcom/sec/android/ims/IMSEventListener$MessageData;->arg1:I

    .line 48
    iput p3, p0, Lcom/sec/android/ims/IMSEventListener$MessageData;->arg2:I

    .line 49
    iput-object p4, p0, Lcom/sec/android/ims/IMSEventListener$MessageData;->data:Ljava/lang/String;

    .line 50
    return-void
.end method
