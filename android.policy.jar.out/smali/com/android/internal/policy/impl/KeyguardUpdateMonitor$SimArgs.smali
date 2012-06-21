.class Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$SimArgs;
.super Ljava/lang/Object;
.source "KeyguardUpdateMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SimArgs"
.end annotation


# instance fields
.field public final simState:Lcom/android/internal/telephony/IccCard$State;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/IccCard$State;)V
    .locals 0
    .parameter "state"

    .prologue
    .line 125
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 126
    iput-object p1, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$SimArgs;->simState:Lcom/android/internal/telephony/IccCard$State;

    .line 127
    return-void
.end method

.method static fromIntent(Landroid/content/Intent;)Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$SimArgs;
    .locals 6
    .parameter "intent"

    .prologue
    .line 131
    const-string v4, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 132
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "only handles intent ACTION_SIM_STATE_CHANGED"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 134
    :cond_0
    const-string v4, "ss"

    invoke-virtual {p0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 135
    .local v3, stateExtra:Ljava/lang/String;
    const-string v4, "ABSENT"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 136
    const-string v4, "reason"

    invoke-virtual {p0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 139
    .local v0, absentReason:Ljava/lang/String;
    const-string v4, "PERM_DISABLED"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 141
    sget-object v2, Lcom/android/internal/telephony/IccCard$State;->PERM_DISABLED:Lcom/android/internal/telephony/IccCard$State;

    .line 164
    .end local v0           #absentReason:Ljava/lang/String;
    .local v2, state:Lcom/android/internal/telephony/IccCard$State;
    :goto_0
    new-instance v4, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$SimArgs;

    invoke-direct {v4, v2}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$SimArgs;-><init>(Lcom/android/internal/telephony/IccCard$State;)V

    return-object v4

    .line 143
    .end local v2           #state:Lcom/android/internal/telephony/IccCard$State;
    .restart local v0       #absentReason:Ljava/lang/String;
    :cond_1
    sget-object v2, Lcom/android/internal/telephony/IccCard$State;->ABSENT:Lcom/android/internal/telephony/IccCard$State;

    .restart local v2       #state:Lcom/android/internal/telephony/IccCard$State;
    goto :goto_0

    .line 145
    .end local v0           #absentReason:Ljava/lang/String;
    .end local v2           #state:Lcom/android/internal/telephony/IccCard$State;
    :cond_2
    const-string v4, "READY"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 146
    sget-object v2, Lcom/android/internal/telephony/IccCard$State;->READY:Lcom/android/internal/telephony/IccCard$State;

    .restart local v2       #state:Lcom/android/internal/telephony/IccCard$State;
    goto :goto_0

    .line 147
    .end local v2           #state:Lcom/android/internal/telephony/IccCard$State;
    :cond_3
    const-string v4, "LOCKED"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 148
    const-string v4, "reason"

    invoke-virtual {p0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 150
    .local v1, lockedReason:Ljava/lang/String;
    const-string v4, "PIN"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 151
    sget-object v2, Lcom/android/internal/telephony/IccCard$State;->PIN_REQUIRED:Lcom/android/internal/telephony/IccCard$State;

    .restart local v2       #state:Lcom/android/internal/telephony/IccCard$State;
    goto :goto_0

    .line 152
    .end local v2           #state:Lcom/android/internal/telephony/IccCard$State;
    :cond_4
    const-string v4, "PUK"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 153
    sget-object v2, Lcom/android/internal/telephony/IccCard$State;->PUK_REQUIRED:Lcom/android/internal/telephony/IccCard$State;

    .restart local v2       #state:Lcom/android/internal/telephony/IccCard$State;
    goto :goto_0

    .line 154
    .end local v2           #state:Lcom/android/internal/telephony/IccCard$State;
    :cond_5
    const-string v4, "PERSO"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 155
    sget-object v2, Lcom/android/internal/telephony/IccCard$State;->PERSO_LOCKED:Lcom/android/internal/telephony/IccCard$State;

    .restart local v2       #state:Lcom/android/internal/telephony/IccCard$State;
    goto :goto_0

    .line 157
    .end local v2           #state:Lcom/android/internal/telephony/IccCard$State;
    :cond_6
    sget-object v2, Lcom/android/internal/telephony/IccCard$State;->UNKNOWN:Lcom/android/internal/telephony/IccCard$State;

    .restart local v2       #state:Lcom/android/internal/telephony/IccCard$State;
    goto :goto_0

    .line 159
    .end local v1           #lockedReason:Ljava/lang/String;
    .end local v2           #state:Lcom/android/internal/telephony/IccCard$State;
    :cond_7
    const-string v4, "NETWORK"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 160
    sget-object v2, Lcom/android/internal/telephony/IccCard$State;->NETWORK_LOCKED:Lcom/android/internal/telephony/IccCard$State;

    .restart local v2       #state:Lcom/android/internal/telephony/IccCard$State;
    goto :goto_0

    .line 162
    .end local v2           #state:Lcom/android/internal/telephony/IccCard$State;
    :cond_8
    sget-object v2, Lcom/android/internal/telephony/IccCard$State;->UNKNOWN:Lcom/android/internal/telephony/IccCard$State;

    .restart local v2       #state:Lcom/android/internal/telephony/IccCard$State;
    goto :goto_0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 168
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$SimArgs;->simState:Lcom/android/internal/telephony/IccCard$State;

    invoke-virtual {v0}, Lcom/android/internal/telephony/IccCard$State;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
