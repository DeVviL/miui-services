.class Lcom/android/server/NsdService$NsdStateMachine$EnabledState;
.super Lcom/android/internal/util/State;
.source "NsdService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/NsdService$NsdStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "EnabledState"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/NsdService$NsdStateMachine;


# direct methods
.method constructor <init>(Lcom/android/server/NsdService$NsdStateMachine;)V
    .locals 0

    .prologue
    .line 240
    iput-object p1, p0, Lcom/android/server/NsdService$NsdStateMachine$EnabledState;->this$1:Lcom/android/server/NsdService$NsdStateMachine;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method

.method private handleNativeEvent(ILjava/lang/String;[Ljava/lang/String;)Z
    .locals 17
    .param p1, "code"    # I
    .param p2, "raw"    # Ljava/lang/String;
    .param p3, "cooked"    # [Ljava/lang/String;

    .prologue
    .line 415
    const/4 v4, 0x1

    .line 417
    .local v4, "handled":Z
    const/4 v13, 0x1

    aget-object v13, p3, v13

    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 418
    .local v6, "id":I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/NsdService$NsdStateMachine$EnabledState;->this$1:Lcom/android/server/NsdService$NsdStateMachine;

    iget-object v13, v13, Lcom/android/server/NsdService$NsdStateMachine;->this$0:Lcom/android/server/NsdService;

    invoke-static {v13}, Lcom/android/server/NsdService;->access$1500(Lcom/android/server/NsdService;)Landroid/util/SparseArray;

    move-result-object v13

    invoke-virtual {v13, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/NsdService$ClientInfo;

    .line 419
    .local v2, "clientInfo":Lcom/android/server/NsdService$ClientInfo;
    if-nez v2, :cond_0

    .line 420
    const-string v13, "NsdService"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Unique id with no client mapping: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 421
    const/4 v4, 0x0

    move v5, v4

    .line 549
    .end local v4    # "handled":Z
    .local v5, "handled":I
    :goto_0
    return v5

    .line 426
    .end local v5    # "handled":I
    .restart local v4    # "handled":Z
    :cond_0
    invoke-static {v2, v6}, Lcom/android/server/NsdService$ClientInfo;->access$2700(Lcom/android/server/NsdService$ClientInfo;I)I

    move-result v1

    .line 427
    .local v1, "clientId":I
    if-gez v1, :cond_1

    .line 431
    const-string v13, "NsdService"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Notification for a listener that is no longer active: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 432
    const/4 v4, 0x0

    move v5, v4

    .line 433
    .restart local v5    # "handled":I
    goto :goto_0

    .line 436
    .end local v5    # "handled":I
    :cond_1
    packed-switch p1, :pswitch_data_0

    .line 546
    const/4 v4, 0x0

    :goto_1
    :pswitch_0
    move v5, v4

    .line 549
    .restart local v5    # "handled":I
    goto :goto_0

    .line 439
    .end local v5    # "handled":I
    :pswitch_1
    const-string v13, "NsdService"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "SERVICE_FOUND Raw: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p2

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 440
    new-instance v11, Landroid/net/nsd/NsdServiceInfo;

    const/4 v13, 0x2

    aget-object v13, p3, v13

    const/4 v14, 0x3

    aget-object v14, p3, v14

    invoke-direct {v11, v13, v14}, Landroid/net/nsd/NsdServiceInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 441
    .local v11, "servInfo":Landroid/net/nsd/NsdServiceInfo;
    invoke-static {v2}, Lcom/android/server/NsdService$ClientInfo;->access$2800(Lcom/android/server/NsdService$ClientInfo;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v13

    const v14, 0x60004

    const/4 v15, 0x0

    invoke-virtual {v13, v14, v15, v1, v11}, Lcom/android/internal/util/AsyncChannel;->sendMessage(IIILjava/lang/Object;)V

    goto :goto_1

    .line 446
    .end local v11    # "servInfo":Landroid/net/nsd/NsdServiceInfo;
    :pswitch_2
    const-string v13, "NsdService"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "SERVICE_LOST Raw: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p2

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 447
    new-instance v11, Landroid/net/nsd/NsdServiceInfo;

    const/4 v13, 0x2

    aget-object v13, p3, v13

    const/4 v14, 0x3

    aget-object v14, p3, v14

    invoke-direct {v11, v13, v14}, Landroid/net/nsd/NsdServiceInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 448
    .restart local v11    # "servInfo":Landroid/net/nsd/NsdServiceInfo;
    invoke-static {v2}, Lcom/android/server/NsdService$ClientInfo;->access$2800(Lcom/android/server/NsdService$ClientInfo;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v13

    const v14, 0x60005

    const/4 v15, 0x0

    invoke-virtual {v13, v14, v15, v1, v11}, Lcom/android/internal/util/AsyncChannel;->sendMessage(IIILjava/lang/Object;)V

    goto :goto_1

    .line 453
    .end local v11    # "servInfo":Landroid/net/nsd/NsdServiceInfo;
    :pswitch_3
    const-string v13, "NsdService"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "SERVICE_DISC_FAILED Raw: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p2

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 454
    invoke-static {v2}, Lcom/android/server/NsdService$ClientInfo;->access$2800(Lcom/android/server/NsdService$ClientInfo;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v13

    const v14, 0x60003

    const/4 v15, 0x0

    invoke-virtual {v13, v14, v15, v1}, Lcom/android/internal/util/AsyncChannel;->sendMessage(III)V

    goto/16 :goto_1

    .line 459
    :pswitch_4
    const-string v13, "NsdService"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "SERVICE_REGISTERED Raw: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p2

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 460
    new-instance v11, Landroid/net/nsd/NsdServiceInfo;

    const/4 v13, 0x2

    aget-object v13, p3, v13

    const/4 v14, 0x0

    invoke-direct {v11, v13, v14}, Landroid/net/nsd/NsdServiceInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 461
    .restart local v11    # "servInfo":Landroid/net/nsd/NsdServiceInfo;
    invoke-static {v2}, Lcom/android/server/NsdService$ClientInfo;->access$2800(Lcom/android/server/NsdService$ClientInfo;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v13

    const v14, 0x6000b

    invoke-virtual {v13, v14, v6, v1, v11}, Lcom/android/internal/util/AsyncChannel;->sendMessage(IIILjava/lang/Object;)V

    goto/16 :goto_1

    .line 466
    .end local v11    # "servInfo":Landroid/net/nsd/NsdServiceInfo;
    :pswitch_5
    const-string v13, "NsdService"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "SERVICE_REGISTER_FAILED Raw: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p2

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 467
    invoke-static {v2}, Lcom/android/server/NsdService$ClientInfo;->access$2800(Lcom/android/server/NsdService$ClientInfo;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v13

    const v14, 0x6000a

    const/4 v15, 0x0

    invoke-virtual {v13, v14, v15, v1}, Lcom/android/internal/util/AsyncChannel;->sendMessage(III)V

    goto/16 :goto_1

    .line 478
    :pswitch_6
    const-string v13, "NsdService"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "SERVICE_RESOLVED Raw: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p2

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 479
    const/4 v8, 0x0

    .line 480
    .local v8, "index":I
    :goto_2
    const/4 v13, 0x2

    aget-object v13, p3, v13

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v13

    if-ge v8, v13, :cond_3

    const/4 v13, 0x2

    aget-object v13, p3, v13

    invoke-virtual {v13, v8}, Ljava/lang/String;->charAt(I)C

    move-result v13

    const/16 v14, 0x2e

    if-eq v13, v14, :cond_3

    .line 481
    const/4 v13, 0x2

    aget-object v13, p3, v13

    invoke-virtual {v13, v8}, Ljava/lang/String;->charAt(I)C

    move-result v13

    const/16 v14, 0x5c

    if-ne v13, v14, :cond_2

    .line 482
    add-int/lit8 v8, v8, 0x1

    .line 484
    :cond_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 486
    :cond_3
    const/4 v13, 0x2

    aget-object v13, p3, v13

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v13

    if-lt v8, v13, :cond_4

    .line 487
    const-string v13, "NsdService"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Invalid service found "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p2

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 490
    :cond_4
    const/4 v13, 0x2

    aget-object v13, p3, v13

    const/4 v14, 0x0

    invoke-virtual {v13, v14, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    .line 491
    .local v9, "name":Ljava/lang/String;
    const/4 v13, 0x2

    aget-object v13, p3, v13

    invoke-virtual {v13, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v10

    .line 492
    .local v10, "rest":Ljava/lang/String;
    const-string v13, ".local."

    const-string v14, ""

    invoke-virtual {v10, v13, v14}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v12

    .line 494
    .local v12, "type":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/NsdService$NsdStateMachine$EnabledState;->this$1:Lcom/android/server/NsdService$NsdStateMachine;

    iget-object v13, v13, Lcom/android/server/NsdService$NsdStateMachine;->this$0:Lcom/android/server/NsdService;

    invoke-static {v13, v9}, Lcom/android/server/NsdService;->access$2900(Lcom/android/server/NsdService;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 496
    invoke-static {v2}, Lcom/android/server/NsdService$ClientInfo;->access$2500(Lcom/android/server/NsdService$ClientInfo;)Landroid/net/nsd/NsdServiceInfo;

    move-result-object v13

    invoke-virtual {v13, v9}, Landroid/net/nsd/NsdServiceInfo;->setServiceName(Ljava/lang/String;)V

    .line 497
    invoke-static {v2}, Lcom/android/server/NsdService$ClientInfo;->access$2500(Lcom/android/server/NsdService$ClientInfo;)Landroid/net/nsd/NsdServiceInfo;

    move-result-object v13

    invoke-virtual {v13, v12}, Landroid/net/nsd/NsdServiceInfo;->setServiceType(Ljava/lang/String;)V

    .line 498
    invoke-static {v2}, Lcom/android/server/NsdService$ClientInfo;->access$2500(Lcom/android/server/NsdService$ClientInfo;)Landroid/net/nsd/NsdServiceInfo;

    move-result-object v13

    const/4 v14, 0x4

    aget-object v14, p3, v14

    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v14

    invoke-virtual {v13, v14}, Landroid/net/nsd/NsdServiceInfo;->setPort(I)V

    .line 500
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/NsdService$NsdStateMachine$EnabledState;->this$1:Lcom/android/server/NsdService$NsdStateMachine;

    iget-object v13, v13, Lcom/android/server/NsdService$NsdStateMachine;->this$0:Lcom/android/server/NsdService;

    invoke-static {v13, v6}, Lcom/android/server/NsdService;->access$3000(Lcom/android/server/NsdService;I)Z

    .line 501
    move-object/from16 v0, p0

    invoke-direct {v0, v1, v6, v2}, Lcom/android/server/NsdService$NsdStateMachine$EnabledState;->removeRequestMap(IILcom/android/server/NsdService$ClientInfo;)V

    .line 503
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/NsdService$NsdStateMachine$EnabledState;->this$1:Lcom/android/server/NsdService$NsdStateMachine;

    iget-object v13, v13, Lcom/android/server/NsdService$NsdStateMachine;->this$0:Lcom/android/server/NsdService;

    invoke-static {v13}, Lcom/android/server/NsdService;->access$1800(Lcom/android/server/NsdService;)I

    move-result v7

    .line 504
    .local v7, "id2":I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/NsdService$NsdStateMachine$EnabledState;->this$1:Lcom/android/server/NsdService$NsdStateMachine;

    iget-object v13, v13, Lcom/android/server/NsdService$NsdStateMachine;->this$0:Lcom/android/server/NsdService;

    const/4 v14, 0x3

    aget-object v14, p3, v14

    invoke-static {v13, v7, v14}, Lcom/android/server/NsdService;->access$3100(Lcom/android/server/NsdService;ILjava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_5

    .line 505
    const v13, 0x60012

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v7, v2, v13}, Lcom/android/server/NsdService$NsdStateMachine$EnabledState;->storeRequestMap(IILcom/android/server/NsdService$ClientInfo;I)V

    goto/16 :goto_1

    .line 507
    :cond_5
    invoke-static {v2}, Lcom/android/server/NsdService$ClientInfo;->access$2800(Lcom/android/server/NsdService$ClientInfo;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v13

    const v14, 0x60013

    const/4 v15, 0x0

    invoke-virtual {v13, v14, v15, v1}, Lcom/android/internal/util/AsyncChannel;->sendMessage(III)V

    .line 509
    const/4 v13, 0x0

    invoke-static {v2, v13}, Lcom/android/server/NsdService$ClientInfo;->access$2502(Lcom/android/server/NsdService$ClientInfo;Landroid/net/nsd/NsdServiceInfo;)Landroid/net/nsd/NsdServiceInfo;

    goto/16 :goto_1

    .line 514
    .end local v7    # "id2":I
    .end local v8    # "index":I
    .end local v9    # "name":Ljava/lang/String;
    .end local v10    # "rest":Ljava/lang/String;
    .end local v12    # "type":Ljava/lang/String;
    :pswitch_7
    const-string v13, "NsdService"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "SERVICE_RESOLVE_FAILED Raw: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p2

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 515
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/NsdService$NsdStateMachine$EnabledState;->this$1:Lcom/android/server/NsdService$NsdStateMachine;

    iget-object v13, v13, Lcom/android/server/NsdService$NsdStateMachine;->this$0:Lcom/android/server/NsdService;

    invoke-static {v13, v6}, Lcom/android/server/NsdService;->access$3000(Lcom/android/server/NsdService;I)Z

    .line 516
    move-object/from16 v0, p0

    invoke-direct {v0, v1, v6, v2}, Lcom/android/server/NsdService$NsdStateMachine$EnabledState;->removeRequestMap(IILcom/android/server/NsdService$ClientInfo;)V

    .line 517
    const/4 v13, 0x0

    invoke-static {v2, v13}, Lcom/android/server/NsdService$ClientInfo;->access$2502(Lcom/android/server/NsdService$ClientInfo;Landroid/net/nsd/NsdServiceInfo;)Landroid/net/nsd/NsdServiceInfo;

    .line 518
    invoke-static {v2}, Lcom/android/server/NsdService$ClientInfo;->access$2800(Lcom/android/server/NsdService$ClientInfo;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v13

    const v14, 0x60013

    const/4 v15, 0x0

    invoke-virtual {v13, v14, v15, v1}, Lcom/android/internal/util/AsyncChannel;->sendMessage(III)V

    goto/16 :goto_1

    .line 523
    :pswitch_8
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/NsdService$NsdStateMachine$EnabledState;->this$1:Lcom/android/server/NsdService$NsdStateMachine;

    iget-object v13, v13, Lcom/android/server/NsdService$NsdStateMachine;->this$0:Lcom/android/server/NsdService;

    invoke-static {v13, v6}, Lcom/android/server/NsdService;->access$3200(Lcom/android/server/NsdService;I)Z

    .line 524
    move-object/from16 v0, p0

    invoke-direct {v0, v1, v6, v2}, Lcom/android/server/NsdService$NsdStateMachine$EnabledState;->removeRequestMap(IILcom/android/server/NsdService$ClientInfo;)V

    .line 525
    const/4 v13, 0x0

    invoke-static {v2, v13}, Lcom/android/server/NsdService$ClientInfo;->access$2502(Lcom/android/server/NsdService$ClientInfo;Landroid/net/nsd/NsdServiceInfo;)Landroid/net/nsd/NsdServiceInfo;

    .line 526
    const-string v13, "NsdService"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "SERVICE_RESOLVE_FAILED Raw: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p2

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 527
    invoke-static {v2}, Lcom/android/server/NsdService$ClientInfo;->access$2800(Lcom/android/server/NsdService$ClientInfo;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v13

    const v14, 0x60013

    const/4 v15, 0x0

    invoke-virtual {v13, v14, v15, v1}, Lcom/android/internal/util/AsyncChannel;->sendMessage(III)V

    goto/16 :goto_1

    .line 532
    :pswitch_9
    const-string v13, "NsdService"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "SERVICE_GET_ADDR_SUCCESS Raw: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p2

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 534
    :try_start_0
    invoke-static {v2}, Lcom/android/server/NsdService$ClientInfo;->access$2500(Lcom/android/server/NsdService$ClientInfo;)Landroid/net/nsd/NsdServiceInfo;

    move-result-object v13

    const/4 v14, 0x4

    aget-object v14, p3, v14

    invoke-static {v14}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/net/nsd/NsdServiceInfo;->setHost(Ljava/net/InetAddress;)V

    .line 535
    invoke-static {v2}, Lcom/android/server/NsdService$ClientInfo;->access$2800(Lcom/android/server/NsdService$ClientInfo;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v13

    const v14, 0x60014

    const/4 v15, 0x0

    invoke-static {v2}, Lcom/android/server/NsdService$ClientInfo;->access$2500(Lcom/android/server/NsdService$ClientInfo;)Landroid/net/nsd/NsdServiceInfo;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v13, v14, v15, v1, v0}, Lcom/android/internal/util/AsyncChannel;->sendMessage(IIILjava/lang/Object;)V
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    .line 541
    :goto_3
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/NsdService$NsdStateMachine$EnabledState;->this$1:Lcom/android/server/NsdService$NsdStateMachine;

    iget-object v13, v13, Lcom/android/server/NsdService$NsdStateMachine;->this$0:Lcom/android/server/NsdService;

    invoke-static {v13, v6}, Lcom/android/server/NsdService;->access$3200(Lcom/android/server/NsdService;I)Z

    .line 542
    move-object/from16 v0, p0

    invoke-direct {v0, v1, v6, v2}, Lcom/android/server/NsdService$NsdStateMachine$EnabledState;->removeRequestMap(IILcom/android/server/NsdService$ClientInfo;)V

    .line 543
    const/4 v13, 0x0

    invoke-static {v2, v13}, Lcom/android/server/NsdService$ClientInfo;->access$2502(Lcom/android/server/NsdService$ClientInfo;Landroid/net/nsd/NsdServiceInfo;)Landroid/net/nsd/NsdServiceInfo;

    goto/16 :goto_1

    .line 537
    :catch_0
    move-exception v3

    .line 538
    .local v3, "e":Ljava/net/UnknownHostException;
    invoke-static {v2}, Lcom/android/server/NsdService$ClientInfo;->access$2800(Lcom/android/server/NsdService$ClientInfo;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v13

    const v14, 0x60013

    const/4 v15, 0x0

    invoke-virtual {v13, v14, v15, v1}, Lcom/android/internal/util/AsyncChannel;->sendMessage(III)V

    goto :goto_3

    .line 436
    :pswitch_data_0
    .packed-switch 0x25a
        :pswitch_3
        :pswitch_1
        :pswitch_2
        :pswitch_5
        :pswitch_4
        :pswitch_7
        :pswitch_6
        :pswitch_0
        :pswitch_0
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method

.method private removeRequestMap(IILcom/android/server/NsdService$ClientInfo;)V
    .locals 1
    .param p1, "clientId"    # I
    .param p2, "globalId"    # I
    .param p3, "clientInfo"    # Lcom/android/server/NsdService$ClientInfo;

    .prologue
    .line 271
    invoke-static {p3}, Lcom/android/server/NsdService$ClientInfo;->access$1300(Lcom/android/server/NsdService$ClientInfo;)Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 272
    invoke-static {p3}, Lcom/android/server/NsdService$ClientInfo;->access$1400(Lcom/android/server/NsdService$ClientInfo;)Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 273
    iget-object v0, p0, Lcom/android/server/NsdService$NsdStateMachine$EnabledState;->this$1:Lcom/android/server/NsdService$NsdStateMachine;

    iget-object v0, v0, Lcom/android/server/NsdService$NsdStateMachine;->this$0:Lcom/android/server/NsdService;

    invoke-static {v0}, Lcom/android/server/NsdService;->access$1500(Lcom/android/server/NsdService;)Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->remove(I)V

    .line 274
    return-void
.end method

.method private requestLimitReached(Lcom/android/server/NsdService$ClientInfo;)Z
    .locals 3
    .param p1, "clientInfo"    # Lcom/android/server/NsdService$ClientInfo;

    .prologue
    .line 257
    invoke-static {p1}, Lcom/android/server/NsdService$ClientInfo;->access$1300(Lcom/android/server/NsdService$ClientInfo;)Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    const/16 v1, 0xa

    if-lt v0, v1, :cond_0

    .line 258
    const-string v0, "NsdService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exceeded max outstanding requests "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    const/4 v0, 0x1

    .line 261
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private storeRequestMap(IILcom/android/server/NsdService$ClientInfo;I)V
    .locals 2
    .param p1, "clientId"    # I
    .param p2, "globalId"    # I
    .param p3, "clientInfo"    # Lcom/android/server/NsdService$ClientInfo;
    .param p4, "what"    # I

    .prologue
    .line 265
    invoke-static {p3}, Lcom/android/server/NsdService$ClientInfo;->access$1300(Lcom/android/server/NsdService$ClientInfo;)Landroid/util/SparseArray;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 266
    invoke-static {p3}, Lcom/android/server/NsdService$ClientInfo;->access$1400(Lcom/android/server/NsdService$ClientInfo;)Landroid/util/SparseArray;

    move-result-object v0

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 267
    iget-object v0, p0, Lcom/android/server/NsdService$NsdStateMachine$EnabledState;->this$1:Lcom/android/server/NsdService$NsdStateMachine;

    iget-object v0, v0, Lcom/android/server/NsdService$NsdStateMachine;->this$0:Lcom/android/server/NsdService;

    invoke-static {v0}, Lcom/android/server/NsdService;->access$1500(Lcom/android/server/NsdService;)Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 268
    return-void
.end method


# virtual methods
.method public enter()V
    .locals 2

    .prologue
    .line 243
    iget-object v0, p0, Lcom/android/server/NsdService$NsdStateMachine$EnabledState;->this$1:Lcom/android/server/NsdService$NsdStateMachine;

    iget-object v0, v0, Lcom/android/server/NsdService$NsdStateMachine;->this$0:Lcom/android/server/NsdService;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/server/NsdService;->access$900(Lcom/android/server/NsdService;Z)V

    .line 244
    iget-object v0, p0, Lcom/android/server/NsdService$NsdStateMachine$EnabledState;->this$1:Lcom/android/server/NsdService$NsdStateMachine;

    iget-object v0, v0, Lcom/android/server/NsdService$NsdStateMachine;->this$0:Lcom/android/server/NsdService;

    invoke-static {v0}, Lcom/android/server/NsdService;->access$500(Lcom/android/server/NsdService;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 245
    iget-object v0, p0, Lcom/android/server/NsdService$NsdStateMachine$EnabledState;->this$1:Lcom/android/server/NsdService$NsdStateMachine;

    iget-object v0, v0, Lcom/android/server/NsdService$NsdStateMachine;->this$0:Lcom/android/server/NsdService;

    invoke-static {v0}, Lcom/android/server/NsdService;->access$1200(Lcom/android/server/NsdService;)Z

    .line 247
    :cond_0
    return-void
.end method

.method public exit()V
    .locals 1

    .prologue
    .line 251
    iget-object v0, p0, Lcom/android/server/NsdService$NsdStateMachine$EnabledState;->this$1:Lcom/android/server/NsdService$NsdStateMachine;

    iget-object v0, v0, Lcom/android/server/NsdService$NsdStateMachine;->this$0:Lcom/android/server/NsdService;

    invoke-static {v0}, Lcom/android/server/NsdService;->access$500(Lcom/android/server/NsdService;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 252
    iget-object v0, p0, Lcom/android/server/NsdService$NsdStateMachine$EnabledState;->this$1:Lcom/android/server/NsdService$NsdStateMachine;

    iget-object v0, v0, Lcom/android/server/NsdService$NsdStateMachine;->this$0:Lcom/android/server/NsdService;

    invoke-static {v0}, Lcom/android/server/NsdService;->access$700(Lcom/android/server/NsdService;)Z

    .line 254
    :cond_0
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 13
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const v12, 0x6000a

    const v11, 0x60007

    const v10, 0x60003

    const/4 v9, 0x4

    const/4 v8, 0x0

    .line 280
    const/4 v4, 0x1

    .line 282
    .local v4, "result":Z
    iget v6, p1, Landroid/os/Message;->what:I

    sparse-switch v6, :sswitch_data_0

    .line 408
    const/4 v4, 0x0

    .line 411
    :cond_0
    :goto_0
    return v4

    .line 285
    :sswitch_0
    iget v6, p1, Landroid/os/Message;->arg1:I

    if-nez v6, :cond_1

    iget-object v6, p0, Lcom/android/server/NsdService$NsdStateMachine$EnabledState;->this$1:Lcom/android/server/NsdService$NsdStateMachine;

    iget-object v6, v6, Lcom/android/server/NsdService$NsdStateMachine;->this$0:Lcom/android/server/NsdService;

    invoke-static {v6}, Lcom/android/server/NsdService;->access$500(Lcom/android/server/NsdService;)Ljava/util/HashMap;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/HashMap;->size()I

    move-result v6

    if-nez v6, :cond_1

    .line 287
    iget-object v6, p0, Lcom/android/server/NsdService$NsdStateMachine$EnabledState;->this$1:Lcom/android/server/NsdService$NsdStateMachine;

    iget-object v6, v6, Lcom/android/server/NsdService$NsdStateMachine;->this$0:Lcom/android/server/NsdService;

    invoke-static {v6}, Lcom/android/server/NsdService;->access$1200(Lcom/android/server/NsdService;)Z

    .line 289
    :cond_1
    const/4 v4, 0x0

    .line 290
    goto :goto_0

    .line 292
    :sswitch_1
    const/4 v4, 0x0

    .line 293
    goto :goto_0

    .line 296
    :sswitch_2
    iget-object v6, p0, Lcom/android/server/NsdService$NsdStateMachine$EnabledState;->this$1:Lcom/android/server/NsdService$NsdStateMachine;

    iget-object v7, p0, Lcom/android/server/NsdService$NsdStateMachine$EnabledState;->this$1:Lcom/android/server/NsdService$NsdStateMachine;

    invoke-static {v7}, Lcom/android/server/NsdService$NsdStateMachine;->access$1600(Lcom/android/server/NsdService$NsdStateMachine;)Lcom/android/server/NsdService$NsdStateMachine$DisabledState;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/server/NsdService$NsdStateMachine;->access$1700(Lcom/android/server/NsdService$NsdStateMachine;Lcom/android/internal/util/IState;)V

    goto :goto_0

    .line 299
    :sswitch_3
    const-string v6, "NsdService"

    const-string v7, "Discover services"

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 300
    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Landroid/net/nsd/NsdServiceInfo;

    .line 301
    .local v5, "servInfo":Landroid/net/nsd/NsdServiceInfo;
    iget-object v6, p0, Lcom/android/server/NsdService$NsdStateMachine$EnabledState;->this$1:Lcom/android/server/NsdService$NsdStateMachine;

    iget-object v6, v6, Lcom/android/server/NsdService$NsdStateMachine;->this$0:Lcom/android/server/NsdService;

    invoke-static {v6}, Lcom/android/server/NsdService;->access$500(Lcom/android/server/NsdService;)Ljava/util/HashMap;

    move-result-object v6

    iget-object v7, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/NsdService$ClientInfo;

    .line 303
    .local v0, "clientInfo":Lcom/android/server/NsdService$ClientInfo;
    invoke-direct {p0, v0}, Lcom/android/server/NsdService$NsdStateMachine$EnabledState;->requestLimitReached(Lcom/android/server/NsdService$ClientInfo;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 304
    iget-object v6, p0, Lcom/android/server/NsdService$NsdStateMachine$EnabledState;->this$1:Lcom/android/server/NsdService$NsdStateMachine;

    iget-object v6, v6, Lcom/android/server/NsdService$NsdStateMachine;->this$0:Lcom/android/server/NsdService;

    invoke-static {v6, p1, v10, v9}, Lcom/android/server/NsdService;->access$800(Lcom/android/server/NsdService;Landroid/os/Message;II)V

    goto :goto_0

    .line 309
    :cond_2
    iget-object v6, p0, Lcom/android/server/NsdService$NsdStateMachine$EnabledState;->this$1:Lcom/android/server/NsdService$NsdStateMachine;

    iget-object v6, v6, Lcom/android/server/NsdService$NsdStateMachine;->this$0:Lcom/android/server/NsdService;

    invoke-static {v6}, Lcom/android/server/NsdService;->access$1800(Lcom/android/server/NsdService;)I

    move-result v3

    .line 310
    .local v3, "id":I
    iget-object v6, p0, Lcom/android/server/NsdService$NsdStateMachine$EnabledState;->this$1:Lcom/android/server/NsdService$NsdStateMachine;

    iget-object v6, v6, Lcom/android/server/NsdService$NsdStateMachine;->this$0:Lcom/android/server/NsdService;

    invoke-virtual {v5}, Landroid/net/nsd/NsdServiceInfo;->getServiceType()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v3, v7}, Lcom/android/server/NsdService;->access$1900(Lcom/android/server/NsdService;ILjava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 312
    const-string v6, "NsdService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Discover "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v5}, Landroid/net/nsd/NsdServiceInfo;->getServiceType()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 315
    iget v6, p1, Landroid/os/Message;->arg2:I

    iget v7, p1, Landroid/os/Message;->what:I

    invoke-direct {p0, v6, v3, v0, v7}, Lcom/android/server/NsdService$NsdStateMachine$EnabledState;->storeRequestMap(IILcom/android/server/NsdService$ClientInfo;I)V

    .line 316
    iget-object v6, p0, Lcom/android/server/NsdService$NsdStateMachine$EnabledState;->this$1:Lcom/android/server/NsdService$NsdStateMachine;

    iget-object v6, v6, Lcom/android/server/NsdService$NsdStateMachine;->this$0:Lcom/android/server/NsdService;

    const v7, 0x60002

    invoke-static {v6, p1, v7, v5}, Lcom/android/server/NsdService;->access$2000(Lcom/android/server/NsdService;Landroid/os/Message;ILjava/lang/Object;)V

    goto/16 :goto_0

    .line 318
    :cond_3
    iget-object v6, p0, Lcom/android/server/NsdService$NsdStateMachine$EnabledState;->this$1:Lcom/android/server/NsdService$NsdStateMachine;

    iget-object v6, v6, Lcom/android/server/NsdService$NsdStateMachine;->this$0:Lcom/android/server/NsdService;

    invoke-static {v6, v3}, Lcom/android/server/NsdService;->access$2100(Lcom/android/server/NsdService;I)Z

    .line 319
    iget-object v6, p0, Lcom/android/server/NsdService$NsdStateMachine$EnabledState;->this$1:Lcom/android/server/NsdService$NsdStateMachine;

    iget-object v6, v6, Lcom/android/server/NsdService$NsdStateMachine;->this$0:Lcom/android/server/NsdService;

    invoke-static {v6, p1, v10, v8}, Lcom/android/server/NsdService;->access$800(Lcom/android/server/NsdService;Landroid/os/Message;II)V

    goto/16 :goto_0

    .line 324
    .end local v0    # "clientInfo":Lcom/android/server/NsdService$ClientInfo;
    .end local v3    # "id":I
    .end local v5    # "servInfo":Landroid/net/nsd/NsdServiceInfo;
    :sswitch_4
    const-string v6, "NsdService"

    const-string v7, "Stop service discovery"

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 325
    iget-object v6, p0, Lcom/android/server/NsdService$NsdStateMachine$EnabledState;->this$1:Lcom/android/server/NsdService$NsdStateMachine;

    iget-object v6, v6, Lcom/android/server/NsdService$NsdStateMachine;->this$0:Lcom/android/server/NsdService;

    invoke-static {v6}, Lcom/android/server/NsdService;->access$500(Lcom/android/server/NsdService;)Ljava/util/HashMap;

    move-result-object v6

    iget-object v7, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/NsdService$ClientInfo;

    .line 328
    .restart local v0    # "clientInfo":Lcom/android/server/NsdService$ClientInfo;
    :try_start_0
    invoke-static {v0}, Lcom/android/server/NsdService$ClientInfo;->access$1300(Lcom/android/server/NsdService$ClientInfo;)Landroid/util/SparseArray;

    move-result-object v6

    iget v7, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v6, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 334
    .restart local v3    # "id":I
    iget v6, p1, Landroid/os/Message;->arg2:I

    invoke-direct {p0, v6, v3, v0}, Lcom/android/server/NsdService$NsdStateMachine$EnabledState;->removeRequestMap(IILcom/android/server/NsdService$ClientInfo;)V

    .line 335
    iget-object v6, p0, Lcom/android/server/NsdService$NsdStateMachine$EnabledState;->this$1:Lcom/android/server/NsdService$NsdStateMachine;

    iget-object v6, v6, Lcom/android/server/NsdService$NsdStateMachine;->this$0:Lcom/android/server/NsdService;

    invoke-static {v6, v3}, Lcom/android/server/NsdService;->access$2100(Lcom/android/server/NsdService;I)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 336
    iget-object v6, p0, Lcom/android/server/NsdService$NsdStateMachine$EnabledState;->this$1:Lcom/android/server/NsdService$NsdStateMachine;

    iget-object v6, v6, Lcom/android/server/NsdService$NsdStateMachine;->this$0:Lcom/android/server/NsdService;

    const v7, 0x60008

    invoke-static {v6, p1, v7}, Lcom/android/server/NsdService;->access$2200(Lcom/android/server/NsdService;Landroid/os/Message;I)V

    goto/16 :goto_0

    .line 329
    .end local v3    # "id":I
    :catch_0
    move-exception v1

    .line 330
    .local v1, "e":Ljava/lang/NullPointerException;
    iget-object v6, p0, Lcom/android/server/NsdService$NsdStateMachine$EnabledState;->this$1:Lcom/android/server/NsdService$NsdStateMachine;

    iget-object v6, v6, Lcom/android/server/NsdService$NsdStateMachine;->this$0:Lcom/android/server/NsdService;

    invoke-static {v6, p1, v11, v8}, Lcom/android/server/NsdService;->access$800(Lcom/android/server/NsdService;Landroid/os/Message;II)V

    goto/16 :goto_0

    .line 338
    .end local v1    # "e":Ljava/lang/NullPointerException;
    .restart local v3    # "id":I
    :cond_4
    iget-object v6, p0, Lcom/android/server/NsdService$NsdStateMachine$EnabledState;->this$1:Lcom/android/server/NsdService$NsdStateMachine;

    iget-object v6, v6, Lcom/android/server/NsdService$NsdStateMachine;->this$0:Lcom/android/server/NsdService;

    invoke-static {v6, p1, v11, v8}, Lcom/android/server/NsdService;->access$800(Lcom/android/server/NsdService;Landroid/os/Message;II)V

    goto/16 :goto_0

    .line 343
    .end local v0    # "clientInfo":Lcom/android/server/NsdService$ClientInfo;
    .end local v3    # "id":I
    :sswitch_5
    const-string v6, "NsdService"

    const-string v7, "Register service"

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 344
    iget-object v6, p0, Lcom/android/server/NsdService$NsdStateMachine$EnabledState;->this$1:Lcom/android/server/NsdService$NsdStateMachine;

    iget-object v6, v6, Lcom/android/server/NsdService$NsdStateMachine;->this$0:Lcom/android/server/NsdService;

    invoke-static {v6}, Lcom/android/server/NsdService;->access$500(Lcom/android/server/NsdService;)Ljava/util/HashMap;

    move-result-object v6

    iget-object v7, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/NsdService$ClientInfo;

    .line 345
    .restart local v0    # "clientInfo":Lcom/android/server/NsdService$ClientInfo;
    invoke-direct {p0, v0}, Lcom/android/server/NsdService$NsdStateMachine$EnabledState;->requestLimitReached(Lcom/android/server/NsdService$ClientInfo;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 346
    iget-object v6, p0, Lcom/android/server/NsdService$NsdStateMachine$EnabledState;->this$1:Lcom/android/server/NsdService$NsdStateMachine;

    iget-object v6, v6, Lcom/android/server/NsdService$NsdStateMachine;->this$0:Lcom/android/server/NsdService;

    invoke-static {v6, p1, v12, v9}, Lcom/android/server/NsdService;->access$800(Lcom/android/server/NsdService;Landroid/os/Message;II)V

    goto/16 :goto_0

    .line 351
    :cond_5
    iget-object v6, p0, Lcom/android/server/NsdService$NsdStateMachine$EnabledState;->this$1:Lcom/android/server/NsdService$NsdStateMachine;

    iget-object v6, v6, Lcom/android/server/NsdService$NsdStateMachine;->this$0:Lcom/android/server/NsdService;

    invoke-static {v6}, Lcom/android/server/NsdService;->access$1800(Lcom/android/server/NsdService;)I

    move-result v3

    .line 352
    .restart local v3    # "id":I
    iget-object v6, p0, Lcom/android/server/NsdService$NsdStateMachine$EnabledState;->this$1:Lcom/android/server/NsdService$NsdStateMachine;

    iget-object v7, v6, Lcom/android/server/NsdService$NsdStateMachine;->this$0:Lcom/android/server/NsdService;

    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Landroid/net/nsd/NsdServiceInfo;

    invoke-static {v7, v3, v6}, Lcom/android/server/NsdService;->access$2300(Lcom/android/server/NsdService;ILandroid/net/nsd/NsdServiceInfo;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 353
    const-string v6, "NsdService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Register "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 354
    iget v6, p1, Landroid/os/Message;->arg2:I

    iget v7, p1, Landroid/os/Message;->what:I

    invoke-direct {p0, v6, v3, v0, v7}, Lcom/android/server/NsdService$NsdStateMachine$EnabledState;->storeRequestMap(IILcom/android/server/NsdService$ClientInfo;I)V

    goto/16 :goto_0

    .line 357
    :cond_6
    iget-object v6, p0, Lcom/android/server/NsdService$NsdStateMachine$EnabledState;->this$1:Lcom/android/server/NsdService$NsdStateMachine;

    iget-object v6, v6, Lcom/android/server/NsdService$NsdStateMachine;->this$0:Lcom/android/server/NsdService;

    invoke-static {v6, v3}, Lcom/android/server/NsdService;->access$2400(Lcom/android/server/NsdService;I)Z

    .line 358
    iget-object v6, p0, Lcom/android/server/NsdService$NsdStateMachine$EnabledState;->this$1:Lcom/android/server/NsdService$NsdStateMachine;

    iget-object v6, v6, Lcom/android/server/NsdService$NsdStateMachine;->this$0:Lcom/android/server/NsdService;

    invoke-static {v6, p1, v12, v8}, Lcom/android/server/NsdService;->access$800(Lcom/android/server/NsdService;Landroid/os/Message;II)V

    goto/16 :goto_0

    .line 363
    .end local v0    # "clientInfo":Lcom/android/server/NsdService$ClientInfo;
    .end local v3    # "id":I
    :sswitch_6
    const-string v6, "NsdService"

    const-string v7, "unregister service"

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 364
    iget-object v6, p0, Lcom/android/server/NsdService$NsdStateMachine$EnabledState;->this$1:Lcom/android/server/NsdService$NsdStateMachine;

    iget-object v6, v6, Lcom/android/server/NsdService$NsdStateMachine;->this$0:Lcom/android/server/NsdService;

    invoke-static {v6}, Lcom/android/server/NsdService;->access$500(Lcom/android/server/NsdService;)Ljava/util/HashMap;

    move-result-object v6

    iget-object v7, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/NsdService$ClientInfo;

    .line 366
    .restart local v0    # "clientInfo":Lcom/android/server/NsdService$ClientInfo;
    :try_start_1
    invoke-static {v0}, Lcom/android/server/NsdService$ClientInfo;->access$1300(Lcom/android/server/NsdService$ClientInfo;)Landroid/util/SparseArray;

    move-result-object v6

    iget v7, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v6, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v3

    .line 372
    .restart local v3    # "id":I
    iget v6, p1, Landroid/os/Message;->arg2:I

    invoke-direct {p0, v6, v3, v0}, Lcom/android/server/NsdService$NsdStateMachine$EnabledState;->removeRequestMap(IILcom/android/server/NsdService$ClientInfo;)V

    .line 373
    iget-object v6, p0, Lcom/android/server/NsdService$NsdStateMachine$EnabledState;->this$1:Lcom/android/server/NsdService$NsdStateMachine;

    iget-object v6, v6, Lcom/android/server/NsdService$NsdStateMachine;->this$0:Lcom/android/server/NsdService;

    invoke-static {v6, v3}, Lcom/android/server/NsdService;->access$2400(Lcom/android/server/NsdService;I)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 374
    iget-object v6, p0, Lcom/android/server/NsdService$NsdStateMachine$EnabledState;->this$1:Lcom/android/server/NsdService$NsdStateMachine;

    iget-object v6, v6, Lcom/android/server/NsdService$NsdStateMachine;->this$0:Lcom/android/server/NsdService;

    const v7, 0x6000e

    invoke-static {v6, p1, v7}, Lcom/android/server/NsdService;->access$2200(Lcom/android/server/NsdService;Landroid/os/Message;I)V

    goto/16 :goto_0

    .line 367
    .end local v3    # "id":I
    :catch_1
    move-exception v1

    .line 368
    .restart local v1    # "e":Ljava/lang/NullPointerException;
    iget-object v6, p0, Lcom/android/server/NsdService$NsdStateMachine$EnabledState;->this$1:Lcom/android/server/NsdService$NsdStateMachine;

    iget-object v6, v6, Lcom/android/server/NsdService$NsdStateMachine;->this$0:Lcom/android/server/NsdService;

    const v7, 0x6000d

    invoke-static {v6, p1, v7, v8}, Lcom/android/server/NsdService;->access$800(Lcom/android/server/NsdService;Landroid/os/Message;II)V

    goto/16 :goto_0

    .line 376
    .end local v1    # "e":Ljava/lang/NullPointerException;
    .restart local v3    # "id":I
    :cond_7
    iget-object v6, p0, Lcom/android/server/NsdService$NsdStateMachine$EnabledState;->this$1:Lcom/android/server/NsdService$NsdStateMachine;

    iget-object v6, v6, Lcom/android/server/NsdService$NsdStateMachine;->this$0:Lcom/android/server/NsdService;

    const v7, 0x6000d

    invoke-static {v6, p1, v7, v8}, Lcom/android/server/NsdService;->access$800(Lcom/android/server/NsdService;Landroid/os/Message;II)V

    goto/16 :goto_0

    .line 381
    .end local v0    # "clientInfo":Lcom/android/server/NsdService$ClientInfo;
    .end local v3    # "id":I
    :sswitch_7
    const-string v6, "NsdService"

    const-string v7, "Resolve service"

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 382
    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Landroid/net/nsd/NsdServiceInfo;

    .line 383
    .restart local v5    # "servInfo":Landroid/net/nsd/NsdServiceInfo;
    iget-object v6, p0, Lcom/android/server/NsdService$NsdStateMachine$EnabledState;->this$1:Lcom/android/server/NsdService$NsdStateMachine;

    iget-object v6, v6, Lcom/android/server/NsdService$NsdStateMachine;->this$0:Lcom/android/server/NsdService;

    invoke-static {v6}, Lcom/android/server/NsdService;->access$500(Lcom/android/server/NsdService;)Ljava/util/HashMap;

    move-result-object v6

    iget-object v7, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/NsdService$ClientInfo;

    .line 386
    .restart local v0    # "clientInfo":Lcom/android/server/NsdService$ClientInfo;
    invoke-static {v0}, Lcom/android/server/NsdService$ClientInfo;->access$2500(Lcom/android/server/NsdService$ClientInfo;)Landroid/net/nsd/NsdServiceInfo;

    move-result-object v6

    if-eqz v6, :cond_8

    .line 387
    iget-object v6, p0, Lcom/android/server/NsdService$NsdStateMachine$EnabledState;->this$1:Lcom/android/server/NsdService$NsdStateMachine;

    iget-object v6, v6, Lcom/android/server/NsdService$NsdStateMachine;->this$0:Lcom/android/server/NsdService;

    const v7, 0x60013

    const/4 v8, 0x3

    invoke-static {v6, p1, v7, v8}, Lcom/android/server/NsdService;->access$800(Lcom/android/server/NsdService;Landroid/os/Message;II)V

    goto/16 :goto_0

    .line 392
    :cond_8
    iget-object v6, p0, Lcom/android/server/NsdService$NsdStateMachine$EnabledState;->this$1:Lcom/android/server/NsdService$NsdStateMachine;

    iget-object v6, v6, Lcom/android/server/NsdService$NsdStateMachine;->this$0:Lcom/android/server/NsdService;

    invoke-static {v6}, Lcom/android/server/NsdService;->access$1800(Lcom/android/server/NsdService;)I

    move-result v3

    .line 393
    .restart local v3    # "id":I
    iget-object v6, p0, Lcom/android/server/NsdService$NsdStateMachine$EnabledState;->this$1:Lcom/android/server/NsdService$NsdStateMachine;

    iget-object v6, v6, Lcom/android/server/NsdService$NsdStateMachine;->this$0:Lcom/android/server/NsdService;

    invoke-static {v6, v3, v5}, Lcom/android/server/NsdService;->access$2600(Lcom/android/server/NsdService;ILandroid/net/nsd/NsdServiceInfo;)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 394
    new-instance v6, Landroid/net/nsd/NsdServiceInfo;

    invoke-direct {v6}, Landroid/net/nsd/NsdServiceInfo;-><init>()V

    invoke-static {v0, v6}, Lcom/android/server/NsdService$ClientInfo;->access$2502(Lcom/android/server/NsdService$ClientInfo;Landroid/net/nsd/NsdServiceInfo;)Landroid/net/nsd/NsdServiceInfo;

    .line 395
    iget v6, p1, Landroid/os/Message;->arg2:I

    iget v7, p1, Landroid/os/Message;->what:I

    invoke-direct {p0, v6, v3, v0, v7}, Lcom/android/server/NsdService$NsdStateMachine$EnabledState;->storeRequestMap(IILcom/android/server/NsdService$ClientInfo;I)V

    goto/16 :goto_0

    .line 397
    :cond_9
    iget-object v6, p0, Lcom/android/server/NsdService$NsdStateMachine$EnabledState;->this$1:Lcom/android/server/NsdService$NsdStateMachine;

    iget-object v6, v6, Lcom/android/server/NsdService$NsdStateMachine;->this$0:Lcom/android/server/NsdService;

    const v7, 0x60013

    invoke-static {v6, p1, v7, v8}, Lcom/android/server/NsdService;->access$800(Lcom/android/server/NsdService;Landroid/os/Message;II)V

    goto/16 :goto_0

    .line 402
    .end local v0    # "clientInfo":Lcom/android/server/NsdService$ClientInfo;
    .end local v3    # "id":I
    .end local v5    # "servInfo":Landroid/net/nsd/NsdServiceInfo;
    :sswitch_8
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/android/server/NsdService$NativeEvent;

    .line 403
    .local v2, "event":Lcom/android/server/NsdService$NativeEvent;
    iget v6, v2, Lcom/android/server/NsdService$NativeEvent;->code:I

    iget-object v7, v2, Lcom/android/server/NsdService$NativeEvent;->raw:Ljava/lang/String;

    iget-object v8, v2, Lcom/android/server/NsdService$NativeEvent;->cooked:[Ljava/lang/String;

    invoke-direct {p0, v6, v7, v8}, Lcom/android/server/NsdService$NsdStateMachine$EnabledState;->handleNativeEvent(ILjava/lang/String;[Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 404
    const/4 v4, 0x0

    goto/16 :goto_0

    .line 282
    nop

    :sswitch_data_0
    .sparse-switch
        0x11000 -> :sswitch_0
        0x11004 -> :sswitch_1
        0x60001 -> :sswitch_3
        0x60006 -> :sswitch_4
        0x60009 -> :sswitch_5
        0x6000c -> :sswitch_6
        0x60012 -> :sswitch_7
        0x60019 -> :sswitch_2
        0x6001a -> :sswitch_8
    .end sparse-switch
.end method