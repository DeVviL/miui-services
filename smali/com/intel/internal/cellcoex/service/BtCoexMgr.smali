.class public Lcom/intel/internal/cellcoex/service/BtCoexMgr;
.super Lcom/android/internal/util/StateMachine;
.source "BtCoexMgr.java"

# interfaces
.implements Lcom/intel/internal/cellcoex/service/props/ICoexPropNode;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/intel/internal/cellcoex/service/BtCoexMgr$ActiveState;,
        Lcom/intel/internal/cellcoex/service/BtCoexMgr$InactiveState;,
        Lcom/intel/internal/cellcoex/service/BtCoexMgr$UnknownState;
    }
.end annotation


# static fields
.field private static final BT_OFF:I = 0x1

.field private static final BT_ON:I = 0x2

.field private static final DEBUG:Z

.field private static final MWS_OFF:I = 0x4

.field private static final MWS_ON:I = 0x5

.field private static final TAG:Ljava/lang/String; = "CWS_CELLCOEX_MGR"

.field private static final UNKNOWN:I = -0x1

.field private static sContext:Landroid/content/Context;

.field private static sICoexPropMgr:Lcom/intel/internal/cellcoex/service/props/ICoexPropMgr;

.field private static sInstance:Lcom/intel/internal/cellcoex/service/BtCoexMgr;


# instance fields
.field private mActiveState:Lcom/intel/internal/cellcoex/service/BtCoexMgr$ActiveState;

.field private mAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private mBtState:I

.field private final mClassName:Ljava/lang/String;

.field private mCwsCoexHandlerPluginInstance:Lcom/intel/internal/cellcoex/handler/ICwsCoexHandler;

.field private mIBtCoexHandler:Lcom/intel/internal/cellcoex/handler/IBtCoexHandler;

.field private mInactiveState:Lcom/intel/internal/cellcoex/service/BtCoexMgr$InactiveState;

.field private mMwsState:I

.field private mUnknownState:Lcom/intel/internal/cellcoex/service/BtCoexMgr$UnknownState;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "CWS_CELLCOEX_MGR"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/intel/internal/cellcoex/service/BtCoexMgr;->DEBUG:Z

    return-void
.end method

.method private constructor <init>()V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, -0x1

    const-string v0, "CWS_BT_CELLCOEX_MGR_SM"

    invoke-direct {p0, v0}, Lcom/android/internal/util/StateMachine;-><init>(Ljava/lang/String;)V

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

    iput-object v0, p0, Lcom/intel/internal/cellcoex/service/BtCoexMgr;->mClassName:Ljava/lang/String;

    iput-object v3, p0, Lcom/intel/internal/cellcoex/service/BtCoexMgr;->mCwsCoexHandlerPluginInstance:Lcom/intel/internal/cellcoex/handler/ICwsCoexHandler;

    iput-object v3, p0, Lcom/intel/internal/cellcoex/service/BtCoexMgr;->mIBtCoexHandler:Lcom/intel/internal/cellcoex/handler/IBtCoexHandler;

    iput v2, p0, Lcom/intel/internal/cellcoex/service/BtCoexMgr;->mMwsState:I

    iput v2, p0, Lcom/intel/internal/cellcoex/service/BtCoexMgr;->mBtState:I

    sget-boolean v0, Lcom/intel/internal/cellcoex/service/BtCoexMgr;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "CWS_CELLCOEX_MGR"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/intel/internal/cellcoex/service/BtCoexMgr;->mClassName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "BtCoexMgr constructor"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/intel/internal/cellcoex/service/BtCoexMgr;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/intel/internal/cellcoex/service/BtCoexMgr;->mClassName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/intel/internal/cellcoex/service/BtCoexMgr;)I
    .locals 1

    iget v0, p0, Lcom/intel/internal/cellcoex/service/BtCoexMgr;->mMwsState:I

    return v0
.end method

.method static synthetic access$1000(Lcom/intel/internal/cellcoex/service/BtCoexMgr;)Lcom/intel/internal/cellcoex/service/BtCoexMgr$InactiveState;
    .locals 1

    iget-object v0, p0, Lcom/intel/internal/cellcoex/service/BtCoexMgr;->mInactiveState:Lcom/intel/internal/cellcoex/service/BtCoexMgr$InactiveState;

    return-object v0
.end method

.method static synthetic access$102(Lcom/intel/internal/cellcoex/service/BtCoexMgr;I)I
    .locals 0

    iput p1, p0, Lcom/intel/internal/cellcoex/service/BtCoexMgr;->mMwsState:I

    return p1
.end method

.method static synthetic access$1100(Lcom/intel/internal/cellcoex/service/BtCoexMgr;Lcom/android/internal/util/IState;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/intel/internal/cellcoex/service/BtCoexMgr;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/intel/internal/cellcoex/service/BtCoexMgr;)Lcom/intel/internal/cellcoex/service/BtCoexMgr$ActiveState;
    .locals 1

    iget-object v0, p0, Lcom/intel/internal/cellcoex/service/BtCoexMgr;->mActiveState:Lcom/intel/internal/cellcoex/service/BtCoexMgr$ActiveState;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/intel/internal/cellcoex/service/BtCoexMgr;Lcom/android/internal/util/IState;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/intel/internal/cellcoex/service/BtCoexMgr;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/intel/internal/cellcoex/service/BtCoexMgr;Lcom/android/internal/util/IState;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/intel/internal/cellcoex/service/BtCoexMgr;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$1500(Lcom/intel/internal/cellcoex/service/BtCoexMgr;Lcom/android/internal/util/IState;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/intel/internal/cellcoex/service/BtCoexMgr;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$1600(Lcom/intel/internal/cellcoex/service/BtCoexMgr;Lcom/android/internal/util/IState;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/intel/internal/cellcoex/service/BtCoexMgr;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$1700(Lcom/intel/internal/cellcoex/service/BtCoexMgr;Lcom/android/internal/util/IState;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/intel/internal/cellcoex/service/BtCoexMgr;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$1800(Lcom/intel/internal/cellcoex/service/BtCoexMgr;)V
    .locals 0

    invoke-virtual {p0}, Lcom/intel/internal/cellcoex/service/BtCoexMgr;->quitNow()V

    return-void
.end method

.method static synthetic access$1900(Lcom/intel/internal/cellcoex/service/BtCoexMgr;Lcom/android/internal/util/IState;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/intel/internal/cellcoex/service/BtCoexMgr;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$200(Lcom/intel/internal/cellcoex/service/BtCoexMgr;Lcom/intel/internal/cellcoex/service/props/MwsState;)I
    .locals 1

    invoke-direct {p0, p1}, Lcom/intel/internal/cellcoex/service/BtCoexMgr;->updateMwsState(Lcom/intel/internal/cellcoex/service/props/MwsState;)I

    move-result v0

    return v0
.end method

.method static synthetic access$2000(Lcom/intel/internal/cellcoex/service/BtCoexMgr;)Lcom/intel/internal/cellcoex/handler/IBtCoexHandler;
    .locals 1

    iget-object v0, p0, Lcom/intel/internal/cellcoex/service/BtCoexMgr;->mIBtCoexHandler:Lcom/intel/internal/cellcoex/handler/IBtCoexHandler;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/intel/internal/cellcoex/service/BtCoexMgr;)V
    .locals 0

    invoke-virtual {p0}, Lcom/intel/internal/cellcoex/service/BtCoexMgr;->quitNow()V

    return-void
.end method

.method static synthetic access$2200(Lcom/intel/internal/cellcoex/service/BtCoexMgr;Lcom/android/internal/util/IState;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/intel/internal/cellcoex/service/BtCoexMgr;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$2300(Lcom/intel/internal/cellcoex/service/BtCoexMgr;Lcom/android/internal/util/IState;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/intel/internal/cellcoex/service/BtCoexMgr;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$2400(Lcom/intel/internal/cellcoex/service/BtCoexMgr;)V
    .locals 0

    invoke-virtual {p0}, Lcom/intel/internal/cellcoex/service/BtCoexMgr;->quitNow()V

    return-void
.end method

.method static synthetic access$2500(Lcom/intel/internal/cellcoex/service/BtCoexMgr;Lcom/android/internal/util/IState;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/intel/internal/cellcoex/service/BtCoexMgr;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$2600(Lcom/intel/internal/cellcoex/service/BtCoexMgr;Lcom/android/internal/util/IState;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/intel/internal/cellcoex/service/BtCoexMgr;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$2700(Lcom/intel/internal/cellcoex/service/BtCoexMgr;)V
    .locals 0

    invoke-virtual {p0}, Lcom/intel/internal/cellcoex/service/BtCoexMgr;->quitNow()V

    return-void
.end method

.method static synthetic access$300(Lcom/intel/internal/cellcoex/service/BtCoexMgr;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/intel/internal/cellcoex/service/BtCoexMgr;->printAdapterConnectionState(I)V

    return-void
.end method

.method static synthetic access$400(Lcom/intel/internal/cellcoex/service/BtCoexMgr;)I
    .locals 1

    iget v0, p0, Lcom/intel/internal/cellcoex/service/BtCoexMgr;->mBtState:I

    return v0
.end method

.method static synthetic access$402(Lcom/intel/internal/cellcoex/service/BtCoexMgr;I)I
    .locals 0

    iput p1, p0, Lcom/intel/internal/cellcoex/service/BtCoexMgr;->mBtState:I

    return p1
.end method

.method static synthetic access$500(Lcom/intel/internal/cellcoex/service/BtCoexMgr;Lcom/intel/internal/cellcoex/service/props/BtState$State;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/intel/internal/cellcoex/service/BtCoexMgr;->setBtStateProp(Lcom/intel/internal/cellcoex/service/props/BtState$State;)V

    return-void
.end method

.method static synthetic access$600(Lcom/intel/internal/cellcoex/service/BtCoexMgr;)V
    .locals 0

    invoke-virtual {p0}, Lcom/intel/internal/cellcoex/service/BtCoexMgr;->quitNow()V

    return-void
.end method

.method static synthetic access$700()Z
    .locals 1

    sget-boolean v0, Lcom/intel/internal/cellcoex/service/BtCoexMgr;->DEBUG:Z

    return v0
.end method

.method static synthetic access$800(Lcom/intel/internal/cellcoex/service/BtCoexMgr;)Landroid/bluetooth/BluetoothAdapter;
    .locals 1

    iget-object v0, p0, Lcom/intel/internal/cellcoex/service/BtCoexMgr;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    return-object v0
.end method

.method static synthetic access$900(Lcom/intel/internal/cellcoex/service/BtCoexMgr;)V
    .locals 0

    invoke-virtual {p0}, Lcom/intel/internal/cellcoex/service/BtCoexMgr;->quitNow()V

    return-void
.end method

.method public static getInstance()Lcom/intel/internal/cellcoex/service/BtCoexMgr;
    .locals 2

    sget-boolean v0, Lcom/intel/internal/cellcoex/service/BtCoexMgr;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "CWS_CELLCOEX_MGR"

    const-string v1, "Singleton BtCoexMgr - getInstance"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    sget-object v0, Lcom/intel/internal/cellcoex/service/BtCoexMgr;->sInstance:Lcom/intel/internal/cellcoex/service/BtCoexMgr;

    if-nez v0, :cond_2

    const-class v1, Lcom/intel/internal/cellcoex/service/BtCoexMgr;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/intel/internal/cellcoex/service/BtCoexMgr;->sInstance:Lcom/intel/internal/cellcoex/service/BtCoexMgr;

    if-nez v0, :cond_1

    new-instance v0, Lcom/intel/internal/cellcoex/service/BtCoexMgr;

    invoke-direct {v0}, Lcom/intel/internal/cellcoex/service/BtCoexMgr;-><init>()V

    sput-object v0, Lcom/intel/internal/cellcoex/service/BtCoexMgr;->sInstance:Lcom/intel/internal/cellcoex/service/BtCoexMgr;

    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    sget-object v0, Lcom/intel/internal/cellcoex/service/BtCoexMgr;->sInstance:Lcom/intel/internal/cellcoex/service/BtCoexMgr;

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private printAdapterConnectionState(I)V
    .locals 3

    packed-switch p1, :pswitch_data_0

    sget-boolean v0, Lcom/intel/internal/cellcoex/service/BtCoexMgr;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "CWS_CELLCOEX_MGR"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/intel/internal/cellcoex/service/BtCoexMgr;->mClassName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "Unhandled state = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    const-string v0, "CWS_CELLCOEX_MGR"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/intel/internal/cellcoex/service/BtCoexMgr;->mClassName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "BluetoothAdapter.STATE_DISCONNECTED"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :pswitch_1
    const-string v0, "CWS_CELLCOEX_MGR"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/intel/internal/cellcoex/service/BtCoexMgr;->mClassName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "BluetoothAdapter.STATE_CONNECTING"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :pswitch_2
    const-string v0, "CWS_CELLCOEX_MGR"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/intel/internal/cellcoex/service/BtCoexMgr;->mClassName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "BluetoothAdapter.STATE_CONNECTED"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :pswitch_3
    const-string v0, "CWS_CELLCOEX_MGR"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/intel/internal/cellcoex/service/BtCoexMgr;->mClassName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "BluetoothAdapter.STATE_DISCONNECTING"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private setBtStateProp(Lcom/intel/internal/cellcoex/service/props/BtState$State;)V
    .locals 3

    sget-object v0, Lcom/intel/internal/cellcoex/service/BtCoexMgr;->sICoexPropMgr:Lcom/intel/internal/cellcoex/service/props/ICoexPropMgr;

    const-string v1, "cws.bt.state"

    new-instance v2, Lcom/intel/internal/cellcoex/service/props/BtState;

    invoke-direct {v2, p1}, Lcom/intel/internal/cellcoex/service/props/BtState;-><init>(Lcom/intel/internal/cellcoex/service/props/BtState$State;)V

    invoke-interface {v0, v1, v2}, Lcom/intel/internal/cellcoex/service/props/ICoexPropMgr;->setProp(Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "CWS_CELLCOEX_MGR"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/intel/internal/cellcoex/service/BtCoexMgr;->mClassName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "Cannot create property "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "cws.bt.state"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/intel/internal/cellcoex/service/BtCoexMgr;->quitNow()V

    :cond_0
    return-void
.end method

.method private updateMwsState(Lcom/intel/internal/cellcoex/service/props/MwsState;)I
    .locals 3

    if-nez p1, :cond_0

    sget-object v1, Lcom/intel/internal/cellcoex/service/BtCoexMgr;->sICoexPropMgr:Lcom/intel/internal/cellcoex/service/props/ICoexPropMgr;

    const-string v2, "mws.state"

    invoke-interface {v1, v2}, Lcom/intel/internal/cellcoex/service/props/ICoexPropMgr;->getProp(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/intel/internal/cellcoex/service/props/MwsState;

    move-object v0, v1

    :goto_0
    iget-object v1, v0, Lcom/intel/internal/cellcoex/service/props/MwsState;->mState:Lcom/intel/internal/cellcoex/service/props/MwsState$State;

    sget-object v2, Lcom/intel/internal/cellcoex/service/props/MwsState$State;->RADIO_ON:Lcom/intel/internal/cellcoex/service/props/MwsState$State;

    if-ne v1, v2, :cond_1

    const/4 v1, 0x5

    iput v1, p0, Lcom/intel/internal/cellcoex/service/BtCoexMgr;->mMwsState:I

    :goto_1
    iget v1, p0, Lcom/intel/internal/cellcoex/service/BtCoexMgr;->mMwsState:I

    return v1

    :cond_0
    move-object v0, p1

    goto :goto_0

    :cond_1
    const/4 v1, 0x4

    iput v1, p0, Lcom/intel/internal/cellcoex/service/BtCoexMgr;->mMwsState:I

    iget-object v1, p0, Lcom/intel/internal/cellcoex/service/BtCoexMgr;->mIBtCoexHandler:Lcom/intel/internal/cellcoex/handler/IBtCoexHandler;

    invoke-interface {v1}, Lcom/intel/internal/cellcoex/handler/IBtCoexHandler;->handleMwsOff()V

    goto :goto_1
.end method


# virtual methods
.method public checkPropCatalog()Z
    .locals 3

    sget-boolean v0, Lcom/intel/internal/cellcoex/service/BtCoexMgr;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "CWS_CELLCOEX_MGR"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/intel/internal/cellcoex/service/BtCoexMgr;->mClassName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "checkPropCatalog()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    sget-object v0, Lcom/intel/internal/cellcoex/service/BtCoexMgr;->sICoexPropMgr:Lcom/intel/internal/cellcoex/service/props/ICoexPropMgr;

    const-string v1, "mws.state"

    invoke-interface {v0, v1}, Lcom/intel/internal/cellcoex/service/props/ICoexPropMgr;->getProp(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    const-string v0, "CWS_CELLCOEX_MGR"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/intel/internal/cellcoex/service/BtCoexMgr;->mClassName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "checkPropCatalog: getProp( "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "mws.state"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ) failed"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getProvidedPropList()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    sget-boolean v1, Lcom/intel/internal/cellcoex/service/BtCoexMgr;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "CWS_CELLCOEX_MGR"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/intel/internal/cellcoex/service/BtCoexMgr;->mClassName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "getProvidedPropList()"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "cws.bt.state"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public getRequiredPropList()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    sget-boolean v1, Lcom/intel/internal/cellcoex/service/BtCoexMgr;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "CWS_CELLCOEX_MGR"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/intel/internal/cellcoex/service/BtCoexMgr;->mClassName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "getRequiredPropList()"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "mws.state"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x0

    return-object v1
.end method

.method public init()V
    .locals 4

    sget-boolean v0, Lcom/intel/internal/cellcoex/service/BtCoexMgr;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "CWS_CELLCOEX_MGR"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/intel/internal/cellcoex/service/BtCoexMgr;->mClassName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".init()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/intel/internal/cellcoex/service/BtCoexMgr;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    iget-object v0, p0, Lcom/intel/internal/cellcoex/service/BtCoexMgr;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-nez v0, :cond_2

    sget-boolean v0, Lcom/intel/internal/cellcoex/service/BtCoexMgr;->DEBUG:Z

    if-eqz v0, :cond_1

    const-string v0, "CWS_CELLCOEX_MGR"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/intel/internal/cellcoex/service/BtCoexMgr;->mClassName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "DefaultAdapter not ready. state = STATE_DISCONNECTED"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/intel/internal/cellcoex/service/BtCoexMgr;->printAdapterConnectionState(I)V

    :goto_0
    invoke-static {}, Lcom/intel/internal/cellcoex/plugin/CellCoexHandlerInterfaceCreator;->getInstance()Lcom/intel/internal/cellcoex/plugin/CellCoexHandlerInterfaceCreator;

    move-result-object v0

    iput-object v0, p0, Lcom/intel/internal/cellcoex/service/BtCoexMgr;->mCwsCoexHandlerPluginInstance:Lcom/intel/internal/cellcoex/handler/ICwsCoexHandler;

    iget-object v0, p0, Lcom/intel/internal/cellcoex/service/BtCoexMgr;->mCwsCoexHandlerPluginInstance:Lcom/intel/internal/cellcoex/handler/ICwsCoexHandler;

    if-nez v0, :cond_3

    const-string v0, "CWS_CELLCOEX_MGR"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/intel/internal/cellcoex/service/BtCoexMgr;->mClassName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "mCwsCoexHandlerPluginInstance is null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void

    :cond_2
    iget-object v0, p0, Lcom/intel/internal/cellcoex/service/BtCoexMgr;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getConnectionState()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/intel/internal/cellcoex/service/BtCoexMgr;->printAdapterConnectionState(I)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/intel/internal/cellcoex/service/BtCoexMgr;->mCwsCoexHandlerPluginInstance:Lcom/intel/internal/cellcoex/handler/ICwsCoexHandler;

    invoke-interface {v0}, Lcom/intel/internal/cellcoex/handler/ICwsCoexHandler;->getBtCoexInstance()Lcom/intel/internal/cellcoex/handler/IBtCoexHandler;

    move-result-object v0

    iput-object v0, p0, Lcom/intel/internal/cellcoex/service/BtCoexMgr;->mIBtCoexHandler:Lcom/intel/internal/cellcoex/handler/IBtCoexHandler;

    iget-object v0, p0, Lcom/intel/internal/cellcoex/service/BtCoexMgr;->mIBtCoexHandler:Lcom/intel/internal/cellcoex/handler/IBtCoexHandler;

    if-nez v0, :cond_4

    const-string v0, "CWS_CELLCOEX_MGR"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/intel/internal/cellcoex/service/BtCoexMgr;->mClassName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "mIBtCoexHandler is null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_4
    new-instance v0, Lcom/intel/internal/cellcoex/service/BtCoexMgr$UnknownState;

    invoke-direct {v0, p0}, Lcom/intel/internal/cellcoex/service/BtCoexMgr$UnknownState;-><init>(Lcom/intel/internal/cellcoex/service/BtCoexMgr;)V

    iput-object v0, p0, Lcom/intel/internal/cellcoex/service/BtCoexMgr;->mUnknownState:Lcom/intel/internal/cellcoex/service/BtCoexMgr$UnknownState;

    new-instance v0, Lcom/intel/internal/cellcoex/service/BtCoexMgr$InactiveState;

    invoke-direct {v0, p0}, Lcom/intel/internal/cellcoex/service/BtCoexMgr$InactiveState;-><init>(Lcom/intel/internal/cellcoex/service/BtCoexMgr;)V

    iput-object v0, p0, Lcom/intel/internal/cellcoex/service/BtCoexMgr;->mInactiveState:Lcom/intel/internal/cellcoex/service/BtCoexMgr$InactiveState;

    new-instance v0, Lcom/intel/internal/cellcoex/service/BtCoexMgr$ActiveState;

    invoke-direct {v0, p0}, Lcom/intel/internal/cellcoex/service/BtCoexMgr$ActiveState;-><init>(Lcom/intel/internal/cellcoex/service/BtCoexMgr;)V

    iput-object v0, p0, Lcom/intel/internal/cellcoex/service/BtCoexMgr;->mActiveState:Lcom/intel/internal/cellcoex/service/BtCoexMgr$ActiveState;

    iget-object v0, p0, Lcom/intel/internal/cellcoex/service/BtCoexMgr;->mUnknownState:Lcom/intel/internal/cellcoex/service/BtCoexMgr$UnknownState;

    invoke-virtual {p0, v0}, Lcom/intel/internal/cellcoex/service/BtCoexMgr;->addState(Lcom/android/internal/util/State;)V

    iget-object v0, p0, Lcom/intel/internal/cellcoex/service/BtCoexMgr;->mInactiveState:Lcom/intel/internal/cellcoex/service/BtCoexMgr$InactiveState;

    invoke-virtual {p0, v0}, Lcom/intel/internal/cellcoex/service/BtCoexMgr;->addState(Lcom/android/internal/util/State;)V

    iget-object v0, p0, Lcom/intel/internal/cellcoex/service/BtCoexMgr;->mActiveState:Lcom/intel/internal/cellcoex/service/BtCoexMgr$ActiveState;

    invoke-virtual {p0, v0}, Lcom/intel/internal/cellcoex/service/BtCoexMgr;->addState(Lcom/android/internal/util/State;)V

    iget-object v0, p0, Lcom/intel/internal/cellcoex/service/BtCoexMgr;->mUnknownState:Lcom/intel/internal/cellcoex/service/BtCoexMgr$UnknownState;

    invoke-virtual {p0, v0}, Lcom/intel/internal/cellcoex/service/BtCoexMgr;->setInitialState(Lcom/android/internal/util/State;)V

    invoke-virtual {p0}, Lcom/intel/internal/cellcoex/service/BtCoexMgr;->start()V

    sget-object v0, Lcom/intel/internal/cellcoex/service/BtCoexMgr;->sICoexPropMgr:Lcom/intel/internal/cellcoex/service/props/ICoexPropMgr;

    const-string v1, "mws.state"

    new-instance v2, Lcom/intel/internal/cellcoex/service/BtCoexMgr$1;

    invoke-direct {v2, p0}, Lcom/intel/internal/cellcoex/service/BtCoexMgr$1;-><init>(Lcom/intel/internal/cellcoex/service/BtCoexMgr;)V

    invoke-interface {v0, v1, v2}, Lcom/intel/internal/cellcoex/service/props/ICoexPropMgr;->setPropChangeListener(Ljava/lang/String;Ljava/beans/PropertyChangeListener;)Z

    sget-object v0, Lcom/intel/internal/cellcoex/service/BtCoexMgr;->sContext:Landroid/content/Context;

    new-instance v1, Lcom/intel/internal/cellcoex/service/BtCoexMgr$2;

    invoke-direct {v1, p0}, Lcom/intel/internal/cellcoex/service/BtCoexMgr$2;-><init>(Lcom/intel/internal/cellcoex/service/BtCoexMgr;)V

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.bluetooth.adapter.action.CONNECTION_STATE_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    sget-object v0, Lcom/intel/internal/cellcoex/service/BtCoexMgr;->sContext:Landroid/content/Context;

    new-instance v1, Lcom/intel/internal/cellcoex/service/BtCoexMgr$3;

    invoke-direct {v1, p0}, Lcom/intel/internal/cellcoex/service/BtCoexMgr$3;-><init>(Lcom/intel/internal/cellcoex/service/BtCoexMgr;)V

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    sget-object v0, Lcom/intel/internal/cellcoex/service/BtCoexMgr;->sContext:Landroid/content/Context;

    new-instance v1, Lcom/intel/internal/cellcoex/service/BtCoexMgr$4;

    invoke-direct {v1, p0}, Lcom/intel/internal/cellcoex/service/BtCoexMgr$4;-><init>(Lcom/intel/internal/cellcoex/service/BtCoexMgr;)V

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.btcoex.test"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    goto/16 :goto_1
.end method

.method public populatePropCatalog()Z
    .locals 3

    sget-boolean v0, Lcom/intel/internal/cellcoex/service/BtCoexMgr;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "CWS_CELLCOEX_MGR"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/intel/internal/cellcoex/service/BtCoexMgr;->mClassName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "populatePropCatalog()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    sget-object v0, Lcom/intel/internal/cellcoex/service/BtCoexMgr;->sICoexPropMgr:Lcom/intel/internal/cellcoex/service/props/ICoexPropMgr;

    const-string v1, "cws.bt.state"

    new-instance v2, Lcom/intel/internal/cellcoex/service/props/BtState;

    invoke-direct {v2}, Lcom/intel/internal/cellcoex/service/props/BtState;-><init>()V

    invoke-interface {v0, v1, v2}, Lcom/intel/internal/cellcoex/service/props/ICoexPropMgr;->addProp(Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "CWS_CELLCOEX_MGR"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/intel/internal/cellcoex/service/BtCoexMgr;->mClassName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "Cannot create property "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "cws.bt.state"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public registerToPropertyBus(Lcom/intel/internal/cellcoex/service/props/ICoexPropMgr;)Z
    .locals 3

    sget-boolean v0, Lcom/intel/internal/cellcoex/service/BtCoexMgr;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "CWS_CELLCOEX_MGR"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/intel/internal/cellcoex/service/BtCoexMgr;->mClassName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "registerToPropertyBus()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    sput-object p1, Lcom/intel/internal/cellcoex/service/BtCoexMgr;->sICoexPropMgr:Lcom/intel/internal/cellcoex/service/props/ICoexPropMgr;

    sget-object v0, Lcom/intel/internal/cellcoex/service/BtCoexMgr;->sICoexPropMgr:Lcom/intel/internal/cellcoex/service/props/ICoexPropMgr;

    invoke-interface {v0, p0}, Lcom/intel/internal/cellcoex/service/props/ICoexPropMgr;->addPropNode(Lcom/intel/internal/cellcoex/service/props/ICoexPropNode;)Z

    move-result v0

    return v0
.end method

.method public setContext(Landroid/content/Context;)V
    .locals 0

    sput-object p1, Lcom/intel/internal/cellcoex/service/BtCoexMgr;->sContext:Landroid/content/Context;

    return-void
.end method
