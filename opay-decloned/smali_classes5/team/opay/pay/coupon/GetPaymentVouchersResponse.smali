.class public final Lteam/opay/pay/coupon/GetPaymentVouchersResponse;
.super Ljava/lang/Object;
.source "Coupon.kt"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\n\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0000\u0008\u0086\u0008\u0018\u00002\u00020\u0001B\u001b\u0012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\u000b\u0010\u000c\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003J\u000b\u0010\r\u001a\u0004\u0018\u00010\u0005H\u00c6\u0003J!\u0010\u000e\u001a\u00020\u00002\n\u0008\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005H\u00c6\u0001J\u0013\u0010\u000f\u001a\u00020\u00102\u0008\u0010\u0011\u001a\u0004\u0018\u00010\u0012H\u00d6\u0003J\t\u0010\u0013\u001a\u00020\u0014H\u00d6\u0001J\t\u0010\u0015\u001a\u00020\u0016H\u00d6\u0001R\u0018\u0010\u0002\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\tR\u0018\u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u000b\u00a8\u0006\u0017"
    }
    d2 = {
        "Lteam/opay/pay/coupon/GetPaymentVouchersResponse;",
        "Ljava/io/Serializable;",
        "voucherResponseForValid",
        "Lteam/opay/pay/coupon/VoucherResponseForValid;",
        "voucherCandidateResponse",
        "Lteam/opay/pay/coupon/VoucherCandidateResponse;",
        "<init>",
        "(Lteam/opay/pay/coupon/VoucherResponseForValid;Lteam/opay/pay/coupon/VoucherCandidateResponse;)V",
        "getVoucherResponseForValid",
        "()Lteam/opay/pay/coupon/VoucherResponseForValid;",
        "getVoucherCandidateResponse",
        "()Lteam/opay/pay/coupon/VoucherCandidateResponse;",
        "component1",
        "component2",
        "copy",
        "equals",
        "",
        "other",
        "",
        "hashCode",
        "",
        "toString",
        "",
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
.field private final voucherCandidateResponse:Lteam/opay/pay/coupon/VoucherCandidateResponse;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "voucherCandidateResponse"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final voucherResponseForValid:Lteam/opay/pay/coupon/VoucherResponseForValid;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "voucherResponseForValid"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lteam/opay/pay/coupon/VoucherResponseForValid;Lteam/opay/pay/coupon/VoucherCandidateResponse;)V
    .locals 0
    .param p1    # Lteam/opay/pay/coupon/VoucherResponseForValid;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Lteam/opay/pay/coupon/VoucherCandidateResponse;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lteam/opay/pay/coupon/GetPaymentVouchersResponse;->voucherResponseForValid:Lteam/opay/pay/coupon/VoucherResponseForValid;

    .line 5
    .line 6
    iput-object p2, p0, Lteam/opay/pay/coupon/GetPaymentVouchersResponse;->voucherCandidateResponse:Lteam/opay/pay/coupon/VoucherCandidateResponse;

    .line 7
    .line 8
    return-void
.end method

.method public static synthetic copy$default(Lteam/opay/pay/coupon/GetPaymentVouchersResponse;Lteam/opay/pay/coupon/VoucherResponseForValid;Lteam/opay/pay/coupon/VoucherCandidateResponse;ILjava/lang/Object;)Lteam/opay/pay/coupon/GetPaymentVouchersResponse;
    .locals 0

    .line 1
    and-int/lit8 p4, p3, 0x1

    .line 2
    .line 3
    if-eqz p4, :cond_0

    .line 4
    .line 5
    iget-object p1, p0, Lteam/opay/pay/coupon/GetPaymentVouchersResponse;->voucherResponseForValid:Lteam/opay/pay/coupon/VoucherResponseForValid;

    .line 6
    .line 7
    :cond_0
    and-int/lit8 p3, p3, 0x2

    .line 8
    .line 9
    if-eqz p3, :cond_1

    .line 10
    .line 11
    iget-object p2, p0, Lteam/opay/pay/coupon/GetPaymentVouchersResponse;->voucherCandidateResponse:Lteam/opay/pay/coupon/VoucherCandidateResponse;

    .line 12
    .line 13
    :cond_1
    invoke-virtual {p0, p1, p2}, Lteam/opay/pay/coupon/GetPaymentVouchersResponse;->copy(Lteam/opay/pay/coupon/VoucherResponseForValid;Lteam/opay/pay/coupon/VoucherCandidateResponse;)Lteam/opay/pay/coupon/GetPaymentVouchersResponse;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    return-object p0
.end method


# virtual methods
.method public final component1()Lteam/opay/pay/coupon/VoucherResponseForValid;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/coupon/GetPaymentVouchersResponse;->voucherResponseForValid:Lteam/opay/pay/coupon/VoucherResponseForValid;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component2()Lteam/opay/pay/coupon/VoucherCandidateResponse;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/coupon/GetPaymentVouchersResponse;->voucherCandidateResponse:Lteam/opay/pay/coupon/VoucherCandidateResponse;

    .line 2
    .line 3
    return-object v0
.end method

.method public final copy(Lteam/opay/pay/coupon/VoucherResponseForValid;Lteam/opay/pay/coupon/VoucherCandidateResponse;)Lteam/opay/pay/coupon/GetPaymentVouchersResponse;
    .locals 1
    .param p1    # Lteam/opay/pay/coupon/VoucherResponseForValid;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Lteam/opay/pay/coupon/VoucherCandidateResponse;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    new-instance v0, Lteam/opay/pay/coupon/GetPaymentVouchersResponse;

    .line 2
    .line 3
    invoke-direct {v0, p1, p2}, Lteam/opay/pay/coupon/GetPaymentVouchersResponse;-><init>(Lteam/opay/pay/coupon/VoucherResponseForValid;Lteam/opay/pay/coupon/VoucherCandidateResponse;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p0, p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    instance-of v1, p1, Lteam/opay/pay/coupon/GetPaymentVouchersResponse;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    if-nez v1, :cond_1

    .line 9
    .line 10
    return v2

    .line 11
    :cond_1
    check-cast p1, Lteam/opay/pay/coupon/GetPaymentVouchersResponse;

    .line 12
    .line 13
    iget-object v1, p0, Lteam/opay/pay/coupon/GetPaymentVouchersResponse;->voucherResponseForValid:Lteam/opay/pay/coupon/VoucherResponseForValid;

    .line 14
    .line 15
    iget-object v3, p1, Lteam/opay/pay/coupon/GetPaymentVouchersResponse;->voucherResponseForValid:Lteam/opay/pay/coupon/VoucherResponseForValid;

    .line 16
    .line 17
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-nez v1, :cond_2

    .line 22
    .line 23
    return v2

    .line 24
    :cond_2
    iget-object v1, p0, Lteam/opay/pay/coupon/GetPaymentVouchersResponse;->voucherCandidateResponse:Lteam/opay/pay/coupon/VoucherCandidateResponse;

    .line 25
    .line 26
    iget-object p1, p1, Lteam/opay/pay/coupon/GetPaymentVouchersResponse;->voucherCandidateResponse:Lteam/opay/pay/coupon/VoucherCandidateResponse;

    .line 27
    .line 28
    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 29
    .line 30
    .line 31
    move-result p1

    .line 32
    if-nez p1, :cond_3

    .line 33
    .line 34
    return v2

    .line 35
    :cond_3
    return v0
.end method

.method public final getVoucherCandidateResponse()Lteam/opay/pay/coupon/VoucherCandidateResponse;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/coupon/GetPaymentVouchersResponse;->voucherCandidateResponse:Lteam/opay/pay/coupon/VoucherCandidateResponse;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getVoucherResponseForValid()Lteam/opay/pay/coupon/VoucherResponseForValid;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/coupon/GetPaymentVouchersResponse;->voucherResponseForValid:Lteam/opay/pay/coupon/VoucherResponseForValid;

    .line 2
    .line 3
    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 1
    iget-object v0, p0, Lteam/opay/pay/coupon/GetPaymentVouchersResponse;->voucherResponseForValid:Lteam/opay/pay/coupon/VoucherResponseForValid;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    invoke-virtual {v0}, Lteam/opay/pay/coupon/VoucherResponseForValid;->hashCode()I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    .line 13
    .line 14
    iget-object v2, p0, Lteam/opay/pay/coupon/GetPaymentVouchersResponse;->voucherCandidateResponse:Lteam/opay/pay/coupon/VoucherCandidateResponse;

    .line 15
    .line 16
    if-nez v2, :cond_1

    .line 17
    .line 18
    goto :goto_1

    .line 19
    :cond_1
    invoke-virtual {v2}, Lteam/opay/pay/coupon/VoucherCandidateResponse;->hashCode()I

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    :goto_1
    add-int/2addr v0, v1

    .line 24
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/coupon/GetPaymentVouchersResponse;->voucherResponseForValid:Lteam/opay/pay/coupon/VoucherResponseForValid;

    .line 2
    .line 3
    iget-object v1, p0, Lteam/opay/pay/coupon/GetPaymentVouchersResponse;->voucherCandidateResponse:Lteam/opay/pay/coupon/VoucherCandidateResponse;

    .line 4
    .line 5
    new-instance v2, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 8
    .line 9
    .line 10
    const-string v3, "GetPaymentVouchersResponse(voucherResponseForValid="

    .line 11
    .line 12
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    const-string v0, ", voucherCandidateResponse="

    .line 19
    .line 20
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    const-string v0, ")"

    .line 27
    .line 28
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    return-object v0
.end method
