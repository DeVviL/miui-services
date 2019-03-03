.class public abstract Lcom/miui/server/ISplashScreenService$Stub;
.super Landroid/os/Binder;
.source "ISplashScreenService.java"

# interfaces
.implements Lcom/miui/server/ISplashScreenService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/server/ISplashScreenService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/server/ISplashScreenService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.miui.server.ISplashScreenService"

.field static final TRANSACTION_activityIdle:I = 0x2

.field static final TRANSACTION_destroyActivity:I = 0x3

.field static final TRANSACTION_requestSplashScreen:I = 0x1

.field static final TRANSACTION_setSplashPackageListener:I = 0x4


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.miui.server.ISplashScreenService"

    invoke-virtual {p0, p0, v0}, Lcom/miui/server/ISplashScreenService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/miui/server/ISplashScreenService;
    .locals 2

    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    const-string v1, "com.miui.server.ISplashScreenService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/miui/server/ISplashScreenService;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/miui/server/ISplashScreenService;

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/miui/server/ISplashScreenService$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/miui/server/ISplashScreenService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v4, 0x1

    sparse-switch p1, :sswitch_data_0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v4

    :goto_0
    return v4

    :sswitch_0
    const-string v5, "com.miui.server.ISplashScreenService"

    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    :sswitch_1
    const-string v5, "com.miui.server.ISplashScreenService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    sget-object v5, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v5, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/Intent;

    sget-object v5, Landroid/content/pm/ActivityInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v5, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ActivityInfo;

    invoke-virtual {p0, v3, v2}, Lcom/miui/server/ISplashScreenService$Stub;->requestSplashScreen(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v1, :cond_0

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v1, p3, v4}, Landroid/content/Intent;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    :sswitch_2
    const-string v5, "com.miui.server.ISplashScreenService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    sget-object v5, Landroid/content/pm/ActivityInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v5, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ActivityInfo;

    invoke-virtual {p0, v2}, Lcom/miui/server/ISplashScreenService$Stub;->activityIdle(Landroid/content/pm/ActivityInfo;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    :sswitch_3
    const-string v5, "com.miui.server.ISplashScreenService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    sget-object v5, Landroid/content/pm/ActivityInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v5, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ActivityInfo;

    invoke-virtual {p0, v2}, Lcom/miui/server/ISplashScreenService$Stub;->destroyActivity(Landroid/content/pm/ActivityInfo;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    :sswitch_4
    const-string v5, "com.miui.server.ISplashScreenService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Lcom/miui/server/ISplashPackageCheckListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/miui/server/ISplashPackageCheckListener;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/miui/server/ISplashScreenService$Stub;->setSplashPackageListener(Lcom/miui/server/ISplashPackageCheckListener;)V

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
