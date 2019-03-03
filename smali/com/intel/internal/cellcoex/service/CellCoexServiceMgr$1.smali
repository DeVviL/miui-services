.class Lcom/intel/internal/cellcoex/service/CellCoexServiceMgr$1;
.super Landroid/content/BroadcastReceiver;
.source "CellCoexServiceMgr.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/intel/internal/cellcoex/service/CellCoexServiceMgr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/intel/internal/cellcoex/service/CellCoexServiceMgr;


# direct methods
.method constructor <init>(Lcom/intel/internal/cellcoex/service/CellCoexServiceMgr;)V
    .locals 0

    .prologue
    .line 180
    iput-object p1, p0, Lcom/intel/internal/cellcoex/service/CellCoexServiceMgr$1;->this$0:Lcom/intel/internal/cellcoex/service/CellCoexServiceMgr;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "receivedIntent"    # Landroid/content/Intent;

    .prologue
    const/16 v5, 0x15

    .line 183
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 185
    .local v0, "action":Ljava/lang/String;
    invoke-static {}, Lcom/intel/internal/cellcoex/service/CellCoexServiceMgr;->access$000()Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v1, "intel.intent.action.OEM_TELEPHONY_READY"

    .line 187
    .local v1, "expectedIntent":Ljava/lang/String;
    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 188
    invoke-static {}, Lcom/intel/internal/cellcoex/service/CellCoexServiceMgr;->access$100()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 189
    const-string v2, "CWS_CELLCOEX_MGR"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CellCoexServiceMgrBoot Completed, "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " recevied!"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    :cond_0
    invoke-static {}, Lcom/intel/internal/cellcoex/service/CoexPropertyMgr;->getInstance()Lcom/intel/internal/cellcoex/service/CoexPropertyMgr;

    move-result-object v2

    invoke-static {v2}, Lcom/intel/internal/cellcoex/service/CellCoexServiceMgr;->access$202(Lcom/intel/internal/cellcoex/service/CoexPropertyMgr;)Lcom/intel/internal/cellcoex/service/CoexPropertyMgr;

    .line 194
    invoke-static {}, Lcom/intel/internal/cellcoex/service/CellCoexServiceMgr;->access$400()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/intel/internal/cellcoex/service/mwscoexmgr/MwsCoexMgr;->getInstance(Landroid/content/Context;)Lcom/intel/internal/cellcoex/service/mwscoexmgr/MwsCoexMgr;

    move-result-object v2

    invoke-static {v2}, Lcom/intel/internal/cellcoex/service/CellCoexServiceMgr;->access$302(Lcom/intel/internal/cellcoex/service/mwscoexmgr/MwsCoexMgr;)Lcom/intel/internal/cellcoex/service/mwscoexmgr/MwsCoexMgr;

    .line 195
    invoke-static {}, Lcom/intel/internal/cellcoex/service/CellCoexServiceMgr;->access$300()Lcom/intel/internal/cellcoex/service/mwscoexmgr/MwsCoexMgr;

    move-result-object v2

    if-nez v2, :cond_3

    .line 196
    const-string v2, "CWS_CELLCOEX_MGR"

    const-string v3, "CellCoexServiceMgrsMwsCoexMgr is null"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    const/4 v2, -0x1

    invoke-static {v2}, Lcom/intel/internal/cellcoex/service/CellCoexServiceMgr;->access$502(I)I

    .line 264
    :cond_1
    :goto_1
    return-void

    .line 185
    .end local v1    # "expectedIntent":Ljava/lang/String;
    :cond_2
    const-string v1, "android.intent.action.BOOT_COMPLETED"

    goto :goto_0

    .line 201
    .restart local v1    # "expectedIntent":Ljava/lang/String;
    :cond_3
    invoke-static {}, Lcom/intel/internal/cellcoex/plugin/CellCoexHandlerInterfaceCreator;->getInstance()Lcom/intel/internal/cellcoex/plugin/CellCoexHandlerInterfaceCreator;

    move-result-object v2

    invoke-static {v2}, Lcom/intel/internal/cellcoex/service/CellCoexServiceMgr;->access$602(Lcom/intel/internal/cellcoex/handler/ICwsCoexHandler;)Lcom/intel/internal/cellcoex/handler/ICwsCoexHandler;

    .line 202
    invoke-static {}, Lcom/intel/internal/cellcoex/service/CellCoexServiceMgr;->access$600()Lcom/intel/internal/cellcoex/handler/ICwsCoexHandler;

    move-result-object v2

    if-nez v2, :cond_4

    .line 203
    const-string v2, "CWS_CELLCOEX_MGR"

    const-string v3, "CellCoexServiceMgrsCwsCoexHandlerPluginInstance is null"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    invoke-static {v5}, Lcom/intel/internal/cellcoex/service/CellCoexServiceMgr;->access$502(I)I

    goto :goto_1

    .line 208
    :cond_4
    invoke-static {}, Lcom/intel/internal/cellcoex/service/CellCoexServiceMgr;->access$600()Lcom/intel/internal/cellcoex/handler/ICwsCoexHandler;

    move-result-object v2

    invoke-interface {v2}, Lcom/intel/internal/cellcoex/handler/ICwsCoexHandler;->getBtCoexInstance()Lcom/intel/internal/cellcoex/handler/IBtCoexHandler;

    move-result-object v2

    invoke-static {v2}, Lcom/intel/internal/cellcoex/service/CellCoexServiceMgr;->access$702(Lcom/intel/internal/cellcoex/handler/IBtCoexHandler;)Lcom/intel/internal/cellcoex/handler/IBtCoexHandler;

    .line 209
    invoke-static {}, Lcom/intel/internal/cellcoex/service/CellCoexServiceMgr;->access$700()Lcom/intel/internal/cellcoex/handler/IBtCoexHandler;

    move-result-object v2

    if-nez v2, :cond_5

    .line 210
    const-string v2, "CWS_CELLCOEX_MGR"

    const-string v3, "CellCoexServiceMgrsIBtCoexHandler is null"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    invoke-static {v5}, Lcom/intel/internal/cellcoex/service/CellCoexServiceMgr;->access$502(I)I

    goto :goto_1

    .line 214
    :cond_5
    invoke-static {}, Lcom/intel/internal/cellcoex/service/CellCoexServiceMgr;->access$700()Lcom/intel/internal/cellcoex/handler/IBtCoexHandler;

    move-result-object v2

    invoke-static {}, Lcom/intel/internal/cellcoex/service/CellCoexServiceMgr;->access$400()Landroid/content/Context;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/intel/internal/cellcoex/handler/IBtCoexHandler;->setContext(Landroid/content/Context;)V

    .line 216
    invoke-static {}, Lcom/intel/internal/cellcoex/service/CellCoexServiceMgr;->access$600()Lcom/intel/internal/cellcoex/handler/ICwsCoexHandler;

    move-result-object v2

    invoke-interface {v2}, Lcom/intel/internal/cellcoex/handler/ICwsCoexHandler;->getWifiCoexInstance()Lcom/intel/internal/cellcoex/handler/IWifiCoexHandler;

    move-result-object v2

    invoke-static {v2}, Lcom/intel/internal/cellcoex/service/CellCoexServiceMgr;->access$802(Lcom/intel/internal/cellcoex/handler/IWifiCoexHandler;)Lcom/intel/internal/cellcoex/handler/IWifiCoexHandler;

    .line 217
    invoke-static {}, Lcom/intel/internal/cellcoex/service/CellCoexServiceMgr;->access$800()Lcom/intel/internal/cellcoex/handler/IWifiCoexHandler;

    move-result-object v2

    if-nez v2, :cond_6

    .line 218
    const-string v2, "CWS_CELLCOEX_MGR"

    const-string v3, "CellCoexServiceMgrsIWifiCoexHandler is null"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    invoke-static {v5}, Lcom/intel/internal/cellcoex/service/CellCoexServiceMgr;->access$502(I)I

    goto :goto_1

    .line 222
    :cond_6
    invoke-static {}, Lcom/intel/internal/cellcoex/service/CellCoexServiceMgr;->access$800()Lcom/intel/internal/cellcoex/handler/IWifiCoexHandler;

    move-result-object v2

    invoke-static {}, Lcom/intel/internal/cellcoex/service/CellCoexServiceMgr;->access$400()Landroid/content/Context;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/intel/internal/cellcoex/handler/IWifiCoexHandler;->setContext(Landroid/content/Context;)V

    .line 224
    invoke-static {}, Lcom/intel/internal/cellcoex/service/WifiCoexMgr;->getInstance()Lcom/intel/internal/cellcoex/service/WifiCoexMgr;

    move-result-object v2

    invoke-static {v2}, Lcom/intel/internal/cellcoex/service/CellCoexServiceMgr;->access$902(Lcom/intel/internal/cellcoex/service/WifiCoexMgr;)Lcom/intel/internal/cellcoex/service/WifiCoexMgr;

    .line 225
    invoke-static {}, Lcom/intel/internal/cellcoex/service/CellCoexServiceMgr;->access$900()Lcom/intel/internal/cellcoex/service/WifiCoexMgr;

    move-result-object v2

    if-nez v2, :cond_7

    .line 226
    const-string v2, "CWS_CELLCOEX_MGR"

    const-string v3, "CellCoexServiceMgrsWifiCoexMgr is null"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    const/4 v2, -0x3

    invoke-static {v2}, Lcom/intel/internal/cellcoex/service/CellCoexServiceMgr;->access$502(I)I

    goto/16 :goto_1

    .line 230
    :cond_7
    invoke-static {}, Lcom/intel/internal/cellcoex/service/CellCoexServiceMgr;->access$900()Lcom/intel/internal/cellcoex/service/WifiCoexMgr;

    move-result-object v2

    invoke-static {}, Lcom/intel/internal/cellcoex/service/CellCoexServiceMgr;->access$400()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/intel/internal/cellcoex/service/WifiCoexMgr;->setContext(Landroid/content/Context;)V

    .line 232
    invoke-static {}, Lcom/intel/internal/cellcoex/service/BtCoexMgr;->getInstance()Lcom/intel/internal/cellcoex/service/BtCoexMgr;

    move-result-object v2

    invoke-static {v2}, Lcom/intel/internal/cellcoex/service/CellCoexServiceMgr;->access$1002(Lcom/intel/internal/cellcoex/service/BtCoexMgr;)Lcom/intel/internal/cellcoex/service/BtCoexMgr;

    .line 233
    invoke-static {}, Lcom/intel/internal/cellcoex/service/CellCoexServiceMgr;->access$1000()Lcom/intel/internal/cellcoex/service/BtCoexMgr;

    move-result-object v2

    if-nez v2, :cond_8

    .line 234
    const-string v2, "CWS_CELLCOEX_MGR"

    const-string v3, "CellCoexServiceMgrsBtCoexMgr is null"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    const/4 v2, -0x4

    invoke-static {v2}, Lcom/intel/internal/cellcoex/service/CellCoexServiceMgr;->access$502(I)I

    goto/16 :goto_1

    .line 238
    :cond_8
    invoke-static {}, Lcom/intel/internal/cellcoex/service/CellCoexServiceMgr;->access$1000()Lcom/intel/internal/cellcoex/service/BtCoexMgr;

    move-result-object v2

    invoke-static {}, Lcom/intel/internal/cellcoex/service/CellCoexServiceMgr;->access$400()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/intel/internal/cellcoex/service/BtCoexMgr;->setContext(Landroid/content/Context;)V

    .line 241
    invoke-static {}, Lcom/intel/internal/cellcoex/service/CellCoexServiceMgr;->access$400()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/intel/internal/cellcoex/test/CoexPropertyTest;->getInstance(Landroid/content/Context;)Lcom/intel/internal/cellcoex/test/CoexPropertyTest;

    move-result-object v2

    invoke-static {v2}, Lcom/intel/internal/cellcoex/service/CellCoexServiceMgr;->access$1102(Lcom/intel/internal/cellcoex/test/CoexPropertyTest;)Lcom/intel/internal/cellcoex/test/CoexPropertyTest;

    .line 245
    invoke-static {}, Lcom/intel/internal/cellcoex/service/CellCoexServiceMgr;->access$300()Lcom/intel/internal/cellcoex/service/mwscoexmgr/MwsCoexMgr;

    move-result-object v2

    invoke-virtual {v2}, Lcom/intel/internal/cellcoex/service/mwscoexmgr/MwsCoexMgr;->isReadyToStart()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 246
    const-string v2, "CWS_CELLCOEX_MGR"

    const-string v3, "CellCoexServiceMgrsMwsCoexMgr is ready so let\'s boot!"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    invoke-static {}, Lcom/intel/internal/cellcoex/service/CellCoexServiceMgr;->access$1200()V

    goto/16 :goto_1

    .line 251
    :cond_9
    const-string v2, "CWS_CELLCOEX_MGR"

    const-string v3, "CellCoexServiceMgrsMwsCoexMgr is not ready so let\'s wait..."

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 253
    :cond_a
    const-string v2, "intel.intent.action.ACTION_CELLCOEX_UNBLOCK_BOOT"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 254
    const-string v2, "CWS_CELLCOEX_MGR"

    const-string v3, "CellCoexServiceMgrBoot Unblock action received from CellCoex"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    invoke-static {}, Lcom/intel/internal/cellcoex/service/CellCoexServiceMgr;->access$300()Lcom/intel/internal/cellcoex/service/mwscoexmgr/MwsCoexMgr;

    move-result-object v2

    invoke-virtual {v2}, Lcom/intel/internal/cellcoex/service/mwscoexmgr/MwsCoexMgr;->isReadyToStart()Z

    move-result v2

    if-eqz v2, :cond_b

    .line 256
    const-string v2, "CWS_CELLCOEX_MGR"

    const-string v3, "CellCoexServiceMgrsMwsCoexMgr is ready so let\'s boot!"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    invoke-static {}, Lcom/intel/internal/cellcoex/service/CellCoexServiceMgr;->access$1200()V

    goto/16 :goto_1

    .line 261
    :cond_b
    const-string v2, "CWS_CELLCOEX_MGR"

    const-string v3, "CellCoexServiceMgrsMwsCoexMgr is not ready so let\'s wait..."

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1
.end method
