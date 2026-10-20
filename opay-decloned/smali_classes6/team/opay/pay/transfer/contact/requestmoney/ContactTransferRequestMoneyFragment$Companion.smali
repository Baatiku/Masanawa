.class public final Lteam/opay/pay/transfer/contact/requestmoney/ContactTransferRequestMoneyFragment$Companion;
.super Ljava/lang/Object;
.source "ContactTransferRequestMoneyFragment.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lteam/opay/pay/transfer/contact/requestmoney/ContactTransferRequestMoneyFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0017\u0010\u0007\u001a\u00020\u00062\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u00a2\u0006\u0004\u0008\u0007\u0010\u0008\u00a8\u0006\t"
    }
    d2 = {
        "Lteam/opay/pay/transfer/contact/requestmoney/ContactTransferRequestMoneyFragment$Companion;",
        "",
        "<init>",
        "()V",
        "Lteam/opay/pay/transfer/contact/bean/ContactTransferDispatchData;",
        "dispatchData",
        "Lteam/opay/pay/transfer/contact/requestmoney/ContactTransferRequestMoneyFragment;",
        "a",
        "(Lteam/opay/pay/transfer/contact/bean/ContactTransferDispatchData;)Lteam/opay/pay/transfer/contact/requestmoney/ContactTransferRequestMoneyFragment;",
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
    invoke-direct {p0}, Lteam/opay/pay/transfer/contact/requestmoney/ContactTransferRequestMoneyFragment$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lteam/opay/pay/transfer/contact/bean/ContactTransferDispatchData;)Lteam/opay/pay/transfer/contact/requestmoney/ContactTransferRequestMoneyFragment;
    .locals 2
    .param p1    # Lteam/opay/pay/transfer/contact/bean/ContactTransferDispatchData;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    new-instance v0, Lteam/opay/pay/transfer/contact/requestmoney/ContactTransferRequestMoneyFragment;

    .line 2
    .line 3
    invoke-direct {v0}, Lteam/opay/pay/transfer/contact/requestmoney/ContactTransferRequestMoneyFragment;-><init>()V

    .line 4
    .line 5
    .line 6
    sget-object v1, Lteam/opay/core/android/DataDispatchRepository;->c:Lteam/opay/core/android/DataDispatchRepository$Companion;

    .line 7
    .line 8
    invoke-virtual {v1}, Lteam/opay/core/android/DataDispatchRepository$Companion;->a()Lteam/opay/core/android/DataDispatchRepository;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-virtual {v1, p1}, Lteam/opay/core/android/DataDispatchRepository;->f(Lteam/opay/pay/transfer/contact/bean/ContactTransferDispatchData;)V

    .line 13
    .line 14
    .line 15
    return-object v0
.end method
