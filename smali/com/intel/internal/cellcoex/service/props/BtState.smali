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

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/intel/internal/cellcoex/service/props/BtState$State;->UNKNOWN:Lcom/intel/internal/cellcoex/service/props/BtState$State;

    iput-object v0, p0, Lcom/intel/internal/cellcoex/service/props/BtState;->mState:Lcom/intel/internal/cellcoex/service/props/BtState$State;

    return-void
.end method

.method public constructor <init>(Lcom/intel/internal/cellcoex/service/props/BtState$State;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/intel/internal/cellcoex/service/props/BtState;->mState:Lcom/intel/internal/cellcoex/service/props/BtState$State;

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
    if-ne p1, p0, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    instance-of v3, p1, Lcom/intel/internal/cellcoex/service/props/BtState;

    if-eqz v3, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/intel/internal/cellcoex/service/props/BtState;

    iget-object v3, v0, Lcom/intel/internal/cellcoex/service/props/BtState;->mState:Lcom/intel/internal/cellcoex/service/props/BtState$State;

    iget-object v4, p0, Lcom/intel/internal/cellcoex/service/props/BtState;->mState:Lcom/intel/internal/cellcoex/service/props/BtState$State;

    if-ne v3, v4, :cond_0

    move v1, v2

    goto :goto_0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    const-string v0, "cws.bt.state"

    return-object v0
.end method

.method public getState()Lcom/intel/internal/cellcoex/service/props/BtState$State;
    .locals 1

    iget-object v0, p0, Lcom/intel/internal/cellcoex/service/props/BtState;->mState:Lcom/intel/internal/cellcoex/service/props/BtState$State;

    return-object v0
.end method

.method public setState(Lcom/intel/internal/cellcoex/service/props/BtState$State;)V
    .locals 0

    iput-object p1, p0, Lcom/intel/internal/cellcoex/service/props/BtState;->mState:Lcom/intel/internal/cellcoex/service/props/BtState$State;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/intel/internal/cellcoex/service/props/BtState;->mState:Lcom/intel/internal/cellcoex/service/props/BtState$State;

    invoke-virtual {v0}, Lcom/intel/internal/cellcoex/service/props/BtState$State;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
