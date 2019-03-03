.class public interface abstract Lcom/intel/internal/cellcoex/service/props/ICoexPropMgr;
.super Ljava/lang/Object;
.source "ICoexPropMgr.java"


# virtual methods
.method public abstract addProp(Ljava/lang/String;Ljava/lang/Object;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "TT;)Z"
        }
    .end annotation
.end method

.method public abstract addPropNode(Lcom/intel/internal/cellcoex/service/props/ICoexPropNode;)Z
.end method

.method public abstract getProp(Ljava/lang/String;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation
.end method

.method public abstract isPropRequired(Ljava/lang/String;)Z
.end method

.method public abstract removePropChangeListener(Ljava/lang/String;Ljava/beans/PropertyChangeListener;)Z
.end method

.method public abstract setProp(Ljava/lang/String;Ljava/lang/Object;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "TT;)Z"
        }
    .end annotation
.end method

.method public abstract setPropChangeListener(Ljava/lang/String;Ljava/beans/PropertyChangeListener;)Z
.end method
