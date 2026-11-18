.class public final Lteam/opay/pay/transfer/contact/BeneficiaryItemClickedEvent;
.super Ljava/lang/Object;
.source "TransferContactViewModel.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\t\u0008\u0086\u0008\u0018\u00002\u00020\u0001B\u001b\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\u0010\u0010\t\u001a\u00020\u0008H\u00d6\u0001\u00a2\u0006\u0004\u0008\t\u0010\nJ\u0010\u0010\u000c\u001a\u00020\u000bH\u00d6\u0001\u00a2\u0006\u0004\u0008\u000c\u0010\rJ\u001a\u0010\u0010\u001a\u00020\u000f2\u0008\u0010\u000e\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003\u00a2\u0006\u0004\u0008\u0010\u0010\u0011R\u0017\u0010\u0003\u001a\u00020\u00028\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0012\u0010\u0013\u001a\u0004\u0008\u0014\u0010\u0015R\u0019\u0010\u0005\u001a\u0004\u0018\u00010\u00048\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0014\u0010\u0016\u001a\u0004\u0008\u0012\u0010\u0017\u00a8\u0006\u0018"
    }
    d2 = {
        "Lteam/opay/pay/transfer/contact/BeneficiaryItemClickedEvent;",
        "",
        "Lteam/opay/pay/transfer/contact/BeneficiaryItemClickedSource;",
        "from",
        "Lteam/opay/pay/transfer/contact/bean/TransferContactData;",
        "data",
        "<init>",
        "(Lteam/opay/pay/transfer/contact/BeneficiaryItemClickedSource;Lteam/opay/pay/transfer/contact/bean/TransferContactData;)V",
        "",
        "toString",
        "()Ljava/lang/String;",
        "",
        "hashCode",
        "()I",
        "other",
        "",
        "equals",
        "(Ljava/lang/Object;)Z",
        "a",
        "Lteam/opay/pay/transfer/contact/BeneficiaryItemClickedSource;",
        "b",
        "()Lteam/opay/pay/transfer/contact/BeneficiaryItemClickedSource;",
        "Lteam/opay/pay/transfer/contact/bean/TransferContactData;",
        "()Lteam/opay/pay/transfer/contact/bean/TransferContactData;",
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
.field public final a:Lteam/opay/pay/transfer/contact/BeneficiaryItemClickedSource;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final b:Lteam/opay/pay/transfer/contact/bean/TransferContactData;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lteam/opay/pay/transfer/contact/BeneficiaryItemClickedSource;Lteam/opay/pay/transfer/contact/bean/TransferContactData;)V
    .locals 1
    .param p1    # Lteam/opay/pay/transfer/contact/BeneficiaryItemClickedSource;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lteam/opay/pay/transfer/contact/bean/TransferContactData;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const-string v0, "from"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lteam/opay/pay/transfer/contact/BeneficiaryItemClickedEvent;->a:Lteam/opay/pay/transfer/contact/BeneficiaryItemClickedSource;

    .line 3
    iput-object p2, p0, Lteam/opay/pay/transfer/contact/BeneficiaryItemClickedEvent;->b:Lteam/opay/pay/transfer/contact/bean/TransferContactData;

    return-void
.end method

.method public synthetic constructor <init>(Lteam/opay/pay/transfer/contact/BeneficiaryItemClickedSource;Lteam/opay/pay/transfer/contact/bean/TransferContactData;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 4
    :cond_0
    invoke-direct {p0, p1, p2}, Lteam/opay/pay/transfer/contact/BeneficiaryItemClickedEvent;-><init>(Lteam/opay/pay/transfer/contact/BeneficiaryItemClickedSource;Lteam/opay/pay/transfer/contact/bean/TransferContactData;)V

    return-void
.end method


# virtual methods
.method public final a()Lteam/opay/pay/transfer/contact/bean/TransferContactData;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/transfer/contact/BeneficiaryItemClickedEvent;->b:Lteam/opay/pay/transfer/contact/bean/TransferContactData;

    .line 2
    .line 3
    return-object v0
.end method

.method public final b()Lteam/opay/pay/transfer/contact/BeneficiaryItemClickedSource;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/transfer/contact/BeneficiaryItemClickedEvent;->a:Lteam/opay/pay/transfer/contact/BeneficiaryItemClickedSource;

    .line 2
    .line 3
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
    instance-of v1, p1, Lteam/opay/pay/transfer/contact/BeneficiaryItemClickedEvent;

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
    check-cast p1, Lteam/opay/pay/transfer/contact/BeneficiaryItemClickedEvent;

    .line 12
    .line 13
    iget-object v1, p0, Lteam/opay/pay/transfer/contact/BeneficiaryItemClickedEvent;->a:Lteam/opay/pay/transfer/contact/BeneficiaryItemClickedSource;

    .line 14
    .line 15
    iget-object v3, p1, Lteam/opay/pay/transfer/contact/BeneficiaryItemClickedEvent;->a:Lteam/opay/pay/transfer/contact/BeneficiaryItemClickedSource;

    .line 16
    .line 17
    if-eq v1, v3, :cond_2

    .line 18
    .line 19
    return v2

    .line 20
    :cond_2
    iget-object v1, p0, Lteam/opay/pay/transfer/contact/BeneficiaryItemClickedEvent;->b:Lteam/opay/pay/transfer/contact/bean/TransferContactData;

    .line 21
    .line 22
    iget-object p1, p1, Lteam/opay/pay/transfer/contact/BeneficiaryItemClickedEvent;->b:Lteam/opay/pay/transfer/contact/bean/TransferContactData;

    .line 23
    .line 24
    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 25
    .line 26
    .line 27
    move-result p1

    .line 28
    if-nez p1, :cond_3

    .line 29
    .line 30
    return v2

    .line 31
    :cond_3
    return v0
.end method

.method public hashCode()I
    .locals 2

    .line 1
    iget-object v0, p0, Lteam/opay/pay/transfer/contact/BeneficiaryItemClickedEvent;->a:Lteam/opay/pay/transfer/contact/BeneficiaryItemClickedSource;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    mul-int/lit8 v0, v0, 0x1f

    .line 8
    .line 9
    iget-object v1, p0, Lteam/opay/pay/transfer/contact/BeneficiaryItemClickedEvent;->b:Lteam/opay/pay/transfer/contact/bean/TransferContactData;

    .line 10
    .line 11
    if-nez v1, :cond_0

    .line 12
    .line 13
    const/4 v1, 0x0

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    invoke-virtual {v1}, Lteam/opay/pay/transfer/contact/bean/TransferContactData;->hashCode()I

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    :goto_0
    add-int/2addr v0, v1

    .line 20
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/transfer/contact/BeneficiaryItemClickedEvent;->a:Lteam/opay/pay/transfer/contact/BeneficiaryItemClickedSource;

    .line 2
    .line 3
    iget-object v1, p0, Lteam/opay/pay/transfer/contact/BeneficiaryItemClickedEvent;->b:Lteam/opay/pay/transfer/contact/bean/TransferContactData;

    .line 4
    .line 5
    new-instance v2, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 8
    .line 9
    .line 10
    const-string v3, "BeneficiaryItemClickedEvent(from="

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
    const-string v0, ", data="

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
