.class public Lcom/intel/internal/widget/aa/safezone/SafeZone;
.super Ljava/lang/Object;
.source "SafeZone.java"


# static fields
.field public static final TYPE_JSON_CONNECTION:Ljava/lang/String; = "connection"

.field public static final TYPE_JSON_ENABLED:Ljava/lang/String; = "enabled"

.field public static final TYPE_JSON_NICKNAME:Ljava/lang/String; = "nickname"


# instance fields
.field private mConnections:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/intel/internal/widget/aa/deviceinfo/DeviceInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mIsEnabled:I

.field private mNickname:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/util/List;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/intel/internal/widget/aa/deviceinfo/DeviceInfo;",
            ">;I)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/intel/internal/widget/aa/safezone/SafeZone;->mNickname:Ljava/lang/String;

    iput-object p2, p0, Lcom/intel/internal/widget/aa/safezone/SafeZone;->mConnections:Ljava/util/List;

    iput p3, p0, Lcom/intel/internal/widget/aa/safezone/SafeZone;->mIsEnabled:I

    return-void
.end method


# virtual methods
.method public getConnections()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/intel/internal/widget/aa/deviceinfo/DeviceInfo;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/intel/internal/widget/aa/safezone/SafeZone;->mConnections:Ljava/util/List;

    return-object v0
.end method

.method public getIsEnabled()I
    .locals 1

    iget v0, p0, Lcom/intel/internal/widget/aa/safezone/SafeZone;->mIsEnabled:I

    return v0
.end method

.method public getNickname()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/intel/internal/widget/aa/safezone/SafeZone;->mNickname:Ljava/lang/String;

    return-object v0
.end method

.method public setConnections(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/intel/internal/widget/aa/deviceinfo/DeviceInfo;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/intel/internal/widget/aa/safezone/SafeZone;->mConnections:Ljava/util/List;

    return-void
.end method

.method public setIsEnabled(I)V
    .locals 0

    iput p1, p0, Lcom/intel/internal/widget/aa/safezone/SafeZone;->mIsEnabled:I

    return-void
.end method

.method public setNickname(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/intel/internal/widget/aa/safezone/SafeZone;->mNickname:Ljava/lang/String;

    return-void
.end method
