.class Lcom/android/server/wm/WindowManagerServiceInjector;
.super Ljava/lang/Object;
.source "WindowManagerServiceInjector.java"


# static fields
.field private static CUR_DEVICE:Ljava/lang/String; = null

.field private static FORCE_ORI_DEVICES_LIST:[Ljava/lang/String; = null

.field private static FORCE_ORI_LIST:[Ljava/lang/String; = null

.field static final HIDE_WINDOW:I = 0x2

.field static final SHOW_WINDOW:I = 0x1

.field private static final TAG:Ljava/lang/String; = "WindowManagerService"

.field private static sHandler:Landroid/os/Handler;

.field private static sHideMsg:Ljava/lang/String;

.field static sLastShowTost:Landroid/util/SparseLongArray;

.field private static sRjectMsg:Ljava/lang/String;

.field private static sShowMsg:Ljava/lang/String;

.field static sWms:Lcom/android/server/wm/WindowManagerService;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 28
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "com.tencent.mm/com.tencent.mm.plugin.voip.ui.VideoActivity"

    aput-object v1, v0, v2

    const-string v1, "com.tencent.mm/com.tencent.mm.plugin.multitalk.ui.MultiTalkMainUI"

    aput-object v1, v0, v3

    sput-object v0, Lcom/android/server/wm/WindowManagerServiceInjector;->FORCE_ORI_LIST:[Ljava/lang/String;

    .line 30
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "lithium"

    aput-object v1, v0, v2

    const-string v1, "chiron"

    aput-object v1, v0, v3

    sput-object v0, Lcom/android/server/wm/WindowManagerServiceInjector;->FORCE_ORI_DEVICES_LIST:[Ljava/lang/String;

    .line 31
    sget-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    sput-object v0, Lcom/android/server/wm/WindowManagerServiceInjector;->CUR_DEVICE:Ljava/lang/String;

    .line 34
    new-instance v0, Ljava/lang/String;

    const-string v1, "TUlVSUxPRy0gUmVqZWN0IGFkZCB0b2FzdCB3aW5kb3cgdWlkIDo="

    invoke-static {v1, v2}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    sput-object v0, Lcom/android/server/wm/WindowManagerServiceInjector;->sRjectMsg:Ljava/lang/String;

    .line 37
    new-instance v0, Ljava/lang/String;

    const-string v1, "TUlVSUxPRy0gRGVsYXkgc2hvdyB0b2FzdCB1aWQgOiA="

    invoke-static {v1, v2}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    sput-object v0, Lcom/android/server/wm/WindowManagerServiceInjector;->sShowMsg:Ljava/lang/String;

    .line 40
    new-instance v0, Ljava/lang/String;

    const-string v1, "TUlVSUxPRy0gRGVsYXkgaGlkZSB0b2FzdCB1aWQgOiA="

    invoke-static {v1, v2}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    sput-object v0, Lcom/android/server/wm/WindowManagerServiceInjector;->sHideMsg:Ljava/lang/String;

    .line 45
    new-instance v0, Landroid/util/SparseLongArray;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Landroid/util/SparseLongArray;-><init>(I)V

    sput-object v0, Lcom/android/server/wm/WindowManagerServiceInjector;->sLastShowTost:Landroid/util/SparseLongArray;

    .line 48
    new-instance v0, Lcom/android/server/wm/WindowManagerServiceInjector$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/server/wm/WindowManagerServiceInjector$1;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/android/server/wm/WindowManagerServiceInjector;->sHandler:Landroid/os/Handler;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Ljava/lang/Object;Z)V
    .locals 0
    .param p0, "x0"    # Ljava/lang/Object;
    .param p1, "x1"    # Z

    .prologue
    .line 25
    invoke-static {p0, p1}, Lcom/android/server/wm/WindowManagerServiceInjector;->setWinVisibility(Ljava/lang/Object;Z)V

    return-void
.end method

.method public static adjustWindowParams(Landroid/app/AppOpsManager;Landroid/view/WindowManager$LayoutParams;Ljava/lang/String;I)V
    .locals 4
    .param p0, "appOps"    # Landroid/app/AppOpsManager;
    .param p1, "attrs"    # Landroid/view/WindowManager$LayoutParams;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "uid"    # I

    .prologue
    .line 157
    if-nez p1, :cond_1

    .line 168
    :cond_0
    :goto_0
    return-void

    .line 160
    :cond_1
    iget v1, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v2, 0x80000

    and-int/2addr v1, v2

    if-nez v1, :cond_2

    iget v1, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v2, 0x400000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    .line 161
    :cond_2
    const/16 v1, 0x42

    invoke-virtual {p0, v1, p3, p2}, Landroid/app/AppOpsManager;->checkOpNoThrow(IILjava/lang/String;)I

    move-result v0

    .line 162
    .local v0, "mode":I
    if-eqz v0, :cond_0

    .line 163
    iget v1, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    const v2, -0x80001

    and-int/2addr v1, v2

    iput v1, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 164
    iget v1, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    const v2, -0x400001

    and-int/2addr v1, v2

    iput v1, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 165
    const-string v1, "WindowManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MIUILOG- Show when locked PermissionDenied pkg : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " uid : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static checkWindowOp(Landroid/app/AppOpsManager;Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/WindowState;)V
    .locals 18
    .param p0, "appOps"    # Landroid/app/AppOpsManager;
    .param p1, "wms"    # Lcom/android/server/wm/WindowManagerService;
    .param p2, "win"    # Lcom/android/server/wm/WindowState;

    .prologue
    .line 79
    move-object/from16 v0, p2

    iget-object v13, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v13, v13, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v14, 0x7d5

    if-ne v13, v14, :cond_0

    sget-boolean v13, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-nez v13, :cond_0

    sget-boolean v13, Lmiui/os/Build;->IS_CTS_BUILD:Z

    if-eqz v13, :cond_1

    .line 118
    :cond_0
    :goto_0
    return-void

    .line 84
    :cond_1
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/wm/WindowState;->getOwningUid()I

    move-result v11

    .line 85
    .local v11, "uid":I
    const/16 v13, 0x18

    invoke-virtual/range {p2 .. p2}, Lcom/android/server/wm/WindowState;->getOwningPackage()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v11, v14}, Landroid/app/AppOpsManager;->checkOpNoThrow(IILjava/lang/String;)I

    move-result v5

    .line 86
    .local v5, "mode":I
    if-eqz v5, :cond_0

    .line 89
    sput-object p1, Lcom/android/server/wm/WindowManagerServiceInjector;->sWms:Lcom/android/server/wm/WindowManagerService;

    .line 90
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 92
    .local v2, "currentTime":J
    sget-object v14, Lcom/android/server/wm/WindowManagerServiceInjector;->sLastShowTost:Landroid/util/SparseLongArray;

    monitor-enter v14

    .line 93
    :try_start_0
    sget-object v13, Lcom/android/server/wm/WindowManagerServiceInjector;->sLastShowTost:Landroid/util/SparseLongArray;

    invoke-virtual {v13, v11}, Landroid/util/SparseLongArray;->get(I)J

    move-result-wide v6

    .line 94
    .local v6, "lastTime":J
    sget-object v13, Lcom/android/server/wm/WindowManagerServiceInjector;->sLastShowTost:Landroid/util/SparseLongArray;

    invoke-virtual {v13, v11, v2, v3}, Landroid/util/SparseLongArray;->put(IJ)V

    .line 95
    monitor-exit v14
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 96
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/wm/WindowState;->toString()Ljava/lang/String;

    move-result-object v10

    .line 97
    .local v10, "title":Ljava/lang/String;
    if-eqz v10, :cond_2

    const-string v13, "Toast"

    invoke-virtual {v10, v13}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_2

    .line 98
    const/4 v13, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Lcom/android/server/wm/WindowState;->setAppOpVisibilityLw(Z)V

    .line 99
    invoke-static/range {p2 .. p2}, Lcom/android/server/wm/WindowManagerServiceInjector;->clearAppOp(Lcom/android/server/wm/WindowState;)V

    .line 100
    const-string v13, "WindowManagerService"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v15, Lcom/android/server/wm/WindowManagerServiceInjector;->sRjectMsg:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 95
    .end local v6    # "lastTime":J
    .end local v10    # "title":Ljava/lang/String;
    :catchall_0
    move-exception v13

    :try_start_1
    monitor-exit v14
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v13

    .line 104
    .restart local v6    # "lastTime":J
    .restart local v10    # "title":Ljava/lang/String;
    :cond_2
    new-instance v9, Ljava/util/Random;

    invoke-direct {v9}, Ljava/util/Random;-><init>()V

    .line 105
    .local v9, "random":Ljava/util/Random;
    new-instance v12, Ljava/lang/ref/WeakReference;

    move-object/from16 v0, p2

    invoke-direct {v12, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 107
    .local v12, "winWeak":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/android/server/wm/WindowState;>;"
    sub-long v14, v2, v6

    const-wide/16 v16, 0xed8

    cmp-long v13, v14, v16

    if-gez v13, :cond_3

    move-object/from16 v0, p2

    iget-boolean v13, v0, Lcom/android/server/wm/WindowState;->mAppOpVisibility:Z

    if-eqz v13, :cond_3

    .line 108
    const/16 v13, 0x118

    invoke-virtual {v9, v13}, Ljava/util/Random;->nextInt(I)I

    move-result v13

    add-int/lit8 v4, v13, 0x32

    .line 109
    .local v4, "delay":I
    const/4 v13, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Lcom/android/server/wm/WindowState;->setAppOpVisibilityLw(Z)V

    .line 110
    sget-object v13, Lcom/android/server/wm/WindowManagerServiceInjector;->sHandler:Landroid/os/Handler;

    const/4 v14, 0x1

    invoke-virtual {v13, v14, v12}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v8

    .line 111
    .local v8, "msg":Landroid/os/Message;
    sget-object v13, Lcom/android/server/wm/WindowManagerServiceInjector;->sHandler:Landroid/os/Handler;

    int-to-long v14, v4

    invoke-virtual {v13, v8, v14, v15}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 112
    const-string v13, "WindowManagerService"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v15, Lcom/android/server/wm/WindowManagerServiceInjector;->sShowMsg:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    .end local v4    # "delay":I
    .end local v8    # "msg":Landroid/os/Message;
    :cond_3
    const/16 v13, 0x9c4

    invoke-virtual {v9, v13}, Ljava/util/Random;->nextInt(I)I

    move-result v13

    add-int/lit16 v4, v13, 0xe10

    .line 115
    .restart local v4    # "delay":I
    sget-object v13, Lcom/android/server/wm/WindowManagerServiceInjector;->sHandler:Landroid/os/Handler;

    const/4 v14, 0x2

    invoke-virtual {v13, v14, v12}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v8

    .line 116
    .restart local v8    # "msg":Landroid/os/Message;
    sget-object v13, Lcom/android/server/wm/WindowManagerServiceInjector;->sHandler:Landroid/os/Handler;

    int-to-long v14, v4

    invoke-virtual {v13, v8, v14, v15}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 117
    const-string v13, "WindowManagerService"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v15, Lcom/android/server/wm/WindowManagerServiceInjector;->sHideMsg:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method private static clearAppOp(Lcom/android/server/wm/WindowState;)V
    .locals 4
    .param p0, "win"    # Lcom/android/server/wm/WindowState;

    .prologue
    .line 141
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-ge v2, v3, :cond_0

    .line 151
    :goto_0
    return-void

    .line 145
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "mAppOp"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 146
    .local v1, "field":Ljava/lang/reflect/Field;
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 147
    const/4 v2, -0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, p0, v2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 148
    .end local v1    # "field":Ljava/lang/reflect/Field;
    :catch_0
    move-exception v0

    .line 149
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "WindowManagerService"

    const-string v3, "clearAppOp"

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static getForceOrientation(Lcom/android/server/wm/AppWindowToken;)I
    .locals 6
    .param p0, "atoken"    # Lcom/android/server/wm/AppWindowToken;

    .prologue
    .line 189
    invoke-static {}, Lcom/android/server/wm/WindowManagerServiceInjector;->needForceOrientation()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 190
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->findMainWindow()Lcom/android/server/wm/WindowState;

    move-result-object v4

    .line 191
    .local v4, "win":Lcom/android/server/wm/WindowState;
    if-eqz v4, :cond_1

    .line 192
    sget-object v5, Lcom/android/server/wm/WindowManagerServiceInjector;->FORCE_ORI_LIST:[Ljava/lang/String;

    if-eqz v5, :cond_1

    .line 193
    sget-object v0, Lcom/android/server/wm/WindowManagerServiceInjector;->FORCE_ORI_LIST:[Ljava/lang/String;

    .local v0, "arr$":[Ljava/lang/String;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 194
    .local v3, "name":Ljava/lang/String;
    invoke-virtual {v4}, Lcom/android/server/wm/WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 195
    const/4 v5, 0x7

    .line 201
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v1    # "i$":I
    .end local v2    # "len$":I
    .end local v3    # "name":Ljava/lang/String;
    .end local v4    # "win":Lcom/android/server/wm/WindowState;
    :goto_1
    return v5

    .line 193
    .restart local v0    # "arr$":[Ljava/lang/String;
    .restart local v1    # "i$":I
    .restart local v2    # "len$":I
    .restart local v3    # "name":Ljava/lang/String;
    .restart local v4    # "win":Lcom/android/server/wm/WindowState;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 201
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v1    # "i$":I
    .end local v2    # "len$":I
    .end local v3    # "name":Ljava/lang/String;
    .end local v4    # "win":Lcom/android/server/wm/WindowState;
    :cond_1
    iget v5, p0, Lcom/android/server/wm/AppWindowToken;->requestedOrientation:I

    goto :goto_1
.end method

.method public static isAllowedDisableKeyguard(Landroid/app/AppOpsManager;I)Z
    .locals 6
    .param p0, "appOps"    # Landroid/app/AppOpsManager;
    .param p1, "uid"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 171
    const/4 v1, 0x0

    .line 173
    .local v1, "packages":[Ljava/lang/String;
    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v4

    invoke-interface {v4, p1}, Landroid/content/pm/IPackageManager;->getPackagesForUid(I)[Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 177
    :goto_0
    if-eqz v1, :cond_0

    array-length v4, v1

    if-nez v4, :cond_1

    .line 185
    :cond_0
    :goto_1
    return v2

    .line 180
    :cond_1
    const/16 v4, 0x42

    aget-object v5, v1, v3

    invoke-virtual {p0, v4, p1, v5}, Landroid/app/AppOpsManager;->checkOpNoThrow(IILjava/lang/String;)I

    move-result v0

    .line 181
    .local v0, "mode":I
    if-eqz v0, :cond_0

    .line 184
    const-string v2, "WindowManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "MIUILOG- DisableKeyguard PermissionDenied uid : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v3

    .line 185
    goto :goto_1

    .line 174
    .end local v0    # "mode":I
    :catch_0
    move-exception v4

    goto :goto_0
.end method

.method private static needForceOrientation()Z
    .locals 5

    .prologue
    .line 205
    sget-object v0, Lcom/android/server/wm/WindowManagerServiceInjector;->FORCE_ORI_DEVICES_LIST:[Ljava/lang/String;

    .local v0, "arr$":[Ljava/lang/String;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v1, v0, v2

    .line 206
    .local v1, "device":Ljava/lang/String;
    sget-object v4, Lcom/android/server/wm/WindowManagerServiceInjector;->CUR_DEVICE:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 207
    const/4 v4, 0x1

    .line 210
    .end local v1    # "device":Ljava/lang/String;
    :goto_1
    return v4

    .line 205
    .restart local v1    # "device":Ljava/lang/String;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 210
    .end local v1    # "device":Ljava/lang/String;
    :cond_1
    const/4 v4, 0x0

    goto :goto_1
.end method

.method static reportHappendErrorDuringResized(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/WindowState;Lcom/android/server/wm/WindowStateAnimator;Landroid/os/RemoteException;)V
    .locals 3
    .param p0, "thiz"    # Lcom/android/server/wm/WindowManagerService;
    .param p1, "win"    # Lcom/android/server/wm/WindowState;
    .param p2, "winAnimator"    # Lcom/android/server/wm/WindowStateAnimator;
    .param p3, "e"    # Landroid/os/RemoteException;

    .prologue
    const/4 v2, 0x0

    .line 65
    instance-of v0, p3, Landroid/os/DeadObjectException;

    if-eqz v0, :cond_0

    .line 66
    const-string v0, "WindowState"

    const-string v1, "Error happens during resized "

    invoke-static {v0, v1, p3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 68
    iput-boolean v2, p1, Lcom/android/server/wm/WindowState;->mOverscanInsetsChanged:Z

    .line 69
    iput-boolean v2, p1, Lcom/android/server/wm/WindowState;->mContentInsetsChanged:Z

    .line 70
    iput-boolean v2, p1, Lcom/android/server/wm/WindowState;->mVisibleInsetsChanged:Z

    .line 71
    iput-boolean v2, p2, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceResized:Z

    .line 74
    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    const/high16 v1, -0x40800000    # -1.0f

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    .line 76
    :cond_0
    return-void
.end method

.method private static setWinVisibility(Ljava/lang/Object;Z)V
    .locals 6
    .param p0, "winObject"    # Ljava/lang/Object;
    .param p1, "visibility"    # Z

    .prologue
    .line 121
    move-object v1, p0

    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 122
    .local v1, "winRef":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/android/server/wm/WindowState;>;"
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/WindowState;

    .line 123
    .local v0, "win":Lcom/android/server/wm/WindowState;
    sget-object v2, Lcom/android/server/wm/WindowManagerServiceInjector;->sWms:Lcom/android/server/wm/WindowManagerService;

    .line 124
    .local v2, "wms":Lcom/android/server/wm/WindowManagerService;
    if-eqz v0, :cond_1

    if-eqz v2, :cond_1

    .line 125
    iget-object v4, v2, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v4

    .line 126
    :try_start_0
    invoke-virtual {v0, p1}, Lcom/android/server/wm/WindowState;->setAppOpVisibilityLw(Z)V

    .line 127
    if-nez p1, :cond_0

    .line 128
    invoke-static {v0}, Lcom/android/server/wm/WindowManagerServiceInjector;->clearAppOp(Lcom/android/server/wm/WindowState;)V

    .line 130
    :cond_0
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 133
    :cond_1
    sget-object v4, Lcom/android/server/wm/WindowManagerServiceInjector;->sLastShowTost:Landroid/util/SparseLongArray;

    monitor-enter v4

    .line 134
    :try_start_1
    sget-object v3, Lcom/android/server/wm/WindowManagerServiceInjector;->sLastShowTost:Landroid/util/SparseLongArray;

    invoke-virtual {v3}, Landroid/util/SparseLongArray;->size()I

    move-result v3

    const/4 v5, 0x6

    if-le v3, v5, :cond_2

    .line 135
    sget-object v3, Lcom/android/server/wm/WindowManagerServiceInjector;->sLastShowTost:Landroid/util/SparseLongArray;

    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Landroid/util/SparseLongArray;->removeAt(I)V

    .line 137
    :cond_2
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 138
    return-void

    .line 130
    :catchall_0
    move-exception v3

    :try_start_2
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3

    .line 137
    :catchall_1
    move-exception v3

    :try_start_3
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v3
.end method
