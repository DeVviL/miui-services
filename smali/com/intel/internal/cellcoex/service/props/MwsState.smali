.class public Lcom/intel/internal/cellcoex/service/props/MwsState;
.super Ljava/lang/Object;
.source "MwsState.java"

# interfaces
.implements Lcom/intel/internal/cellcoex/service/props/ICoexPropProvider;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/intel/internal/cellcoex/service/props/MwsState$SubState;,
        Lcom/intel/internal/cellcoex/service/props/MwsState$State;
    }
.end annotation


# static fields
.field public static final PROP_NAME:Ljava/lang/String; = "mws.state"


# instance fields
.field public mState:Lcom/intel/internal/cellcoex/service/props/MwsState$State;

.field public mSubState:Lcom/intel/internal/cellcoex/service/props/MwsState$SubState;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/intel/internal/cellcoex/service/props/MwsState$State;->UNKNOWN:Lcom/intel/internal/cellcoex/service/props/MwsState$State;

    iput-object v0, p0, Lcom/intel/internal/cellcoex/service/props/MwsState;->mState:Lcom/intel/internal/cellcoex/service/props/MwsState$State;

    sget-object v0, Lcom/intel/internal/cellcoex/service/props/MwsState$SubState;->NA:Lcom/intel/internal/cellcoex/service/props/MwsState$SubState;

    iput-object v0, p0, Lcom/intel/internal/cellcoex/service/props/MwsState;->mSubState:Lcom/intel/internal/cellcoex/service/props/MwsState$SubState;

    return-void
.end method

.method public constructor <init>(Lcom/intel/internal/cellcoex/service/props/MwsState$State;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/intel/internal/cellcoex/service/props/MwsState;->mState:Lcom/intel/internal/cellcoex/service/props/MwsState$State;

    sget-object v0, Lcom/intel/internal/cellcoex/service/props/MwsState$SubState;->NA:Lcom/intel/internal/cellcoex/service/props/MwsState$SubState;

    iput-object v0, p0, Lcom/intel/internal/cellcoex/service/props/MwsState;->mSubState:Lcom/intel/internal/cellcoex/service/props/MwsState$SubState;

    return-void
.end method

.method public constructor <init>(Lcom/intel/internal/cellcoex/service/props/MwsState$State;Lcom/intel/internal/cellcoex/service/props/MwsState$SubState;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/intel/internal/cellcoex/service/props/MwsState;->mState:Lcom/intel/internal/cellcoex/service/props/MwsState$State;

    iput-object p2, p0, Lcom/intel/internal/cellcoex/service/props/MwsState;->mSubState:Lcom/intel/internal/cellcoex/service/props/MwsState$SubState;

    return-void
.end method

.method public constructor <init>(Lcom/intel/internal/cellcoex/service/props/MwsState;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p1, Lcom/intel/internal/cellcoex/service/props/MwsState;->mState:Lcom/intel/internal/cellcoex/service/props/MwsState$State;

    iput-object v0, p0, Lcom/intel/internal/cellcoex/service/props/MwsState;->mState:Lcom/intel/internal/cellcoex/service/props/MwsState$State;

    iget-object v0, p1, Lcom/intel/internal/cellcoex/service/props/MwsState;->mSubState:Lcom/intel/internal/cellcoex/service/props/MwsState$SubState;

    iput-object v0, p0, Lcom/intel/internal/cellcoex/service/props/MwsState;->mSubState:Lcom/intel/internal/cellcoex/service/props/MwsState$SubState;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v2, 0x1

    const/4 v1, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    if-ne p0, p1, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    instance-of v3, p1, Lcom/intel/internal/cellcoex/service/props/MwsState;

    if-eqz v3, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/intel/internal/cellcoex/service/props/MwsState;

    iget-object v3, v0, Lcom/intel/internal/cellcoex/service/props/MwsState;->mState:Lcom/intel/internal/cellcoex/service/props/MwsState$State;

    iget-object v4, p0, Lcom/intel/internal/cellcoex/service/props/MwsState;->mState:Lcom/intel/internal/cellcoex/service/props/MwsState$State;

    if-ne v3, v4, :cond_0

    iget-object v3, v0, Lcom/intel/internal/cellcoex/service/props/MwsState;->mSubState:Lcom/intel/internal/cellcoex/service/props/MwsState$SubState;

    iget-object v4, p0, Lcom/intel/internal/cellcoex/service/props/MwsState;->mSubState:Lcom/intel/internal/cellcoex/service/props/MwsState$SubState;

    if-ne v3, v4, :cond_0

    move v1, v2

    goto :goto_0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    const-string v0, "mws.state"

    return-object v0
.end method

.method public final isMwsOn()Z
    .locals 2

    iget-object v0, p0, Lcom/intel/internal/cellcoex/service/props/MwsState;->mState:Lcom/intel/internal/cellcoex/service/props/MwsState$State;

    sget-object v1, Lcom/intel/internal/cellcoex/service/props/MwsState$State;->RADIO_ON:Lcom/intel/internal/cellcoex/service/props/MwsState$State;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final isMwsRegistered()Z
    .locals 2

    iget-object v0, p0, Lcom/intel/internal/cellcoex/service/props/MwsState;->mSubState:Lcom/intel/internal/cellcoex/service/props/MwsState$SubState;

    sget-object v1, Lcom/intel/internal/cellcoex/service/props/MwsState$SubState;->REGISTERED_NOT_AGRESSIVE:Lcom/intel/internal/cellcoex/service/props/MwsState$SubState;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/intel/internal/cellcoex/service/props/MwsState;->mSubState:Lcom/intel/internal/cellcoex/service/props/MwsState$SubState;

    sget-object v1, Lcom/intel/internal/cellcoex/service/props/MwsState$SubState;->REGISTERED_NOT_AGRESSIVE:Lcom/intel/internal/cellcoex/service/props/MwsState$SubState;

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "(state: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/intel/internal/cellcoex/service/props/MwsState;->mState:Lcom/intel/internal/cellcoex/service/props/MwsState$State;

    invoke-virtual {v1}, Lcom/intel/internal/cellcoex/service/props/MwsState$State;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " substate: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/intel/internal/cellcoex/service/props/MwsState;->mSubState:Lcom/intel/internal/cellcoex/service/props/MwsState$SubState;

    invoke-virtual {v1}, Lcom/intel/internal/cellcoex/service/props/MwsState$SubState;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
