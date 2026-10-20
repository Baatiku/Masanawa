.class public final Lteam/opay/core/card/PhysicalCardNativeUnActivatedInstantDto;
.super Ljava/lang/Object;
.source "CardDataRsp.kt"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0010\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0000\u0008\u0086\u0008\u0018\u00002\u00020\u0001B3\u0012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\n\u0008\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u0012\n\u0008\u0002\u0010\u0008\u001a\u0004\u0018\u00010\t\u00a2\u0006\u0004\u0008\n\u0010\u000bJ\u000b\u0010\u0014\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003J\u000b\u0010\u0015\u001a\u0004\u0018\u00010\u0005H\u00c6\u0003J\u000b\u0010\u0016\u001a\u0004\u0018\u00010\u0007H\u00c6\u0003J\u000b\u0010\u0017\u001a\u0004\u0018\u00010\tH\u00c6\u0003J9\u0010\u0018\u001a\u00020\u00002\n\u0008\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00052\n\u0008\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00072\n\u0008\u0002\u0010\u0008\u001a\u0004\u0018\u00010\tH\u00c6\u0001J\u0013\u0010\u0019\u001a\u00020\u001a2\u0008\u0010\u001b\u001a\u0004\u0018\u00010\u001cH\u00d6\u0003J\t\u0010\u001d\u001a\u00020\u001eH\u00d6\u0001J\t\u0010\u001f\u001a\u00020 H\u00d6\u0001R\u0018\u0010\u0002\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\rR\u0018\u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000e\u0010\u000fR\u0018\u0010\u0006\u001a\u0004\u0018\u00010\u00078\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0010\u0010\u0011R\u0018\u0010\u0008\u001a\u0004\u0018\u00010\t8\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0012\u0010\u0013\u00a8\u0006!"
    }
    d2 = {
        "Lteam/opay/core/card/PhysicalCardNativeUnActivatedInstantDto;",
        "Ljava/io/Serializable;",
        "finishDto",
        "Lteam/opay/core/card/PhysicalCardNativeUnActivatedUnInDto;",
        "unActivatedInstantPopupFrequency",
        "Lteam/opay/core/card/CardPopupFrequency;",
        "homePageFloatingWindowDto",
        "Lteam/opay/core/card/HomePageFloatingWindowDto;",
        "physicalInstantDto",
        "Lteam/opay/core/card/CardNotAppliedContentDto;",
        "<init>",
        "(Lteam/opay/core/card/PhysicalCardNativeUnActivatedUnInDto;Lteam/opay/core/card/CardPopupFrequency;Lteam/opay/core/card/HomePageFloatingWindowDto;Lteam/opay/core/card/CardNotAppliedContentDto;)V",
        "getFinishDto",
        "()Lteam/opay/core/card/PhysicalCardNativeUnActivatedUnInDto;",
        "getUnActivatedInstantPopupFrequency",
        "()Lteam/opay/core/card/CardPopupFrequency;",
        "getHomePageFloatingWindowDto",
        "()Lteam/opay/core/card/HomePageFloatingWindowDto;",
        "getPhysicalInstantDto",
        "()Lteam/opay/core/card/CardNotAppliedContentDto;",
        "component1",
        "component2",
        "component3",
        "component4",
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
.field private final finishDto:Lteam/opay/core/card/PhysicalCardNativeUnActivatedUnInDto;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "finishDto"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final homePageFloatingWindowDto:Lteam/opay/core/card/HomePageFloatingWindowDto;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "homePageFloatingWindowDto"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final physicalInstantDto:Lteam/opay/core/card/CardNotAppliedContentDto;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "physicalInstantDto"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final unActivatedInstantPopupFrequency:Lteam/opay/core/card/CardPopupFrequency;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "unActivatedInstantPopupFrequency"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lteam/opay/core/card/PhysicalCardNativeUnActivatedUnInDto;Lteam/opay/core/card/CardPopupFrequency;Lteam/opay/core/card/HomePageFloatingWindowDto;Lteam/opay/core/card/CardNotAppliedContentDto;)V
    .locals 0
    .param p1    # Lteam/opay/core/card/PhysicalCardNativeUnActivatedUnInDto;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Lteam/opay/core/card/CardPopupFrequency;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Lteam/opay/core/card/HomePageFloatingWindowDto;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4    # Lteam/opay/core/card/CardNotAppliedContentDto;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lteam/opay/core/card/PhysicalCardNativeUnActivatedInstantDto;->finishDto:Lteam/opay/core/card/PhysicalCardNativeUnActivatedUnInDto;

    .line 3
    iput-object p2, p0, Lteam/opay/core/card/PhysicalCardNativeUnActivatedInstantDto;->unActivatedInstantPopupFrequency:Lteam/opay/core/card/CardPopupFrequency;

    .line 4
    iput-object p3, p0, Lteam/opay/core/card/PhysicalCardNativeUnActivatedInstantDto;->homePageFloatingWindowDto:Lteam/opay/core/card/HomePageFloatingWindowDto;

    .line 5
    iput-object p4, p0, Lteam/opay/core/card/PhysicalCardNativeUnActivatedInstantDto;->physicalInstantDto:Lteam/opay/core/card/CardNotAppliedContentDto;

    return-void
.end method

.method public synthetic constructor <init>(Lteam/opay/core/card/PhysicalCardNativeUnActivatedUnInDto;Lteam/opay/core/card/CardPopupFrequency;Lteam/opay/core/card/HomePageFloatingWindowDto;Lteam/opay/core/card/CardNotAppliedContentDto;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    and-int/lit8 p6, p5, 0x4

    const/4 v0, 0x0

    if-eqz p6, :cond_0

    move-object p3, v0

    :cond_0
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_1

    move-object p4, v0

    .line 6
    :cond_1
    invoke-direct {p0, p1, p2, p3, p4}, Lteam/opay/core/card/PhysicalCardNativeUnActivatedInstantDto;-><init>(Lteam/opay/core/card/PhysicalCardNativeUnActivatedUnInDto;Lteam/opay/core/card/CardPopupFrequency;Lteam/opay/core/card/HomePageFloatingWindowDto;Lteam/opay/core/card/CardNotAppliedContentDto;)V

    return-void
.end method

.method public static synthetic copy$default(Lteam/opay/core/card/PhysicalCardNativeUnActivatedInstantDto;Lteam/opay/core/card/PhysicalCardNativeUnActivatedUnInDto;Lteam/opay/core/card/CardPopupFrequency;Lteam/opay/core/card/HomePageFloatingWindowDto;Lteam/opay/core/card/CardNotAppliedContentDto;ILjava/lang/Object;)Lteam/opay/core/card/PhysicalCardNativeUnActivatedInstantDto;
    .locals 0

    .line 1
    and-int/lit8 p6, p5, 0x1

    .line 2
    .line 3
    if-eqz p6, :cond_0

    .line 4
    .line 5
    iget-object p1, p0, Lteam/opay/core/card/PhysicalCardNativeUnActivatedInstantDto;->finishDto:Lteam/opay/core/card/PhysicalCardNativeUnActivatedUnInDto;

    .line 6
    .line 7
    :cond_0
    and-int/lit8 p6, p5, 0x2

    .line 8
    .line 9
    if-eqz p6, :cond_1

    .line 10
    .line 11
    iget-object p2, p0, Lteam/opay/core/card/PhysicalCardNativeUnActivatedInstantDto;->unActivatedInstantPopupFrequency:Lteam/opay/core/card/CardPopupFrequency;

    .line 12
    .line 13
    :cond_1
    and-int/lit8 p6, p5, 0x4

    .line 14
    .line 15
    if-eqz p6, :cond_2

    .line 16
    .line 17
    iget-object p3, p0, Lteam/opay/core/card/PhysicalCardNativeUnActivatedInstantDto;->homePageFloatingWindowDto:Lteam/opay/core/card/HomePageFloatingWindowDto;

    .line 18
    .line 19
    :cond_2
    and-int/lit8 p5, p5, 0x8

    .line 20
    .line 21
    if-eqz p5, :cond_3

    .line 22
    .line 23
    iget-object p4, p0, Lteam/opay/core/card/PhysicalCardNativeUnActivatedInstantDto;->physicalInstantDto:Lteam/opay/core/card/CardNotAppliedContentDto;

    .line 24
    .line 25
    :cond_3
    invoke-virtual {p0, p1, p2, p3, p4}, Lteam/opay/core/card/PhysicalCardNativeUnActivatedInstantDto;->copy(Lteam/opay/core/card/PhysicalCardNativeUnActivatedUnInDto;Lteam/opay/core/card/CardPopupFrequency;Lteam/opay/core/card/HomePageFloatingWindowDto;Lteam/opay/core/card/CardNotAppliedContentDto;)Lteam/opay/core/card/PhysicalCardNativeUnActivatedInstantDto;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    return-object p0
.end method


# virtual methods
.method public final component1()Lteam/opay/core/card/PhysicalCardNativeUnActivatedUnInDto;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/core/card/PhysicalCardNativeUnActivatedInstantDto;->finishDto:Lteam/opay/core/card/PhysicalCardNativeUnActivatedUnInDto;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component2()Lteam/opay/core/card/CardPopupFrequency;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/core/card/PhysicalCardNativeUnActivatedInstantDto;->unActivatedInstantPopupFrequency:Lteam/opay/core/card/CardPopupFrequency;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component3()Lteam/opay/core/card/HomePageFloatingWindowDto;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/core/card/PhysicalCardNativeUnActivatedInstantDto;->homePageFloatingWindowDto:Lteam/opay/core/card/HomePageFloatingWindowDto;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component4()Lteam/opay/core/card/CardNotAppliedContentDto;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/core/card/PhysicalCardNativeUnActivatedInstantDto;->physicalInstantDto:Lteam/opay/core/card/CardNotAppliedContentDto;

    .line 2
    .line 3
    return-object v0
.end method

.method public final copy(Lteam/opay/core/card/PhysicalCardNativeUnActivatedUnInDto;Lteam/opay/core/card/CardPopupFrequency;Lteam/opay/core/card/HomePageFloatingWindowDto;Lteam/opay/core/card/CardNotAppliedContentDto;)Lteam/opay/core/card/PhysicalCardNativeUnActivatedInstantDto;
    .locals 1
    .param p1    # Lteam/opay/core/card/PhysicalCardNativeUnActivatedUnInDto;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Lteam/opay/core/card/CardPopupFrequency;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Lteam/opay/core/card/HomePageFloatingWindowDto;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4    # Lteam/opay/core/card/CardNotAppliedContentDto;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    new-instance v0, Lteam/opay/core/card/PhysicalCardNativeUnActivatedInstantDto;

    .line 2
    .line 3
    invoke-direct {v0, p1, p2, p3, p4}, Lteam/opay/core/card/PhysicalCardNativeUnActivatedInstantDto;-><init>(Lteam/opay/core/card/PhysicalCardNativeUnActivatedUnInDto;Lteam/opay/core/card/CardPopupFrequency;Lteam/opay/core/card/HomePageFloatingWindowDto;Lteam/opay/core/card/CardNotAppliedContentDto;)V

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
    instance-of v1, p1, Lteam/opay/core/card/PhysicalCardNativeUnActivatedInstantDto;

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
    check-cast p1, Lteam/opay/core/card/PhysicalCardNativeUnActivatedInstantDto;

    .line 12
    .line 13
    iget-object v1, p0, Lteam/opay/core/card/PhysicalCardNativeUnActivatedInstantDto;->finishDto:Lteam/opay/core/card/PhysicalCardNativeUnActivatedUnInDto;

    .line 14
    .line 15
    iget-object v3, p1, Lteam/opay/core/card/PhysicalCardNativeUnActivatedInstantDto;->finishDto:Lteam/opay/core/card/PhysicalCardNativeUnActivatedUnInDto;

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
    iget-object v1, p0, Lteam/opay/core/card/PhysicalCardNativeUnActivatedInstantDto;->unActivatedInstantPopupFrequency:Lteam/opay/core/card/CardPopupFrequency;

    .line 25
    .line 26
    iget-object v3, p1, Lteam/opay/core/card/PhysicalCardNativeUnActivatedInstantDto;->unActivatedInstantPopupFrequency:Lteam/opay/core/card/CardPopupFrequency;

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
    iget-object v1, p0, Lteam/opay/core/card/PhysicalCardNativeUnActivatedInstantDto;->homePageFloatingWindowDto:Lteam/opay/core/card/HomePageFloatingWindowDto;

    .line 36
    .line 37
    iget-object v3, p1, Lteam/opay/core/card/PhysicalCardNativeUnActivatedInstantDto;->homePageFloatingWindowDto:Lteam/opay/core/card/HomePageFloatingWindowDto;

    .line 38
    .line 39
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 40
    .line 41
    .line 42
    move-result v1

    .line 43
    if-nez v1, :cond_4

    .line 44
    .line 45
    return v2

    .line 46
    :cond_4
    iget-object v1, p0, Lteam/opay/core/card/PhysicalCardNativeUnActivatedInstantDto;->physicalInstantDto:Lteam/opay/core/card/CardNotAppliedContentDto;

    .line 47
    .line 48
    iget-object p1, p1, Lteam/opay/core/card/PhysicalCardNativeUnActivatedInstantDto;->physicalInstantDto:Lteam/opay/core/card/CardNotAppliedContentDto;

    .line 49
    .line 50
    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 51
    .line 52
    .line 53
    move-result p1

    .line 54
    if-nez p1, :cond_5

    .line 55
    .line 56
    return v2

    .line 57
    :cond_5
    return v0
.end method

.method public final getFinishDto()Lteam/opay/core/card/PhysicalCardNativeUnActivatedUnInDto;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/core/card/PhysicalCardNativeUnActivatedInstantDto;->finishDto:Lteam/opay/core/card/PhysicalCardNativeUnActivatedUnInDto;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getHomePageFloatingWindowDto()Lteam/opay/core/card/HomePageFloatingWindowDto;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/core/card/PhysicalCardNativeUnActivatedInstantDto;->homePageFloatingWindowDto:Lteam/opay/core/card/HomePageFloatingWindowDto;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getPhysicalInstantDto()Lteam/opay/core/card/CardNotAppliedContentDto;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/core/card/PhysicalCardNativeUnActivatedInstantDto;->physicalInstantDto:Lteam/opay/core/card/CardNotAppliedContentDto;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getUnActivatedInstantPopupFrequency()Lteam/opay/core/card/CardPopupFrequency;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/core/card/PhysicalCardNativeUnActivatedInstantDto;->unActivatedInstantPopupFrequency:Lteam/opay/core/card/CardPopupFrequency;

    .line 2
    .line 3
    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 1
    iget-object v0, p0, Lteam/opay/core/card/PhysicalCardNativeUnActivatedInstantDto;->finishDto:Lteam/opay/core/card/PhysicalCardNativeUnActivatedUnInDto;

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
    invoke-virtual {v0}, Lteam/opay/core/card/PhysicalCardNativeUnActivatedUnInDto;->hashCode()I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    .line 13
    .line 14
    iget-object v2, p0, Lteam/opay/core/card/PhysicalCardNativeUnActivatedInstantDto;->unActivatedInstantPopupFrequency:Lteam/opay/core/card/CardPopupFrequency;

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
    invoke-virtual {v2}, Lteam/opay/core/card/CardPopupFrequency;->hashCode()I

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
    iget-object v2, p0, Lteam/opay/core/card/PhysicalCardNativeUnActivatedInstantDto;->homePageFloatingWindowDto:Lteam/opay/core/card/HomePageFloatingWindowDto;

    .line 28
    .line 29
    if-nez v2, :cond_2

    .line 30
    .line 31
    const/4 v2, 0x0

    .line 32
    goto :goto_2

    .line 33
    :cond_2
    invoke-virtual {v2}, Lteam/opay/core/card/HomePageFloatingWindowDto;->hashCode()I

    .line 34
    .line 35
    .line 36
    move-result v2

    .line 37
    :goto_2
    add-int/2addr v0, v2

    .line 38
    mul-int/lit8 v0, v0, 0x1f

    .line 39
    .line 40
    iget-object v2, p0, Lteam/opay/core/card/PhysicalCardNativeUnActivatedInstantDto;->physicalInstantDto:Lteam/opay/core/card/CardNotAppliedContentDto;

    .line 41
    .line 42
    if-nez v2, :cond_3

    .line 43
    .line 44
    goto :goto_3

    .line 45
    :cond_3
    invoke-virtual {v2}, Lteam/opay/core/card/CardNotAppliedContentDto;->hashCode()I

    .line 46
    .line 47
    .line 48
    move-result v1

    .line 49
    :goto_3
    add-int/2addr v0, v1

    .line 50
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 6
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/core/card/PhysicalCardNativeUnActivatedInstantDto;->finishDto:Lteam/opay/core/card/PhysicalCardNativeUnActivatedUnInDto;

    .line 2
    .line 3
    iget-object v1, p0, Lteam/opay/core/card/PhysicalCardNativeUnActivatedInstantDto;->unActivatedInstantPopupFrequency:Lteam/opay/core/card/CardPopupFrequency;

    .line 4
    .line 5
    iget-object v2, p0, Lteam/opay/core/card/PhysicalCardNativeUnActivatedInstantDto;->homePageFloatingWindowDto:Lteam/opay/core/card/HomePageFloatingWindowDto;

    .line 6
    .line 7
    iget-object v3, p0, Lteam/opay/core/card/PhysicalCardNativeUnActivatedInstantDto;->physicalInstantDto:Lteam/opay/core/card/CardNotAppliedContentDto;

    .line 8
    .line 9
    new-instance v4, Ljava/lang/StringBuilder;

    .line 10
    .line 11
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 12
    .line 13
    .line 14
    const-string v5, "PhysicalCardNativeUnActivatedInstantDto(finishDto="

    .line 15
    .line 16
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    const-string v0, ", unActivatedInstantPopupFrequency="

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
    const-string v0, ", homePageFloatingWindowDto="

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
    const-string v0, ", physicalInstantDto="

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
