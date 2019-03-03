.class public final enum Lcom/intel/internal/cellcoex/service/props/MwsState$SubState;
.super Ljava/lang/Enum;
.source "MwsState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/intel/internal/cellcoex/service/props/MwsState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SubState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/intel/internal/cellcoex/service/props/MwsState$SubState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/intel/internal/cellcoex/service/props/MwsState$SubState;

.field public static final enum NA:Lcom/intel/internal/cellcoex/service/props/MwsState$SubState;

.field public static final enum REGISTERED_AGRESSIVE:Lcom/intel/internal/cellcoex/service/props/MwsState$SubState;

.field public static final enum REGISTERED_NOT_AGRESSIVE:Lcom/intel/internal/cellcoex/service/props/MwsState$SubState;

.field public static final enum UNREGISTERED:Lcom/intel/internal/cellcoex/service/props/MwsState$SubState;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/intel/internal/cellcoex/service/props/MwsState$SubState;

    const-string v1, "NA"

    invoke-direct {v0, v1, v2}, Lcom/intel/internal/cellcoex/service/props/MwsState$SubState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/intel/internal/cellcoex/service/props/MwsState$SubState;->NA:Lcom/intel/internal/cellcoex/service/props/MwsState$SubState;

    new-instance v0, Lcom/intel/internal/cellcoex/service/props/MwsState$SubState;

    const-string v1, "UNREGISTERED"

    invoke-direct {v0, v1, v3}, Lcom/intel/internal/cellcoex/service/props/MwsState$SubState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/intel/internal/cellcoex/service/props/MwsState$SubState;->UNREGISTERED:Lcom/intel/internal/cellcoex/service/props/MwsState$SubState;

    new-instance v0, Lcom/intel/internal/cellcoex/service/props/MwsState$SubState;

    const-string v1, "REGISTERED_NOT_AGRESSIVE"

    invoke-direct {v0, v1, v4}, Lcom/intel/internal/cellcoex/service/props/MwsState$SubState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/intel/internal/cellcoex/service/props/MwsState$SubState;->REGISTERED_NOT_AGRESSIVE:Lcom/intel/internal/cellcoex/service/props/MwsState$SubState;

    new-instance v0, Lcom/intel/internal/cellcoex/service/props/MwsState$SubState;

    const-string v1, "REGISTERED_AGRESSIVE"

    invoke-direct {v0, v1, v5}, Lcom/intel/internal/cellcoex/service/props/MwsState$SubState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/intel/internal/cellcoex/service/props/MwsState$SubState;->REGISTERED_AGRESSIVE:Lcom/intel/internal/cellcoex/service/props/MwsState$SubState;

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/intel/internal/cellcoex/service/props/MwsState$SubState;

    sget-object v1, Lcom/intel/internal/cellcoex/service/props/MwsState$SubState;->NA:Lcom/intel/internal/cellcoex/service/props/MwsState$SubState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/intel/internal/cellcoex/service/props/MwsState$SubState;->UNREGISTERED:Lcom/intel/internal/cellcoex/service/props/MwsState$SubState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/intel/internal/cellcoex/service/props/MwsState$SubState;->REGISTERED_NOT_AGRESSIVE:Lcom/intel/internal/cellcoex/service/props/MwsState$SubState;

    aput-object v1, v0, v4

    sget-object v1, Lcom/intel/internal/cellcoex/service/props/MwsState$SubState;->REGISTERED_AGRESSIVE:Lcom/intel/internal/cellcoex/service/props/MwsState$SubState;

    aput-object v1, v0, v5

    sput-object v0, Lcom/intel/internal/cellcoex/service/props/MwsState$SubState;->$VALUES:[Lcom/intel/internal/cellcoex/service/props/MwsState$SubState;

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

.method public static valueOf(Ljava/lang/String;)Lcom/intel/internal/cellcoex/service/props/MwsState$SubState;
    .locals 1

    const-class v0, Lcom/intel/internal/cellcoex/service/props/MwsState$SubState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/intel/internal/cellcoex/service/props/MwsState$SubState;

    return-object v0
.end method

.method public static values()[Lcom/intel/internal/cellcoex/service/props/MwsState$SubState;
    .locals 1

    sget-object v0, Lcom/intel/internal/cellcoex/service/props/MwsState$SubState;->$VALUES:[Lcom/intel/internal/cellcoex/service/props/MwsState$SubState;

    invoke-virtual {v0}, [Lcom/intel/internal/cellcoex/service/props/MwsState$SubState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/intel/internal/cellcoex/service/props/MwsState$SubState;

    return-object v0
.end method
