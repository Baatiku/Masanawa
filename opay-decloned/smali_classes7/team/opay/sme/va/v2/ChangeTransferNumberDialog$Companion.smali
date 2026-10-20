.class public final Lteam/opay/sme/va/v2/ChangeTransferNumberDialog$Companion;
.super Ljava/lang/Object;
.source "ChangeTransferNumberDialog.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lteam/opay/sme/va/v2/ChangeTransferNumberDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0011\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\'\u0010\t\u001a\u00020\u00082\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u00042\u000e\u0010\u0007\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u0006\u00a2\u0006\u0004\u0008\t\u0010\n\u00a8\u0006\u000b"
    }
    d2 = {
        "Lteam/opay/sme/va/v2/ChangeTransferNumberDialog$Companion;",
        "",
        "<init>",
        "()V",
        "Lteam/opay/business/provider/smeVa/TransferNumberInfo;",
        "selected",
        "",
        "list",
        "Lteam/opay/sme/va/v2/ChangeTransferNumberDialog;",
        "a",
        "(Lteam/opay/business/provider/smeVa/TransferNumberInfo;[Lteam/opay/business/provider/smeVa/TransferNumberInfo;)Lteam/opay/sme/va/v2/ChangeTransferNumberDialog;",
        "sme-va_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
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
    invoke-direct {p0}, Lteam/opay/sme/va/v2/ChangeTransferNumberDialog$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lteam/opay/business/provider/smeVa/TransferNumberInfo;[Lteam/opay/business/provider/smeVa/TransferNumberInfo;)Lteam/opay/sme/va/v2/ChangeTransferNumberDialog;
    .locals 3
    .param p1    # Lteam/opay/business/provider/smeVa/TransferNumberInfo;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # [Lteam/opay/business/provider/smeVa/TransferNumberInfo;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    new-instance v0, Lteam/opay/sme/va/v2/ChangeTransferNumberDialog;

    .line 2
    .line 3
    invoke-direct {v0}, Lteam/opay/sme/va/v2/ChangeTransferNumberDialog;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v1, Landroid/os/Bundle;

    .line 7
    .line 8
    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 9
    .line 10
    .line 11
    const-string v2, "list"

    .line 12
    .line 13
    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 14
    .line 15
    .line 16
    const-string p2, "selected"

    .line 17
    .line 18
    invoke-virtual {v1, p2, p1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 22
    .line 23
    .line 24
    return-object v0
.end method
