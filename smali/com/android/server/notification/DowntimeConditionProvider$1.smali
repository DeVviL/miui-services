.class Lcom/android/server/notification/DowntimeConditionProvider$1;
.super Landroid/content/BroadcastReceiver;
.source "DowntimeConditionProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/notification/DowntimeConditionProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/notification/DowntimeConditionProvider;


# direct methods
.method constructor <init>(Lcom/android/server/notification/DowntimeConditionProvider;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/notification/DowntimeConditionProvider$1;->this$0:Lcom/android/server/notification/DowntimeConditionProvider;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 13

    const/4 v12, 0x0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-string v1, "DowntimeConditions.enter"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "DowntimeConditions.exit"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    :cond_0
    const-string v1, "time"

    const-wide/16 v6, 0x0

    invoke-virtual {p2, v1, v6, v7}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v4

    invoke-static {}, Lcom/android/server/notification/DowntimeConditionProvider;->access$100()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "DowntimeConditions"

    const-string v6, "%s scheduled for %s, fired at %s, delta=%s"

    const/4 v7, 0x4

    new-array v7, v7, [Ljava/lang/Object;

    aput-object v0, v7, v12

    const/4 v8, 0x1

    invoke-static {v4, v5}, Lcom/android/server/notification/DowntimeConditionProvider;->access$200(J)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x2

    invoke-static {v2, v3}, Lcom/android/server/notification/DowntimeConditionProvider;->access$200(J)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x3

    sub-long v10, v2, v4

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const-string v1, "DowntimeConditions.enter"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/server/notification/DowntimeConditionProvider$1;->this$0:Lcom/android/server/notification/DowntimeConditionProvider;

    invoke-static {v1}, Lcom/android/server/notification/DowntimeConditionProvider;->access$300(Lcom/android/server/notification/DowntimeConditionProvider;)V

    :goto_0
    iget-object v1, p0, Lcom/android/server/notification/DowntimeConditionProvider$1;->this$0:Lcom/android/server/notification/DowntimeConditionProvider;

    invoke-static {v1}, Lcom/android/server/notification/DowntimeConditionProvider;->access$500(Lcom/android/server/notification/DowntimeConditionProvider;)Lcom/android/server/notification/DowntimeConditionProvider$FiredAlarms;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/notification/DowntimeConditionProvider$FiredAlarms;->clear()V

    :cond_2
    :goto_1
    iget-object v1, p0, Lcom/android/server/notification/DowntimeConditionProvider$1;->this$0:Lcom/android/server/notification/DowntimeConditionProvider;

    invoke-static {v1}, Lcom/android/server/notification/DowntimeConditionProvider;->access$700(Lcom/android/server/notification/DowntimeConditionProvider;)V

    iget-object v1, p0, Lcom/android/server/notification/DowntimeConditionProvider$1;->this$0:Lcom/android/server/notification/DowntimeConditionProvider;

    invoke-static {v1}, Lcom/android/server/notification/DowntimeConditionProvider;->access$800(Lcom/android/server/notification/DowntimeConditionProvider;)V

    return-void

    :cond_3
    iget-object v1, p0, Lcom/android/server/notification/DowntimeConditionProvider$1;->this$0:Lcom/android/server/notification/DowntimeConditionProvider;

    invoke-static {v1, v12}, Lcom/android/server/notification/DowntimeConditionProvider;->access$402(Lcom/android/server/notification/DowntimeConditionProvider;Z)Z

    goto :goto_0

    :cond_4
    const-string v1, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-static {}, Lcom/android/server/notification/DowntimeConditionProvider;->access$100()Z

    move-result v1

    if-eqz v1, :cond_5

    const-string v1, "DowntimeConditions"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "timezone changed to "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    iget-object v1, p0, Lcom/android/server/notification/DowntimeConditionProvider$1;->this$0:Lcom/android/server/notification/DowntimeConditionProvider;

    invoke-static {v1}, Lcom/android/server/notification/DowntimeConditionProvider;->access$600(Lcom/android/server/notification/DowntimeConditionProvider;)Lcom/android/server/notification/DowntimeCalendar;

    move-result-object v1

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v6

    invoke-virtual {v1, v6}, Lcom/android/server/notification/DowntimeCalendar;->setTimeZone(Ljava/util/TimeZone;)V

    iget-object v1, p0, Lcom/android/server/notification/DowntimeConditionProvider$1;->this$0:Lcom/android/server/notification/DowntimeConditionProvider;

    invoke-static {v1}, Lcom/android/server/notification/DowntimeConditionProvider;->access$500(Lcom/android/server/notification/DowntimeConditionProvider;)Lcom/android/server/notification/DowntimeConditionProvider$FiredAlarms;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/notification/DowntimeConditionProvider$FiredAlarms;->clear()V

    goto :goto_1

    :cond_6
    const-string v1, "android.intent.action.TIME_SET"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-static {}, Lcom/android/server/notification/DowntimeConditionProvider;->access$100()Z

    move-result v1

    if-eqz v1, :cond_7

    const-string v1, "DowntimeConditions"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "time changed to "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    iget-object v1, p0, Lcom/android/server/notification/DowntimeConditionProvider$1;->this$0:Lcom/android/server/notification/DowntimeConditionProvider;

    invoke-static {v1}, Lcom/android/server/notification/DowntimeConditionProvider;->access$500(Lcom/android/server/notification/DowntimeConditionProvider;)Lcom/android/server/notification/DowntimeConditionProvider$FiredAlarms;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/notification/DowntimeConditionProvider$FiredAlarms;->clear()V

    goto/16 :goto_1

    :cond_8
    invoke-static {}, Lcom/android/server/notification/DowntimeConditionProvider;->access$100()Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "DowntimeConditions"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " fired at "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1
.end method
