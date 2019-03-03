.class public Lcom/intel/cws/cwsservicemanager/CsmException;
.super Ljava/lang/RuntimeException;
.source "CsmException.java"


# static fields
.field public static final CAUSE_EMPTY_ADDRESS:I = 0x6

.field public static final CAUSE_EMPTY_CONTENT:I = 0x7

.field public static final CAUSE_EMPTY_FILE:I = 0x5

.field public static final CAUSE_MODEM_DEAD:I = 0x2

.field public static final CAUSE_MODEM_LOCK_FAILURE:I = 0x3

.field public static final CAUSE_NO_MODEM:I = 0x1

.field public static final CAUSE_NULL_CSM:I = 0x8

.field public static final CAUSE_UNKNOWN:I = 0x0

.field public static final CAUSE_UNSUPPORTED_VALUE:I = 0x4


# instance fields
.field private mCsmCause:I


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/intel/cws/cwsservicemanager/CsmException;->mCsmCause:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/intel/cws/cwsservicemanager/CsmException;->mCsmCause:I

    iput p2, p0, Lcom/intel/cws/cwsservicemanager/CsmException;->mCsmCause:I

    return-void
.end method


# virtual methods
.method public getCsmCause()I
    .locals 1

    iget v0, p0, Lcom/intel/cws/cwsservicemanager/CsmException;->mCsmCause:I

    return v0
.end method
