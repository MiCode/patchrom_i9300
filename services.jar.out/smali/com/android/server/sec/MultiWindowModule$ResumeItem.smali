.class public Lcom/android/server/sec/MultiWindowModule$ResumeItem;
.super Ljava/lang/Object;
.source "MultiWindowModule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/sec/MultiWindowModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ResumeItem"
.end annotation


# instance fields
.field public MwListener:Landroid/sec/multiwindow/IMultiWindowListener;

.field public ResumeData:Landroid/content/ComponentName;


# direct methods
.method public constructor <init>(Landroid/content/ComponentName;Landroid/sec/multiwindow/IMultiWindowListener;)V
    .locals 0
    .parameter "cn"
    .parameter "mwListener"

    .prologue
    .line 1090
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 1091
    iput-object p1, p0, Lcom/android/server/sec/MultiWindowModule$ResumeItem;->ResumeData:Landroid/content/ComponentName;

    .line 1092
    iput-object p2, p0, Lcom/android/server/sec/MultiWindowModule$ResumeItem;->MwListener:Landroid/sec/multiwindow/IMultiWindowListener;

    .line 1093
    return-void
.end method
