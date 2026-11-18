.class public final Lteam/opay/pay/transfer/contact/view/TransferToOpayAccountFragment$b;
.super Ljava/lang/Object;
.source "TransferToOpayAccountFragment.kt"

# interfaces
.implements Lteam/opay/pay/home/tabs/ac/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lteam/opay/pay/transfer/contact/view/TransferToOpayAccountFragment;->A0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00001\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0004*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0017\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J/\u0010\r\u001a\u00020\u00042\u000e\u0010\t\u001a\n\u0012\u0004\u0012\u00020\u0008\u0018\u00010\u00072\u0006\u0010\u000b\u001a\u00020\n2\u0006\u0010\u000c\u001a\u00020\u0002H\u0016\u00a2\u0006\u0004\u0008\r\u0010\u000eJ\u0017\u0010\u0011\u001a\u00020\u00042\u0006\u0010\u0010\u001a\u00020\u000fH\u0016\u00a2\u0006\u0004\u0008\u0011\u0010\u0012\u00a8\u0006\u0013"
    }
    d2 = {
        "team/opay/pay/transfer/contact/view/TransferToOpayAccountFragment$b",
        "Lteam/opay/pay/home/tabs/ac/a;",
        "",
        "startSearch",
        "",
        "a",
        "(Z)V",
        "",
        "Lteam/opay/pay/transfer/contact/bean/TransferContactData;",
        "result",
        "",
        "searchKey",
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


# instance fields
.field public final synthetic a:Lteam/opay/pay/transfer/contact/view/TransferToOpayAccountFragment;


# direct methods
.method public constructor <init>(Lteam/opay/pay/transfer/contact/view/TransferToOpayAccountFragment;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lteam/opay/pay/transfer/contact/view/TransferToOpayAccountFragment$b;->a:Lteam/opay/pay/transfer/contact/view/TransferToOpayAccountFragment;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public a(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lteam/opay/pay/transfer/contact/view/TransferToOpayAccountFragment$b;->a:Lteam/opay/pay/transfer/contact/view/TransferToOpayAccountFragment;

    .line 2
    .line 3
    invoke-static {v0}, Lteam/opay/pay/transfer/contact/view/TransferToOpayAccountFragment;->w0(Lteam/opay/pay/transfer/contact/view/TransferToOpayAccountFragment;)Landroidx/lifecycle/MutableLiveData;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    invoke-virtual {v0, p1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public b(Lteam/opay/pay/home/tabs/ac/TransactionBeneficiarySearchResultData;)V
    .locals 1

    .line 1
    const-string v0, "data"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lteam/opay/pay/transfer/contact/view/TransferToOpayAccountFragment$b;->a:Lteam/opay/pay/transfer/contact/view/TransferToOpayAccountFragment;

    .line 7
    .line 8
    invoke-static {v0}, Lteam/opay/pay/transfer/contact/view/TransferToOpayAccountFragment;->x0(Lteam/opay/pay/transfer/contact/view/TransferToOpayAccountFragment;)Landroidx/lifecycle/MutableLiveData;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-virtual {v0, p1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public c(Ljava/util/List;Ljava/lang/String;Z)V
    .locals 1
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

    .line 1
    const-string v0, "searchKey"

    .line 2
    .line 3
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-static {p0, p1, p2, p3}, Lteam/opay/pay/home/tabs/ac/a$a;->a(Lteam/opay/pay/home/tabs/ac/a;Ljava/util/List;Ljava/lang/String;Z)V

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Lteam/opay/pay/transfer/contact/view/TransferToOpayAccountFragment$b;->a:Lteam/opay/pay/transfer/contact/view/TransferToOpayAccountFragment;

    .line 10
    .line 11
    invoke-static {v0, p3}, Lteam/opay/pay/transfer/contact/view/TransferToOpayAccountFragment;->z0(Lteam/opay/pay/transfer/contact/view/TransferToOpayAccountFragment;Z)V

    .line 12
    .line 13
    .line 14
    iget-object p3, p0, Lteam/opay/pay/transfer/contact/view/TransferToOpayAccountFragment$b;->a:Lteam/opay/pay/transfer/contact/view/TransferToOpayAccountFragment;

    .line 15
    .line 16
    invoke-static {p3}, Lteam/opay/pay/transfer/contact/view/TransferToOpayAccountFragment;->y0(Lteam/opay/pay/transfer/contact/view/TransferToOpayAccountFragment;)Landroidx/lifecycle/MutableLiveData;

    .line 17
    .line 18
    .line 19
    move-result-object p3

    .line 20
    new-instance v0, Lkotlin/Pair;

    .line 21
    .line 22
    invoke-direct {v0, p2, p1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {p3, v0}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 26
    .line 27
    .line 28
    return-void
.end method
