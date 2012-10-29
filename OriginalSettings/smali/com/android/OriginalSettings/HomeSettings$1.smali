.class Lcom/android/OriginalSettings/HomeSettings$1;
.super Ljava/lang/Object;
.source "HomeSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/OriginalSettings/HomeSettings;->onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/OriginalSettings/HomeSettings;

.field final synthetic val$info:Landroid/content/pm/ResolveInfo;


# direct methods
.method constructor <init>(Lcom/android/OriginalSettings/HomeSettings;Landroid/content/pm/ResolveInfo;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 85
    iput-object p1, p0, Lcom/android/OriginalSettings/HomeSettings$1;->this$0:Lcom/android/OriginalSettings/HomeSettings;

    iput-object p2, p0, Lcom/android/OriginalSettings/HomeSettings$1;->val$info:Landroid/content/pm/ResolveInfo;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 87
    iget-object v0, p0, Lcom/android/OriginalSettings/HomeSettings$1;->this$0:Lcom/android/OriginalSettings/HomeSettings;

    iget-object v1, p0, Lcom/android/OriginalSettings/HomeSettings$1;->val$info:Landroid/content/pm/ResolveInfo;

    #calls: Lcom/android/OriginalSettings/HomeSettings;->changeHome(Landroid/content/pm/ResolveInfo;)V
    invoke-static {v0, v1}, Lcom/android/OriginalSettings/HomeSettings;->access$000(Lcom/android/OriginalSettings/HomeSettings;Landroid/content/pm/ResolveInfo;)V

    .line 88
    return-void
.end method
