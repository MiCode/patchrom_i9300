.class Lcom/android/internal/policy/impl/MultiPhoneWindowEvent$WindowExitListener;
.super Ljava/lang/Object;
.source "MultiPhoneWindowEvent.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/MultiPhoneWindowEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "WindowExitListener"
.end annotation


# static fields
.field private static final TAG_Modify:Ljava/lang/String; = "WindowExitListener"


# instance fields
.field private mOwner:Lcom/android/internal/policy/impl/PhoneWindow;


# direct methods
.method public constructor <init>(Lcom/android/internal/policy/impl/PhoneWindow;)V
    .locals 0
    .parameter "owner"

    .prologue
    .line 882
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 883
    iput-object p1, p0, Lcom/android/internal/policy/impl/MultiPhoneWindowEvent$WindowExitListener;->mOwner:Lcom/android/internal/policy/impl/PhoneWindow;

    .line 884
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 887
    const-string v1, "WindowExitListener"

    const-string v2, "onClick of WindowExitListener is called"

    invoke-static {v1, v2}, Landroid/sec/multiwindow/MWlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 888
    iget-object v1, p0, Lcom/android/internal/policy/impl/MultiPhoneWindowEvent$WindowExitListener;->mOwner:Lcom/android/internal/policy/impl/PhoneWindow;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 889
    .local v0, context:Landroid/content/Context;
    instance-of v1, v0, Landroid/app/Activity;

    if-eqz v1, :cond_0

    .line 890
    check-cast v0, Landroid/app/Activity;

    .end local v0           #context:Landroid/content/Context;
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 892
    :cond_0
    return-void
.end method
