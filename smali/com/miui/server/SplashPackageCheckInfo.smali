.class public Lcom/miui/server/SplashPackageCheckInfo;
.super Ljava/lang/Object;
.source "SplashPackageCheckInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/miui/server/SplashPackageCheckInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final IGNORE:J = -0x1L


# instance fields
.field private mEndCheckTime:J

.field private mSplashPackageName:Ljava/lang/String;

.field private mStartCheckTime:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/miui/server/SplashPackageCheckInfo$1;

    invoke-direct {v0}, Lcom/miui/server/SplashPackageCheckInfo$1;-><init>()V

    sput-object v0, Lcom/miui/server/SplashPackageCheckInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/server/SplashPackageCheckInfo;->mSplashPackageName:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/miui/server/SplashPackageCheckInfo;->mStartCheckTime:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/miui/server/SplashPackageCheckInfo;->mEndCheckTime:J

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/miui/server/SplashPackageCheckInfo$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/server/SplashPackageCheckInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;JJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/server/SplashPackageCheckInfo;->mSplashPackageName:Ljava/lang/String;

    iput-wide p2, p0, Lcom/miui/server/SplashPackageCheckInfo;->mStartCheckTime:J

    iput-wide p4, p0, Lcom/miui/server/SplashPackageCheckInfo;->mEndCheckTime:J

    return-void
.end method

.method private static getDateString(J)Ljava/lang/String;
    .locals 4

    const-wide/16 v2, -0x1

    cmp-long v1, p0, v2

    if-nez v1, :cond_0

    const-string v1, "IGNORE"

    :goto_0
    return-object v1

    :cond_0
    :try_start_0
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, p0, p1}, Ljava/util/Date;-><init>(J)V

    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v1, "ERROR"

    goto :goto_0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getSplashPackageName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/server/SplashPackageCheckInfo;->mSplashPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public isExpired()Z
    .locals 4

    iget-wide v0, p0, Lcom/miui/server/SplashPackageCheckInfo;->mEndCheckTime:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/miui/server/SplashPackageCheckInfo;->mEndCheckTime:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public matchTime()Z
    .locals 6

    const-wide/16 v4, -0x1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/miui/server/SplashPackageCheckInfo;->mStartCheckTime:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    iget-wide v2, p0, Lcom/miui/server/SplashPackageCheckInfo;->mStartCheckTime:J

    cmp-long v2, v2, v0

    if-gez v2, :cond_2

    :cond_0
    iget-wide v2, p0, Lcom/miui/server/SplashPackageCheckInfo;->mEndCheckTime:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_1

    iget-wide v2, p0, Lcom/miui/server/SplashPackageCheckInfo;->mEndCheckTime:J

    cmp-long v2, v2, v0

    if-lez v2, :cond_2

    :cond_1
    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SplashPackageCheckInfo["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/server/SplashPackageCheckInfo;->mSplashPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/miui/server/SplashPackageCheckInfo;->mStartCheckTime:J

    invoke-static {v2, v3}, Lcom/miui/server/SplashPackageCheckInfo;->getDateString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/miui/server/SplashPackageCheckInfo;->mEndCheckTime:J

    invoke-static {v2, v3}, Lcom/miui/server/SplashPackageCheckInfo;->getDateString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    iget-object v0, p0, Lcom/miui/server/SplashPackageCheckInfo;->mSplashPackageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/miui/server/SplashPackageCheckInfo;->mStartCheckTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Lcom/miui/server/SplashPackageCheckInfo;->mEndCheckTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    return-void
.end method
