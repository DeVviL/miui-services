.class public Lcom/intel/internal/cellcoex/service/props/MwsRadioVersion;
.super Ljava/lang/Object;
.source "MwsRadioVersion.java"

# interfaces
.implements Lcom/intel/internal/cellcoex/service/props/ICoexPropProvider;


# static fields
.field public static final DAY_MAX:I = 0x6

.field public static final DAY_MIN:I = 0x0

.field private static final DEFAULT_DAY:I = 0x0

.field private static final DEFAULT_REVISION:I = 0x1

.field private static final DEFAULT_WORK_WEEK:I = 0x1

.field private static final DEFAULT_YEAR:I = 0xd

.field public static final PROP_NAME:Ljava/lang/String; = "mws.radio_version"

.field public static final REV_MAX:I = 0x3

.field public static final REV_MIN:I = 0x1

.field private static final TAG:Ljava/lang/String; = "CWS_CELLCOEX_MGR"

.field public static final UNKNOWN:I = -0x1

.field public static final WW_MAX:I = 0x35

.field public static final WW_MIN:I = 0x1

.field public static final YEAR_MAX:I = 0x1c

.field public static final YEAR_MIN:I = 0xd


# instance fields
.field private final mClassName:Ljava/lang/String;

.field private mDay:I

.field private mRevision:I

.field private mWorkWeek:I

.field private mYear:I


# direct methods
.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x1

    const/4 v0, -0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/intel/internal/cellcoex/service/props/MwsRadioVersion;->mRevision:I

    iput v0, p0, Lcom/intel/internal/cellcoex/service/props/MwsRadioVersion;->mYear:I

    iput v0, p0, Lcom/intel/internal/cellcoex/service/props/MwsRadioVersion;->mWorkWeek:I

    iput v0, p0, Lcom/intel/internal/cellcoex/service/props/MwsRadioVersion;->mDay:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/intel/internal/cellcoex/service/props/MwsRadioVersion;->mClassName:Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/intel/internal/cellcoex/service/props/MwsRadioVersion;->setRevision(I)V

    const/16 v0, 0xd

    invoke-virtual {p0, v0}, Lcom/intel/internal/cellcoex/service/props/MwsRadioVersion;->setYear(I)V

    invoke-virtual {p0, v2}, Lcom/intel/internal/cellcoex/service/props/MwsRadioVersion;->setWorkWeek(I)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/intel/internal/cellcoex/service/props/MwsRadioVersion;->setDay(I)V

    return-void
.end method

.method public constructor <init>(IIII)V
    .locals 2

    const/4 v0, -0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/intel/internal/cellcoex/service/props/MwsRadioVersion;->mRevision:I

    iput v0, p0, Lcom/intel/internal/cellcoex/service/props/MwsRadioVersion;->mYear:I

    iput v0, p0, Lcom/intel/internal/cellcoex/service/props/MwsRadioVersion;->mWorkWeek:I

    iput v0, p0, Lcom/intel/internal/cellcoex/service/props/MwsRadioVersion;->mDay:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/intel/internal/cellcoex/service/props/MwsRadioVersion;->mClassName:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/intel/internal/cellcoex/service/props/MwsRadioVersion;->setRevision(I)V

    invoke-virtual {p0, p2}, Lcom/intel/internal/cellcoex/service/props/MwsRadioVersion;->setYear(I)V

    invoke-virtual {p0, p3}, Lcom/intel/internal/cellcoex/service/props/MwsRadioVersion;->setWorkWeek(I)V

    invoke-virtual {p0, p4}, Lcom/intel/internal/cellcoex/service/props/MwsRadioVersion;->setDay(I)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v2, 0x1

    const/4 v1, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    if-ne p1, p0, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    instance-of v3, p1, Lcom/intel/internal/cellcoex/service/props/MwsRadioVersion;

    if-eqz v3, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/intel/internal/cellcoex/service/props/MwsRadioVersion;

    invoke-virtual {v0}, Lcom/intel/internal/cellcoex/service/props/MwsRadioVersion;->getRevision()I

    move-result v3

    invoke-virtual {p0}, Lcom/intel/internal/cellcoex/service/props/MwsRadioVersion;->getRevision()I

    move-result v4

    if-ne v3, v4, :cond_0

    invoke-virtual {v0}, Lcom/intel/internal/cellcoex/service/props/MwsRadioVersion;->getYear()I

    move-result v3

    invoke-virtual {p0}, Lcom/intel/internal/cellcoex/service/props/MwsRadioVersion;->getYear()I

    move-result v4

    if-ne v3, v4, :cond_0

    invoke-virtual {v0}, Lcom/intel/internal/cellcoex/service/props/MwsRadioVersion;->getWorkWeek()I

    move-result v3

    invoke-virtual {p0}, Lcom/intel/internal/cellcoex/service/props/MwsRadioVersion;->getWorkWeek()I

    move-result v4

    if-ne v3, v4, :cond_0

    invoke-virtual {v0}, Lcom/intel/internal/cellcoex/service/props/MwsRadioVersion;->getDay()I

    move-result v3

    invoke-virtual {p0}, Lcom/intel/internal/cellcoex/service/props/MwsRadioVersion;->getDay()I

    move-result v4

    if-ne v3, v4, :cond_0

    move v1, v2

    goto :goto_0
.end method

.method public getDay()I
    .locals 1

    iget v0, p0, Lcom/intel/internal/cellcoex/service/props/MwsRadioVersion;->mDay:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    const-string v0, "mws.radio_version"

    return-object v0
.end method

.method public getRevision()I
    .locals 1

    iget v0, p0, Lcom/intel/internal/cellcoex/service/props/MwsRadioVersion;->mRevision:I

    return v0
.end method

.method public getWorkWeek()I
    .locals 1

    iget v0, p0, Lcom/intel/internal/cellcoex/service/props/MwsRadioVersion;->mWorkWeek:I

    return v0
.end method

.method public getYear()I
    .locals 1

    iget v0, p0, Lcom/intel/internal/cellcoex/service/props/MwsRadioVersion;->mYear:I

    return v0
.end method

.method public isUnknown()Z
    .locals 3

    const/4 v0, 0x1

    const/4 v2, -0x1

    iget v1, p0, Lcom/intel/internal/cellcoex/service/props/MwsRadioVersion;->mRevision:I

    if-ne v2, v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget v1, p0, Lcom/intel/internal/cellcoex/service/props/MwsRadioVersion;->mYear:I

    if-eq v2, v1, :cond_0

    iget v1, p0, Lcom/intel/internal/cellcoex/service/props/MwsRadioVersion;->mWorkWeek:I

    if-eq v2, v1, :cond_0

    iget v1, p0, Lcom/intel/internal/cellcoex/service/props/MwsRadioVersion;->mDay:I

    if-eq v2, v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setDay(I)V
    .locals 3

    if-ltz p1, :cond_0

    const/4 v0, 0x6

    if-le p1, v0, :cond_1

    :cond_0
    const-string v0, "CWS_CELLCOEX_MGR"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/intel/internal/cellcoex/service/props/MwsRadioVersion;->mClassName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "setDay() - Error! Invalid parameter."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_1
    iput p1, p0, Lcom/intel/internal/cellcoex/service/props/MwsRadioVersion;->mDay:I

    goto :goto_0
.end method

.method public setRevision(I)V
    .locals 3

    const/4 v0, 0x1

    if-lt p1, v0, :cond_0

    const/4 v0, 0x3

    if-le p1, v0, :cond_1

    :cond_0
    const-string v0, "CWS_CELLCOEX_MGR"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/intel/internal/cellcoex/service/props/MwsRadioVersion;->mClassName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "setRevision() - Error! Invalid parameter."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_1
    iput p1, p0, Lcom/intel/internal/cellcoex/service/props/MwsRadioVersion;->mRevision:I

    goto :goto_0
.end method

.method public setWorkWeek(I)V
    .locals 3

    const/4 v0, 0x1

    if-lt p1, v0, :cond_0

    const/16 v0, 0x35

    if-le p1, v0, :cond_1

    :cond_0
    const-string v0, "CWS_CELLCOEX_MGR"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/intel/internal/cellcoex/service/props/MwsRadioVersion;->mClassName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "setWorkWeek() - Error! Invalid parameter."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_1
    iput p1, p0, Lcom/intel/internal/cellcoex/service/props/MwsRadioVersion;->mWorkWeek:I

    goto :goto_0
.end method

.method public setYear(I)V
    .locals 3

    const/16 v0, 0xd

    if-lt p1, v0, :cond_0

    const/16 v0, 0x1c

    if-le p1, v0, :cond_1

    :cond_0
    const-string v0, "CWS_CELLCOEX_MGR"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/intel/internal/cellcoex/service/props/MwsRadioVersion;->mClassName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "setYear() - Error! Invalid parameter."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_1
    iput p1, p0, Lcom/intel/internal/cellcoex/service/props/MwsRadioVersion;->mYear:I

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "(Revision: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/intel/internal/cellcoex/service/props/MwsRadioVersion;->getRevision()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " Year: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/intel/internal/cellcoex/service/props/MwsRadioVersion;->getYear()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " WW:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/intel/internal/cellcoex/service/props/MwsRadioVersion;->getWorkWeek()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " Day:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/intel/internal/cellcoex/service/props/MwsRadioVersion;->getDay()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
