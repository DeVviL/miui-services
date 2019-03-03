.class public final enum Lcom/intel/internal/cellcoex/service/props/MwsLteRegStatus$LteStatus;
.super Ljava/lang/Enum;
.source "MwsLteRegStatus.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/intel/internal/cellcoex/service/props/MwsLteRegStatus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "LteStatus"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/intel/internal/cellcoex/service/props/MwsLteRegStatus$LteStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/intel/internal/cellcoex/service/props/MwsLteRegStatus$LteStatus;

.field public static final enum NOT_REGISTERED:Lcom/intel/internal/cellcoex/service/props/MwsLteRegStatus$LteStatus;

.field public static final enum REGISTERED:Lcom/intel/internal/cellcoex/service/props/MwsLteRegStatus$LteStatus;

.field public static final enum RF_OFF:Lcom/intel/internal/cellcoex/service/props/MwsLteRegStatus$LteStatus;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/intel/internal/cellcoex/service/props/MwsLteRegStatus$LteStatus;

    const-string v1, "RF_OFF"

    invoke-direct {v0, v1, v2}, Lcom/intel/internal/cellcoex/service/props/MwsLteRegStatus$LteStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/intel/internal/cellcoex/service/props/MwsLteRegStatus$LteStatus;->RF_OFF:Lcom/intel/internal/cellcoex/service/props/MwsLteRegStatus$LteStatus;

    new-instance v0, Lcom/intel/internal/cellcoex/service/props/MwsLteRegStatus$LteStatus;

    const-string v1, "NOT_REGISTERED"

    invoke-direct {v0, v1, v3}, Lcom/intel/internal/cellcoex/service/props/MwsLteRegStatus$LteStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/intel/internal/cellcoex/service/props/MwsLteRegStatus$LteStatus;->NOT_REGISTERED:Lcom/intel/internal/cellcoex/service/props/MwsLteRegStatus$LteStatus;

    new-instance v0, Lcom/intel/internal/cellcoex/service/props/MwsLteRegStatus$LteStatus;

    const-string v1, "REGISTERED"

    invoke-direct {v0, v1, v4}, Lcom/intel/internal/cellcoex/service/props/MwsLteRegStatus$LteStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/intel/internal/cellcoex/service/props/MwsLteRegStatus$LteStatus;->REGISTERED:Lcom/intel/internal/cellcoex/service/props/MwsLteRegStatus$LteStatus;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/intel/internal/cellcoex/service/props/MwsLteRegStatus$LteStatus;

    sget-object v1, Lcom/intel/internal/cellcoex/service/props/MwsLteRegStatus$LteStatus;->RF_OFF:Lcom/intel/internal/cellcoex/service/props/MwsLteRegStatus$LteStatus;

    aput-object v1, v0, v2

    sget-object v1, Lcom/intel/internal/cellcoex/service/props/MwsLteRegStatus$LteStatus;->NOT_REGISTERED:Lcom/intel/internal/cellcoex/service/props/MwsLteRegStatus$LteStatus;

    aput-object v1, v0, v3

    sget-object v1, Lcom/intel/internal/cellcoex/service/props/MwsLteRegStatus$LteStatus;->REGISTERED:Lcom/intel/internal/cellcoex/service/props/MwsLteRegStatus$LteStatus;

    aput-object v1, v0, v4

    sput-object v0, Lcom/intel/internal/cellcoex/service/props/MwsLteRegStatus$LteStatus;->$VALUES:[Lcom/intel/internal/cellcoex/service/props/MwsLteRegStatus$LteStatus;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/intel/internal/cellcoex/service/props/MwsLteRegStatus$LteStatus;
    .locals 1

    const-class v0, Lcom/intel/internal/cellcoex/service/props/MwsLteRegStatus$LteStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/intel/internal/cellcoex/service/props/MwsLteRegStatus$LteStatus;

    return-object v0
.end method

.method public static values()[Lcom/intel/internal/cellcoex/service/props/MwsLteRegStatus$LteStatus;
    .locals 1

    sget-object v0, Lcom/intel/internal/cellcoex/service/props/MwsLteRegStatus$LteStatus;->$VALUES:[Lcom/intel/internal/cellcoex/service/props/MwsLteRegStatus$LteStatus;

    invoke-virtual {v0}, [Lcom/intel/internal/cellcoex/service/props/MwsLteRegStatus$LteStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/intel/internal/cellcoex/service/props/MwsLteRegStatus$LteStatus;

    return-object v0
.end method
