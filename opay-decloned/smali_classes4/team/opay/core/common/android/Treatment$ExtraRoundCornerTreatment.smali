.class public final Lteam/opay/core/common/android/Treatment$ExtraRoundCornerTreatment;
.super Lcom/google/android/material/shape/CornerTreatment;
.source "ViewMsd.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lteam/opay/core/common/android/Treatment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ExtraRoundCornerTreatment"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0002\u0008\u0003\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J(\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\t2\u0006\u0010\u000b\u001a\u00020\tH\u0016\u00a8\u0006\u000c"
    }
    d2 = {
        "Lteam/opay/core/common/android/Treatment$ExtraRoundCornerTreatment;",
        "Lcom/google/android/material/shape/CornerTreatment;",
        "<init>",
        "()V",
        "getCornerPath",
        "",
        "shapePath",
        "Lcom/google/android/material/shape/ShapePath;",
        "angle",
        "",
        "f",
        "size",
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


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/material/shape/CornerTreatment;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public getCornerPath(Lcom/google/android/material/shape/ShapePath;FFF)V
    .locals 8
    .param p1    # Lcom/google/android/material/shape/ShapePath;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "shapePath"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    mul-float v5, p4, p3

    .line 7
    .line 8
    const/16 p3, 0xb4

    .line 9
    .line 10
    int-to-float p3, p3

    .line 11
    sub-float/2addr p3, p2

    .line 12
    const/4 p4, 0x0

    .line 13
    const/high16 v0, 0x43340000    # 180.0f

    .line 14
    .line 15
    invoke-virtual {p1, p4, v5, v0, p3}, Lcom/google/android/material/shape/ShapePath;->reset(FFFF)V

    .line 16
    .line 17
    .line 18
    neg-float v3, v5

    .line 19
    const/high16 v7, 0x43870000    # 270.0f

    .line 20
    .line 21
    move-object v1, p1

    .line 22
    move v2, v3

    .line 23
    move v4, v5

    .line 24
    move v6, p2

    .line 25
    invoke-virtual/range {v1 .. v7}, Lcom/google/android/material/shape/ShapePath;->addArc(FFFFFF)V

    .line 26
    .line 27
    .line 28
    return-void
.end method
