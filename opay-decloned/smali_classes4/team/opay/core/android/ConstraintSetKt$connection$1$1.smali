.class public final Lteam/opay/core/android/ConstraintSetKt$connection$1$1;
.super Ljava/lang/Object;
.source "ConstraintSet.kt"

# interfaces
.implements Lhm6;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lteam/opay/core/android/ConstraintSetKt$connection$1;->a(II)Lhm6;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lhm6<",
        "Ljava/lang/Integer;",
        "Ljava/lang/Integer;",
        "Ljava/lang/Integer;",
        "Lkotlin/Unit;",
        ">;"
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

.field public final synthetic b:I

.field public final synthetic c:I


# direct methods
.method public constructor <init>(Landroidx/constraintlayout/widget/ConstraintSet;II)V
    .locals 0

    .line 1
    iput-object p1, p0, Lteam/opay/core/android/ConstraintSetKt$connection$1$1;->a:Landroidx/constraintlayout/widget/ConstraintSet;

    .line 2
    .line 3
    iput p2, p0, Lteam/opay/core/android/ConstraintSetKt$connection$1$1;->b:I

    .line 4
    .line 5
    iput p3, p0, Lteam/opay/core/android/ConstraintSetKt$connection$1$1;->c:I

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final a(III)V
    .locals 3

    .line 1
    iget-object v0, p0, Lteam/opay/core/android/ConstraintSetKt$connection$1$1;->a:Landroidx/constraintlayout/widget/ConstraintSet;

    .line 2
    .line 3
    iget v1, p0, Lteam/opay/core/android/ConstraintSetKt$connection$1$1;->b:I

    .line 4
    .line 5
    iget v2, p0, Lteam/opay/core/android/ConstraintSetKt$connection$1$1;->c:I

    .line 6
    .line 7
    invoke-virtual {v0, p1, v1, p2, v2}, Landroidx/constraintlayout/widget/ConstraintSet;->t(IIII)V

    .line 8
    .line 9
    .line 10
    iget-object p2, p0, Lteam/opay/core/android/ConstraintSetKt$connection$1$1;->a:Landroidx/constraintlayout/widget/ConstraintSet;

    .line 11
    .line 12
    iget v0, p0, Lteam/opay/core/android/ConstraintSetKt$connection$1$1;->b:I

    .line 13
    .line 14
    invoke-virtual {p2, p1, v0, p3}, Landroidx/constraintlayout/widget/ConstraintSet;->a0(III)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
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
    check-cast p3, Ljava/lang/Number;

    .line 14
    .line 15
    invoke-virtual {p3}, Ljava/lang/Number;->intValue()I

    .line 16
    .line 17
    .line 18
    move-result p3

    .line 19
    invoke-virtual {p0, p1, p2, p3}, Lteam/opay/core/android/ConstraintSetKt$connection$1$1;->a(III)V

    .line 20
    .line 21
    .line 22
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 23
    .line 24
    return-object p1
.end method
