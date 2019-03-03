.class public interface abstract Lcom/intel/internal/telephony/OemTelephony/IMultimediaCallListener;
.super Ljava/lang/Object;
.source "IMultimediaCallListener.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/intel/internal/telephony/OemTelephony/IMultimediaCallListener$Stub;
    }
.end annotation


# virtual methods
.method public abstract onCallStatusInd(Lcom/intel/internal/telephony/OemTelephony/MultimediaCallStatus;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onDomainServiceType(Lcom/intel/internal/telephony/OemTelephony/MultimediaCallDomainService;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onMultimediaCallUpdateRsp(II)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
