.class Lcom/android/OriginalSettings/autopoweronoff/AutoPowerOnOffRepeatPreference$1;
.super Ljava/lang/Object;
.source "AutoPowerOnOffRepeatPreference.java"

# interfaces
.implements Landroid/content/DialogInterface$OnMultiChoiceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/OriginalSettings/autopoweronoff/AutoPowerOnOffRepeatPreference;->onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/OriginalSettings/autopoweronoff/AutoPowerOnOffRepeatPreference;


# direct methods
.method constructor <init>(Lcom/android/OriginalSettings/autopoweronoff/AutoPowerOnOffRepeatPreference;)V
    .locals 0
    .parameter

    .prologue
    .line 107
    iput-object p1, p0, Lcom/android/OriginalSettings/autopoweronoff/AutoPowerOnOffRepeatPreference$1;->this$0:Lcom/android/OriginalSettings/autopoweronoff/AutoPowerOnOffRepeatPreference;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;IZ)V
    .locals 1
    .parameter "dialog"
    .parameter "which"
    .parameter "isChecked"

    .prologue
    .line 110
    iget-object v0, p0, Lcom/android/OriginalSettings/autopoweronoff/AutoPowerOnOffRepeatPreference$1;->this$0:Lcom/android/OriginalSettings/autopoweronoff/AutoPowerOnOffRepeatPreference;

    #getter for: Lcom/android/OriginalSettings/autopoweronoff/AutoPowerOnOffRepeatPreference;->mNewDaysOfWeek:Lcom/android/OriginalSettings/autopoweronoff/AutoPowerOnOffSettings$DaysOfWeek;
    invoke-static {v0}, Lcom/android/OriginalSettings/autopoweronoff/AutoPowerOnOffRepeatPreference;->access$000(Lcom/android/OriginalSettings/autopoweronoff/AutoPowerOnOffRepeatPreference;)Lcom/android/OriginalSettings/autopoweronoff/AutoPowerOnOffSettings$DaysOfWeek;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Lcom/android/OriginalSettings/autopoweronoff/AutoPowerOnOffSettings$DaysOfWeek;->set(IZ)V

    .line 111
    return-void
.end method
