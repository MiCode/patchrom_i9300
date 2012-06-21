.class public Landroid/view/SplitMotionController;
.super Ljava/lang/Object;
.source "SplitMotionController.java"


# static fields
.field private static bDisabledSplitMotionCountry:Z

.field private static mCountryCode:Ljava/lang/String;

.field private static final mDisableCountryList:[Ljava/lang/String;

.field private static mGotProperty:Z

.field private static mInstance:Landroid/view/SplitMotionController;

.field private static mSavedCountryCode:Ljava/lang/String;


# instance fields
.field final DEBUG:Z

.field final DEBUG_TIME:Z

.field private final DISABLED:Ljava/lang/String;

.field private final PROPERTY_COUNTRY_CODE:Ljava/lang/String;

.field final TAG:Ljava/lang/String;

.field private mMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 34
    sput-boolean v2, Landroid/view/SplitMotionController;->mGotProperty:Z

    .line 44
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "Germany"

    aput-object v1, v0, v2

    sput-object v0, Landroid/view/SplitMotionController;->mDisableCountryList:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 50
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-boolean v0, p0, Landroid/view/SplitMotionController;->DEBUG:Z

    .line 22
    iput-boolean v0, p0, Landroid/view/SplitMotionController;->DEBUG_TIME:Z

    .line 24
    const-string v0, "SplitMotionController"

    iput-object v0, p0, Landroid/view/SplitMotionController;->TAG:Ljava/lang/String;

    .line 26
    const-string/jumbo v0, "ro.csc.country_code"

    iput-object v0, p0, Landroid/view/SplitMotionController;->PROPERTY_COUNTRY_CODE:Ljava/lang/String;

    .line 30
    const-string/jumbo v0, "split_disabled"

    iput-object v0, p0, Landroid/view/SplitMotionController;->DISABLED:Ljava/lang/String;

    .line 42
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/view/SplitMotionController;->mMap:Ljava/util/Map;

    .line 51
    invoke-direct {p0}, Landroid/view/SplitMotionController;->initMapData()V

    .line 53
    invoke-virtual {p0}, Landroid/view/SplitMotionController;->isDisableSplitMotionCountry()Z

    move-result v0

    sput-boolean v0, Landroid/view/SplitMotionController;->bDisabledSplitMotionCountry:Z

    .line 54
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Landroid/view/SplitMotionController;
    .locals 1
    .parameter "context"

    .prologue
    .line 58
    sget-object v0, Landroid/view/SplitMotionController;->mInstance:Landroid/view/SplitMotionController;

    if-eqz v0, :cond_0

    .line 59
    sget-object v0, Landroid/view/SplitMotionController;->mInstance:Landroid/view/SplitMotionController;

    .line 62
    :goto_0
    return-object v0

    .line 61
    :cond_0
    new-instance v0, Landroid/view/SplitMotionController;

    invoke-direct {v0}, Landroid/view/SplitMotionController;-><init>()V

    sput-object v0, Landroid/view/SplitMotionController;->mInstance:Landroid/view/SplitMotionController;

    .line 62
    sget-object v0, Landroid/view/SplitMotionController;->mInstance:Landroid/view/SplitMotionController;

    goto :goto_0
.end method

.method private getPropertyCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 100
    const-string/jumbo v0, "ro.csc.country_code"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/view/SplitMotionController;->mCountryCode:Ljava/lang/String;

    .line 107
    sget-object v0, Landroid/view/SplitMotionController;->mCountryCode:Ljava/lang/String;

    sput-object v0, Landroid/view/SplitMotionController;->mSavedCountryCode:Ljava/lang/String;

    .line 125
    const/4 v0, 0x1

    sput-boolean v0, Landroid/view/SplitMotionController;->mGotProperty:Z

    .line 132
    sget-object v0, Landroid/view/SplitMotionController;->mCountryCode:Ljava/lang/String;

    return-object v0
.end method

.method private initMapData()V
    .locals 6

    .prologue
    .line 68
    sget-object v0, Landroid/view/SplitMotionController;->mDisableCountryList:[Ljava/lang/String;

    .local v0, arr$:[Ljava/lang/String;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v1, v0, v2

    .line 69
    .local v1, code:Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    .line 71
    iget-object v4, p0, Landroid/view/SplitMotionController;->mMap:Ljava/util/Map;

    invoke-interface {v4, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_0

    .line 75
    iget-object v4, p0, Landroid/view/SplitMotionController;->mMap:Ljava/util/Map;

    const-string/jumbo v5, "split_disabled"

    invoke-interface {v4, v1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 79
    .end local v1           #code:Ljava/lang/String;
    :cond_1
    return-void
.end method


# virtual methods
.method public addDisableSplitMotionCountryList(Ljava/lang/String;)V
    .locals 2
    .parameter "countryCode"

    .prologue
    .line 83
    if-nez p1, :cond_0

    .line 88
    :goto_0
    return-void

    .line 86
    :cond_0
    iget-object v0, p0, Landroid/view/SplitMotionController;->mMap:Ljava/util/Map;

    const-string/jumbo v1, "split_disabled"

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public checkAndConvertSplitMotion(Z)Z
    .locals 2
    .parameter "flag"

    .prologue
    const/4 v0, 0x1

    .line 162
    sget-boolean v1, Landroid/view/SplitMotionController;->bDisabledSplitMotionCountry:Z

    if-ne v1, v0, :cond_0

    move p1, v0

    .line 165
    .end local p1
    :cond_0
    return p1
.end method

.method public dump()V
    .locals 6

    .prologue
    .line 177
    iget-object v3, p0, Landroid/view/SplitMotionController;->mMap:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    .line 178
    .local v2, set:Ljava/util/Set;,"Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;>;"
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 180
    .local v0, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 181
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 183
    .local v1, me:Ljava/util/Map$Entry;
    const-string v3, "SplitMotionController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 185
    .end local v1           #me:Ljava/util/Map$Entry;
    :cond_0
    return-void
.end method

.method public getDiableCountryListSize()I
    .locals 1

    .prologue
    .line 171
    iget-object v0, p0, Landroid/view/SplitMotionController;->mMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    return v0
.end method

.method public getSavedCountryCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 136
    sget-boolean v0, Landroid/view/SplitMotionController;->mGotProperty:Z

    if-eqz v0, :cond_0

    .line 137
    sget-object v0, Landroid/view/SplitMotionController;->mSavedCountryCode:Ljava/lang/String;

    .line 139
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isDisableSplitMotionCountry()Z
    .locals 4

    .prologue
    const/4 v2, 0x1

    .line 143
    invoke-direct {p0}, Landroid/view/SplitMotionController;->getPropertyCode()Ljava/lang/String;

    move-result-object v0

    .line 147
    .local v0, propertyCode:Ljava/lang/String;
    if-nez v0, :cond_1

    .line 157
    :cond_0
    :goto_0
    return v2

    .line 150
    :cond_1
    iget-object v3, p0, Landroid/view/SplitMotionController;->mMap:Ljava/util/Map;

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 151
    .local v1, returnCode:Ljava/lang/String;
    if-nez v1, :cond_0

    .line 154
    const/4 v2, 0x0

    goto :goto_0
.end method
