.class public final Lteam/opay/oim/manager/im/MQTTService$CustomBinder;
.super Landroid/os/Binder;
.source "MQTTService.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lteam/opay/oim/manager/im/MQTTService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "CustomBinder"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u0086\u0004\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003\u00a8\u0006\u0004"
    }
    d2 = {
        "Lteam/opay/oim/manager/im/MQTTService$CustomBinder;",
        "Landroid/os/Binder;",
        "<init>",
        "(Lteam/opay/oim/manager/im/MQTTService;)V",
        "oim_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x0
    }
.end annotation


# instance fields
.field public final synthetic a:Lteam/opay/oim/manager/im/MQTTService;


# direct methods
.method public constructor <init>(Lteam/opay/oim/manager/im/MQTTService;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lteam/opay/oim/manager/im/MQTTService$CustomBinder;->a:Lteam/opay/oim/manager/im/MQTTService;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method
