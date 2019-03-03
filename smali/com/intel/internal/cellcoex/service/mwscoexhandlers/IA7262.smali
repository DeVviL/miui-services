.class public Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262;
.super Ljava/lang/Object;
.source "IA7262.java"

# interfaces
.implements Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IMwsCoexHandler;
.implements Lcom/intel/internal/cellcoex/service/props/ICoexPropNode;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$1;,
        Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM;,
        Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$ONE_FETCH_PROPERTY;
    }
.end annotation


# static fields
.field private static final COEX_HANDLER_NAME:Ljava/lang/String; = "IA7262"

.field private static final DEBUG:Z

.field private static final IA7262_MATCHING_REGEXP:Ljava/lang/String; = "IA([0-9]*)_XMM([0-9]*)_V([0-9])_REV_([0-9]\\.[0-9])_FLASHLESS_([0-9]*)\\.([0-9][0-9])([0-9][0-9])\\.([0-9]*)"

.field private static final TAG:Ljava/lang/String; = "CWS_CELLCOEX_MGR"

.field private static final UNKNOWN:I = -0x1

.field private static final VERSION_POS_MODEL:I = 0x1

.field private static final VERSION_POS_REVBUILDDAY:I = 0x8

.field private static final VERSION_POS_REVBUILDWEEK:I = 0x7

.field private static final VERSION_POS_REVBUILDYEAR:I = 0x6

.field private static final VERSION_POS_REVMAJ:I = 0x5

.field private static sContext:Landroid/content/Context;


# instance fields
.field private final mClassName:Ljava/lang/String;

.field private mIA7262STM:Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM;

.field private mICoexPropMgr:Lcom/intel/internal/cellcoex/service/props/ICoexPropMgr;

.field private mMwsBtCoexIdcParamsIsSet:Z

.field private mMwsCoexIdcRtParamsIsSet:Z

.field private mMwsSafeTxPowerDecodingTablesIsSet:Z

.field private mOemPhoneService:Lcom/intel/internal/telephony/OemTelephony/IOemTelephony;

.field private mRevBuildDay:Ljava/lang/String;

.field private mRevBuildWeek:Ljava/lang/String;

.field private mRevBuildYear:Ljava/lang/String;

.field private mRevMajor:Ljava/lang/String;

.field private mRevModel:Ljava/lang/String;

.field private mSubscriptionId:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "CWS_CELLCOEX_MGR"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262;->DEBUG:Z

    const/4 v0, 0x0

    sput-object v0, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262;->sContext:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;JLjava/lang/String;)V
    .locals 8

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262;->mClassName:Ljava/lang/String;

    iput-object v5, p0, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262;->mICoexPropMgr:Lcom/intel/internal/cellcoex/service/props/ICoexPropMgr;

    iput-object v5, p0, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262;->mOemPhoneService:Lcom/intel/internal/telephony/OemTelephony/IOemTelephony;

    const-wide/16 v4, -0x2

    iput-wide v4, p0, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262;->mSubscriptionId:J

    iput-boolean v6, p0, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262;->mMwsSafeTxPowerDecodingTablesIsSet:Z

    iput-boolean v6, p0, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262;->mMwsBtCoexIdcParamsIsSet:Z

    iput-boolean v6, p0, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262;->mMwsCoexIdcRtParamsIsSet:Z

    sput-object p1, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262;->sContext:Landroid/content/Context;

    iput-wide p2, p0, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262;->mSubscriptionId:J

    :try_start_0
    const-string v3, "IA([0-9]*)_XMM([0-9]*)_V([0-9])_REV_([0-9]\\.[0-9])_FLASHLESS_([0-9]*)\\.([0-9][0-9])([0-9][0-9])\\.([0-9]*)"

    invoke-static {v3}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z
    :try_end_0
    .catch Ljava/util/regex/PatternSyntaxException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    :try_start_1
    invoke-virtual {v0, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262;->mRevModel:Ljava/lang/String;

    const/4 v3, 0x5

    invoke-virtual {v0, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262;->mRevMajor:Ljava/lang/String;

    const/4 v3, 0x6

    invoke-virtual {v0, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262;->mRevBuildYear:Ljava/lang/String;

    const/4 v3, 0x7

    invoke-virtual {v0, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262;->mRevBuildWeek:Ljava/lang/String;

    const/16 v3, 0x8

    invoke-virtual {v0, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262;->mRevBuildDay:Ljava/lang/String;

    const-string v3, "CWS_CELLCOEX_MGR"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "IA7262(): Base band model "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262;->mRevModel:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " Base band fw major: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262;->mRevMajor:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " Base band fw build year: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262;->mRevBuildYear:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " Base band fw build week: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262;->mRevBuildWeek:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " Base band fw minor: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262;->mRevBuildDay:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/util/regex/PatternSyntaxException; {:try_start_1 .. :try_end_1} :catch_1

    :cond_0
    :goto_0
    const-string v3, "oemtelephony"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/intel/internal/telephony/OemTelephony/IOemTelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/intel/internal/telephony/OemTelephony/IOemTelephony;

    move-result-object v3

    iput-object v3, p0, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262;->mOemPhoneService:Lcom/intel/internal/telephony/OemTelephony/IOemTelephony;

    iget-object v3, p0, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262;->mOemPhoneService:Lcom/intel/internal/telephony/OemTelephony/IOemTelephony;

    if-nez v3, :cond_1

    const-string v3, "CWS_CELLCOEX_MGR"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "/!\\ FATAL ERROR /!\\ "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262;->mClassName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "unable to get IOemTelephony on service oemtelephony"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v3, Lcom/intel/internal/cellcoex/service/CellCoexException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262;->mClassName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "unable to get IOemTelephony on service oemtelephony"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/intel/internal/cellcoex/service/CellCoexException;-><init>(Ljava/lang/String;)V

    throw v3

    :catch_0
    move-exception v1

    :try_start_2
    const-string v3, "CWS_CELLCOEX_MGR"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error while extrqcting IA7262 regexp groups! "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/IllegalStateException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/util/regex/PatternSyntaxException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_1
    move-exception v1

    const-string v3, "CWS_CELLCOEX_MGR"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error while compiling IA7262 regexp! "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/util/regex/PatternSyntaxException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_1
    return-void
.end method

.method static synthetic access$000(Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262;)Lcom/intel/internal/cellcoex/service/props/ICoexPropMgr;
    .locals 1

    iget-object v0, p0, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262;->mICoexPropMgr:Lcom/intel/internal/cellcoex/service/props/ICoexPropMgr;

    return-object v0
.end method

.method static synthetic access$100()Z
    .locals 1

    sget-boolean v0, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262;->DEBUG:Z

    return v0
.end method

.method static synthetic access$1500()Landroid/content/Context;
    .locals 1

    sget-object v0, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262;->sContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262;)J
    .locals 2

    iget-wide v0, p0, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262;->mSubscriptionId:J

    return-wide v0
.end method

.method static synthetic access$400(Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262;)Lcom/intel/internal/telephony/OemTelephony/IOemTelephony;
    .locals 1

    iget-object v0, p0, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262;->mOemPhoneService:Lcom/intel/internal/telephony/OemTelephony/IOemTelephony;

    return-object v0
.end method

.method static synthetic access$500(Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262;Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$ONE_FETCH_PROPERTY;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262;->fetchPropValueIfRequired(Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$ONE_FETCH_PROPERTY;)V

    return-void
.end method

.method public static final canHandle(Ljava/lang/String;)Z
    .locals 12

    const/4 v4, 0x0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_1

    :cond_0
    const-string v9, "CWS_CELLCOEX_MGR"

    const-string v10, "IA7262 is probed for a null or empty base band revision handling!"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v9, 0x0

    :goto_0
    return v9

    :cond_1
    sget-boolean v9, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262;->DEBUG:Z

    if-eqz v9, :cond_2

    const-string v9, "CWS_CELLCOEX_MGR"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "IA7262.canHandle("

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ")"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :try_start_0
    const-string v9, "IA([0-9]*)_XMM([0-9]*)_V([0-9])_REV_([0-9]\\.[0-9])_FLASHLESS_([0-9]*)\\.([0-9][0-9])([0-9][0-9])\\.([0-9]*)"

    invoke-static {v9}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z
    :try_end_0
    .catch Ljava/util/regex/PatternSyntaxException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v9

    if-eqz v9, :cond_3

    const/4 v9, 0x1

    :try_start_1
    invoke-virtual {v0, v9}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    const/4 v9, 0x5

    invoke-virtual {v0, v9}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x6

    invoke-virtual {v0, v9}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v7

    const/4 v9, 0x7

    invoke-virtual {v0, v9}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v6

    const/16 v9, 0x8

    invoke-virtual {v0, v9}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    const-string v9, "CWS_CELLCOEX_MGR"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "IA7262.canHandle(): Base band model "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " Base band fw major: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " Base band fw build year: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " Base band fw build week: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " Base band fw minor: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/util/regex/PatternSyntaxException; {:try_start_1 .. :try_end_1} :catch_1

    const/4 v4, 0x1

    :cond_3
    :goto_1
    move v9, v4

    goto/16 :goto_0

    :catch_0
    move-exception v1

    :try_start_2
    const-string v9, "CWS_CELLCOEX_MGR"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Error while extracting IA7262 regexp groups! "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v1}, Ljava/lang/IllegalStateException;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/util/regex/PatternSyntaxException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :catch_1
    move-exception v1

    const-string v9, "CWS_CELLCOEX_MGR"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Error while compiling IA7262 regexp! "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v1}, Ljava/util/regex/PatternSyntaxException;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private fetchPropValueIfRequired(Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$ONE_FETCH_PROPERTY;)V
    .locals 11

    const/4 v10, 0x1

    sget-object v7, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$1;->$SwitchMap$com$intel$internal$cellcoex$service$mwscoexhandlers$IA7262$ONE_FETCH_PROPERTY:[I

    invoke-virtual {p1}, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$ONE_FETCH_PROPERTY;->ordinal()I

    move-result v8

    aget v7, v7, v8

    packed-switch v7, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget-object v7, p0, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262;->mICoexPropMgr:Lcom/intel/internal/cellcoex/service/props/ICoexPropMgr;

    const-string v8, "mws.safe_tx_power_decoding_tables"

    invoke-interface {v7, v8}, Lcom/intel/internal/cellcoex/service/props/ICoexPropMgr;->isPropRequired(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    iget-boolean v7, p0, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262;->mMwsSafeTxPowerDecodingTablesIsSet:Z

    if-nez v7, :cond_0

    const/4 v5, 0x0

    :try_start_0
    iget-object v7, p0, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262;->mOemPhoneService:Lcom/intel/internal/telephony/OemTelephony/IOemTelephony;

    iget-wide v8, p0, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262;->mSubscriptionId:J

    invoke-interface {v7, v8, v9}, Lcom/intel/internal/telephony/OemTelephony/IOemTelephony;->getSafeTxPowerDecodingTable(J)Lcom/intel/internal/telephony/OemTelephony/SafeTxPowerTables;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    :goto_1
    if-nez v5, :cond_1

    const-string v7, "CWS_CELLCOEX_MGR"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, p0, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262;->mClassName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "getSafeTxPowerDecodingTable failed"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_0
    move-exception v6

    const-string v7, "CWS_CELLCOEX_MGR"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, p0, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262;->mClassName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "Exception in getSafeTxPowerDecodingTable: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v6}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_1
    iget v7, v5, Lcom/intel/internal/telephony/OemTelephony/SafeTxPowerTables;->mResult:I

    if-ne v7, v10, :cond_0

    new-instance v4, Lcom/intel/internal/cellcoex/service/props/MwsSafeTxPowerDecodingTables;

    iget-object v7, v5, Lcom/intel/internal/telephony/OemTelephony/SafeTxPowerTables;->mSafeWlanTxPowerDecodingTable:[I

    iget-object v8, v5, Lcom/intel/internal/telephony/OemTelephony/SafeTxPowerTables;->mSafeBtTxPowerDecodingTable:[I

    invoke-direct {v4, v7, v8}, Lcom/intel/internal/cellcoex/service/props/MwsSafeTxPowerDecodingTables;-><init>([I[I)V

    iget-object v7, p0, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262;->mICoexPropMgr:Lcom/intel/internal/cellcoex/service/props/ICoexPropMgr;

    const-string v8, "mws.safe_tx_power_decoding_tables"

    invoke-interface {v7, v8, v4}, Lcom/intel/internal/cellcoex/service/props/ICoexPropMgr;->setProp(Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    const-string v7, "CWS_CELLCOEX_MGR"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, p0, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262;->mClassName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "failed to set "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "mws.safe_tx_power_decoding_tables"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_2
    iput-boolean v10, p0, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262;->mMwsSafeTxPowerDecodingTablesIsSet:Z

    sget-boolean v7, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262;->DEBUG:Z

    if-eqz v7, :cond_0

    const-string v7, "CWS_CELLCOEX_MGR"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, p0, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262;->mClassName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "MwsSafeTxPowerDecodingTables: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v4}, Lcom/intel/internal/cellcoex/service/props/MwsSafeTxPowerDecodingTables;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :pswitch_1
    iget-object v7, p0, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262;->mICoexPropMgr:Lcom/intel/internal/cellcoex/service/props/ICoexPropMgr;

    const-string v8, "mws.bt.coexidcparams"

    invoke-interface {v7, v8}, Lcom/intel/internal/cellcoex/service/props/ICoexPropMgr;->isPropRequired(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    iget-boolean v7, p0, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262;->mMwsBtCoexIdcParamsIsSet:Z

    if-nez v7, :cond_0

    const/4 v0, 0x0

    :try_start_1
    iget-object v7, p0, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262;->mOemPhoneService:Lcom/intel/internal/telephony/OemTelephony/IOemTelephony;

    iget-wide v8, p0, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262;->mSubscriptionId:J

    invoke-interface {v7, v8, v9}, Lcom/intel/internal/telephony/OemTelephony/IOemTelephony;->getCoexIdcBtParams(J)Lcom/intel/internal/telephony/OemTelephony/CoexIdcBtParams;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    :goto_2
    if-nez v0, :cond_3

    const-string v7, "CWS_CELLCOEX_MGR"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, p0, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262;->mClassName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "getCoexIdcBtParams failed"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :catch_1
    move-exception v6

    const-string v7, "CWS_CELLCOEX_MGR"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, p0, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262;->mClassName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "Exception in getCoexIdcBtParams: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v6}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_3
    iget v7, v0, Lcom/intel/internal/telephony/OemTelephony/CoexIdcBtParams;->mResult:I

    if-ne v7, v10, :cond_0

    new-instance v2, Lcom/intel/internal/cellcoex/service/props/MwsBtCoexIdcParams;

    iget v7, v0, Lcom/intel/internal/telephony/OemTelephony/CoexIdcBtParams;->mBtNoiseFigure:I

    invoke-direct {v2, v7}, Lcom/intel/internal/cellcoex/service/props/MwsBtCoexIdcParams;-><init>(I)V

    iget-object v7, p0, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262;->mICoexPropMgr:Lcom/intel/internal/cellcoex/service/props/ICoexPropMgr;

    const-string v8, "mws.bt.coexidcparams"

    invoke-interface {v7, v8, v2}, Lcom/intel/internal/cellcoex/service/props/ICoexPropMgr;->setProp(Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_4

    const-string v7, "CWS_CELLCOEX_MGR"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, p0, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262;->mClassName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "failed to set "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "mws.bt.coexidcparams"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_4
    iput-boolean v10, p0, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262;->mMwsBtCoexIdcParamsIsSet:Z

    sget-boolean v7, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262;->DEBUG:Z

    if-eqz v7, :cond_0

    const-string v7, "CWS_CELLCOEX_MGR"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, p0, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262;->mClassName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "MwsBtCoexIdcParams: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v2}, Lcom/intel/internal/cellcoex/service/props/MwsBtCoexIdcParams;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :pswitch_2
    iget-object v7, p0, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262;->mICoexPropMgr:Lcom/intel/internal/cellcoex/service/props/ICoexPropMgr;

    const-string v8, "mws.idcRTparams"

    invoke-interface {v7, v8}, Lcom/intel/internal/cellcoex/service/props/ICoexPropMgr;->isPropRequired(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    iget-boolean v7, p0, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262;->mMwsCoexIdcRtParamsIsSet:Z

    if-nez v7, :cond_0

    const/4 v1, 0x0

    :try_start_2
    iget-object v7, p0, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262;->mOemPhoneService:Lcom/intel/internal/telephony/OemTelephony/IOemTelephony;

    iget-wide v8, p0, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262;->mSubscriptionId:J

    invoke-interface {v7, v8, v9}, Lcom/intel/internal/telephony/OemTelephony/IOemTelephony;->getCoexIdcRtParams(J)Lcom/intel/internal/telephony/OemTelephony/CoexIdcRtParams;
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v1

    :goto_3
    if-nez v1, :cond_5

    const-string v7, "CWS_CELLCOEX_MGR"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, p0, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262;->mClassName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "getCoexIdcRtParams failed"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :catch_2
    move-exception v6

    const-string v7, "CWS_CELLCOEX_MGR"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, p0, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262;->mClassName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "Exception in getCoexIdcRtParams: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v6}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :cond_5
    iget v7, v1, Lcom/intel/internal/telephony/OemTelephony/CoexIdcRtParams;->mResult:I

    if-ne v7, v10, :cond_0

    new-instance v3, Lcom/intel/internal/cellcoex/service/props/MwsCoexIdcRtParams;

    iget-byte v7, v1, Lcom/intel/internal/telephony/OemTelephony/CoexIdcRtParams;->mDlFrameSyncEn:B

    iget-byte v8, v1, Lcom/intel/internal/telephony/OemTelephony/CoexIdcRtParams;->mRxPriTmin:B

    iget v9, v1, Lcom/intel/internal/telephony/OemTelephony/CoexIdcRtParams;->mRxPriResendTime:I

    invoke-direct {v3, v7, v8, v9}, Lcom/intel/internal/cellcoex/service/props/MwsCoexIdcRtParams;-><init>(BBI)V

    iget-object v7, p0, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262;->mICoexPropMgr:Lcom/intel/internal/cellcoex/service/props/ICoexPropMgr;

    const-string v8, "mws.idcRTparams"

    invoke-interface {v7, v8, v3}, Lcom/intel/internal/cellcoex/service/props/ICoexPropMgr;->setProp(Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_6

    const-string v7, "CWS_CELLCOEX_MGR"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, p0, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262;->mClassName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "failed to set "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "mws.idcRTparams"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_6
    iput-boolean v10, p0, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262;->mMwsCoexIdcRtParamsIsSet:Z

    sget-boolean v7, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262;->DEBUG:Z

    if-eqz v7, :cond_0

    const-string v7, "CWS_CELLCOEX_MGR"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, p0, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262;->mClassName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "MwsCoexIdcRtParams: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v3}, Lcom/intel/internal/cellcoex/service/props/MwsCoexIdcRtParams;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public checkPropCatalog()Z
    .locals 7

    sget-boolean v4, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262;->DEBUG:Z

    if-eqz v4, :cond_0

    const-string v4, "CWS_CELLCOEX_MGR"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262;->mClassName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "checkPropCatalog()"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v3, 0x1

    iget-object v4, p0, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262;->mICoexPropMgr:Lcom/intel/internal/cellcoex/service/props/ICoexPropMgr;

    const-string v5, "mws.state"

    invoke-interface {v4, v5}, Lcom/intel/internal/cellcoex/service/props/ICoexPropMgr;->getProp(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/intel/internal/cellcoex/service/props/MwsState;

    if-nez v2, :cond_1

    const-string v4, "CWS_CELLCOEX_MGR"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262;->mClassName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "Can\'t find "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "mws.state"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x0

    :cond_1
    iget-object v4, p0, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262;->mICoexPropMgr:Lcom/intel/internal/cellcoex/service/props/ICoexPropMgr;

    const-string v5, "cws.wifi.state"

    invoke-interface {v4, v5}, Lcom/intel/internal/cellcoex/service/props/ICoexPropMgr;->getProp(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/intel/internal/cellcoex/service/props/WifiState;

    if-nez v1, :cond_2

    const-string v4, "CWS_CELLCOEX_MGR"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262;->mClassName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "Can\'t find "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "cws.wifi.state"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x0

    :cond_2
    iget-object v4, p0, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262;->mICoexPropMgr:Lcom/intel/internal/cellcoex/service/props/ICoexPropMgr;

    const-string v5, "cws.bt.state"

    invoke-interface {v4, v5}, Lcom/intel/internal/cellcoex/service/props/ICoexPropMgr;->getProp(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/intel/internal/cellcoex/service/props/BtState;

    if-nez v0, :cond_3

    const-string v4, "CWS_CELLCOEX_MGR"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262;->mClassName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "Can\'t find "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "cws.bt.state"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x0

    :cond_3
    return v3
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    const-string v0, "IA7262"

    return-object v0
.end method

.method public getProvidedPropList()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    sget-boolean v1, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "CWS_CELLCOEX_MGR"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262;->mClassName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "getProvidedPropList()"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "mws.lte_reg_status"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "mws.wlan.coexparams"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "mws.bt.coexparams"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "mws.sig_params"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "mws.lte_frame_ind"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "mws.radio_version"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "mws.lte_sps"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "mws.safe_tx_power_decoding_tables"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "mws.bt.coexidcparams"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "mws.lte_freq_ind"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "mws.idcRTparams"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public getRequiredPropList()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    sget-boolean v1, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "CWS_CELLCOEX_MGR"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262;->mClassName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "getRequiredPropList()"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "mws.state"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "cws.wifi.state"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "cws.bt.state"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public populatePropCatalog()Z
    .locals 8

    const/4 v0, 0x0

    sget-boolean v1, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "CWS_CELLCOEX_MGR"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262;->mClassName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "populatePropCatalog()"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v1, p0, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262;->mICoexPropMgr:Lcom/intel/internal/cellcoex/service/props/ICoexPropMgr;

    const-string v2, "mws.lte_reg_status"

    new-instance v3, Lcom/intel/internal/cellcoex/service/props/MwsLteRegStatus;

    invoke-direct {v3}, Lcom/intel/internal/cellcoex/service/props/MwsLteRegStatus;-><init>()V

    invoke-interface {v1, v2, v3}, Lcom/intel/internal/cellcoex/service/props/ICoexPropMgr;->addProp(Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "CWS_CELLCOEX_MGR"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262;->mClassName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "Cannot create property "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "mws.lte_reg_status"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262;->mICoexPropMgr:Lcom/intel/internal/cellcoex/service/props/ICoexPropMgr;

    const-string v2, "mws.wlan.coexparams"

    new-instance v3, Lcom/intel/internal/cellcoex/service/props/MwsWlanCoexParams;

    invoke-direct {v3}, Lcom/intel/internal/cellcoex/service/props/MwsWlanCoexParams;-><init>()V

    invoke-interface {v1, v2, v3}, Lcom/intel/internal/cellcoex/service/props/ICoexPropMgr;->addProp(Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "CWS_CELLCOEX_MGR"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262;->mClassName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "Cannot create property "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "mws.wlan.coexparams"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262;->mICoexPropMgr:Lcom/intel/internal/cellcoex/service/props/ICoexPropMgr;

    const-string v2, "mws.bt.coexparams"

    new-instance v3, Lcom/intel/internal/cellcoex/service/props/MwsBtCoexParams;

    invoke-direct {v3}, Lcom/intel/internal/cellcoex/service/props/MwsBtCoexParams;-><init>()V

    invoke-interface {v1, v2, v3}, Lcom/intel/internal/cellcoex/service/props/ICoexPropMgr;->addProp(Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "CWS_CELLCOEX_MGR"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262;->mClassName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "Cannot create property "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "mws.bt.coexparams"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262;->mICoexPropMgr:Lcom/intel/internal/cellcoex/service/props/ICoexPropMgr;

    const-string v2, "mws.sig_params"

    new-instance v3, Lcom/intel/internal/cellcoex/service/props/MwsSigParams;

    invoke-direct {v3}, Lcom/intel/internal/cellcoex/service/props/MwsSigParams;-><init>()V

    invoke-interface {v1, v2, v3}, Lcom/intel/internal/cellcoex/service/props/ICoexPropMgr;->addProp(Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "CWS_CELLCOEX_MGR"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262;->mClassName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "populatePropCatalog() - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "Error! Cannot create property "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "mws.sig_params"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_4
    iget-object v1, p0, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262;->mICoexPropMgr:Lcom/intel/internal/cellcoex/service/props/ICoexPropMgr;

    const-string v2, "mws.lte_frame_ind"

    new-instance v3, Lcom/intel/internal/cellcoex/service/props/MwsLteFrameInd;

    invoke-direct {v3}, Lcom/intel/internal/cellcoex/service/props/MwsLteFrameInd;-><init>()V

    invoke-interface {v1, v2, v3}, Lcom/intel/internal/cellcoex/service/props/ICoexPropMgr;->addProp(Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    const-string v1, "CWS_CELLCOEX_MGR"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262;->mClassName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "populatePropCatalog() - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "Error! Cannot create property "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "mws.lte_frame_ind"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_5
    iget-object v1, p0, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262;->mICoexPropMgr:Lcom/intel/internal/cellcoex/service/props/ICoexPropMgr;

    const-string v2, "mws.radio_version"

    new-instance v3, Lcom/intel/internal/cellcoex/service/props/MwsRadioVersion;

    iget-object v4, p0, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262;->mRevMajor:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iget-object v5, p0, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262;->mRevBuildYear:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    iget-object v6, p0, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262;->mRevBuildWeek:Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    iget-object v7, p0, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262;->mRevBuildDay:Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/intel/internal/cellcoex/service/props/MwsRadioVersion;-><init>(IIII)V

    invoke-interface {v1, v2, v3}, Lcom/intel/internal/cellcoex/service/props/ICoexPropMgr;->addProp(Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    const-string v1, "CWS_CELLCOEX_MGR"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262;->mClassName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "populatePropCatalog() - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "Error! Cannot create property "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "mws.radio_version"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_6
    iget-object v1, p0, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262;->mICoexPropMgr:Lcom/intel/internal/cellcoex/service/props/ICoexPropMgr;

    const-string v2, "mws.lte_sps"

    new-instance v3, Lcom/intel/internal/cellcoex/service/props/MwsLteSps;

    invoke-direct {v3}, Lcom/intel/internal/cellcoex/service/props/MwsLteSps;-><init>()V

    invoke-interface {v1, v2, v3}, Lcom/intel/internal/cellcoex/service/props/ICoexPropMgr;->addProp(Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    const-string v1, "CWS_CELLCOEX_MGR"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262;->mClassName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "populatePropCatalog() - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "Error! Cannot create property "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "mws.lte_sps"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_7
    iget-object v1, p0, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262;->mICoexPropMgr:Lcom/intel/internal/cellcoex/service/props/ICoexPropMgr;

    const-string v2, "mws.safe_tx_power_decoding_tables"

    invoke-interface {v1, v2}, Lcom/intel/internal/cellcoex/service/props/ICoexPropMgr;->isPropRequired(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262;->mICoexPropMgr:Lcom/intel/internal/cellcoex/service/props/ICoexPropMgr;

    const-string v2, "mws.safe_tx_power_decoding_tables"

    new-instance v3, Lcom/intel/internal/cellcoex/service/props/MwsSafeTxPowerDecodingTables;

    invoke-direct {v3}, Lcom/intel/internal/cellcoex/service/props/MwsSafeTxPowerDecodingTables;-><init>()V

    invoke-interface {v1, v2, v3}, Lcom/intel/internal/cellcoex/service/props/ICoexPropMgr;->addProp(Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    const-string v1, "CWS_CELLCOEX_MGR"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262;->mClassName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "populatePropCatalog() - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "Error! Cannot create property "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "mws.safe_tx_power_decoding_tables"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_8
    iget-object v1, p0, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262;->mICoexPropMgr:Lcom/intel/internal/cellcoex/service/props/ICoexPropMgr;

    const-string v2, "mws.bt.coexidcparams"

    invoke-interface {v1, v2}, Lcom/intel/internal/cellcoex/service/props/ICoexPropMgr;->isPropRequired(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262;->mICoexPropMgr:Lcom/intel/internal/cellcoex/service/props/ICoexPropMgr;

    const-string v2, "mws.bt.coexidcparams"

    new-instance v3, Lcom/intel/internal/cellcoex/service/props/MwsBtCoexIdcParams;

    invoke-direct {v3}, Lcom/intel/internal/cellcoex/service/props/MwsBtCoexIdcParams;-><init>()V

    invoke-interface {v1, v2, v3}, Lcom/intel/internal/cellcoex/service/props/ICoexPropMgr;->addProp(Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    const-string v1, "CWS_CELLCOEX_MGR"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262;->mClassName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "populatePropCatalog() - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "Error! Cannot create property "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "mws.bt.coexidcparams"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_9
    iget-object v1, p0, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262;->mICoexPropMgr:Lcom/intel/internal/cellcoex/service/props/ICoexPropMgr;

    const-string v2, "mws.lte_freq_ind"

    invoke-interface {v1, v2}, Lcom/intel/internal/cellcoex/service/props/ICoexPropMgr;->isPropRequired(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a

    iget-object v1, p0, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262;->mICoexPropMgr:Lcom/intel/internal/cellcoex/service/props/ICoexPropMgr;

    const-string v2, "mws.lte_freq_ind"

    new-instance v3, Lcom/intel/internal/cellcoex/service/props/MwsLteFreqInd;

    invoke-direct {v3}, Lcom/intel/internal/cellcoex/service/props/MwsLteFreqInd;-><init>()V

    invoke-interface {v1, v2, v3}, Lcom/intel/internal/cellcoex/service/props/ICoexPropMgr;->addProp(Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    const-string v1, "CWS_CELLCOEX_MGR"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262;->mClassName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "populatePropCatalog() - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "Error! Cannot create property "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "mws.lte_freq_ind"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_a
    iget-object v1, p0, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262;->mICoexPropMgr:Lcom/intel/internal/cellcoex/service/props/ICoexPropMgr;

    const-string v2, "mws.idcRTparams"

    invoke-interface {v1, v2}, Lcom/intel/internal/cellcoex/service/props/ICoexPropMgr;->isPropRequired(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_b

    iget-object v1, p0, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262;->mICoexPropMgr:Lcom/intel/internal/cellcoex/service/props/ICoexPropMgr;

    const-string v2, "mws.idcRTparams"

    new-instance v3, Lcom/intel/internal/cellcoex/service/props/MwsCoexIdcRtParams;

    invoke-direct {v3}, Lcom/intel/internal/cellcoex/service/props/MwsCoexIdcRtParams;-><init>()V

    invoke-interface {v1, v2, v3}, Lcom/intel/internal/cellcoex/service/props/ICoexPropMgr;->addProp(Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    const-string v1, "CWS_CELLCOEX_MGR"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262;->mClassName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "populatePropCatalog() - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "Error! Cannot create property "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "mws.idcRTparams"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_b
    const/4 v0, 0x1

    goto/16 :goto_0
.end method

.method public registerToPropertyBus(Lcom/intel/internal/cellcoex/service/props/ICoexPropMgr;)Z
    .locals 3

    sget-boolean v0, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "CWS_CELLCOEX_MGR"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262;->mClassName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "registerToPropertyBus()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iput-object p1, p0, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262;->mICoexPropMgr:Lcom/intel/internal/cellcoex/service/props/ICoexPropMgr;

    iget-object v0, p0, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262;->mICoexPropMgr:Lcom/intel/internal/cellcoex/service/props/ICoexPropMgr;

    invoke-interface {v0, p0}, Lcom/intel/internal/cellcoex/service/props/ICoexPropMgr;->addPropNode(Lcom/intel/internal/cellcoex/service/props/ICoexPropNode;)Z

    move-result v0

    return v0
.end method

.method public start()V
    .locals 4

    sget-boolean v0, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "CWS_CELLCOEX_MGR"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262;->mClassName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "start..."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    new-instance v0, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM;

    iget-wide v2, p0, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262;->mSubscriptionId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM;-><init>(Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262;->mIA7262STM:Lcom/intel/internal/cellcoex/service/mwscoexhandlers/IA7262$IA7262STM;

    return-void
.end method
