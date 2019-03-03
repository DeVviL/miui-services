.class public Lcom/intel/internal/cellcoex/service/props/CellcoexActivityControl;
.super Ljava/lang/Object;
.source "CellcoexActivityControl.java"

# interfaces
.implements Lcom/intel/internal/cellcoex/service/props/ICoexPropProvider;


# static fields
.field public static final PROP_NAME:Ljava/lang/String; = "cws.activity.control"


# instance fields
.field private mCellCoexBtNrtOn:Z

.field private mCellCoexBtRtOn:Z

.field private mCellCoexWifiNrtOn:Z

.field private mCellCoexWifiRtOn:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v0, p0, Lcom/intel/internal/cellcoex/service/props/CellcoexActivityControl;->mCellCoexWifiRtOn:Z

    iput-boolean v0, p0, Lcom/intel/internal/cellcoex/service/props/CellcoexActivityControl;->mCellCoexWifiNrtOn:Z

    iput-boolean v0, p0, Lcom/intel/internal/cellcoex/service/props/CellcoexActivityControl;->mCellCoexBtRtOn:Z

    iput-boolean v0, p0, Lcom/intel/internal/cellcoex/service/props/CellcoexActivityControl;->mCellCoexBtNrtOn:Z

    iput-boolean v0, p0, Lcom/intel/internal/cellcoex/service/props/CellcoexActivityControl;->mCellCoexWifiRtOn:Z

    iput-boolean v0, p0, Lcom/intel/internal/cellcoex/service/props/CellcoexActivityControl;->mCellCoexWifiNrtOn:Z

    iput-boolean v0, p0, Lcom/intel/internal/cellcoex/service/props/CellcoexActivityControl;->mCellCoexBtRtOn:Z

    iput-boolean v0, p0, Lcom/intel/internal/cellcoex/service/props/CellcoexActivityControl;->mCellCoexBtNrtOn:Z

    return-void
.end method

.method public constructor <init>(ZZZZ)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v0, p0, Lcom/intel/internal/cellcoex/service/props/CellcoexActivityControl;->mCellCoexWifiRtOn:Z

    iput-boolean v0, p0, Lcom/intel/internal/cellcoex/service/props/CellcoexActivityControl;->mCellCoexWifiNrtOn:Z

    iput-boolean v0, p0, Lcom/intel/internal/cellcoex/service/props/CellcoexActivityControl;->mCellCoexBtRtOn:Z

    iput-boolean v0, p0, Lcom/intel/internal/cellcoex/service/props/CellcoexActivityControl;->mCellCoexBtNrtOn:Z

    iput-boolean p1, p0, Lcom/intel/internal/cellcoex/service/props/CellcoexActivityControl;->mCellCoexWifiRtOn:Z

    iput-boolean p2, p0, Lcom/intel/internal/cellcoex/service/props/CellcoexActivityControl;->mCellCoexWifiNrtOn:Z

    iput-boolean p3, p0, Lcom/intel/internal/cellcoex/service/props/CellcoexActivityControl;->mCellCoexBtRtOn:Z

    iput-boolean p4, p0, Lcom/intel/internal/cellcoex/service/props/CellcoexActivityControl;->mCellCoexBtNrtOn:Z

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
    instance-of v3, p1, Lcom/intel/internal/cellcoex/service/props/CellcoexActivityControl;

    if-eqz v3, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/intel/internal/cellcoex/service/props/CellcoexActivityControl;

    invoke-virtual {v0}, Lcom/intel/internal/cellcoex/service/props/CellcoexActivityControl;->getCellcoexWifiRtOn()Z

    move-result v3

    invoke-virtual {p0}, Lcom/intel/internal/cellcoex/service/props/CellcoexActivityControl;->getCellcoexWifiRtOn()Z

    move-result v4

    if-ne v3, v4, :cond_0

    invoke-virtual {v0}, Lcom/intel/internal/cellcoex/service/props/CellcoexActivityControl;->getCellcoexWifiNrtOn()Z

    move-result v3

    invoke-virtual {p0}, Lcom/intel/internal/cellcoex/service/props/CellcoexActivityControl;->getCellcoexWifiNrtOn()Z

    move-result v4

    if-ne v3, v4, :cond_0

    invoke-virtual {v0}, Lcom/intel/internal/cellcoex/service/props/CellcoexActivityControl;->getCellcoexBtRtOn()Z

    move-result v3

    invoke-virtual {p0}, Lcom/intel/internal/cellcoex/service/props/CellcoexActivityControl;->getCellcoexBtRtOn()Z

    move-result v4

    if-ne v3, v4, :cond_0

    invoke-virtual {v0}, Lcom/intel/internal/cellcoex/service/props/CellcoexActivityControl;->getCellcoexBtNrtOn()Z

    move-result v3

    invoke-virtual {p0}, Lcom/intel/internal/cellcoex/service/props/CellcoexActivityControl;->getCellcoexBtNrtOn()Z

    move-result v4

    if-ne v3, v4, :cond_0

    move v1, v2

    goto :goto_0
.end method

.method public getCellcoexBtNrtOn()Z
    .locals 1

    iget-boolean v0, p0, Lcom/intel/internal/cellcoex/service/props/CellcoexActivityControl;->mCellCoexBtRtOn:Z

    return v0
.end method

.method public getCellcoexBtRtOn()Z
    .locals 1

    iget-boolean v0, p0, Lcom/intel/internal/cellcoex/service/props/CellcoexActivityControl;->mCellCoexWifiRtOn:Z

    return v0
.end method

.method public getCellcoexWifiNrtOn()Z
    .locals 1

    iget-boolean v0, p0, Lcom/intel/internal/cellcoex/service/props/CellcoexActivityControl;->mCellCoexWifiNrtOn:Z

    return v0
.end method

.method public getCellcoexWifiRtOn()Z
    .locals 1

    iget-boolean v0, p0, Lcom/intel/internal/cellcoex/service/props/CellcoexActivityControl;->mCellCoexWifiRtOn:Z

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    const-string v0, "cws.activity.control"

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "(CellcoexWifiRtOn: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/intel/internal/cellcoex/service/props/CellcoexActivityControl;->getCellcoexWifiRtOn()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "(CellcoexWifiNrtOn: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/intel/internal/cellcoex/service/props/CellcoexActivityControl;->getCellcoexWifiNrtOn()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "(CellcoexBtRtOn: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/intel/internal/cellcoex/service/props/CellcoexActivityControl;->getCellcoexBtRtOn()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "(CellcoexBtNrtOn: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/intel/internal/cellcoex/service/props/CellcoexActivityControl;->getCellcoexBtNrtOn()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
