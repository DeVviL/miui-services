.class public interface abstract Lcom/intel/internal/cellcoex/service/props/ICoexPropNode;
.super Ljava/lang/Object;
.source "ICoexPropNode.java"


# virtual methods
.method public abstract checkPropCatalog()Z
.end method

.method public abstract getProvidedPropList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getRequiredPropList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract populatePropCatalog()Z
.end method

.method public abstract registerToPropertyBus(Lcom/intel/internal/cellcoex/service/props/ICoexPropMgr;)Z
.end method
