.class public final Lteam/opay/core/common/base/BasePermissionDialog$a;
.super Ljava/util/TimerTask;
.source "BasePermissionDialog.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lteam/opay/core/common/base/BasePermissionDialog;->D0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0011\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0003*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u000f\u0010\u0003\u001a\u00020\u0002H\u0016\u00a2\u0006\u0004\u0008\u0003\u0010\u0004\u00a8\u0006\u0005"
    }
    d2 = {
        "team/opay/core/common/base/BasePermissionDialog$a",
        "Ljava/util/TimerTask;",
        "",
        "run",
        "()V",
        "common-base_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field public final synthetic a:Lteam/opay/core/common/base/BasePermissionDialog;


# direct methods
.method public constructor <init>(Lteam/opay/core/common/base/BasePermissionDialog;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lteam/opay/core/common/base/BasePermissionDialog$a;->a:Lteam/opay/core/common/base/BasePermissionDialog;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lteam/opay/core/common/base/BasePermissionDialog$a;->a:Lteam/opay/core/common/base/BasePermissionDialog;

    .line 2
    .line 3
    invoke-virtual {v0}, Lteam/opay/core/common/base/BasePermissionDialog;->A0()Landroid/bluetooth/BluetoothAdapter;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    const/4 v1, 0x1

    .line 14
    if-ne v0, v1, :cond_0

    .line 15
    .line 16
    iget-object v0, p0, Lteam/opay/core/common/base/BasePermissionDialog$a;->a:Lteam/opay/core/common/base/BasePermissionDialog;

    .line 17
    .line 18
    invoke-static {v0}, Lteam/opay/core/common/base/BasePermissionDialog;->m0(Lteam/opay/core/common/base/BasePermissionDialog;)V

    .line 19
    .line 20
    .line 21
    iget-object v0, p0, Lteam/opay/core/common/base/BasePermissionDialog$a;->a:Lteam/opay/core/common/base/BasePermissionDialog;

    .line 22
    .line 23
    invoke-static {v0}, Lteam/opay/core/common/base/BasePermissionDialog;->l0(Lteam/opay/core/common/base/BasePermissionDialog;)V

    .line 24
    .line 25
    .line 26
    :cond_0
    return-void
.end method
