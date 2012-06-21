.class public abstract Landroid/preference/PreferenceActivity;
.super Landroid/app/ListActivity;
.source "PreferenceActivity.java"

# interfaces
.implements Landroid/preference/PreferenceManager$OnPreferenceTreeClickListener;
.implements Landroid/preference/PreferenceFragment$OnPreferenceStartFragmentCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/preference/PreferenceActivity$Header;,
        Landroid/preference/PreferenceActivity$HeaderAdapter;
    }
.end annotation


# static fields
.field private static final BACK_STACK_PREFS:Ljava/lang/String; = ":android:prefs"

.field private static final CUR_HEADER_TAG:Ljava/lang/String; = ":android:cur_header"

.field public static final EXTRA_NO_HEADERS:Ljava/lang/String; = ":android:no_headers"

.field private static final EXTRA_PREFS_SET_BACK_TEXT:Ljava/lang/String; = "extra_prefs_set_back_text"

.field private static final EXTRA_PREFS_SET_NEXT_TEXT:Ljava/lang/String; = "extra_prefs_set_next_text"

.field private static final EXTRA_PREFS_SHOW_BUTTON_BAR:Ljava/lang/String; = "extra_prefs_show_button_bar"

.field private static final EXTRA_PREFS_SHOW_SKIP:Ljava/lang/String; = "extra_prefs_show_skip"

.field public static final EXTRA_SHOW_FRAGMENT:Ljava/lang/String; = ":android:show_fragment"

.field public static final EXTRA_SHOW_FRAGMENT_ARGUMENTS:Ljava/lang/String; = ":android:show_fragment_args"

.field public static final EXTRA_SHOW_FRAGMENT_SHORT_TITLE:Ljava/lang/String; = ":android:show_fragment_short_title"

.field public static final EXTRA_SHOW_FRAGMENT_TITLE:Ljava/lang/String; = ":android:show_fragment_title"

.field private static final FIRST_REQUEST_CODE:I = 0x64

.field private static final HEADERS_TAG:Ljava/lang/String; = ":android:headers"

.field public static final HEADER_ID_UNDEFINED:J = -0x1L

.field private static final MSG_BIND_PREFERENCES:I = 0x1

.field private static final MSG_BUILD_HEADERS:I = 0x2

.field private static final PREFERENCES_TAG:Ljava/lang/String; = ":android:preferences"

.field private static final TAG:Ljava/lang/String; = "PreferenceActivity"


# instance fields
.field private mCurHeader:Landroid/preference/PreferenceActivity$Header;

.field private mFragmentBreadCrumbs:Landroid/app/FragmentBreadCrumbs;

.field private mHandler:Landroid/os/Handler;

.field private final mHeaders:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/preference/PreferenceActivity$Header;",
            ">;"
        }
    .end annotation
.end field

.field private mIsDeviceDefault:Z

.field private mListFooter:Landroid/widget/FrameLayout;

.field private mNextButton:Landroid/widget/Button;

.field private mPreferenceActivityLayoutResID:I

.field private mPreferenceHeaderItemLayoutResID:I

.field private mPreferenceManager:Landroid/preference/PreferenceManager;

.field private mPrefsContainer:Landroid/view/ViewGroup;

.field private mSavedInstanceState:Landroid/os/Bundle;

.field private mSinglePane:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 118
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    .line 184
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/preference/PreferenceActivity;->mHeaders:Ljava/util/ArrayList;

    .line 215
    new-instance v0, Landroid/preference/PreferenceActivity$1;

    invoke-direct {v0, p0}, Landroid/preference/PreferenceActivity$1;-><init>(Landroid/preference/PreferenceActivity;)V

    iput-object v0, p0, Landroid/preference/PreferenceActivity;->mHandler:Landroid/os/Handler;

    .line 553
    const v0, 0x109009b

    iput v0, p0, Landroid/preference/PreferenceActivity;->mPreferenceActivityLayoutResID:I

    .line 554
    const v0, 0x1090097

    iput v0, p0, Landroid/preference/PreferenceActivity;->mPreferenceHeaderItemLayoutResID:I

    return-void
.end method

.method static synthetic access$000(Landroid/preference/PreferenceActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 118
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;->bindPreferences()V

    return-void
.end method

.method static synthetic access$100(Landroid/preference/PreferenceActivity;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 118
    iget-object v0, p0, Landroid/preference/PreferenceActivity;->mHeaders:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$200(Landroid/preference/PreferenceActivity;)Landroid/widget/ListAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 118
    iget-object v0, p0, Landroid/app/ListActivity;->mAdapter:Landroid/widget/ListAdapter;

    return-object v0
.end method

.method static synthetic access$300(Landroid/preference/PreferenceActivity;)Landroid/widget/ListAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 118
    iget-object v0, p0, Landroid/app/ListActivity;->mAdapter:Landroid/widget/ListAdapter;

    return-object v0
.end method

.method static synthetic access$400(Landroid/preference/PreferenceActivity;)Landroid/preference/PreferenceActivity$Header;
    .locals 1
    .parameter "x0"

    .prologue
    .line 118
    iget-object v0, p0, Landroid/preference/PreferenceActivity;->mCurHeader:Landroid/preference/PreferenceActivity$Header;

    return-object v0
.end method

.method private bindPreferences()V
    .locals 2

    .prologue
    .line 1383
    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    .line 1384
    .local v0, preferenceScreen:Landroid/preference/PreferenceScreen;
    if-eqz v0, :cond_0

    .line 1385
    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->bind(Landroid/widget/ListView;)V

    .line 1386
    iget-object v1, p0, Landroid/preference/PreferenceActivity;->mSavedInstanceState:Landroid/os/Bundle;

    if-eqz v1, :cond_0

    .line 1387
    iget-object v1, p0, Landroid/preference/PreferenceActivity;->mSavedInstanceState:Landroid/os/Bundle;

    invoke-super {p0, v1}, Landroid/app/ListActivity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 1388
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/preference/PreferenceActivity;->mSavedInstanceState:Landroid/os/Bundle;

    .line 1391
    :cond_0
    return-void
.end method

.method private postBindPreferences()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 1378
    iget-object v0, p0, Landroid/preference/PreferenceActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1380
    :goto_0
    return-void

    .line 1379
    :cond_0
    iget-object v0, p0, Landroid/preference/PreferenceActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method

.method private requirePreferenceManager()V
    .locals 2

    .prologue
    .line 1406
    iget-object v0, p0, Landroid/preference/PreferenceActivity;->mPreferenceManager:Landroid/preference/PreferenceManager;

    if-nez v0, :cond_1

    .line 1407
    iget-object v0, p0, Landroid/app/ListActivity;->mAdapter:Landroid/widget/ListAdapter;

    if-nez v0, :cond_0

    .line 1408
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "This should be called after super.onCreate."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1410
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Modern two-pane PreferenceActivity requires use of a PreferenceFragment"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1413
    :cond_1
    return-void
.end method

.method private switchToHeaderInner(Ljava/lang/String;Landroid/os/Bundle;I)V
    .locals 5
    .parameter "fragmentName"
    .parameter "args"
    .parameter "direction"

    .prologue
    .line 1194
    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    const-string v3, ":android:prefs"

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/app/FragmentManager;->popBackStack(Ljava/lang/String;I)V

    .line 1196
    invoke-static {p0, p1, p2}, Landroid/app/Fragment;->instantiate(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Landroid/app/Fragment;

    move-result-object v0

    .line 1197
    .local v0, f:Landroid/app/Fragment;
    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    .line 1198
    .local v1, transaction:Landroid/app/FragmentTransaction;
    const/16 v2, 0x1003

    invoke-virtual {v1, v2}, Landroid/app/FragmentTransaction;->setTransition(I)Landroid/app/FragmentTransaction;

    .line 1199
    const v2, 0x10203a2

    invoke-virtual {v1, v2, v0}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 1200
    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 1201
    return-void
.end method


# virtual methods
.method public addPreferencesFromIntent(Landroid/content/Intent;)V
    .locals 2
    .parameter "intent"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1464
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;->requirePreferenceManager()V

    .line 1466
    iget-object v0, p0, Landroid/preference/PreferenceActivity;->mPreferenceManager:Landroid/preference/PreferenceManager;

    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/preference/PreferenceManager;->inflateFromIntent(Landroid/content/Intent;Landroid/preference/PreferenceScreen;)Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/preference/PreferenceActivity;->setPreferenceScreen(Landroid/preference/PreferenceScreen;)V

    .line 1467
    return-void
.end method

.method public addPreferencesFromResource(I)V
    .locals 2
    .parameter "preferencesResId"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1480
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;->requirePreferenceManager()V

    .line 1482
    iget-object v0, p0, Landroid/preference/PreferenceActivity;->mPreferenceManager:Landroid/preference/PreferenceManager;

    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v0, p0, p1, v1}, Landroid/preference/PreferenceManager;->inflateFromResource(Landroid/content/Context;ILandroid/preference/PreferenceScreen;)Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/preference/PreferenceActivity;->setPreferenceScreen(Landroid/preference/PreferenceScreen;)V

    .line 1484
    return-void
.end method

.method findBestMatchingHeader(Landroid/preference/PreferenceActivity$Header;Ljava/util/ArrayList;)Landroid/preference/PreferenceActivity$Header;
    .locals 9
    .parameter "cur"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/preference/PreferenceActivity$Header;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/preference/PreferenceActivity$Header;",
            ">;)",
            "Landroid/preference/PreferenceActivity$Header;"
        }
    .end annotation

    .prologue
    .local p2, from:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/preference/PreferenceActivity$Header;>;"
    const/4 v8, 0x1

    .line 1235
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1236
    .local v2, matches:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/preference/PreferenceActivity$Header;>;"
    const/4 v1, 0x0

    .local v1, j:I
    :goto_0
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v1, v4, :cond_1

    .line 1237
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/preference/PreferenceActivity$Header;

    .line 1238
    .local v3, oh:Landroid/preference/PreferenceActivity$Header;
    if-eq p1, v3, :cond_0

    iget-wide v4, p1, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/16 v6, -0x1

    cmp-long v4, v4, v6

    if-eqz v4, :cond_3

    iget-wide v4, p1, Landroid/preference/PreferenceActivity$Header;->id:J

    iget-wide v6, v3, Landroid/preference/PreferenceActivity$Header;->id:J

    cmp-long v4, v4, v6

    if-nez v4, :cond_3

    .line 1240
    :cond_0
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 1241
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1258
    .end local v3           #oh:Landroid/preference/PreferenceActivity$Header;
    :cond_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1259
    .local v0, NM:I
    if-ne v0, v8, :cond_7

    .line 1260
    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/preference/PreferenceActivity$Header;

    move-object v3, v4

    .line 1276
    :cond_2
    :goto_1
    return-object v3

    .line 1244
    .end local v0           #NM:I
    .restart local v3       #oh:Landroid/preference/PreferenceActivity$Header;
    :cond_3
    iget-object v4, p1, Landroid/preference/PreferenceActivity$Header;->fragment:Ljava/lang/String;

    if-eqz v4, :cond_5

    .line 1245
    iget-object v4, p1, Landroid/preference/PreferenceActivity$Header;->fragment:Ljava/lang/String;

    iget-object v5, v3, Landroid/preference/PreferenceActivity$Header;->fragment:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1246
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1236
    :cond_4
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1248
    :cond_5
    iget-object v4, p1, Landroid/preference/PreferenceActivity$Header;->intent:Landroid/content/Intent;

    if-eqz v4, :cond_6

    .line 1249
    iget-object v4, p1, Landroid/preference/PreferenceActivity$Header;->intent:Landroid/content/Intent;

    iget-object v5, v3, Landroid/preference/PreferenceActivity$Header;->intent:Landroid/content/Intent;

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1250
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 1252
    :cond_6
    iget-object v4, p1, Landroid/preference/PreferenceActivity$Header;->title:Ljava/lang/CharSequence;

    if-eqz v4, :cond_4

    .line 1253
    iget-object v4, p1, Landroid/preference/PreferenceActivity$Header;->title:Ljava/lang/CharSequence;

    iget-object v5, v3, Landroid/preference/PreferenceActivity$Header;->title:Ljava/lang/CharSequence;

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1254
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 1261
    .end local v3           #oh:Landroid/preference/PreferenceActivity$Header;
    .restart local v0       #NM:I
    :cond_7
    if-le v0, v8, :cond_b

    .line 1262
    const/4 v1, 0x0

    :goto_3
    if-ge v1, v0, :cond_b

    .line 1263
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/preference/PreferenceActivity$Header;

    .line 1264
    .restart local v3       #oh:Landroid/preference/PreferenceActivity$Header;
    iget-object v4, p1, Landroid/preference/PreferenceActivity$Header;->fragmentArguments:Landroid/os/Bundle;

    if-eqz v4, :cond_8

    iget-object v4, p1, Landroid/preference/PreferenceActivity$Header;->fragmentArguments:Landroid/os/Bundle;

    iget-object v5, v3, Landroid/preference/PreferenceActivity$Header;->fragmentArguments:Landroid/os/Bundle;

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 1268
    :cond_8
    iget-object v4, p1, Landroid/preference/PreferenceActivity$Header;->extras:Landroid/os/Bundle;

    if-eqz v4, :cond_9

    iget-object v4, p1, Landroid/preference/PreferenceActivity$Header;->extras:Landroid/os/Bundle;

    iget-object v5, v3, Landroid/preference/PreferenceActivity$Header;->extras:Landroid/os/Bundle;

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 1271
    :cond_9
    iget-object v4, p1, Landroid/preference/PreferenceActivity$Header;->title:Ljava/lang/CharSequence;

    if-eqz v4, :cond_a

    iget-object v4, p1, Landroid/preference/PreferenceActivity$Header;->title:Ljava/lang/CharSequence;

    iget-object v5, v3, Landroid/preference/PreferenceActivity$Header;->title:Ljava/lang/CharSequence;

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 1262
    :cond_a
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 1276
    .end local v3           #oh:Landroid/preference/PreferenceActivity$Header;
    :cond_b
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;
    .locals 1
    .parameter "key"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1510
    iget-object v0, p0, Landroid/preference/PreferenceActivity;->mPreferenceManager:Landroid/preference/PreferenceManager;

    if-nez v0, :cond_0

    .line 1511
    const/4 v0, 0x0

    .line 1514
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Landroid/preference/PreferenceActivity;->mPreferenceManager:Landroid/preference/PreferenceManager;

    invoke-virtual {v0, p1}, Landroid/preference/PreferenceManager;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    goto :goto_0
.end method

.method public finishPreferencePanel(Landroid/app/Fragment;ILandroid/content/Intent;)V
    .locals 2
    .parameter "caller"
    .parameter "resultCode"
    .parameter "resultData"

    .prologue
    .line 1349
    iget-boolean v0, p0, Landroid/preference/PreferenceActivity;->mSinglePane:Z

    if-eqz v0, :cond_1

    .line 1350
    invoke-virtual {p0, p2, p3}, Landroid/preference/PreferenceActivity;->setResult(ILandroid/content/Intent;)V

    .line 1351
    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->finish()V

    .line 1362
    :cond_0
    :goto_0
    return-void

    .line 1354
    :cond_1
    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->onBackPressed()V

    .line 1355
    if-eqz p1, :cond_0

    .line 1356
    invoke-virtual {p1}, Landroid/app/Fragment;->getTargetFragment()Landroid/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1357
    invoke-virtual {p1}, Landroid/app/Fragment;->getTargetFragment()Landroid/app/Fragment;

    move-result-object v0

    invoke-virtual {p1}, Landroid/app/Fragment;->getTargetRequestCode()I

    move-result v1

    invoke-virtual {v0, v1, p2, p3}, Landroid/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    goto :goto_0
.end method

.method protected getNextButton()Landroid/widget/Button;
    .locals 1

    .prologue
    .line 1531
    iget-object v0, p0, Landroid/preference/PreferenceActivity;->mNextButton:Landroid/widget/Button;

    return-object v0
.end method

.method public getPreferenceManager()Landroid/preference/PreferenceManager;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1402
    iget-object v0, p0, Landroid/preference/PreferenceActivity;->mPreferenceManager:Landroid/preference/PreferenceManager;

    return-object v0
.end method

.method public getPreferenceScreen()Landroid/preference/PreferenceScreen;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1448
    iget-object v0, p0, Landroid/preference/PreferenceActivity;->mPreferenceManager:Landroid/preference/PreferenceManager;

    if-eqz v0, :cond_0

    .line 1449
    iget-object v0, p0, Landroid/preference/PreferenceActivity;->mPreferenceManager:Landroid/preference/PreferenceManager;

    invoke-virtual {v0}, Landroid/preference/PreferenceManager;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    .line 1451
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasHeaders()Z
    .locals 1

    .prologue
    .line 727
    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/preference/PreferenceActivity;->mPreferenceManager:Landroid/preference/PreferenceManager;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected hasNextButton()Z
    .locals 1

    .prologue
    .line 1527
    iget-object v0, p0, Landroid/preference/PreferenceActivity;->mNextButton:Landroid/widget/Button;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public invalidateHeaders()V
    .locals 2

    .prologue
    const/4 v1, 0x2

    .line 804
    iget-object v0, p0, Landroid/preference/PreferenceActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 805
    iget-object v0, p0, Landroid/preference/PreferenceActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 807
    :cond_0
    return-void
.end method

.method public isMultiPane()Z
    .locals 1

    .prologue
    .line 736
    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->hasHeaders()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/preference/PreferenceActivity;->mPrefsContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public loadHeadersFromResource(ILjava/util/List;)V
    .locals 16
    .parameter "resid"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Landroid/preference/PreferenceActivity$Header;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 817
    .local p2, target:Ljava/util/List;,"Ljava/util/List<Landroid/preference/PreferenceActivity$Header;>;"
    const/4 v9, 0x0

    .line 819
    .local v9, parser:Landroid/content/res/XmlResourceParser;
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Landroid/preference/PreferenceActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    move/from16 v0, p1

    invoke-virtual {v13, v0}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v9

    .line 820
    invoke-static {v9}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v1

    .line 824
    .local v1, attrs:Landroid/util/AttributeSet;
    :cond_0
    invoke-interface {v9}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v12

    .local v12, type:I
    const/4 v13, 0x1

    if-eq v12, v13, :cond_1

    const/4 v13, 0x2

    if-ne v12, v13, :cond_0

    .line 828
    :cond_1
    invoke-interface {v9}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v7

    .line 829
    .local v7, nodeName:Ljava/lang/String;
    const-string/jumbo v13, "preference-headers"

    invoke-virtual {v13, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_3

    .line 830
    new-instance v13, Ljava/lang/RuntimeException;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "XML document must start with <preference-headers> tag; found"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " at "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-interface {v9}, Landroid/content/res/XmlResourceParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v13
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 930
    .end local v1           #attrs:Landroid/util/AttributeSet;
    .end local v7           #nodeName:Ljava/lang/String;
    .end local v12           #type:I
    :catch_0
    move-exception v3

    .line 931
    .local v3, e:Lorg/xmlpull/v1/XmlPullParserException;
    :try_start_1
    new-instance v13, Ljava/lang/RuntimeException;

    const-string v14, "Error parsing headers"

    invoke-direct {v13, v14, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v13
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 935
    .end local v3           #e:Lorg/xmlpull/v1/XmlPullParserException;
    :catchall_0
    move-exception v13

    if-eqz v9, :cond_2

    invoke-interface {v9}, Landroid/content/res/XmlResourceParser;->close()V

    :cond_2
    throw v13

    .line 835
    .restart local v1       #attrs:Landroid/util/AttributeSet;
    .restart local v7       #nodeName:Ljava/lang/String;
    .restart local v12       #type:I
    :cond_3
    const/4 v2, 0x0

    .line 837
    .local v2, curBundle:Landroid/os/Bundle;
    :try_start_2
    invoke-interface {v9}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v8

    .line 839
    .local v8, outerDepth:I
    :cond_4
    :goto_0
    invoke-interface {v9}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v12

    const/4 v13, 0x1

    if-eq v12, v13, :cond_16

    const/4 v13, 0x3

    if-ne v12, v13, :cond_5

    invoke-interface {v9}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v13

    if-le v13, v8, :cond_16

    .line 840
    :cond_5
    const/4 v13, 0x3

    if-eq v12, v13, :cond_4

    const/4 v13, 0x4

    if-eq v12, v13, :cond_4

    .line 844
    invoke-interface {v9}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v7

    .line 845
    const-string/jumbo v13, "header"

    invoke-virtual {v13, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_15

    .line 846
    new-instance v4, Landroid/preference/PreferenceActivity$Header;

    invoke-direct {v4}, Landroid/preference/PreferenceActivity$Header;-><init>()V

    .line 848
    .local v4, header:Landroid/preference/PreferenceActivity$Header;
    invoke-virtual/range {p0 .. p0}, Landroid/preference/PreferenceActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    sget-object v14, Lcom/android/internal/R$styleable;->PreferenceHeader:[I

    invoke-virtual {v13, v1, v14}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v10

    .line 850
    .local v10, sa:Landroid/content/res/TypedArray;
    const/4 v13, 0x1

    const/4 v14, -0x1

    invoke-virtual {v10, v13, v14}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v13

    int-to-long v13, v13

    iput-wide v13, v4, Landroid/preference/PreferenceActivity$Header;->id:J

    .line 853
    const/4 v13, 0x2

    invoke-virtual {v10, v13}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v11

    .line 855
    .local v11, tv:Landroid/util/TypedValue;
    if-eqz v11, :cond_6

    iget v13, v11, Landroid/util/TypedValue;->type:I

    const/4 v14, 0x3

    if-ne v13, v14, :cond_6

    .line 856
    iget v13, v11, Landroid/util/TypedValue;->resourceId:I

    if-eqz v13, :cond_d

    .line 857
    iget v13, v11, Landroid/util/TypedValue;->resourceId:I

    iput v13, v4, Landroid/preference/PreferenceActivity$Header;->titleRes:I

    .line 862
    :cond_6
    :goto_1
    const/4 v13, 0x3

    invoke-virtual {v10, v13}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v11

    .line 864
    if-eqz v11, :cond_7

    iget v13, v11, Landroid/util/TypedValue;->type:I

    const/4 v14, 0x3

    if-ne v13, v14, :cond_7

    .line 865
    iget v13, v11, Landroid/util/TypedValue;->resourceId:I

    if-eqz v13, :cond_e

    .line 866
    iget v13, v11, Landroid/util/TypedValue;->resourceId:I

    iput v13, v4, Landroid/preference/PreferenceActivity$Header;->summaryRes:I

    .line 871
    :cond_7
    :goto_2
    const/4 v13, 0x5

    invoke-virtual {v10, v13}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v11

    .line 873
    if-eqz v11, :cond_8

    iget v13, v11, Landroid/util/TypedValue;->type:I

    const/4 v14, 0x3

    if-ne v13, v14, :cond_8

    .line 874
    iget v13, v11, Landroid/util/TypedValue;->resourceId:I

    if-eqz v13, :cond_f

    .line 875
    iget v13, v11, Landroid/util/TypedValue;->resourceId:I

    iput v13, v4, Landroid/preference/PreferenceActivity$Header;->breadCrumbTitleRes:I

    .line 880
    :cond_8
    :goto_3
    const/4 v13, 0x6

    invoke-virtual {v10, v13}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v11

    .line 882
    if-eqz v11, :cond_9

    iget v13, v11, Landroid/util/TypedValue;->type:I

    const/4 v14, 0x3

    if-ne v13, v14, :cond_9

    .line 883
    iget v13, v11, Landroid/util/TypedValue;->resourceId:I

    if-eqz v13, :cond_10

    .line 884
    iget v13, v11, Landroid/util/TypedValue;->resourceId:I

    iput v13, v4, Landroid/preference/PreferenceActivity$Header;->breadCrumbShortTitleRes:I

    .line 889
    :cond_9
    :goto_4
    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-virtual {v10, v13, v14}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v13

    iput v13, v4, Landroid/preference/PreferenceActivity$Header;->iconRes:I

    .line 891
    const/4 v13, 0x4

    invoke-virtual {v10, v13}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v13

    iput-object v13, v4, Landroid/preference/PreferenceActivity$Header;->fragment:Ljava/lang/String;

    .line 893
    invoke-virtual {v10}, Landroid/content/res/TypedArray;->recycle()V

    .line 895
    if-nez v2, :cond_a

    .line 896
    new-instance v2, Landroid/os/Bundle;

    .end local v2           #curBundle:Landroid/os/Bundle;
    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 899
    .restart local v2       #curBundle:Landroid/os/Bundle;
    :cond_a
    invoke-interface {v9}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v5

    .line 901
    .local v5, innerDepth:I
    :cond_b
    :goto_5
    invoke-interface {v9}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v12

    const/4 v13, 0x1

    if-eq v12, v13, :cond_13

    const/4 v13, 0x3

    if-ne v12, v13, :cond_c

    invoke-interface {v9}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v13

    if-le v13, v5, :cond_13

    .line 902
    :cond_c
    const/4 v13, 0x3

    if-eq v12, v13, :cond_b

    const/4 v13, 0x4

    if-eq v12, v13, :cond_b

    .line 906
    invoke-interface {v9}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v6

    .line 907
    .local v6, innerNodeName:Ljava/lang/String;
    const-string v13, "extra"

    invoke-virtual {v6, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_11

    .line 908
    invoke-virtual/range {p0 .. p0}, Landroid/preference/PreferenceActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const-string v14, "extra"

    invoke-virtual {v13, v14, v1, v2}, Landroid/content/res/Resources;->parseBundleExtra(Ljava/lang/String;Landroid/util/AttributeSet;Landroid/os/Bundle;)V

    .line 909
    invoke-static {v9}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_5

    .line 932
    .end local v1           #attrs:Landroid/util/AttributeSet;
    .end local v2           #curBundle:Landroid/os/Bundle;
    .end local v4           #header:Landroid/preference/PreferenceActivity$Header;
    .end local v5           #innerDepth:I
    .end local v6           #innerNodeName:Ljava/lang/String;
    .end local v7           #nodeName:Ljava/lang/String;
    .end local v8           #outerDepth:I
    .end local v10           #sa:Landroid/content/res/TypedArray;
    .end local v11           #tv:Landroid/util/TypedValue;
    .end local v12           #type:I
    :catch_1
    move-exception v3

    .line 933
    .local v3, e:Ljava/io/IOException;
    :try_start_3
    new-instance v13, Ljava/lang/RuntimeException;

    const-string v14, "Error parsing headers"

    invoke-direct {v13, v14, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v13
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 859
    .end local v3           #e:Ljava/io/IOException;
    .restart local v1       #attrs:Landroid/util/AttributeSet;
    .restart local v2       #curBundle:Landroid/os/Bundle;
    .restart local v4       #header:Landroid/preference/PreferenceActivity$Header;
    .restart local v7       #nodeName:Ljava/lang/String;
    .restart local v8       #outerDepth:I
    .restart local v10       #sa:Landroid/content/res/TypedArray;
    .restart local v11       #tv:Landroid/util/TypedValue;
    .restart local v12       #type:I
    :cond_d
    :try_start_4
    iget-object v13, v11, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    iput-object v13, v4, Landroid/preference/PreferenceActivity$Header;->title:Ljava/lang/CharSequence;

    goto/16 :goto_1

    .line 868
    :cond_e
    iget-object v13, v11, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    iput-object v13, v4, Landroid/preference/PreferenceActivity$Header;->summary:Ljava/lang/CharSequence;

    goto/16 :goto_2

    .line 877
    :cond_f
    iget-object v13, v11, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    iput-object v13, v4, Landroid/preference/PreferenceActivity$Header;->breadCrumbTitle:Ljava/lang/CharSequence;

    goto :goto_3

    .line 886
    :cond_10
    iget-object v13, v11, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    iput-object v13, v4, Landroid/preference/PreferenceActivity$Header;->breadCrumbShortTitle:Ljava/lang/CharSequence;

    goto :goto_4

    .line 911
    .restart local v5       #innerDepth:I
    .restart local v6       #innerNodeName:Ljava/lang/String;
    :cond_11
    const-string/jumbo v13, "intent"

    invoke-virtual {v6, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_12

    .line 912
    invoke-virtual/range {p0 .. p0}, Landroid/preference/PreferenceActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    invoke-static {v13, v9, v1}, Landroid/content/Intent;->parseIntent(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)Landroid/content/Intent;

    move-result-object v13

    iput-object v13, v4, Landroid/preference/PreferenceActivity$Header;->intent:Landroid/content/Intent;

    goto :goto_5

    .line 915
    :cond_12
    invoke-static {v9}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_5

    .line 919
    .end local v6           #innerNodeName:Ljava/lang/String;
    :cond_13
    invoke-virtual {v2}, Landroid/os/Bundle;->size()I

    move-result v13

    if-lez v13, :cond_14

    .line 920
    iput-object v2, v4, Landroid/preference/PreferenceActivity$Header;->fragmentArguments:Landroid/os/Bundle;

    .line 921
    const/4 v2, 0x0

    .line 924
    :cond_14
    move-object/from16 v0, p2

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 926
    .end local v4           #header:Landroid/preference/PreferenceActivity$Header;
    .end local v5           #innerDepth:I
    .end local v10           #sa:Landroid/content/res/TypedArray;
    .end local v11           #tv:Landroid/util/TypedValue;
    :cond_15
    invoke-static {v9}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto/16 :goto_0

    .line 935
    :cond_16
    if-eqz v9, :cond_17

    invoke-interface {v9}, Landroid/content/res/XmlResourceParser;->close()V

    .line 938
    :cond_17
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 1013
    invoke-super {p0, p1, p2, p3}, Landroid/app/ListActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 1015
    iget-object v0, p0, Landroid/preference/PreferenceActivity;->mPreferenceManager:Landroid/preference/PreferenceManager;

    if-eqz v0, :cond_0

    .line 1016
    iget-object v0, p0, Landroid/preference/PreferenceActivity;->mPreferenceManager:Landroid/preference/PreferenceManager;

    invoke-virtual {v0, p1, p2, p3}, Landroid/preference/PreferenceManager;->dispatchActivityResult(IILandroid/content/Intent;)V

    .line 1018
    :cond_0
    return-void
.end method

.method public onBuildHeaders(Ljava/util/List;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/preference/PreferenceActivity$Header;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 797
    .local p1, target:Ljava/util/List;,"Ljava/util/List<Landroid/preference/PreferenceActivity$Header;>;"
    return-void
.end method

.method public onBuildStartFragmentIntent(Ljava/lang/String;Landroid/os/Bundle;II)Landroid/content/Intent;
    .locals 3
    .parameter "fragmentName"
    .parameter "args"
    .parameter "titleRes"
    .parameter "shortTitleRes"

    .prologue
    .line 1083
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1084
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 1085
    const-string v1, ":android:show_fragment"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1086
    const-string v1, ":android:show_fragment_args"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 1087
    const-string v1, ":android:show_fragment_title"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1088
    const-string v1, ":android:show_fragment_short_title"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1089
    const-string v1, ":android:no_headers"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1090
    return-object v0
.end method

.method public onContentChanged()V
    .locals 1

    .prologue
    .line 1022
    invoke-super {p0}, Landroid/app/ListActivity;->onContentChanged()V

    .line 1024
    iget-object v0, p0, Landroid/preference/PreferenceActivity;->mPreferenceManager:Landroid/preference/PreferenceManager;

    if-eqz v0, :cond_0

    .line 1025
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;->postBindPreferences()V

    .line 1027
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 23
    .parameter "savedInstanceState"

    .prologue
    .line 558
    invoke-super/range {p0 .. p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 560
    invoke-virtual/range {p0 .. p0}, Landroid/preference/PreferenceActivity;->getWindow()Landroid/view/Window;

    move-result-object v20

    const/high16 v21, 0x100

    const/high16 v22, 0x100

    invoke-virtual/range {v20 .. v22}, Landroid/view/Window;->setFlags(II)V

    .line 562
    sget-object v20, Lcom/android/internal/R$styleable;->Theme:[I

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceActivity;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v4

    .line 565
    .local v4, a:Landroid/content/res/TypedArray;
    const/16 v20, 0xf8

    const v21, 0x109009b

    :try_start_0
    move/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v4, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v20

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Landroid/preference/PreferenceActivity;->mPreferenceActivityLayoutResID:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 570
    :goto_0
    const v20, 0x1090097

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Landroid/preference/PreferenceActivity;->mPreferenceHeaderItemLayoutResID:I

    .line 572
    const/16 v20, 0xf9

    const v21, 0x1090097

    :try_start_1
    move/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v4, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v20

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Landroid/preference/PreferenceActivity;->mPreferenceHeaderItemLayoutResID:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 577
    :goto_1
    const/16 v20, 0x118

    const/16 v21, 0x0

    move/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v4, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v20

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/preference/PreferenceActivity;->mIsDeviceDefault:Z

    .line 579
    invoke-virtual {v4}, Landroid/content/res/TypedArray;->recycle()V

    .line 581
    move-object/from16 v0, p0

    iget v0, v0, Landroid/preference/PreferenceActivity;->mPreferenceActivityLayoutResID:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceActivity;->setContentView(I)V

    .line 583
    const v20, 0x10203a0

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Landroid/widget/FrameLayout;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/preference/PreferenceActivity;->mListFooter:Landroid/widget/FrameLayout;

    .line 584
    const v20, 0x10203a1

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Landroid/view/ViewGroup;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/preference/PreferenceActivity;->mPrefsContainer:Landroid/view/ViewGroup;

    .line 585
    invoke-virtual/range {p0 .. p0}, Landroid/preference/PreferenceActivity;->onIsHidingHeaders()Z

    move-result v11

    .line 586
    .local v11, hidingHeaders:Z
    if-nez v11, :cond_0

    invoke-virtual/range {p0 .. p0}, Landroid/preference/PreferenceActivity;->onIsMultiPane()Z

    move-result v20

    if-nez v20, :cond_6

    :cond_0
    const/16 v20, 0x1

    :goto_2
    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/preference/PreferenceActivity;->mSinglePane:Z

    .line 587
    invoke-virtual/range {p0 .. p0}, Landroid/preference/PreferenceActivity;->getIntent()Landroid/content/Intent;

    move-result-object v20

    const-string v21, ":android:show_fragment"

    invoke-virtual/range {v20 .. v21}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 588
    .local v13, initialFragment:Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Landroid/preference/PreferenceActivity;->getIntent()Landroid/content/Intent;

    move-result-object v20

    const-string v21, ":android:show_fragment_args"

    invoke-virtual/range {v20 .. v21}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v12

    .line 589
    .local v12, initialArguments:Landroid/os/Bundle;
    invoke-virtual/range {p0 .. p0}, Landroid/preference/PreferenceActivity;->getIntent()Landroid/content/Intent;

    move-result-object v20

    const-string v21, ":android:show_fragment_title"

    const/16 v22, 0x0

    invoke-virtual/range {v20 .. v22}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v16

    .line 590
    .local v16, initialTitle:I
    invoke-virtual/range {p0 .. p0}, Landroid/preference/PreferenceActivity;->getIntent()Landroid/content/Intent;

    move-result-object v20

    const-string v21, ":android:show_fragment_short_title"

    const/16 v22, 0x0

    invoke-virtual/range {v20 .. v22}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v14

    .line 592
    .local v14, initialShortTitle:I
    if-eqz p1, :cond_7

    .line 595
    const-string v20, ":android:headers"

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v10

    .line 596
    .local v10, headers:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/preference/PreferenceActivity$Header;>;"
    if-eqz v10, :cond_1

    .line 597
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/preference/PreferenceActivity;->mHeaders:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 598
    const-string v20, ":android:cur_header"

    const/16 v21, -0x1

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v7

    .line 600
    .local v7, curHeader:I
    if-ltz v7, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/preference/PreferenceActivity;->mHeaders:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->size()I

    move-result v20

    move/from16 v0, v20

    if-ge v7, v0, :cond_1

    .line 601
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/preference/PreferenceActivity;->mHeaders:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Landroid/preference/PreferenceActivity$Header;

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceActivity;->setSelectedHeader(Landroid/preference/PreferenceActivity$Header;)V

    .line 640
    .end local v7           #curHeader:I
    .end local v10           #headers:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/preference/PreferenceActivity$Header;>;"
    :cond_1
    :goto_3
    if-eqz v13, :cond_c

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/preference/PreferenceActivity;->mSinglePane:Z

    move/from16 v20, v0

    if-eqz v20, :cond_c

    .line 642
    const v20, 0x102039f

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v20

    const/16 v21, 0x8

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->setVisibility(I)V

    .line 643
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/preference/PreferenceActivity;->mPrefsContainer:Landroid/view/ViewGroup;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 644
    if-eqz v16, :cond_2

    .line 645
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v17

    .line 646
    .local v17, initialTitleStr:Ljava/lang/CharSequence;
    if-eqz v14, :cond_b

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Landroid/preference/PreferenceActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v15

    .line 648
    .local v15, initialShortTitleStr:Ljava/lang/CharSequence;
    :goto_4
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1, v15}, Landroid/preference/PreferenceActivity;->showBreadCrumbs(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 671
    .end local v15           #initialShortTitleStr:Ljava/lang/CharSequence;
    .end local v17           #initialTitleStr:Ljava/lang/CharSequence;
    :cond_2
    :goto_5
    invoke-virtual/range {p0 .. p0}, Landroid/preference/PreferenceActivity;->getIntent()Landroid/content/Intent;

    move-result-object v18

    .line 672
    .local v18, intent:Landroid/content/Intent;
    const-string v20, "extra_prefs_show_button_bar"

    const/16 v21, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v20

    if-eqz v20, :cond_5

    .line 674
    const v20, 0x10203a3

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v20

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->setVisibility(I)V

    .line 676
    const v20, 0x10203a4

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    .line 677
    .local v5, backButton:Landroid/widget/Button;
    new-instance v20, Landroid/preference/PreferenceActivity$2;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/preference/PreferenceActivity$2;-><init>(Landroid/preference/PreferenceActivity;)V

    move-object/from16 v0, v20

    invoke-virtual {v5, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 683
    const v20, 0x10203a5

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/widget/Button;

    .line 684
    .local v19, skipButton:Landroid/widget/Button;
    new-instance v20, Landroid/preference/PreferenceActivity$3;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/preference/PreferenceActivity$3;-><init>(Landroid/preference/PreferenceActivity;)V

    invoke-virtual/range {v19 .. v20}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 690
    const v20, 0x10203a6

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Landroid/widget/Button;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/preference/PreferenceActivity;->mNextButton:Landroid/widget/Button;

    .line 691
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/preference/PreferenceActivity;->mNextButton:Landroid/widget/Button;

    move-object/from16 v20, v0

    new-instance v21, Landroid/preference/PreferenceActivity$4;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/preference/PreferenceActivity$4;-><init>(Landroid/preference/PreferenceActivity;)V

    invoke-virtual/range {v20 .. v21}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 699
    const-string v20, "extra_prefs_set_next_text"

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_3

    .line 700
    const-string v20, "extra_prefs_set_next_text"

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 701
    .local v6, buttonText:Ljava/lang/String;
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v20

    if-eqz v20, :cond_10

    .line 702
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/preference/PreferenceActivity;->mNextButton:Landroid/widget/Button;

    move-object/from16 v20, v0

    const/16 v21, 0x8

    invoke-virtual/range {v20 .. v21}, Landroid/widget/Button;->setVisibility(I)V

    .line 708
    .end local v6           #buttonText:Ljava/lang/String;
    :cond_3
    :goto_6
    const-string v20, "extra_prefs_set_back_text"

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_4

    .line 709
    const-string v20, "extra_prefs_set_back_text"

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 710
    .restart local v6       #buttonText:Ljava/lang/String;
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v20

    if-eqz v20, :cond_11

    .line 711
    const/16 v20, 0x8

    move/from16 v0, v20

    invoke-virtual {v5, v0}, Landroid/widget/Button;->setVisibility(I)V

    .line 717
    .end local v6           #buttonText:Ljava/lang/String;
    :cond_4
    :goto_7
    const-string v20, "extra_prefs_show_skip"

    const/16 v21, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v20

    if-eqz v20, :cond_5

    .line 718
    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Landroid/widget/Button;->setVisibility(I)V

    .line 721
    .end local v5           #backButton:Landroid/widget/Button;
    .end local v19           #skipButton:Landroid/widget/Button;
    :cond_5
    return-void

    .line 566
    .end local v11           #hidingHeaders:Z
    .end local v12           #initialArguments:Landroid/os/Bundle;
    .end local v13           #initialFragment:Ljava/lang/String;
    .end local v14           #initialShortTitle:I
    .end local v16           #initialTitle:I
    .end local v18           #intent:Landroid/content/Intent;
    :catch_0
    move-exception v8

    .line 567
    .local v8, e:Ljava/lang/Exception;
    const-string v20, "PreferenceActivity"

    const-string/jumbo v21, "mPreferenceActivityLayoutResID not found."

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 573
    .end local v8           #e:Ljava/lang/Exception;
    :catch_1
    move-exception v8

    .line 574
    .restart local v8       #e:Ljava/lang/Exception;
    const-string v20, "PreferenceActivity"

    const-string/jumbo v21, "mPreferenceHeaderItemLayoutResID not found."

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 586
    .end local v8           #e:Ljava/lang/Exception;
    .restart local v11       #hidingHeaders:Z
    :cond_6
    const/16 v20, 0x0

    goto/16 :goto_2

    .line 606
    .restart local v12       #initialArguments:Landroid/os/Bundle;
    .restart local v13       #initialFragment:Ljava/lang/String;
    .restart local v14       #initialShortTitle:I
    .restart local v16       #initialTitle:I
    :cond_7
    if-eqz v13, :cond_9

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/preference/PreferenceActivity;->mSinglePane:Z

    move/from16 v20, v0

    if-eqz v20, :cond_9

    .line 610
    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v12}, Landroid/preference/PreferenceActivity;->switchToHeader(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 611
    if-eqz v16, :cond_1

    .line 612
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v17

    .line 613
    .restart local v17       #initialTitleStr:Ljava/lang/CharSequence;
    if-eqz v14, :cond_8

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Landroid/preference/PreferenceActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v15

    .line 615
    .restart local v15       #initialShortTitleStr:Ljava/lang/CharSequence;
    :goto_8
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1, v15}, Landroid/preference/PreferenceActivity;->showBreadCrumbs(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    .line 613
    .end local v15           #initialShortTitleStr:Ljava/lang/CharSequence;
    :cond_8
    const/4 v15, 0x0

    goto :goto_8

    .line 620
    .end local v17           #initialTitleStr:Ljava/lang/CharSequence;
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/preference/PreferenceActivity;->mHeaders:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceActivity;->onBuildHeaders(Ljava/util/List;)V

    .line 625
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/preference/PreferenceActivity;->mHeaders:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->size()I

    move-result v20

    if-lez v20, :cond_1

    .line 626
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/preference/PreferenceActivity;->mSinglePane:Z

    move/from16 v20, v0

    if-nez v20, :cond_1

    .line 627
    if-nez v13, :cond_a

    .line 628
    invoke-virtual/range {p0 .. p0}, Landroid/preference/PreferenceActivity;->onGetInitialHeader()Landroid/preference/PreferenceActivity$Header;

    move-result-object v9

    .line 629
    .local v9, h:Landroid/preference/PreferenceActivity$Header;
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Landroid/preference/PreferenceActivity;->switchToHeader(Landroid/preference/PreferenceActivity$Header;)V

    goto/16 :goto_3

    .line 631
    .end local v9           #h:Landroid/preference/PreferenceActivity$Header;
    :cond_a
    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v12}, Landroid/preference/PreferenceActivity;->switchToHeader(Ljava/lang/String;Landroid/os/Bundle;)V

    goto/16 :goto_3

    .line 646
    .restart local v17       #initialTitleStr:Ljava/lang/CharSequence;
    :cond_b
    const/4 v15, 0x0

    goto/16 :goto_4

    .line 650
    .end local v17           #initialTitleStr:Ljava/lang/CharSequence;
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/preference/PreferenceActivity;->mHeaders:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->size()I

    move-result v20

    if-lez v20, :cond_e

    .line 651
    new-instance v20, Landroid/preference/PreferenceActivity$HeaderAdapter;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/preference/PreferenceActivity;->mHeaders:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/preference/PreferenceActivity;->mPreferenceHeaderItemLayoutResID:I

    move/from16 v22, v0

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    move-object/from16 v2, v21

    move/from16 v3, v22

    invoke-direct {v0, v1, v2, v3}, Landroid/preference/PreferenceActivity$HeaderAdapter;-><init>(Landroid/content/Context;Ljava/util/List;I)V

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 652
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/preference/PreferenceActivity;->mSinglePane:Z

    move/from16 v20, v0

    if-nez v20, :cond_2

    .line 654
    invoke-virtual/range {p0 .. p0}, Landroid/preference/PreferenceActivity;->getListView()Landroid/widget/ListView;

    move-result-object v20

    const/16 v21, 0x1

    invoke-virtual/range {v20 .. v21}, Landroid/widget/ListView;->setChoiceMode(I)V

    .line 655
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/preference/PreferenceActivity;->mCurHeader:Landroid/preference/PreferenceActivity$Header;

    move-object/from16 v20, v0

    if-eqz v20, :cond_d

    .line 656
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/preference/PreferenceActivity;->mCurHeader:Landroid/preference/PreferenceActivity$Header;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceActivity;->setSelectedHeader(Landroid/preference/PreferenceActivity$Header;)V

    .line 658
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/preference/PreferenceActivity;->mPrefsContainer:Landroid/view/ViewGroup;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto/16 :goto_5

    .line 663
    :cond_e
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/preference/PreferenceActivity;->mIsDeviceDefault:Z

    move/from16 v20, v0

    if-eqz v20, :cond_f

    const v20, 0x10900f5

    :goto_9
    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceActivity;->setContentView(I)V

    .line 664
    const v20, 0x10203a0

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Landroid/widget/FrameLayout;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/preference/PreferenceActivity;->mListFooter:Landroid/widget/FrameLayout;

    .line 665
    const v20, 0x10203a2

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Landroid/view/ViewGroup;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/preference/PreferenceActivity;->mPrefsContainer:Landroid/view/ViewGroup;

    .line 666
    new-instance v20, Landroid/preference/PreferenceManager;

    const/16 v21, 0x64

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    move/from16 v2, v21

    invoke-direct {v0, v1, v2}, Landroid/preference/PreferenceManager;-><init>(Landroid/app/Activity;I)V

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/preference/PreferenceActivity;->mPreferenceManager:Landroid/preference/PreferenceManager;

    .line 667
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/preference/PreferenceActivity;->mPreferenceManager:Landroid/preference/PreferenceManager;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceManager;->setOnPreferenceTreeClickListener(Landroid/preference/PreferenceManager$OnPreferenceTreeClickListener;)V

    goto/16 :goto_5

    .line 663
    :cond_f
    const v20, 0x109009c

    goto :goto_9

    .line 705
    .restart local v5       #backButton:Landroid/widget/Button;
    .restart local v6       #buttonText:Ljava/lang/String;
    .restart local v18       #intent:Landroid/content/Intent;
    .restart local v19       #skipButton:Landroid/widget/Button;
    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/preference/PreferenceActivity;->mNextButton:Landroid/widget/Button;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v6}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_6

    .line 714
    :cond_11
    invoke-virtual {v5, v6}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_7
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 961
    invoke-super {p0}, Landroid/app/ListActivity;->onDestroy()V

    .line 963
    iget-object v0, p0, Landroid/preference/PreferenceActivity;->mPreferenceManager:Landroid/preference/PreferenceManager;

    if-eqz v0, :cond_0

    .line 964
    iget-object v0, p0, Landroid/preference/PreferenceActivity;->mPreferenceManager:Landroid/preference/PreferenceManager;

    invoke-virtual {v0}, Landroid/preference/PreferenceManager;->dispatchActivityDestroy()V

    .line 966
    :cond_0
    return-void
.end method

.method public onGetInitialHeader()Landroid/preference/PreferenceActivity$Header;
    .locals 2

    .prologue
    .line 769
    iget-object v0, p0, Landroid/preference/PreferenceActivity;->mHeaders:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceActivity$Header;

    return-object v0
.end method

.method public onGetNewHeader()Landroid/preference/PreferenceActivity$Header;
    .locals 1

    .prologue
    .line 779
    const/4 v0, 0x0

    return-object v0
.end method

.method public onHeaderClick(Landroid/preference/PreferenceActivity$Header;I)V
    .locals 7
    .parameter "header"
    .parameter "position"

    .prologue
    .line 1049
    iget-object v0, p1, Landroid/preference/PreferenceActivity$Header;->fragment:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 1050
    iget-boolean v0, p0, Landroid/preference/PreferenceActivity;->mSinglePane:Z

    if-eqz v0, :cond_2

    .line 1051
    iget v5, p1, Landroid/preference/PreferenceActivity$Header;->breadCrumbTitleRes:I

    .line 1052
    .local v5, titleRes:I
    iget v6, p1, Landroid/preference/PreferenceActivity$Header;->breadCrumbShortTitleRes:I

    .line 1053
    .local v6, shortTitleRes:I
    if-nez v5, :cond_0

    .line 1054
    iget v5, p1, Landroid/preference/PreferenceActivity$Header;->titleRes:I

    .line 1055
    const/4 v6, 0x0

    .line 1057
    :cond_0
    iget-object v1, p1, Landroid/preference/PreferenceActivity$Header;->fragment:Ljava/lang/String;

    iget-object v2, p1, Landroid/preference/PreferenceActivity$Header;->fragmentArguments:Landroid/os/Bundle;

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Landroid/preference/PreferenceActivity;->startWithFragment(Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Fragment;III)V

    .line 1065
    .end local v5           #titleRes:I
    .end local v6           #shortTitleRes:I
    :cond_1
    :goto_0
    return-void

    .line 1060
    :cond_2
    invoke-virtual {p0, p1}, Landroid/preference/PreferenceActivity;->switchToHeader(Landroid/preference/PreferenceActivity$Header;)V

    goto :goto_0

    .line 1062
    :cond_3
    iget-object v0, p1, Landroid/preference/PreferenceActivity$Header;->intent:Landroid/content/Intent;

    if-eqz v0, :cond_1

    .line 1063
    iget-object v0, p1, Landroid/preference/PreferenceActivity$Header;->intent:Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/preference/PreferenceActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public onIsHidingHeaders()Z
    .locals 3

    .prologue
    .line 758
    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, ":android:no_headers"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public onIsMultiPane()Z
    .locals 3

    .prologue
    .line 745
    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1110002

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    .line 747
    .local v0, preferMultiPane:Z
    return v0
.end method

.method protected onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 2
    .parameter "l"
    .parameter "v"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 1031
    invoke-super/range {p0 .. p5}, Landroid/app/ListActivity;->onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V

    .line 1033
    iget-object v1, p0, Landroid/app/ListActivity;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v1, :cond_0

    .line 1034
    iget-object v1, p0, Landroid/app/ListActivity;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1, p3}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    .line 1035
    .local v0, item:Ljava/lang/Object;
    instance-of v1, v0, Landroid/preference/PreferenceActivity$Header;

    if-eqz v1, :cond_0

    check-cast v0, Landroid/preference/PreferenceActivity$Header;

    .end local v0           #item:Ljava/lang/Object;
    invoke-virtual {p0, v0, p3}, Landroid/preference/PreferenceActivity;->onHeaderClick(Landroid/preference/PreferenceActivity$Header;I)V

    .line 1037
    :cond_0
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 1
    .parameter "intent"

    .prologue
    .line 1519
    iget-object v0, p0, Landroid/preference/PreferenceActivity;->mPreferenceManager:Landroid/preference/PreferenceManager;

    if-eqz v0, :cond_0

    .line 1520
    iget-object v0, p0, Landroid/preference/PreferenceActivity;->mPreferenceManager:Landroid/preference/PreferenceManager;

    invoke-virtual {v0, p1}, Landroid/preference/PreferenceManager;->dispatchNewIntent(Landroid/content/Intent;)V

    .line 1522
    :cond_0
    return-void
.end method

.method public onPreferenceStartFragment(Landroid/preference/PreferenceFragment;Landroid/preference/Preference;)Z
    .locals 7
    .parameter "caller"
    .parameter "pref"

    .prologue
    .line 1366
    invoke-virtual {p2}, Landroid/preference/Preference;->getFragment()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Landroid/preference/Preference;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {p2}, Landroid/preference/Preference;->getTitleRes()I

    move-result v3

    invoke-virtual {p2}, Landroid/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Landroid/preference/PreferenceActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    .line 1368
    const/4 v0, 0x1

    return v0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 1
    .parameter "preferenceScreen"
    .parameter "preference"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1494
    const/4 v0, 0x0

    return v0
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .parameter "state"

    .prologue
    .line 994
    iget-object v2, p0, Landroid/preference/PreferenceActivity;->mPreferenceManager:Landroid/preference/PreferenceManager;

    if-eqz v2, :cond_0

    .line 995
    const-string v2, ":android:preferences"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 996
    .local v0, container:Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 997
    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    .line 998
    .local v1, preferenceScreen:Landroid/preference/PreferenceScreen;
    if-eqz v1, :cond_0

    .line 999
    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->restoreHierarchyState(Landroid/os/Bundle;)V

    .line 1000
    iput-object p1, p0, Landroid/preference/PreferenceActivity;->mSavedInstanceState:Landroid/os/Bundle;

    .line 1009
    .end local v0           #container:Landroid/os/Bundle;
    .end local v1           #preferenceScreen:Landroid/preference/PreferenceScreen;
    :goto_0
    return-void

    .line 1008
    :cond_0
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 5
    .parameter "outState"

    .prologue
    .line 970
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 972
    iget-object v3, p0, Landroid/preference/PreferenceActivity;->mHeaders:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_0

    .line 973
    const-string v3, ":android:headers"

    iget-object v4, p0, Landroid/preference/PreferenceActivity;->mHeaders:Ljava/util/ArrayList;

    invoke-virtual {p1, v3, v4}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 974
    iget-object v3, p0, Landroid/preference/PreferenceActivity;->mCurHeader:Landroid/preference/PreferenceActivity$Header;

    if-eqz v3, :cond_0

    .line 975
    iget-object v3, p0, Landroid/preference/PreferenceActivity;->mHeaders:Ljava/util/ArrayList;

    iget-object v4, p0, Landroid/preference/PreferenceActivity;->mCurHeader:Landroid/preference/PreferenceActivity$Header;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    .line 976
    .local v1, index:I
    if-ltz v1, :cond_0

    .line 977
    const-string v3, ":android:cur_header"

    invoke-virtual {p1, v3, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 982
    .end local v1           #index:I
    :cond_0
    iget-object v3, p0, Landroid/preference/PreferenceActivity;->mPreferenceManager:Landroid/preference/PreferenceManager;

    if-eqz v3, :cond_1

    .line 983
    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    .line 984
    .local v2, preferenceScreen:Landroid/preference/PreferenceScreen;
    if-eqz v2, :cond_1

    .line 985
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 986
    .local v0, container:Landroid/os/Bundle;
    invoke-virtual {v2, v0}, Landroid/preference/PreferenceScreen;->saveHierarchyState(Landroid/os/Bundle;)V

    .line 987
    const-string v3, ":android:preferences"

    invoke-virtual {p1, v3, v0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 990
    .end local v0           #container:Landroid/os/Bundle;
    .end local v2           #preferenceScreen:Landroid/preference/PreferenceScreen;
    :cond_1
    return-void
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 952
    invoke-super {p0}, Landroid/app/ListActivity;->onStop()V

    .line 954
    iget-object v0, p0, Landroid/preference/PreferenceActivity;->mPreferenceManager:Landroid/preference/PreferenceManager;

    if-eqz v0, :cond_0

    .line 955
    iget-object v0, p0, Landroid/preference/PreferenceActivity;->mPreferenceManager:Landroid/preference/PreferenceManager;

    invoke-virtual {v0}, Landroid/preference/PreferenceManager;->dispatchActivityStop()V

    .line 957
    :cond_0
    return-void
.end method

.method protected setActionBarShadow(Z)V
    .locals 7
    .parameter "use"

    .prologue
    const/4 v6, 0x0

    .line 533
    iget-boolean v4, p0, Landroid/preference/PreferenceActivity;->mIsDeviceDefault:Z

    if-nez v4, :cond_1

    .line 551
    :cond_0
    :goto_0
    return-void

    .line 535
    :cond_1
    const v4, 0x10203fe

    invoke-virtual {p0, v4}, Landroid/preference/PreferenceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    .line 536
    .local v3, shadowLayout:Landroid/view/ViewGroup;
    const v4, 0x1020002

    invoke-virtual {p0, v4}, Landroid/preference/PreferenceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    .line 538
    .local v1, rootLayout:Landroid/widget/FrameLayout;
    if-nez v3, :cond_2

    .line 539
    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v4

    const-string/jumbo v5, "layout_inflater"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 540
    .local v0, inflater:Landroid/view/LayoutInflater;
    const v4, 0x10900e7

    invoke-virtual {v0, v4, v1, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 541
    .local v2, shadow:Landroid/view/View;
    if-eqz v1, :cond_0

    if-eqz p1, :cond_0

    .line 542
    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    goto :goto_0

    .line 546
    .end local v0           #inflater:Landroid/view/LayoutInflater;
    .end local v2           #shadow:Landroid/view/View;
    :cond_2
    if-eqz p1, :cond_3

    .line 547
    invoke-virtual {v3, v6}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_0

    .line 549
    :cond_3
    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_0
.end method

.method public setListFooter(Landroid/view/View;)V
    .locals 4
    .parameter "view"

    .prologue
    .line 944
    iget-object v0, p0, Landroid/preference/PreferenceActivity;->mListFooter:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 945
    iget-object v0, p0, Landroid/preference/PreferenceActivity;->mListFooter:Landroid/widget/FrameLayout;

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v1, v2, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, p1, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 948
    return-void
.end method

.method public setParentTitle(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;)V
    .locals 1
    .parameter "title"
    .parameter "shortTitle"
    .parameter "listener"

    .prologue
    .line 1165
    iget-object v0, p0, Landroid/preference/PreferenceActivity;->mFragmentBreadCrumbs:Landroid/app/FragmentBreadCrumbs;

    if-eqz v0, :cond_0

    .line 1166
    iget-object v0, p0, Landroid/preference/PreferenceActivity;->mFragmentBreadCrumbs:Landroid/app/FragmentBreadCrumbs;

    invoke-virtual {v0, p1, p2, p3}, Landroid/app/FragmentBreadCrumbs;->setParentTitle(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;)V

    .line 1168
    :cond_0
    return-void
.end method

.method public setPreferenceScreen(Landroid/preference/PreferenceScreen;)V
    .locals 2
    .parameter "preferenceScreen"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1425
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;->requirePreferenceManager()V

    .line 1427
    iget-object v1, p0, Landroid/preference/PreferenceActivity;->mPreferenceManager:Landroid/preference/PreferenceManager;

    invoke-virtual {v1, p1}, Landroid/preference/PreferenceManager;->setPreferences(Landroid/preference/PreferenceScreen;)Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz p1, :cond_0

    .line 1428
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;->postBindPreferences()V

    .line 1429
    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1}, Landroid/preference/PreferenceScreen;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    .line 1431
    .local v0, title:Ljava/lang/CharSequence;
    if-eqz v0, :cond_0

    .line 1432
    invoke-virtual {p0, v0}, Landroid/preference/PreferenceActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 1435
    .end local v0           #title:Ljava/lang/CharSequence;
    :cond_0
    return-void
.end method

.method setSelectedHeader(Landroid/preference/PreferenceActivity$Header;)V
    .locals 3
    .parameter "header"

    .prologue
    .line 1171
    iput-object p1, p0, Landroid/preference/PreferenceActivity;->mCurHeader:Landroid/preference/PreferenceActivity$Header;

    .line 1172
    iget-object v1, p0, Landroid/preference/PreferenceActivity;->mHeaders:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 1173
    .local v0, index:I
    if-ltz v0, :cond_1

    .line 1174
    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getListView()Landroid/widget/ListView;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 1175
    iget-object v1, p0, Landroid/app/ListActivity;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/app/ListActivity;->mAdapter:Landroid/widget/ListAdapter;

    instance-of v1, v1, Landroid/preference/PreferenceActivity$HeaderAdapter;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/app/ListActivity;->mAdapter:Landroid/widget/ListAdapter;

    check-cast v1, Landroid/preference/PreferenceActivity$HeaderAdapter;

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceActivity$HeaderAdapter;->setSelectedId(I)V

    .line 1179
    :cond_0
    :goto_0
    invoke-virtual {p0, p1}, Landroid/preference/PreferenceActivity;->showBreadCrumbs(Landroid/preference/PreferenceActivity$Header;)V

    .line 1180
    return-void

    .line 1177
    :cond_1
    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ListView;->clearChoices()V

    goto :goto_0
.end method

.method showBreadCrumbs(Landroid/preference/PreferenceActivity$Header;)V
    .locals 3
    .parameter "header"

    .prologue
    .line 1183
    if-eqz p1, :cond_2

    .line 1184
    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/preference/PreferenceActivity$Header;->getBreadCrumbTitle(Landroid/content/res/Resources;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 1185
    .local v0, title:Ljava/lang/CharSequence;
    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/preference/PreferenceActivity$Header;->getTitle(Landroid/content/res/Resources;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 1186
    :cond_0
    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    .line 1187
    :cond_1
    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/preference/PreferenceActivity$Header;->getBreadCrumbShortTitle(Landroid/content/res/Resources;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/preference/PreferenceActivity;->showBreadCrumbs(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 1191
    .end local v0           #title:Ljava/lang/CharSequence;
    :goto_0
    return-void

    .line 1189
    :cond_2
    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/preference/PreferenceActivity;->showBreadCrumbs(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public showBreadCrumbs(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .locals 5
    .parameter "title"
    .parameter "shortTitle"

    .prologue
    const/4 v4, 0x0

    .line 1135
    iget-object v2, p0, Landroid/preference/PreferenceActivity;->mFragmentBreadCrumbs:Landroid/app/FragmentBreadCrumbs;

    if-nez v2, :cond_2

    .line 1136
    const v2, 0x1020016

    invoke-virtual {p0, v2}, Landroid/preference/PreferenceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1139
    .local v0, crumbs:Landroid/view/View;
    :try_start_0
    check-cast v0, Landroid/app/FragmentBreadCrumbs;

    .end local v0           #crumbs:Landroid/view/View;
    iput-object v0, p0, Landroid/preference/PreferenceActivity;->mFragmentBreadCrumbs:Landroid/app/FragmentBreadCrumbs;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1143
    iget-object v2, p0, Landroid/preference/PreferenceActivity;->mFragmentBreadCrumbs:Landroid/app/FragmentBreadCrumbs;

    if-nez v2, :cond_1

    .line 1144
    if-eqz p1, :cond_0

    .line 1145
    invoke-virtual {p0, p1}, Landroid/preference/PreferenceActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 1154
    :cond_0
    :goto_0
    return-void

    .line 1140
    :catch_0
    move-exception v1

    .line 1141
    .local v1, e:Ljava/lang/ClassCastException;
    goto :goto_0

    .line 1149
    .end local v1           #e:Ljava/lang/ClassCastException;
    :cond_1
    iget-object v2, p0, Landroid/preference/PreferenceActivity;->mFragmentBreadCrumbs:Landroid/app/FragmentBreadCrumbs;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/app/FragmentBreadCrumbs;->setMaxVisible(I)V

    .line 1150
    iget-object v2, p0, Landroid/preference/PreferenceActivity;->mFragmentBreadCrumbs:Landroid/app/FragmentBreadCrumbs;

    invoke-virtual {v2, p0}, Landroid/app/FragmentBreadCrumbs;->setActivity(Landroid/app/Activity;)V

    .line 1152
    :cond_2
    iget-object v2, p0, Landroid/preference/PreferenceActivity;->mFragmentBreadCrumbs:Landroid/app/FragmentBreadCrumbs;

    invoke-virtual {v2, p1, p2}, Landroid/app/FragmentBreadCrumbs;->setTitle(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 1153
    iget-object v2, p0, Landroid/preference/PreferenceActivity;->mFragmentBreadCrumbs:Landroid/app/FragmentBreadCrumbs;

    invoke-virtual {v2, v4, v4, v4}, Landroid/app/FragmentBreadCrumbs;->setParentTitle(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method public startPreferenceFragment(Landroid/app/Fragment;Z)V
    .locals 2
    .parameter "fragment"
    .parameter "push"

    .prologue
    .line 1287
    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    .line 1288
    .local v0, transaction:Landroid/app/FragmentTransaction;
    const v1, 0x10203a2

    invoke-virtual {v0, v1, p1}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 1289
    if-eqz p2, :cond_0

    .line 1290
    const/16 v1, 0x1001

    invoke-virtual {v0, v1}, Landroid/app/FragmentTransaction;->setTransition(I)Landroid/app/FragmentTransaction;

    .line 1291
    const-string v1, ":android:prefs"

    invoke-virtual {v0, v1}, Landroid/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 1295
    :goto_0
    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 1296
    return-void

    .line 1293
    :cond_0
    const/16 v1, 0x1003

    invoke-virtual {v0, v1}, Landroid/app/FragmentTransaction;->setTransition(I)Landroid/app/FragmentTransaction;

    goto :goto_0
.end method

.method public startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V
    .locals 9
    .parameter "fragmentClass"
    .parameter "args"
    .parameter "titleRes"
    .parameter "titleText"
    .parameter "resultTo"
    .parameter "resultRequestCode"

    .prologue
    .line 1319
    iget-boolean v0, p0, Landroid/preference/PreferenceActivity;->mSinglePane:Z

    if-eqz v0, :cond_0

    .line 1320
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p5

    move v4, p6

    move v5, p3

    invoke-virtual/range {v0 .. v6}, Landroid/preference/PreferenceActivity;->startWithFragment(Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Fragment;III)V

    .line 1337
    :goto_0
    return-void

    .line 1322
    :cond_0
    invoke-static {p0, p1, p2}, Landroid/app/Fragment;->instantiate(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Landroid/app/Fragment;

    move-result-object v7

    .line 1323
    .local v7, f:Landroid/app/Fragment;
    if-eqz p5, :cond_1

    .line 1324
    invoke-virtual {v7, p5, p6}, Landroid/app/Fragment;->setTargetFragment(Landroid/app/Fragment;I)V

    .line 1326
    :cond_1
    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v8

    .line 1327
    .local v8, transaction:Landroid/app/FragmentTransaction;
    const v0, 0x10203a2

    invoke-virtual {v8, v0, v7}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 1328
    if-eqz p3, :cond_3

    .line 1329
    invoke-virtual {v8, p3}, Landroid/app/FragmentTransaction;->setBreadCrumbTitle(I)Landroid/app/FragmentTransaction;

    .line 1333
    :cond_2
    :goto_1
    const/16 v0, 0x1001

    invoke-virtual {v8, v0}, Landroid/app/FragmentTransaction;->setTransition(I)Landroid/app/FragmentTransaction;

    .line 1334
    const-string v0, ":android:prefs"

    invoke-virtual {v8, v0}, Landroid/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 1335
    invoke-virtual {v8}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    goto :goto_0

    .line 1330
    :cond_3
    if-eqz p4, :cond_2

    .line 1331
    invoke-virtual {v8, p4}, Landroid/app/FragmentTransaction;->setBreadCrumbTitle(Ljava/lang/CharSequence;)Landroid/app/FragmentTransaction;

    goto :goto_1
.end method

.method public startWithFragment(Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Fragment;I)V
    .locals 7
    .parameter "fragmentName"
    .parameter "args"
    .parameter "resultTo"
    .parameter "resultRequestCode"

    .prologue
    const/4 v5, 0x0

    .line 1099
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v6, v5

    invoke-virtual/range {v0 .. v6}, Landroid/preference/PreferenceActivity;->startWithFragment(Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Fragment;III)V

    .line 1100
    return-void
.end method

.method public startWithFragment(Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Fragment;III)V
    .locals 1
    .parameter "fragmentName"
    .parameter "args"
    .parameter "resultTo"
    .parameter "resultRequestCode"
    .parameter "titleRes"
    .parameter "shortTitleRes"

    .prologue
    .line 1121
    invoke-virtual {p0, p1, p2, p5, p6}, Landroid/preference/PreferenceActivity;->onBuildStartFragmentIntent(Ljava/lang/String;Landroid/os/Bundle;II)Landroid/content/Intent;

    move-result-object v0

    .line 1122
    .local v0, intent:Landroid/content/Intent;
    if-nez p3, :cond_0

    .line 1123
    invoke-virtual {p0, v0}, Landroid/preference/PreferenceActivity;->startActivity(Landroid/content/Intent;)V

    .line 1127
    :goto_0
    return-void

    .line 1125
    :cond_0
    invoke-virtual {p3, v0, p4}, Landroid/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method

.method public switchToHeader(Landroid/preference/PreferenceActivity$Header;)V
    .locals 4
    .parameter "header"

    .prologue
    .line 1222
    iget-object v1, p0, Landroid/preference/PreferenceActivity;->mCurHeader:Landroid/preference/PreferenceActivity$Header;

    if-ne v1, p1, :cond_0

    .line 1225
    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, ":android:prefs"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/app/FragmentManager;->popBackStack(Ljava/lang/String;I)V

    .line 1232
    :goto_0
    return-void

    .line 1228
    :cond_0
    iget-object v1, p0, Landroid/preference/PreferenceActivity;->mHeaders:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    iget-object v2, p0, Landroid/preference/PreferenceActivity;->mHeaders:Ljava/util/ArrayList;

    iget-object v3, p0, Landroid/preference/PreferenceActivity;->mCurHeader:Landroid/preference/PreferenceActivity$Header;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v2

    sub-int v0, v1, v2

    .line 1229
    .local v0, direction:I
    iget-object v1, p1, Landroid/preference/PreferenceActivity$Header;->fragment:Ljava/lang/String;

    iget-object v2, p1, Landroid/preference/PreferenceActivity$Header;->fragmentArguments:Landroid/os/Bundle;

    invoke-direct {p0, v1, v2, v0}, Landroid/preference/PreferenceActivity;->switchToHeaderInner(Ljava/lang/String;Landroid/os/Bundle;I)V

    .line 1230
    invoke-virtual {p0, p1}, Landroid/preference/PreferenceActivity;->setSelectedHeader(Landroid/preference/PreferenceActivity$Header;)V

    goto :goto_0
.end method

.method public switchToHeader(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1
    .parameter "fragmentName"
    .parameter "args"

    .prologue
    .line 1211
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/preference/PreferenceActivity;->setSelectedHeader(Landroid/preference/PreferenceActivity$Header;)V

    .line 1212
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/preference/PreferenceActivity;->switchToHeaderInner(Ljava/lang/String;Landroid/os/Bundle;I)V

    .line 1213
    return-void
.end method
