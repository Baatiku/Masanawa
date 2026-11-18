.class public final Lteam/opay/pay/update/dialog/AppUpdateDialog$Companion;
.super Ljava/lang/Object;
.source "AppUpdateDialog.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lteam/opay/pay/update/dialog/AppUpdateDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0004\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J!\u0010\t\u001a\u00020\u00082\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u00042\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u0006\u00a2\u0006\u0004\u0008\t\u0010\nR\u0014\u0010\u000c\u001a\u00020\u000b8\u0002X\u0082T\u00a2\u0006\u0006\n\u0004\u0008\u000c\u0010\rR\u0014\u0010\u000e\u001a\u00020\u000b8\u0002X\u0082T\u00a2\u0006\u0006\n\u0004\u0008\u000e\u0010\r\u00a8\u0006\u000f"
    }
    d2 = {
        "Lteam/opay/pay/update/dialog/AppUpdateDialog$Companion;",
        "",
        "<init>",
        "()V",
        "Lteam/opay/pay/update/bean/VersionData;",
        "versionData",
        "Lteam/opay/pay/update/dialog/UpgradeDialogStyle;",
        "dialogStyle",
        "Lteam/opay/pay/update/dialog/AppUpdateDialog;",
        "a",
        "(Lteam/opay/pay/update/bean/VersionData;Lteam/opay/pay/update/dialog/UpgradeDialogStyle;)Lteam/opay/pay/update/dialog/AppUpdateDialog;",
        "",
        "KEY_DATA",
        "Ljava/lang/String;",
        "TAG",
        "update_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x6,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lteam/opay/pay/update/dialog/AppUpdateDialog$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lteam/opay/pay/update/bean/VersionData;Lteam/opay/pay/update/dialog/UpgradeDialogStyle;)Lteam/opay/pay/update/dialog/AppUpdateDialog;
    .locals 2
    .param p1    # Lteam/opay/pay/update/bean/VersionData;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Lteam/opay/pay/update/dialog/UpgradeDialogStyle;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "dialogStyle"

    .line 2
    .line 3
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Lteam/opay/pay/update/dialog/AppUpdateDialog;

    .line 7
    .line 8
    invoke-direct {v0}, Lteam/opay/pay/update/dialog/AppUpdateDialog;-><init>()V

    .line 9
    .line 10
    .line 11
    invoke-static {v0, p2}, Lteam/opay/pay/update/dialog/AppUpdateDialog;->F(Lteam/opay/pay/update/dialog/AppUpdateDialog;Lteam/opay/pay/update/dialog/UpgradeDialogStyle;)V

    .line 12
    .line 13
    .line 14
    new-instance p2, Landroid/os/Bundle;

    .line 15
    .line 16
    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    .line 17
    .line 18
    .line 19
    const-string v1, "key_data"

    .line 20
    .line 21
    invoke-virtual {p2, v1, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0, p2}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 25
    .line 26
    .line 27
    return-object v0
.end method
