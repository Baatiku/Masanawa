.class public final Lteam/opay/business/provider/active/HomeModule;
.super Ljava/lang/Object;
.source "ActivityData.kt"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u000f\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0000\u0008\u0086\u0008\u0018\u00002\u00020\u0001B-\u0012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\u000e\u0010\u0004\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u0005\u0012\n\u0008\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u00a2\u0006\u0004\u0008\u0008\u0010\tJ\u000b\u0010\u0012\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003J\u0011\u0010\u0013\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u0005H\u00c6\u0003J\u000b\u0010\u0014\u001a\u0004\u0018\u00010\u0007H\u00c6\u0003J3\u0010\u0015\u001a\u00020\u00002\n\u0008\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\u0010\u0008\u0002\u0010\u0004\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u00052\n\u0008\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0007H\u00c6\u0001J\u0013\u0010\u0016\u001a\u00020\u00172\u0008\u0010\u0018\u001a\u0004\u0018\u00010\u0019H\u00d6\u0003J\t\u0010\u001a\u001a\u00020\u001bH\u00d6\u0001J\t\u0010\u001c\u001a\u00020\u001dH\u00d6\u0001R\u0018\u0010\u0002\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u000bR\u001e\u0010\u0004\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u00058\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\rR\u001c\u0010\u0006\u001a\u0004\u0018\u00010\u0007X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000e\u0010\u000f\"\u0004\u0008\u0010\u0010\u0011\u00a8\u0006\u001e"
    }
    d2 = {
        "Lteam/opay/business/provider/active/HomeModule;",
        "Ljava/io/Serializable;",
        "module",
        "Lteam/opay/business/provider/active/HomeBusiness;",
        "data",
        "",
        "adInfo",
        "Lteam/opay/business/provider/active/AdInfo;",
        "<init>",
        "(Lteam/opay/business/provider/active/HomeBusiness;Ljava/util/List;Lteam/opay/business/provider/active/AdInfo;)V",
        "getModule",
        "()Lteam/opay/business/provider/active/HomeBusiness;",
        "getData",
        "()Ljava/util/List;",
        "getAdInfo",
        "()Lteam/opay/business/provider/active/AdInfo;",
        "setAdInfo",
        "(Lteam/opay/business/provider/active/AdInfo;)V",
        "component1",
        "component2",
        "component3",
        "copy",
        "equals",
        "",
        "other",
        "",
        "hashCode",
        "",
        "toString",
        "",
        "business-provider_release"
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
.field private transient adInfo:Lteam/opay/business/provider/active/AdInfo;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final data:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "data"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lteam/opay/business/provider/active/HomeBusiness;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final module:Lteam/opay/business/provider/active/HomeBusiness;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "module"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lteam/opay/business/provider/active/HomeBusiness;Ljava/util/List;Lteam/opay/business/provider/active/AdInfo;)V
    .locals 0
    .param p1    # Lteam/opay/business/provider/active/HomeBusiness;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Lteam/opay/business/provider/active/AdInfo;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lteam/opay/business/provider/active/HomeBusiness;",
            "Ljava/util/List<",
            "Lteam/opay/business/provider/active/HomeBusiness;",
            ">;",
            "Lteam/opay/business/provider/active/AdInfo;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lteam/opay/business/provider/active/HomeModule;->module:Lteam/opay/business/provider/active/HomeBusiness;

    .line 3
    iput-object p2, p0, Lteam/opay/business/provider/active/HomeModule;->data:Ljava/util/List;

    .line 4
    iput-object p3, p0, Lteam/opay/business/provider/active/HomeModule;->adInfo:Lteam/opay/business/provider/active/AdInfo;

    return-void
.end method

.method public synthetic constructor <init>(Lteam/opay/business/provider/active/HomeBusiness;Ljava/util/List;Lteam/opay/business/provider/active/AdInfo;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    const/4 p3, 0x0

    .line 5
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lteam/opay/business/provider/active/HomeModule;-><init>(Lteam/opay/business/provider/active/HomeBusiness;Ljava/util/List;Lteam/opay/business/provider/active/AdInfo;)V

    return-void
.end method

.method public static synthetic copy$default(Lteam/opay/business/provider/active/HomeModule;Lteam/opay/business/provider/active/HomeBusiness;Ljava/util/List;Lteam/opay/business/provider/active/AdInfo;ILjava/lang/Object;)Lteam/opay/business/provider/active/HomeModule;
    .locals 0

    .line 1
    and-int/lit8 p5, p4, 0x1

    .line 2
    .line 3
    if-eqz p5, :cond_0

    .line 4
    .line 5
    iget-object p1, p0, Lteam/opay/business/provider/active/HomeModule;->module:Lteam/opay/business/provider/active/HomeBusiness;

    .line 6
    .line 7
    :cond_0
    and-int/lit8 p5, p4, 0x2

    .line 8
    .line 9
    if-eqz p5, :cond_1

    .line 10
    .line 11
    iget-object p2, p0, Lteam/opay/business/provider/active/HomeModule;->data:Ljava/util/List;

    .line 12
    .line 13
    :cond_1
    and-int/lit8 p4, p4, 0x4

    .line 14
    .line 15
    if-eqz p4, :cond_2

    .line 16
    .line 17
    iget-object p3, p0, Lteam/opay/business/provider/active/HomeModule;->adInfo:Lteam/opay/business/provider/active/AdInfo;

    .line 18
    .line 19
    :cond_2
    invoke-virtual {p0, p1, p2, p3}, Lteam/opay/business/provider/active/HomeModule;->copy(Lteam/opay/business/provider/active/HomeBusiness;Ljava/util/List;Lteam/opay/business/provider/active/AdInfo;)Lteam/opay/business/provider/active/HomeModule;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    return-object p0
.end method


# virtual methods
.method public final component1()Lteam/opay/business/provider/active/HomeBusiness;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/business/provider/active/HomeModule;->module:Lteam/opay/business/provider/active/HomeBusiness;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component2()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lteam/opay/business/provider/active/HomeBusiness;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/business/provider/active/HomeModule;->data:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component3()Lteam/opay/business/provider/active/AdInfo;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/business/provider/active/HomeModule;->adInfo:Lteam/opay/business/provider/active/AdInfo;

    .line 2
    .line 3
    return-object v0
.end method

.method public final copy(Lteam/opay/business/provider/active/HomeBusiness;Ljava/util/List;Lteam/opay/business/provider/active/AdInfo;)Lteam/opay/business/provider/active/HomeModule;
    .locals 1
    .param p1    # Lteam/opay/business/provider/active/HomeBusiness;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Lteam/opay/business/provider/active/AdInfo;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lteam/opay/business/provider/active/HomeBusiness;",
            "Ljava/util/List<",
            "Lteam/opay/business/provider/active/HomeBusiness;",
            ">;",
            "Lteam/opay/business/provider/active/AdInfo;",
            ")",
            "Lteam/opay/business/provider/active/HomeModule;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    new-instance v0, Lteam/opay/business/provider/active/HomeModule;

    .line 2
    .line 3
    invoke-direct {v0, p1, p2, p3}, Lteam/opay/business/provider/active/HomeModule;-><init>(Lteam/opay/business/provider/active/HomeBusiness;Ljava/util/List;Lteam/opay/business/provider/active/AdInfo;)V

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
    instance-of v1, p1, Lteam/opay/business/provider/active/HomeModule;

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
    check-cast p1, Lteam/opay/business/provider/active/HomeModule;

    .line 12
    .line 13
    iget-object v1, p0, Lteam/opay/business/provider/active/HomeModule;->module:Lteam/opay/business/provider/active/HomeBusiness;

    .line 14
    .line 15
    iget-object v3, p1, Lteam/opay/business/provider/active/HomeModule;->module:Lteam/opay/business/provider/active/HomeBusiness;

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
    iget-object v1, p0, Lteam/opay/business/provider/active/HomeModule;->data:Ljava/util/List;

    .line 25
    .line 26
    iget-object v3, p1, Lteam/opay/business/provider/active/HomeModule;->data:Ljava/util/List;

    .line 27
    .line 28
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    if-nez v1, :cond_3

    .line 33
    .line 34
    return v2

    .line 35
    :cond_3
    iget-object v1, p0, Lteam/opay/business/provider/active/HomeModule;->adInfo:Lteam/opay/business/provider/active/AdInfo;

    .line 36
    .line 37
    iget-object p1, p1, Lteam/opay/business/provider/active/HomeModule;->adInfo:Lteam/opay/business/provider/active/AdInfo;

    .line 38
    .line 39
    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 40
    .line 41
    .line 42
    move-result p1

    .line 43
    if-nez p1, :cond_4

    .line 44
    .line 45
    return v2

    .line 46
    :cond_4
    return v0
.end method

.method public final getAdInfo()Lteam/opay/business/provider/active/AdInfo;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/business/provider/active/HomeModule;->adInfo:Lteam/opay/business/provider/active/AdInfo;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getData()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lteam/opay/business/provider/active/HomeBusiness;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/business/provider/active/HomeModule;->data:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getModule()Lteam/opay/business/provider/active/HomeBusiness;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/business/provider/active/HomeModule;->module:Lteam/opay/business/provider/active/HomeBusiness;

    .line 2
    .line 3
    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 1
    iget-object v0, p0, Lteam/opay/business/provider/active/HomeModule;->module:Lteam/opay/business/provider/active/HomeBusiness;

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
    invoke-virtual {v0}, Lteam/opay/business/provider/active/HomeBusiness;->hashCode()I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    .line 13
    .line 14
    iget-object v2, p0, Lteam/opay/business/provider/active/HomeModule;->data:Ljava/util/List;

    .line 15
    .line 16
    if-nez v2, :cond_1

    .line 17
    .line 18
    const/4 v2, 0x0

    .line 19
    goto :goto_1

    .line 20
    :cond_1
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    .line 21
    .line 22
    .line 23
    move-result v2

    .line 24
    :goto_1
    add-int/2addr v0, v2

    .line 25
    mul-int/lit8 v0, v0, 0x1f

    .line 26
    .line 27
    iget-object v2, p0, Lteam/opay/business/provider/active/HomeModule;->adInfo:Lteam/opay/business/provider/active/AdInfo;

    .line 28
    .line 29
    if-nez v2, :cond_2

    .line 30
    .line 31
    goto :goto_2

    .line 32
    :cond_2
    invoke-virtual {v2}, Lteam/opay/business/provider/active/AdInfo;->hashCode()I

    .line 33
    .line 34
    .line 35
    move-result v1

    .line 36
    :goto_2
    add-int/2addr v0, v1

    .line 37
    return v0
.end method

.method public final setAdInfo(Lteam/opay/business/provider/active/AdInfo;)V
    .locals 0
    .param p1    # Lteam/opay/business/provider/active/AdInfo;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lteam/opay/business/provider/active/HomeModule;->adInfo:Lteam/opay/business/provider/active/AdInfo;

    .line 2
    .line 3
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 5
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/business/provider/active/HomeModule;->module:Lteam/opay/business/provider/active/HomeBusiness;

    .line 2
    .line 3
    iget-object v1, p0, Lteam/opay/business/provider/active/HomeModule;->data:Ljava/util/List;

    .line 4
    .line 5
    iget-object v2, p0, Lteam/opay/business/provider/active/HomeModule;->adInfo:Lteam/opay/business/provider/active/AdInfo;

    .line 6
    .line 7
    new-instance v3, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 10
    .line 11
    .line 12
    const-string v4, "HomeModule(module="

    .line 13
    .line 14
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    const-string v0, ", data="

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
    const-string v0, ", adInfo="

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
