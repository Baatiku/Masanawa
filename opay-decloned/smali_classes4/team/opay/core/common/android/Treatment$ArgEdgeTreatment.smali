.class public final Lteam/opay/core/common/android/Treatment$ArgEdgeTreatment;
.super Lcom/google/android/material/shape/EdgeTreatment;
.source "ViewMsd.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lteam/opay/core/common/android/Treatment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ArgEdgeTreatment"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0007\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u000b\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J/\u0010\u000e\u001a\u00020\r2\u0006\u0010\u0008\u001a\u00020\u00022\u0006\u0010\t\u001a\u00020\u00022\u0006\u0010\n\u001a\u00020\u00022\u0006\u0010\u000c\u001a\u00020\u000bH\u0016\u00a2\u0006\u0004\u0008\u000e\u0010\u000fR\u0017\u0010\u0003\u001a\u00020\u00028\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0010\u0010\u0011\u001a\u0004\u0008\u0012\u0010\u0013R\u0017\u0010\u0005\u001a\u00020\u00048\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0014\u0010\u0015\u001a\u0004\u0008\u0016\u0010\u0017\u00a8\u0006\u0018"
    }
    d2 = {
        "Lteam/opay/core/common/android/Treatment$ArgEdgeTreatment;",
        "Lcom/google/android/material/shape/EdgeTreatment;",
        "",
        "size",
        "",
        "inside",
        "<init>",
        "(FZ)V",
        "length",
        "center",
        "f",
        "Lcom/google/android/material/shape/ShapePath;",
        "shapePath",
        "",
        "getEdgePath",
        "(FFFLcom/google/android/material/shape/ShapePath;)V",
        "a",
        "F",
        "getSize",
        "()F",
        "b",
        "Z",
        "getInside",
        "()Z",
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
.field public final a:F

.field public final b:Z


# direct methods
.method public constructor <init>(FZ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/material/shape/EdgeTreatment;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Lteam/opay/core/common/android/Treatment$ArgEdgeTreatment;->a:F

    .line 5
    .line 6
    iput-boolean p2, p0, Lteam/opay/core/common/android/Treatment$ArgEdgeTreatment;->b:Z

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public getEdgePath(FFFLcom/google/android/material/shape/ShapePath;)V
    .locals 8
    .param p4    # Lcom/google/android/material/shape/ShapePath;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "shapePath"

    .line 2
    .line 3
    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget v0, p0, Lteam/opay/core/common/android/Treatment$ArgEdgeTreatment;->a:F

    .line 7
    .line 8
    mul-float v5, v0, p3

    .line 9
    .line 10
    sub-float v2, p2, v5

    .line 11
    .line 12
    const/4 p3, 0x0

    .line 13
    invoke-virtual {p4, v2, p3}, Lcom/google/android/material/shape/ShapePath;->lineTo(FF)V

    .line 14
    .line 15
    .line 16
    neg-float v3, v5

    .line 17
    add-float v4, p2, v5

    .line 18
    .line 19
    iget-boolean p2, p0, Lteam/opay/core/common/android/Treatment$ArgEdgeTreatment;->b:Z

    .line 20
    .line 21
    if-eqz p2, :cond_0

    .line 22
    .line 23
    const/high16 p2, -0x3ccc0000    # -180.0f

    .line 24
    .line 25
    const/high16 v7, -0x3ccc0000    # -180.0f

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    const/high16 p2, 0x43340000    # 180.0f

    .line 29
    .line 30
    const/high16 v7, 0x43340000    # 180.0f

    .line 31
    .line 32
    :goto_0
    const/high16 v6, 0x43340000    # 180.0f

    .line 33
    .line 34
    move-object v1, p4

    .line 35
    invoke-virtual/range {v1 .. v7}, Lcom/google/android/material/shape/ShapePath;->addArc(FFFFFF)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {p4, p1, p3}, Lcom/google/android/material/shape/ShapePath;->lineTo(FF)V

    .line 39
    .line 40
    .line 41
    return-void
.end method
