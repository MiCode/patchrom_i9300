.class Landroid/sec/mwdialog/MwAppInfoLoader$1;
.super Ljava/lang/Object;
.source "MwAppInfoLoader.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/sec/mwdialog/MwAppInfoLoader;->setSortList()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Landroid/sec/mwdialog/MwAppInfo;",
        ">;"
    }
.end annotation


# instance fields
.field private final collator:Ljava/text/Collator;

.field final synthetic this$0:Landroid/sec/mwdialog/MwAppInfoLoader;


# direct methods
.method constructor <init>(Landroid/sec/mwdialog/MwAppInfoLoader;)V
    .locals 1
    .parameter

    .prologue
    .line 84
    iput-object p1, p0, Landroid/sec/mwdialog/MwAppInfoLoader$1;->this$0:Landroid/sec/mwdialog/MwAppInfoLoader;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 85
    invoke-static {}, Ljava/text/Collator;->getInstance()Ljava/text/Collator;

    move-result-object v0

    iput-object v0, p0, Landroid/sec/mwdialog/MwAppInfoLoader$1;->collator:Ljava/text/Collator;

    return-void
.end method


# virtual methods
.method public compare(Landroid/sec/mwdialog/MwAppInfo;Landroid/sec/mwdialog/MwAppInfo;)I
    .locals 3
    .parameter "object1"
    .parameter "object2"

    .prologue
    .line 89
    iget-object v0, p0, Landroid/sec/mwdialog/MwAppInfoLoader$1;->collator:Ljava/text/Collator;

    invoke-virtual {p1}, Landroid/sec/mwdialog/MwAppInfo;->getAppTitle()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p2}, Landroid/sec/mwdialog/MwAppInfo;->getAppTitle()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/text/Collator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 84
    check-cast p1, Landroid/sec/mwdialog/MwAppInfo;

    .end local p1
    check-cast p2, Landroid/sec/mwdialog/MwAppInfo;

    .end local p2
    invoke-virtual {p0, p1, p2}, Landroid/sec/mwdialog/MwAppInfoLoader$1;->compare(Landroid/sec/mwdialog/MwAppInfo;Landroid/sec/mwdialog/MwAppInfo;)I

    move-result v0

    return v0
.end method
