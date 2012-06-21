.class Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;
.super Lcom/android/internal/util/StateMachine;
.source "WifiP2pService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/p2p/WifiP2pService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "P2pStateMachine"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$NfcProvisionState;,
        Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$UserAuthorizingJoinState;,
        Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupCreatedState;,
        Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupNegotiationState;,
        Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$ProvisionDiscoveryState;,
        Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$UserAuthorizingInvitationState;,
        Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupCreatingState;,
        Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$InactiveState;,
        Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$P2pEnabledState;,
        Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$P2pEnablingState;,
        Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$WaitForWifiDisableState;,
        Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$WaitForUserActionState;,
        Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$P2pDisabledState;,
        Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$P2pDisablingState;,
        Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$P2pNotSupportedState;,
        Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$DefaultState;
    }
.end annotation


# instance fields
.field private mConnectedDevAddr:Ljava/lang/String;

.field private mDefaultState:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$DefaultState;

.field private mGroup:Landroid/net/wifi/p2p/WifiP2pGroup;

.field private mGroupCreatedState:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupCreatedState;

.field private mGroupCreatingState:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupCreatingState;

.field private mGroupNegotiationState:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupNegotiationState;

.field private mInactiveState:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$InactiveState;

.field private mIsGotoJoinState:Z

.field private mNfcProvisionState:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$NfcProvisionState;

.field private mP2pDisabledState:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$P2pDisabledState;

.field private mP2pDisablingState:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$P2pDisablingState;

.field private mP2pEnabledState:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$P2pEnabledState;

.field private mP2pEnablingState:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$P2pEnablingState;

.field private mP2pNotSupportedState:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$P2pNotSupportedState;

.field private mP2pStaticIpConfig:Landroid/net/wifi/p2p/WifiP2pStaticIpConfig;

.field private mPeers:Landroid/net/wifi/p2p/WifiP2pDeviceList;

.field private mProvisionDiscoveryState:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$ProvisionDiscoveryState;

.field private mSavedP2pGroup:Landroid/net/wifi/p2p/WifiP2pGroup;

.field private mSavedPeerConfig:Landroid/net/wifi/p2p/WifiP2pConfig;

.field private mSelectP2pConfigIndex:I

.field private mSelectP2pConfigList:Landroid/net/wifi/p2p/WifiP2pConfigList;

.field private mSelectedP2pGroupAddress:Ljava/lang/String;

.field private mUserAuthorizingInvitationState:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$UserAuthorizingInvitationState;

.field private mUserAuthorizingJoinState:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$UserAuthorizingJoinState;

.field private mWaitForUserActionState:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$WaitForUserActionState;

.field private mWaitForWifiDisableState:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$WaitForWifiDisableState;

.field private mWfdInfo:Lcom/samsung/wfd/WfdInfo;

.field private mWifiMonitor:Landroid/net/wifi/WifiMonitor;

.field private mWifiP2pInfo:Landroid/net/wifi/p2p/WifiP2pInfo;

.field final synthetic this$0:Landroid/net/wifi/p2p/WifiP2pService;


# direct methods
.method constructor <init>(Landroid/net/wifi/p2p/WifiP2pService;Ljava/lang/String;Z)V
    .locals 2
    .parameter
    .parameter "name"
    .parameter "p2pSupported"

    .prologue
    .line 445
    iput-object p1, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->this$0:Landroid/net/wifi/p2p/WifiP2pService;

    .line 446
    invoke-direct {p0, p2}, Lcom/android/internal/util/StateMachine;-><init>(Ljava/lang/String;)V

    .line 397
    new-instance v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$DefaultState;

    invoke-direct {v0, p0}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$DefaultState;-><init>(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)V

    iput-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mDefaultState:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$DefaultState;

    .line 398
    new-instance v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$P2pNotSupportedState;

    invoke-direct {v0, p0}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$P2pNotSupportedState;-><init>(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)V

    iput-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mP2pNotSupportedState:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$P2pNotSupportedState;

    .line 399
    new-instance v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$P2pDisablingState;

    invoke-direct {v0, p0}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$P2pDisablingState;-><init>(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)V

    iput-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mP2pDisablingState:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$P2pDisablingState;

    .line 400
    new-instance v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$P2pDisabledState;

    invoke-direct {v0, p0}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$P2pDisabledState;-><init>(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)V

    iput-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mP2pDisabledState:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$P2pDisabledState;

    .line 401
    new-instance v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$WaitForUserActionState;

    invoke-direct {v0, p0}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$WaitForUserActionState;-><init>(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)V

    iput-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mWaitForUserActionState:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$WaitForUserActionState;

    .line 402
    new-instance v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$WaitForWifiDisableState;

    invoke-direct {v0, p0}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$WaitForWifiDisableState;-><init>(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)V

    iput-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mWaitForWifiDisableState:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$WaitForWifiDisableState;

    .line 403
    new-instance v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$P2pEnablingState;

    invoke-direct {v0, p0}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$P2pEnablingState;-><init>(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)V

    iput-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mP2pEnablingState:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$P2pEnablingState;

    .line 404
    new-instance v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$P2pEnabledState;

    invoke-direct {v0, p0}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$P2pEnabledState;-><init>(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)V

    iput-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mP2pEnabledState:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$P2pEnabledState;

    .line 406
    new-instance v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$InactiveState;

    invoke-direct {v0, p0}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$InactiveState;-><init>(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)V

    iput-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mInactiveState:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$InactiveState;

    .line 407
    new-instance v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupCreatingState;

    invoke-direct {v0, p0}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupCreatingState;-><init>(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)V

    iput-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mGroupCreatingState:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupCreatingState;

    .line 408
    new-instance v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$UserAuthorizingInvitationState;

    invoke-direct {v0, p0}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$UserAuthorizingInvitationState;-><init>(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)V

    iput-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mUserAuthorizingInvitationState:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$UserAuthorizingInvitationState;

    .line 410
    new-instance v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$ProvisionDiscoveryState;

    invoke-direct {v0, p0}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$ProvisionDiscoveryState;-><init>(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)V

    iput-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mProvisionDiscoveryState:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$ProvisionDiscoveryState;

    .line 411
    new-instance v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupNegotiationState;

    invoke-direct {v0, p0}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupNegotiationState;-><init>(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)V

    iput-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mGroupNegotiationState:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupNegotiationState;

    .line 413
    new-instance v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupCreatedState;

    invoke-direct {v0, p0}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupCreatedState;-><init>(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)V

    iput-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mGroupCreatedState:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupCreatedState;

    .line 414
    new-instance v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$UserAuthorizingJoinState;

    invoke-direct {v0, p0}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$UserAuthorizingJoinState;-><init>(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)V

    iput-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mUserAuthorizingJoinState:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$UserAuthorizingJoinState;

    .line 417
    new-instance v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$NfcProvisionState;

    invoke-direct {v0, p0}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$NfcProvisionState;-><init>(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)V

    iput-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mNfcProvisionState:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$NfcProvisionState;

    .line 419
    new-instance v0, Landroid/net/wifi/WifiMonitor;

    invoke-direct {v0, p0}, Landroid/net/wifi/WifiMonitor;-><init>(Lcom/android/internal/util/StateMachine;)V

    iput-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mWifiMonitor:Landroid/net/wifi/WifiMonitor;

    .line 421
    new-instance v0, Landroid/net/wifi/p2p/WifiP2pDeviceList;

    invoke-direct {v0}, Landroid/net/wifi/p2p/WifiP2pDeviceList;-><init>()V

    iput-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mPeers:Landroid/net/wifi/p2p/WifiP2pDeviceList;

    .line 422
    new-instance v0, Landroid/net/wifi/p2p/WifiP2pInfo;

    invoke-direct {v0}, Landroid/net/wifi/p2p/WifiP2pInfo;-><init>()V

    iput-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mWifiP2pInfo:Landroid/net/wifi/p2p/WifiP2pInfo;

    .line 442
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mConnectedDevAddr:Ljava/lang/String;

    .line 443
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mIsGotoJoinState:Z

    .line 448
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mDefaultState:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$DefaultState;

    invoke-virtual {p0, v0}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->addState(Lcom/android/internal/util/State;)V

    .line 449
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mP2pNotSupportedState:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$P2pNotSupportedState;

    iget-object v1, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mDefaultState:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$DefaultState;

    invoke-virtual {p0, v0, v1}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 450
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mP2pDisablingState:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$P2pDisablingState;

    iget-object v1, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mDefaultState:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$DefaultState;

    invoke-virtual {p0, v0, v1}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 451
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mP2pDisabledState:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$P2pDisabledState;

    iget-object v1, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mDefaultState:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$DefaultState;

    invoke-virtual {p0, v0, v1}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 452
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mWaitForUserActionState:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$WaitForUserActionState;

    iget-object v1, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mP2pDisabledState:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$P2pDisabledState;

    invoke-virtual {p0, v0, v1}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 453
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mWaitForWifiDisableState:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$WaitForWifiDisableState;

    iget-object v1, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mP2pDisabledState:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$P2pDisabledState;

    invoke-virtual {p0, v0, v1}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 454
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mP2pEnablingState:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$P2pEnablingState;

    iget-object v1, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mDefaultState:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$DefaultState;

    invoke-virtual {p0, v0, v1}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 455
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mP2pEnabledState:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$P2pEnabledState;

    iget-object v1, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mDefaultState:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$DefaultState;

    invoke-virtual {p0, v0, v1}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 456
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mInactiveState:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$InactiveState;

    iget-object v1, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mP2pEnabledState:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$P2pEnabledState;

    invoke-virtual {p0, v0, v1}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 457
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mNfcProvisionState:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$NfcProvisionState;

    iget-object v1, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mInactiveState:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$InactiveState;

    invoke-virtual {p0, v0, v1}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 458
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mGroupCreatingState:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupCreatingState;

    iget-object v1, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mP2pEnabledState:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$P2pEnabledState;

    invoke-virtual {p0, v0, v1}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 459
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mUserAuthorizingInvitationState:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$UserAuthorizingInvitationState;

    iget-object v1, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mGroupCreatingState:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupCreatingState;

    invoke-virtual {p0, v0, v1}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 460
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mProvisionDiscoveryState:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$ProvisionDiscoveryState;

    iget-object v1, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mGroupCreatingState:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupCreatingState;

    invoke-virtual {p0, v0, v1}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 461
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mGroupNegotiationState:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupNegotiationState;

    iget-object v1, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mGroupCreatingState:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupCreatingState;

    invoke-virtual {p0, v0, v1}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 462
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mGroupCreatedState:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupCreatedState;

    iget-object v1, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mP2pEnabledState:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$P2pEnabledState;

    invoke-virtual {p0, v0, v1}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 463
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mUserAuthorizingJoinState:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$UserAuthorizingJoinState;

    iget-object v1, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mGroupCreatedState:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupCreatedState;

    invoke-virtual {p0, v0, v1}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 464
    if-eqz p3, :cond_0

    .line 465
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mP2pDisabledState:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$P2pDisabledState;

    invoke-virtual {p0, v0}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->setInitialState(Lcom/android/internal/util/State;)V

    .line 469
    :goto_0
    return-void

    .line 467
    :cond_0
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mP2pNotSupportedState:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$P2pNotSupportedState;

    invoke-virtual {p0, v0}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->setInitialState(Lcom/android/internal/util/State;)V

    goto :goto_0
.end method

.method static synthetic access$1000(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 395
    invoke-direct {p0, p1}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->loge(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$10000(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 395
    iget-boolean v0, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mIsGotoJoinState:Z

    return v0
.end method

.method static synthetic access$10002(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 395
    iput-boolean p1, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mIsGotoJoinState:Z

    return p1
.end method

.method static synthetic access$10100(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 395
    invoke-direct {p0, p1}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->updateThisDevice(I)V

    return-void
.end method

.method static synthetic access$10200(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 395
    invoke-direct {p0, p1}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->setWifiP2pInfoOnGroupFormation(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$10400(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)Lcom/samsung/wfd/WfdInfo;
    .locals 1
    .parameter "x0"

    .prologue
    .line 395
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mWfdInfo:Lcom/samsung/wfd/WfdInfo;

    return-object v0
.end method

.method static synthetic access$10402(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Lcom/samsung/wfd/WfdInfo;)Lcom/samsung/wfd/WfdInfo;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 395
    iput-object p1, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mWfdInfo:Lcom/samsung/wfd/WfdInfo;

    return-object p1
.end method

.method static synthetic access$10500(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 395
    invoke-direct {p0}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->sendWfdSessionChangedBroadcast()V

    return-void
.end method

.method static synthetic access$10600(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pConfigList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 395
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mSelectP2pConfigList:Landroid/net/wifi/p2p/WifiP2pConfigList;

    return-object v0
.end method

.method static synthetic access$10602(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Landroid/net/wifi/p2p/WifiP2pConfigList;)Landroid/net/wifi/p2p/WifiP2pConfigList;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 395
    iput-object p1, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mSelectP2pConfigList:Landroid/net/wifi/p2p/WifiP2pConfigList;

    return-object p1
.end method

.method static synthetic access$10700(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 395
    iget v0, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mSelectP2pConfigIndex:I

    return v0
.end method

.method static synthetic access$10702(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 395
    iput p1, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mSelectP2pConfigIndex:I

    return p1
.end method

.method static synthetic access$10708(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)I
    .locals 2
    .parameter "x0"

    .prologue
    .line 395
    iget v0, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mSelectP2pConfigIndex:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mSelectP2pConfigIndex:I

    return v0
.end method

.method static synthetic access$10800(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 395
    invoke-direct {p0, p1}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->getDeviceName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$10900(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 395
    invoke-direct {p0, p1}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->getDeviceType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$11000(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 395
    invoke-direct {p0}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->stopDhcpServer()V

    return-void
.end method

.method static synthetic access$11100(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 395
    invoke-virtual {p0, p1}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$11200(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Landroid/os/Message;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 395
    invoke-virtual {p0, p1}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->deferMessage(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$11300(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 395
    invoke-direct {p0}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->showConnectionLimitDialog()V

    return-void
.end method

.method static synthetic access$11400(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 395
    invoke-direct {p0}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->notifyInvitationReceivedForceAccept()V

    return-void
.end method

.method static synthetic access$11500(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$UserAuthorizingJoinState;
    .locals 1
    .parameter "x0"

    .prologue
    .line 395
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mUserAuthorizingJoinState:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$UserAuthorizingJoinState;

    return-object v0
.end method

.method static synthetic access$11600(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 395
    invoke-virtual {p0, p1}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$11700(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 395
    invoke-direct {p0}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->setWifiP2pInfoOnGroupTermination()V

    return-void
.end method

.method static synthetic access$11800(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 395
    invoke-virtual {p0, p1}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$11900(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 395
    invoke-virtual {p0, p1}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$1200(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Landroid/os/Message;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 395
    invoke-virtual {p0, p1}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->deferMessage(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$12000(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 395
    invoke-virtual {p0, p1}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->removeMessages(I)V

    return-void
.end method

.method static synthetic access$12100(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 395
    invoke-virtual {p0, p1}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->removeMessages(I)V

    return-void
.end method

.method static synthetic access$12200(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 395
    invoke-virtual {p0, p1}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$12300(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 395
    invoke-virtual {p0, p1}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$1400(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 395
    invoke-direct {p0}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->sendThisDeviceChangedBroadcast()V

    return-void
.end method

.method static synthetic access$1500(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Landroid/os/Message;II)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 395
    invoke-direct {p0, p1, p2, p3}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->replyToMessage(Landroid/os/Message;II)V

    return-void
.end method

.method static synthetic access$1600(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pDeviceList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 395
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mPeers:Landroid/net/wifi/p2p/WifiP2pDeviceList;

    return-object v0
.end method

.method static synthetic access$1700(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Landroid/os/Message;ILjava/lang/Object;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 395
    invoke-direct {p0, p1, p2, p3}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->replyToMessage(Landroid/os/Message;ILjava/lang/Object;)V

    return-void
.end method

.method static synthetic access$1800(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pInfo;
    .locals 1
    .parameter "x0"

    .prologue
    .line 395
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mWifiP2pInfo:Landroid/net/wifi/p2p/WifiP2pInfo;

    return-object v0
.end method

.method static synthetic access$1900(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pGroup;
    .locals 1
    .parameter "x0"

    .prologue
    .line 395
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mGroup:Landroid/net/wifi/p2p/WifiP2pGroup;

    return-object v0
.end method

.method static synthetic access$1902(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Landroid/net/wifi/p2p/WifiP2pGroup;)Landroid/net/wifi/p2p/WifiP2pGroup;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 395
    iput-object p1, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mGroup:Landroid/net/wifi/p2p/WifiP2pGroup;

    return-object p1
.end method

.method static synthetic access$2000(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 395
    invoke-direct {p0}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->isAirplaneModeOn()Z

    move-result v0

    return v0
.end method

.method static synthetic access$2300(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Landroid/os/Message;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 395
    invoke-direct {p0, p1, p2}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->replyToMessage(Landroid/os/Message;I)V

    return-void
.end method

.method static synthetic access$2400(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)Landroid/net/wifi/WifiMonitor;
    .locals 1
    .parameter "x0"

    .prologue
    .line 395
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mWifiMonitor:Landroid/net/wifi/WifiMonitor;

    return-object v0
.end method

.method static synthetic access$2500(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 395
    invoke-direct {p0, p1}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->sendP2pStateChangedBroadcast(Z)V

    return-void
.end method

.method static synthetic access$2700(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$P2pDisabledState;
    .locals 1
    .parameter "x0"

    .prologue
    .line 395
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mP2pDisabledState:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$P2pDisabledState;

    return-object v0
.end method

.method static synthetic access$2800(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 395
    invoke-virtual {p0, p1}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$2900(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Landroid/os/Message;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 395
    invoke-virtual {p0, p1}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->deferMessage(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$3000(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$WaitForUserActionState;
    .locals 1
    .parameter "x0"

    .prologue
    .line 395
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mWaitForUserActionState:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$WaitForUserActionState;

    return-object v0
.end method

.method static synthetic access$3100(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 395
    invoke-virtual {p0, p1}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$3200(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$P2pEnablingState;
    .locals 1
    .parameter "x0"

    .prologue
    .line 395
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mP2pEnablingState:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$P2pEnablingState;

    return-object v0
.end method

.method static synthetic access$3300(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 395
    invoke-virtual {p0, p1}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$3400(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$WaitForWifiDisableState;
    .locals 1
    .parameter "x0"

    .prologue
    .line 395
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mWaitForWifiDisableState:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$WaitForWifiDisableState;

    return-object v0
.end method

.method static synthetic access$3500(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 395
    invoke-virtual {p0, p1}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$3600(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 395
    invoke-virtual {p0, p1}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$3700(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 395
    invoke-virtual {p0, p1}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$3800(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Landroid/os/Message;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 395
    invoke-virtual {p0, p1}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->deferMessage(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$4000(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 395
    invoke-virtual {p0, p1}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$4100(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 395
    invoke-direct {p0}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->notifyP2pEnableFailure()V

    return-void
.end method

.method static synthetic access$4200(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 395
    invoke-virtual {p0, p1}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$4300(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Landroid/os/Message;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 395
    invoke-virtual {p0, p1}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->deferMessage(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$4400(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$InactiveState;
    .locals 1
    .parameter "x0"

    .prologue
    .line 395
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mInactiveState:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$InactiveState;

    return-object v0
.end method

.method static synthetic access$4500(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 395
    invoke-virtual {p0, p1}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$4700(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 395
    invoke-virtual {p0, p1}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$4800(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Landroid/os/Message;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 395
    invoke-virtual {p0, p1}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->deferMessage(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$500(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 395
    invoke-direct {p0}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->isWifiP2pSettingScreen()Z

    move-result v0

    return v0
.end method

.method static synthetic access$5200(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 395
    invoke-direct {p0}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->sendP2pConnectionChangedBroadcast()V

    return-void
.end method

.method static synthetic access$5300(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 395
    invoke-direct {p0}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->initializeP2pSettings()V

    return-void
.end method

.method static synthetic access$5400(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 395
    invoke-direct {p0}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->showStatusBarIcon()V

    return-void
.end method

.method static synthetic access$5500(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 395
    invoke-direct {p0}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->sendP2pPeersChangedBroadcast()V

    return-void
.end method

.method static synthetic access$5600(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$P2pDisablingState;
    .locals 1
    .parameter "x0"

    .prologue
    .line 395
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mP2pDisablingState:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$P2pDisablingState;

    return-object v0
.end method

.method static synthetic access$5700(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 395
    invoke-virtual {p0, p1}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$5800(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 395
    invoke-virtual {p0, p1}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$5900(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 395
    invoke-direct {p0}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->clearStatusBarIcon()V

    return-void
.end method

.method static synthetic access$6000(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pConfig;
    .locals 1
    .parameter "x0"

    .prologue
    .line 395
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mSavedPeerConfig:Landroid/net/wifi/p2p/WifiP2pConfig;

    return-object v0
.end method

.method static synthetic access$6002(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Landroid/net/wifi/p2p/WifiP2pConfig;)Landroid/net/wifi/p2p/WifiP2pConfig;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 395
    iput-object p1, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mSavedPeerConfig:Landroid/net/wifi/p2p/WifiP2pConfig;

    return-object p1
.end method

.method static synthetic access$6200(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Ljava/lang/String;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 395
    invoke-direct {p0, p1}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->configuredNetworkId(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static synthetic access$6300(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Ljava/lang/String;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 395
    invoke-direct {p0, p1}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->isGroupOwner(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$6500(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 395
    invoke-direct {p0, p1, p2}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->notifyInvitationSent(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$6600(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupNegotiationState;
    .locals 1
    .parameter "x0"

    .prologue
    .line 395
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mGroupNegotiationState:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupNegotiationState;

    return-object v0
.end method

.method static synthetic access$6700(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 395
    invoke-virtual {p0, p1}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$6800(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$ProvisionDiscoveryState;
    .locals 1
    .parameter "x0"

    .prologue
    .line 395
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mProvisionDiscoveryState:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$ProvisionDiscoveryState;

    return-object v0
.end method

.method static synthetic access$6900(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 395
    invoke-virtual {p0, p1}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$7000(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Ljava/lang/String;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 395
    invoke-direct {p0, p1, p2}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->updateDeviceStatus(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$7100(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$UserAuthorizingInvitationState;
    .locals 1
    .parameter "x0"

    .prologue
    .line 395
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mUserAuthorizingInvitationState:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$UserAuthorizingInvitationState;

    return-object v0
.end method

.method static synthetic access$7200(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 395
    invoke-virtual {p0, p1}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$7300(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pGroup;
    .locals 1
    .parameter "x0"

    .prologue
    .line 395
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mSavedP2pGroup:Landroid/net/wifi/p2p/WifiP2pGroup;

    return-object v0
.end method

.method static synthetic access$7302(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Landroid/net/wifi/p2p/WifiP2pGroup;)Landroid/net/wifi/p2p/WifiP2pGroup;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 395
    iput-object p1, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mSavedP2pGroup:Landroid/net/wifi/p2p/WifiP2pGroup;

    return-object p1
.end method

.method static synthetic access$7400(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 395
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mSelectedP2pGroupAddress:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$7402(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 395
    iput-object p1, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mSelectedP2pGroupAddress:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$7500(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 395
    invoke-virtual {p0, p1}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$7600(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pStaticIpConfig;
    .locals 1
    .parameter "x0"

    .prologue
    .line 395
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mP2pStaticIpConfig:Landroid/net/wifi/p2p/WifiP2pStaticIpConfig;

    return-object v0
.end method

.method static synthetic access$7700(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 395
    invoke-virtual {p0, p1}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$7800(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 395
    invoke-virtual {p0, p1}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$7900(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$NfcProvisionState;
    .locals 1
    .parameter "x0"

    .prologue
    .line 395
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mNfcProvisionState:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$NfcProvisionState;

    return-object v0
.end method

.method static synthetic access$800(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 395
    invoke-direct {p0, p1}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->logd(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$8000(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 395
    invoke-virtual {p0, p1}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$8200(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 395
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mConnectedDevAddr:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$8202(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 395
    iput-object p1, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mConnectedDevAddr:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$8300(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 395
    invoke-virtual {p0, p1}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$8400(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 395
    invoke-virtual {p0, p1}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$8500(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 395
    invoke-direct {p0}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->notifyInvitationReceived()V

    return-void
.end method

.method static synthetic access$8600(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 395
    invoke-virtual {p0, p1}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$8800(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 395
    invoke-virtual {p0, p1}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$8900(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 395
    invoke-virtual {p0, p1}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$9000(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 395
    invoke-virtual {p0, p1}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$9100(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 395
    invoke-virtual {p0, p1}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$9200(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 395
    invoke-virtual {p0, p1}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$9300(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 395
    invoke-virtual {p0, p1}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$9400(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 395
    invoke-virtual {p0, p1}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$9500(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 395
    invoke-direct {p0, p1}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->startDhcpServer(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$9700(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupCreatedState;
    .locals 1
    .parameter "x0"

    .prologue
    .line 395
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mGroupCreatedState:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupCreatedState;

    return-object v0
.end method

.method static synthetic access$9800(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 395
    invoke-virtual {p0, p1}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$9900(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 395
    invoke-virtual {p0, p1}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method private addMsgToDialog(Landroid/view/ViewGroup;ILjava/lang/String;)V
    .locals 6
    .parameter "group"
    .parameter "stringId"
    .parameter "value"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 2015
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    .line 2016
    .local v0, r:Landroid/content/res/Resources;
    iget-object v2, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->this$0:Landroid/net/wifi/p2p/WifiP2pService;

    #getter for: Landroid/net/wifi/p2p/WifiP2pService;->mContext:Landroid/content/Context;
    invoke-static {v2}, Landroid/net/wifi/p2p/WifiP2pService;->access$1100(Landroid/net/wifi/p2p/WifiP2pService;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x109010f

    invoke-virtual {v2, v3, p1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 2018
    .local v1, row:Landroid/view/View;
    iget-object v2, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->this$0:Landroid/net/wifi/p2p/WifiP2pService;

    const/16 v3, 0x1e

    #setter for: Landroid/net/wifi/p2p/WifiP2pService;->mLapseTime:I
    invoke-static {v2, v3}, Landroid/net/wifi/p2p/WifiP2pService;->access$12502(Landroid/net/wifi/p2p/WifiP2pService;I)I

    .line 2019
    iget-object v3, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->this$0:Landroid/net/wifi/p2p/WifiP2pService;

    const v2, 0x10202a5

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    #setter for: Landroid/net/wifi/p2p/WifiP2pService;->mInvitationMsg:Landroid/widget/TextView;
    invoke-static {v3, v2}, Landroid/net/wifi/p2p/WifiP2pService;->access$12602(Landroid/net/wifi/p2p/WifiP2pService;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 2020
    iget-object v2, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->this$0:Landroid/net/wifi/p2p/WifiP2pService;

    #getter for: Landroid/net/wifi/p2p/WifiP2pService;->mInvitationMsg:Landroid/widget/TextView;
    invoke-static {v2}, Landroid/net/wifi/p2p/WifiP2pService;->access$12600(Landroid/net/wifi/p2p/WifiP2pService;)Landroid/widget/TextView;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p3, v3, v4

    iget-object v4, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->this$0:Landroid/net/wifi/p2p/WifiP2pService;

    #getter for: Landroid/net/wifi/p2p/WifiP2pService;->mLapseTime:I
    invoke-static {v4}, Landroid/net/wifi/p2p/WifiP2pService;->access$12500(Landroid/net/wifi/p2p/WifiP2pService;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v0, p2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2021
    iget-object v2, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->this$0:Landroid/net/wifi/p2p/WifiP2pService;

    #getter for: Landroid/net/wifi/p2p/WifiP2pService;->mInvitationMsg:Landroid/widget/TextView;
    invoke-static {v2}, Landroid/net/wifi/p2p/WifiP2pService;->access$12600(Landroid/net/wifi/p2p/WifiP2pService;)Landroid/widget/TextView;

    move-result-object v2

    const/high16 v3, 0x4198

    invoke-virtual {v2, v5, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 2022
    const-string v2, "@android:style/Theme.DeviceDefault"

    const-string v3, "Theme.DeviceDefault.Light"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2023
    iget-object v2, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->this$0:Landroid/net/wifi/p2p/WifiP2pService;

    #getter for: Landroid/net/wifi/p2p/WifiP2pService;->mInvitationMsg:Landroid/widget/TextView;
    invoke-static {v2}, Landroid/net/wifi/p2p/WifiP2pService;->access$12600(Landroid/net/wifi/p2p/WifiP2pService;)Landroid/widget/TextView;

    move-result-object v2

    const v3, -0xd9d9da

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 2028
    :goto_0
    const v2, 0x1020419

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2031
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 2032
    return-void

    .line 2026
    :cond_0
    iget-object v2, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->this$0:Landroid/net/wifi/p2p/WifiP2pService;

    #getter for: Landroid/net/wifi/p2p/WifiP2pService;->mInvitationMsg:Landroid/widget/TextView;
    invoke-static {v2}, Landroid/net/wifi/p2p/WifiP2pService;->access$12600(Landroid/net/wifi/p2p/WifiP2pService;)Landroid/widget/TextView;

    move-result-object v2

    const v3, -0x141415

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0
.end method

.method private addRowToDialog(Landroid/view/ViewGroup;ILjava/lang/String;)V
    .locals 5
    .parameter "group"
    .parameter "stringId"
    .parameter "value"

    .prologue
    .line 2006
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    .line 2007
    .local v0, r:Landroid/content/res/Resources;
    iget-object v2, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->this$0:Landroid/net/wifi/p2p/WifiP2pService;

    #getter for: Landroid/net/wifi/p2p/WifiP2pService;->mContext:Landroid/content/Context;
    invoke-static {v2}, Landroid/net/wifi/p2p/WifiP2pService;->access$1100(Landroid/net/wifi/p2p/WifiP2pService;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x109010f

    const/4 v4, 0x0

    invoke-virtual {v2, v3, p1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 2009
    .local v1, row:Landroid/view/View;
    const v2, 0x1020419

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2010
    const v2, 0x10202a5

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2011
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 2012
    return-void
.end method

.method private clearNotification()V
    .locals 3

    .prologue
    .line 2320
    iget-object v1, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->this$0:Landroid/net/wifi/p2p/WifiP2pService;

    #getter for: Landroid/net/wifi/p2p/WifiP2pService;->mContext:Landroid/content/Context;
    invoke-static {v1}, Landroid/net/wifi/p2p/WifiP2pService;->access$1100(Landroid/net/wifi/p2p/WifiP2pService;)Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "notification"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 2322
    .local v0, notificationManager:Landroid/app/NotificationManager;
    if-eqz v0, :cond_0

    iget-object v1, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->this$0:Landroid/net/wifi/p2p/WifiP2pService;

    #getter for: Landroid/net/wifi/p2p/WifiP2pService;->mNotification:Landroid/app/Notification;
    invoke-static {v1}, Landroid/net/wifi/p2p/WifiP2pService;->access$13000(Landroid/net/wifi/p2p/WifiP2pService;)Landroid/app/Notification;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 2323
    iget-object v1, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->this$0:Landroid/net/wifi/p2p/WifiP2pService;

    #getter for: Landroid/net/wifi/p2p/WifiP2pService;->mNotification:Landroid/app/Notification;
    invoke-static {v1}, Landroid/net/wifi/p2p/WifiP2pService;->access$13000(Landroid/net/wifi/p2p/WifiP2pService;)Landroid/app/Notification;

    move-result-object v1

    iget v1, v1, Landroid/app/Notification;->icon:I

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 2324
    iget-object v1, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->this$0:Landroid/net/wifi/p2p/WifiP2pService;

    const/4 v2, 0x0

    #setter for: Landroid/net/wifi/p2p/WifiP2pService;->mNotification:Landroid/app/Notification;
    invoke-static {v1, v2}, Landroid/net/wifi/p2p/WifiP2pService;->access$13002(Landroid/net/wifi/p2p/WifiP2pService;Landroid/app/Notification;)Landroid/app/Notification;

    .line 2326
    :cond_0
    return-void
.end method

.method private clearStatusBarIcon()V
    .locals 3

    .prologue
    .line 2340
    iget-object v1, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->this$0:Landroid/net/wifi/p2p/WifiP2pService;

    #getter for: Landroid/net/wifi/p2p/WifiP2pService;->mContext:Landroid/content/Context;
    invoke-static {v1}, Landroid/net/wifi/p2p/WifiP2pService;->access$1100(Landroid/net/wifi/p2p/WifiP2pService;)Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "statusbar"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/StatusBarManager;

    .line 2342
    .local v0, mStatusBarManager:Landroid/app/StatusBarManager;
    const-string/jumbo v1, "wifi_p2p"

    invoke-virtual {v0, v1}, Landroid/app/StatusBarManager;->removeIcon(Ljava/lang/String;)V

    .line 2343
    return-void
.end method

.method private configuredNetworkId(Ljava/lang/String;)I
    .locals 1
    .parameter "deviceAddress"

    .prologue
    .line 2168
    const/4 v0, -0x1

    return v0
.end method

.method private getDeviceAddress(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "interfaceAddress"

    .prologue
    .line 2203
    iget-object v2, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mPeers:Landroid/net/wifi/p2p/WifiP2pDeviceList;

    invoke-virtual {v2}, Landroid/net/wifi/p2p/WifiP2pDeviceList;->getDeviceList()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 2204
    .local v0, d:Landroid/net/wifi/p2p/WifiP2pDevice;
    iget-object v2, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    invoke-static {v2}, Landroid/net/wifi/WifiNative;->p2pGetInterfaceAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2205
    iget-object v2, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    .line 2208
    .end local v0           #d:Landroid/net/wifi/p2p/WifiP2pDevice;
    :goto_0
    return-object v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private getDeviceName(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "deviceAddress"

    .prologue
    .line 2184
    iget-object v2, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mPeers:Landroid/net/wifi/p2p/WifiP2pDeviceList;

    invoke-virtual {v2}, Landroid/net/wifi/p2p/WifiP2pDeviceList;->getDeviceList()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 2185
    .local v0, d:Landroid/net/wifi/p2p/WifiP2pDevice;
    iget-object v2, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2186
    iget-object p1, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    .line 2190
    .end local v0           #d:Landroid/net/wifi/p2p/WifiP2pDevice;
    .end local p1
    :cond_1
    return-object p1
.end method

.method private getDeviceType(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "deviceAddress"

    .prologue
    .line 2194
    iget-object v2, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mPeers:Landroid/net/wifi/p2p/WifiP2pDeviceList;

    invoke-virtual {v2}, Landroid/net/wifi/p2p/WifiP2pDeviceList;->getDeviceList()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 2195
    .local v0, d:Landroid/net/wifi/p2p/WifiP2pDevice;
    iget-object v2, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2196
    iget-object v2, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->primaryDeviceType:Ljava/lang/String;

    .line 2199
    .end local v0           #d:Landroid/net/wifi/p2p/WifiP2pDevice;
    :goto_0
    return-object v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private initializeP2pSettings()V
    .locals 2

    .prologue
    .line 2214
    const/4 v0, 0x1

    invoke-static {v0}, Landroid/net/wifi/WifiNative;->setPersistentReconnect(Z)Z

    .line 2215
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->this$0:Landroid/net/wifi/p2p/WifiP2pService;

    #getter for: Landroid/net/wifi/p2p/WifiP2pService;->mThisDevice:Landroid/net/wifi/p2p/WifiP2pDevice;
    invoke-static {v0}, Landroid/net/wifi/p2p/WifiP2pService;->access$1300(Landroid/net/wifi/p2p/WifiP2pService;)Landroid/net/wifi/p2p/WifiP2pDevice;

    move-result-object v0

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/wifi/WifiNative;->setDeviceName(Ljava/lang/String;)Z

    .line 2216
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->this$0:Landroid/net/wifi/p2p/WifiP2pService;

    #getter for: Landroid/net/wifi/p2p/WifiP2pService;->mThisDevice:Landroid/net/wifi/p2p/WifiP2pDevice;
    invoke-static {v0}, Landroid/net/wifi/p2p/WifiP2pService;->access$1300(Landroid/net/wifi/p2p/WifiP2pService;)Landroid/net/wifi/p2p/WifiP2pDevice;

    move-result-object v0

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->primaryDeviceType:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/wifi/WifiNative;->setDeviceType(Ljava/lang/String;)Z

    .line 2219
    const-string/jumbo v0, "keypad display push_button"

    invoke-static {v0}, Landroid/net/wifi/WifiNative;->setConfigMethods(Ljava/lang/String;)Z

    .line 2222
    new-instance v0, Landroid/net/wifi/p2p/WifiP2pStaticIpConfig;

    invoke-direct {v0}, Landroid/net/wifi/p2p/WifiP2pStaticIpConfig;-><init>()V

    iput-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mP2pStaticIpConfig:Landroid/net/wifi/p2p/WifiP2pStaticIpConfig;

    .line 2223
    const-string/jumbo v0, "static_ip"

    const-string v1, "192.168.49.10"

    invoke-static {v0, v1}, Landroid/net/wifi/WifiNative;->p2pSet(Ljava/lang/String;Ljava/lang/String;)Z

    .line 2224
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mP2pStaticIpConfig:Landroid/net/wifi/p2p/WifiP2pStaticIpConfig;

    const-string v1, "192.168.49.10"

    invoke-static {v1}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v1

    invoke-static {v1}, Landroid/net/NetworkUtils;->inetAddressToInt(Ljava/net/InetAddress;)I

    move-result v1

    iput v1, v0, Landroid/net/wifi/p2p/WifiP2pStaticIpConfig;->mThisDeviceStaticIp:I

    .line 2228
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->this$0:Landroid/net/wifi/p2p/WifiP2pService;

    #getter for: Landroid/net/wifi/p2p/WifiP2pService;->mThisDevice:Landroid/net/wifi/p2p/WifiP2pDevice;
    invoke-static {v0}, Landroid/net/wifi/p2p/WifiP2pService;->access$1300(Landroid/net/wifi/p2p/WifiP2pService;)Landroid/net/wifi/p2p/WifiP2pDevice;

    move-result-object v0

    invoke-static {}, Landroid/net/wifi/WifiNative;->p2pGetDeviceAddress()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    .line 2229
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->updateThisDevice(I)V

    .line 2231
    return-void
.end method

.method private isAirplaneModeOn()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 2353
    invoke-direct {p0}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->isAirplaneSensitive()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->this$0:Landroid/net/wifi/p2p/WifiP2pService;

    #getter for: Landroid/net/wifi/p2p/WifiP2pService;->mContext:Landroid/content/Context;
    invoke-static {v2}, Landroid/net/wifi/p2p/WifiP2pService;->access$1100(Landroid/net/wifi/p2p/WifiP2pService;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "airplane_mode_on"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method private isAirplaneSensitive()Z
    .locals 3

    .prologue
    .line 2346
    iget-object v1, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->this$0:Landroid/net/wifi/p2p/WifiP2pService;

    #getter for: Landroid/net/wifi/p2p/WifiP2pService;->mContext:Landroid/content/Context;
    invoke-static {v1}, Landroid/net/wifi/p2p/WifiP2pService;->access$1100(Landroid/net/wifi/p2p/WifiP2pService;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "airplane_mode_radios"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2348
    .local v0, airplaneModeRadios:Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string/jumbo v1, "wifi"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isGroupOwner(Ljava/lang/String;)Z
    .locals 3
    .parameter "deviceAddress"

    .prologue
    .line 2158
    iget-object v2, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mPeers:Landroid/net/wifi/p2p/WifiP2pDeviceList;

    invoke-virtual {v2}, Landroid/net/wifi/p2p/WifiP2pDeviceList;->getDeviceList()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 2159
    .local v0, d:Landroid/net/wifi/p2p/WifiP2pDevice;
    iget-object v2, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2160
    invoke-virtual {v0}, Landroid/net/wifi/p2p/WifiP2pDevice;->isGroupOwner()Z

    move-result v2

    .line 2163
    .end local v0           #d:Landroid/net/wifi/p2p/WifiP2pDevice;
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private isWifiP2pSettingScreen()Z
    .locals 8

    .prologue
    const/4 v4, 0x1

    .line 2358
    iget-object v5, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->this$0:Landroid/net/wifi/p2p/WifiP2pService;

    #getter for: Landroid/net/wifi/p2p/WifiP2pService;->mContext:Landroid/content/Context;
    invoke-static {v5}, Landroid/net/wifi/p2p/WifiP2pService;->access$1100(Landroid/net/wifi/p2p/WifiP2pService;)Landroid/content/Context;

    move-result-object v5

    const-string v6, "activity"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 2359
    .local v0, activityManager:Landroid/app/ActivityManager;
    invoke-virtual {v0, v4}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v1

    .line 2360
    .local v1, info:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, iterator:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 2361
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 2362
    .local v3, runningTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;
    const-string v5, "WifiP2pService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "isWifiP2pSettingScreen: top:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v3, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v7}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2363
    iget-object v5, v3, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v5}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "com.android.settings.wifi.p2p.WifiP2pSettings"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    iget-object v5, v3, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v5}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "com.android.settings.Settings$WifiP2pDevicePickerActivity"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    iget-object v5, v3, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v5}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "com.android.settings.wifi.p2p.WifiP2pDummyPickerActivity"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 2369
    .end local v3           #runningTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;
    :cond_1
    :goto_0
    return v4

    :cond_2
    const/4 v4, 0x0

    goto :goto_0
.end method

.method private logd(Ljava/lang/String;)V
    .locals 1
    .parameter "s"

    .prologue
    .line 2272
    const-string v0, "WifiP2pService"

    invoke-static {v0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2273
    return-void
.end method

.method private loge(Ljava/lang/String;)V
    .locals 1
    .parameter "s"

    .prologue
    .line 2276
    const-string v0, "WifiP2pService"

    invoke-static {v0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2277
    return-void
.end method

.method private notifyInvitationReceived()V
    .locals 12

    .prologue
    .line 2055
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v8

    .line 2056
    .local v8, r:Landroid/content/res/Resources;
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mSavedPeerConfig:Landroid/net/wifi/p2p/WifiP2pConfig;

    iget-object v10, v0, Landroid/net/wifi/p2p/WifiP2pConfig;->wps:Landroid/net/wifi/WpsInfo;

    .line 2057
    .local v10, wps:Landroid/net/wifi/WpsInfo;
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->this$0:Landroid/net/wifi/p2p/WifiP2pService;

    #getter for: Landroid/net/wifi/p2p/WifiP2pService;->mContext:Landroid/content/Context;
    invoke-static {v0}, Landroid/net/wifi/p2p/WifiP2pService;->access$1100(Landroid/net/wifi/p2p/WifiP2pService;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x109010e

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v9

    .line 2060
    .local v9, textEntryView:Landroid/view/View;
    const v0, 0x10203ec

    invoke-virtual {v9, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/view/ViewGroup;

    .line 2063
    .local v6, group:Landroid/view/ViewGroup;
    const v0, 0x10404b9

    iget-object v1, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mSavedPeerConfig:Landroid/net/wifi/p2p/WifiP2pConfig;

    iget-object v1, v1, Landroid/net/wifi/p2p/WifiP2pConfig;->deviceAddress:Ljava/lang/String;

    invoke-direct {p0, v1}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->getDeviceName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v6, v0, v1}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->addMsgToDialog(Landroid/view/ViewGroup;ILjava/lang/String;)V

    .line 2066
    const v0, 0x1020418

    invoke-virtual {v9, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/EditText;

    .line 2068
    .local v7, pin:Landroid/widget/EditText;
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->this$0:Landroid/net/wifi/p2p/WifiP2pService;

    #getter for: Landroid/net/wifi/p2p/WifiP2pService;->mDialogWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v0}, Landroid/net/wifi/p2p/WifiP2pService;->access$600(Landroid/net/wifi/p2p/WifiP2pService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    const-wide/16 v1, 0x2710

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 2070
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->this$0:Landroid/net/wifi/p2p/WifiP2pService;

    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->this$0:Landroid/net/wifi/p2p/WifiP2pService;

    #getter for: Landroid/net/wifi/p2p/WifiP2pService;->mContext:Landroid/content/Context;
    invoke-static {v2}, Landroid/net/wifi/p2p/WifiP2pService;->access$1100(Landroid/net/wifi/p2p/WifiP2pService;)Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x10404b1

    invoke-virtual {v8, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v9}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x10404ae

    invoke-virtual {v8, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$3;

    invoke-direct {v3, p0, v10, v7}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$3;-><init>(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Landroid/net/wifi/WpsInfo;Landroid/widget/EditText;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x10404af

    invoke-virtual {v8, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$2;

    invoke-direct {v3, p0}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$2;-><init>(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$1;

    invoke-direct {v2, p0}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$1;-><init>(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)V

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    #setter for: Landroid/net/wifi/p2p/WifiP2pService;->mInvitationDialog:Landroid/app/AlertDialog;
    invoke-static {v0, v1}, Landroid/net/wifi/p2p/WifiP2pService;->access$12702(Landroid/net/wifi/p2p/WifiP2pService;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    .line 2108
    iget v0, v10, Landroid/net/wifi/WpsInfo;->setup:I

    packed-switch v0, :pswitch_data_0

    .line 2121
    :goto_0
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->this$0:Landroid/net/wifi/p2p/WifiP2pService;

    #getter for: Landroid/net/wifi/p2p/WifiP2pService;->mInvitationDialog:Landroid/app/AlertDialog;
    invoke-static {v0}, Landroid/net/wifi/p2p/WifiP2pService;->access$12700(Landroid/net/wifi/p2p/WifiP2pService;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x7d8

    invoke-virtual {v0, v1}, Landroid/view/Window;->setType(I)V

    .line 2122
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->this$0:Landroid/net/wifi/p2p/WifiP2pService;

    #getter for: Landroid/net/wifi/p2p/WifiP2pService;->mInvitationDialog:Landroid/app/AlertDialog;
    invoke-static {v0}, Landroid/net/wifi/p2p/WifiP2pService;->access$12700(Landroid/net/wifi/p2p/WifiP2pService;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 2123
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->this$0:Landroid/net/wifi/p2p/WifiP2pService;

    iget-object v1, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->this$0:Landroid/net/wifi/p2p/WifiP2pService;

    #getter for: Landroid/net/wifi/p2p/WifiP2pService;->mInvitationDialog:Landroid/app/AlertDialog;
    invoke-static {v1}, Landroid/net/wifi/p2p/WifiP2pService;->access$12700(Landroid/net/wifi/p2p/WifiP2pService;)Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, v0, Landroid/net/wifi/p2p/WifiP2pService;->t_dialog:Landroid/app/AlertDialog;

    .line 2125
    iget-object v11, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->this$0:Landroid/net/wifi/p2p/WifiP2pService;

    new-instance v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$4;

    const-wide/16 v2, 0x7530

    const-wide/16 v4, 0x3e8

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$4;-><init>(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;JJ)V

    invoke-virtual {v0}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$4;->start()Landroid/os/CountDownTimer;

    move-result-object v0

    #setter for: Landroid/net/wifi/p2p/WifiP2pService;->mWpsTimer:Landroid/os/CountDownTimer;
    invoke-static {v11, v0}, Landroid/net/wifi/p2p/WifiP2pService;->access$12802(Landroid/net/wifi/p2p/WifiP2pService;Landroid/os/CountDownTimer;)Landroid/os/CountDownTimer;

    .line 2138
    return-void

    .line 2110
    :pswitch_0
    const-string v0, "Enter pin section visible"

    invoke-direct {p0, v0}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->logd(Ljava/lang/String;)V

    .line 2111
    const v0, 0x1020417

    invoke-virtual {v9, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 2114
    :pswitch_1
    const-string v0, "Shown pin section visible"

    invoke-direct {p0, v0}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->logd(Ljava/lang/String;)V

    .line 2115
    const v0, 0x10404b5

    iget-object v1, v10, Landroid/net/wifi/WpsInfo;->pin:Ljava/lang/String;

    invoke-direct {p0, v6, v0, v1}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->addRowToDialog(Landroid/view/ViewGroup;ILjava/lang/String;)V

    goto :goto_0

    .line 2108
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private notifyInvitationReceivedForceAccept()V
    .locals 1

    .prologue
    .line 2141
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mSavedPeerConfig:Landroid/net/wifi/p2p/WifiP2pConfig;

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pConfig;->wps:Landroid/net/wifi/WpsInfo;

    iget v0, v0, Landroid/net/wifi/WpsInfo;->setup:I

    if-nez v0, :cond_0

    .line 2142
    invoke-static {}, Landroid/net/wifi/WifiNative;->wpsPbc()Z

    .line 2146
    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mSavedPeerConfig:Landroid/net/wifi/p2p/WifiP2pConfig;

    .line 2147
    return-void

    .line 2144
    :cond_0
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mSavedPeerConfig:Landroid/net/wifi/p2p/WifiP2pConfig;

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pConfig;->wps:Landroid/net/wifi/WpsInfo;

    iget-object v0, v0, Landroid/net/wifi/WpsInfo;->pin:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/wifi/WifiNative;->wpsPin(Ljava/lang/String;)Z

    goto :goto_0
.end method

.method private notifyInvitationSent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .parameter "pin"
    .parameter "peerAddress"

    .prologue
    const/4 v6, 0x0

    .line 2035
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v2

    .line 2037
    .local v2, r:Landroid/content/res/Resources;
    iget-object v4, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->this$0:Landroid/net/wifi/p2p/WifiP2pService;

    #getter for: Landroid/net/wifi/p2p/WifiP2pService;->mContext:Landroid/content/Context;
    invoke-static {v4}, Landroid/net/wifi/p2p/WifiP2pService;->access$1100(Landroid/net/wifi/p2p/WifiP2pService;)Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    const v5, 0x109010e

    invoke-virtual {v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 2040
    .local v3, textEntryView:Landroid/view/View;
    const v4, 0x10203ec

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 2041
    .local v1, group:Landroid/view/ViewGroup;
    const v4, 0x10404b3

    invoke-direct {p0, p2}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->getDeviceName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v1, v4, v5}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->addRowToDialog(Landroid/view/ViewGroup;ILjava/lang/String;)V

    .line 2042
    const v4, 0x10404b5

    invoke-direct {p0, v1, v4, p1}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->addRowToDialog(Landroid/view/ViewGroup;ILjava/lang/String;)V

    .line 2044
    new-instance v4, Landroid/app/AlertDialog$Builder;

    iget-object v5, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->this$0:Landroid/net/wifi/p2p/WifiP2pService;

    #getter for: Landroid/net/wifi/p2p/WifiP2pService;->mContext:Landroid/content/Context;
    invoke-static {v5}, Landroid/net/wifi/p2p/WifiP2pService;->access$1100(Landroid/net/wifi/p2p/WifiP2pService;)Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v5, 0x10404b0

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x104000a

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 2049
    .local v0, dialog:Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    const/16 v5, 0x7d8

    invoke-virtual {v4, v5}, Landroid/view/Window;->setType(I)V

    .line 2050
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 2051
    iget-object v4, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->this$0:Landroid/net/wifi/p2p/WifiP2pService;

    iput-object v0, v4, Landroid/net/wifi/p2p/WifiP2pService;->t_dialog:Landroid/app/AlertDialog;

    .line 2052
    return-void
.end method

.method private notifyP2pEnableFailure()V
    .locals 5

    .prologue
    .line 1983
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    .line 1984
    .local v1, r:Landroid/content/res/Resources;
    new-instance v2, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->this$0:Landroid/net/wifi/p2p/WifiP2pService;

    #getter for: Landroid/net/wifi/p2p/WifiP2pService;->mContext:Landroid/content/Context;
    invoke-static {v3}, Landroid/net/wifi/p2p/WifiP2pService;->access$1100(Landroid/net/wifi/p2p/WifiP2pService;)Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x10404ab

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x10404ad

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x104000a

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 1989
    .local v0, dialog:Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/16 v3, 0x7d8

    invoke-virtual {v2, v3}, Landroid/view/Window;->setType(I)V

    .line 1990
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 1991
    iget-object v2, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->this$0:Landroid/net/wifi/p2p/WifiP2pService;

    iput-object v0, v2, Landroid/net/wifi/p2p/WifiP2pService;->t_dialog:Landroid/app/AlertDialog;

    .line 1992
    return-void
.end method

.method private obtainMessage(Landroid/os/Message;)Landroid/os/Message;
    .locals 2
    .parameter "srcMsg"

    .prologue
    .line 2266
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 2267
    .local v0, msg:Landroid/os/Message;
    iget v1, p1, Landroid/os/Message;->arg2:I

    iput v1, v0, Landroid/os/Message;->arg2:I

    .line 2268
    return-object v0
.end method

.method private replyToMessage(Landroid/os/Message;I)V
    .locals 2
    .parameter "msg"
    .parameter "what"

    .prologue
    .line 2241
    iget-object v1, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    if-nez v1, :cond_0

    .line 2245
    :goto_0
    return-void

    .line 2242
    :cond_0
    invoke-direct {p0, p1}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->obtainMessage(Landroid/os/Message;)Landroid/os/Message;

    move-result-object v0

    .line 2243
    .local v0, dstMsg:Landroid/os/Message;
    iput p2, v0, Landroid/os/Message;->what:I

    .line 2244
    iget-object v1, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->this$0:Landroid/net/wifi/p2p/WifiP2pService;

    #getter for: Landroid/net/wifi/p2p/WifiP2pService;->mReplyChannel:Lcom/android/internal/util/AsyncChannel;
    invoke-static {v1}, Landroid/net/wifi/p2p/WifiP2pService;->access$12900(Landroid/net/wifi/p2p/WifiP2pService;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lcom/android/internal/util/AsyncChannel;->replyToMessage(Landroid/os/Message;Landroid/os/Message;)V

    goto :goto_0
.end method

.method private replyToMessage(Landroid/os/Message;II)V
    .locals 2
    .parameter "msg"
    .parameter "what"
    .parameter "arg1"

    .prologue
    .line 2248
    iget-object v1, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    if-nez v1, :cond_0

    .line 2253
    :goto_0
    return-void

    .line 2249
    :cond_0
    invoke-direct {p0, p1}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->obtainMessage(Landroid/os/Message;)Landroid/os/Message;

    move-result-object v0

    .line 2250
    .local v0, dstMsg:Landroid/os/Message;
    iput p2, v0, Landroid/os/Message;->what:I

    .line 2251
    iput p3, v0, Landroid/os/Message;->arg1:I

    .line 2252
    iget-object v1, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->this$0:Landroid/net/wifi/p2p/WifiP2pService;

    #getter for: Landroid/net/wifi/p2p/WifiP2pService;->mReplyChannel:Lcom/android/internal/util/AsyncChannel;
    invoke-static {v1}, Landroid/net/wifi/p2p/WifiP2pService;->access$12900(Landroid/net/wifi/p2p/WifiP2pService;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lcom/android/internal/util/AsyncChannel;->replyToMessage(Landroid/os/Message;Landroid/os/Message;)V

    goto :goto_0
.end method

.method private replyToMessage(Landroid/os/Message;ILjava/lang/Object;)V
    .locals 2
    .parameter "msg"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 2256
    iget-object v1, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    if-nez v1, :cond_0

    .line 2261
    :goto_0
    return-void

    .line 2257
    :cond_0
    invoke-direct {p0, p1}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->obtainMessage(Landroid/os/Message;)Landroid/os/Message;

    move-result-object v0

    .line 2258
    .local v0, dstMsg:Landroid/os/Message;
    iput p2, v0, Landroid/os/Message;->what:I

    .line 2259
    iput-object p3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 2260
    iget-object v1, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->this$0:Landroid/net/wifi/p2p/WifiP2pService;

    #getter for: Landroid/net/wifi/p2p/WifiP2pService;->mReplyChannel:Lcom/android/internal/util/AsyncChannel;
    invoke-static {v1}, Landroid/net/wifi/p2p/WifiP2pService;->access$12900(Landroid/net/wifi/p2p/WifiP2pService;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lcom/android/internal/util/AsyncChannel;->replyToMessage(Landroid/os/Message;Landroid/os/Message;)V

    goto :goto_0
.end method

.method private sendP2pConnectionChangedBroadcast()V
    .locals 4

    .prologue
    .line 1924
    const-string/jumbo v1, "sending p2p connection changed broadcast"

    invoke-direct {p0, v1}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->logd(Ljava/lang/String;)V

    .line 1925
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.net.wifi.p2p.CONNECTION_STATE_CHANGE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1926
    .local v0, intent:Landroid/content/Intent;
    const/high16 v1, 0x3000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1928
    const-string/jumbo v1, "wifiP2pInfo"

    new-instance v2, Landroid/net/wifi/p2p/WifiP2pInfo;

    iget-object v3, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mWifiP2pInfo:Landroid/net/wifi/p2p/WifiP2pInfo;

    invoke-direct {v2, v3}, Landroid/net/wifi/p2p/WifiP2pInfo;-><init>(Landroid/net/wifi/p2p/WifiP2pInfo;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1929
    const-string/jumbo v1, "networkInfo"

    new-instance v2, Landroid/net/NetworkInfo;

    iget-object v3, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->this$0:Landroid/net/wifi/p2p/WifiP2pService;

    #getter for: Landroid/net/wifi/p2p/WifiP2pService;->mNetworkInfo:Landroid/net/NetworkInfo;
    invoke-static {v3}, Landroid/net/wifi/p2p/WifiP2pService;->access$5100(Landroid/net/wifi/p2p/WifiP2pService;)Landroid/net/NetworkInfo;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/net/NetworkInfo;-><init>(Landroid/net/NetworkInfo;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1930
    const-string v1, "connectedDevAddress"

    iget-object v2, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mConnectedDevAddr:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1931
    iget-object v1, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->this$0:Landroid/net/wifi/p2p/WifiP2pService;

    #getter for: Landroid/net/wifi/p2p/WifiP2pService;->mContext:Landroid/content/Context;
    invoke-static {v1}, Landroid/net/wifi/p2p/WifiP2pService;->access$1100(Landroid/net/wifi/p2p/WifiP2pService;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    .line 1933
    iget-object v1, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mConnectedDevAddr:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 1934
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mConnectedDevAddr:Ljava/lang/String;

    .line 1935
    :cond_0
    return-void
.end method

.method private sendP2pPeersChangedBroadcast()V
    .locals 3

    .prologue
    .line 1913
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.net.wifi.p2p.PEERS_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1914
    .local v0, intent:Landroid/content/Intent;
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1915
    const-string/jumbo v1, "wifiP2pGroupInfo"

    iget-object v2, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mGroup:Landroid/net/wifi/p2p/WifiP2pGroup;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1916
    const-string v1, "connectedDevAddress"

    iget-object v2, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mConnectedDevAddr:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1917
    iget-object v1, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->this$0:Landroid/net/wifi/p2p/WifiP2pService;

    #getter for: Landroid/net/wifi/p2p/WifiP2pService;->mContext:Landroid/content/Context;
    invoke-static {v1}, Landroid/net/wifi/p2p/WifiP2pService;->access$1100(Landroid/net/wifi/p2p/WifiP2pService;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1919
    iget-object v1, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mConnectedDevAddr:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 1920
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mConnectedDevAddr:Ljava/lang/String;

    .line 1921
    :cond_0
    return-void
.end method

.method private sendP2pStateChangedBroadcast(Z)V
    .locals 3
    .parameter "enabled"

    .prologue
    .line 1893
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.net.wifi.p2p.STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1894
    .local v0, intent:Landroid/content/Intent;
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1895
    if-eqz p1, :cond_0

    .line 1896
    const-string/jumbo v1, "wifi_p2p_state"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1902
    :goto_0
    iget-object v1, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->this$0:Landroid/net/wifi/p2p/WifiP2pService;

    #getter for: Landroid/net/wifi/p2p/WifiP2pService;->mContext:Landroid/content/Context;
    invoke-static {v1}, Landroid/net/wifi/p2p/WifiP2pService;->access$1100(Landroid/net/wifi/p2p/WifiP2pService;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    .line 1903
    return-void

    .line 1899
    :cond_0
    const-string/jumbo v1, "wifi_p2p_state"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_0
.end method

.method private sendThisDeviceChangedBroadcast()V
    .locals 4

    .prologue
    .line 1906
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.net.wifi.p2p.THIS_DEVICE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1907
    .local v0, intent:Landroid/content/Intent;
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1908
    const-string/jumbo v1, "wifiP2pDevice"

    new-instance v2, Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v3, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->this$0:Landroid/net/wifi/p2p/WifiP2pService;

    #getter for: Landroid/net/wifi/p2p/WifiP2pService;->mThisDevice:Landroid/net/wifi/p2p/WifiP2pDevice;
    invoke-static {v3}, Landroid/net/wifi/p2p/WifiP2pService;->access$1300(Landroid/net/wifi/p2p/WifiP2pService;)Landroid/net/wifi/p2p/WifiP2pDevice;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/net/wifi/p2p/WifiP2pDevice;-><init>(Landroid/net/wifi/p2p/WifiP2pDevice;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1909
    iget-object v1, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->this$0:Landroid/net/wifi/p2p/WifiP2pService;

    #getter for: Landroid/net/wifi/p2p/WifiP2pService;->mContext:Landroid/content/Context;
    invoke-static {v1}, Landroid/net/wifi/p2p/WifiP2pService;->access$1100(Landroid/net/wifi/p2p/WifiP2pService;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    .line 1910
    return-void
.end method

.method private sendWfdSessionChangedBroadcast()V
    .locals 3

    .prologue
    .line 1939
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sending Wfd session changed broadcast\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mWfdInfo:Lcom/samsung/wfd/WfdInfo;

    invoke-virtual {v2}, Lcom/samsung/wfd/WfdInfo;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->logd(Ljava/lang/String;)V

    .line 1940
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1941
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->this$0:Landroid/net/wifi/p2p/WifiP2pService;

    #getter for: Landroid/net/wifi/p2p/WifiP2pService;->mNetworkInfo:Landroid/net/NetworkInfo;
    invoke-static {v1}, Landroid/net/wifi/p2p/WifiP2pService;->access$5100(Landroid/net/wifi/p2p/WifiP2pService;)Landroid/net/NetworkInfo;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1942
    const-string v1, "com.samsung.wfd.P2P_CONNECTION_ESTABLISHED"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1946
    :goto_0
    const/high16 v1, 0x3000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1948
    const-string v1, "android.intent.action.WIFI_DISPLAY_RES"

    iget-object v2, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mWfdInfo:Lcom/samsung/wfd/WfdInfo;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1949
    const-string/jumbo v1, "wifiP2pGroupInfo"

    iget-object v2, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mGroup:Landroid/net/wifi/p2p/WifiP2pGroup;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1950
    iget-object v1, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->this$0:Landroid/net/wifi/p2p/WifiP2pService;

    #getter for: Landroid/net/wifi/p2p/WifiP2pService;->mContext:Landroid/content/Context;
    invoke-static {v1}, Landroid/net/wifi/p2p/WifiP2pService;->access$1100(Landroid/net/wifi/p2p/WifiP2pService;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    .line 1951
    return-void

    .line 1944
    :cond_0
    const-string v1, "com.samsung.wfd.P2P_CONNECTION_TERMINATED"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0
.end method

.method private setWifiP2pInfoOnGroupFormation(Ljava/lang/String;)V
    .locals 2
    .parameter "serverAddress"

    .prologue
    .line 2172
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mWifiP2pInfo:Landroid/net/wifi/p2p/WifiP2pInfo;

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/net/wifi/p2p/WifiP2pInfo;->groupFormed:Z

    .line 2173
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mWifiP2pInfo:Landroid/net/wifi/p2p/WifiP2pInfo;

    iget-object v1, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mGroup:Landroid/net/wifi/p2p/WifiP2pGroup;

    invoke-virtual {v1}, Landroid/net/wifi/p2p/WifiP2pGroup;->isGroupOwner()Z

    move-result v1

    iput-boolean v1, v0, Landroid/net/wifi/p2p/WifiP2pInfo;->isGroupOwner:Z

    .line 2174
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mWifiP2pInfo:Landroid/net/wifi/p2p/WifiP2pInfo;

    invoke-static {p1}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v1

    iput-object v1, v0, Landroid/net/wifi/p2p/WifiP2pInfo;->groupOwnerAddress:Ljava/net/InetAddress;

    .line 2175
    return-void
.end method

.method private setWifiP2pInfoOnGroupTermination()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 2178
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mWifiP2pInfo:Landroid/net/wifi/p2p/WifiP2pInfo;

    iput-boolean v1, v0, Landroid/net/wifi/p2p/WifiP2pInfo;->groupFormed:Z

    .line 2179
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mWifiP2pInfo:Landroid/net/wifi/p2p/WifiP2pInfo;

    iput-boolean v1, v0, Landroid/net/wifi/p2p/WifiP2pInfo;->isGroupOwner:Z

    .line 2180
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mWifiP2pInfo:Landroid/net/wifi/p2p/WifiP2pInfo;

    const/4 v1, 0x0

    iput-object v1, v0, Landroid/net/wifi/p2p/WifiP2pInfo;->groupOwnerAddress:Ljava/net/InetAddress;

    .line 2181
    return-void
.end method

.method private showConnectionLimitDialog()V
    .locals 7

    .prologue
    .line 1995
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    .line 1996
    .local v1, r:Landroid/content/res/Resources;
    new-instance v2, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->this$0:Landroid/net/wifi/p2p/WifiP2pService;

    #getter for: Landroid/net/wifi/p2p/WifiP2pService;->mContext:Landroid/content/Context;
    invoke-static {v3}, Landroid/net/wifi/p2p/WifiP2pService;->access$1100(Landroid/net/wifi/p2p/WifiP2pService;)Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x10404ab

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x10404bb

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const/4 v6, 0x5

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v1, v3, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x104000a

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 2001
    .local v0, dialog:Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/16 v3, 0x7d8

    invoke-virtual {v2, v3}, Landroid/view/Window;->setType(I)V

    .line 2002
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 2003
    return-void
.end method

.method private showNotification()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    .line 2280
    iget-object v6, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->this$0:Landroid/net/wifi/p2p/WifiP2pService;

    #getter for: Landroid/net/wifi/p2p/WifiP2pService;->mContext:Landroid/content/Context;
    invoke-static {v6}, Landroid/net/wifi/p2p/WifiP2pService;->access$1100(Landroid/net/wifi/p2p/WifiP2pService;)Landroid/content/Context;

    move-result-object v6

    const-string/jumbo v7, "notification"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/NotificationManager;

    .line 2282
    .local v2, notificationManager:Landroid/app/NotificationManager;
    if-nez v2, :cond_0

    .line 2317
    :goto_0
    return-void

    .line 2286
    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 2287
    .local v0, intent:Landroid/content/Intent;
    const-string v6, "com.android.settings"

    const-string v7, "com.android.settings.wifi.p2p.WifiP2pSettings"

    invoke-virtual {v0, v6, v7}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2288
    const/high16 v6, 0x3000

    invoke-virtual {v0, v6}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 2290
    iget-object v6, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->this$0:Landroid/net/wifi/p2p/WifiP2pService;

    #getter for: Landroid/net/wifi/p2p/WifiP2pService;->mContext:Landroid/content/Context;
    invoke-static {v6}, Landroid/net/wifi/p2p/WifiP2pService;->access$1100(Landroid/net/wifi/p2p/WifiP2pService;)Landroid/content/Context;

    move-result-object v6

    invoke-static {v6, v9, v0, v9}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    .line 2292
    .local v3, pi:Landroid/app/PendingIntent;
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v4

    .line 2294
    .local v4, r:Landroid/content/res/Resources;
    iget-object v6, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->this$0:Landroid/net/wifi/p2p/WifiP2pService;

    #getter for: Landroid/net/wifi/p2p/WifiP2pService;->mNetworkInfo:Landroid/net/NetworkInfo;
    invoke-static {v6}, Landroid/net/wifi/p2p/WifiP2pService;->access$5100(Landroid/net/wifi/p2p/WifiP2pService;)Landroid/net/NetworkInfo;

    move-result-object v6

    invoke-virtual {v6}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 2295
    const-string v6, "WifiP2pService"

    const-string v7, "Wi-Fi direct connected"

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2296
    const v6, 0x10404b8

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    iget-object v8, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->this$0:Landroid/net/wifi/p2p/WifiP2pService;

    #getter for: Landroid/net/wifi/p2p/WifiP2pService;->mConnectedDevicesCnt:I
    invoke-static {v8}, Landroid/net/wifi/p2p/WifiP2pService;->access$10300(Landroid/net/wifi/p2p/WifiP2pService;)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v9

    invoke-virtual {v4, v6, v7}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 2302
    .local v5, title:Ljava/lang/CharSequence;
    :goto_1
    const v6, 0x10404b7

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    .line 2305
    .local v1, message:Ljava/lang/CharSequence;
    iget-object v6, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->this$0:Landroid/net/wifi/p2p/WifiP2pService;

    #getter for: Landroid/net/wifi/p2p/WifiP2pService;->mNotification:Landroid/app/Notification;
    invoke-static {v6}, Landroid/net/wifi/p2p/WifiP2pService;->access$13000(Landroid/net/wifi/p2p/WifiP2pService;)Landroid/app/Notification;

    move-result-object v6

    if-nez v6, :cond_1

    .line 2306
    iget-object v6, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->this$0:Landroid/net/wifi/p2p/WifiP2pService;

    new-instance v7, Landroid/app/Notification;

    invoke-direct {v7}, Landroid/app/Notification;-><init>()V

    #setter for: Landroid/net/wifi/p2p/WifiP2pService;->mNotification:Landroid/app/Notification;
    invoke-static {v6, v7}, Landroid/net/wifi/p2p/WifiP2pService;->access$13002(Landroid/net/wifi/p2p/WifiP2pService;Landroid/app/Notification;)Landroid/app/Notification;

    .line 2307
    iget-object v6, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->this$0:Landroid/net/wifi/p2p/WifiP2pService;

    #getter for: Landroid/net/wifi/p2p/WifiP2pService;->mNotification:Landroid/app/Notification;
    invoke-static {v6}, Landroid/net/wifi/p2p/WifiP2pService;->access$13000(Landroid/net/wifi/p2p/WifiP2pService;)Landroid/app/Notification;

    move-result-object v6

    const-wide/16 v7, 0x0

    iput-wide v7, v6, Landroid/app/Notification;->when:J

    .line 2309
    iget-object v6, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->this$0:Landroid/net/wifi/p2p/WifiP2pService;

    #getter for: Landroid/net/wifi/p2p/WifiP2pService;->mNotification:Landroid/app/Notification;
    invoke-static {v6}, Landroid/net/wifi/p2p/WifiP2pService;->access$13000(Landroid/net/wifi/p2p/WifiP2pService;)Landroid/app/Notification;

    move-result-object v6

    const v7, 0x108068a

    iput v7, v6, Landroid/app/Notification;->icon:I

    .line 2310
    iget-object v6, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->this$0:Landroid/net/wifi/p2p/WifiP2pService;

    #getter for: Landroid/net/wifi/p2p/WifiP2pService;->mNotification:Landroid/app/Notification;
    invoke-static {v6}, Landroid/net/wifi/p2p/WifiP2pService;->access$13000(Landroid/net/wifi/p2p/WifiP2pService;)Landroid/app/Notification;

    move-result-object v6

    iget v7, v6, Landroid/app/Notification;->defaults:I

    and-int/lit8 v7, v7, -0x2

    iput v7, v6, Landroid/app/Notification;->defaults:I

    .line 2311
    iget-object v6, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->this$0:Landroid/net/wifi/p2p/WifiP2pService;

    #getter for: Landroid/net/wifi/p2p/WifiP2pService;->mNotification:Landroid/app/Notification;
    invoke-static {v6}, Landroid/net/wifi/p2p/WifiP2pService;->access$13000(Landroid/net/wifi/p2p/WifiP2pService;)Landroid/app/Notification;

    move-result-object v6

    const/4 v7, 0x2

    iput v7, v6, Landroid/app/Notification;->flags:I

    .line 2312
    iget-object v6, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->this$0:Landroid/net/wifi/p2p/WifiP2pService;

    #getter for: Landroid/net/wifi/p2p/WifiP2pService;->mNotification:Landroid/app/Notification;
    invoke-static {v6}, Landroid/net/wifi/p2p/WifiP2pService;->access$13000(Landroid/net/wifi/p2p/WifiP2pService;)Landroid/app/Notification;

    move-result-object v6

    iput-object v5, v6, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 2314
    :cond_1
    iget-object v6, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->this$0:Landroid/net/wifi/p2p/WifiP2pService;

    #getter for: Landroid/net/wifi/p2p/WifiP2pService;->mNotification:Landroid/app/Notification;
    invoke-static {v6}, Landroid/net/wifi/p2p/WifiP2pService;->access$13000(Landroid/net/wifi/p2p/WifiP2pService;)Landroid/app/Notification;

    move-result-object v6

    iget-object v7, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->this$0:Landroid/net/wifi/p2p/WifiP2pService;

    #getter for: Landroid/net/wifi/p2p/WifiP2pService;->mContext:Landroid/content/Context;
    invoke-static {v7}, Landroid/net/wifi/p2p/WifiP2pService;->access$1100(Landroid/net/wifi/p2p/WifiP2pService;)Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v6, v7, v5, v1, v3}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 2316
    iget-object v6, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->this$0:Landroid/net/wifi/p2p/WifiP2pService;

    #getter for: Landroid/net/wifi/p2p/WifiP2pService;->mNotification:Landroid/app/Notification;
    invoke-static {v6}, Landroid/net/wifi/p2p/WifiP2pService;->access$13000(Landroid/net/wifi/p2p/WifiP2pService;)Landroid/app/Notification;

    move-result-object v6

    iget v6, v6, Landroid/app/Notification;->icon:I

    iget-object v7, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->this$0:Landroid/net/wifi/p2p/WifiP2pService;

    #getter for: Landroid/net/wifi/p2p/WifiP2pService;->mNotification:Landroid/app/Notification;
    invoke-static {v7}, Landroid/net/wifi/p2p/WifiP2pService;->access$13000(Landroid/net/wifi/p2p/WifiP2pService;)Landroid/app/Notification;

    move-result-object v7

    invoke-virtual {v2, v6, v7}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto/16 :goto_0

    .line 2299
    .end local v1           #message:Ljava/lang/CharSequence;
    .end local v5           #title:Ljava/lang/CharSequence;
    :cond_2
    const-string v6, "WifiP2pService"

    const-string v7, "Wi-Fi direct not connected"

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2300
    const v6, 0x10404b6

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    .restart local v5       #title:Ljava/lang/CharSequence;
    goto :goto_1
.end method

.method private showStatusBarIcon()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 2329
    iget-object v1, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->this$0:Landroid/net/wifi/p2p/WifiP2pService;

    #getter for: Landroid/net/wifi/p2p/WifiP2pService;->mContext:Landroid/content/Context;
    invoke-static {v1}, Landroid/net/wifi/p2p/WifiP2pService;->access$1100(Landroid/net/wifi/p2p/WifiP2pService;)Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "statusbar"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/StatusBarManager;

    .line 2332
    .local v0, mStatusBarManager:Landroid/app/StatusBarManager;
    iget-object v1, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->this$0:Landroid/net/wifi/p2p/WifiP2pService;

    #getter for: Landroid/net/wifi/p2p/WifiP2pService;->mNetworkInfo:Landroid/net/NetworkInfo;
    invoke-static {v1}, Landroid/net/wifi/p2p/WifiP2pService;->access$5100(Landroid/net/wifi/p2p/WifiP2pService;)Landroid/net/NetworkInfo;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2333
    const-string/jumbo v1, "wifi_p2p"

    const v2, 0x108069b

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/StatusBarManager;->setIcon(Ljava/lang/String;IILjava/lang/String;)V

    .line 2337
    :goto_0
    return-void

    .line 2335
    :cond_0
    const-string/jumbo v1, "wifi_p2p"

    const v2, 0x108069c

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/StatusBarManager;->setIcon(Ljava/lang/String;IILjava/lang/String;)V

    goto :goto_0
.end method

.method private startDhcpServer(Ljava/lang/String;)V
    .locals 5
    .parameter "intf"

    .prologue
    .line 1954
    const/4 v1, 0x0

    .line 1956
    .local v1, ifcg:Landroid/net/InterfaceConfiguration;
    :try_start_0
    iget-object v2, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->this$0:Landroid/net/wifi/p2p/WifiP2pService;

    iget-object v2, v2, Landroid/net/wifi/p2p/WifiP2pService;->mNwService:Landroid/os/INetworkManagementService;

    invoke-interface {v2, p1}, Landroid/os/INetworkManagementService;->getInterfaceConfig(Ljava/lang/String;)Landroid/net/InterfaceConfiguration;

    move-result-object v1

    .line 1957
    new-instance v2, Landroid/net/LinkAddress;

    const-string v3, "192.168.49.1"

    invoke-static {v3}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v3

    const/16 v4, 0x18

    invoke-direct {v2, v3, v4}, Landroid/net/LinkAddress;-><init>(Ljava/net/InetAddress;I)V

    iput-object v2, v1, Landroid/net/InterfaceConfiguration;->addr:Landroid/net/LinkAddress;

    .line 1959
    const-string v2, "[up]"

    iput-object v2, v1, Landroid/net/InterfaceConfiguration;->interfaceFlags:Ljava/lang/String;

    .line 1960
    iget-object v2, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->this$0:Landroid/net/wifi/p2p/WifiP2pService;

    iget-object v2, v2, Landroid/net/wifi/p2p/WifiP2pService;->mNwService:Landroid/os/INetworkManagementService;

    invoke-interface {v2, p1, v1}, Landroid/os/INetworkManagementService;->setInterfaceConfig(Ljava/lang/String;Landroid/net/InterfaceConfiguration;)V

    .line 1962
    iget-object v2, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->this$0:Landroid/net/wifi/p2p/WifiP2pService;

    iget-object v2, v2, Landroid/net/wifi/p2p/WifiP2pService;->mNwService:Landroid/os/INetworkManagementService;

    invoke-static {}, Landroid/net/wifi/p2p/WifiP2pService;->access$12400()[Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Landroid/os/INetworkManagementService;->startTethering([Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1968
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Started Dhcp server on "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->logd(Ljava/lang/String;)V

    .line 1969
    :goto_0
    return-void

    .line 1963
    :catch_0
    move-exception v0

    .line 1964
    .local v0, e:Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error configuring interface "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->loge(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private stopDhcpServer()V
    .locals 3

    .prologue
    .line 1973
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->this$0:Landroid/net/wifi/p2p/WifiP2pService;

    iget-object v1, v1, Landroid/net/wifi/p2p/WifiP2pService;->mNwService:Landroid/os/INetworkManagementService;

    invoke-interface {v1}, Landroid/os/INetworkManagementService;->stopTethering()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1979
    const-string v1, "Stopped Dhcp server"

    invoke-direct {p0, v1}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->logd(Ljava/lang/String;)V

    .line 1980
    :goto_0
    return-void

    .line 1974
    :catch_0
    move-exception v0

    .line 1975
    .local v0, e:Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error stopping Dhcp server"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->loge(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private updateDeviceStatus(Ljava/lang/String;I)V
    .locals 3
    .parameter "deviceAddress"
    .parameter "status"

    .prologue
    .line 2150
    iget-object v2, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mPeers:Landroid/net/wifi/p2p/WifiP2pDeviceList;

    invoke-virtual {v2}, Landroid/net/wifi/p2p/WifiP2pDeviceList;->getDeviceList()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 2151
    .local v0, d:Landroid/net/wifi/p2p/WifiP2pDevice;
    iget-object v2, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2152
    iput p2, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->status:I

    goto :goto_0

    .line 2155
    .end local v0           #d:Landroid/net/wifi/p2p/WifiP2pDevice;
    :cond_1
    return-void
.end method

.method private updateThisDevice(I)V
    .locals 1
    .parameter "status"

    .prologue
    .line 2234
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->this$0:Landroid/net/wifi/p2p/WifiP2pService;

    #getter for: Landroid/net/wifi/p2p/WifiP2pService;->mThisDevice:Landroid/net/wifi/p2p/WifiP2pDevice;
    invoke-static {v0}, Landroid/net/wifi/p2p/WifiP2pService;->access$1300(Landroid/net/wifi/p2p/WifiP2pService;)Landroid/net/wifi/p2p/WifiP2pDevice;

    move-result-object v0

    iput p1, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->status:I

    .line 2235
    invoke-direct {p0}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->sendThisDeviceChangedBroadcast()V

    .line 2236
    return-void
.end method
