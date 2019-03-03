.class public Lcom/intel/internal/cellcoex/service/mwscoexmgr/WifiSafeChannelProviderSTM;
.super Lcom/android/internal/util/StateMachine;
.source "WifiSafeChannelProviderSTM.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/intel/internal/cellcoex/service/mwscoexmgr/WifiSafeChannelProviderSTM$1;,
        Lcom/intel/internal/cellcoex/service/mwscoexmgr/WifiSafeChannelProviderSTM$ProviderAccurate;,
        Lcom/intel/internal/cellcoex/service/mwscoexmgr/WifiSafeChannelProviderSTM$ProviderPredictive;,
        Lcom/intel/internal/cellcoex/service/mwscoexmgr/WifiSafeChannelProviderSTM$ProviderOFF;,
        Lcom/intel/internal/cellcoex/service/mwscoexmgr/WifiSafeChannelProviderSTM$WifiSafeChanProvPropChangeListener;
    }
.end annotation


# static fields
.field private static final BASE_COEX_CMD:I = 0x80000

.field private static final CMD_COEX_PROP_CHANGED:I = 0x80001

.field private static final DEBUG:Z

.field private static final TAG:Ljava/lang/String; = "CWS_CELLCOEX_MGR"


# instance fields
.field private final mClassName:Ljava/lang/String;

.field private final mContext:Landroid/content/Context;

.field private final mICoexPropMgr:Lcom/intel/internal/cellcoex/service/props/ICoexPropMgr;

.field private final mMwsWifiSafeChannels24:Lcom/intel/internal/cellcoex/service/props/MwsWifiSafeChannels24;

.field private mMwsWlanCoexParams:Lcom/intel/internal/cellcoex/service/props/MwsWlanCoexParams;

.field private final mProviderAccurate:Lcom/intel/internal/cellcoex/service/mwscoexmgr/WifiSafeChannelProviderSTM$ProviderAccurate;

.field private final mProviderOFF:Lcom/intel/internal/cellcoex/service/mwscoexmgr/WifiSafeChannelProviderSTM$ProviderOFF;

.field private final mProviderPredictive:Lcom/intel/internal/cellcoex/service/mwscoexmgr/WifiSafeChannelProviderSTM$ProviderPredictive;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "CWS_CELLCOEX_MGR"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/intel/internal/cellcoex/service/mwscoexmgr/WifiSafeChannelProviderSTM;->DEBUG:Z

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Lcom/intel/internal/cellcoex/service/props/ICoexPropMgr;)V
    .locals 5

    const-string v1, "MWS_WIFI_SAFE_PROV_SM"

    invoke-direct {p0, v1}, Lcom/android/internal/util/StateMachine;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/intel/internal/cellcoex/service/mwscoexmgr/WifiSafeChannelProviderSTM;->mClassName:Ljava/lang/String;

    new-instance v1, Lcom/intel/internal/cellcoex/service/props/MwsWifiSafeChannels24;

    invoke-direct {v1}, Lcom/intel/internal/cellcoex/service/props/MwsWifiSafeChannels24;-><init>()V

    iput-object v1, p0, Lcom/intel/internal/cellcoex/service/mwscoexmgr/WifiSafeChannelProviderSTM;->mMwsWifiSafeChannels24:Lcom/intel/internal/cellcoex/service/props/MwsWifiSafeChannels24;

    new-instance v1, Lcom/intel/internal/cellcoex/service/props/MwsWlanCoexParams;

    invoke-direct {v1}, Lcom/intel/internal/cellcoex/service/props/MwsWlanCoexParams;-><init>()V

    iput-object v1, p0, Lcom/intel/internal/cellcoex/service/mwscoexmgr/WifiSafeChannelProviderSTM;->mMwsWlanCoexParams:Lcom/intel/internal/cellcoex/service/props/MwsWlanCoexParams;

    new-instance v1, Lcom/intel/internal/cellcoex/service/mwscoexmgr/WifiSafeChannelProviderSTM$ProviderOFF;

    invoke-direct {v1, p0}, Lcom/intel/internal/cellcoex/service/mwscoexmgr/WifiSafeChannelProviderSTM$ProviderOFF;-><init>(Lcom/intel/internal/cellcoex/service/mwscoexmgr/WifiSafeChannelProviderSTM;)V

    iput-object v1, p0, Lcom/intel/internal/cellcoex/service/mwscoexmgr/WifiSafeChannelProviderSTM;->mProviderOFF:Lcom/intel/internal/cellcoex/service/mwscoexmgr/WifiSafeChannelProviderSTM$ProviderOFF;

    new-instance v1, Lcom/intel/internal/cellcoex/service/mwscoexmgr/WifiSafeChannelProviderSTM$ProviderPredictive;

    invoke-direct {v1, p0}, Lcom/intel/internal/cellcoex/service/mwscoexmgr/WifiSafeChannelProviderSTM$ProviderPredictive;-><init>(Lcom/intel/internal/cellcoex/service/mwscoexmgr/WifiSafeChannelProviderSTM;)V

    iput-object v1, p0, Lcom/intel/internal/cellcoex/service/mwscoexmgr/WifiSafeChannelProviderSTM;->mProviderPredictive:Lcom/intel/internal/cellcoex/service/mwscoexmgr/WifiSafeChannelProviderSTM$ProviderPredictive;

    new-instance v1, Lcom/intel/internal/cellcoex/service/mwscoexmgr/WifiSafeChannelProviderSTM$ProviderAccurate;

    invoke-direct {v1, p0}, Lcom/intel/internal/cellcoex/service/mwscoexmgr/WifiSafeChannelProviderSTM$ProviderAccurate;-><init>(Lcom/intel/internal/cellcoex/service/mwscoexmgr/WifiSafeChannelProviderSTM;)V

    iput-object v1, p0, Lcom/intel/internal/cellcoex/service/mwscoexmgr/WifiSafeChannelProviderSTM;->mProviderAccurate:Lcom/intel/internal/cellcoex/service/mwscoexmgr/WifiSafeChannelProviderSTM$ProviderAccurate;

    iput-object p2, p0, Lcom/intel/internal/cellcoex/service/mwscoexmgr/WifiSafeChannelProviderSTM;->mICoexPropMgr:Lcom/intel/internal/cellcoex/service/props/ICoexPropMgr;

    iput-object p1, p0, Lcom/intel/internal/cellcoex/service/mwscoexmgr/WifiSafeChannelProviderSTM;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/intel/internal/cellcoex/service/mwscoexmgr/WifiSafeChannelProviderSTM;->mProviderOFF:Lcom/intel/internal/cellcoex/service/mwscoexmgr/WifiSafeChannelProviderSTM$ProviderOFF;

    invoke-virtual {p0, v1}, Lcom/intel/internal/cellcoex/service/mwscoexmgr/WifiSafeChannelProviderSTM;->addState(Lcom/android/internal/util/State;)V

    iget-object v1, p0, Lcom/intel/internal/cellcoex/service/mwscoexmgr/WifiSafeChannelProviderSTM;->mProviderPredictive:Lcom/intel/internal/cellcoex/service/mwscoexmgr/WifiSafeChannelProviderSTM$ProviderPredictive;

    invoke-virtual {p0, v1}, Lcom/intel/internal/cellcoex/service/mwscoexmgr/WifiSafeChannelProviderSTM;->addState(Lcom/android/internal/util/State;)V

    iget-object v1, p0, Lcom/intel/internal/cellcoex/service/mwscoexmgr/WifiSafeChannelProviderSTM;->mProviderAccurate:Lcom/intel/internal/cellcoex/service/mwscoexmgr/WifiSafeChannelProviderSTM$ProviderAccurate;

    invoke-virtual {p0, v1}, Lcom/intel/internal/cellcoex/service/mwscoexmgr/WifiSafeChannelProviderSTM;->addState(Lcom/android/internal/util/State;)V

    iget-object v1, p0, Lcom/intel/internal/cellcoex/service/mwscoexmgr/WifiSafeChannelProviderSTM;->mICoexPropMgr:Lcom/intel/internal/cellcoex/service/props/ICoexPropMgr;

    const-string v2, "mws.state"

    invoke-interface {v1, v2}, Lcom/intel/internal/cellcoex/service/props/ICoexPropMgr;->getProp(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/intel/internal/cellcoex/service/props/MwsState;

    if-nez v0, :cond_0

    const-string v1, "CWS_CELLCOEX_MGR"

    const-string v2, "/!\\ Fatal ERROR /!\\ cannot retrieve mws.state"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Lcom/intel/internal/cellcoex/service/CellCoexException;

    const-string v2, "/!\\ Fatal ERROR /!\\ cannot retrieve mws.state"

    invoke-direct {v1, v2}, Lcom/intel/internal/cellcoex/service/CellCoexException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    sget-object v1, Lcom/intel/internal/cellcoex/service/mwscoexmgr/WifiSafeChannelProviderSTM$1;->$SwitchMap$com$intel$internal$cellcoex$service$props$MwsState$State:[I

    iget-object v2, v0, Lcom/intel/internal/cellcoex/service/props/MwsState;->mState:Lcom/intel/internal/cellcoex/service/props/MwsState$State;

    invoke-virtual {v2}, Lcom/intel/internal/cellcoex/service/props/MwsState$State;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    const-string v1, "CWS_CELLCOEX_MGR"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/intel/internal/cellcoex/service/mwscoexmgr/WifiSafeChannelProviderSTM;->mClassName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "radio simply on, Wifi safe channel set to predictive"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/intel/internal/cellcoex/service/mwscoexmgr/WifiSafeChannelProviderSTM;->mProviderPredictive:Lcom/intel/internal/cellcoex/service/mwscoexmgr/WifiSafeChannelProviderSTM$ProviderPredictive;

    invoke-virtual {p0, v1}, Lcom/intel/internal/cellcoex/service/mwscoexmgr/WifiSafeChannelProviderSTM;->setInitialState(Lcom/android/internal/util/State;)V

    :goto_0
    invoke-virtual {p0}, Lcom/intel/internal/cellcoex/service/mwscoexmgr/WifiSafeChannelProviderSTM;->start()V

    iget-object v1, p0, Lcom/intel/internal/cellcoex/service/mwscoexmgr/WifiSafeChannelProviderSTM;->mICoexPropMgr:Lcom/intel/internal/cellcoex/service/props/ICoexPropMgr;

    const-string v2, "mws.state"

    new-instance v3, Lcom/intel/internal/cellcoex/service/mwscoexmgr/WifiSafeChannelProviderSTM$WifiSafeChanProvPropChangeListener;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/intel/internal/cellcoex/service/mwscoexmgr/WifiSafeChannelProviderSTM$WifiSafeChanProvPropChangeListener;-><init>(Lcom/intel/internal/cellcoex/service/mwscoexmgr/WifiSafeChannelProviderSTM;Lcom/intel/internal/cellcoex/service/mwscoexmgr/WifiSafeChannelProviderSTM$1;)V

    invoke-interface {v1, v2, v3}, Lcom/intel/internal/cellcoex/service/props/ICoexPropMgr;->setPropChangeListener(Ljava/lang/String;Ljava/beans/PropertyChangeListener;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "CWS_CELLCOEX_MGR"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/intel/internal/cellcoex/service/mwscoexmgr/WifiSafeChannelProviderSTM;->mClassName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "failed to register listener to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "mws.state"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/intel/internal/cellcoex/service/mwscoexmgr/WifiSafeChannelProviderSTM;->quitNow()V

    new-instance v1, Lcom/intel/internal/cellcoex/service/CellCoexException;

    const-string v2, "Unable to register listener to property mws.state"

    invoke-direct {v1, v2}, Lcom/intel/internal/cellcoex/service/CellCoexException;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_0
    const-string v1, "CWS_CELLCOEX_MGR"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/intel/internal/cellcoex/service/mwscoexmgr/WifiSafeChannelProviderSTM;->mClassName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "radio off, Wifi safe channel prediction muted"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/intel/internal/cellcoex/service/mwscoexmgr/WifiSafeChannelProviderSTM;->mProviderOFF:Lcom/intel/internal/cellcoex/service/mwscoexmgr/WifiSafeChannelProviderSTM$ProviderOFF;

    invoke-virtual {p0, v1}, Lcom/intel/internal/cellcoex/service/mwscoexmgr/WifiSafeChannelProviderSTM;->setInitialState(Lcom/android/internal/util/State;)V

    goto :goto_0

    :pswitch_1
    sget-object v1, Lcom/intel/internal/cellcoex/service/mwscoexmgr/WifiSafeChannelProviderSTM$1;->$SwitchMap$com$intel$internal$cellcoex$service$props$MwsState$SubState:[I

    iget-object v2, v0, Lcom/intel/internal/cellcoex/service/props/MwsState;->mSubState:Lcom/intel/internal/cellcoex/service/props/MwsState$SubState;

    invoke-virtual {v2}, Lcom/intel/internal/cellcoex/service/props/MwsState$SubState;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_1

    const-string v1, "CWS_CELLCOEX_MGR"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/intel/internal/cellcoex/service/mwscoexmgr/WifiSafeChannelProviderSTM;->mClassName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "radio simply on, Wifi safe channel set to predictive"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/intel/internal/cellcoex/service/mwscoexmgr/WifiSafeChannelProviderSTM;->mProviderPredictive:Lcom/intel/internal/cellcoex/service/mwscoexmgr/WifiSafeChannelProviderSTM$ProviderPredictive;

    invoke-virtual {p0, v1}, Lcom/intel/internal/cellcoex/service/mwscoexmgr/WifiSafeChannelProviderSTM;->setInitialState(Lcom/android/internal/util/State;)V

    goto/16 :goto_0

    :pswitch_2
    const-string v1, "CWS_CELLCOEX_MGR"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/intel/internal/cellcoex/service/mwscoexmgr/WifiSafeChannelProviderSTM;->mClassName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "radio on agressive, Wifi safe channel tuned to accurate"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/intel/internal/cellcoex/service/mwscoexmgr/WifiSafeChannelProviderSTM;->mProviderAccurate:Lcom/intel/internal/cellcoex/service/mwscoexmgr/WifiSafeChannelProviderSTM$ProviderAccurate;

    invoke-virtual {p0, v1}, Lcom/intel/internal/cellcoex/service/mwscoexmgr/WifiSafeChannelProviderSTM;->setInitialState(Lcom/android/internal/util/State;)V

    goto/16 :goto_0

    :cond_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2
    .end packed-switch
.end method

.method static synthetic access$100()Z
    .locals 1

    sget-boolean v0, Lcom/intel/internal/cellcoex/service/mwscoexmgr/WifiSafeChannelProviderSTM;->DEBUG:Z

    return v0
.end method

.method static synthetic access$1000(Lcom/intel/internal/cellcoex/service/mwscoexmgr/WifiSafeChannelProviderSTM;)Lcom/intel/internal/cellcoex/service/mwscoexmgr/WifiSafeChannelProviderSTM$ProviderOFF;
    .locals 1

    iget-object v0, p0, Lcom/intel/internal/cellcoex/service/mwscoexmgr/WifiSafeChannelProviderSTM;->mProviderOFF:Lcom/intel/internal/cellcoex/service/mwscoexmgr/WifiSafeChannelProviderSTM$ProviderOFF;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/intel/internal/cellcoex/service/mwscoexmgr/WifiSafeChannelProviderSTM;Lcom/android/internal/util/IState;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/intel/internal/cellcoex/service/mwscoexmgr/WifiSafeChannelProviderSTM;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/intel/internal/cellcoex/service/mwscoexmgr/WifiSafeChannelProviderSTM;Lcom/android/internal/util/IState;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/intel/internal/cellcoex/service/mwscoexmgr/WifiSafeChannelProviderSTM;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/intel/internal/cellcoex/service/mwscoexmgr/WifiSafeChannelProviderSTM;Lcom/android/internal/util/IState;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/intel/internal/cellcoex/service/mwscoexmgr/WifiSafeChannelProviderSTM;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/intel/internal/cellcoex/service/mwscoexmgr/WifiSafeChannelProviderSTM;)Lcom/intel/internal/cellcoex/service/props/MwsWlanCoexParams;
    .locals 1

    iget-object v0, p0, Lcom/intel/internal/cellcoex/service/mwscoexmgr/WifiSafeChannelProviderSTM;->mMwsWlanCoexParams:Lcom/intel/internal/cellcoex/service/props/MwsWlanCoexParams;

    return-object v0
.end method

.method static synthetic access$1402(Lcom/intel/internal/cellcoex/service/mwscoexmgr/WifiSafeChannelProviderSTM;Lcom/intel/internal/cellcoex/service/props/MwsWlanCoexParams;)Lcom/intel/internal/cellcoex/service/props/MwsWlanCoexParams;
    .locals 0

    iput-object p1, p0, Lcom/intel/internal/cellcoex/service/mwscoexmgr/WifiSafeChannelProviderSTM;->mMwsWlanCoexParams:Lcom/intel/internal/cellcoex/service/props/MwsWlanCoexParams;

    return-object p1
.end method

.method static synthetic access$1500(Lcom/intel/internal/cellcoex/service/mwscoexmgr/WifiSafeChannelProviderSTM;Lcom/android/internal/util/IState;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/intel/internal/cellcoex/service/mwscoexmgr/WifiSafeChannelProviderSTM;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$1600(Lcom/intel/internal/cellcoex/service/mwscoexmgr/WifiSafeChannelProviderSTM;Lcom/android/internal/util/IState;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/intel/internal/cellcoex/service/mwscoexmgr/WifiSafeChannelProviderSTM;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$1700(Lcom/intel/internal/cellcoex/service/mwscoexmgr/WifiSafeChannelProviderSTM;Lcom/android/internal/util/IState;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/intel/internal/cellcoex/service/mwscoexmgr/WifiSafeChannelProviderSTM;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$200(Lcom/intel/internal/cellcoex/service/mwscoexmgr/WifiSafeChannelProviderSTM;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/intel/internal/cellcoex/service/mwscoexmgr/WifiSafeChannelProviderSTM;->mClassName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/intel/internal/cellcoex/service/mwscoexmgr/WifiSafeChannelProviderSTM;)Lcom/intel/internal/cellcoex/service/props/MwsWifiSafeChannels24;
    .locals 1

    iget-object v0, p0, Lcom/intel/internal/cellcoex/service/mwscoexmgr/WifiSafeChannelProviderSTM;->mMwsWifiSafeChannels24:Lcom/intel/internal/cellcoex/service/props/MwsWifiSafeChannels24;

    return-object v0
.end method

.method static synthetic access$400(Lcom/intel/internal/cellcoex/service/mwscoexmgr/WifiSafeChannelProviderSTM;)Lcom/intel/internal/cellcoex/service/props/ICoexPropMgr;
    .locals 1

    iget-object v0, p0, Lcom/intel/internal/cellcoex/service/mwscoexmgr/WifiSafeChannelProviderSTM;->mICoexPropMgr:Lcom/intel/internal/cellcoex/service/props/ICoexPropMgr;

    return-object v0
.end method

.method static synthetic access$500(Lcom/intel/internal/cellcoex/service/mwscoexmgr/WifiSafeChannelProviderSTM;)Lcom/intel/internal/cellcoex/service/mwscoexmgr/WifiSafeChannelProviderSTM$ProviderAccurate;
    .locals 1

    iget-object v0, p0, Lcom/intel/internal/cellcoex/service/mwscoexmgr/WifiSafeChannelProviderSTM;->mProviderAccurate:Lcom/intel/internal/cellcoex/service/mwscoexmgr/WifiSafeChannelProviderSTM$ProviderAccurate;

    return-object v0
.end method

.method static synthetic access$600(Lcom/intel/internal/cellcoex/service/mwscoexmgr/WifiSafeChannelProviderSTM;Lcom/android/internal/util/IState;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/intel/internal/cellcoex/service/mwscoexmgr/WifiSafeChannelProviderSTM;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$700(Lcom/intel/internal/cellcoex/service/mwscoexmgr/WifiSafeChannelProviderSTM;)Lcom/intel/internal/cellcoex/service/mwscoexmgr/WifiSafeChannelProviderSTM$ProviderPredictive;
    .locals 1

    iget-object v0, p0, Lcom/intel/internal/cellcoex/service/mwscoexmgr/WifiSafeChannelProviderSTM;->mProviderPredictive:Lcom/intel/internal/cellcoex/service/mwscoexmgr/WifiSafeChannelProviderSTM$ProviderPredictive;

    return-object v0
.end method

.method static synthetic access$800(Lcom/intel/internal/cellcoex/service/mwscoexmgr/WifiSafeChannelProviderSTM;Lcom/android/internal/util/IState;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/intel/internal/cellcoex/service/mwscoexmgr/WifiSafeChannelProviderSTM;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$900(Lcom/intel/internal/cellcoex/service/mwscoexmgr/WifiSafeChannelProviderSTM;Lcom/android/internal/util/IState;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/intel/internal/cellcoex/service/mwscoexmgr/WifiSafeChannelProviderSTM;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method
