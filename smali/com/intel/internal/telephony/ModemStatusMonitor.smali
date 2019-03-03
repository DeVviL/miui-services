.class public interface abstract Lcom/intel/internal/telephony/ModemStatusMonitor;
.super Ljava/lang/Object;
.source "ModemStatusMonitor.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# static fields
.field public static final MSG_ERROR:I = 0x1

.field public static final MSG_STATUS:I = 0x2


# virtual methods
.method public abstract acquireModem()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/intel/internal/telephony/ModemClientException;
        }
    .end annotation
.end method

.method public abstract connect(Ljava/lang/String;I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/intel/internal/telephony/ModemClientException;
        }
    .end annotation
.end method

.method public abstract disconnect()V
.end method

.method public abstract handleMessage(Landroid/os/Message;)Z
.end method

.method public abstract releaseModem()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/intel/internal/telephony/ModemClientException;
        }
    .end annotation
.end method

.method public abstract resetModem([Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/intel/internal/telephony/ModemClientException;
        }
    .end annotation
.end method

.method public abstract shutdownModem()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/intel/internal/telephony/ModemClientException;
        }
    .end annotation
.end method

.method public abstract subscribeToEvent(Lcom/intel/internal/telephony/ModemStatus;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/intel/internal/telephony/ModemClientException;
        }
    .end annotation
.end method

.method public abstract updateModem([Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/intel/internal/telephony/ModemClientException;
        }
    .end annotation
.end method

.method public abstract waitForModemStatus(Lcom/intel/internal/telephony/ModemStatus;J)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/intel/internal/telephony/ModemClientException;
        }
    .end annotation
.end method
