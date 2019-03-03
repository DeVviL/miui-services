.class public final enum Lcom/intel/internal/cellcoex/service/props/MwsState$State;
.super Ljava/lang/Enum;
.source "MwsState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/intel/internal/cellcoex/service/props/MwsState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/intel/internal/cellcoex/service/props/MwsState$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/intel/internal/cellcoex/service/props/MwsState$State;

.field public static final enum RADIO_OFF:Lcom/intel/internal/cellcoex/service/props/MwsState$State;

.field public static final enum RADIO_ON:Lcom/intel/internal/cellcoex/service/props/MwsState$State;

.field public static final enum UNKNOWN:Lcom/intel/internal/cellcoex/service/props/MwsState$State;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 24
    new-instance v0, Lcom/intel/internal/cellcoex/service/props/MwsState$State;

    const-string v1, "UNKNOWN"

    invoke-direct {v0, v1, v2}, Lcom/intel/internal/cellcoex/service/props/MwsState$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/intel/internal/cellcoex/service/props/MwsState$State;->UNKNOWN:Lcom/intel/internal/cellcoex/service/props/MwsState$State;

    new-instance v0, Lcom/intel/internal/cellcoex/service/props/MwsState$State;

    const-string v1, "RADIO_OFF"

    invoke-direct {v0, v1, v3}, Lcom/intel/internal/cellcoex/service/props/MwsState$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/intel/internal/cellcoex/service/props/MwsState$State;->RADIO_OFF:Lcom/intel/internal/cellcoex/service/props/MwsState$State;

    new-instance v0, Lcom/intel/internal/cellcoex/service/props/MwsState$State;

    const-string v1, "RADIO_ON"

    invoke-direct {v0, v1, v4}, Lcom/intel/internal/cellcoex/service/props/MwsState$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/intel/internal/cellcoex/service/props/MwsState$State;->RADIO_ON:Lcom/intel/internal/cellcoex/service/props/MwsState$State;

    .line 23
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/intel/internal/cellcoex/service/props/MwsState$State;

    sget-object v1, Lcom/intel/internal/cellcoex/service/props/MwsState$State;->UNKNOWN:Lcom/intel/internal/cellcoex/service/props/MwsState$State;

    aput-object v1, v0, v2

    sget-object v1, Lcom/intel/internal/cellcoex/service/props/MwsState$State;->RADIO_OFF:Lcom/intel/internal/cellcoex/service/props/MwsState$State;

    aput-object v1, v0, v3

    sget-object v1, Lcom/intel/internal/cellcoex/service/props/MwsState$State;->RADIO_ON:Lcom/intel/internal/cellcoex/service/props/MwsState$State;

    aput-object v1, v0, v4

    sput-object v0, Lcom/intel/internal/cellcoex/service/props/MwsState$State;->$VALUES:[Lcom/intel/internal/cellcoex/service/props/MwsState$State;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 23
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/intel/internal/cellcoex/service/props/MwsState$State;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 23
    const-class v0, Lcom/intel/internal/cellcoex/service/props/MwsState$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/intel/internal/cellcoex/service/props/MwsState$State;

    return-object v0
.end method

.method public static values()[Lcom/intel/internal/cellcoex/service/props/MwsState$State;
    .locals 1

    .prologue
    .line 23
    sget-object v0, Lcom/intel/internal/cellcoex/service/props/MwsState$State;->$VALUES:[Lcom/intel/internal/cellcoex/service/props/MwsState$State;

    invoke-virtual {v0}, [Lcom/intel/internal/cellcoex/service/props/MwsState$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/intel/internal/cellcoex/service/props/MwsState$State;

    return-object v0
.end method
