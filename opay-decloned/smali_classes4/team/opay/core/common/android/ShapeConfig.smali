.class public final Lteam/opay/core/common/android/ShapeConfig;
.super Ljava/lang/Object;
.source "ViewMsd.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lteam/opay/core/common/android/ShapeConfig$Builder;,
        Lteam/opay/core/common/android/ShapeConfig$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0008\n\u0002\u0008\u0004\n\u0002\u0010\u0007\n\u0002\u0008\n\u0018\u0000 \u000e2\u00020\u0001:\u0002\u0015\u0016B\u0011\u0008\u0002\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0004\u0010\u0005R\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0006\u0010\u0007R\u0011\u0010\u000b\u001a\u00020\u00088F\u00a2\u0006\u0006\u001a\u0004\u0008\t\u0010\nR\u0011\u0010\u000c\u001a\u00020\u00088F\u00a2\u0006\u0006\u001a\u0004\u0008\u0006\u0010\nR\u0011\u0010\u0010\u001a\u00020\r8F\u00a2\u0006\u0006\u001a\u0004\u0008\u000e\u0010\u000fR\u0011\u0010\u0012\u001a\u00020\u00088F\u00a2\u0006\u0006\u001a\u0004\u0008\u0011\u0010\nR\u0011\u0010\u0014\u001a\u00020\r8F\u00a2\u0006\u0006\u001a\u0004\u0008\u0013\u0010\u000f\u00a8\u0006\u0017"
    }
    d2 = {
        "Lteam/opay/core/common/android/ShapeConfig;",
        "",
        "Lteam/opay/core/common/android/ShapeConfig$Builder;",
        "builder",
        "<init>",
        "(Lteam/opay/core/common/android/ShapeConfig$Builder;)V",
        "a",
        "Lteam/opay/core/common/android/ShapeConfig$Builder;",
        "",
        "e",
        "()I",
        "tintColor",
        "shadowColor",
        "",
        "b",
        "()F",
        "shadowRadius",
        "c",
        "strokeColor",
        "d",
        "strokeWidth",
        "Builder",
        "Companion",
        "common-base_release"
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
.field public static final b:Lteam/opay/core/common/android/ShapeConfig$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field public final a:Lteam/opay/core/common/android/ShapeConfig$Builder;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lteam/opay/core/common/android/ShapeConfig$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lteam/opay/core/common/android/ShapeConfig$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lteam/opay/core/common/android/ShapeConfig;->b:Lteam/opay/core/common/android/ShapeConfig$Companion;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>(Lteam/opay/core/common/android/ShapeConfig$Builder;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lteam/opay/core/common/android/ShapeConfig;->a:Lteam/opay/core/common/android/ShapeConfig$Builder;

    return-void
.end method

.method public synthetic constructor <init>(Lteam/opay/core/common/android/ShapeConfig$Builder;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lteam/opay/core/common/android/ShapeConfig;-><init>(Lteam/opay/core/common/android/ShapeConfig$Builder;)V

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    .line 1
    iget-object v0, p0, Lteam/opay/core/common/android/ShapeConfig;->a:Lteam/opay/core/common/android/ShapeConfig$Builder;

    .line 2
    .line 3
    invoke-virtual {v0}, Lteam/opay/core/common/android/ShapeConfig$Builder;->b()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public final b()F
    .locals 1

    .line 1
    iget-object v0, p0, Lteam/opay/core/common/android/ShapeConfig;->a:Lteam/opay/core/common/android/ShapeConfig$Builder;

    .line 2
    .line 3
    invoke-virtual {v0}, Lteam/opay/core/common/android/ShapeConfig$Builder;->c()F

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public final c()I
    .locals 1

    .line 1
    iget-object v0, p0, Lteam/opay/core/common/android/ShapeConfig;->a:Lteam/opay/core/common/android/ShapeConfig$Builder;

    .line 2
    .line 3
    invoke-virtual {v0}, Lteam/opay/core/common/android/ShapeConfig$Builder;->d()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public final d()F
    .locals 1

    .line 1
    iget-object v0, p0, Lteam/opay/core/common/android/ShapeConfig;->a:Lteam/opay/core/common/android/ShapeConfig$Builder;

    .line 2
    .line 3
    invoke-virtual {v0}, Lteam/opay/core/common/android/ShapeConfig$Builder;->e()F

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public final e()I
    .locals 1

    .line 1
    iget-object v0, p0, Lteam/opay/core/common/android/ShapeConfig;->a:Lteam/opay/core/common/android/ShapeConfig$Builder;

    .line 2
    .line 3
    invoke-virtual {v0}, Lteam/opay/core/common/android/ShapeConfig$Builder;->f()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method
