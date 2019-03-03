.class public Lcom/intel/internal/cellcoex/service/CellCoexException;
.super Ljava/lang/RuntimeException;
.source "CellCoexException.java"


# static fields
.field public static final CAUSE_UNKNOWN:I


# instance fields
.field private mCellCoex:I


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 26
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 23
    const/4 v0, 0x0

    iput v0, p0, Lcom/intel/internal/cellcoex/service/CellCoexException;->mCellCoex:I

    .line 27
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "cause"    # I

    .prologue
    .line 30
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 23
    const/4 v0, 0x0

    iput v0, p0, Lcom/intel/internal/cellcoex/service/CellCoexException;->mCellCoex:I

    .line 31
    iput p2, p0, Lcom/intel/internal/cellcoex/service/CellCoexException;->mCellCoex:I

    .line 32
    return-void
.end method


# virtual methods
.method public getCsmCause()I
    .locals 1

    .prologue
    .line 35
    iget v0, p0, Lcom/intel/internal/cellcoex/service/CellCoexException;->mCellCoex:I

    return v0
.end method
