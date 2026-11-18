.class public final Lteam/opay/core/api/b$a;
.super Ljava/lang/Object;
.source "PaymentInstruments.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lteam/opay/core/api/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
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
.method public static a(Lteam/opay/core/api/b;Ljava/lang/String;)Lteam/opay/core/api/graphql/OrderFeePaymentInstrumentInput;
    .locals 16
    .param p0    # Lteam/opay/core/api/b;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "payChannel"

    .line 2
    .line 3
    move-object/from16 v15, p1

    .line 4
    .line 5
    invoke-static {v15, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    new-instance v0, Lteam/opay/core/api/graphql/OrderFeePaymentInstrumentInput;

    .line 9
    .line 10
    invoke-interface/range {p0 .. p0}, Lteam/opay/core/api/b;->getId()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    invoke-interface/range {p0 .. p0}, Lteam/opay/core/api/b;->getCvv()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v3

    .line 18
    invoke-interface/range {p0 .. p0}, Lteam/opay/core/api/b;->getBankCode()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v4

    .line 22
    invoke-interface/range {p0 .. p0}, Lteam/opay/core/api/b;->getEWithdrawalPhoneNumber()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v5

    .line 26
    invoke-interface/range {p0 .. p0}, Lteam/opay/core/api/b;->getEWithdrawalFac()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v6

    .line 30
    invoke-interface/range {p0 .. p0}, Lteam/opay/core/api/b;->getType()Lteam/opay/core/api/GraphQL$PaymentInstrumentType;

    .line 31
    .line 32
    .line 33
    move-result-object v7

    .line 34
    invoke-interface/range {p0 .. p0}, Lteam/opay/core/api/b;->getBankAccountNumber()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v8

    .line 38
    invoke-interface/range {p0 .. p0}, Lteam/opay/core/api/b;->getBvn()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v9

    .line 42
    invoke-interface/range {p0 .. p0}, Lteam/opay/core/api/b;->getBankFirstName()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v10

    .line 46
    invoke-interface/range {p0 .. p0}, Lteam/opay/core/api/b;->getBankLastName()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v11

    .line 50
    invoke-interface/range {p0 .. p0}, Lteam/opay/core/api/b;->getDobYear()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v12

    .line 54
    invoke-interface/range {p0 .. p0}, Lteam/opay/core/api/b;->getDobMonth()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v13

    .line 58
    invoke-interface/range {p0 .. p0}, Lteam/opay/core/api/b;->getDobDay()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v14

    .line 62
    move-object v1, v0

    .line 63
    invoke-direct/range {v1 .. v15}, Lteam/opay/core/api/graphql/OrderFeePaymentInstrumentInput;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lteam/opay/core/api/GraphQL$PaymentInstrumentType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    return-object v0
.end method

.method public static b(Lteam/opay/core/api/b;)Lteam/opay/core/api/GraphQL$SavedPaymentInstrumentInput;
    .locals 15
    .param p0    # Lteam/opay/core/api/b;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    new-instance v14, Lteam/opay/core/api/GraphQL$SavedPaymentInstrumentInput;

    .line 2
    .line 3
    invoke-interface {p0}, Lteam/opay/core/api/b;->getId()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-interface {p0}, Lteam/opay/core/api/b;->getCvv()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    invoke-interface {p0}, Lteam/opay/core/api/b;->getBankCode()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v3

    .line 15
    invoke-interface {p0}, Lteam/opay/core/api/b;->getEWithdrawalPhoneNumber()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v4

    .line 19
    invoke-interface {p0}, Lteam/opay/core/api/b;->getEWithdrawalFac()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v5

    .line 23
    invoke-interface {p0}, Lteam/opay/core/api/b;->getType()Lteam/opay/core/api/GraphQL$PaymentInstrumentType;

    .line 24
    .line 25
    .line 26
    move-result-object v6

    .line 27
    invoke-interface {p0}, Lteam/opay/core/api/b;->getBankAccountNumber()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v7

    .line 31
    invoke-interface {p0}, Lteam/opay/core/api/b;->getBvn()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v8

    .line 35
    invoke-interface {p0}, Lteam/opay/core/api/b;->getBankFirstName()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v9

    .line 39
    invoke-interface {p0}, Lteam/opay/core/api/b;->getBankLastName()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v10

    .line 43
    invoke-interface {p0}, Lteam/opay/core/api/b;->getDobYear()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v11

    .line 47
    invoke-interface {p0}, Lteam/opay/core/api/b;->getDobMonth()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v12

    .line 51
    invoke-interface {p0}, Lteam/opay/core/api/b;->getDobDay()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v13

    .line 55
    move-object v0, v14

    .line 56
    invoke-direct/range {v0 .. v13}, Lteam/opay/core/api/GraphQL$SavedPaymentInstrumentInput;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lteam/opay/core/api/GraphQL$PaymentInstrumentType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    return-object v14
.end method

.method public static c(Lteam/opay/core/api/b;)Ljava/lang/Boolean;
    .locals 0
    .param p0    # Lteam/opay/core/api/b;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    const/4 p0, 0x0

    .line 2
    return-object p0
.end method

.method public static d(Lteam/opay/core/api/b;)Z
    .locals 2
    .param p0    # Lteam/opay/core/api/b;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    invoke-interface {p0}, Lteam/opay/core/api/b;->getId()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    new-instance v0, Lkotlin/text/Regex;

    .line 6
    .line 7
    const-string v1, "-?[0-9a-fA-F]+"

    .line 8
    .line 9
    invoke-direct {v0, v1}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, p0}, Lkotlin/text/Regex;->matches(Ljava/lang/CharSequence;)Z

    .line 13
    .line 14
    .line 15
    move-result p0

    .line 16
    return p0
.end method

.method public static e(Lteam/opay/core/api/b;)Ljava/lang/String;
    .locals 1
    .param p0    # Lteam/opay/core/api/b;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    invoke-interface {p0}, Lteam/opay/core/api/b;->isSavedInstrument()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-interface {p0}, Lteam/opay/core/api/b;->getId()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const-string p0, ""

    .line 13
    .line 14
    :goto_0
    return-object p0
.end method
