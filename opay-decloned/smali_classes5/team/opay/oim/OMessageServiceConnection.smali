.class public Lteam/opay/oim/OMessageServiceConnection;
.super Ljava/lang/Object;
.source "OMessageServiceConnection.kt"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0007\u0008\u0016\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0019\u0010\u0007\u001a\u00020\u00062\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0004H\u0016\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J#\u0010\u000c\u001a\u00020\u00062\u0008\u0010\t\u001a\u0004\u0018\u00010\u00042\u0008\u0010\u000b\u001a\u0004\u0018\u00010\nH\u0016\u00a2\u0006\u0004\u0008\u000c\u0010\rR\u001c\u0010\u0012\u001a\u0008\u0018\u00010\u000eR\u00020\u000f8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0010\u0010\u0011R\"\u0010\u0016\u001a\u00020\u00138\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0014\u0010\u0015\u001a\u0004\u0008\u0016\u0010\u0017\"\u0004\u0008\u0018\u0010\u0019\u00a8\u0006\u001a"
    }
    d2 = {
        "Lteam/opay/oim/OMessageServiceConnection;",
        "Landroid/content/ServiceConnection;",
        "<init>",
        "()V",
        "Landroid/content/ComponentName;",
        "p0",
        "",
        "onServiceDisconnected",
        "(Landroid/content/ComponentName;)V",
        "componentName",
        "Landroid/os/IBinder;",
        "iBinder",
        "onServiceConnected",
        "(Landroid/content/ComponentName;Landroid/os/IBinder;)V",
        "Lteam/opay/oim/manager/im/MQTTService$CustomBinder;",
        "Lteam/opay/oim/manager/im/MQTTService;",
        "a",
        "Lteam/opay/oim/manager/im/MQTTService$CustomBinder;",
        "customBinder",
        "",
        "b",
        "Z",
        "isConnected",
        "()Z",
        "setConnected",
        "(Z)V",
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
.field public a:Lteam/opay/oim/manager/im/MQTTService$CustomBinder;

.field public b:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 0
    .param p1    # Landroid/content/ComponentName;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Landroid/os/IBinder;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    if-eqz p2, :cond_0

    .line 2
    .line 3
    check-cast p2, Lteam/opay/oim/manager/im/MQTTService$CustomBinder;

    .line 4
    .line 5
    iput-object p2, p0, Lteam/opay/oim/OMessageServiceConnection;->a:Lteam/opay/oim/manager/im/MQTTService$CustomBinder;

    .line 6
    .line 7
    sget-object p1, Lada;->a:Lada;

    .line 8
    .line 9
    const-string p2, "onServiceConnected"

    .line 10
    .line 11
    invoke-virtual {p1, p2}, Lada;->a(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    const/4 p1, 0x1

    .line 15
    iput-boolean p1, p0, Lteam/opay/oim/OMessageServiceConnection;->b:Z

    .line 16
    .line 17
    return-void

    .line 18
    :cond_0
    new-instance p1, Lkotlin/TypeCastException;

    .line 19
    .line 20
    const-string p2, "null cannot be cast to non-null type team.opay.oim.manager.im.MQTTService.CustomBinder"

    .line 21
    .line 22
    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    throw p1
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1
    .param p1    # Landroid/content/ComponentName;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    sget-object p1, Lada;->a:Lada;

    .line 2
    .line 3
    const-string v0, "onServiceDisconnected"

    .line 4
    .line 5
    invoke-virtual {p1, v0}, Lada;->a(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const/4 p1, 0x0

    .line 9
    iput-boolean p1, p0, Lteam/opay/oim/OMessageServiceConnection;->b:Z

    .line 10
    .line 11
    const/4 p1, 0x0

    .line 12
    iput-object p1, p0, Lteam/opay/oim/OMessageServiceConnection;->a:Lteam/opay/oim/manager/im/MQTTService$CustomBinder;

    .line 13
    .line 14
    return-void
.end method
