.class Landroid/service/securespaces/SecureSpacesService$SecureSpacesExtension;
.super Ljava/lang/Object;
.source "SecureSpacesService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/securespaces/SecureSpacesService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SecureSpacesExtension"
.end annotation


# instance fields
.field public majorVersion:I

.field public minorVersion:I

.field public serviceName:Ljava/lang/String;

.field final synthetic this$0:Landroid/service/securespaces/SecureSpacesService;

.field public userRestrictions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/service/securespaces/SecureSpacesService$UserRestriction;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/service/securespaces/SecureSpacesService;IILjava/lang/String;Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/service/securespaces/SecureSpacesService$UserRestriction;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Landroid/service/securespaces/SecureSpacesService$SecureSpacesExtension;->this$0:Landroid/service/securespaces/SecureSpacesService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Landroid/service/securespaces/SecureSpacesService$SecureSpacesExtension;->majorVersion:I

    iput p3, p0, Landroid/service/securespaces/SecureSpacesService$SecureSpacesExtension;->minorVersion:I

    iput-object p4, p0, Landroid/service/securespaces/SecureSpacesService$SecureSpacesExtension;->serviceName:Ljava/lang/String;

    iput-object p5, p0, Landroid/service/securespaces/SecureSpacesService$SecureSpacesExtension;->userRestrictions:Ljava/util/ArrayList;

    return-void
.end method
