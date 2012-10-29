.class Lcom/android/OriginalSettings/inputmethod/InputMethodAndLanguageSettings$1;
.super Ljava/lang/Object;
.source "InputMethodAndLanguageSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/OriginalSettings/inputmethod/InputMethodAndLanguageSettings;->showGuideDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/OriginalSettings/inputmethod/InputMethodAndLanguageSettings;


# direct methods
.method constructor <init>(Lcom/android/OriginalSettings/inputmethod/InputMethodAndLanguageSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 502
    iput-object p1, p0, Lcom/android/OriginalSettings/inputmethod/InputMethodAndLanguageSettings$1;->this$0:Lcom/android/OriginalSettings/inputmethod/InputMethodAndLanguageSettings;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 505
    iget-object v0, p0, Lcom/android/OriginalSettings/inputmethod/InputMethodAndLanguageSettings$1;->this$0:Lcom/android/OriginalSettings/inputmethod/InputMethodAndLanguageSettings;

    #getter for: Lcom/android/OriginalSettings/inputmethod/InputMethodAndLanguageSettings;->mVoiceInputControl:Landroid/preference/SwitchPreferenceScreen;
    invoke-static {v0}, Lcom/android/OriginalSettings/inputmethod/InputMethodAndLanguageSettings;->access$100(Lcom/android/OriginalSettings/inputmethod/InputMethodAndLanguageSettings;)Landroid/preference/SwitchPreferenceScreen;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    .line 506
    return-void
.end method
