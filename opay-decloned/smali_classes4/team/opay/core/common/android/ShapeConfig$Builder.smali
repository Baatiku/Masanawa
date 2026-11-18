.class public final Lteam/opay/core/common/android/ShapeConfig$Builder;
.super Ljava/lang/Object;
.source "ViewMsd.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lteam/opay/core/common/android/ShapeConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0010\u0007\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0013\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0017\u0010\u0006\u001a\u00020\u00002\u0008\u0008\u0001\u0010\u0005\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\u0017\u0010\t\u001a\u00020\u00002\u0008\u0008\u0001\u0010\u0008\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\t\u0010\u0007J\u0015\u0010\u000c\u001a\u00020\u00002\u0006\u0010\u000b\u001a\u00020\n\u00a2\u0006\u0004\u0008\u000c\u0010\rJ\u0017\u0010\u000f\u001a\u00020\u00002\u0008\u0008\u0001\u0010\u000e\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\u000f\u0010\u0007J\u0015\u0010\u0011\u001a\u00020\u00002\u0006\u0010\u0010\u001a\u00020\n\u00a2\u0006\u0004\u0008\u0011\u0010\rJ\r\u0010\u0013\u001a\u00020\u0012\u00a2\u0006\u0004\u0008\u0013\u0010\u0014R\"\u0010\u0005\u001a\u00020\u00048\u0000@\u0000X\u0081\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0013\u0010\u0015\u001a\u0004\u0008\u0016\u0010\u0017\"\u0004\u0008\u0018\u0010\u0019R\"\u0010\u0008\u001a\u00020\u00048\u0000@\u0000X\u0081\u000e\u00a2\u0006\u0012\n\u0004\u0008\u001a\u0010\u0015\u001a\u0004\u0008\u001a\u0010\u0017\"\u0004\u0008\u001b\u0010\u0019R\"\u0010\u000b\u001a\u00020\n8\u0000@\u0000X\u0080\u000e\u00a2\u0006\u0012\n\u0004\u0008\u001c\u0010\u001d\u001a\u0004\u0008\u001c\u0010\u001e\"\u0004\u0008\u001f\u0010 R\"\u0010\u000e\u001a\u00020\u00048\u0000@\u0000X\u0081\u000e\u00a2\u0006\u0012\n\u0004\u0008!\u0010\u0015\u001a\u0004\u0008!\u0010\u0017\"\u0004\u0008\"\u0010\u0019R\"\u0010\u0010\u001a\u00020\n8\u0000@\u0000X\u0080\u000e\u00a2\u0006\u0012\n\u0004\u0008#\u0010\u001d\u001a\u0004\u0008#\u0010\u001e\"\u0004\u0008$\u0010 \u00a8\u0006%"
    }
    d2 = {
        "Lteam/opay/core/common/android/ShapeConfig$Builder;",
        "",
        "<init>",
        "()V",
        "",
        "tintColor",
        "k",
        "(I)Lteam/opay/core/common/android/ShapeConfig$Builder;",
        "shadowColor",
        "g",
        "",
        "shadowRadius",
        "h",
        "(F)Lteam/opay/core/common/android/ShapeConfig$Builder;",
        "strokeColor",
        "i",
        "strokeWidth",
        "j",
        "Lteam/opay/core/common/android/ShapeConfig;",
        "a",
        "()Lteam/opay/core/common/android/ShapeConfig;",
        "I",
        "f",
        "()I",
        "setTintColor$common_base_release",
        "(I)V",
        "b",
        "setShadowColor$common_base_release",
        "c",
        "F",
        "()F",
        "setShadowRadius$common_base_release",
        "(F)V",
        "d",
        "setStrokeColor$common_base_release",
        "e",
        "setStrokeWidth$common_base_release",
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


# instance fields
.field public a:I

.field public b:I

.field public c:F

.field public d:I

.field public e:F


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Lgh2;->a:Lgh2;

    .line 5
    .line 6
    const-string v1, "#FFFFFF"

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Lgh2;->b(Ljava/lang/String;)I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    iput v0, p0, Lteam/opay/core/common/android/ShapeConfig$Builder;->a:I

    .line 13
    .line 14
    const/high16 v0, 0x41000000    # 8.0f

    .line 15
    .line 16
    invoke-static {v0}, Let;->g(F)F

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    iput v0, p0, Lteam/opay/core/common/android/ShapeConfig$Builder;->c:F

    .line 21
    .line 22
    return-void
.end method


# virtual methods
.method public final a()Lteam/opay/core/common/android/ShapeConfig;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    new-instance v0, Lteam/opay/core/common/android/ShapeConfig;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, p0, v1}, Lteam/opay/core/common/android/ShapeConfig;-><init>(Lteam/opay/core/common/android/ShapeConfig$Builder;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    return-object v0
.end method

.method public final b()I
    .locals 1

    .line 1
    iget v0, p0, Lteam/opay/core/common/android/ShapeConfig$Builder;->b:I

    .line 2
    .line 3
    return v0
.end method

.method public final c()F
    .locals 1

    .line 1
    iget v0, p0, Lteam/opay/core/common/android/ShapeConfig$Builder;->c:F

    .line 2
    .line 3
    return v0
.end method

.method public final d()I
    .locals 1

    .line 1
    iget v0, p0, Lteam/opay/core/common/android/ShapeConfig$Builder;->d:I

    .line 2
    .line 3
    return v0
.end method

.method public final e()F
    .locals 1

    .line 1
    iget v0, p0, Lteam/opay/core/common/android/ShapeConfig$Builder;->e:F

    .line 2
    .line 3
    return v0
.end method

.method public final f()I
    .locals 1

    .line 1
    iget v0, p0, Lteam/opay/core/common/android/ShapeConfig$Builder;->a:I

    .line 2
    .line 3
    return v0
.end method

.method public final g(I)Lteam/opay/core/common/android/ShapeConfig$Builder;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iput p1, p0, Lteam/opay/core/common/android/ShapeConfig$Builder;->b:I

    .line 2
    .line 3
    return-object p0
.end method

.method public final h(F)Lteam/opay/core/common/android/ShapeConfig$Builder;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iput p1, p0, Lteam/opay/core/common/android/ShapeConfig$Builder;->c:F

    .line 2
    .line 3
    return-object p0
.end method

.method public final i(I)Lteam/opay/core/common/android/ShapeConfig$Builder;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iput p1, p0, Lteam/opay/core/common/android/ShapeConfig$Builder;->d:I

    .line 2
    .line 3
    return-object p0
.end method

.method public final j(F)Lteam/opay/core/common/android/ShapeConfig$Builder;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iput p1, p0, Lteam/opay/core/common/android/ShapeConfig$Builder;->e:F

    .line 2
    .line 3
    return-object p0
.end method

.method public final k(I)Lteam/opay/core/common/android/ShapeConfig$Builder;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iput p1, p0, Lteam/opay/core/common/android/ShapeConfig$Builder;->a:I

    .line 2
    .line 3
    return-object p0
.end method
