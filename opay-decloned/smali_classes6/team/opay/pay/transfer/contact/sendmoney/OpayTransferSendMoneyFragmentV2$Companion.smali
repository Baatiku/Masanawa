.class public final Lteam/opay/pay/transfer/contact/sendmoney/OpayTransferSendMoneyFragmentV2$Companion;
.super Ljava/lang/Object;
.source "OpayTransferSendMoneyFragmentV2.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lteam/opay/pay/transfer/contact/sendmoney/OpayTransferSendMoneyFragmentV2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u001f\u0010\t\u001a\u00020\u00082\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u00042\u0006\u0010\u0007\u001a\u00020\u0006\u00a2\u0006\u0004\u0008\t\u0010\nR\u0014\u0010\u000b\u001a\u00020\u00068\u0002X\u0082T\u00a2\u0006\u0006\n\u0004\u0008\u000b\u0010\u000c\u00a8\u0006\r"
    }
    d2 = {
        "Lteam/opay/pay/transfer/contact/sendmoney/OpayTransferSendMoneyFragmentV2$Companion;",
        "",
        "<init>",
        "()V",
        "",
        "isNewUser",
        "",
        "fromService",
        "Lteam/opay/pay/transfer/contact/sendmoney/OpayTransferSendMoneyFragmentV2;",
        "a",
        "(Ljava/lang/Boolean;Ljava/lang/String;)Lteam/opay/pay/transfer/contact/sendmoney/OpayTransferSendMoneyFragmentV2;",
        "KEY_SCENE_SOURCE",
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
    invoke-direct {p0}, Lteam/opay/pay/transfer/contact/sendmoney/OpayTransferSendMoneyFragmentV2$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Boolean;Ljava/lang/String;)Lteam/opay/pay/transfer/contact/sendmoney/OpayTransferSendMoneyFragmentV2;
    .locals 3
    .param p1    # Ljava/lang/Boolean;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "fromService"

    .line 2
    .line 3
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Lteam/opay/pay/transfer/contact/sendmoney/OpayTransferSendMoneyFragmentV2;

    .line 7
    .line 8
    invoke-direct {v0}, Lteam/opay/pay/transfer/contact/sendmoney/OpayTransferSendMoneyFragmentV2;-><init>()V

    .line 9
    .line 10
    .line 11
    new-instance v1, Landroid/os/Bundle;

    .line 12
    .line 13
    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 14
    .line 15
    .line 16
    if-eqz p1, :cond_0

    .line 17
    .line 18
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 19
    .line 20
    .line 21
    move-result p1

    .line 22
    sget-object v2, Lteam/opay/pay/transfer/contact/sendmoney/BaseTransferSendMoneyFragment;->B:Lteam/opay/pay/transfer/contact/sendmoney/BaseTransferSendMoneyFragment$Companion;

    .line 23
    .line 24
    invoke-virtual {v2}, Lteam/opay/pay/transfer/contact/sendmoney/BaseTransferSendMoneyFragment$Companion;->a()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 29
    .line 30
    .line 31
    const-string p1, "key_scene_source"

    .line 32
    .line 33
    invoke-virtual {v1, p1, p2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    :cond_0
    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 37
    .line 38
    .line 39
    return-object v0
.end method
