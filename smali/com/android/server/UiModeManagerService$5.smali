.class Lcom/android/server/UiModeManagerService$5;
.super Landroid/app/IUiModeManager$Stub;
.source "UiModeManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/UiModeManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/UiModeManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/UiModeManagerService;)V
    .locals 0

    .prologue
    .line 196
    iput-object p1, p0, Lcom/android/server/UiModeManagerService$5;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-direct {p0}, Landroid/app/IUiModeManager$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public disableCarMode(I)V
    .locals 6
    .param p1, "flags"    # I

    .prologue
    .line 214
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 216
    .local v0, "ident":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/UiModeManagerService$5;->this$0:Lcom/android/server/UiModeManagerService;

    iget-object v3, v2, Lcom/android/server/UiModeManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 217
    :try_start_1
    iget-object v2, p0, Lcom/android/server/UiModeManagerService$5;->this$0:Lcom/android/server/UiModeManagerService;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Lcom/android/server/UiModeManagerService;->setCarModeLocked(ZI)V

    .line 218
    iget-object v2, p0, Lcom/android/server/UiModeManagerService$5;->this$0:Lcom/android/server/UiModeManagerService;

    iget-boolean v2, v2, Lcom/android/server/UiModeManagerService;->mSystemReady:Z

    if-eqz v2, :cond_0

    .line 219
    iget-object v2, p0, Lcom/android/server/UiModeManagerService$5;->this$0:Lcom/android/server/UiModeManagerService;

    const/4 v4, 0x0

    invoke-virtual {v2, v4, p1}, Lcom/android/server/UiModeManagerService;->updateLocked(II)V

    .line 221
    :cond_0
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 223
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 225
    return-void

    .line 221
    :catchall_0
    move-exception v2

    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 223
    :catchall_1
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 274
    iget-object v0, p0, Lcom/android/server/UiModeManagerService$5;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-virtual {v0}, Lcom/android/server/UiModeManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.DUMP"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 277
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Permission Denial: can\'t dump uimode service from from pid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", uid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 284
    :goto_0
    return-void

    .line 283
    :cond_0
    iget-object v0, p0, Lcom/android/server/UiModeManagerService$5;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-virtual {v0, p2}, Lcom/android/server/UiModeManagerService;->dumpImpl(Ljava/io/PrintWriter;)V

    goto :goto_0
.end method

.method public enableCarMode(I)V
    .locals 5
    .param p1, "flags"    # I

    .prologue
    .line 199
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 201
    .local v0, "ident":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/UiModeManagerService$5;->this$0:Lcom/android/server/UiModeManagerService;

    iget-object v3, v2, Lcom/android/server/UiModeManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 202
    :try_start_1
    iget-object v2, p0, Lcom/android/server/UiModeManagerService$5;->this$0:Lcom/android/server/UiModeManagerService;

    const/4 v4, 0x1

    invoke-virtual {v2, v4, p1}, Lcom/android/server/UiModeManagerService;->setCarModeLocked(ZI)V

    .line 203
    iget-object v2, p0, Lcom/android/server/UiModeManagerService$5;->this$0:Lcom/android/server/UiModeManagerService;

    iget-boolean v2, v2, Lcom/android/server/UiModeManagerService;->mSystemReady:Z

    if-eqz v2, :cond_0

    .line 204
    iget-object v2, p0, Lcom/android/server/UiModeManagerService$5;->this$0:Lcom/android/server/UiModeManagerService;

    const/4 v4, 0x0

    invoke-virtual {v2, p1, v4}, Lcom/android/server/UiModeManagerService;->updateLocked(II)V

    .line 206
    :cond_0
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 208
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 210
    return-void

    .line 206
    :catchall_0
    move-exception v2

    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 208
    :catchall_1
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public getCurrentModeType()I
    .locals 4

    .prologue
    .line 229
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 231
    .local v0, "ident":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/UiModeManagerService$5;->this$0:Lcom/android/server/UiModeManagerService;

    iget-object v3, v2, Lcom/android/server/UiModeManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 232
    :try_start_1
    iget-object v2, p0, Lcom/android/server/UiModeManagerService$5;->this$0:Lcom/android/server/UiModeManagerService;

    iget v2, v2, Lcom/android/server/UiModeManagerService;->mCurUiMode:I

    and-int/lit8 v2, v2, 0xf

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 235
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v2

    .line 233
    :catchall_0
    move-exception v2

    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 235
    :catchall_1
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public getNightMode()I
    .locals 2

    .prologue
    .line 267
    iget-object v0, p0, Lcom/android/server/UiModeManagerService$5;->this$0:Lcom/android/server/UiModeManagerService;

    iget-object v1, v0, Lcom/android/server/UiModeManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 268
    :try_start_0
    iget-object v0, p0, Lcom/android/server/UiModeManagerService$5;->this$0:Lcom/android/server/UiModeManagerService;

    iget v0, v0, Lcom/android/server/UiModeManagerService;->mNightMode:I

    monitor-exit v1

    return v0

    .line 269
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setNightMode(I)V
    .locals 6
    .param p1, "mode"    # I

    .prologue
    .line 241
    packed-switch p1, :pswitch_data_0

    .line 247
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown mode: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 250
    :pswitch_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 252
    .local v0, "ident":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/UiModeManagerService$5;->this$0:Lcom/android/server/UiModeManagerService;

    iget-object v3, v2, Lcom/android/server/UiModeManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 253
    :try_start_1
    iget-object v2, p0, Lcom/android/server/UiModeManagerService$5;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-virtual {v2}, Lcom/android/server/UiModeManagerService;->isDoingNightModeLocked()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/server/UiModeManagerService$5;->this$0:Lcom/android/server/UiModeManagerService;

    iget v2, v2, Lcom/android/server/UiModeManagerService;->mNightMode:I

    if-eq v2, p1, :cond_0

    .line 254
    iget-object v2, p0, Lcom/android/server/UiModeManagerService$5;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-virtual {v2}, Lcom/android/server/UiModeManagerService;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v4, "ui_night_mode"

    invoke-static {v2, v4, p1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 256
    iget-object v2, p0, Lcom/android/server/UiModeManagerService$5;->this$0:Lcom/android/server/UiModeManagerService;

    iput p1, v2, Lcom/android/server/UiModeManagerService;->mNightMode:I

    .line 257
    iget-object v2, p0, Lcom/android/server/UiModeManagerService$5;->this$0:Lcom/android/server/UiModeManagerService;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Lcom/android/server/UiModeManagerService;->updateLocked(II)V

    .line 259
    :cond_0
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 261
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 263
    return-void

    .line 259
    :catchall_0
    move-exception v2

    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 261
    :catchall_1
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2

    .line 241
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method