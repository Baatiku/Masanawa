.class public final Lteam/opay/face/dialog/OFaceFailedKyc2Fragment$Companion;
.super Ljava/lang/Object;
.source "OFaceFailedKyc2Fragment.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lteam/opay/face/dialog/OFaceFailedKyc2Fragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0003\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J)\u0010\u000b\u001a\u00020\n2\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u00042\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u00062\u0006\u0010\t\u001a\u00020\u0008\u00a2\u0006\u0004\u0008\u000b\u0010\u000cR\u0014\u0010\u000e\u001a\u00020\r8\u0002X\u0082T\u00a2\u0006\u0006\n\u0004\u0008\u000e\u0010\u000f\u00a8\u0006\u0010"
    }
    d2 = {
        "Lteam/opay/face/dialog/OFaceFailedKyc2Fragment$Companion;",
        "",
        "<init>",
        "()V",
        "Lteam/opay/face/net/KycFaceRsp$KycDialogRsp;",
        "dialogRsp",
        "Lteam/opay/pay/kyc/base/KycExtensions;",
        "extensions",
        "",
        "allowNoPassCount",
        "Lteam/opay/face/dialog/OFaceFailedKyc2Fragment;",
        "a",
        "(Lteam/opay/face/net/KycFaceRsp$KycDialogRsp;Lteam/opay/pay/kyc/base/KycExtensions;I)Lteam/opay/face/dialog/OFaceFailedKyc2Fragment;",
        "",
        "KEY_EXTENSION",
        "Ljava/lang/String;",
        "sdk_release"
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
    invoke-direct {p0}, Lteam/opay/face/dialog/OFaceFailedKyc2Fragment$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lteam/opay/face/net/KycFaceRsp$KycDialogRsp;Lteam/opay/pay/kyc/base/KycExtensions;I)Lteam/opay/face/dialog/OFaceFailedKyc2Fragment;
    .locals 3
    .param p1    # Lteam/opay/face/net/KycFaceRsp$KycDialogRsp;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Lteam/opay/pay/kyc/base/KycExtensions;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    new-instance v0, Lteam/opay/face/dialog/OFaceFailedKyc2Fragment;

    .line 2
    .line 3
    invoke-direct {v0}, Lteam/opay/face/dialog/OFaceFailedKyc2Fragment;-><init>()V

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
    const-string v2, "key_dialog_data"

    .line 12
    .line 13
    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 14
    .line 15
    .line 16
    const-string p1, "key_extension"

    .line 17
    .line 18
    invoke-virtual {v1, p1, p2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 19
    .line 20
    .line 21
    const-string p1, "key_allow_no_pass_count"

    .line 22
    .line 23
    invoke-virtual {v1, p1, p3}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 27
    .line 28
    .line 29
    return-object v0
.end method
