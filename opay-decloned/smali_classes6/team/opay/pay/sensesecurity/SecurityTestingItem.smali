.class public final Lteam/opay/pay/sensesecurity/SecurityTestingItem;
.super Ljava/lang/Object;
.source "SecurityTestingAdapter.kt"

# interfaces
.implements Lcom/chad/library/adapter/base/entity/MultiItemEntity;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lteam/opay/pay/sensesecurity/SecurityTestingItem$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0010\u0000\n\u0002\u0008\u000f\u0008\u0086\u0008\u0018\u0000 \u001e2\u00020\u0001:\u0001\u001fB1\u0012\u0008\u0008\u0002\u0010\u0003\u001a\u00020\u0002\u0012\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0002\u0012\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u0002\u0012\n\u0008\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0006\u00a2\u0006\u0004\u0008\u0008\u0010\tJ\u000f\u0010\u000b\u001a\u00020\nH\u0016\u00a2\u0006\u0004\u0008\u000b\u0010\u000cJ\u0010\u0010\u000e\u001a\u00020\rH\u00d6\u0001\u00a2\u0006\u0004\u0008\u000e\u0010\u000fJ\u0010\u0010\u0010\u001a\u00020\nH\u00d6\u0001\u00a2\u0006\u0004\u0008\u0010\u0010\u000cJ\u001a\u0010\u0013\u001a\u00020\u00022\u0008\u0010\u0012\u001a\u0004\u0018\u00010\u0011H\u00d6\u0003\u00a2\u0006\u0004\u0008\u0013\u0010\u0014R\u0017\u0010\u0003\u001a\u00020\u00028\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0015\u0010\u0016\u001a\u0004\u0008\u0017\u0010\u0018R\u0017\u0010\u0004\u001a\u00020\u00028\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0017\u0010\u0016\u001a\u0004\u0008\u0019\u0010\u0018R\u0017\u0010\u0005\u001a\u00020\u00028\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0019\u0010\u0016\u001a\u0004\u0008\u001a\u0010\u0018R\u001c\u0010\u0007\u001a\u0004\u0018\u00010\u00068\u0006X\u0087\u0004\u00a2\u0006\u000c\n\u0004\u0008\u001b\u0010\u001c\u001a\u0004\u0008\u0015\u0010\u001d\u00a8\u0006 "
    }
    d2 = {
        "Lteam/opay/pay/sensesecurity/SecurityTestingItem;",
        "Lcom/chad/library/adapter/base/entity/MultiItemEntity;",
        "",
        "lastItem",
        "topItem",
        "ndic",
        "Lteam/opay/pay/sensesecurity/SecurityCenterLikeHomeItem;",
        "item",
        "<init>",
        "(ZZZLteam/opay/pay/sensesecurity/SecurityCenterLikeHomeItem;)V",
        "",
        "getItemType",
        "()I",
        "",
        "toString",
        "()Ljava/lang/String;",
        "hashCode",
        "",
        "other",
        "equals",
        "(Ljava/lang/Object;)Z",
        "a",
        "Z",
        "b",
        "()Z",
        "c",
        "getNdic",
        "d",
        "Lteam/opay/pay/sensesecurity/SecurityCenterLikeHomeItem;",
        "()Lteam/opay/pay/sensesecurity/SecurityCenterLikeHomeItem;",
        "e",
        "Companion",
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


# static fields
.field public static final e:Lteam/opay/pay/sensesecurity/SecurityTestingItem$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field public final transient a:Z

.field public final transient b:Z

.field public final transient c:Z

.field private final d:Lteam/opay/pay/sensesecurity/SecurityCenterLikeHomeItem;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "item"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lteam/opay/pay/sensesecurity/SecurityTestingItem$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lteam/opay/pay/sensesecurity/SecurityTestingItem$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lteam/opay/pay/sensesecurity/SecurityTestingItem;->e:Lteam/opay/pay/sensesecurity/SecurityTestingItem$Companion;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>()V
    .locals 7

    .line 1
    const/16 v5, 0xf

    const/4 v6, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lteam/opay/pay/sensesecurity/SecurityTestingItem;-><init>(ZZZLteam/opay/pay/sensesecurity/SecurityCenterLikeHomeItem;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(ZZZLteam/opay/pay/sensesecurity/SecurityCenterLikeHomeItem;)V
    .locals 0
    .param p4    # Lteam/opay/pay/sensesecurity/SecurityCenterLikeHomeItem;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-boolean p1, p0, Lteam/opay/pay/sensesecurity/SecurityTestingItem;->a:Z

    .line 4
    iput-boolean p2, p0, Lteam/opay/pay/sensesecurity/SecurityTestingItem;->b:Z

    .line 5
    iput-boolean p3, p0, Lteam/opay/pay/sensesecurity/SecurityTestingItem;->c:Z

    .line 6
    iput-object p4, p0, Lteam/opay/pay/sensesecurity/SecurityTestingItem;->d:Lteam/opay/pay/sensesecurity/SecurityCenterLikeHomeItem;

    return-void
.end method

.method public synthetic constructor <init>(ZZZLteam/opay/pay/sensesecurity/SecurityCenterLikeHomeItem;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    and-int/lit8 p6, p5, 0x1

    const/4 v0, 0x0

    if-eqz p6, :cond_0

    const/4 p1, 0x0

    :cond_0
    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_1

    const/4 p2, 0x0

    :cond_1
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_2

    const/4 p3, 0x0

    :cond_2
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_3

    const/4 p4, 0x0

    .line 7
    :cond_3
    invoke-direct {p0, p1, p2, p3, p4}, Lteam/opay/pay/sensesecurity/SecurityTestingItem;-><init>(ZZZLteam/opay/pay/sensesecurity/SecurityCenterLikeHomeItem;)V

    return-void
.end method


# virtual methods
.method public final a()Lteam/opay/pay/sensesecurity/SecurityCenterLikeHomeItem;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/sensesecurity/SecurityTestingItem;->d:Lteam/opay/pay/sensesecurity/SecurityCenterLikeHomeItem;

    .line 2
    .line 3
    return-object v0
.end method

.method public final b()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lteam/opay/pay/sensesecurity/SecurityTestingItem;->a:Z

    .line 2
    .line 3
    return v0
.end method

.method public final c()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lteam/opay/pay/sensesecurity/SecurityTestingItem;->b:Z

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
    instance-of v1, p1, Lteam/opay/pay/sensesecurity/SecurityTestingItem;

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
    check-cast p1, Lteam/opay/pay/sensesecurity/SecurityTestingItem;

    .line 12
    .line 13
    iget-boolean v1, p0, Lteam/opay/pay/sensesecurity/SecurityTestingItem;->a:Z

    .line 14
    .line 15
    iget-boolean v3, p1, Lteam/opay/pay/sensesecurity/SecurityTestingItem;->a:Z

    .line 16
    .line 17
    if-eq v1, v3, :cond_2

    .line 18
    .line 19
    return v2

    .line 20
    :cond_2
    iget-boolean v1, p0, Lteam/opay/pay/sensesecurity/SecurityTestingItem;->b:Z

    .line 21
    .line 22
    iget-boolean v3, p1, Lteam/opay/pay/sensesecurity/SecurityTestingItem;->b:Z

    .line 23
    .line 24
    if-eq v1, v3, :cond_3

    .line 25
    .line 26
    return v2

    .line 27
    :cond_3
    iget-boolean v1, p0, Lteam/opay/pay/sensesecurity/SecurityTestingItem;->c:Z

    .line 28
    .line 29
    iget-boolean v3, p1, Lteam/opay/pay/sensesecurity/SecurityTestingItem;->c:Z

    .line 30
    .line 31
    if-eq v1, v3, :cond_4

    .line 32
    .line 33
    return v2

    .line 34
    :cond_4
    iget-object v1, p0, Lteam/opay/pay/sensesecurity/SecurityTestingItem;->d:Lteam/opay/pay/sensesecurity/SecurityCenterLikeHomeItem;

    .line 35
    .line 36
    iget-object p1, p1, Lteam/opay/pay/sensesecurity/SecurityTestingItem;->d:Lteam/opay/pay/sensesecurity/SecurityCenterLikeHomeItem;

    .line 37
    .line 38
    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 39
    .line 40
    .line 41
    move-result p1

    .line 42
    if-nez p1, :cond_5

    .line 43
    .line 44
    return v2

    .line 45
    :cond_5
    return v0
.end method

.method public getItemType()I
    .locals 1

    .line 1
    iget-boolean v0, p0, Lteam/opay/pay/sensesecurity/SecurityTestingItem;->c:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/16 v0, 0xd

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const/16 v0, 0xc

    .line 9
    .line 10
    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 2

    .line 1
    iget-boolean v0, p0, Lteam/opay/pay/sensesecurity/SecurityTestingItem;->a:Z

    .line 2
    .line 3
    invoke-static {v0}, Lii8;->a(Z)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    mul-int/lit8 v0, v0, 0x1f

    .line 8
    .line 9
    iget-boolean v1, p0, Lteam/opay/pay/sensesecurity/SecurityTestingItem;->b:Z

    .line 10
    .line 11
    invoke-static {v1}, Lii8;->a(Z)I

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
    iget-boolean v1, p0, Lteam/opay/pay/sensesecurity/SecurityTestingItem;->c:Z

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
    iget-object v1, p0, Lteam/opay/pay/sensesecurity/SecurityTestingItem;->d:Lteam/opay/pay/sensesecurity/SecurityCenterLikeHomeItem;

    .line 28
    .line 29
    if-nez v1, :cond_0

    .line 30
    .line 31
    const/4 v1, 0x0

    .line 32
    goto :goto_0

    .line 33
    :cond_0
    invoke-virtual {v1}, Lteam/opay/pay/sensesecurity/SecurityCenterLikeHomeItem;->hashCode()I

    .line 34
    .line 35
    .line 36
    move-result v1

    .line 37
    :goto_0
    add-int/2addr v0, v1

    .line 38
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 6
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-boolean v0, p0, Lteam/opay/pay/sensesecurity/SecurityTestingItem;->a:Z

    .line 2
    .line 3
    iget-boolean v1, p0, Lteam/opay/pay/sensesecurity/SecurityTestingItem;->b:Z

    .line 4
    .line 5
    iget-boolean v2, p0, Lteam/opay/pay/sensesecurity/SecurityTestingItem;->c:Z

    .line 6
    .line 7
    iget-object v3, p0, Lteam/opay/pay/sensesecurity/SecurityTestingItem;->d:Lteam/opay/pay/sensesecurity/SecurityCenterLikeHomeItem;

    .line 8
    .line 9
    new-instance v4, Ljava/lang/StringBuilder;

    .line 10
    .line 11
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 12
    .line 13
    .line 14
    const-string v5, "SecurityTestingItem(lastItem="

    .line 15
    .line 16
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    const-string v0, ", topItem="

    .line 23
    .line 24
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    const-string v0, ", ndic="

    .line 31
    .line 32
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    const-string v0, ", item="

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
