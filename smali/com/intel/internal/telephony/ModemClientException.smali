.class public Lcom/intel/internal/telephony/ModemClientException;
.super Ljava/lang/Exception;
.source "ModemClientException.java"


# static fields
.field private static final serialVersionUID:J = 0x6e400958e185be6eL


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/intel/internal/telephony/ModemClientException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
