.class public Lcom/intel/internal/cellcoex/service/props/BtState;
.super Ljava/lang/Object;
.source "BtState.java"

# interfaces
.implements Lcom/intel/internal/cellcoex/service/props/ICoexPropProvider;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/intel/internal/cellcoex/service/props/BtState$State;
    }
.end annotation


# static fields
.field public static final PROP_NAME:Ljava/lang/String; = "cws.bt.state"


# instance fields
.field private mState:Lcom/intel/internal/cellcoex/service/props/BtState$State;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    sget-object v0, Lcom/intel/internal/cellcoex/service/props/BtState$State;->UNKNOWN:Lcom/intel/internal/cellcoex/service/props/BtState$State;

    iput-object v0, p0, Lcom/intel/internal/cellcoex/service/props/BtState;->mState:Lcom/intel/internal/cellcoex/service/props/BtState$State;

    .line 31
    return-void
.end method

.method public constructor <init>(Lcom/intel/internal/cellcoex/service/props/BtState$State;)V
    .locals 0
    .param p1, "aState"    # Lcom/intel/internal/cellcoex/service/props/BtState$State;

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/intel/internal/cellcoex/service/props/BtState;->mState:Lcom/intel/internal/cellcoex/service/props/BtState$State;

    .line 35
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "other"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 52
    if-nez p1, :cond_1

    .line 61
    :cond_0
    :goto_0
    return v1

    .line 54
    :cond_1
    if-ne p1, p0, :cond_2

    move v1, v2

    .line 55
    goto :goto_0

    .line 56
    :cond_2
    instance-of v3, p1, Lcom/intel/internal/cellcoex/service/props/BtState;

    if-eqz v3, :cond_0

    move-object v0, p1

    .line 58
    check-cast v0, Lcom/intel/internal/cellcoex/service/props/BtState;

    .line 59
    .local v0, "otherMyClass":Lcom/intel/internal/cellcoex/service/props/BtState;
    iget-object v3, v0, Lcom/intel/internal/cellcoex/service/props/BtState;->mState:Lcom/intel/internal/cellcoex/service/props/BtState$State;

    iget-object v4, p0, Lcom/intel/internal/cellcoex/service/props/BtState;->mState:Lcom/intel/internal/cellcoex/service/props/BtState$State;

    if-ne v3, v4, :cond_0

    move v1, v2

    .line 60
    goto :goto_0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 66
    const-string v0, "cws.bt.state"

    return-object v0
.end method

.method public getState()Lcom/intel/internal/cellcoex/service/props/BtState$State;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/intel/internal/cellcoex/service/props/BtState;->mState:Lcom/intel/internal/cellcoex/service/props/BtState$State;

    return-object v0
.end method

.method public setState(Lcom/intel/internal/cellcoex/service/props/BtState$State;)V
    .locals 0
    .param p1, "state"    # Lcom/intel/internal/cellcoex/service/props/BtState$State;

    .prologue
    .line 42
    iput-object p1, p0, Lcom/intel/internal/cellcoex/service/props/BtState;->mState:Lcom/intel/internal/cellcoex/service/props/BtState$State;

    .line 43
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/intel/internal/cellcoex/service/props/BtState;->mState:Lcom/intel/internal/cellcoex/service/props/BtState$State;

    invoke-virtual {v0}, Lcom/intel/internal/cellcoex/service/props/BtState$State;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
