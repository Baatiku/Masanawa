.class public final Lteam/opay/sme/store/branch/industry/SelectedIndustryDto;
.super Ljava/lang/Object;
.source "IndustrySelectSheetFragment.kt"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u000e\n\u0002\u0010\u0002\n\u0002\u0008\u0007\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0000\u0008\u0080\u0008\u0018\u00002\u00020\u0001B+\u0012\n\u0008\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\n\u0008\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J\u000e\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u0003J\u000e\u0010\u0016\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u0005J\u000b\u0010\u0017\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003J\u000b\u0010\u0018\u001a\u0004\u0018\u00010\u0005H\u00c6\u0003J\u000b\u0010\u0019\u001a\u0004\u0018\u00010\u0005H\u00c6\u0003J-\u0010\u001a\u001a\u00020\u00002\n\u0008\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00052\n\u0008\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0005H\u00c6\u0001J\u0013\u0010\u001b\u001a\u00020\u001c2\u0008\u0010\u001d\u001a\u0004\u0018\u00010\u001eH\u00d6\u0003J\t\u0010\u001f\u001a\u00020 H\u00d6\u0001J\t\u0010!\u001a\u00020\"H\u00d6\u0001R\u001c\u0010\u0002\u001a\u0004\u0018\u00010\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\t\u0010\n\"\u0004\u0008\u000b\u0010\u000cR\u001c\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\r\u0010\u000e\"\u0004\u0008\u000f\u0010\u0010R\u001c\u0010\u0006\u001a\u0004\u0018\u00010\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0011\u0010\u000e\"\u0004\u0008\u0012\u0010\u0010\u00a8\u0006#"
    }
    d2 = {
        "Lteam/opay/sme/store/branch/industry/SelectedIndustryDto;",
        "Ljava/io/Serializable;",
        "recommend",
        "Lteam/opay/sme/store/api/RecommendIndustry;",
        "firstCategory",
        "Lteam/opay/sme/store/api/IndustryCategory;",
        "secondCategory",
        "<init>",
        "(Lteam/opay/sme/store/api/RecommendIndustry;Lteam/opay/sme/store/api/IndustryCategory;Lteam/opay/sme/store/api/IndustryCategory;)V",
        "getRecommend",
        "()Lteam/opay/sme/store/api/RecommendIndustry;",
        "setRecommend",
        "(Lteam/opay/sme/store/api/RecommendIndustry;)V",
        "getFirstCategory",
        "()Lteam/opay/sme/store/api/IndustryCategory;",
        "setFirstCategory",
        "(Lteam/opay/sme/store/api/IndustryCategory;)V",
        "getSecondCategory",
        "setSecondCategory",
        "selectRecommend",
        "",
        "data",
        "selectFirstCategory",
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
        "business-sme-store_release"
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
.field private firstCategory:Lteam/opay/sme/store/api/IndustryCategory;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private recommend:Lteam/opay/sme/store/api/RecommendIndustry;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private secondCategory:Lteam/opay/sme/store/api/IndustryCategory;
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

    invoke-direct/range {v0 .. v5}, Lteam/opay/sme/store/branch/industry/SelectedIndustryDto;-><init>(Lteam/opay/sme/store/api/RecommendIndustry;Lteam/opay/sme/store/api/IndustryCategory;Lteam/opay/sme/store/api/IndustryCategory;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lteam/opay/sme/store/api/RecommendIndustry;Lteam/opay/sme/store/api/IndustryCategory;Lteam/opay/sme/store/api/IndustryCategory;)V
    .locals 0
    .param p1    # Lteam/opay/sme/store/api/RecommendIndustry;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Lteam/opay/sme/store/api/IndustryCategory;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Lteam/opay/sme/store/api/IndustryCategory;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lteam/opay/sme/store/branch/industry/SelectedIndustryDto;->recommend:Lteam/opay/sme/store/api/RecommendIndustry;

    .line 4
    iput-object p2, p0, Lteam/opay/sme/store/branch/industry/SelectedIndustryDto;->firstCategory:Lteam/opay/sme/store/api/IndustryCategory;

    .line 5
    iput-object p3, p0, Lteam/opay/sme/store/branch/industry/SelectedIndustryDto;->secondCategory:Lteam/opay/sme/store/api/IndustryCategory;

    return-void
.end method

.method public synthetic constructor <init>(Lteam/opay/sme/store/api/RecommendIndustry;Lteam/opay/sme/store/api/IndustryCategory;Lteam/opay/sme/store/api/IndustryCategory;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
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

    move-object p3, v0

    .line 6
    :cond_2
    invoke-direct {p0, p1, p2, p3}, Lteam/opay/sme/store/branch/industry/SelectedIndustryDto;-><init>(Lteam/opay/sme/store/api/RecommendIndustry;Lteam/opay/sme/store/api/IndustryCategory;Lteam/opay/sme/store/api/IndustryCategory;)V

    return-void
.end method

.method public static synthetic copy$default(Lteam/opay/sme/store/branch/industry/SelectedIndustryDto;Lteam/opay/sme/store/api/RecommendIndustry;Lteam/opay/sme/store/api/IndustryCategory;Lteam/opay/sme/store/api/IndustryCategory;ILjava/lang/Object;)Lteam/opay/sme/store/branch/industry/SelectedIndustryDto;
    .locals 0

    .line 1
    and-int/lit8 p5, p4, 0x1

    .line 2
    .line 3
    if-eqz p5, :cond_0

    .line 4
    .line 5
    iget-object p1, p0, Lteam/opay/sme/store/branch/industry/SelectedIndustryDto;->recommend:Lteam/opay/sme/store/api/RecommendIndustry;

    .line 6
    .line 7
    :cond_0
    and-int/lit8 p5, p4, 0x2

    .line 8
    .line 9
    if-eqz p5, :cond_1

    .line 10
    .line 11
    iget-object p2, p0, Lteam/opay/sme/store/branch/industry/SelectedIndustryDto;->firstCategory:Lteam/opay/sme/store/api/IndustryCategory;

    .line 12
    .line 13
    :cond_1
    and-int/lit8 p4, p4, 0x4

    .line 14
    .line 15
    if-eqz p4, :cond_2

    .line 16
    .line 17
    iget-object p3, p0, Lteam/opay/sme/store/branch/industry/SelectedIndustryDto;->secondCategory:Lteam/opay/sme/store/api/IndustryCategory;

    .line 18
    .line 19
    :cond_2
    invoke-virtual {p0, p1, p2, p3}, Lteam/opay/sme/store/branch/industry/SelectedIndustryDto;->copy(Lteam/opay/sme/store/api/RecommendIndustry;Lteam/opay/sme/store/api/IndustryCategory;Lteam/opay/sme/store/api/IndustryCategory;)Lteam/opay/sme/store/branch/industry/SelectedIndustryDto;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    return-object p0
.end method


# virtual methods
.method public final component1()Lteam/opay/sme/store/api/RecommendIndustry;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/sme/store/branch/industry/SelectedIndustryDto;->recommend:Lteam/opay/sme/store/api/RecommendIndustry;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component2()Lteam/opay/sme/store/api/IndustryCategory;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/sme/store/branch/industry/SelectedIndustryDto;->firstCategory:Lteam/opay/sme/store/api/IndustryCategory;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component3()Lteam/opay/sme/store/api/IndustryCategory;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/sme/store/branch/industry/SelectedIndustryDto;->secondCategory:Lteam/opay/sme/store/api/IndustryCategory;

    .line 2
    .line 3
    return-object v0
.end method

.method public final copy(Lteam/opay/sme/store/api/RecommendIndustry;Lteam/opay/sme/store/api/IndustryCategory;Lteam/opay/sme/store/api/IndustryCategory;)Lteam/opay/sme/store/branch/industry/SelectedIndustryDto;
    .locals 1
    .param p1    # Lteam/opay/sme/store/api/RecommendIndustry;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Lteam/opay/sme/store/api/IndustryCategory;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Lteam/opay/sme/store/api/IndustryCategory;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    new-instance v0, Lteam/opay/sme/store/branch/industry/SelectedIndustryDto;

    .line 2
    .line 3
    invoke-direct {v0, p1, p2, p3}, Lteam/opay/sme/store/branch/industry/SelectedIndustryDto;-><init>(Lteam/opay/sme/store/api/RecommendIndustry;Lteam/opay/sme/store/api/IndustryCategory;Lteam/opay/sme/store/api/IndustryCategory;)V

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
    instance-of v1, p1, Lteam/opay/sme/store/branch/industry/SelectedIndustryDto;

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
    check-cast p1, Lteam/opay/sme/store/branch/industry/SelectedIndustryDto;

    .line 12
    .line 13
    iget-object v1, p0, Lteam/opay/sme/store/branch/industry/SelectedIndustryDto;->recommend:Lteam/opay/sme/store/api/RecommendIndustry;

    .line 14
    .line 15
    iget-object v3, p1, Lteam/opay/sme/store/branch/industry/SelectedIndustryDto;->recommend:Lteam/opay/sme/store/api/RecommendIndustry;

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
    iget-object v1, p0, Lteam/opay/sme/store/branch/industry/SelectedIndustryDto;->firstCategory:Lteam/opay/sme/store/api/IndustryCategory;

    .line 25
    .line 26
    iget-object v3, p1, Lteam/opay/sme/store/branch/industry/SelectedIndustryDto;->firstCategory:Lteam/opay/sme/store/api/IndustryCategory;

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
    iget-object v1, p0, Lteam/opay/sme/store/branch/industry/SelectedIndustryDto;->secondCategory:Lteam/opay/sme/store/api/IndustryCategory;

    .line 36
    .line 37
    iget-object p1, p1, Lteam/opay/sme/store/branch/industry/SelectedIndustryDto;->secondCategory:Lteam/opay/sme/store/api/IndustryCategory;

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

.method public final getFirstCategory()Lteam/opay/sme/store/api/IndustryCategory;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/sme/store/branch/industry/SelectedIndustryDto;->firstCategory:Lteam/opay/sme/store/api/IndustryCategory;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getRecommend()Lteam/opay/sme/store/api/RecommendIndustry;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/sme/store/branch/industry/SelectedIndustryDto;->recommend:Lteam/opay/sme/store/api/RecommendIndustry;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getSecondCategory()Lteam/opay/sme/store/api/IndustryCategory;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/sme/store/branch/industry/SelectedIndustryDto;->secondCategory:Lteam/opay/sme/store/api/IndustryCategory;

    .line 2
    .line 3
    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 1
    iget-object v0, p0, Lteam/opay/sme/store/branch/industry/SelectedIndustryDto;->recommend:Lteam/opay/sme/store/api/RecommendIndustry;

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
    invoke-virtual {v0}, Lteam/opay/sme/store/api/RecommendIndustry;->hashCode()I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    .line 13
    .line 14
    iget-object v2, p0, Lteam/opay/sme/store/branch/industry/SelectedIndustryDto;->firstCategory:Lteam/opay/sme/store/api/IndustryCategory;

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
    invoke-virtual {v2}, Lteam/opay/sme/store/api/IndustryCategory;->hashCode()I

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
    iget-object v2, p0, Lteam/opay/sme/store/branch/industry/SelectedIndustryDto;->secondCategory:Lteam/opay/sme/store/api/IndustryCategory;

    .line 28
    .line 29
    if-nez v2, :cond_2

    .line 30
    .line 31
    goto :goto_2

    .line 32
    :cond_2
    invoke-virtual {v2}, Lteam/opay/sme/store/api/IndustryCategory;->hashCode()I

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

.method public final selectFirstCategory(Lteam/opay/sme/store/api/IndustryCategory;)V
    .locals 1
    .param p1    # Lteam/opay/sme/store/api/IndustryCategory;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "data"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    iput-object v0, p0, Lteam/opay/sme/store/branch/industry/SelectedIndustryDto;->recommend:Lteam/opay/sme/store/api/RecommendIndustry;

    .line 8
    .line 9
    iput-object p1, p0, Lteam/opay/sme/store/branch/industry/SelectedIndustryDto;->firstCategory:Lteam/opay/sme/store/api/IndustryCategory;

    .line 10
    .line 11
    iput-object v0, p0, Lteam/opay/sme/store/branch/industry/SelectedIndustryDto;->secondCategory:Lteam/opay/sme/store/api/IndustryCategory;

    .line 12
    .line 13
    return-void
.end method

.method public final selectRecommend(Lteam/opay/sme/store/api/RecommendIndustry;)V
    .locals 1
    .param p1    # Lteam/opay/sme/store/api/RecommendIndustry;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "data"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lteam/opay/sme/store/branch/industry/SelectedIndustryDto;->recommend:Lteam/opay/sme/store/api/RecommendIndustry;

    .line 7
    .line 8
    const/4 p1, 0x0

    .line 9
    iput-object p1, p0, Lteam/opay/sme/store/branch/industry/SelectedIndustryDto;->firstCategory:Lteam/opay/sme/store/api/IndustryCategory;

    .line 10
    .line 11
    iput-object p1, p0, Lteam/opay/sme/store/branch/industry/SelectedIndustryDto;->secondCategory:Lteam/opay/sme/store/api/IndustryCategory;

    .line 12
    .line 13
    return-void
.end method

.method public final setFirstCategory(Lteam/opay/sme/store/api/IndustryCategory;)V
    .locals 0
    .param p1    # Lteam/opay/sme/store/api/IndustryCategory;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lteam/opay/sme/store/branch/industry/SelectedIndustryDto;->firstCategory:Lteam/opay/sme/store/api/IndustryCategory;

    .line 2
    .line 3
    return-void
.end method

.method public final setRecommend(Lteam/opay/sme/store/api/RecommendIndustry;)V
    .locals 0
    .param p1    # Lteam/opay/sme/store/api/RecommendIndustry;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lteam/opay/sme/store/branch/industry/SelectedIndustryDto;->recommend:Lteam/opay/sme/store/api/RecommendIndustry;

    .line 2
    .line 3
    return-void
.end method

.method public final setSecondCategory(Lteam/opay/sme/store/api/IndustryCategory;)V
    .locals 0
    .param p1    # Lteam/opay/sme/store/api/IndustryCategory;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lteam/opay/sme/store/branch/industry/SelectedIndustryDto;->secondCategory:Lteam/opay/sme/store/api/IndustryCategory;

    .line 2
    .line 3
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 5
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/sme/store/branch/industry/SelectedIndustryDto;->recommend:Lteam/opay/sme/store/api/RecommendIndustry;

    .line 2
    .line 3
    iget-object v1, p0, Lteam/opay/sme/store/branch/industry/SelectedIndustryDto;->firstCategory:Lteam/opay/sme/store/api/IndustryCategory;

    .line 4
    .line 5
    iget-object v2, p0, Lteam/opay/sme/store/branch/industry/SelectedIndustryDto;->secondCategory:Lteam/opay/sme/store/api/IndustryCategory;

    .line 6
    .line 7
    new-instance v3, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 10
    .line 11
    .line 12
    const-string v4, "SelectedIndustryDto(recommend="

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
    const-string v0, ", firstCategory="

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
    const-string v0, ", secondCategory="

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
