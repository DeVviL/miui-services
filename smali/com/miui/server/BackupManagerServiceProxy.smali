.class Lcom/miui/server/BackupManagerServiceProxy;
.super Ljava/lang/Object;
.source "BackupManagerServiceProxy.java"


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static fullBackup(Landroid/os/ParcelFileDescriptor;[Ljava/lang/String;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v3, 0x0

    const-string v1, "backup"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    check-cast v0, Landroid/app/backup/IBackupManager;

    const/4 v2, 0x1

    move-object v1, p0

    move v4, v3

    move v5, v3

    move v6, v3

    move v7, v3

    move v8, v3

    move-object v9, p1

    invoke-interface/range {v0 .. v9}, Landroid/app/backup/IBackupManager;->fullBackup(Landroid/os/ParcelFileDescriptor;ZZZZZZZ[Ljava/lang/String;)V

    return-void
.end method

.method static fullRestore(Landroid/os/ParcelFileDescriptor;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v1, "backup"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    check-cast v0, Landroid/app/backup/IBackupManager;

    invoke-interface {v0, p0}, Landroid/app/backup/IBackupManager;->fullRestore(Landroid/os/ParcelFileDescriptor;)V

    return-void
.end method

.method public static getPackageSizeInfo(Landroid/content/Context;Landroid/content/pm/PackageManager;Ljava/lang/String;Landroid/content/pm/IPackageStatsObserver;)V
    .locals 0

    invoke-virtual {p1, p2, p3}, Landroid/content/pm/PackageManager;->getPackageSizeInfo(Ljava/lang/String;Landroid/content/pm/IPackageStatsObserver;)V

    return-void
.end method
