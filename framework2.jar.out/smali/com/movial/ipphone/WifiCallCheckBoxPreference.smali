.class public Lcom/movial/ipphone/WifiCallCheckBoxPreference;
.super Landroid/preference/CheckBoxPreference;
.source "WifiCallCheckBoxPreference.java"


# instance fields
.field private final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 12
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/movial/ipphone/WifiCallCheckBoxPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 13
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 16
    const v0, 0x101008f

    invoke-direct {p0, p1, p2, v0}, Lcom/movial/ipphone/WifiCallCheckBoxPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 17
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 20
    invoke-direct {p0, p1, p2, p3}, Landroid/preference/CheckBoxPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 21
    iput-object p1, p0, Lcom/movial/ipphone/WifiCallCheckBoxPreference;->mContext:Landroid/content/Context;

    .line 22
    return-void
.end method


# virtual methods
.method public pause()V
    .locals 0

    .prologue
    .line 30
    return-void
.end method

.method public resume()V
    .locals 0

    .prologue
    .line 27
    return-void
.end method

.method public setValues(Landroid/preference/Preference;)V
    .locals 0
    .parameter "preference"

    .prologue
    .line 24
    return-void
.end method
