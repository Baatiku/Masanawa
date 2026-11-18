.class public final Lteam/opay/opb/transfer/bank/bank/BankInfoComparator;
.super Ljava/lang/Object;
.source "BankChooseAdapter.kt"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lteam/opay/business/core/bank/BankInfo;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0005\n\u0002\u0010\u0008\n\u0002\u0008\u0004\u0008\u0000\u0018\u00002\u0012\u0012\u0004\u0012\u00020\u00020\u0001j\u0008\u0012\u0004\u0012\u00020\u0002`\u0003B\u000f\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\u001f\u0010\u000b\u001a\u00020\n2\u0006\u0010\u0008\u001a\u00020\u00022\u0006\u0010\t\u001a\u00020\u0002H\u0016\u00a2\u0006\u0004\u0008\u000b\u0010\u000cR\u0014\u0010\u0005\u001a\u00020\u00048\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u000b\u0010\r\u00a8\u0006\u000e"
    }
    d2 = {
        "Lteam/opay/opb/transfer/bank/bank/BankInfoComparator;",
        "Ljava/util/Comparator;",
        "Lteam/opay/business/core/bank/BankInfo;",
        "Lkotlin/Comparator;",
        "",
        "key",
        "<init>",
        "(Ljava/lang/String;)V",
        "o1",
        "o2",
        "",
        "a",
        "(Lteam/opay/business/core/bank/BankInfo;Lteam/opay/business/core/bank/BankInfo;)I",
        "Ljava/lang/String;",
        "business-transfer-bank_release"
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
.field public final a:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "key"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Lteam/opay/opb/transfer/bank/bank/BankInfoComparator;->a:Ljava/lang/String;

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public a(Lteam/opay/business/core/bank/BankInfo;Lteam/opay/business/core/bank/BankInfo;)I
    .locals 3
    .param p1    # Lteam/opay/business/core/bank/BankInfo;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lteam/opay/business/core/bank/BankInfo;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "o1"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "o2"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p2}, Lteam/opay/business/core/bank/BankInfo;->getName()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object p2

    .line 15
    iget-object v0, p0, Lteam/opay/opb/transfer/bank/bank/BankInfoComparator;->a:Ljava/lang/String;

    .line 16
    .line 17
    const/4 v1, 0x0

    .line 18
    const/4 v2, 0x1

    .line 19
    invoke-static {p2, v0, v1, v2}, Lkotlin/text/StringsKt;->m0(Ljava/lang/CharSequence;Ljava/lang/String;IZ)I

    .line 20
    .line 21
    .line 22
    move-result p2

    .line 23
    invoke-virtual {p1}, Lteam/opay/business/core/bank/BankInfo;->getName()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    iget-object v0, p0, Lteam/opay/opb/transfer/bank/bank/BankInfoComparator;->a:Ljava/lang/String;

    .line 28
    .line 29
    invoke-static {p1, v0, v1, v2}, Lkotlin/text/StringsKt;->m0(Ljava/lang/CharSequence;Ljava/lang/String;IZ)I

    .line 30
    .line 31
    .line 32
    move-result p1

    .line 33
    sub-int/2addr p2, p1

    .line 34
    if-lez p2, :cond_0

    .line 35
    .line 36
    const/4 v1, -0x1

    .line 37
    goto :goto_0

    .line 38
    :cond_0
    if-gez p2, :cond_1

    .line 39
    .line 40
    const/4 v1, 0x1

    .line 41
    :cond_1
    :goto_0
    return v1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Lteam/opay/business/core/bank/BankInfo;

    .line 2
    .line 3
    check-cast p2, Lteam/opay/business/core/bank/BankInfo;

    .line 4
    .line 5
    invoke-virtual {p0, p1, p2}, Lteam/opay/opb/transfer/bank/bank/BankInfoComparator;->a(Lteam/opay/business/core/bank/BankInfo;Lteam/opay/business/core/bank/BankInfo;)I

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    return p1
.end method
