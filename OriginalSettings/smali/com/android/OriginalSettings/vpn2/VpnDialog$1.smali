.class Lcom/android/OriginalSettings/vpn2/VpnDialog$1;
.super Ljava/lang/Object;
.source "VpnDialog.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/OriginalSettings/vpn2/VpnDialog;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/OriginalSettings/vpn2/VpnDialog;

.field final synthetic val$showOptions:Landroid/widget/CheckBox;


# direct methods
.method constructor <init>(Lcom/android/OriginalSettings/vpn2/VpnDialog;Landroid/widget/CheckBox;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 151
    iput-object p1, p0, Lcom/android/OriginalSettings/vpn2/VpnDialog$1;->this$0:Lcom/android/OriginalSettings/vpn2/VpnDialog;

    iput-object p2, p0, Lcom/android/OriginalSettings/vpn2/VpnDialog$1;->val$showOptions:Landroid/widget/CheckBox;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2
    .parameter "buttonView"
    .parameter "isChecked"

    .prologue
    .line 153
    iget-object v0, p0, Lcom/android/OriginalSettings/vpn2/VpnDialog$1;->val$showOptions:Landroid/widget/CheckBox;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 154
    iget-object v0, p0, Lcom/android/OriginalSettings/vpn2/VpnDialog$1;->this$0:Lcom/android/OriginalSettings/vpn2/VpnDialog;

    #getter for: Lcom/android/OriginalSettings/vpn2/VpnDialog;->mView:Landroid/view/View;
    invoke-static {v0}, Lcom/android/OriginalSettings/vpn2/VpnDialog;->access$000(Lcom/android/OriginalSettings/vpn2/VpnDialog;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0a0247

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 155
    return-void
.end method
