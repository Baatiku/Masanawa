.class public final Lteam/opay/pay/cashio/CashOutKnownFragment$Companion;
.super Ljava/lang/Object;
.source "CashOutKnownFragment.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lteam/opay/pay/cashio/CashOutKnownFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u001d\u0010\t\u001a\u00020\u00082\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0006\u00a2\u0006\u0004\u0008\t\u0010\nR\u0014\u0010\u000b\u001a\u00020\u00048\u0002X\u0082D\u00a2\u0006\u0006\n\u0004\u0008\u000b\u0010\u000c\u00a8\u0006\r"
    }
    d2 = {
        "Lteam/opay/pay/cashio/CashOutKnownFragment$Companion;",
        "",
        "<init>",
        "()V",
        "",
        "amount",
        "Lteam/opay/pay/transfer/contact/bean/ContactTransferDispatchData;",
        "data",
        "Lteam/opay/pay/cashio/CashOutKnownFragment;",
        "a",
        "(Ljava/lang/String;Lteam/opay/pay/transfer/contact/bean/ContactTransferDispatchData;)Lteam/opay/pay/cashio/CashOutKnownFragment;",
        "KEY_AMOUNT",
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
    invoke-direct {p0}, Lteam/opay/pay/cashio/CashOutKnownFragment$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Lteam/opay/pay/transfer/contact/bean/ContactTransferDispatchData;)Lteam/opay/pay/cashio/CashOutKnownFragment;
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lteam/opay/pay/transfer/contact/bean/ContactTransferDispatchData;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "amount"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "data"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    new-instance v0, Lteam/opay/pay/cashio/CashOutKnownFragment;

    .line 12
    .line 13
    invoke-direct {v0}, Lteam/opay/pay/cashio/CashOutKnownFragment;-><init>()V

    .line 14
    .line 15
    .line 16
    new-instance v1, Landroid/os/Bundle;

    .line 17
    .line 18
    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 19
    .line 20
    .line 21
    invoke-static {}, Lteam/opay/pay/cashio/CashOutKnownFragment;->l1()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    invoke-virtual {v1, v2, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    sget-object p1, Lteam/opay/core/android/DataDispatchRepository;->c:Lteam/opay/core/android/DataDispatchRepository$Companion;

    .line 29
    .line 30
    invoke-virtual {p1}, Lteam/opay/core/android/DataDispatchRepository$Companion;->a()Lteam/opay/core/android/DataDispatchRepository;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    invoke-virtual {p1, p2}, Lteam/opay/core/android/DataDispatchRepository;->f(Lteam/opay/pay/transfer/contact/bean/ContactTransferDispatchData;)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 38
    .line 39
    .line 40
    return-object v0
.end method
