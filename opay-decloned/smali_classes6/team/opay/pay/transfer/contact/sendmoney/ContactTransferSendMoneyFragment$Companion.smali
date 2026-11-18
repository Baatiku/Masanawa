.class public final Lteam/opay/pay/transfer/contact/sendmoney/ContactTransferSendMoneyFragment$Companion;
.super Ljava/lang/Object;
.source "ContactTransferSendMoneyFragment.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lteam/opay/pay/transfer/contact/sendmoney/ContactTransferSendMoneyFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J;\u0010\u000c\u001a\u00020\u000b2\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u00042\n\u0008\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u00062\n\u0008\u0002\u0010\u0008\u001a\u0004\u0018\u00010\u00062\n\u0008\u0002\u0010\n\u001a\u0004\u0018\u00010\t\u00a2\u0006\u0004\u0008\u000c\u0010\rR\u0014\u0010\u000e\u001a\u00020\u00068\u0002X\u0082T\u00a2\u0006\u0006\n\u0004\u0008\u000e\u0010\u000fR\u0014\u0010\u0010\u001a\u00020\u00068\u0002X\u0082T\u00a2\u0006\u0006\n\u0004\u0008\u0010\u0010\u000f\u00a8\u0006\u0011"
    }
    d2 = {
        "Lteam/opay/pay/transfer/contact/sendmoney/ContactTransferSendMoneyFragment$Companion;",
        "",
        "<init>",
        "()V",
        "Lteam/opay/core/api/graphql/AASendMoneyPageInfo;",
        "aaPageInfo",
        "",
        "amount",
        "fromService",
        "",
        "isNewAcUser",
        "Lteam/opay/pay/transfer/contact/sendmoney/ContactTransferSendMoneyFragment;",
        "a",
        "(Lteam/opay/core/api/graphql/AASendMoneyPageInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)Lteam/opay/pay/transfer/contact/sendmoney/ContactTransferSendMoneyFragment;",
        "KEY_FROM_SERVICE",
        "Ljava/lang/String;",
        "KEY_AA_PAGE_INFO",
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
    invoke-direct {p0}, Lteam/opay/pay/transfer/contact/sendmoney/ContactTransferSendMoneyFragment$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lteam/opay/core/api/graphql/AASendMoneyPageInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)Lteam/opay/pay/transfer/contact/sendmoney/ContactTransferSendMoneyFragment;
    .locals 3
    .param p1    # Lteam/opay/core/api/graphql/AASendMoneyPageInfo;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4    # Ljava/lang/Boolean;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    new-instance v0, Lteam/opay/pay/transfer/contact/sendmoney/ContactTransferSendMoneyFragment;

    .line 2
    .line 3
    invoke-direct {v0}, Lteam/opay/pay/transfer/contact/sendmoney/ContactTransferSendMoneyFragment;-><init>()V

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
    const-string v2, "amount"

    .line 12
    .line 13
    invoke-virtual {v1, v2, p2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    if-eqz p3, :cond_0

    .line 17
    .line 18
    const-string p2, "key_from_service"

    .line 19
    .line 20
    invoke-virtual {v1, p2, p3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    :cond_0
    if-eqz p4, :cond_1

    .line 24
    .line 25
    invoke-virtual {p4}, Ljava/lang/Boolean;->booleanValue()Z

    .line 26
    .line 27
    .line 28
    move-result p2

    .line 29
    sget-object p3, Lteam/opay/pay/transfer/contact/sendmoney/BaseTransferSendMoneyFragment;->B:Lteam/opay/pay/transfer/contact/sendmoney/BaseTransferSendMoneyFragment$Companion;

    .line 30
    .line 31
    invoke-virtual {p3}, Lteam/opay/pay/transfer/contact/sendmoney/BaseTransferSendMoneyFragment$Companion;->a()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object p3

    .line 35
    invoke-virtual {v1, p3, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 36
    .line 37
    .line 38
    :cond_1
    if-eqz p1, :cond_2

    .line 39
    .line 40
    const-string p2, "key_aa_page_info"

    .line 41
    .line 42
    invoke-virtual {v1, p2, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 43
    .line 44
    .line 45
    :cond_2
    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 46
    .line 47
    .line 48
    return-object v0
.end method
