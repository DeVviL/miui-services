.class synthetic Lcom/intel/internal/cellcoex/service/mwscoexmgr/WifiSafeChannelProviderSTM$1;
.super Ljava/lang/Object;
.source "WifiSafeChannelProviderSTM.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/intel/internal/cellcoex/service/mwscoexmgr/WifiSafeChannelProviderSTM;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$intel$internal$cellcoex$service$props$MwsState$State:[I

.field static final synthetic $SwitchMap$com$intel$internal$cellcoex$service$props$MwsState$SubState:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    invoke-static {}, Lcom/intel/internal/cellcoex/service/props/MwsState$State;->values()[Lcom/intel/internal/cellcoex/service/props/MwsState$State;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/intel/internal/cellcoex/service/mwscoexmgr/WifiSafeChannelProviderSTM$1;->$SwitchMap$com$intel$internal$cellcoex$service$props$MwsState$State:[I

    :try_start_0
    sget-object v0, Lcom/intel/internal/cellcoex/service/mwscoexmgr/WifiSafeChannelProviderSTM$1;->$SwitchMap$com$intel$internal$cellcoex$service$props$MwsState$State:[I

    sget-object v1, Lcom/intel/internal/cellcoex/service/props/MwsState$State;->RADIO_OFF:Lcom/intel/internal/cellcoex/service/props/MwsState$State;

    invoke-virtual {v1}, Lcom/intel/internal/cellcoex/service/props/MwsState$State;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_2

    :goto_0
    :try_start_1
    sget-object v0, Lcom/intel/internal/cellcoex/service/mwscoexmgr/WifiSafeChannelProviderSTM$1;->$SwitchMap$com$intel$internal$cellcoex$service$props$MwsState$State:[I

    sget-object v1, Lcom/intel/internal/cellcoex/service/props/MwsState$State;->RADIO_ON:Lcom/intel/internal/cellcoex/service/props/MwsState$State;

    invoke-virtual {v1}, Lcom/intel/internal/cellcoex/service/props/MwsState$State;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    invoke-static {}, Lcom/intel/internal/cellcoex/service/props/MwsState$SubState;->values()[Lcom/intel/internal/cellcoex/service/props/MwsState$SubState;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/intel/internal/cellcoex/service/mwscoexmgr/WifiSafeChannelProviderSTM$1;->$SwitchMap$com$intel$internal$cellcoex$service$props$MwsState$SubState:[I

    :try_start_2
    sget-object v0, Lcom/intel/internal/cellcoex/service/mwscoexmgr/WifiSafeChannelProviderSTM$1;->$SwitchMap$com$intel$internal$cellcoex$service$props$MwsState$SubState:[I

    sget-object v1, Lcom/intel/internal/cellcoex/service/props/MwsState$SubState;->REGISTERED_AGRESSIVE:Lcom/intel/internal/cellcoex/service/props/MwsState$SubState;

    invoke-virtual {v1}, Lcom/intel/internal/cellcoex/service/props/MwsState$SubState;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_0

    :goto_2
    return-void

    :catch_0
    move-exception v0

    goto :goto_2

    :catch_1
    move-exception v0

    goto :goto_1

    :catch_2
    move-exception v0

    goto :goto_0
.end method
