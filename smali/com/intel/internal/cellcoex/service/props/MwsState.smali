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

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    sget-object v0, Lcom/intel/internal/cellcoex/service/props/MwsState$State;->UNKNOWN:Lcom/intel/internal/cellcoex/service/props/MwsState$State;

    iput-object v0, p0, Lcom/intel/internal/cellcoex/service/props/MwsState;->mState:Lcom/intel/internal/cellcoex/service/props/MwsState$State;

    .line 36
    sget-object v0, Lcom/intel/internal/cellcoex/service/props/MwsState$SubState;->NA:Lcom/intel/internal/cellcoex/service/props/MwsState$SubState;

    iput-object v0, p0, Lcom/intel/internal/cellcoex/service/props/MwsState;->mSubState:Lcom/intel/internal/cellcoex/service/props/MwsState$SubState;

    .line 37
    return-void
.end method

.method public constructor <init>(Lcom/intel/internal/cellcoex/service/props/MwsState$State;)V
    .locals 1
    .param p1, "aState"    # Lcom/intel/internal/cellcoex/service/props/MwsState$State;

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lcom/intel/internal/cellcoex/service/props/MwsState;->mState:Lcom/intel/internal/cellcoex/service/props/MwsState$State;

    .line 41
    sget-object v0, Lcom/intel/internal/cellcoex/service/props/MwsState$SubState;->NA:Lcom/intel/internal/cellcoex/service/props/MwsState$SubState;

    iput-object v0, p0, Lcom/intel/internal/cellcoex/service/props/MwsState;->mSubState:Lcom/intel/internal/cellcoex/service/props/MwsState$SubState;

    .line 42
    return-void
.end method

.method public constructor <init>(Lcom/intel/internal/cellcoex/service/props/MwsState$State;Lcom/intel/internal/cellcoex/service/props/MwsState$SubState;)V
    .locals 0
    .param p1, "aState"    # Lcom/intel/internal/cellcoex/service/props/MwsState$State;
    .param p2, "aSubState"    # Lcom/intel/internal/cellcoex/service/props/MwsState$SubState;

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, Lcom/intel/internal/cellcoex/service/props/MwsState;->mState:Lcom/intel/internal/cellcoex/service/props/MwsState$State;

    .line 46
    iput-object p2, p0, Lcom/intel/internal/cellcoex/service/props/MwsState;->mSubState:Lcom/intel/internal/cellcoex/service/props/MwsState$SubState;

    .line 47
    return-void
.end method

.method public constructor <init>(Lcom/intel/internal/cellcoex/service/props/MwsState;)V
    .locals 1
    .param p1, "anotherMwsState"    # Lcom/intel/internal/cellcoex/service/props/MwsState;

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iget-object v0, p1, Lcom/intel/internal/cellcoex/service/props/MwsState;->mState:Lcom/intel/internal/cellcoex/service/props/MwsState$State;

    iput-object v0, p0, Lcom/intel/internal/cellcoex/service/props/MwsState;->mState:Lcom/intel/internal/cellcoex/service/props/MwsState$State;

    .line 51
    iget-object v0, p1, Lcom/intel/internal/cellcoex/service/props/MwsState;->mSubState:Lcom/intel/internal/cellcoex/service/props/MwsState$SubState;

    iput-object v0, p0, Lcom/intel/internal/cellcoex/service/props/MwsState;->mSubState:Lcom/intel/internal/cellcoex/service/props/MwsState$SubState;

    .line 52
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "other"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 61
    if-nez p1, :cond_1

    .line 70
    :cond_0
    :goto_0
    return v1

    .line 63
    :cond_1
    if-ne p0, p1, :cond_2

    move v1, v2

    .line 64
    goto :goto_0

    .line 65
    :cond_2
    instance-of v3, p1, Lcom/intel/internal/cellcoex/service/props/MwsState;

    if-eqz v3, :cond_0

    move-object v0, p1

    .line 67
    check-cast v0, Lcom/intel/internal/cellcoex/service/props/MwsState;

    .line 68
    .local v0, "otherMyClass":Lcom/intel/internal/cellcoex/service/props/MwsState;
    iget-object v3, v0, Lcom/intel/internal/cellcoex/service/props/MwsState;->mState:Lcom/intel/internal/cellcoex/service/props/MwsState$State;

    iget-object v4, p0, Lcom/intel/internal/cellcoex/service/props/MwsState;->mState:Lcom/intel/internal/cellcoex/service/props/MwsState$State;

    if-ne v3, v4, :cond_0

    iget-object v3, v0, Lcom/intel/internal/cellcoex/service/props/MwsState;->mSubState:Lcom/intel/internal/cellcoex/service/props/MwsState$SubState;

    iget-object v4, p0, Lcom/intel/internal/cellcoex/service/props/MwsState;->mSubState:Lcom/intel/internal/cellcoex/service/props/MwsState$SubState;

    if-ne v3, v4, :cond_0

    move v1, v2

    .line 69
    goto :goto_0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 75
    const-string v0, "mws.state"

    return-object v0
.end method

.method public final isMwsOn()Z
    .locals 2

    .prologue
    .line 79
    iget-object v0, p0, Lcom/intel/internal/cellcoex/service/props/MwsState;->mState:Lcom/intel/internal/cellcoex/service/props/MwsState$State;

    sget-object v1, Lcom/intel/internal/cellcoex/service/props/MwsState$State;->RADIO_ON:Lcom/intel/internal/cellcoex/service/props/MwsState$State;

    if-ne v0, v1, :cond_0

    .line 80
    const/4 v0, 0x1

    .line 82
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final isMwsRegistered()Z
    .locals 2

    .prologue
    .line 86
    iget-object v0, p0, Lcom/intel/internal/cellcoex/service/props/MwsState;->mSubState:Lcom/intel/internal/cellcoex/service/props/MwsState$SubState;

    sget-object v1, Lcom/intel/internal/cellcoex/service/props/MwsState$SubState;->REGISTERED_NOT_AGRESSIVE:Lcom/intel/internal/cellcoex/service/props/MwsState$SubState;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/intel/internal/cellcoex/service/props/MwsState;->mSubState:Lcom/intel/internal/cellcoex/service/props/MwsState$SubState;

    sget-object v1, Lcom/intel/internal/cellcoex/service/props/MwsState$SubState;->REGISTERED_NOT_AGRESSIVE:Lcom/intel/internal/cellcoex/service/props/MwsState$SubState;

    if-ne v0, v1, :cond_1

    .line 88
    :cond_0
    const/4 v0, 0x1

    .line 90
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 56
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
