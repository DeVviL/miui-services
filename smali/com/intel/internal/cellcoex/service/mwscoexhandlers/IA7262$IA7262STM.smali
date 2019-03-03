.class Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM;
.super Lcom/android/internal/util/StateMachine;
.source "IA7262.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "IA7262STM"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM$RadioOnState;,
        Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM$RadioOffState;
    }
.end annotation


# static fields
.field private static final BASE_MWSCOEX_HANDLER_CMD:I = 0x90000

.field private static final CMD_COEX_PROP_CHANGED:I = 0x90001

.field private static final CMD_INTENT_RECEIVED:I = 0x90002


# instance fields
.field private final mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mBtState:Lcom/intel/internal/cellcoex/service/props/BtState;

.field private final mClassName:Ljava/lang/String;

.field private final mMwsBtCoexParams:Lcom/intel/internal/cellcoex/service/props/MwsBtCoexParams;

.field private mMwsLteFrameInd:Lcom/intel/internal/cellcoex/service/props/MwsLteFrameInd;

.field private final mMwsLteFreqInd:Lcom/intel/internal/cellcoex/service/props/MwsLteFreqInd;

.field private mMwsLteRegStatus:Lcom/intel/internal/cellcoex/service/props/MwsLteRegStatus;

.field private mMwsState:Lcom/intel/internal/cellcoex/service/props/MwsState;

.field private final mMwsWlanCoexParams:Lcom/intel/internal/cellcoex/service/props/MwsWlanCoexParams;

.field private final mPropertyChangeListener:Ljava/beans/PropertyChangeListener;

.field private final mRadioOffState:Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM$RadioOffState;

.field private final mRadioOnState:Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM$RadioOnState;

.field private mWifiOperParams:Lcom/intel/internal/cellcoex/service/props/WifiOperParams;

.field private mWifiState:Lcom/intel/internal/cellcoex/service/props/WifiState;

.field final synthetic this$0:Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262;


# direct methods
.method protected constructor <init>(Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262;Ljava/lang/String;)V
    .locals 3
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 519
    iput-object p1, p0, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM;->this$0:Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262;

    .line 520
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "IA7262STM "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/util/StateMachine;-><init>(Ljava/lang/String;)V

    .line 496
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM;->mClassName:Ljava/lang/String;

    .line 509
    new-instance v0, Lcom/intel/internal/cellcoex/service/props/MwsLteRegStatus;

    invoke-direct {v0}, Lcom/intel/internal/cellcoex/service/props/MwsLteRegStatus;-><init>()V

    iput-object v0, p0, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM;->mMwsLteRegStatus:Lcom/intel/internal/cellcoex/service/props/MwsLteRegStatus;

    .line 511
    new-instance v0, Lcom/intel/internal/cellcoex/service/props/MwsWlanCoexParams;

    invoke-direct {v0}, Lcom/intel/internal/cellcoex/service/props/MwsWlanCoexParams;-><init>()V

    iput-object v0, p0, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM;->mMwsWlanCoexParams:Lcom/intel/internal/cellcoex/service/props/MwsWlanCoexParams;

    .line 513
    new-instance v0, Lcom/intel/internal/cellcoex/service/props/MwsBtCoexParams;

    invoke-direct {v0}, Lcom/intel/internal/cellcoex/service/props/MwsBtCoexParams;-><init>()V

    iput-object v0, p0, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM;->mMwsBtCoexParams:Lcom/intel/internal/cellcoex/service/props/MwsBtCoexParams;

    .line 515
    new-instance v0, Lcom/intel/internal/cellcoex/service/props/MwsLteFrameInd;

    invoke-direct {v0}, Lcom/intel/internal/cellcoex/service/props/MwsLteFrameInd;-><init>()V

    iput-object v0, p0, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM;->mMwsLteFrameInd:Lcom/intel/internal/cellcoex/service/props/MwsLteFrameInd;

    .line 517
    new-instance v0, Lcom/intel/internal/cellcoex/service/props/MwsLteFreqInd;

    invoke-direct {v0}, Lcom/intel/internal/cellcoex/service/props/MwsLteFreqInd;-><init>()V

    iput-object v0, p0, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM;->mMwsLteFreqInd:Lcom/intel/internal/cellcoex/service/props/MwsLteFreqInd;

    .line 559
    new-instance v0, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM$1;

    invoke-direct {v0, p0}, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM$1;-><init>(Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM;)V

    iput-object v0, p0, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 569
    new-instance v0, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM$2;

    invoke-direct {v0, p0}, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM$2;-><init>(Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM;)V

    iput-object v0, p0, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM;->mPropertyChangeListener:Ljava/beans/PropertyChangeListener;

    .line 521
    new-instance v0, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM$RadioOffState;

    invoke-direct {v0, p0}, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM$RadioOffState;-><init>(Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM;)V

    iput-object v0, p0, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM;->mRadioOffState:Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM$RadioOffState;

    .line 522
    new-instance v0, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM$RadioOnState;

    invoke-direct {v0, p0}, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM$RadioOnState;-><init>(Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM;)V

    iput-object v0, p0, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM;->mRadioOnState:Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM$RadioOnState;

    .line 524
    iget-object v0, p0, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM;->mRadioOffState:Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM$RadioOffState;

    invoke-virtual {p0, v0}, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM;->addState(Lcom/android/internal/util/State;)V

    .line 525
    iget-object v0, p0, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM;->mRadioOnState:Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM$RadioOnState;

    invoke-virtual {p0, v0}, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM;->addState(Lcom/android/internal/util/State;)V

    .line 527
    invoke-static {p1}, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262;->access$000(Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262;)Lcom/intel/internal/cellcoex/service/props/ICoexPropMgr;

    move-result-object v0

    const-string v1, "mws.state"

    invoke-interface {v0, v1}, Lcom/intel/internal/cellcoex/service/props/ICoexPropMgr;->getProp(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/intel/internal/cellcoex/service/props/MwsState;

    iput-object v0, p0, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM;->mMwsState:Lcom/intel/internal/cellcoex/service/props/MwsState;

    .line 528
    sget-object v0, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$1;->$SwitchMap$com$intel$internal$cellcoex$service$props$MwsState$State:[I

    iget-object v1, p0, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM;->mMwsState:Lcom/intel/internal/cellcoex/service/props/MwsState;

    iget-object v1, v1, Lcom/intel/internal/cellcoex/service/props/MwsState;->mState:Lcom/intel/internal/cellcoex/service/props/MwsState$State;

    invoke-virtual {v1}, Lcom/intel/internal/cellcoex/service/props/MwsState$State;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 541
    const-string v0, "CWS_CELLCOEX_MGR"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM;->mClassName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "Modem state is unknown, that\'s not good!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 542
    new-instance v0, Lcom/intel/internal/cellcoex/service/CellCoexException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM;->mClassName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "Modem state is unknown!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/intel/internal/cellcoex/service/CellCoexException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 530
    :pswitch_0
    invoke-static {}, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262;->access$100()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 531
    const-string v0, "CWS_CELLCOEX_MGR"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM;->mClassName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "RADIO_OFF setInitialState(mRadioOffState)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 532
    :cond_0
    iget-object v0, p0, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM;->mRadioOffState:Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM$RadioOffState;

    invoke-virtual {p0, v0}, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM;->setInitialState(Lcom/android/internal/util/State;)V

    .line 545
    :goto_0
    invoke-virtual {p0}, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM;->start()V

    .line 547
    invoke-static {p1}, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262;->access$000(Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262;)Lcom/intel/internal/cellcoex/service/props/ICoexPropMgr;

    move-result-object v0

    const-string v1, "mws.state"

    iget-object v2, p0, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM;->mPropertyChangeListener:Ljava/beans/PropertyChangeListener;

    invoke-interface {v0, v1, v2}, Lcom/intel/internal/cellcoex/service/props/ICoexPropMgr;->setPropChangeListener(Ljava/lang/String;Ljava/beans/PropertyChangeListener;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 548
    const-string v0, "CWS_CELLCOEX_MGR"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/!\\ FATAL ERROR /!\\ "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM;->mClassName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "unable to subscribe to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "mws.state"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 550
    invoke-virtual {p0}, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM;->quitNow()V

    .line 551
    new-instance v0, Lcom/intel/internal/cellcoex/service/CellCoexException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM;->mClassName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "unable to subscribe to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "mws.state"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/intel/internal/cellcoex/service/CellCoexException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 535
    :pswitch_1
    invoke-static {}, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262;->access$100()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 536
    const-string v0, "CWS_CELLCOEX_MGR"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM;->mClassName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "RADIO_ON setInitialState(mRadioOnState)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 537
    :cond_1
    iget-object v0, p0, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM;->mRadioOnState:Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM$RadioOnState;

    invoke-virtual {p0, v0}, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM;->setInitialState(Lcom/android/internal/util/State;)V

    goto :goto_0

    .line 554
    :cond_2
    return-void

    .line 528
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method static synthetic access$1000(Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM;)Lcom/intel/internal/cellcoex/service/props/MwsLteFrameInd;
    .locals 1
    .param p0, "x0"    # Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM;

    .prologue
    .line 489
    iget-object v0, p0, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM;->mMwsLteFrameInd:Lcom/intel/internal/cellcoex/service/props/MwsLteFrameInd;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM;Lcom/intel/internal/cellcoex/service/props/MwsLteFrameInd;)Lcom/intel/internal/cellcoex/service/props/MwsLteFrameInd;
    .locals 0
    .param p0, "x0"    # Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM;
    .param p1, "x1"    # Lcom/intel/internal/cellcoex/service/props/MwsLteFrameInd;

    .prologue
    .line 489
    iput-object p1, p0, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM;->mMwsLteFrameInd:Lcom/intel/internal/cellcoex/service/props/MwsLteFrameInd;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM;)Lcom/intel/internal/cellcoex/service/props/MwsState;
    .locals 1
    .param p0, "x0"    # Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM;

    .prologue
    .line 489
    iget-object v0, p0, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM;->mMwsState:Lcom/intel/internal/cellcoex/service/props/MwsState;

    return-object v0
.end method

.method static synthetic access$1102(Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM;Lcom/intel/internal/cellcoex/service/props/MwsState;)Lcom/intel/internal/cellcoex/service/props/MwsState;
    .locals 0
    .param p0, "x0"    # Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM;
    .param p1, "x1"    # Lcom/intel/internal/cellcoex/service/props/MwsState;

    .prologue
    .line 489
    iput-object p1, p0, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM;->mMwsState:Lcom/intel/internal/cellcoex/service/props/MwsState;

    return-object p1
.end method

.method static synthetic access$1200(Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM;)Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM$RadioOnState;
    .locals 1
    .param p0, "x0"    # Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM;

    .prologue
    .line 489
    iget-object v0, p0, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM;->mRadioOnState:Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM$RadioOnState;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 489
    invoke-virtual {p0, p1}, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM;)Landroid/content/BroadcastReceiver;
    .locals 1
    .param p0, "x0"    # Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM;

    .prologue
    .line 489
    iget-object v0, p0, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM;)Lcom/intel/internal/cellcoex/service/props/WifiState;
    .locals 1
    .param p0, "x0"    # Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM;

    .prologue
    .line 489
    iget-object v0, p0, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM;->mWifiState:Lcom/intel/internal/cellcoex/service/props/WifiState;

    return-object v0
.end method

.method static synthetic access$1602(Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM;Lcom/intel/internal/cellcoex/service/props/WifiState;)Lcom/intel/internal/cellcoex/service/props/WifiState;
    .locals 0
    .param p0, "x0"    # Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM;
    .param p1, "x1"    # Lcom/intel/internal/cellcoex/service/props/WifiState;

    .prologue
    .line 489
    iput-object p1, p0, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM;->mWifiState:Lcom/intel/internal/cellcoex/service/props/WifiState;

    return-object p1
.end method

.method static synthetic access$1700(Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM;)Lcom/intel/internal/cellcoex/service/props/WifiOperParams;
    .locals 1
    .param p0, "x0"    # Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM;

    .prologue
    .line 489
    iget-object v0, p0, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM;->mWifiOperParams:Lcom/intel/internal/cellcoex/service/props/WifiOperParams;

    return-object v0
.end method

.method static synthetic access$1702(Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM;Lcom/intel/internal/cellcoex/service/props/WifiOperParams;)Lcom/intel/internal/cellcoex/service/props/WifiOperParams;
    .locals 0
    .param p0, "x0"    # Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM;
    .param p1, "x1"    # Lcom/intel/internal/cellcoex/service/props/WifiOperParams;

    .prologue
    .line 489
    iput-object p1, p0, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM;->mWifiOperParams:Lcom/intel/internal/cellcoex/service/props/WifiOperParams;

    return-object p1
.end method

.method static synthetic access$1800(Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM;)Lcom/intel/internal/cellcoex/service/props/BtState;
    .locals 1
    .param p0, "x0"    # Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM;

    .prologue
    .line 489
    iget-object v0, p0, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM;->mBtState:Lcom/intel/internal/cellcoex/service/props/BtState;

    return-object v0
.end method

.method static synthetic access$1802(Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM;Lcom/intel/internal/cellcoex/service/props/BtState;)Lcom/intel/internal/cellcoex/service/props/BtState;
    .locals 0
    .param p0, "x0"    # Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM;
    .param p1, "x1"    # Lcom/intel/internal/cellcoex/service/props/BtState;

    .prologue
    .line 489
    iput-object p1, p0, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM;->mBtState:Lcom/intel/internal/cellcoex/service/props/BtState;

    return-object p1
.end method

.method static synthetic access$1900(Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM;)V
    .locals 0
    .param p0, "x0"    # Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM;

    .prologue
    .line 489
    invoke-direct {p0}, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM;->updateWifiParams()V

    return-void
.end method

.method static synthetic access$200(Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM;

    .prologue
    .line 489
    iget-object v0, p0, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM;->mClassName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM;)V
    .locals 0
    .param p0, "x0"    # Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM;

    .prologue
    .line 489
    invoke-direct {p0}, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM;->updateBTParams()V

    return-void
.end method

.method static synthetic access$2100(Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM;)Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM$RadioOffState;
    .locals 1
    .param p0, "x0"    # Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM;

    .prologue
    .line 489
    iget-object v0, p0, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM;->mRadioOffState:Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM$RadioOffState;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 489
    invoke-virtual {p0, p1}, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$2300(Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM;)Lcom/intel/internal/cellcoex/service/props/MwsLteFreqInd;
    .locals 1
    .param p0, "x0"    # Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM;

    .prologue
    .line 489
    iget-object v0, p0, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM;->mMwsLteFreqInd:Lcom/intel/internal/cellcoex/service/props/MwsLteFreqInd;

    return-object v0
.end method

.method static synthetic access$600(Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM;)Lcom/intel/internal/cellcoex/service/props/MwsLteRegStatus;
    .locals 1
    .param p0, "x0"    # Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM;

    .prologue
    .line 489
    iget-object v0, p0, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM;->mMwsLteRegStatus:Lcom/intel/internal/cellcoex/service/props/MwsLteRegStatus;

    return-object v0
.end method

.method static synthetic access$602(Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM;Lcom/intel/internal/cellcoex/service/props/MwsLteRegStatus;)Lcom/intel/internal/cellcoex/service/props/MwsLteRegStatus;
    .locals 0
    .param p0, "x0"    # Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM;
    .param p1, "x1"    # Lcom/intel/internal/cellcoex/service/props/MwsLteRegStatus;

    .prologue
    .line 489
    iput-object p1, p0, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM;->mMwsLteRegStatus:Lcom/intel/internal/cellcoex/service/props/MwsLteRegStatus;

    return-object p1
.end method

.method static synthetic access$700(Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM;)Ljava/beans/PropertyChangeListener;
    .locals 1
    .param p0, "x0"    # Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM;

    .prologue
    .line 489
    iget-object v0, p0, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM;->mPropertyChangeListener:Ljava/beans/PropertyChangeListener;

    return-object v0
.end method

.method static synthetic access$800(Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM;)Lcom/intel/internal/cellcoex/service/props/MwsBtCoexParams;
    .locals 1
    .param p0, "x0"    # Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM;

    .prologue
    .line 489
    iget-object v0, p0, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM;->mMwsBtCoexParams:Lcom/intel/internal/cellcoex/service/props/MwsBtCoexParams;

    return-object v0
.end method

.method static synthetic access$900(Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM;)Lcom/intel/internal/cellcoex/service/props/MwsWlanCoexParams;
    .locals 1
    .param p0, "x0"    # Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM;

    .prologue
    .line 489
    iget-object v0, p0, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM;->mMwsWlanCoexParams:Lcom/intel/internal/cellcoex/service/props/MwsWlanCoexParams;

    return-object v0
.end method

.method private final updateBTParams()V
    .locals 6

    .prologue
    const/4 v2, 0x1

    .line 633
    :try_start_0
    sget-object v3, Lcom/intel/internal/cellcoex/service/props/BtState$State;->RADIO_ON:Lcom/intel/internal/cellcoex/service/props/BtState$State;

    iget-object v4, p0, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM;->mBtState:Lcom/intel/internal/cellcoex/service/props/BtState;

    invoke-virtual {v4}, Lcom/intel/internal/cellcoex/service/props/BtState;->getState()Lcom/intel/internal/cellcoex/service/props/BtState$State;

    move-result-object v4

    if-ne v3, v4, :cond_1

    move v1, v2

    .line 634
    .local v1, "isBTReportRequired":Z
    :goto_0
    const-string v3, "CWS_CELLCOEX_MGR"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Updating MwsBTParams with btStatus="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 635
    iget-object v3, p0, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM;->this$0:Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262;

    invoke-static {v3}, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262;->access$400(Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262;)Lcom/intel/internal/telephony/OemTelephony/IOemTelephony;

    move-result-object v3

    iget-object v4, p0, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM;->this$0:Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262;

    invoke-static {v4}, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262;->access$300(Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262;)J

    move-result-wide v4

    invoke-interface {v3, v4, v5, v1}, Lcom/intel/internal/telephony/OemTelephony/IOemTelephony;->setBtParams(JZ)I

    move-result v3

    if-eq v2, v3, :cond_0

    .line 637
    const-string v2, "CWS_CELLCOEX_MGR"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM;->mClassName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "setBtParams failed"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 642
    .end local v1    # "isBTReportRequired":Z
    :cond_0
    :goto_1
    return-void

    .line 633
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 639
    :catch_0
    move-exception v0

    .line 640
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "CWS_CELLCOEX_MGR"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM;->mClassName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "Exception in setBtParams: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private final updateWifiParams()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    .line 587
    :try_start_0
    sget-object v1, Lcom/intel/internal/cellcoex/service/props/WifiState$State;->WIFI_RADIO_OFF:Lcom/intel/internal/cellcoex/service/props/WifiState$State;

    iget-object v2, p0, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM;->mWifiState:Lcom/intel/internal/cellcoex/service/props/WifiState;

    invoke-virtual {v2}, Lcom/intel/internal/cellcoex/service/props/WifiState;->getWifiState()Lcom/intel/internal/cellcoex/service/props/WifiState$State;

    move-result-object v2

    if-eq v1, v2, :cond_1

    move v4, v7

    .line 589
    .local v4, "wifiStatus":Z
    :goto_0
    const/4 v5, -0x1

    .line 590
    .local v5, "wifiBw":I
    const/4 v6, 0x0

    .line 592
    .local v6, "wifiCenterFreq":I
    iget-object v1, p0, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM;->mWifiOperParams:Lcom/intel/internal/cellcoex/service/props/WifiOperParams;

    if-nez v1, :cond_2

    .line 593
    const-string v1, "CWS_CELLCOEX_MGR"

    const-string v2, "updateWifiParams() : Error! Dealing with null WifiOperParams."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 626
    .end local v4    # "wifiStatus":Z
    .end local v5    # "wifiBw":I
    .end local v6    # "wifiCenterFreq":I
    :cond_0
    :goto_1
    return-void

    .line 587
    :cond_1
    const/4 v4, 0x0

    goto :goto_0

    .line 597
    .restart local v4    # "wifiStatus":Z
    .restart local v5    # "wifiBw":I
    .restart local v6    # "wifiCenterFreq":I
    :cond_2
    iget-object v1, p0, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM;->mWifiOperParams:Lcom/intel/internal/cellcoex/service/props/WifiOperParams;

    invoke-virtual {v1}, Lcom/intel/internal/cellcoex/service/props/WifiOperParams;->getWifiOperBw()I

    move-result v5

    .line 598
    sparse-switch v5, :sswitch_data_0

    .line 609
    const/4 v5, -0x1

    .line 613
    :goto_2
    iget-object v1, p0, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM;->mWifiOperParams:Lcom/intel/internal/cellcoex/service/props/WifiOperParams;

    invoke-virtual {v1}, Lcom/intel/internal/cellcoex/service/props/WifiOperParams;->getWifiOperFreq()I

    move-result v6

    .line 615
    const-string v1, "CWS_CELLCOEX_MGR"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Updating MwsWifiParams with wifiStatus="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " bw="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " wifiCenterFreq="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 617
    iget-object v1, p0, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM;->this$0:Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262;

    invoke-static {v1}, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262;->access$400(Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262;)Lcom/intel/internal/telephony/OemTelephony/IOemTelephony;

    move-result-object v1

    iget-object v2, p0, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM;->this$0:Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262;

    invoke-static {v2}, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262;->access$300(Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262;)J

    move-result-wide v2

    invoke-interface/range {v1 .. v6}, Lcom/intel/internal/telephony/OemTelephony/IOemTelephony;->setWlanParams(JZII)I

    move-result v1

    if-eq v7, v1, :cond_0

    .line 621
    const-string v1, "CWS_CELLCOEX_MGR"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM;->mClassName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "setWlanParams failed"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 623
    .end local v4    # "wifiStatus":Z
    .end local v5    # "wifiBw":I
    .end local v6    # "wifiCenterFreq":I
    :catch_0
    move-exception v0

    .line 624
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "CWS_CELLCOEX_MGR"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM;->mClassName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "Exception in setWlanParams: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 600
    .end local v0    # "e":Landroid/os/RemoteException;
    .restart local v4    # "wifiStatus":Z
    .restart local v5    # "wifiBw":I
    .restart local v6    # "wifiCenterFreq":I
    :sswitch_0
    const/4 v5, 0x0

    .line 601
    goto/16 :goto_2

    .line 603
    :sswitch_1
    const/4 v5, 0x1

    .line 604
    goto/16 :goto_2

    .line 606
    :sswitch_2
    const/4 v5, 0x2

    .line 607
    goto/16 :goto_2

    .line 598
    nop

    :sswitch_data_0
    .sparse-switch
        0x14 -> :sswitch_0
        0x28 -> :sswitch_1
        0x50 -> :sswitch_2
    .end sparse-switch
.end method
