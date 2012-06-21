.class public abstract Landroid/sec/multiwindow/MWOnDragListener;
.super Ljava/lang/Object;
.source "MWOnDragListener.java"

# interfaces
.implements Landroid/view/View$OnDragListener;


# static fields
.field public static final TAG:Ljava/lang/String; = "MWOnDragListener"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 25
    return-void
.end method


# virtual methods
.method public onDrag(Landroid/view/View;Landroid/view/DragEvent;)Z
    .locals 3
    .parameter "v"
    .parameter "event"

    .prologue
    const/4 v1, 0x1

    .line 35
    invoke-virtual {p2}, Landroid/view/DragEvent;->getAction()I

    move-result v0

    .line 38
    .local v0, action:I
    packed-switch v0, :pswitch_data_0

    .line 58
    const-string v1, "MWOnDragListener"

    const-string v2, "Unknown action type received by OnDragListener."

    invoke-static {v1, v2}, Landroid/sec/multiwindow/MWlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    const/4 v1, 0x0

    :goto_0
    :pswitch_0
    return v1

    .line 49
    :pswitch_1
    invoke-virtual {p0, p2}, Landroid/sec/multiwindow/MWOnDragListener;->onDrop(Landroid/view/DragEvent;)V

    .line 51
    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    goto :goto_0

    .line 54
    :pswitch_2
    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    goto :goto_0

    .line 38
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public abstract onDrop(Landroid/view/DragEvent;)V
.end method
