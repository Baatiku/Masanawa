.class public final Lteam/opay/pay/home/tabs/BankListAdapter$BankInfoComparator;
.super Ljava/lang/Object;
.source "BankListAdapter.kt"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lteam/opay/pay/home/tabs/BankListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "BankInfoComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lteam/opay/pay/transfer/contact/adapter/MulDataEntity<",
        "Lteam/opay/pay/home/tabs/BankInfo;",
        ">;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0008\n\u0002\u0008\u0003\u0008\u0000\u0018\u00002\u0010\u0012\u000c\u0012\n\u0012\u0006\u0012\u0004\u0018\u00010\u00030\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J3\u0010\t\u001a\u00020\u00082\u0010\u0010\u0006\u001a\u000c\u0012\u0006\u0012\u0004\u0018\u00010\u0003\u0018\u00010\u00022\u0010\u0010\u0007\u001a\u000c\u0012\u0006\u0012\u0004\u0018\u00010\u0003\u0018\u00010\u0002H\u0016\u00a2\u0006\u0004\u0008\t\u0010\n\u00a8\u0006\u000b"
    }
    d2 = {
        "Lteam/opay/pay/home/tabs/BankListAdapter$BankInfoComparator;",
        "Ljava/util/Comparator;",
        "Lteam/opay/pay/transfer/contact/adapter/MulDataEntity;",
        "Lteam/opay/pay/home/tabs/BankInfo;",
        "<init>",
        "()V",
        "o1",
        "o2",
        "",
        "a",
        "(Lteam/opay/pay/transfer/contact/adapter/MulDataEntity;Lteam/opay/pay/transfer/contact/adapter/MulDataEntity;)I",
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

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public a(Lteam/opay/pay/transfer/contact/adapter/MulDataEntity;Lteam/opay/pay/transfer/contact/adapter/MulDataEntity;)I
    .locals 3
    .param p1    # Lteam/opay/pay/transfer/contact/adapter/MulDataEntity;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Lteam/opay/pay/transfer/contact/adapter/MulDataEntity;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lteam/opay/pay/transfer/contact/adapter/MulDataEntity<",
            "Lteam/opay/pay/home/tabs/BankInfo;",
            ">;",
            "Lteam/opay/pay/transfer/contact/adapter/MulDataEntity<",
            "Lteam/opay/pay/home/tabs/BankInfo;",
            ">;)I"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p2, :cond_0

    .line 3
    .line 4
    invoke-virtual {p2}, Lteam/opay/pay/transfer/contact/adapter/MulDataEntity;->a()Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    move-result-object v1

    .line 8
    check-cast v1, Lteam/opay/pay/home/tabs/BankInfo;

    .line 9
    .line 10
    if-eqz v1, :cond_0

    .line 11
    .line 12
    invoke-virtual {v1}, Lteam/opay/pay/home/tabs/BankInfo;->getTarget()Ljava/lang/Integer;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    if-eqz v1, :cond_0

    .line 17
    .line 18
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    const/4 v1, 0x0

    .line 24
    :goto_0
    if-eqz p1, :cond_1

    .line 25
    .line 26
    invoke-virtual {p1}, Lteam/opay/pay/transfer/contact/adapter/MulDataEntity;->a()Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    check-cast v2, Lteam/opay/pay/home/tabs/BankInfo;

    .line 31
    .line 32
    if-eqz v2, :cond_1

    .line 33
    .line 34
    invoke-virtual {v2}, Lteam/opay/pay/home/tabs/BankInfo;->getTarget()Ljava/lang/Integer;

    .line 35
    .line 36
    .line 37
    move-result-object v2

    .line 38
    if-eqz v2, :cond_1

    .line 39
    .line 40
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 41
    .line 42
    .line 43
    move-result v2

    .line 44
    goto :goto_1

    .line 45
    :cond_1
    const/4 v2, 0x0

    .line 46
    :goto_1
    if-le v1, v2, :cond_2

    .line 47
    .line 48
    const/4 v0, -0x1

    .line 49
    goto :goto_4

    .line 50
    :cond_2
    if-eqz p2, :cond_3

    .line 51
    .line 52
    invoke-virtual {p2}, Lteam/opay/pay/transfer/contact/adapter/MulDataEntity;->a()Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    move-result-object p2

    .line 56
    check-cast p2, Lteam/opay/pay/home/tabs/BankInfo;

    .line 57
    .line 58
    if-eqz p2, :cond_3

    .line 59
    .line 60
    invoke-virtual {p2}, Lteam/opay/pay/home/tabs/BankInfo;->getTarget()Ljava/lang/Integer;

    .line 61
    .line 62
    .line 63
    move-result-object p2

    .line 64
    if-eqz p2, :cond_3

    .line 65
    .line 66
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    .line 67
    .line 68
    .line 69
    move-result p2

    .line 70
    goto :goto_2

    .line 71
    :cond_3
    const/4 p2, 0x0

    .line 72
    :goto_2
    if-eqz p1, :cond_4

    .line 73
    .line 74
    invoke-virtual {p1}, Lteam/opay/pay/transfer/contact/adapter/MulDataEntity;->a()Ljava/lang/Object;

    .line 75
    .line 76
    .line 77
    move-result-object p1

    .line 78
    check-cast p1, Lteam/opay/pay/home/tabs/BankInfo;

    .line 79
    .line 80
    if-eqz p1, :cond_4

    .line 81
    .line 82
    invoke-virtual {p1}, Lteam/opay/pay/home/tabs/BankInfo;->getTarget()Ljava/lang/Integer;

    .line 83
    .line 84
    .line 85
    move-result-object p1

    .line 86
    if-eqz p1, :cond_4

    .line 87
    .line 88
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 89
    .line 90
    .line 91
    move-result p1

    .line 92
    goto :goto_3

    .line 93
    :cond_4
    const/4 p1, 0x0

    .line 94
    :goto_3
    if-ge p2, p1, :cond_5

    .line 95
    .line 96
    const/4 v0, 0x1

    .line 97
    :cond_5
    :goto_4
    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Lteam/opay/pay/transfer/contact/adapter/MulDataEntity;

    .line 2
    .line 3
    check-cast p2, Lteam/opay/pay/transfer/contact/adapter/MulDataEntity;

    .line 4
    .line 5
    invoke-virtual {p0, p1, p2}, Lteam/opay/pay/home/tabs/BankListAdapter$BankInfoComparator;->a(Lteam/opay/pay/transfer/contact/adapter/MulDataEntity;Lteam/opay/pay/transfer/contact/adapter/MulDataEntity;)I

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    return p1
.end method
