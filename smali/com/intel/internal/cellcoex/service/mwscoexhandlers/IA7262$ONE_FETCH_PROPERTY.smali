.class final enum Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$ONE_FETCH_PROPERTY;
.super Ljava/lang/Enum;
.source "IA7262.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "ONE_FETCH_PROPERTY"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$ONE_FETCH_PROPERTY;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$ONE_FETCH_PROPERTY;

.field public static final enum BTCOEX_IDC_PARAM:Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$ONE_FETCH_PROPERTY;

.field public static final enum COEX_IDC_RT_PARAMS:Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$ONE_FETCH_PROPERTY;

.field public static final enum SAFETX_POWER_DEC_TABLE:Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$ONE_FETCH_PROPERTY;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$ONE_FETCH_PROPERTY;

    const-string v1, "SAFETX_POWER_DEC_TABLE"

    invoke-direct {v0, v1, v2}, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$ONE_FETCH_PROPERTY;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$ONE_FETCH_PROPERTY;->SAFETX_POWER_DEC_TABLE:Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$ONE_FETCH_PROPERTY;

    new-instance v0, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$ONE_FETCH_PROPERTY;

    const-string v1, "BTCOEX_IDC_PARAM"

    invoke-direct {v0, v1, v3}, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$ONE_FETCH_PROPERTY;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$ONE_FETCH_PROPERTY;->BTCOEX_IDC_PARAM:Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$ONE_FETCH_PROPERTY;

    new-instance v0, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$ONE_FETCH_PROPERTY;

    const-string v1, "COEX_IDC_RT_PARAMS"

    invoke-direct {v0, v1, v4}, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$ONE_FETCH_PROPERTY;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$ONE_FETCH_PROPERTY;->COEX_IDC_RT_PARAMS:Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$ONE_FETCH_PROPERTY;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$ONE_FETCH_PROPERTY;

    sget-object v1, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$ONE_FETCH_PROPERTY;->SAFETX_POWER_DEC_TABLE:Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$ONE_FETCH_PROPERTY;

    aput-object v1, v0, v2

    sget-object v1, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$ONE_FETCH_PROPERTY;->BTCOEX_IDC_PARAM:Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$ONE_FETCH_PROPERTY;

    aput-object v1, v0, v3

    sget-object v1, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$ONE_FETCH_PROPERTY;->COEX_IDC_RT_PARAMS:Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$ONE_FETCH_PROPERTY;

    aput-object v1, v0, v4

    sput-object v0, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$ONE_FETCH_PROPERTY;->$VALUES:[Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$ONE_FETCH_PROPERTY;

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

.method public static valueOf(Ljava/lang/String;)Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$ONE_FETCH_PROPERTY;
    .locals 1

    const-class v0, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$ONE_FETCH_PROPERTY;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$ONE_FETCH_PROPERTY;

    return-object v0
.end method

.method public static values()[Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$ONE_FETCH_PROPERTY;
    .locals 1

    sget-object v0, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$ONE_FETCH_PROPERTY;->$VALUES:[Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$ONE_FETCH_PROPERTY;

    invoke-virtual {v0}, [Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$ONE_FETCH_PROPERTY;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$ONE_FETCH_PROPERTY;

    return-object v0
.end method
