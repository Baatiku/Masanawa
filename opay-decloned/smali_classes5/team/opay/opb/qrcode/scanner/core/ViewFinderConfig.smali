.class public final Lteam/opay/opb/qrcode/scanner/core/ViewFinderConfig;
.super Ljava/lang/Object;
.source "ViewFinderConfig.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lteam/opay/opb/qrcode/scanner/core/ViewFinderConfig$Builder;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0010\u0007\n\u0002\u0008\r\u0008\u0000\u0018\u00002\u00020\u0001:\u0001\u0015B\u0011\u0008\u0002\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0004\u0010\u0005R\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0006\u0010\u0007R\u001d\u0010\u000b\u001a\u000e\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\t0\u00088F\u00a2\u0006\u0006\u001a\u0004\u0008\u0006\u0010\nR\u001d\u0010\r\u001a\u000e\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\t0\u00088F\u00a2\u0006\u0006\u001a\u0004\u0008\u000c\u0010\nR\u001d\u0010\u000f\u001a\u000e\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\t0\u00088F\u00a2\u0006\u0006\u001a\u0004\u0008\u000e\u0010\nR\u001d\u0010\u0011\u001a\u000e\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\t0\u00088F\u00a2\u0006\u0006\u001a\u0004\u0008\u0010\u0010\nR\u0011\u0010\u0014\u001a\u00020\t8F\u00a2\u0006\u0006\u001a\u0004\u0008\u0012\u0010\u0013\u00a8\u0006\u0016"
    }
    d2 = {
        "Lteam/opay/opb/qrcode/scanner/core/ViewFinderConfig;",
        "",
        "Lteam/opay/opb/qrcode/scanner/core/ViewFinderConfig$Builder;",
        "builder",
        "<init>",
        "(Lteam/opay/opb/qrcode/scanner/core/ViewFinderConfig$Builder;)V",
        "a",
        "Lteam/opay/opb/qrcode/scanner/core/ViewFinderConfig$Builder;",
        "Lkotlin/Pair;",
        "",
        "()Lkotlin/Pair;",
        "barLandscapeRatio",
        "b",
        "barPortraitRation",
        "c",
        "squareLandscapeRatio",
        "d",
        "squarePortraitRation",
        "e",
        "()F",
        "topOffsetRatio",
        "Builder",
        "opay-qrcode-scanner_release"
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
.field public final a:Lteam/opay/opb/qrcode/scanner/core/ViewFinderConfig$Builder;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lteam/opay/opb/qrcode/scanner/core/ViewFinderConfig$Builder;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lteam/opay/opb/qrcode/scanner/core/ViewFinderConfig;->a:Lteam/opay/opb/qrcode/scanner/core/ViewFinderConfig$Builder;

    return-void
.end method

.method public synthetic constructor <init>(Lteam/opay/opb/qrcode/scanner/core/ViewFinderConfig$Builder;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lteam/opay/opb/qrcode/scanner/core/ViewFinderConfig;-><init>(Lteam/opay/opb/qrcode/scanner/core/ViewFinderConfig$Builder;)V

    return-void
.end method


# virtual methods
.method public final a()Lkotlin/Pair;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/Pair<",
            "Ljava/lang/Float;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/opb/qrcode/scanner/core/ViewFinderConfig;->a:Lteam/opay/opb/qrcode/scanner/core/ViewFinderConfig$Builder;

    .line 2
    .line 3
    invoke-virtual {v0}, Lteam/opay/opb/qrcode/scanner/core/ViewFinderConfig$Builder;->b()Lkotlin/Pair;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public final b()Lkotlin/Pair;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/Pair<",
            "Ljava/lang/Float;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/opb/qrcode/scanner/core/ViewFinderConfig;->a:Lteam/opay/opb/qrcode/scanner/core/ViewFinderConfig$Builder;

    .line 2
    .line 3
    invoke-virtual {v0}, Lteam/opay/opb/qrcode/scanner/core/ViewFinderConfig$Builder;->c()Lkotlin/Pair;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public final c()Lkotlin/Pair;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/Pair<",
            "Ljava/lang/Float;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/opb/qrcode/scanner/core/ViewFinderConfig;->a:Lteam/opay/opb/qrcode/scanner/core/ViewFinderConfig$Builder;

    .line 2
    .line 3
    invoke-virtual {v0}, Lteam/opay/opb/qrcode/scanner/core/ViewFinderConfig$Builder;->d()Lkotlin/Pair;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public final d()Lkotlin/Pair;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/Pair<",
            "Ljava/lang/Float;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/opb/qrcode/scanner/core/ViewFinderConfig;->a:Lteam/opay/opb/qrcode/scanner/core/ViewFinderConfig$Builder;

    .line 2
    .line 3
    invoke-virtual {v0}, Lteam/opay/opb/qrcode/scanner/core/ViewFinderConfig$Builder;->e()Lkotlin/Pair;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public final e()F
    .locals 1

    .line 1
    iget-object v0, p0, Lteam/opay/opb/qrcode/scanner/core/ViewFinderConfig;->a:Lteam/opay/opb/qrcode/scanner/core/ViewFinderConfig$Builder;

    .line 2
    .line 3
    invoke-virtual {v0}, Lteam/opay/opb/qrcode/scanner/core/ViewFinderConfig$Builder;->f()F

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method
