.class public final Lteam/opay/core/common/android/Treatment$QuadEdgeTreatment;
.super Lcom/google/android/material/shape/EdgeTreatment;
.source "ViewMsd.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lteam/opay/core/common/android/Treatment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "QuadEdgeTreatment"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0007\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0007\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J/\u0010\u000c\u001a\u00020\u000b2\u0006\u0010\u0006\u001a\u00020\u00022\u0006\u0010\u0007\u001a\u00020\u00022\u0006\u0010\u0008\u001a\u00020\u00022\u0006\u0010\n\u001a\u00020\tH\u0016\u00a2\u0006\u0004\u0008\u000c\u0010\rR\u0017\u0010\u0003\u001a\u00020\u00028\u0006\u00a2\u0006\u000c\n\u0004\u0008\u000e\u0010\u000f\u001a\u0004\u0008\u0010\u0010\u0011\u00a8\u0006\u0012"
    }
    d2 = {
        "Lteam/opay/core/common/android/Treatment$QuadEdgeTreatment;",
        "Lcom/google/android/material/shape/EdgeTreatment;",
        "",
        "size",
        "<init>",
        "(F)V",
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


# direct methods
.method public constructor <init>(F)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/material/shape/EdgeTreatment;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Lteam/opay/core/common/android/Treatment$QuadEdgeTreatment;->a:F

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public getEdgePath(FFFLcom/google/android/material/shape/ShapePath;)V
    .locals 1
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
    iget v0, p0, Lteam/opay/core/common/android/Treatment$QuadEdgeTreatment;->a:F

    .line 7
    .line 8
    mul-float v0, v0, p3

    .line 9
    .line 10
    const/4 p3, 0x0

    .line 11
    invoke-virtual {p4, p2, v0, p1, p3}, Lcom/google/android/material/shape/ShapePath;->quadToPoint(FFFF)V

    .line 12
    .line 13
    .line 14
    return-void
.end method
