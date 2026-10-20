.class public final Lcom/opay/team/newhome/bean/TotalAssetsItemData;
.super Ljava/lang/Object;
.source "NewWalletRsp.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00006\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0002\u0008\u0016\u0008\u0086\u0008\u0018\u00002\u00020\u0001B9\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\n\u0008\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0006\u0012\u0010\u0008\u0002\u0010\n\u001a\n\u0012\u0004\u0012\u00020\t\u0018\u00010\u0008\u00a2\u0006\u0004\u0008\u000b\u0010\u000cJ\u0010\u0010\u000e\u001a\u00020\rH\u00d6\u0001\u00a2\u0006\u0004\u0008\u000e\u0010\u000fJ\u0010\u0010\u0010\u001a\u00020\u0002H\u00d6\u0001\u00a2\u0006\u0004\u0008\u0010\u0010\u0011J\u001a\u0010\u0014\u001a\u00020\u00132\u0008\u0010\u0012\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003\u00a2\u0006\u0004\u0008\u0014\u0010\u0015R\"\u0010\u0003\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0016\u0010\u0017\u001a\u0004\u0008\u0018\u0010\u0011\"\u0004\u0008\u0019\u0010\u001aR$\u0010\u0005\u001a\u0004\u0018\u00010\u00048\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u001b\u0010\u001c\u001a\u0004\u0008\u001d\u0010\u001e\"\u0004\u0008\u001f\u0010 R$\u0010\u0007\u001a\u0004\u0018\u00010\u00068\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u001d\u0010!\u001a\u0004\u0008\u001b\u0010\"\"\u0004\u0008#\u0010$R*\u0010\n\u001a\n\u0012\u0004\u0012\u00020\t\u0018\u00010\u00088\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0018\u0010%\u001a\u0004\u0008\u0016\u0010&\"\u0004\u0008\'\u0010(\u00a8\u0006)"
    }
    d2 = {
        "Lcom/opay/team/newhome/bean/TotalAssetsItemData;",
        "",
        "",
        "itemType",
        "Lcom/opay/team/newhome/bean/TotalAssetsHeaderData;",
        "headerData",
        "Lcom/opay/team/newhome/bean/AccountBottomListInfo;",
        "bottomData",
        "",
        "Lteam/opay/odialog/net/AdDataItem;",
        "adList",
        "<init>",
        "(ILcom/opay/team/newhome/bean/TotalAssetsHeaderData;Lcom/opay/team/newhome/bean/AccountBottomListInfo;Ljava/util/List;)V",
        "",
        "toString",
        "()Ljava/lang/String;",
        "hashCode",
        "()I",
        "other",
        "",
        "equals",
        "(Ljava/lang/Object;)Z",
        "a",
        "I",
        "d",
        "setItemType",
        "(I)V",
        "b",
        "Lcom/opay/team/newhome/bean/TotalAssetsHeaderData;",
        "c",
        "()Lcom/opay/team/newhome/bean/TotalAssetsHeaderData;",
        "setHeaderData",
        "(Lcom/opay/team/newhome/bean/TotalAssetsHeaderData;)V",
        "Lcom/opay/team/newhome/bean/AccountBottomListInfo;",
        "()Lcom/opay/team/newhome/bean/AccountBottomListInfo;",
        "setBottomData",
        "(Lcom/opay/team/newhome/bean/AccountBottomListInfo;)V",
        "Ljava/util/List;",
        "()Ljava/util/List;",
        "setAdList",
        "(Ljava/util/List;)V",
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
.field public a:I

.field public b:Lcom/opay/team/newhome/bean/TotalAssetsHeaderData;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public c:Lcom/opay/team/newhome/bean/AccountBottomListInfo;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lteam/opay/odialog/net/AdDataItem;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(ILcom/opay/team/newhome/bean/TotalAssetsHeaderData;Lcom/opay/team/newhome/bean/AccountBottomListInfo;Ljava/util/List;)V
    .locals 0
    .param p2    # Lcom/opay/team/newhome/bean/TotalAssetsHeaderData;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Lcom/opay/team/newhome/bean/AccountBottomListInfo;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/opay/team/newhome/bean/TotalAssetsHeaderData;",
            "Lcom/opay/team/newhome/bean/AccountBottomListInfo;",
            "Ljava/util/List<",
            "Lteam/opay/odialog/net/AdDataItem;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lcom/opay/team/newhome/bean/TotalAssetsItemData;->a:I

    .line 3
    iput-object p2, p0, Lcom/opay/team/newhome/bean/TotalAssetsItemData;->b:Lcom/opay/team/newhome/bean/TotalAssetsHeaderData;

    .line 4
    iput-object p3, p0, Lcom/opay/team/newhome/bean/TotalAssetsItemData;->c:Lcom/opay/team/newhome/bean/AccountBottomListInfo;

    .line 5
    iput-object p4, p0, Lcom/opay/team/newhome/bean/TotalAssetsItemData;->d:Ljava/util/List;

    return-void
.end method

.method public synthetic constructor <init>(ILcom/opay/team/newhome/bean/TotalAssetsHeaderData;Lcom/opay/team/newhome/bean/AccountBottomListInfo;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    and-int/lit8 p6, p5, 0x2

    const/4 v0, 0x0

    if-eqz p6, :cond_0

    move-object p2, v0

    :cond_0
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_1

    move-object p3, v0

    :cond_1
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_2

    move-object p4, v0

    .line 6
    :cond_2
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/opay/team/newhome/bean/TotalAssetsItemData;-><init>(ILcom/opay/team/newhome/bean/TotalAssetsHeaderData;Lcom/opay/team/newhome/bean/AccountBottomListInfo;Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public final a()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lteam/opay/odialog/net/AdDataItem;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/opay/team/newhome/bean/TotalAssetsItemData;->d:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public final b()Lcom/opay/team/newhome/bean/AccountBottomListInfo;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/opay/team/newhome/bean/TotalAssetsItemData;->c:Lcom/opay/team/newhome/bean/AccountBottomListInfo;

    .line 2
    .line 3
    return-object v0
.end method

.method public final c()Lcom/opay/team/newhome/bean/TotalAssetsHeaderData;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/opay/team/newhome/bean/TotalAssetsItemData;->b:Lcom/opay/team/newhome/bean/TotalAssetsHeaderData;

    .line 2
    .line 3
    return-object v0
.end method

.method public final d()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/opay/team/newhome/bean/TotalAssetsItemData;->a:I

    .line 2
    .line 3
    return v0
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
    instance-of v1, p1, Lcom/opay/team/newhome/bean/TotalAssetsItemData;

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
    check-cast p1, Lcom/opay/team/newhome/bean/TotalAssetsItemData;

    .line 12
    .line 13
    iget v1, p0, Lcom/opay/team/newhome/bean/TotalAssetsItemData;->a:I

    .line 14
    .line 15
    iget v3, p1, Lcom/opay/team/newhome/bean/TotalAssetsItemData;->a:I

    .line 16
    .line 17
    if-eq v1, v3, :cond_2

    .line 18
    .line 19
    return v2

    .line 20
    :cond_2
    iget-object v1, p0, Lcom/opay/team/newhome/bean/TotalAssetsItemData;->b:Lcom/opay/team/newhome/bean/TotalAssetsHeaderData;

    .line 21
    .line 22
    iget-object v3, p1, Lcom/opay/team/newhome/bean/TotalAssetsItemData;->b:Lcom/opay/team/newhome/bean/TotalAssetsHeaderData;

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
    iget-object v1, p0, Lcom/opay/team/newhome/bean/TotalAssetsItemData;->c:Lcom/opay/team/newhome/bean/AccountBottomListInfo;

    .line 32
    .line 33
    iget-object v3, p1, Lcom/opay/team/newhome/bean/TotalAssetsItemData;->c:Lcom/opay/team/newhome/bean/AccountBottomListInfo;

    .line 34
    .line 35
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 36
    .line 37
    .line 38
    move-result v1

    .line 39
    if-nez v1, :cond_4

    .line 40
    .line 41
    return v2

    .line 42
    :cond_4
    iget-object v1, p0, Lcom/opay/team/newhome/bean/TotalAssetsItemData;->d:Ljava/util/List;

    .line 43
    .line 44
    iget-object p1, p1, Lcom/opay/team/newhome/bean/TotalAssetsItemData;->d:Ljava/util/List;

    .line 45
    .line 46
    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 47
    .line 48
    .line 49
    move-result p1

    .line 50
    if-nez p1, :cond_5

    .line 51
    .line 52
    return v2

    .line 53
    :cond_5
    return v0
.end method

.method public hashCode()I
    .locals 3

    .line 1
    iget v0, p0, Lcom/opay/team/newhome/bean/TotalAssetsItemData;->a:I

    .line 2
    .line 3
    mul-int/lit8 v0, v0, 0x1f

    .line 4
    .line 5
    iget-object v1, p0, Lcom/opay/team/newhome/bean/TotalAssetsItemData;->b:Lcom/opay/team/newhome/bean/TotalAssetsHeaderData;

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
    invoke-virtual {v1}, Lcom/opay/team/newhome/bean/TotalAssetsHeaderData;->hashCode()I

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
    iget-object v1, p0, Lcom/opay/team/newhome/bean/TotalAssetsItemData;->c:Lcom/opay/team/newhome/bean/AccountBottomListInfo;

    .line 20
    .line 21
    if-nez v1, :cond_1

    .line 22
    .line 23
    const/4 v1, 0x0

    .line 24
    goto :goto_1

    .line 25
    :cond_1
    invoke-virtual {v1}, Lcom/opay/team/newhome/bean/AccountBottomListInfo;->hashCode()I

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    :goto_1
    add-int/2addr v0, v1

    .line 30
    mul-int/lit8 v0, v0, 0x1f

    .line 31
    .line 32
    iget-object v1, p0, Lcom/opay/team/newhome/bean/TotalAssetsItemData;->d:Ljava/util/List;

    .line 33
    .line 34
    if-nez v1, :cond_2

    .line 35
    .line 36
    goto :goto_2

    .line 37
    :cond_2
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    .line 38
    .line 39
    .line 40
    move-result v2

    .line 41
    :goto_2
    add-int/2addr v0, v2

    .line 42
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 6
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget v0, p0, Lcom/opay/team/newhome/bean/TotalAssetsItemData;->a:I

    .line 2
    .line 3
    iget-object v1, p0, Lcom/opay/team/newhome/bean/TotalAssetsItemData;->b:Lcom/opay/team/newhome/bean/TotalAssetsHeaderData;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/opay/team/newhome/bean/TotalAssetsItemData;->c:Lcom/opay/team/newhome/bean/AccountBottomListInfo;

    .line 6
    .line 7
    iget-object v3, p0, Lcom/opay/team/newhome/bean/TotalAssetsItemData;->d:Ljava/util/List;

    .line 8
    .line 9
    new-instance v4, Ljava/lang/StringBuilder;

    .line 10
    .line 11
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 12
    .line 13
    .line 14
    const-string v5, "TotalAssetsItemData(itemType="

    .line 15
    .line 16
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    const-string v0, ", headerData="

    .line 23
    .line 24
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    const-string v0, ", bottomData="

    .line 31
    .line 32
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    const-string v0, ", adList="

    .line 39
    .line 40
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    const-string v0, ")"

    .line 47
    .line 48
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    return-object v0
.end method
