.class public Lcom/android/server/enterprise/LocationPolicy;
.super Landroid/app/enterprise/ILocationPolicy$Stub;
.source "LocationPolicy.java"

# interfaces
.implements Lcom/android/server/enterprise/EnterpriseServiceCallback;


# static fields
.field private static final TAG:Ljava/lang/String; = "EDM"


# instance fields
.field mContext:Landroid/content/Context;

.field private mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

.field private mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

.field private mLM:Landroid/location/LocationManager;

.field private mResolver:Landroid/content/ContentResolver;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "ctx"

    .prologue
    .line 93
    invoke-direct {p0}, Landroid/app/enterprise/ILocationPolicy$Stub;-><init>()V

    .line 83
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/enterprise/LocationPolicy;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 95
    iput-object p1, p0, Lcom/android/server/enterprise/LocationPolicy;->mContext:Landroid/content/Context;

    .line 97
    iget-object v0, p0, Lcom/android/server/enterprise/LocationPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/enterprise/LocationPolicy;->mResolver:Landroid/content/ContentResolver;

    .line 99
    new-instance v0, Lcom/android/server/enterprise/EdmStorageProvider;

    iget-object v1, p0, Lcom/android/server/enterprise/LocationPolicy;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/EdmStorageProvider;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/enterprise/LocationPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    .line 101
    return-void
.end method

.method private addToBlocked(ILjava/lang/String;)Z
    .locals 5
    .parameter "adminUid"
    .parameter "sProvider"

    .prologue
    .line 739
    const-string v3, "EDM"

    const-string v4, ">>> LocationPolicyService.addToBlocked()"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 743
    invoke-virtual {p0}, Lcom/android/server/enterprise/LocationPolicy;->getAllLocationProviders()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 745
    const/4 v3, 0x0

    .line 771
    :goto_0
    return v3

    .line 749
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 751
    .local v1, list:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/LocationPolicy;->getBlockedList(I)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 753
    .local v2, provider:Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x1

    if-le v3, v4, :cond_1

    .line 757
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 765
    .end local v2           #provider:Ljava/lang/String;
    :cond_2
    invoke-interface {v1, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 767
    invoke-interface {v1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 771
    :cond_3
    invoke-direct {p0, p1, v1}, Lcom/android/server/enterprise/LocationPolicy;->saveBlockedList(ILjava/util/List;)Z

    move-result v3

    goto :goto_0
.end method

.method private enforceLocationPermission()I
    .locals 2

    .prologue
    .line 151
    invoke-direct {p0}, Lcom/android/server/enterprise/LocationPolicy;->getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v0

    const-string v1, "android.permission.sec.MDM_LOCATION"

    invoke-virtual {v0, v1}, Landroid/app/enterprise/EnterpriseDeviceManager;->enforceActiveAdminPermission(Ljava/lang/String;)V

    .line 153
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    return v0
.end method

.method private getBlockedList(I)Ljava/util/ArrayList;
    .locals 5
    .parameter "adminUid"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 615
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 617
    .local v0, blockedList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v2, p0, Lcom/android/server/enterprise/LocationPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v3, "LOCATION"

    const-string v4, "blockedProviders"

    invoke-virtual {v2, p1, v3, v4}, Lcom/android/server/enterprise/EdmStorageProvider;->getString(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 619
    .local v1, blockedProviders:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 621
    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 629
    :goto_0
    return-object v0

    .line 625
    :cond_0
    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_0
.end method

.method private getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;
    .locals 2

    .prologue
    .line 113
    iget-object v0, p0, Lcom/android/server/enterprise/LocationPolicy;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    if-nez v0, :cond_0

    .line 115
    iget-object v0, p0, Lcom/android/server/enterprise/LocationPolicy;->mContext:Landroid/content/Context;

    const-string v1, "enterprise_policy"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/enterprise/EnterpriseDeviceManager;

    iput-object v0, p0, Lcom/android/server/enterprise/LocationPolicy;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 121
    :cond_0
    iget-object v0, p0, Lcom/android/server/enterprise/LocationPolicy;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    return-object v0
.end method

.method private isBlocked(Ljava/lang/String;)Z
    .locals 2
    .parameter "sProvider"

    .prologue
    .line 781
    invoke-virtual {p0}, Lcom/android/server/enterprise/LocationPolicy;->getAllBlockedProviders()Ljava/util/List;

    move-result-object v0

    .line 783
    .local v0, list:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 785
    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    .line 791
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private removeFromBlocked(ILjava/lang/String;)Z
    .locals 3
    .parameter "adminUid"
    .parameter "sProvider"

    .prologue
    .line 697
    invoke-virtual {p0}, Lcom/android/server/enterprise/LocationPolicy;->getAllLocationProviders()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 699
    const/4 v2, 0x0

    .line 731
    :goto_0
    return v2

    .line 703
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/LocationPolicy;->getBlockedList(I)Ljava/util/ArrayList;

    move-result-object v1

    .line 705
    .local v1, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v1, :cond_3

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 707
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 709
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 711
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 731
    .end local v0           #i:I
    :cond_1
    :goto_2
    invoke-direct {p0, p1, v1}, Lcom/android/server/enterprise/LocationPolicy;->saveBlockedList(ILjava/util/List;)Z

    move-result v2

    goto :goto_0

    .line 707
    .restart local v0       #i:I
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 725
    .end local v0           #i:I
    :cond_3
    new-instance v1, Ljava/util/ArrayList;

    .end local v1           #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 727
    .restart local v1       #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2
.end method

.method private saveBlockedList(ILjava/util/List;)Z
    .locals 7
    .parameter "adminUid"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 649
    .local p2, list:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 651
    .local v2, sb:Ljava/lang/StringBuilder;
    if-eqz p2, :cond_2

    .line 653
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 655
    .local v1, s:Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_0

    .line 657
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 663
    .end local v1           #s:Ljava/lang/String;
    :cond_1
    iget-object v3, p0, Lcom/android/server/enterprise/LocationPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v4, "LOCATION"

    const-string v5, "blockedProviders"

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, p1, v4, v5, v6}, Lcom/android/server/enterprise/EdmStorageProvider;->putString(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    .line 671
    .end local v0           #i$:Ljava/util/Iterator;
    :goto_1
    return v3

    .line 669
    :cond_2
    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 671
    iget-object v3, p0, Lcom/android/server/enterprise/LocationPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v4, "LOCATION"

    const-string v5, "blockedProviders"

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, p1, v4, v5, v6}, Lcom/android/server/enterprise/EdmStorageProvider;->putString(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    goto :goto_1
.end method

.method private setLocationManager()V
    .locals 2

    .prologue
    .line 135
    iget-object v0, p0, Lcom/android/server/enterprise/LocationPolicy;->mContext:Landroid/content/Context;

    const-string v1, "location"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    iput-object v0, p0, Lcom/android/server/enterprise/LocationPolicy;->mLM:Landroid/location/LocationManager;

    .line 137
    return-void
.end method


# virtual methods
.method public getAllBlockedProviders()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 337
    iget-object v4, p0, Lcom/android/server/enterprise/LocationPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v5, "LOCATION"

    const-string v6, "blockedProviders"

    invoke-virtual {v4, v5, v6}, Lcom/android/server/enterprise/EdmStorageProvider;->getStringList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 339
    .local v2, blockedProvidersList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 341
    .local v0, blockedList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v2, :cond_0

    .line 343
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 345
    .local v1, blockedProviders:Ljava/lang/String;
    const-string v4, ","

    invoke-virtual {v1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 351
    .end local v1           #blockedProviders:Ljava/lang/String;
    .end local v3           #i$:Ljava/util/Iterator;
    :cond_0
    const-string v4, ""

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 355
    :cond_1
    return-object v0
.end method

.method public getAllLocationProviders()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 311
    const/4 v0, 0x0

    .line 313
    .local v0, list:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0}, Lcom/android/server/enterprise/LocationPolicy;->enforceLocationPermission()I

    .line 315
    invoke-direct {p0}, Lcom/android/server/enterprise/LocationPolicy;->setLocationManager()V

    .line 317
    iget-object v1, p0, Lcom/android/server/enterprise/LocationPolicy;->mLM:Landroid/location/LocationManager;

    invoke-virtual {v1}, Landroid/location/LocationManager;->getAllProviders()Ljava/util/List;

    move-result-object v0

    .line 319
    return-object v0
.end method

.method public getIndividualLocationProvider(Ljava/lang/String;)Z
    .locals 4
    .parameter "sProvider"

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 263
    invoke-virtual {p0}, Lcom/android/server/enterprise/LocationPolicy;->getAllLocationProviders()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    move v0, v1

    .line 281
    :cond_0
    :goto_0
    return v0

    .line 271
    :cond_1
    const-string v2, "gps"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 273
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/LocationPolicy;->isBlocked(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/server/enterprise/LocationPolicy;->mResolver:Landroid/content/ContentResolver;

    const-string v3, "gps"

    invoke-static {v2, v3}, Landroid/provider/Settings$Secure;->isLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 281
    :cond_2
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/LocationPolicy;->isBlocked(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public isGPSOn()Z
    .locals 6

    .prologue
    .line 575
    const-string v4, "EDM"

    const-string v5, ">>> isGPSOn"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 577
    const/4 v1, 0x0

    .line 581
    .local v1, ret:Z
    invoke-direct {p0}, Lcom/android/server/enterprise/LocationPolicy;->enforceLocationPermission()I

    move-result v0

    .line 583
    .local v0, callingUid:I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 585
    .local v2, token:J
    iget-object v4, p0, Lcom/android/server/enterprise/LocationPolicy;->mResolver:Landroid/content/ContentResolver;

    const-string v5, "gps"

    invoke-static {v4, v5}, Landroid/provider/Settings$Secure;->isLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v1

    .line 587
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 591
    return v1
.end method

.method public isGPSStateChangeAllowed()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 465
    const-string v2, "EDM"

    const-string v3, ">>> isGPSStateChangeAllowed"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 471
    invoke-virtual {p0}, Lcom/android/server/enterprise/LocationPolicy;->getAllLocationProviders()Ljava/util/List;

    move-result-object v2

    const-string v3, "gps"

    invoke-interface {v2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 479
    :cond_0
    :goto_0
    return v1

    .line 477
    :cond_1
    const-string v2, "gps"

    invoke-direct {p0, v2}, Lcom/android/server/enterprise/LocationPolicy;->isBlocked(Ljava/lang/String;)Z

    move-result v0

    .line 479
    .local v0, blocked:Z
    if-nez v0, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public isLocationProviderBlocked(Ljava/lang/String;)Z
    .locals 1
    .parameter "sProvider"

    .prologue
    .line 291
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/LocationPolicy;->isBlocked(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public onAdminAdded(I)V
    .locals 0
    .parameter "uid"

    .prologue
    .line 805
    return-void
.end method

.method public onAdminRemoved(I)V
    .locals 0
    .parameter "uid"

    .prologue
    .line 817
    return-void
.end method

.method public onPreAdminRemoval(I)V
    .locals 0
    .parameter "uid"

    .prologue
    .line 839
    return-void
.end method

.method public setGPSStateChangeAllowed(Z)Z
    .locals 6
    .parameter "allow"

    .prologue
    .line 405
    const-string v4, "EDM"

    const-string v5, ">>> setGPSStateChangeAllowed"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 409
    invoke-direct {p0}, Lcom/android/server/enterprise/LocationPolicy;->enforceLocationPermission()I

    move-result v1

    .line 411
    .local v1, callingUid:I
    const/4 v3, 0x1

    .line 413
    .local v3, result:Z
    invoke-direct {p0, v1}, Lcom/android/server/enterprise/LocationPolicy;->getBlockedList(I)Ljava/util/ArrayList;

    move-result-object v0

    .line 415
    .local v0, blockedList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const-string v2, "gps"

    .line 421
    .local v2, provider:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/server/enterprise/LocationPolicy;->getAllLocationProviders()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 423
    const/4 v4, 0x0

    .line 449
    :goto_0
    return v4

    .line 427
    :cond_0
    monitor-enter p0

    .line 429
    if-eqz p1, :cond_2

    .line 431
    :try_start_0
    invoke-interface {v0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 433
    invoke-direct {p0, v1, v2}, Lcom/android/server/enterprise/LocationPolicy;->removeFromBlocked(ILjava/lang/String;)Z

    move-result v3

    .line 447
    :cond_1
    :goto_1
    monitor-exit p0

    move v4, v3

    .line 449
    goto :goto_0

    .line 439
    :cond_2
    invoke-interface {v0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 441
    invoke-direct {p0, v1, v2}, Lcom/android/server/enterprise/LocationPolicy;->addToBlocked(ILjava/lang/String;)Z

    move-result v3

    goto :goto_1

    .line 447
    :catchall_0
    move-exception v4

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method

.method public setIndividualLocationProvider(Ljava/lang/String;Z)Z
    .locals 8
    .parameter "sProvider"
    .parameter "enable"

    .prologue
    .line 177
    invoke-direct {p0}, Lcom/android/server/enterprise/LocationPolicy;->enforceLocationPermission()I

    move-result v1

    .line 179
    .local v1, callingUid:I
    const/4 v3, 0x1

    .line 181
    .local v3, result:Z
    invoke-direct {p0}, Lcom/android/server/enterprise/LocationPolicy;->setLocationManager()V

    .line 183
    iget-object v6, p0, Lcom/android/server/enterprise/LocationPolicy;->mLM:Landroid/location/LocationManager;

    invoke-virtual {v6}, Landroid/location/LocationManager;->getAllProviders()Ljava/util/List;

    move-result-object v2

    .line 185
    .local v2, providers:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0, v1}, Lcom/android/server/enterprise/LocationPolicy;->getBlockedList(I)Ljava/util/ArrayList;

    move-result-object v0

    .line 189
    .local v0, blockedList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_3

    .line 195
    invoke-virtual {p0}, Lcom/android/server/enterprise/LocationPolicy;->getAllLocationProviders()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 197
    const/4 v6, 0x0

    .line 239
    :goto_0
    return v6

    .line 207
    :cond_0
    monitor-enter p0

    .line 209
    if-eqz p2, :cond_2

    .line 211
    :try_start_0
    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 213
    invoke-direct {p0, v1, p1}, Lcom/android/server/enterprise/LocationPolicy;->removeFromBlocked(ILjava/lang/String;)Z

    move-result v3

    .line 237
    :cond_1
    :goto_1
    monitor-exit p0

    move v6, v3

    .line 239
    goto :goto_0

    .line 219
    :cond_2
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 221
    .local v4, token:J
    iget-object v6, p0, Lcom/android/server/enterprise/LocationPolicy;->mResolver:Landroid/content/ContentResolver;

    invoke-static {v6, p1, p2}, Landroid/provider/Settings$Secure;->setLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;Z)V

    .line 225
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 229
    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 231
    invoke-direct {p0, v1, p1}, Lcom/android/server/enterprise/LocationPolicy;->addToBlocked(ILjava/lang/String;)Z

    move-result v3

    goto :goto_1

    .line 237
    .end local v4           #token:J
    :catchall_0
    move-exception v6

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v6

    .line 243
    :cond_3
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string v7, "Invalid provider name !"

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6
.end method

.method public startGPS(Z)Z
    .locals 8
    .parameter "start"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 511
    const-string v6, "EDM"

    const-string v7, ">>> startGPS"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 515
    invoke-direct {p0}, Lcom/android/server/enterprise/LocationPolicy;->enforceLocationPermission()I

    move-result v0

    .line 517
    .local v0, callingUid:I
    const-string v1, "gps"

    .line 523
    .local v1, provider:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/server/enterprise/LocationPolicy;->getAllLocationProviders()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 555
    :cond_0
    :goto_0
    return v4

    .line 531
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/enterprise/LocationPolicy;->isGPSStateChangeAllowed()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 537
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lcom/android/server/enterprise/LocationPolicy;->isGPSOn()Z

    move-result v4

    if-nez v4, :cond_3

    :cond_2
    if-nez p1, :cond_4

    invoke-virtual {p0}, Lcom/android/server/enterprise/LocationPolicy;->isGPSOn()Z

    move-result v4

    if-nez v4, :cond_4

    :cond_3
    move v4, v5

    .line 539
    goto :goto_0

    .line 543
    :cond_4
    monitor-enter p0

    .line 545
    :try_start_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 547
    .local v2, token:J
    iget-object v4, p0, Lcom/android/server/enterprise/LocationPolicy;->mResolver:Landroid/content/ContentResolver;

    invoke-static {v4, v1, p1}, Landroid/provider/Settings$Secure;->setLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;Z)V

    .line 551
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 553
    monitor-exit p0

    move v4, v5

    .line 555
    goto :goto_0

    .line 553
    .end local v2           #token:J
    :catchall_0
    move-exception v4

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method

.method public systemReady()V
    .locals 0

    .prologue
    .line 829
    return-void
.end method
