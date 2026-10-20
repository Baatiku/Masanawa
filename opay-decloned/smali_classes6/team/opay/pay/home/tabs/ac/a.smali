.class public interface abstract Lteam/opay/pay/home/tabs/ac/a;
.super Ljava/lang/Object;
.source "TransactionBeneficiarySearchManager.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lteam/opay/pay/home/tabs/ac/a$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008f\u0018\u00002\u00020\u0001J\u0017\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H&\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J/\u0010\r\u001a\u00020\u00042\u000e\u0010\t\u001a\n\u0012\u0004\u0012\u00020\u0008\u0018\u00010\u00072\u0006\u0010\u000b\u001a\u00020\n2\u0006\u0010\u000c\u001a\u00020\u0002H\u0016\u00a2\u0006\u0004\u0008\r\u0010\u000eJ\u0017\u0010\u0011\u001a\u00020\u00042\u0006\u0010\u0010\u001a\u00020\u000fH&\u00a2\u0006\u0004\u0008\u0011\u0010\u0012\u00a8\u0006\u0013"
    }
    d2 = {
        "Lteam/opay/pay/home/tabs/ac/a;",
        "",
        "",
        "startSearch",
        "",
        "a",
        "(Z)V",
        "",
        "Lteam/opay/pay/transfer/contact/bean/TransferContactData;",
        "result",
        "",
        "searchNumber",
        "fromPaste",
        "c",
        "(Ljava/util/List;Ljava/lang/String;Z)V",
        "Lteam/opay/pay/home/tabs/ac/TransactionBeneficiarySearchResultData;",
        "data",
        "b",
        "(Lteam/opay/pay/home/tabs/ac/TransactionBeneficiarySearchResultData;)V",
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


# virtual methods
.method public abstract a(Z)V
.end method

.method public abstract b(Lteam/opay/pay/home/tabs/ac/TransactionBeneficiarySearchResultData;)V
    .param p1    # Lteam/opay/pay/home/tabs/ac/TransactionBeneficiarySearchResultData;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method

.method public abstract c(Ljava/util/List;Ljava/lang/String;Z)V
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lteam/opay/pay/transfer/contact/bean/TransferContactData;",
            ">;",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation
.end method
