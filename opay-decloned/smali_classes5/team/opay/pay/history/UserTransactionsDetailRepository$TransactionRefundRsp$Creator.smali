.class public final Lteam/opay/pay/history/UserTransactionsDetailRepository$TransactionRefundRsp$Creator;
.super Ljava/lang/Object;
.source "UserTransactionsDetailRepository.kt"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lteam/opay/pay/history/UserTransactionsDetailRepository$TransactionRefundRsp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Creator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lteam/opay/pay/history/UserTransactionsDetailRepository$TransactionRefundRsp;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    k = 0x3
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

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public final a(Landroid/os/Parcel;)Lteam/opay/pay/history/UserTransactionsDetailRepository$TransactionRefundRsp;
    .locals 6

    .line 1
    const-string v0, "parcel"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    if-nez v2, :cond_0

    .line 19
    .line 20
    const/4 p1, 0x0

    .line 21
    goto :goto_1

    .line 22
    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 23
    .line 24
    .line 25
    move-result v2

    .line 26
    new-instance v3, Ljava/util/ArrayList;

    .line 27
    .line 28
    invoke-direct {v3, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 29
    .line 30
    .line 31
    const/4 v4, 0x0

    .line 32
    :goto_0
    if-eq v4, v2, :cond_1

    .line 33
    .line 34
    sget-object v5, Lteam/opay/pay/history/UserTransactionsDetailRepository$TransactionRefundDetails;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 35
    .line 36
    invoke-interface {v5, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object v5

    .line 40
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 41
    .line 42
    .line 43
    add-int/lit8 v4, v4, 0x1

    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_1
    move-object p1, v3

    .line 47
    :goto_1
    new-instance v2, Lteam/opay/pay/history/UserTransactionsDetailRepository$TransactionRefundRsp;

    .line 48
    .line 49
    invoke-direct {v2, v0, v1, p1}, Lteam/opay/pay/history/UserTransactionsDetailRepository$TransactionRefundRsp;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    .line 50
    .line 51
    .line 52
    return-object v2
.end method

.method public final b(I)[Lteam/opay/pay/history/UserTransactionsDetailRepository$TransactionRefundRsp;
    .locals 0

    .line 1
    new-array p1, p1, [Lteam/opay/pay/history/UserTransactionsDetailRepository$TransactionRefundRsp;

    .line 2
    .line 3
    return-object p1
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lteam/opay/pay/history/UserTransactionsDetailRepository$TransactionRefundRsp$Creator;->a(Landroid/os/Parcel;)Lteam/opay/pay/history/UserTransactionsDetailRepository$TransactionRefundRsp;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lteam/opay/pay/history/UserTransactionsDetailRepository$TransactionRefundRsp$Creator;->b(I)[Lteam/opay/pay/history/UserTransactionsDetailRepository$TransactionRefundRsp;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method
