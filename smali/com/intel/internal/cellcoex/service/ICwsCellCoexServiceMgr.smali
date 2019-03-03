.class public interface abstract Lcom/intel/internal/cellcoex/service/ICwsCellCoexServiceMgr;
.super Ljava/lang/Object;
.source "ICwsCellCoexServiceMgr.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/intel/internal/cellcoex/service/ICwsCellCoexServiceMgr$Stub;
    }
.end annotation


# virtual methods
.method public abstract getLastError()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
