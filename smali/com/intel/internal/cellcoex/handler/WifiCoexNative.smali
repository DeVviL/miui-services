.class public Lcom/intel/internal/cellcoex/handler/WifiCoexNative;
.super Ljava/lang/Object;
.source "WifiCoexNative.java"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "suphostjni"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static native sendCommandNative(Ljava/lang/String;)Ljava/lang/String;
.end method


# virtual methods
.method public wifiCoexSendCommand(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-static {p1}, Lcom/intel/internal/cellcoex/handler/Native;->sendCommandNative(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
