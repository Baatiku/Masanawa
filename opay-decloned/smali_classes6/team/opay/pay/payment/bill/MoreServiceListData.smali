.class public final Lteam/opay/pay/payment/bill/MoreServiceListData;
.super Ljava/lang/Object;
.source "NativeBillPaymentViewModel.kt"

# interfaces
.implements Lcom/chad/library/adapter/base/entity/MultiItemEntity;
.implements Ljava/io/Serializable;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0013\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\u0008\u0086\u0008\u0018\u00002\u00020\u00012\u00020\u0002B)\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u0012\u000e\u0010\u0007\u001a\n\u0012\u0004\u0012\u00020\t\u0018\u00010\u0008\u00a2\u0006\u0004\u0008\n\u0010\u000bJ\u0008\u0010\u0016\u001a\u00020\u0004H\u0016J\u0006\u0010\u0017\u001a\u00020\u0000J\t\u0010\u0018\u001a\u00020\u0004H\u00c6\u0003J\u000b\u0010\u0019\u001a\u0004\u0018\u00010\u0006H\u00c6\u0003J\u0011\u0010\u001a\u001a\n\u0012\u0004\u0012\u00020\t\u0018\u00010\u0008H\u00c6\u0003J1\u0010\u001b\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0003\u001a\u00020\u00042\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00062\u0010\u0008\u0002\u0010\u0007\u001a\n\u0012\u0004\u0012\u00020\t\u0018\u00010\u0008H\u00c6\u0001J\u0013\u0010\u001c\u001a\u00020\u001d2\u0008\u0010\u001e\u001a\u0004\u0018\u00010\u001fH\u00d6\u0003J\t\u0010 \u001a\u00020\u0004H\u00d6\u0001J\t\u0010!\u001a\u00020\"H\u00d6\u0001R\u001a\u0010\u0003\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000c\u0010\r\"\u0004\u0008\u000e\u0010\u000fR\u0018\u0010\u0005\u001a\u0004\u0018\u00010\u00068\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0010\u0010\u0011R&\u0010\u0007\u001a\n\u0012\u0004\u0012\u00020\t\u0018\u00010\u00088\u0006@\u0006X\u0087\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0012\u0010\u0013\"\u0004\u0008\u0014\u0010\u0015\u00a8\u0006#"
    }
    d2 = {
        "Lteam/opay/pay/payment/bill/MoreServiceListData;",
        "Lcom/chad/library/adapter/base/entity/MultiItemEntity;",
        "Ljava/io/Serializable;",
        "item",
        "",
        "module",
        "Lteam/opay/pay/payment/bill/MoreServiceTitleData;",
        "data",
        "",
        "Lteam/opay/pay/payment/bill/MoreServiceItemData;",
        "<init>",
        "(ILteam/opay/pay/payment/bill/MoreServiceTitleData;Ljava/util/List;)V",
        "getItem",
        "()I",
        "setItem",
        "(I)V",
        "getModule",
        "()Lteam/opay/pay/payment/bill/MoreServiceTitleData;",
        "getData",
        "()Ljava/util/List;",
        "setData",
        "(Ljava/util/List;)V",
        "getItemType",
        "deepCopy",
        "component1",
        "component2",
        "component3",
        "copy",
        "equals",
        "",
        "other",
        "",
        "hashCode",
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
.field private data:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "data"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lteam/opay/pay/payment/bill/MoreServiceItemData;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private item:I

.field private final module:Lteam/opay/pay/payment/bill/MoreServiceTitleData;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "module"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(ILteam/opay/pay/payment/bill/MoreServiceTitleData;Ljava/util/List;)V
    .locals 0
    .param p2    # Lteam/opay/pay/payment/bill/MoreServiceTitleData;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lteam/opay/pay/payment/bill/MoreServiceTitleData;",
            "Ljava/util/List<",
            "Lteam/opay/pay/payment/bill/MoreServiceItemData;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Lteam/opay/pay/payment/bill/MoreServiceListData;->item:I

    .line 5
    .line 6
    iput-object p2, p0, Lteam/opay/pay/payment/bill/MoreServiceListData;->module:Lteam/opay/pay/payment/bill/MoreServiceTitleData;

    .line 7
    .line 8
    iput-object p3, p0, Lteam/opay/pay/payment/bill/MoreServiceListData;->data:Ljava/util/List;

    .line 9
    .line 10
    return-void
.end method

.method public static synthetic copy$default(Lteam/opay/pay/payment/bill/MoreServiceListData;ILteam/opay/pay/payment/bill/MoreServiceTitleData;Ljava/util/List;ILjava/lang/Object;)Lteam/opay/pay/payment/bill/MoreServiceListData;
    .locals 0

    .line 1
    and-int/lit8 p5, p4, 0x1

    .line 2
    .line 3
    if-eqz p5, :cond_0

    .line 4
    .line 5
    iget p1, p0, Lteam/opay/pay/payment/bill/MoreServiceListData;->item:I

    .line 6
    .line 7
    :cond_0
    and-int/lit8 p5, p4, 0x2

    .line 8
    .line 9
    if-eqz p5, :cond_1

    .line 10
    .line 11
    iget-object p2, p0, Lteam/opay/pay/payment/bill/MoreServiceListData;->module:Lteam/opay/pay/payment/bill/MoreServiceTitleData;

    .line 12
    .line 13
    :cond_1
    and-int/lit8 p4, p4, 0x4

    .line 14
    .line 15
    if-eqz p4, :cond_2

    .line 16
    .line 17
    iget-object p3, p0, Lteam/opay/pay/payment/bill/MoreServiceListData;->data:Ljava/util/List;

    .line 18
    .line 19
    :cond_2
    invoke-virtual {p0, p1, p2, p3}, Lteam/opay/pay/payment/bill/MoreServiceListData;->copy(ILteam/opay/pay/payment/bill/MoreServiceTitleData;Ljava/util/List;)Lteam/opay/pay/payment/bill/MoreServiceListData;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    return-object p0
.end method


# virtual methods
.method public final component1()I
    .locals 1

    .line 1
    iget v0, p0, Lteam/opay/pay/payment/bill/MoreServiceListData;->item:I

    .line 2
    .line 3
    return v0
.end method

.method public final component2()Lteam/opay/pay/payment/bill/MoreServiceTitleData;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/payment/bill/MoreServiceListData;->module:Lteam/opay/pay/payment/bill/MoreServiceTitleData;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component3()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lteam/opay/pay/payment/bill/MoreServiceItemData;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/payment/bill/MoreServiceListData;->data:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public final copy(ILteam/opay/pay/payment/bill/MoreServiceTitleData;Ljava/util/List;)Lteam/opay/pay/payment/bill/MoreServiceListData;
    .locals 1
    .param p2    # Lteam/opay/pay/payment/bill/MoreServiceTitleData;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lteam/opay/pay/payment/bill/MoreServiceTitleData;",
            "Ljava/util/List<",
            "Lteam/opay/pay/payment/bill/MoreServiceItemData;",
            ">;)",
            "Lteam/opay/pay/payment/bill/MoreServiceListData;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    new-instance v0, Lteam/opay/pay/payment/bill/MoreServiceListData;

    .line 2
    .line 3
    invoke-direct {v0, p1, p2, p3}, Lteam/opay/pay/payment/bill/MoreServiceListData;-><init>(ILteam/opay/pay/payment/bill/MoreServiceTitleData;Ljava/util/List;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public final deepCopy()Lteam/opay/pay/payment/bill/MoreServiceListData;
    .locals 3
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    new-instance v0, Lcom/google/gson/Gson;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, p0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    const-class v2, Lteam/opay/pay/payment/bill/MoreServiceListData;

    .line 11
    .line 12
    invoke-virtual {v0, v1, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    const-string v1, "fromJson(...)"

    .line 17
    .line 18
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    check-cast v0, Lteam/opay/pay/payment/bill/MoreServiceListData;

    .line 22
    .line 23
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
    instance-of v1, p1, Lteam/opay/pay/payment/bill/MoreServiceListData;

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
    check-cast p1, Lteam/opay/pay/payment/bill/MoreServiceListData;

    .line 12
    .line 13
    iget v1, p0, Lteam/opay/pay/payment/bill/MoreServiceListData;->item:I

    .line 14
    .line 15
    iget v3, p1, Lteam/opay/pay/payment/bill/MoreServiceListData;->item:I

    .line 16
    .line 17
    if-eq v1, v3, :cond_2

    .line 18
    .line 19
    return v2

    .line 20
    :cond_2
    iget-object v1, p0, Lteam/opay/pay/payment/bill/MoreServiceListData;->module:Lteam/opay/pay/payment/bill/MoreServiceTitleData;

    .line 21
    .line 22
    iget-object v3, p1, Lteam/opay/pay/payment/bill/MoreServiceListData;->module:Lteam/opay/pay/payment/bill/MoreServiceTitleData;

    .line 23
    .line 24
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    if-nez v1, :cond_3

    .line 29
    .line 30
    return v2

    .line 31
    :cond_3
    iget-object v1, p0, Lteam/opay/pay/payment/bill/MoreServiceListData;->data:Ljava/util/List;

    .line 32
    .line 33
    iget-object p1, p1, Lteam/opay/pay/payment/bill/MoreServiceListData;->data:Ljava/util/List;

    .line 34
    .line 35
    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 36
    .line 37
    .line 38
    move-result p1

    .line 39
    if-nez p1, :cond_4

    .line 40
    .line 41
    return v2

    .line 42
    :cond_4
    return v0
.end method

.method public final getData()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lteam/opay/pay/payment/bill/MoreServiceItemData;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/payment/bill/MoreServiceListData;->data:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getItem()I
    .locals 1

    .line 1
    iget v0, p0, Lteam/opay/pay/payment/bill/MoreServiceListData;->item:I

    .line 2
    .line 3
    return v0
.end method

.method public getItemType()I
    .locals 1

    .line 1
    iget v0, p0, Lteam/opay/pay/payment/bill/MoreServiceListData;->item:I

    .line 2
    .line 3
    return v0
.end method

.method public final getModule()Lteam/opay/pay/payment/bill/MoreServiceTitleData;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/payment/bill/MoreServiceListData;->module:Lteam/opay/pay/payment/bill/MoreServiceTitleData;

    .line 2
    .line 3
    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 1
    iget v0, p0, Lteam/opay/pay/payment/bill/MoreServiceListData;->item:I

    .line 2
    .line 3
    mul-int/lit8 v0, v0, 0x1f

    .line 4
    .line 5
    iget-object v1, p0, Lteam/opay/pay/payment/bill/MoreServiceListData;->module:Lteam/opay/pay/payment/bill/MoreServiceTitleData;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    if-nez v1, :cond_0

    .line 9
    .line 10
    const/4 v1, 0x0

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    invoke-virtual {v1}, Lteam/opay/pay/payment/bill/MoreServiceTitleData;->hashCode()I

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    :goto_0
    add-int/2addr v0, v1

    .line 17
    mul-int/lit8 v0, v0, 0x1f

    .line 18
    .line 19
    iget-object v1, p0, Lteam/opay/pay/payment/bill/MoreServiceListData;->data:Ljava/util/List;

    .line 20
    .line 21
    if-nez v1, :cond_1

    .line 22
    .line 23
    goto :goto_1

    .line 24
    :cond_1
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    .line 25
    .line 26
    .line 27
    move-result v2

    .line 28
    :goto_1
    add-int/2addr v0, v2

    .line 29
    return v0
.end method

.method public final setData(Ljava/util/List;)V
    .locals 0
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lteam/opay/pay/payment/bill/MoreServiceItemData;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lteam/opay/pay/payment/bill/MoreServiceListData;->data:Ljava/util/List;

    .line 2
    .line 3
    return-void
.end method

.method public final setItem(I)V
    .locals 0

    .line 1
    iput p1, p0, Lteam/opay/pay/payment/bill/MoreServiceListData;->item:I

    .line 2
    .line 3
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 5
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget v0, p0, Lteam/opay/pay/payment/bill/MoreServiceListData;->item:I

    .line 2
    .line 3
    iget-object v1, p0, Lteam/opay/pay/payment/bill/MoreServiceListData;->module:Lteam/opay/pay/payment/bill/MoreServiceTitleData;

    .line 4
    .line 5
    iget-object v2, p0, Lteam/opay/pay/payment/bill/MoreServiceListData;->data:Ljava/util/List;

    .line 6
    .line 7
    new-instance v3, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 10
    .line 11
    .line 12
    const-string v4, "MoreServiceListData(item="

    .line 13
    .line 14
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    const-string v0, ", module="

    .line 21
    .line 22
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    const-string v0, ", data="

    .line 29
    .line 30
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    const-string v0, ")"

    .line 37
    .line 38
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    return-object v0
.end method
