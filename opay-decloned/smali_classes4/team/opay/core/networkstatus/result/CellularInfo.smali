.class public final Lteam/opay/core/networkstatus/result/CellularInfo;
.super Ljava/lang/Object;
.source "ResultData.kt"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0008\n\u0002\u0010\u000b\n\u0002\u0008\u0006\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\u0008\u0086\u0008\u0018\u00002\u00020\u0001B)\u0012\n\u0008\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u0012\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J\u0006\u0010\u000e\u001a\u00020\u000fJ\u000b\u0010\u0010\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003J\u000b\u0010\u0011\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003J\t\u0010\u0012\u001a\u00020\u0006H\u00c6\u0003J+\u0010\u0013\u001a\u00020\u00002\n\u0008\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00032\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u0006H\u00c6\u0001J\u0013\u0010\u0014\u001a\u00020\u000f2\u0008\u0010\u0015\u001a\u0004\u0018\u00010\u0016H\u00d6\u0003J\t\u0010\u0017\u001a\u00020\u0018H\u00d6\u0001J\t\u0010\u0019\u001a\u00020\u0006H\u00d6\u0001R\u0013\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\nR\u0013\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\nR\u0011\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\r\u00a8\u0006\u001a"
    }
    d2 = {
        "Lteam/opay/core/networkstatus/result/CellularInfo;",
        "Ljava/io/Serializable;",
        "sim0",
        "Lteam/opay/core/networkstatus/result/SimInfo;",
        "sim1",
        "errorMsg",
        "",
        "<init>",
        "(Lteam/opay/core/networkstatus/result/SimInfo;Lteam/opay/core/networkstatus/result/SimInfo;Ljava/lang/String;)V",
        "getSim0",
        "()Lteam/opay/core/networkstatus/result/SimInfo;",
        "getSim1",
        "getErrorMsg",
        "()Ljava/lang/String;",
        "isEnable",
        "",
        "component1",
        "component2",
        "component3",
        "copy",
        "equals",
        "other",
        "",
        "hashCode",
        "",
        "toString",
        "network-status-ping_release"
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
.field private final errorMsg:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final sim0:Lteam/opay/core/networkstatus/result/SimInfo;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final sim1:Lteam/opay/core/networkstatus/result/SimInfo;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 6

    .line 1
    const/4 v4, 0x7

    const/4 v5, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lteam/opay/core/networkstatus/result/CellularInfo;-><init>(Lteam/opay/core/networkstatus/result/SimInfo;Lteam/opay/core/networkstatus/result/SimInfo;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lteam/opay/core/networkstatus/result/SimInfo;Lteam/opay/core/networkstatus/result/SimInfo;Ljava/lang/String;)V
    .locals 1
    .param p1    # Lteam/opay/core/networkstatus/result/SimInfo;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Lteam/opay/core/networkstatus/result/SimInfo;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "errorMsg"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lteam/opay/core/networkstatus/result/CellularInfo;->sim0:Lteam/opay/core/networkstatus/result/SimInfo;

    .line 4
    iput-object p2, p0, Lteam/opay/core/networkstatus/result/CellularInfo;->sim1:Lteam/opay/core/networkstatus/result/SimInfo;

    .line 5
    iput-object p3, p0, Lteam/opay/core/networkstatus/result/CellularInfo;->errorMsg:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Lteam/opay/core/networkstatus/result/SimInfo;Lteam/opay/core/networkstatus/result/SimInfo;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    and-int/lit8 p5, p4, 0x1

    const/4 v0, 0x0

    if-eqz p5, :cond_0

    move-object p1, v0

    :cond_0
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_1

    move-object p2, v0

    :cond_1
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_2

    .line 6
    const-string p3, ""

    .line 7
    :cond_2
    invoke-direct {p0, p1, p2, p3}, Lteam/opay/core/networkstatus/result/CellularInfo;-><init>(Lteam/opay/core/networkstatus/result/SimInfo;Lteam/opay/core/networkstatus/result/SimInfo;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic copy$default(Lteam/opay/core/networkstatus/result/CellularInfo;Lteam/opay/core/networkstatus/result/SimInfo;Lteam/opay/core/networkstatus/result/SimInfo;Ljava/lang/String;ILjava/lang/Object;)Lteam/opay/core/networkstatus/result/CellularInfo;
    .locals 0

    .line 1
    and-int/lit8 p5, p4, 0x1

    .line 2
    .line 3
    if-eqz p5, :cond_0

    .line 4
    .line 5
    iget-object p1, p0, Lteam/opay/core/networkstatus/result/CellularInfo;->sim0:Lteam/opay/core/networkstatus/result/SimInfo;

    .line 6
    .line 7
    :cond_0
    and-int/lit8 p5, p4, 0x2

    .line 8
    .line 9
    if-eqz p5, :cond_1

    .line 10
    .line 11
    iget-object p2, p0, Lteam/opay/core/networkstatus/result/CellularInfo;->sim1:Lteam/opay/core/networkstatus/result/SimInfo;

    .line 12
    .line 13
    :cond_1
    and-int/lit8 p4, p4, 0x4

    .line 14
    .line 15
    if-eqz p4, :cond_2

    .line 16
    .line 17
    iget-object p3, p0, Lteam/opay/core/networkstatus/result/CellularInfo;->errorMsg:Ljava/lang/String;

    .line 18
    .line 19
    :cond_2
    invoke-virtual {p0, p1, p2, p3}, Lteam/opay/core/networkstatus/result/CellularInfo;->copy(Lteam/opay/core/networkstatus/result/SimInfo;Lteam/opay/core/networkstatus/result/SimInfo;Ljava/lang/String;)Lteam/opay/core/networkstatus/result/CellularInfo;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    return-object p0
.end method


# virtual methods
.method public final component1()Lteam/opay/core/networkstatus/result/SimInfo;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/core/networkstatus/result/CellularInfo;->sim0:Lteam/opay/core/networkstatus/result/SimInfo;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component2()Lteam/opay/core/networkstatus/result/SimInfo;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/core/networkstatus/result/CellularInfo;->sim1:Lteam/opay/core/networkstatus/result/SimInfo;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component3()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/core/networkstatus/result/CellularInfo;->errorMsg:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final copy(Lteam/opay/core/networkstatus/result/SimInfo;Lteam/opay/core/networkstatus/result/SimInfo;Ljava/lang/String;)Lteam/opay/core/networkstatus/result/CellularInfo;
    .locals 1
    .param p1    # Lteam/opay/core/networkstatus/result/SimInfo;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Lteam/opay/core/networkstatus/result/SimInfo;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "errorMsg"

    .line 2
    .line 3
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Lteam/opay/core/networkstatus/result/CellularInfo;

    .line 7
    .line 8
    invoke-direct {v0, p1, p2, p3}, Lteam/opay/core/networkstatus/result/CellularInfo;-><init>(Lteam/opay/core/networkstatus/result/SimInfo;Lteam/opay/core/networkstatus/result/SimInfo;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
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
    instance-of v1, p1, Lteam/opay/core/networkstatus/result/CellularInfo;

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
    check-cast p1, Lteam/opay/core/networkstatus/result/CellularInfo;

    .line 12
    .line 13
    iget-object v1, p0, Lteam/opay/core/networkstatus/result/CellularInfo;->sim0:Lteam/opay/core/networkstatus/result/SimInfo;

    .line 14
    .line 15
    iget-object v3, p1, Lteam/opay/core/networkstatus/result/CellularInfo;->sim0:Lteam/opay/core/networkstatus/result/SimInfo;

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
    iget-object v1, p0, Lteam/opay/core/networkstatus/result/CellularInfo;->sim1:Lteam/opay/core/networkstatus/result/SimInfo;

    .line 25
    .line 26
    iget-object v3, p1, Lteam/opay/core/networkstatus/result/CellularInfo;->sim1:Lteam/opay/core/networkstatus/result/SimInfo;

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
    iget-object v1, p0, Lteam/opay/core/networkstatus/result/CellularInfo;->errorMsg:Ljava/lang/String;

    .line 36
    .line 37
    iget-object p1, p1, Lteam/opay/core/networkstatus/result/CellularInfo;->errorMsg:Ljava/lang/String;

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

.method public final getErrorMsg()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/core/networkstatus/result/CellularInfo;->errorMsg:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getSim0()Lteam/opay/core/networkstatus/result/SimInfo;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/core/networkstatus/result/CellularInfo;->sim0:Lteam/opay/core/networkstatus/result/SimInfo;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getSim1()Lteam/opay/core/networkstatus/result/SimInfo;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/core/networkstatus/result/CellularInfo;->sim1:Lteam/opay/core/networkstatus/result/SimInfo;

    .line 2
    .line 3
    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 1
    iget-object v0, p0, Lteam/opay/core/networkstatus/result/CellularInfo;->sim0:Lteam/opay/core/networkstatus/result/SimInfo;

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
    invoke-virtual {v0}, Lteam/opay/core/networkstatus/result/SimInfo;->hashCode()I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    .line 13
    .line 14
    iget-object v2, p0, Lteam/opay/core/networkstatus/result/CellularInfo;->sim1:Lteam/opay/core/networkstatus/result/SimInfo;

    .line 15
    .line 16
    if-nez v2, :cond_1

    .line 17
    .line 18
    goto :goto_1

    .line 19
    :cond_1
    invoke-virtual {v2}, Lteam/opay/core/networkstatus/result/SimInfo;->hashCode()I

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    :goto_1
    add-int/2addr v0, v1

    .line 24
    mul-int/lit8 v0, v0, 0x1f

    .line 25
    .line 26
    iget-object v1, p0, Lteam/opay/core/networkstatus/result/CellularInfo;->errorMsg:Ljava/lang/String;

    .line 27
    .line 28
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    add-int/2addr v0, v1

    .line 33
    return v0
.end method

.method public final isEnable()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lteam/opay/core/networkstatus/result/CellularInfo;->sim0:Lteam/opay/core/networkstatus/result/SimInfo;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    invoke-virtual {v0}, Lteam/opay/core/networkstatus/result/SimInfo;->isEnable()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-ne v0, v1, :cond_0

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    iget-object v0, p0, Lteam/opay/core/networkstatus/result/CellularInfo;->sim1:Lteam/opay/core/networkstatus/result/SimInfo;

    .line 14
    .line 15
    if-eqz v0, :cond_1

    .line 16
    .line 17
    invoke-virtual {v0}, Lteam/opay/core/networkstatus/result/SimInfo;->isEnable()Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-ne v0, v1, :cond_1

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_1
    const/4 v1, 0x0

    .line 25
    :goto_0
    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 5
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/core/networkstatus/result/CellularInfo;->sim0:Lteam/opay/core/networkstatus/result/SimInfo;

    .line 2
    .line 3
    iget-object v1, p0, Lteam/opay/core/networkstatus/result/CellularInfo;->sim1:Lteam/opay/core/networkstatus/result/SimInfo;

    .line 4
    .line 5
    iget-object v2, p0, Lteam/opay/core/networkstatus/result/CellularInfo;->errorMsg:Ljava/lang/String;

    .line 6
    .line 7
    new-instance v3, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 10
    .line 11
    .line 12
    const-string v4, "CellularInfo(sim0="

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
    const-string v0, ", sim1="

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
    const-string v0, ", errorMsg="

    .line 29
    .line 30
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

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
