.class public final Lteam/opay/opb/transfer/bank/room/Service;
.super Ljava/lang/Object;
.source "ServicesDao.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lteam/opay/opb/transfer/bank/room/Service$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\n\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u0008\n\u0002\u0008\u0015\u0008\u0087\u0008\u0018\u0000 -2\u00020\u0001:\u0001.B]\u0012\u0008\u0008\u0002\u0010\u0003\u001a\u00020\u0002\u0012\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0002\u0012\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0005\u0012\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u0005\u0012\u0006\u0010\t\u001a\u00020\u0008\u0012\u0006\u0010\n\u001a\u00020\u0008\u0012\u0008\u0008\u0002\u0010\u000b\u001a\u00020\u0005\u0012\u0008\u0008\u0002\u0010\u000c\u001a\u00020\u0005\u0012\u0008\u0008\u0002\u0010\r\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u000e\u0010\u000fJ\u0015\u0010\u0011\u001a\u00020\u00052\u0006\u0010\u0010\u001a\u00020\u0008\u00a2\u0006\u0004\u0008\u0011\u0010\u0012J\u0015\u0010\u0015\u001a\u00020\u00022\u0006\u0010\u0014\u001a\u00020\u0013\u00a2\u0006\u0004\u0008\u0015\u0010\u0016J\r\u0010\u0017\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0017\u0010\u0018J\u0010\u0010\u0019\u001a\u00020\u0002H\u00d6\u0001\u00a2\u0006\u0004\u0008\u0019\u0010\u0018J\u0010\u0010\u001b\u001a\u00020\u001aH\u00d6\u0001\u00a2\u0006\u0004\u0008\u001b\u0010\u001cJ\u001a\u0010\u001e\u001a\u00020\u00052\u0008\u0010\u001d\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003\u00a2\u0006\u0004\u0008\u001e\u0010\u001fR\u001a\u0010\u0003\u001a\u00020\u00028\u0006X\u0087\u0004\u00a2\u0006\u000c\n\u0004\u0008 \u0010!\u001a\u0004\u0008\"\u0010\u0018R\u0017\u0010\u0004\u001a\u00020\u00028\u0006\u00a2\u0006\u000c\n\u0004\u0008#\u0010!\u001a\u0004\u0008$\u0010\u0018R\u0017\u0010\u0006\u001a\u00020\u00058\u0006\u00a2\u0006\u000c\n\u0004\u0008\"\u0010%\u001a\u0004\u0008 \u0010&R\u001a\u0010\u0007\u001a\u00020\u00058\u0006X\u0087\u0004\u00a2\u0006\u000c\n\u0004\u0008\'\u0010%\u001a\u0004\u0008#\u0010&R\u001a\u0010\t\u001a\u00020\u00088\u0006X\u0087\u0004\u00a2\u0006\u000c\n\u0004\u0008(\u0010)\u001a\u0004\u0008*\u0010+R\u001a\u0010\n\u001a\u00020\u00088\u0006X\u0087\u0004\u00a2\u0006\u000c\n\u0004\u0008,\u0010)\u001a\u0004\u0008\'\u0010+R\u0017\u0010\u000b\u001a\u00020\u00058\u0006\u00a2\u0006\u000c\n\u0004\u0008*\u0010%\u001a\u0004\u0008-\u0010&R\u001a\u0010\u000c\u001a\u00020\u00058\u0006X\u0087\u0004\u00a2\u0006\u000c\n\u0004\u0008\u0017\u0010%\u001a\u0004\u0008,\u0010&R\u001a\u0010\r\u001a\u00020\u00028\u0006X\u0087\u0004\u00a2\u0006\u000c\n\u0004\u0008\u0015\u0010!\u001a\u0004\u0008(\u0010\u0018\u00a8\u0006/"
    }
    d2 = {
        "Lteam/opay/opb/transfer/bank/room/Service;",
        "",
        "",
        "id",
        "type",
        "",
        "available",
        "enabled",
        "Lteam/opay/core/common/amount/MoneyAmount;",
        "minAmount",
        "maxAmount",
        "termsAndConditionsAccepted",
        "maxVerify",
        "maxMessage",
        "<init>",
        "(Ljava/lang/String;Ljava/lang/String;ZZLteam/opay/core/common/amount/MoneyAmount;Lteam/opay/core/common/amount/MoneyAmount;ZZLjava/lang/String;)V",
        "amount",
        "l",
        "(Lteam/opay/core/common/amount/MoneyAmount;)Z",
        "Landroid/content/Context;",
        "context",
        "i",
        "(Landroid/content/Context;)Ljava/lang/String;",
        "h",
        "()Ljava/lang/String;",
        "toString",
        "",
        "hashCode",
        "()I",
        "other",
        "equals",
        "(Ljava/lang/Object;)Z",
        "a",
        "Ljava/lang/String;",
        "c",
        "b",
        "k",
        "Z",
        "()Z",
        "d",
        "e",
        "Lteam/opay/core/common/amount/MoneyAmount;",
        "g",
        "()Lteam/opay/core/common/amount/MoneyAmount;",
        "f",
        "j",
        "Companion",
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


# static fields
.field public static final j:Lteam/opay/opb/transfer/bank/room/Service$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field public final a:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final b:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final c:Z

.field public final d:Z

.field public final e:Lteam/opay/core/common/amount/MoneyAmount;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final f:Lteam/opay/core/common/amount/MoneyAmount;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final g:Z

.field public final h:Z

.field public final i:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lteam/opay/opb/transfer/bank/room/Service$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lteam/opay/opb/transfer/bank/room/Service$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lteam/opay/opb/transfer/bank/room/Service;->j:Lteam/opay/opb/transfer/bank/room/Service$Companion;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ZZLteam/opay/core/common/amount/MoneyAmount;Lteam/opay/core/common/amount/MoneyAmount;ZZLjava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p5    # Lteam/opay/core/common/amount/MoneyAmount;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p6    # Lteam/opay/core/common/amount/MoneyAmount;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p9    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "id"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "type"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "minAmount"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "maxAmount"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "maxMessage"

    invoke-static {p9, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lteam/opay/opb/transfer/bank/room/Service;->a:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Lteam/opay/opb/transfer/bank/room/Service;->b:Ljava/lang/String;

    .line 4
    iput-boolean p3, p0, Lteam/opay/opb/transfer/bank/room/Service;->c:Z

    .line 5
    iput-boolean p4, p0, Lteam/opay/opb/transfer/bank/room/Service;->d:Z

    .line 6
    iput-object p5, p0, Lteam/opay/opb/transfer/bank/room/Service;->e:Lteam/opay/core/common/amount/MoneyAmount;

    .line 7
    iput-object p6, p0, Lteam/opay/opb/transfer/bank/room/Service;->f:Lteam/opay/core/common/amount/MoneyAmount;

    .line 8
    iput-boolean p7, p0, Lteam/opay/opb/transfer/bank/room/Service;->g:Z

    .line 9
    iput-boolean p8, p0, Lteam/opay/opb/transfer/bank/room/Service;->h:Z

    .line 10
    iput-object p9, p0, Lteam/opay/opb/transfer/bank/room/Service;->i:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;ZZLteam/opay/core/common/amount/MoneyAmount;Lteam/opay/core/common/amount/MoneyAmount;ZZLjava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 13

    move/from16 v0, p10

    and-int/lit8 v1, v0, 0x1

    .line 11
    const-string v2, ""

    if-eqz v1, :cond_0

    move-object v4, v2

    goto :goto_0

    :cond_0
    move-object v4, p1

    :goto_0
    and-int/lit8 v1, v0, 0x2

    if-eqz v1, :cond_1

    move-object v5, v2

    goto :goto_1

    :cond_1
    move-object v5, p2

    :goto_1
    and-int/lit8 v1, v0, 0x4

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    const/4 v6, 0x1

    goto :goto_2

    :cond_2
    move/from16 v6, p3

    :goto_2
    and-int/lit8 v1, v0, 0x8

    if-eqz v1, :cond_3

    const/4 v7, 0x1

    goto :goto_3

    :cond_3
    move/from16 v7, p4

    :goto_3
    and-int/lit8 v1, v0, 0x40

    if-eqz v1, :cond_4

    const/4 v1, 0x0

    const/4 v10, 0x0

    goto :goto_4

    :cond_4
    move/from16 v10, p7

    :goto_4
    and-int/lit16 v1, v0, 0x80

    if-eqz v1, :cond_5

    const/4 v11, 0x1

    goto :goto_5

    :cond_5
    move/from16 v11, p8

    :goto_5
    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_6

    .line 12
    const-string v0, "above"

    move-object v12, v0

    goto :goto_6

    :cond_6
    move-object/from16 v12, p9

    :goto_6
    move-object v3, p0

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    .line 13
    invoke-direct/range {v3 .. v12}, Lteam/opay/opb/transfer/bank/room/Service;-><init>(Ljava/lang/String;Ljava/lang/String;ZZLteam/opay/core/common/amount/MoneyAmount;Lteam/opay/core/common/amount/MoneyAmount;ZZLjava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lteam/opay/opb/transfer/bank/room/Service;->c:Z

    .line 2
    .line 3
    return v0
.end method

.method public final b()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lteam/opay/opb/transfer/bank/room/Service;->d:Z

    .line 2
    .line 3
    return v0
.end method

.method public final c()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/opb/transfer/bank/room/Service;->a:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final d()Lteam/opay/core/common/amount/MoneyAmount;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/opb/transfer/bank/room/Service;->f:Lteam/opay/core/common/amount/MoneyAmount;

    .line 2
    .line 3
    return-object v0
.end method

.method public final e()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/opb/transfer/bank/room/Service;->i:Ljava/lang/String;

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
    instance-of v1, p1, Lteam/opay/opb/transfer/bank/room/Service;

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
    check-cast p1, Lteam/opay/opb/transfer/bank/room/Service;

    .line 12
    .line 13
    iget-object v1, p0, Lteam/opay/opb/transfer/bank/room/Service;->a:Ljava/lang/String;

    .line 14
    .line 15
    iget-object v3, p1, Lteam/opay/opb/transfer/bank/room/Service;->a:Ljava/lang/String;

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
    iget-object v1, p0, Lteam/opay/opb/transfer/bank/room/Service;->b:Ljava/lang/String;

    .line 25
    .line 26
    iget-object v3, p1, Lteam/opay/opb/transfer/bank/room/Service;->b:Ljava/lang/String;

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
    iget-boolean v1, p0, Lteam/opay/opb/transfer/bank/room/Service;->c:Z

    .line 36
    .line 37
    iget-boolean v3, p1, Lteam/opay/opb/transfer/bank/room/Service;->c:Z

    .line 38
    .line 39
    if-eq v1, v3, :cond_4

    .line 40
    .line 41
    return v2

    .line 42
    :cond_4
    iget-boolean v1, p0, Lteam/opay/opb/transfer/bank/room/Service;->d:Z

    .line 43
    .line 44
    iget-boolean v3, p1, Lteam/opay/opb/transfer/bank/room/Service;->d:Z

    .line 45
    .line 46
    if-eq v1, v3, :cond_5

    .line 47
    .line 48
    return v2

    .line 49
    :cond_5
    iget-object v1, p0, Lteam/opay/opb/transfer/bank/room/Service;->e:Lteam/opay/core/common/amount/MoneyAmount;

    .line 50
    .line 51
    iget-object v3, p1, Lteam/opay/opb/transfer/bank/room/Service;->e:Lteam/opay/core/common/amount/MoneyAmount;

    .line 52
    .line 53
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 54
    .line 55
    .line 56
    move-result v1

    .line 57
    if-nez v1, :cond_6

    .line 58
    .line 59
    return v2

    .line 60
    :cond_6
    iget-object v1, p0, Lteam/opay/opb/transfer/bank/room/Service;->f:Lteam/opay/core/common/amount/MoneyAmount;

    .line 61
    .line 62
    iget-object v3, p1, Lteam/opay/opb/transfer/bank/room/Service;->f:Lteam/opay/core/common/amount/MoneyAmount;

    .line 63
    .line 64
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 65
    .line 66
    .line 67
    move-result v1

    .line 68
    if-nez v1, :cond_7

    .line 69
    .line 70
    return v2

    .line 71
    :cond_7
    iget-boolean v1, p0, Lteam/opay/opb/transfer/bank/room/Service;->g:Z

    .line 72
    .line 73
    iget-boolean v3, p1, Lteam/opay/opb/transfer/bank/room/Service;->g:Z

    .line 74
    .line 75
    if-eq v1, v3, :cond_8

    .line 76
    .line 77
    return v2

    .line 78
    :cond_8
    iget-boolean v1, p0, Lteam/opay/opb/transfer/bank/room/Service;->h:Z

    .line 79
    .line 80
    iget-boolean v3, p1, Lteam/opay/opb/transfer/bank/room/Service;->h:Z

    .line 81
    .line 82
    if-eq v1, v3, :cond_9

    .line 83
    .line 84
    return v2

    .line 85
    :cond_9
    iget-object v1, p0, Lteam/opay/opb/transfer/bank/room/Service;->i:Ljava/lang/String;

    .line 86
    .line 87
    iget-object p1, p1, Lteam/opay/opb/transfer/bank/room/Service;->i:Ljava/lang/String;

    .line 88
    .line 89
    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 90
    .line 91
    .line 92
    move-result p1

    .line 93
    if-nez p1, :cond_a

    .line 94
    .line 95
    return v2

    .line 96
    :cond_a
    return v0
.end method

.method public final f()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lteam/opay/opb/transfer/bank/room/Service;->h:Z

    .line 2
    .line 3
    return v0
.end method

.method public final g()Lteam/opay/core/common/amount/MoneyAmount;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/opb/transfer/bank/room/Service;->e:Lteam/opay/core/common/amount/MoneyAmount;

    .line 2
    .line 3
    return-object v0
.end method

.method public final h()Ljava/lang/String;
    .locals 4
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-boolean v0, p0, Lteam/opay/opb/transfer/bank/room/Service;->h:Z

    .line 2
    .line 3
    const-string v1, "-"

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Lteam/opay/opb/transfer/bank/room/Service;->e:Lteam/opay/core/common/amount/MoneyAmount;

    .line 8
    .line 9
    invoke-virtual {v0}, Lteam/opay/core/common/amount/MoneyAmount;->withMinor()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iget-object v2, p0, Lteam/opay/opb/transfer/bank/room/Service;->f:Lteam/opay/core/common/amount/MoneyAmount;

    .line 14
    .line 15
    invoke-virtual {v2}, Lteam/opay/core/common/amount/MoneyAmount;->withMinor()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    new-instance v3, Ljava/lang/StringBuilder;

    .line 20
    .line 21
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 22
    .line 23
    .line 24
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    goto :goto_0

    .line 38
    :cond_0
    iget-object v0, p0, Lteam/opay/opb/transfer/bank/room/Service;->e:Lteam/opay/core/common/amount/MoneyAmount;

    .line 39
    .line 40
    invoke-virtual {v0}, Lteam/opay/core/common/amount/MoneyAmount;->withMinor()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    iget-object v2, p0, Lteam/opay/opb/transfer/bank/room/Service;->i:Ljava/lang/String;

    .line 45
    .line 46
    invoke-static {v2}, Lkotlin/text/StringsKt;->s0(Ljava/lang/CharSequence;)Z

    .line 47
    .line 48
    .line 49
    move-result v3

    .line 50
    if-eqz v3, :cond_1

    .line 51
    .line 52
    const-string v2, "above"

    .line 53
    .line 54
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    .line 55
    .line 56
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 57
    .line 58
    .line 59
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    :goto_0
    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 1
    iget-object v0, p0, Lteam/opay/opb/transfer/bank/room/Service;->a:Ljava/lang/String;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    mul-int/lit8 v0, v0, 0x1f

    .line 8
    .line 9
    iget-object v1, p0, Lteam/opay/opb/transfer/bank/room/Service;->b:Ljava/lang/String;

    .line 10
    .line 11
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    add-int/2addr v0, v1

    .line 16
    mul-int/lit8 v0, v0, 0x1f

    .line 17
    .line 18
    iget-boolean v1, p0, Lteam/opay/opb/transfer/bank/room/Service;->c:Z

    .line 19
    .line 20
    invoke-static {v1}, Lii8;->a(Z)I

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    add-int/2addr v0, v1

    .line 25
    mul-int/lit8 v0, v0, 0x1f

    .line 26
    .line 27
    iget-boolean v1, p0, Lteam/opay/opb/transfer/bank/room/Service;->d:Z

    .line 28
    .line 29
    invoke-static {v1}, Lii8;->a(Z)I

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    add-int/2addr v0, v1

    .line 34
    mul-int/lit8 v0, v0, 0x1f

    .line 35
    .line 36
    iget-object v1, p0, Lteam/opay/opb/transfer/bank/room/Service;->e:Lteam/opay/core/common/amount/MoneyAmount;

    .line 37
    .line 38
    invoke-virtual {v1}, Lteam/opay/core/common/amount/MoneyAmount;->hashCode()I

    .line 39
    .line 40
    .line 41
    move-result v1

    .line 42
    add-int/2addr v0, v1

    .line 43
    mul-int/lit8 v0, v0, 0x1f

    .line 44
    .line 45
    iget-object v1, p0, Lteam/opay/opb/transfer/bank/room/Service;->f:Lteam/opay/core/common/amount/MoneyAmount;

    .line 46
    .line 47
    invoke-virtual {v1}, Lteam/opay/core/common/amount/MoneyAmount;->hashCode()I

    .line 48
    .line 49
    .line 50
    move-result v1

    .line 51
    add-int/2addr v0, v1

    .line 52
    mul-int/lit8 v0, v0, 0x1f

    .line 53
    .line 54
    iget-boolean v1, p0, Lteam/opay/opb/transfer/bank/room/Service;->g:Z

    .line 55
    .line 56
    invoke-static {v1}, Lii8;->a(Z)I

    .line 57
    .line 58
    .line 59
    move-result v1

    .line 60
    add-int/2addr v0, v1

    .line 61
    mul-int/lit8 v0, v0, 0x1f

    .line 62
    .line 63
    iget-boolean v1, p0, Lteam/opay/opb/transfer/bank/room/Service;->h:Z

    .line 64
    .line 65
    invoke-static {v1}, Lii8;->a(Z)I

    .line 66
    .line 67
    .line 68
    move-result v1

    .line 69
    add-int/2addr v0, v1

    .line 70
    mul-int/lit8 v0, v0, 0x1f

    .line 71
    .line 72
    iget-object v1, p0, Lteam/opay/opb/transfer/bank/room/Service;->i:Ljava/lang/String;

    .line 73
    .line 74
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 75
    .line 76
    .line 77
    move-result v1

    .line 78
    add-int/2addr v0, v1

    .line 79
    return v0
.end method

.method public final i(Landroid/content/Context;)Ljava/lang/String;
    .locals 6
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    const-string v2, "context"

    .line 4
    .line 5
    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-boolean v2, p0, Lteam/opay/opb/transfer/bank/room/Service;->h:Z

    .line 9
    .line 10
    const-string v3, ""

    .line 11
    .line 12
    if-eqz v2, :cond_0

    .line 13
    .line 14
    sget v2, Lteam/opay/opb/transfer/bank/R$string;->bank_amount_limit:I

    .line 15
    .line 16
    iget-object v4, p0, Lteam/opay/opb/transfer/bank/room/Service;->e:Lteam/opay/core/common/amount/MoneyAmount;

    .line 17
    .line 18
    invoke-virtual {v4, v3}, Lteam/opay/core/common/amount/MoneyAmount;->toText(Ljava/lang/String;)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v4

    .line 22
    iget-object v5, p0, Lteam/opay/opb/transfer/bank/room/Service;->f:Lteam/opay/core/common/amount/MoneyAmount;

    .line 23
    .line 24
    invoke-virtual {v5, v3}, Lteam/opay/core/common/amount/MoneyAmount;->toText(Ljava/lang/String;)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v3

    .line 28
    const/4 v5, 0x2

    .line 29
    new-array v5, v5, [Ljava/lang/Object;

    .line 30
    .line 31
    aput-object v4, v5, v1

    .line 32
    .line 33
    aput-object v3, v5, v0

    .line 34
    .line 35
    invoke-virtual {p1, v2, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    goto :goto_0

    .line 40
    :cond_0
    sget v2, Lteam/opay/opb/transfer/bank/R$string;->bank_amount_limit_min:I

    .line 41
    .line 42
    iget-object v4, p0, Lteam/opay/opb/transfer/bank/room/Service;->e:Lteam/opay/core/common/amount/MoneyAmount;

    .line 43
    .line 44
    invoke-virtual {v4, v3}, Lteam/opay/core/common/amount/MoneyAmount;->toText(Ljava/lang/String;)Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v3

    .line 48
    new-array v0, v0, [Ljava/lang/Object;

    .line 49
    .line 50
    aput-object v3, v0, v1

    .line 51
    .line 52
    invoke-virtual {p1, v2, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    :goto_0
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;)V

    .line 57
    .line 58
    .line 59
    return-object p1
.end method

.method public final j()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lteam/opay/opb/transfer/bank/room/Service;->g:Z

    .line 2
    .line 3
    return v0
.end method

.method public final k()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/opb/transfer/bank/room/Service;->b:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final l(Lteam/opay/core/common/amount/MoneyAmount;)Z
    .locals 3
    .param p1    # Lteam/opay/core/common/amount/MoneyAmount;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "amount"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-boolean v0, p0, Lteam/opay/opb/transfer/bank/room/Service;->h:Z

    .line 7
    .line 8
    const/4 v1, 0x1

    .line 9
    const/4 v2, 0x0

    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    iget-object v0, p0, Lteam/opay/opb/transfer/bank/room/Service;->e:Lteam/opay/core/common/amount/MoneyAmount;

    .line 13
    .line 14
    invoke-virtual {v0, p1}, Lteam/opay/core/common/amount/MoneyAmount;->compareTo(Lteam/opay/core/common/amount/MoneyAmount;)I

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-gtz v0, :cond_2

    .line 19
    .line 20
    iget-object v0, p0, Lteam/opay/opb/transfer/bank/room/Service;->f:Lteam/opay/core/common/amount/MoneyAmount;

    .line 21
    .line 22
    invoke-virtual {v0, p1}, Lteam/opay/core/common/amount/MoneyAmount;->compareTo(Lteam/opay/core/common/amount/MoneyAmount;)I

    .line 23
    .line 24
    .line 25
    move-result p1

    .line 26
    if-gez p1, :cond_0

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_0
    const/4 v1, 0x0

    .line 30
    goto :goto_0

    .line 31
    :cond_1
    iget-object v0, p0, Lteam/opay/opb/transfer/bank/room/Service;->e:Lteam/opay/core/common/amount/MoneyAmount;

    .line 32
    .line 33
    invoke-virtual {v0, p1}, Lteam/opay/core/common/amount/MoneyAmount;->compareTo(Lteam/opay/core/common/amount/MoneyAmount;)I

    .line 34
    .line 35
    .line 36
    move-result p1

    .line 37
    if-lez p1, :cond_0

    .line 38
    .line 39
    :cond_2
    :goto_0
    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 11
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/opb/transfer/bank/room/Service;->a:Ljava/lang/String;

    .line 2
    .line 3
    iget-object v1, p0, Lteam/opay/opb/transfer/bank/room/Service;->b:Ljava/lang/String;

    .line 4
    .line 5
    iget-boolean v2, p0, Lteam/opay/opb/transfer/bank/room/Service;->c:Z

    .line 6
    .line 7
    iget-boolean v3, p0, Lteam/opay/opb/transfer/bank/room/Service;->d:Z

    .line 8
    .line 9
    iget-object v4, p0, Lteam/opay/opb/transfer/bank/room/Service;->e:Lteam/opay/core/common/amount/MoneyAmount;

    .line 10
    .line 11
    iget-object v5, p0, Lteam/opay/opb/transfer/bank/room/Service;->f:Lteam/opay/core/common/amount/MoneyAmount;

    .line 12
    .line 13
    iget-boolean v6, p0, Lteam/opay/opb/transfer/bank/room/Service;->g:Z

    .line 14
    .line 15
    iget-boolean v7, p0, Lteam/opay/opb/transfer/bank/room/Service;->h:Z

    .line 16
    .line 17
    iget-object v8, p0, Lteam/opay/opb/transfer/bank/room/Service;->i:Ljava/lang/String;

    .line 18
    .line 19
    new-instance v9, Ljava/lang/StringBuilder;

    .line 20
    .line 21
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 22
    .line 23
    .line 24
    const-string v10, "Service(id="

    .line 25
    .line 26
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    const-string v0, ", type="

    .line 33
    .line 34
    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    const-string v0, ", available="

    .line 41
    .line 42
    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    const-string v0, ", enabled="

    .line 49
    .line 50
    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    const-string v0, ", minAmount="

    .line 57
    .line 58
    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    const-string v0, ", maxAmount="

    .line 65
    .line 66
    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    const-string v0, ", termsAndConditionsAccepted="

    .line 73
    .line 74
    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    const-string v0, ", maxVerify="

    .line 81
    .line 82
    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    const-string v0, ", maxMessage="

    .line 89
    .line 90
    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    const-string v0, ")"

    .line 97
    .line 98
    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    .line 100
    .line 101
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object v0

    .line 105
    return-object v0
.end method
