.class public final Lteam/opay/pay/home/tabs/BankInfoComparator;
.super Ljava/lang/Object;
.source "ChooseBankAdapter.kt"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lteam/opay/pay/home/tabs/BankInfo;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0008\n\u0002\u0008\u0003\u0008\u0000\u0018\u00002\u0012\u0012\u0004\u0012\u00020\u00020\u0001j\u0008\u0012\u0004\u0012\u00020\u0002`\u0003B\u0007\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J#\u0010\t\u001a\u00020\u00082\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u00022\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0002H\u0016\u00a2\u0006\u0004\u0008\t\u0010\n\u00a8\u0006\u000b"
    }
    d2 = {
        "Lteam/opay/pay/home/tabs/BankInfoComparator;",
        "Ljava/util/Comparator;",
        "Lteam/opay/pay/home/tabs/BankInfo;",
        "Lkotlin/Comparator;",
        "<init>",
        "()V",
        "o1",
        "o2",
        "",
        "a",
        "(Lteam/opay/pay/home/tabs/BankInfo;Lteam/opay/pay/home/tabs/BankInfo;)I",
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
.method public a(Lteam/opay/pay/home/tabs/BankInfo;Lteam/opay/pay/home/tabs/BankInfo;)I
    .locals 3
    .param p1    # Lteam/opay/pay/home/tabs/BankInfo;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Lteam/opay/pay/home/tabs/BankInfo;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p2, :cond_0

    .line 3
    .line 4
    invoke-virtual {p2}, Lteam/opay/pay/home/tabs/BankInfo;->getTarget()Ljava/lang/Integer;

    .line 5
    .line 6
    .line 7
    move-result-object v1

    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 v1, 0x0

    .line 16
    :goto_0
    if-eqz p1, :cond_1

    .line 17
    .line 18
    invoke-virtual {p1}, Lteam/opay/pay/home/tabs/BankInfo;->getTarget()Ljava/lang/Integer;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    if-eqz v2, :cond_1

    .line 23
    .line 24
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 25
    .line 26
    .line 27
    move-result v2

    .line 28
    goto :goto_1

    .line 29
    :cond_1
    const/4 v2, 0x0

    .line 30
    :goto_1
    if-le v1, v2, :cond_2

    .line 31
    .line 32
    const/4 v0, -0x1

    .line 33
    goto :goto_4

    .line 34
    :cond_2
    if-eqz p2, :cond_3

    .line 35
    .line 36
    invoke-virtual {p2}, Lteam/opay/pay/home/tabs/BankInfo;->getTarget()Ljava/lang/Integer;

    .line 37
    .line 38
    .line 39
    move-result-object p2

    .line 40
    if-eqz p2, :cond_3

    .line 41
    .line 42
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    .line 43
    .line 44
    .line 45
    move-result p2

    .line 46
    goto :goto_2

    .line 47
    :cond_3
    const/4 p2, 0x0

    .line 48
    :goto_2
    if-eqz p1, :cond_4

    .line 49
    .line 50
    invoke-virtual {p1}, Lteam/opay/pay/home/tabs/BankInfo;->getTarget()Ljava/lang/Integer;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    if-eqz p1, :cond_4

    .line 55
    .line 56
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 57
    .line 58
    .line 59
    move-result p1

    .line 60
    goto :goto_3

    .line 61
    :cond_4
    const/4 p1, 0x0

    .line 62
    :goto_3
    if-ge p2, p1, :cond_5

    .line 63
    .line 64
    const/4 v0, 0x1

    .line 65
    :cond_5
    :goto_4
    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Lteam/opay/pay/home/tabs/BankInfo;

    .line 2
    .line 3
    check-cast p2, Lteam/opay/pay/home/tabs/BankInfo;

    .line 4
    .line 5
    invoke-virtual {p0, p1, p2}, Lteam/opay/pay/home/tabs/BankInfoComparator;->a(Lteam/opay/pay/home/tabs/BankInfo;Lteam/opay/pay/home/tabs/BankInfo;)I

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    return p1
.end method
