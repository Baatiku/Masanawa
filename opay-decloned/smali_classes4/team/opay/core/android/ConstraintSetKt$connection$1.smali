.class public final Lteam/opay/core/android/ConstraintSetKt$connection$1;
.super Ljava/lang/Object;
.source "ConstraintSet.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lkotlin/jvm/functions/Function2<",
        "Ljava/lang/Integer;",
        "Ljava/lang/Integer;",
        "Lhm6<",
        "-",
        "Ljava/lang/Integer;",
        "-",
        "Ljava/lang/Integer;",
        "-",
        "Ljava/lang/Integer;",
        "+",
        "Lkotlin/Unit;",
        ">;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0xb0
.end annotation


# instance fields
.field public final synthetic a:Landroidx/constraintlayout/widget/ConstraintSet;


# direct methods
.method public constructor <init>(Landroidx/constraintlayout/widget/ConstraintSet;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lteam/opay/core/android/ConstraintSetKt$connection$1;->a:Landroidx/constraintlayout/widget/ConstraintSet;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a(II)Lhm6;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lhm6<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lteam/opay/core/android/ConstraintSetKt$connection$1$1;

    .line 2
    .line 3
    iget-object v1, p0, Lteam/opay/core/android/ConstraintSetKt$connection$1;->a:Landroidx/constraintlayout/widget/ConstraintSet;

    .line 4
    .line 5
    invoke-direct {v0, v1, p1, p2}, Lteam/opay/core/android/ConstraintSetKt$connection$1$1;-><init>(Landroidx/constraintlayout/widget/ConstraintSet;II)V

    .line 6
    .line 7
    .line 8
    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Number;

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    check-cast p2, Ljava/lang/Number;

    .line 8
    .line 9
    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    .line 10
    .line 11
    .line 12
    move-result p2

    .line 13
    invoke-virtual {p0, p1, p2}, Lteam/opay/core/android/ConstraintSetKt$connection$1;->a(II)Lhm6;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    return-object p1
.end method
