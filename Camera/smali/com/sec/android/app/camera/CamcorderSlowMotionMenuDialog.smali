.class public Lcom/sec/android/app/camera/CamcorderSlowMotionMenuDialog;
.super Landroid/app/DialogFragment;
.source "CamcorderSlowMotionMenuDialog.java"


# static fields
.field public static final FASTMOTION:I = 0x0

.field public static final SLOWMOTION:I = 0x1


# instance fields
.field public mDialogType:I

.field public final mSettingValue:[[I

.field public final mStringId:[[I

.field public final mType:[I


# direct methods
.method public constructor <init>()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x2

    const/4 v2, 0x3

    .line 9
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    .line 13
    new-array v0, v3, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/sec/android/app/camera/CamcorderSlowMotionMenuDialog;->mType:[I

    .line 14
    new-array v0, v3, [[I

    new-array v1, v2, [I

    fill-array-data v1, :array_1

    aput-object v1, v0, v4

    new-array v1, v2, [I

    fill-array-data v1, :array_2

    aput-object v1, v0, v5

    iput-object v0, p0, Lcom/sec/android/app/camera/CamcorderSlowMotionMenuDialog;->mStringId:[[I

    .line 17
    new-array v0, v3, [[I

    new-array v1, v2, [I

    fill-array-data v1, :array_3

    aput-object v1, v0, v4

    new-array v1, v2, [I

    fill-array-data v1, :array_4

    aput-object v1, v0, v5

    iput-object v0, p0, Lcom/sec/android/app/camera/CamcorderSlowMotionMenuDialog;->mSettingValue:[[I

    return-void

    .line 13
    nop

    :array_0
    .array-data 0x4
        0x86t 0x0t 0x9t 0x7ft
        0x85t 0x0t 0x9t 0x7ft
    .end array-data

    .line 14
    :array_1
    .array-data 0x4
        0x2dt 0x1t 0x9t 0x7ft
        0x2et 0x1t 0x9t 0x7ft
        0x2ft 0x1t 0x9t 0x7ft
    .end array-data

    :array_2
    .array-data 0x4
        0x30t 0x1t 0x9t 0x7ft
        0x31t 0x1t 0x9t 0x7ft
        0x32t 0x1t 0x9t 0x7ft
    .end array-data

    .line 17
    :array_3
    .array-data 0x4
        0xfft 0xfft 0xfft 0xfft
        0xfet 0xfft 0xfft 0xfft
        0xfdt 0xfft 0xfft 0xfft
    .end array-data

    :array_4
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public static newInstance(I)Lcom/sec/android/app/camera/CamcorderSlowMotionMenuDialog;
    .locals 3
    .parameter "type"

    .prologue
    .line 24
    new-instance v1, Lcom/sec/android/app/camera/CamcorderSlowMotionMenuDialog;

    invoke-direct {v1}, Lcom/sec/android/app/camera/CamcorderSlowMotionMenuDialog;-><init>()V

    .line 25
    .local v1, frag:Lcom/sec/android/app/camera/CamcorderSlowMotionMenuDialog;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 26
    .local v0, args:Landroid/os/Bundle;
    const-string v2, "type"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 27
    invoke-virtual {v1, v0}, Lcom/sec/android/app/camera/CamcorderSlowMotionMenuDialog;->setArguments(Landroid/os/Bundle;)V

    .line 28
    return-object v1
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 9
    .parameter "savedInstanceState"

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 33
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CamcorderSlowMotionMenuDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v4

    const-string v5, "type"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/sec/android/app/camera/CamcorderSlowMotionMenuDialog;->mDialogType:I

    .line 34
    iget-object v4, p0, Lcom/sec/android/app/camera/CamcorderSlowMotionMenuDialog;->mType:[I

    iget v5, p0, Lcom/sec/android/app/camera/CamcorderSlowMotionMenuDialog;->mDialogType:I

    aget v3, v4, v5

    .line 35
    .local v3, title:I
    const/4 v4, 0x3

    new-array v1, v4, [Ljava/lang/String;

    .line 36
    .local v1, items:[Ljava/lang/String;
    iget-object v4, p0, Lcom/sec/android/app/camera/CamcorderSlowMotionMenuDialog;->mStringId:[[I

    iget v5, p0, Lcom/sec/android/app/camera/CamcorderSlowMotionMenuDialog;->mDialogType:I

    aget-object v4, v4, v5

    aget v4, v4, v6

    invoke-virtual {p0, v4}, Lcom/sec/android/app/camera/CamcorderSlowMotionMenuDialog;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v6

    .line 37
    iget-object v4, p0, Lcom/sec/android/app/camera/CamcorderSlowMotionMenuDialog;->mStringId:[[I

    iget v5, p0, Lcom/sec/android/app/camera/CamcorderSlowMotionMenuDialog;->mDialogType:I

    aget-object v4, v4, v5

    aget v4, v4, v7

    invoke-virtual {p0, v4}, Lcom/sec/android/app/camera/CamcorderSlowMotionMenuDialog;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v7

    .line 38
    iget-object v4, p0, Lcom/sec/android/app/camera/CamcorderSlowMotionMenuDialog;->mStringId:[[I

    iget v5, p0, Lcom/sec/android/app/camera/CamcorderSlowMotionMenuDialog;->mDialogType:I

    aget-object v4, v4, v5

    aget v4, v4, v8

    invoke-virtual {p0, v4}, Lcom/sec/android/app/camera/CamcorderSlowMotionMenuDialog;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v8

    .line 39
    const/4 v2, 0x0

    .line 40
    .local v2, selectedIndex:I
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CamcorderSlowMotionMenuDialog;->getActivity()Landroid/app/Activity;

    move-result-object v4

    check-cast v4, Lcom/sec/android/app/camera/Camcorder;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/Camcorder;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/camera/CameraSettings;->getRecordingSpeed()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    .line 55
    :goto_0
    :pswitch_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/CamcorderSlowMotionMenuDialog;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v0, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 57
    .local v0, dialog:Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const-string v5, "Cancel"

    new-instance v6, Lcom/sec/android/app/camera/CamcorderSlowMotionMenuDialog$2;

    invoke-direct {v6, p0}, Lcom/sec/android/app/camera/CamcorderSlowMotionMenuDialog$2;-><init>(Lcom/sec/android/app/camera/CamcorderSlowMotionMenuDialog;)V

    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    new-instance v5, Lcom/sec/android/app/camera/CamcorderSlowMotionMenuDialog$1;

    invoke-direct {v5, p0}, Lcom/sec/android/app/camera/CamcorderSlowMotionMenuDialog$1;-><init>(Lcom/sec/android/app/camera/CamcorderSlowMotionMenuDialog;)V

    invoke-virtual {v4, v1, v2, v5}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 69
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    return-object v4

    .line 43
    .end local v0           #dialog:Landroid/app/AlertDialog$Builder;
    :pswitch_1
    const/4 v2, 0x2

    .line 44
    goto :goto_0

    .line 47
    :pswitch_2
    const/4 v2, 0x1

    .line 48
    goto :goto_0

    .line 40
    nop

    :pswitch_data_0
    .packed-switch -0x3
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
