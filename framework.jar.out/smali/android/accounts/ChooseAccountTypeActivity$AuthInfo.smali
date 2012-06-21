.class Landroid/accounts/ChooseAccountTypeActivity$AuthInfo;
.super Ljava/lang/Object;
.source "ChooseAccountTypeActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/accounts/ChooseAccountTypeActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AuthInfo"
.end annotation


# instance fields
.field final desc:Landroid/accounts/AuthenticatorDescription;

.field final drawable:Landroid/graphics/drawable/Drawable;

.field final name:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/accounts/AuthenticatorDescription;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .parameter "desc"
    .parameter "name"
    .parameter "drawable"

    .prologue
    .line 152
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 153
    iput-object p1, p0, Landroid/accounts/ChooseAccountTypeActivity$AuthInfo;->desc:Landroid/accounts/AuthenticatorDescription;

    .line 154
    iput-object p2, p0, Landroid/accounts/ChooseAccountTypeActivity$AuthInfo;->name:Ljava/lang/String;

    .line 155
    iput-object p3, p0, Landroid/accounts/ChooseAccountTypeActivity$AuthInfo;->drawable:Landroid/graphics/drawable/Drawable;

    .line 156
    return-void
.end method
