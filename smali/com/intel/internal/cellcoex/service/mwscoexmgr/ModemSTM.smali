.class Lcom/intel/internal/cellcoex/service/mwscoexmgr/ModemSTM;
.super Lcom/android/internal/util/StateMachine;
.source "ModemSTM.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/intel/internal/cellcoex/service/mwscoexmgr/ModemSTM$RadioOnRegisteredAgressive;,
        Lcom/intel/internal/cellcoex/service/mwscoexmgr/ModemSTM$RadioOnRegisteredNotAgressive;,
        Lcom/intel/internal/cellcoex/service/mwscoexmgr/ModemSTM$RadioOnUnregisteredState;,
        Lcom/intel/internal/cellcoex/service/mwscoexmgr/ModemSTM$RadioOnState;,
        Lcom/intel/internal/cellcoex/service/mwscoexmgr/ModemSTM$RadioOffState;,
        Lcom/intel/internal/cellcoex/service/mwscoexmgr/ModemSTM$ModemHandlerPropChangeListener;,
        Lcom/intel/internal/cellcoex/service/mwscoexmgr/ModemSTM$ModemStateChangeListener;
    }
.end annotation


# static fields
.field private static final BASE_COEX_CMD:I = 0x80000

.field private static final CMD_MWS_LTE_PROP_CHANGED:I = 0x80002

.field private static final CMD_SERVICE_STATE_CHANGED:I = 0x80001

.field private static final DEBUG:Z

.field private static final TAG:Ljava/lang/String; = "CWS_CELLCOEX_MGR"


# instance fields
.field private final mClassName:Ljava/lang/String;

.field private final mCoexBroadcastMessageReceiver:Landroid/content/BroadcastReceiver;

.field private final mContext:Landroid/content/Context;

.field private final mICoexPropMgr:Lcom/intel/internal/cellcoex/service/props/ICoexPropMgr;

.field private mIsAirPlaneMode:Z

.field private mLastServiceStateReceived:I

.field private final mMwsState:Lcom/intel/internal/cellcoex/service/props/MwsState;

.field private final mRadioOffState:Lcom/intel/internal/cellcoex/service/mwscoexmgr/ModemSTM$RadioOffState;

.field private final mRadioOnRegisteredAgressive:Lcom/intel/internal/cellcoex/service/mwscoexmgr/ModemSTM$RadioOnRegisteredAgressive;

.field private final mRadioOnRegisteredNotAgressive:Lcom/intel/internal/cellcoex/service/mwscoexmgr/ModemSTM$RadioOnRegisteredNotAgressive;

.field private final mRadioOnState:Lcom/intel/internal/cellcoex/service/mwscoexmgr/ModemSTM$RadioOnState;

.field private final mRadioOnUnregisteredState:Lcom/intel/internal/cellcoex/service/mwscoexmgr/ModemSTM$RadioOnUnregisteredState;

.field private final mTelephonyManager:Landroid/telephony/TelephonyManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "CWS_CELLCOEX_MGR"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/intel/internal/cellcoex/service/mwscoexmgr/ModemSTM;->DEBUG:Z

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Lcom/intel/internal/cellcoex/service/props/ICoexPropMgr;Landroid/telephony/TelephonyManager;)V
    .locals 7

    const/4 v6, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const-string v3, "MWS_CELLCOEX_MGR_SM"

    invoke-direct {p0, v3}, Lcom/android/internal/util/StateMachine;-><init>(Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/intel/internal/cellcoex/service/mwscoexmgr/ModemSTM;->mClassName:Ljava/lang/String;

    const/4 v3, -0x1

    iput v3, p0, Lcom/intel/internal/cellcoex/service/mwscoexmgr/ModemSTM;->mLastServiceStateReceived:I

    new-instance v3, Lcom/intel/internal/cellcoex/service/props/MwsState;

    invoke-direct {v3}, Lcom/intel/internal/cellcoex/service/props/MwsState;-><init>()V

    iput-object v3, p0, Lcom/intel/internal/cellcoex/service/mwscoexmgr/ModemSTM;->mMwsState:Lcom/intel/internal/cellcoex/service/props/MwsState;

    new-instance v3, Lcom/intel/internal/cellcoex/service/mwscoexmgr/ModemSTM$1;

    invoke-direct {v3, p0}, Lcom/intel/internal/cellcoex/service/mwscoexmgr/ModemSTM$1;-><init>(Lcom/intel/internal/cellcoex/service/mwscoexmgr/ModemSTM;)V

    iput-object v3, p0, Lcom/intel/internal/cellcoex/service/mwscoexmgr/ModemSTM;->mCoexBroadcastMessageReceiver:Landroid/content/BroadcastReceiver;

    iput-object p2, p0, Lcom/intel/internal/cellcoex/service/mwscoexmgr/ModemSTM;->mICoexPropMgr:Lcom/intel/internal/cellcoex/service/props/ICoexPropMgr;

    iput-object p1, p0, Lcom/intel/internal/cellcoex/service/mwscoexmgr/ModemSTM;->mContext:Landroid/content/Context;

    iput-object p3, p0, Lcom/intel/internal/cellcoex/service/mwscoexmgr/ModemSTM;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    new-instance v3, Lcom/intel/internal/cellcoex/service/mwscoexmgr/ModemSTM$RadioOffState;

    invoke-direct {v3, p0}, Lcom/intel/internal/cellcoex/service/mwscoexmgr/ModemSTM$RadioOffState;-><init>(Lcom/intel/internal/cellcoex/service/mwscoexmgr/ModemSTM;)V

    iput-object v3, p0, Lcom/intel/internal/cellcoex/service/mwscoexmgr/ModemSTM;->mRadioOffState:Lcom/intel/internal/cellcoex/service/mwscoexmgr/ModemSTM$RadioOffState;

    new-instance v3, Lcom/intel/internal/cellcoex/service/mwscoexmgr/ModemSTM$RadioOnState;

    invoke-direct {v3, p0}, Lcom/intel/internal/cellcoex/service/mwscoexmgr/ModemSTM$RadioOnState;-><init>(Lcom/intel/internal/cellcoex/service/mwscoexmgr/ModemSTM;)V

    iput-object v3, p0, Lcom/intel/internal/cellcoex/service/mwscoexmgr/ModemSTM;->mRadioOnState:Lcom/intel/internal/cellcoex/service/mwscoexmgr/ModemSTM$RadioOnState;

    new-instance v3, Lcom/intel/internal/cellcoex/service/mwscoexmgr/ModemSTM$RadioOnUnregisteredState;

    invoke-direct {v3, p0}, Lcom/intel/internal/cellcoex/service/mwscoexmgr/ModemSTM$RadioOnUnregisteredState;-><init>(Lcom/intel/internal/cellcoex/service/mwscoexmgr/ModemSTM;)V

    iput-object v3, p0, Lcom/intel/internal/cellcoex/service/mwscoexmgr/ModemSTM;->mRadioOnUnregisteredState:Lcom/intel/internal/cellcoex/service/mwscoexmgr/ModemSTM$RadioOnUnregisteredState;

    new-instance v3, Lcom/intel/internal/cellcoex/service/mwscoexmgr/ModemSTM$RadioOnRegisteredNotAgressive;

    invoke-direct {v3, p0}, Lcom/intel/internal/cellcoex/service/mwscoexmgr/ModemSTM$RadioOnRegisteredNotAgressive;-><init>(Lcom/intel/internal/cellcoex/service/mwscoexmgr/ModemSTM;)V

    iput-object v3, p0, Lcom/intel/internal/cellcoex/service/mwscoexmgr/ModemSTM;->mRadioOnRegisteredNotAgressive:Lcom/intel/internal/cellcoex/service/mwscoexmgr/ModemSTM$RadioOnRegisteredNotAgressive;

    new-instance v3, Lcom/intel/internal/cellcoex/service/mwscoexmgr/ModemSTM$RadioOnRegisteredAgressive;

    invoke-direct {v3, p0}, Lcom/intel/internal/cellcoex/service/mwscoexmgr/ModemSTM$RadioOnRegisteredAgressive;-><init>(Lcom/intel/internal/cellcoex/service/mwscoexmgr/ModemSTM;)V

    iput-object v3, p0, Lcom/intel/internal/cellcoex/service/mwscoexmgr/ModemSTM;->mRadioOnRegisteredAgressive:Lcom/intel/internal/cellcoex/service/mwscoexmgr/ModemSTM$RadioOnRegisteredAgressive;

    iget-object v3, p0, Lcom/intel/internal/cellcoex/service/mwscoexmgr/ModemSTM;->mRadioOffState:Lcom/intel/internal/cellcoex/service/mwscoexmgr/ModemSTM$RadioOffState;

    invoke-virtual {p0, v3}, Lcom/intel/internal/cellcoex/service/mwscoexmgr/ModemSTM;->addState(Lcom/android/internal/util/State;)V

    iget-object v3, p0, Lcom/intel/internal/cellcoex/service/mwscoexmgr/ModemSTM;->mRadioOnState:Lcom/intel/internal/cellcoex/service/mwscoexmgr/ModemSTM$RadioOnState;

    invoke-virtual {p0, v3}, Lcom/intel/internal/cellcoex/service/mwscoexmgr/ModemSTM;->addState(Lcom/android/internal/util/State;)V

    iget-object v3, p0, Lcom/intel/internal/cellcoex/service/mwscoexmgr/ModemSTM;->mRadioOnUnregisteredState:Lcom/intel/internal/cellcoex/service/mwscoexmgr/ModemSTM$RadioOnUnregisteredState;

    iget-object v4, p0, Lcom/intel/internal/cellcoex/service/mwscoexmgr/ModemSTM;->mRadioOnState:Lcom/intel/internal/cellcoex/service/mwscoexmgr/ModemSTM$RadioOnState;

    invoke-virtual {p0, v3, v4}, Lcom/intel/internal/cellcoex/service/mwscoexmgr/ModemSTM;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    iget-object v3, p0, Lcom/intel/internal/cellcoex/service/mwscoexmgr/ModemSTM;->mRadioOnRegisteredNotAgressive:Lcom/intel/internal/cellcoex/service/mwscoexmgr/ModemSTM$RadioOnRegisteredNotAgressive;

    iget-object v4, p0, Lcom/intel/internal/cellcoex/service/mwscoexmgr/ModemSTM;->mRadioOnState:Lcom/intel/internal/cellcoex/service/mwscoexmgr/ModemSTM$RadioOnState;

    invoke-virtual {p0, v3, v4}, Lcom/intel/internal/cellcoex/service/mwscoexmgr/ModemSTM;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    iget-object v3, p0, Lcom/intel/internal/cellcoex/service/mwscoexmgr/ModemSTM;->mRadioOnRegisteredAgressive:Lcom/intel/internal/cellcoex/service/mwscoexmgr/ModemSTM$RadioOnRegisteredAgressive;

    iget-object v4, p0, Lcom/intel/internal/cellcoex/service/mwscoexmgr/ModemSTM;->mRadioOnState:Lcom/intel/internal/cellcoex/service/mwscoexmgr/ModemSTM$RadioOnState;

    invoke-virtual {p0, v3, v4}, Lcom/intel/internal/cellcoex/service/mwscoexmgr/ModemSTM;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    iget-object v3, p0, Lcom/intel/internal/cellcoex/service/mwscoexmgr/ModemSTM;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->isRadioOn()Z

    move-result v3

    if-nez v3, :cond_1

    sget-boolean v1, Lcom/intel/internal/cellcoex/service/mwscoexmgr/ModemSTM;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "CWS_CELLCOEX_MGR"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/intel/internal/cellcoex/service/mwscoexmgr/ModemSTM;->mClassName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "setInitialState(mRadioOffState)"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v1, p0, Lcom/intel/internal/cellcoex/service/mwscoexmgr/ModemSTM;->mMwsState:Lcom/intel/internal/cellcoex/service/props/MwsState;

    sget-object v3, Lcom/intel/internal/cellcoex/service/props/MwsState$State;->RADIO_OFF:Lcom/intel/internal/cellcoex/service/props/MwsState$State;

    iput-object v3, v1, Lcom/intel/internal/cellcoex/service/props/MwsState;->mState:Lcom/intel/internal/cellcoex/service/props/MwsState$State;

    iget-object v1, p0, Lcom/intel/internal/cellcoex/service/mwscoexmgr/ModemSTM;->mMwsState:Lcom/intel/internal/cellcoex/service/props/MwsState;

    sget-object v3, Lcom/intel/internal/cellcoex/service/props/MwsState$SubState;->NA:Lcom/intel/internal/cellcoex/service/props/MwsState$SubState;

    iput-object v3, v1, Lcom/intel/internal/cellcoex/service/props/MwsState;->mSubState:Lcom/intel/internal/cellcoex/service/props/MwsState$SubState;

    iget-object v1, p0, Lcom/intel/internal/cellcoex/service/mwscoexmgr/ModemSTM;->mICoexPropMgr:Lcom/intel/internal/cellcoex/service/props/ICoexPropMgr;

    const-string v3, "mws.state"

    new-instance v4, Lcom/intel/internal/cellcoex/service/props/MwsState;

    iget-object v5, p0, Lcom/intel/internal/cellcoex/service/mwscoexmgr/ModemSTM;->mMwsState:Lcom/intel/internal/cellcoex/service/props/MwsState;

    invoke-direct {v4, v5}, Lcom/intel/internal/cellcoex/service/props/MwsState;-><init>(Lcom/intel/internal/cellcoex/service/props/MwsState;)V

    invoke-interface {v1, v3, v4}, Lcom/intel/internal/cellcoex/service/props/ICoexPropMgr;->setProp(Ljava/lang/String;Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/intel/internal/cellcoex/service/mwscoexmgr/ModemSTM;->mRadioOffState:Lcom/intel/internal/cellcoex/service/mwscoexmgr/ModemSTM$RadioOffState;

    invoke-virtual {p0, v1}, Lcom/intel/internal/cellcoex/service/mwscoexmgr/ModemSTM;->setInitialState(Lcom/android/internal/util/State;)V

    :goto_0
    invoke-virtual {p0}, Lcom/intel/internal/cellcoex/service/mwscoexmgr/ModemSTM;->start()V

    iget-object v1, p0, Lcom/intel/internal/cellcoex/service/mwscoexmgr/ModemSTM;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    new-instance v3, Lcom/intel/internal/cellcoex/service/mwscoexmgr/ModemSTM$ModemStateChangeListener;

    invoke-direct {v3, p0, v6}, Lcom/intel/internal/cellcoex/service/mwscoexmgr/ModemSTM$ModemStateChangeListener;-><init>(Lcom/intel/internal/cellcoex/service/mwscoexmgr/ModemSTM;Lcom/intel/internal/cellcoex/service/mwscoexmgr/ModemSTM$1;)V

    invoke-virtual {v1, v3, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    iget-object v1, p0, Lcom/intel/internal/cellcoex/service/mwscoexmgr/ModemSTM;->mICoexPropMgr:Lcom/intel/internal/cellcoex/service/props/ICoexPropMgr;

    const-string v2, "mws.lte_reg_status"

    new-instance v3, Lcom/intel/internal/cellcoex/service/mwscoexmgr/ModemSTM$ModemHandlerPropChangeListener;

    invoke-direct {v3, p0, v6}, Lcom/intel/internal/cellcoex/service/mwscoexmgr/ModemSTM$ModemHandlerPropChangeListener;-><init>(Lcom/intel/internal/cellcoex/service/mwscoexmgr/ModemSTM;Lcom/intel/internal/cellcoex/service/mwscoexmgr/ModemSTM$1;)V

    invoke-interface {v1, v2, v3}, Lcom/intel/internal/cellcoex/service/props/ICoexPropMgr;->setPropChangeListener(Ljava/lang/String;Ljava/beans/PropertyChangeListener;)Z

    move-result v1

    if-nez v1, :cond_6

    const-string v1, "CWS_CELLCOEX_MGR"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/intel/internal/cellcoex/service/mwscoexmgr/ModemSTM;->mClassName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "failed to register listener to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "mws.lte_reg_status"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/intel/internal/cellcoex/service/mwscoexmgr/ModemSTM;->quitNow()V

    new-instance v1, Lcom/intel/internal/cellcoex/service/CellCoexException;

    const-string v2, "Unable to register listener to property mws.lte_reg_status"

    invoke-direct {v1, v2}, Lcom/intel/internal/cellcoex/service/CellCoexException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    iget-object v3, p0, Lcom/intel/internal/cellcoex/service/mwscoexmgr/ModemSTM;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "airplane_mode_on"

    invoke-static {v3, v4, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v2, :cond_2

    move v1, v2

    :cond_2
    iput-boolean v1, p0, Lcom/intel/internal/cellcoex/service/mwscoexmgr/ModemSTM;->mIsAirPlaneMode:Z

    iget-boolean v1, p0, Lcom/intel/internal/cellcoex/service/mwscoexmgr/ModemSTM;->mIsAirPlaneMode:Z

    if-eqz v1, :cond_4

    sget-boolean v1, Lcom/intel/internal/cellcoex/service/mwscoexmgr/ModemSTM;->DEBUG:Z

    if-eqz v1, :cond_3

    const-string v1, "CWS_CELLCOEX_MGR"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/intel/internal/cellcoex/service/mwscoexmgr/ModemSTM;->mClassName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "Airplane mode so setInitialState(mRadioOffState)"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    iget-object v1, p0, Lcom/intel/internal/cellcoex/service/mwscoexmgr/ModemSTM;->mMwsState:Lcom/intel/internal/cellcoex/service/props/MwsState;

    sget-object v3, Lcom/intel/internal/cellcoex/service/props/MwsState$State;->RADIO_OFF:Lcom/intel/internal/cellcoex/service/props/MwsState$State;

    iput-object v3, v1, Lcom/intel/internal/cellcoex/service/props/MwsState;->mState:Lcom/intel/internal/cellcoex/service/props/MwsState$State;

    iget-object v1, p0, Lcom/intel/internal/cellcoex/service/mwscoexmgr/ModemSTM;->mMwsState:Lcom/intel/internal/cellcoex/service/props/MwsState;

    sget-object v3, Lcom/intel/internal/cellcoex/service/props/MwsState$SubState;->NA:Lcom/intel/internal/cellcoex/service/props/MwsState$SubState;

    iput-object v3, v1, Lcom/intel/internal/cellcoex/service/props/MwsState;->mSubState:Lcom/intel/internal/cellcoex/service/props/MwsState$SubState;

    iget-object v1, p0, Lcom/intel/internal/cellcoex/service/mwscoexmgr/ModemSTM;->mICoexPropMgr:Lcom/intel/internal/cellcoex/service/props/ICoexPropMgr;

    const-string v3, "mws.state"

    new-instance v4, Lcom/intel/internal/cellcoex/service/props/MwsState;

    iget-object v5, p0, Lcom/intel/internal/cellcoex/service/mwscoexmgr/ModemSTM;->mMwsState:Lcom/intel/internal/cellcoex/service/props/MwsState;

    invoke-direct {v4, v5}, Lcom/intel/internal/cellcoex/service/props/MwsState;-><init>(Lcom/intel/internal/cellcoex/service/props/MwsState;)V

    invoke-interface {v1, v3, v4}, Lcom/intel/internal/cellcoex/service/props/ICoexPropMgr;->setProp(Ljava/lang/String;Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/intel/internal/cellcoex/service/mwscoexmgr/ModemSTM;->mRadioOffState:Lcom/intel/internal/cellcoex/service/mwscoexmgr/ModemSTM$RadioOffState;

    invoke-virtual {p0, v1}, Lcom/intel/internal/cellcoex/service/mwscoexmgr/ModemSTM;->setInitialState(Lcom/android/internal/util/State;)V

    goto/16 :goto_0

    :cond_4
    sget-boolean v1, Lcom/intel/internal/cellcoex/service/mwscoexmgr/ModemSTM;->DEBUG:Z

    if-eqz v1, :cond_5

    const-string v1, "CWS_CELLCOEX_MGR"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/intel/internal/cellcoex/service/mwscoexmgr/ModemSTM;->mClassName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "setInitialState(mRadioOnState)"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    iget-object v1, p0, Lcom/intel/internal/cellcoex/service/mwscoexmgr/ModemSTM;->mMwsState:Lcom/intel/internal/cellcoex/service/props/MwsState;

    sget-object v3, Lcom/intel/internal/cellcoex/service/props/MwsState$State;->RADIO_ON:Lcom/intel/internal/cellcoex/service/props/MwsState$State;

    iput-object v3, v1, Lcom/intel/internal/cellcoex/service/props/MwsState;->mState:Lcom/intel/internal/cellcoex/service/props/MwsState$State;

    iget-object v1, p0, Lcom/intel/internal/cellcoex/service/mwscoexmgr/ModemSTM;->mMwsState:Lcom/intel/internal/cellcoex/service/props/MwsState;

    sget-object v3, Lcom/intel/internal/cellcoex/service/props/MwsState$SubState;->UNREGISTERED:Lcom/intel/internal/cellcoex/service/props/MwsState$SubState;

    iput-object v3, v1, Lcom/intel/internal/cellcoex/service/props/MwsState;->mSubState:Lcom/intel/internal/cellcoex/service/props/MwsState$SubState;

    iget-object v1, p0, Lcom/intel/internal/cellcoex/service/mwscoexmgr/ModemSTM;->mICoexPropMgr:Lcom/intel/internal/cellcoex/service/props/ICoexPropMgr;

    const-string v3, "mws.state"

    new-instance v4, Lcom/intel/internal/cellcoex/service/props/MwsState;

    iget-object v5, p0, Lcom/intel/internal/cellcoex/service/mwscoexmgr/ModemSTM;->mMwsState:Lcom/intel/internal/cellcoex/service/props/MwsState;

    invoke-direct {v4, v5}, Lcom/intel/internal/cellcoex/service/props/MwsState;-><init>(Lcom/intel/internal/cellcoex/service/props/MwsState;)V

    invoke-interface {v1, v3, v4}, Lcom/intel/internal/cellcoex/service/props/ICoexPropMgr;->setProp(Ljava/lang/String;Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/intel/internal/cellcoex/service/mwscoexmgr/ModemSTM;->mRadioOnState:Lcom/intel/internal/cellcoex/service/mwscoexmgr/ModemSTM$RadioOnState;

    invoke-virtual {p0, v1}, Lcom/intel/internal/cellcoex/service/mwscoexmgr/ModemSTM;->setInitialState(Lcom/android/internal/util/State;)V

    goto/16 :goto_0

    :cond_6
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.AIRPLANE_MODE"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/intel/internal/cellcoex/service/mwscoexmgr/ModemSTM;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/intel/internal/cellcoex/service/mwscoexmgr/ModemSTM;->mCoexBroadcastMessageReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method static synthetic access$000(Lcom/intel/internal/cellcoex/service/mwscoexmgr/ModemSTM;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/intel/internal/cellcoex/service/mwscoexmgr/ModemSTM;->mIsAirPlaneMode:Z

    return v0
.end method

.method static synthetic access$002(Lcom/intel/internal/cellcoex/service/mwscoexmgr/ModemSTM;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/intel/internal/cellcoex/service/mwscoexmgr/ModemSTM;->mIsAirPlaneMode:Z

    return p1
.end method

.method static synthetic access$100(Lcom/intel/internal/cellcoex/service/mwscoexmgr/ModemSTM;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/intel/internal/cellcoex/service/mwscoexmgr/ModemSTM;->mClassName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/intel/internal/cellcoex/service/mwscoexmgr/ModemSTM;)Landroid/telephony/TelephonyManager;
    .locals 1

    iget-object v0, p0, Lcom/intel/internal/cellcoex/service/mwscoexmgr/ModemSTM;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/intel/internal/cellcoex/service/mwscoexmgr/ModemSTM;)Lcom/intel/internal/cellcoex/service/mwscoexmgr/ModemSTM$RadioOffState;
    .locals 1

    iget-object v0, p0, Lcom/intel/internal/cellcoex/service/mwscoexmgr/ModemSTM;->mRadioOffState:Lcom/intel/internal/cellcoex/service/mwscoexmgr/ModemSTM$RadioOffState;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/intel/internal/cellcoex/service/mwscoexmgr/ModemSTM;Lcom/android/internal/util/IState;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/intel/internal/cellcoex/service/mwscoexmgr/ModemSTM;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/intel/internal/cellcoex/service/mwscoexmgr/ModemSTM;)Lcom/intel/internal/cellcoex/service/mwscoexmgr/ModemSTM$RadioOnRegisteredNotAgressive;
    .locals 1

    iget-object v0, p0, Lcom/intel/internal/cellcoex/service/mwscoexmgr/ModemSTM;->mRadioOnRegisteredNotAgressive:Lcom/intel/internal/cellcoex/service/mwscoexmgr/ModemSTM$RadioOnRegisteredNotAgressive;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/intel/internal/cellcoex/service/mwscoexmgr/ModemSTM;Lcom/android/internal/util/IState;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/intel/internal/cellcoex/service/mwscoexmgr/ModemSTM;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$1500(Lcom/intel/internal/cellcoex/service/mwscoexmgr/ModemSTM;)Lcom/intel/internal/cellcoex/service/mwscoexmgr/ModemSTM$RadioOnUnregisteredState;
    .locals 1

    iget-object v0, p0, Lcom/intel/internal/cellcoex/service/mwscoexmgr/ModemSTM;->mRadioOnUnregisteredState:Lcom/intel/internal/cellcoex/service/mwscoexmgr/ModemSTM$RadioOnUnregisteredState;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/intel/internal/cellcoex/service/mwscoexmgr/ModemSTM;Lcom/android/internal/util/IState;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/intel/internal/cellcoex/service/mwscoexmgr/ModemSTM;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$1700(Lcom/intel/internal/cellcoex/service/mwscoexmgr/ModemSTM;Lcom/android/internal/util/IState;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/intel/internal/cellcoex/service/mwscoexmgr/ModemSTM;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$1800(Lcom/intel/internal/cellcoex/service/mwscoexmgr/ModemSTM;Lcom/android/internal/util/IState;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/intel/internal/cellcoex/service/mwscoexmgr/ModemSTM;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$1900(Lcom/intel/internal/cellcoex/service/mwscoexmgr/ModemSTM;Lcom/android/internal/util/IState;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/intel/internal/cellcoex/service/mwscoexmgr/ModemSTM;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$200(Lcom/intel/internal/cellcoex/service/mwscoexmgr/ModemSTM;)I
    .locals 1

    iget v0, p0, Lcom/intel/internal/cellcoex/service/mwscoexmgr/ModemSTM;->mLastServiceStateReceived:I

    return v0
.end method

.method static synthetic access$2000(Lcom/intel/internal/cellcoex/service/mwscoexmgr/ModemSTM;)Lcom/intel/internal/cellcoex/service/mwscoexmgr/ModemSTM$RadioOnRegisteredAgressive;
    .locals 1

    iget-object v0, p0, Lcom/intel/internal/cellcoex/service/mwscoexmgr/ModemSTM;->mRadioOnRegisteredAgressive:Lcom/intel/internal/cellcoex/service/mwscoexmgr/ModemSTM$RadioOnRegisteredAgressive;

    return-object v0
.end method

.method static synthetic access$202(Lcom/intel/internal/cellcoex/service/mwscoexmgr/ModemSTM;I)I
    .locals 0

    iput p1, p0, Lcom/intel/internal/cellcoex/service/mwscoexmgr/ModemSTM;->mLastServiceStateReceived:I

    return p1
.end method

.method static synthetic access$2100(Lcom/intel/internal/cellcoex/service/mwscoexmgr/ModemSTM;Lcom/android/internal/util/IState;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/intel/internal/cellcoex/service/mwscoexmgr/ModemSTM;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$2200(Lcom/intel/internal/cellcoex/service/mwscoexmgr/ModemSTM;Lcom/android/internal/util/IState;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/intel/internal/cellcoex/service/mwscoexmgr/ModemSTM;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$2300(Lcom/intel/internal/cellcoex/service/mwscoexmgr/ModemSTM;Lcom/android/internal/util/IState;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/intel/internal/cellcoex/service/mwscoexmgr/ModemSTM;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$2400(Lcom/intel/internal/cellcoex/service/mwscoexmgr/ModemSTM;Lcom/android/internal/util/IState;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/intel/internal/cellcoex/service/mwscoexmgr/ModemSTM;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$2500(Lcom/intel/internal/cellcoex/service/mwscoexmgr/ModemSTM;Lcom/android/internal/util/IState;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/intel/internal/cellcoex/service/mwscoexmgr/ModemSTM;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$300()Z
    .locals 1

    sget-boolean v0, Lcom/intel/internal/cellcoex/service/mwscoexmgr/ModemSTM;->DEBUG:Z

    return v0
.end method

.method static synthetic access$600(Lcom/intel/internal/cellcoex/service/mwscoexmgr/ModemSTM;)Lcom/intel/internal/cellcoex/service/props/MwsState;
    .locals 1

    iget-object v0, p0, Lcom/intel/internal/cellcoex/service/mwscoexmgr/ModemSTM;->mMwsState:Lcom/intel/internal/cellcoex/service/props/MwsState;

    return-object v0
.end method

.method static synthetic access$700(Lcom/intel/internal/cellcoex/service/mwscoexmgr/ModemSTM;)Lcom/intel/internal/cellcoex/service/props/ICoexPropMgr;
    .locals 1

    iget-object v0, p0, Lcom/intel/internal/cellcoex/service/mwscoexmgr/ModemSTM;->mICoexPropMgr:Lcom/intel/internal/cellcoex/service/props/ICoexPropMgr;

    return-object v0
.end method

.method static synthetic access$800(Lcom/intel/internal/cellcoex/service/mwscoexmgr/ModemSTM;)Lcom/intel/internal/cellcoex/service/mwscoexmgr/ModemSTM$RadioOnState;
    .locals 1

    iget-object v0, p0, Lcom/intel/internal/cellcoex/service/mwscoexmgr/ModemSTM;->mRadioOnState:Lcom/intel/internal/cellcoex/service/mwscoexmgr/ModemSTM$RadioOnState;

    return-object v0
.end method

.method static synthetic access$900(Lcom/intel/internal/cellcoex/service/mwscoexmgr/ModemSTM;Lcom/android/internal/util/IState;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/intel/internal/cellcoex/service/mwscoexmgr/ModemSTM;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method
