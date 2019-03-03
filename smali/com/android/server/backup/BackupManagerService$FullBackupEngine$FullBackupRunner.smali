.class Lcom/android/server/backup/BackupManagerService$FullBackupEngine$FullBackupRunner;
.super Ljava/lang/Object;
.source "BackupManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/backup/BackupManagerService$FullBackupEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "FullBackupRunner"
.end annotation


# instance fields
.field mAgent:Landroid/app/IBackupAgent;

.field mPackage:Landroid/content/pm/PackageInfo;

.field mPipe:Landroid/os/ParcelFileDescriptor;

.field mSendApk:Z

.field mToken:I

.field mWidgetData:[B

.field mWriteManifest:Z

.field final synthetic this$1:Lcom/android/server/backup/BackupManagerService$FullBackupEngine;


# direct methods
.method constructor <init>(Lcom/android/server/backup/BackupManagerService$FullBackupEngine;Landroid/content/pm/PackageInfo;Landroid/app/IBackupAgent;Landroid/os/ParcelFileDescriptor;IZZ[B)V
    .locals 1
    .param p2, "pack"    # Landroid/content/pm/PackageInfo;
    .param p3, "agent"    # Landroid/app/IBackupAgent;
    .param p4, "pipe"    # Landroid/os/ParcelFileDescriptor;
    .param p5, "token"    # I
    .param p6, "sendApk"    # Z
    .param p7, "writeManifest"    # Z
    .param p8, "widgetData"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3140
    iput-object p1, p0, Lcom/android/server/backup/BackupManagerService$FullBackupEngine$FullBackupRunner;->this$1:Lcom/android/server/backup/BackupManagerService$FullBackupEngine;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3141
    iput-object p2, p0, Lcom/android/server/backup/BackupManagerService$FullBackupEngine$FullBackupRunner;->mPackage:Landroid/content/pm/PackageInfo;

    .line 3142
    iput-object p8, p0, Lcom/android/server/backup/BackupManagerService$FullBackupEngine$FullBackupRunner;->mWidgetData:[B

    .line 3143
    iput-object p3, p0, Lcom/android/server/backup/BackupManagerService$FullBackupEngine$FullBackupRunner;->mAgent:Landroid/app/IBackupAgent;

    .line 3144
    invoke-virtual {p4}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v0

    invoke-static {v0}, Landroid/os/ParcelFileDescriptor;->dup(Ljava/io/FileDescriptor;)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/backup/BackupManagerService$FullBackupEngine$FullBackupRunner;->mPipe:Landroid/os/ParcelFileDescriptor;

    .line 3145
    iput p5, p0, Lcom/android/server/backup/BackupManagerService$FullBackupEngine$FullBackupRunner;->mToken:I

    .line 3146
    iput-boolean p6, p0, Lcom/android/server/backup/BackupManagerService$FullBackupEngine$FullBackupRunner;->mSendApk:Z

    .line 3147
    iput-boolean p7, p0, Lcom/android/server/backup/BackupManagerService$FullBackupEngine$FullBackupRunner;->mWriteManifest:Z

    .line 3148
    return-void
.end method


# virtual methods
.method public run()V
    .locals 14

    .prologue
    .line 3153
    :try_start_0
    new-instance v5, Landroid/app/backup/BackupDataOutput;

    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService$FullBackupEngine$FullBackupRunner;->mPipe:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v0

    invoke-direct {v5, v0}, Landroid/app/backup/BackupDataOutput;-><init>(Ljava/io/FileDescriptor;)V

    .line 3156
    .local v5, "output":Landroid/app/backup/BackupDataOutput;
    iget-boolean v0, p0, Lcom/android/server/backup/BackupManagerService$FullBackupEngine$FullBackupRunner;->mWriteManifest:Z

    if-eqz v0, :cond_0

    .line 3157
    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService$FullBackupEngine$FullBackupRunner;->mWidgetData:[B

    if-eqz v0, :cond_2

    const/4 v13, 0x1

    .line 3159
    .local v13, "writeWidgetData":Z
    :goto_0
    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService$FullBackupEngine$FullBackupRunner;->this$1:Lcom/android/server/backup/BackupManagerService$FullBackupEngine;

    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService$FullBackupEngine$FullBackupRunner;->mPackage:Landroid/content/pm/PackageInfo;

    iget-object v2, p0, Lcom/android/server/backup/BackupManagerService$FullBackupEngine$FullBackupRunner;->this$1:Lcom/android/server/backup/BackupManagerService$FullBackupEngine;

    iget-object v2, v2, Lcom/android/server/backup/BackupManagerService$FullBackupEngine;->mManifestFile:Ljava/io/File;

    iget-boolean v3, p0, Lcom/android/server/backup/BackupManagerService$FullBackupEngine$FullBackupRunner;->mSendApk:Z

    invoke-static {v0, v1, v2, v3, v13}, Lcom/android/server/backup/BackupManagerService$FullBackupEngine;->access$1000(Lcom/android/server/backup/BackupManagerService$FullBackupEngine;Landroid/content/pm/PackageInfo;Ljava/io/File;ZZ)V

    .line 3160
    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService$FullBackupEngine$FullBackupRunner;->mPackage:Landroid/content/pm/PackageInfo;

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    const/4 v1, 0x0

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/server/backup/BackupManagerService$FullBackupEngine$FullBackupRunner;->this$1:Lcom/android/server/backup/BackupManagerService$FullBackupEngine;

    iget-object v3, v3, Lcom/android/server/backup/BackupManagerService$FullBackupEngine;->mFilesDir:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/backup/BackupManagerService$FullBackupEngine$FullBackupRunner;->this$1:Lcom/android/server/backup/BackupManagerService$FullBackupEngine;

    iget-object v4, v4, Lcom/android/server/backup/BackupManagerService$FullBackupEngine;->mManifestFile:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-static/range {v0 .. v5}, Landroid/app/backup/FullBackup;->backupToTar(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/backup/BackupDataOutput;)I

    .line 3164
    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService$FullBackupEngine$FullBackupRunner;->this$1:Lcom/android/server/backup/BackupManagerService$FullBackupEngine;

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$FullBackupEngine;->mManifestFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 3167
    if-eqz v13, :cond_0

    .line 3168
    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService$FullBackupEngine$FullBackupRunner;->this$1:Lcom/android/server/backup/BackupManagerService$FullBackupEngine;

    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService$FullBackupEngine$FullBackupRunner;->mPackage:Landroid/content/pm/PackageInfo;

    iget-object v2, p0, Lcom/android/server/backup/BackupManagerService$FullBackupEngine$FullBackupRunner;->this$1:Lcom/android/server/backup/BackupManagerService$FullBackupEngine;

    iget-object v2, v2, Lcom/android/server/backup/BackupManagerService$FullBackupEngine;->mMetadataFile:Ljava/io/File;

    iget-object v3, p0, Lcom/android/server/backup/BackupManagerService$FullBackupEngine$FullBackupRunner;->mWidgetData:[B

    invoke-static {v0, v1, v2, v3}, Lcom/android/server/backup/BackupManagerService$FullBackupEngine;->access$1100(Lcom/android/server/backup/BackupManagerService$FullBackupEngine;Landroid/content/pm/PackageInfo;Ljava/io/File;[B)V

    .line 3169
    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService$FullBackupEngine$FullBackupRunner;->mPackage:Landroid/content/pm/PackageInfo;

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    const/4 v1, 0x0

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/server/backup/BackupManagerService$FullBackupEngine$FullBackupRunner;->this$1:Lcom/android/server/backup/BackupManagerService$FullBackupEngine;

    iget-object v3, v3, Lcom/android/server/backup/BackupManagerService$FullBackupEngine;->mFilesDir:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/backup/BackupManagerService$FullBackupEngine$FullBackupRunner;->this$1:Lcom/android/server/backup/BackupManagerService$FullBackupEngine;

    iget-object v4, v4, Lcom/android/server/backup/BackupManagerService$FullBackupEngine;->mMetadataFile:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-static/range {v0 .. v5}, Landroid/app/backup/FullBackup;->backupToTar(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/backup/BackupDataOutput;)I

    .line 3173
    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService$FullBackupEngine$FullBackupRunner;->this$1:Lcom/android/server/backup/BackupManagerService$FullBackupEngine;

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$FullBackupEngine;->mMetadataFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 3177
    .end local v13    # "writeWidgetData":Z
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/backup/BackupManagerService$FullBackupEngine$FullBackupRunner;->mSendApk:Z

    if-eqz v0, :cond_1

    .line 3178
    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService$FullBackupEngine$FullBackupRunner;->this$1:Lcom/android/server/backup/BackupManagerService$FullBackupEngine;

    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService$FullBackupEngine$FullBackupRunner;->mPackage:Landroid/content/pm/PackageInfo;

    invoke-static {v0, v1, v5}, Lcom/android/server/backup/BackupManagerService$FullBackupEngine;->access$1200(Lcom/android/server/backup/BackupManagerService$FullBackupEngine;Landroid/content/pm/PackageInfo;Landroid/app/backup/BackupDataOutput;)V

    .line 3181
    :cond_1
    const-string v0, "BackupManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Calling doFullBackup() on "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/backup/BackupManagerService$FullBackupEngine$FullBackupRunner;->mPackage:Landroid/content/pm/PackageInfo;

    iget-object v2, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3184
    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService$FullBackupEngine$FullBackupRunner;->this$1:Lcom/android/server/backup/BackupManagerService$FullBackupEngine;

    iget-object v6, v0, Lcom/android/server/backup/BackupManagerService$FullBackupEngine;->this$0:Lcom/android/server/backup/BackupManagerService;

    iget v7, p0, Lcom/android/server/backup/BackupManagerService$FullBackupEngine$FullBackupRunner;->mToken:I

    const-wide/32 v8, 0x493e0

    const/4 v10, 0x0

    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService$FullBackupEngine$FullBackupRunner;->this$1:Lcom/android/server/backup/BackupManagerService$FullBackupEngine;

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$FullBackupEngine;->mOutputFile:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->getFd()I

    move-result v11

    invoke-static/range {v6 .. v11}, Lcom/android/server/backup/BackupManagerServiceInjector;->prepareOperationTimeout(Lcom/android/server/backup/BackupManagerService;IJLcom/android/server/backup/BackupManagerService$BackupRestoreTask;I)V

    .line 3185
    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService$FullBackupEngine$FullBackupRunner;->mAgent:Landroid/app/IBackupAgent;

    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService$FullBackupEngine$FullBackupRunner;->mPipe:Landroid/os/ParcelFileDescriptor;

    iget v2, p0, Lcom/android/server/backup/BackupManagerService$FullBackupEngine$FullBackupRunner;->mToken:I

    iget-object v3, p0, Lcom/android/server/backup/BackupManagerService$FullBackupEngine$FullBackupRunner;->this$1:Lcom/android/server/backup/BackupManagerService$FullBackupEngine;

    iget-object v3, v3, Lcom/android/server/backup/BackupManagerService$FullBackupEngine;->this$0:Lcom/android/server/backup/BackupManagerService;

    iget-object v3, v3, Lcom/android/server/backup/BackupManagerService;->mBackupManagerBinder:Landroid/app/backup/IBackupManager;

    invoke-interface {v0, v1, v2, v3}, Landroid/app/IBackupAgent;->doFullBackup(Landroid/os/ParcelFileDescriptor;ILandroid/app/backup/IBackupManager;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3193
    :try_start_1
    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService$FullBackupEngine$FullBackupRunner;->mPipe:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_5

    .line 3196
    .end local v5    # "output":Landroid/app/backup/BackupDataOutput;
    :goto_1
    return-void

    .line 3157
    .restart local v5    # "output":Landroid/app/backup/BackupDataOutput;
    :cond_2
    const/4 v13, 0x0

    goto/16 :goto_0

    .line 3186
    .end local v5    # "output":Landroid/app/backup/BackupDataOutput;
    :catch_0
    move-exception v12

    .line 3187
    .local v12, "e":Ljava/io/IOException;
    :try_start_2
    const-string v0, "BackupManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error running full backup for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/backup/BackupManagerService$FullBackupEngine$FullBackupRunner;->mPackage:Landroid/content/pm/PackageInfo;

    iget-object v2, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 3193
    :try_start_3
    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService$FullBackupEngine$FullBackupRunner;->mPipe:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1

    .line 3194
    :catch_1
    move-exception v0

    goto :goto_1

    .line 3188
    .end local v12    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v12

    .line 3189
    .local v12, "e":Landroid/os/RemoteException;
    :try_start_4
    const-string v0, "BackupManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Remote agent vanished during full backup of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/backup/BackupManagerService$FullBackupEngine$FullBackupRunner;->mPackage:Landroid/content/pm/PackageInfo;

    iget-object v2, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 3193
    :try_start_5
    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService$FullBackupEngine$FullBackupRunner;->mPipe:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_1

    .line 3194
    :catch_3
    move-exception v0

    goto :goto_1

    .line 3192
    .end local v12    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v0

    .line 3193
    :try_start_6
    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService$FullBackupEngine$FullBackupRunner;->mPipe:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    .line 3194
    :goto_2
    throw v0

    :catch_4
    move-exception v1

    goto :goto_2

    .restart local v5    # "output":Landroid/app/backup/BackupDataOutput;
    :catch_5
    move-exception v0

    goto :goto_1
.end method