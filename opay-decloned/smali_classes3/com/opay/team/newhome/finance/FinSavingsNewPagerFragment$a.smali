.class public final Lcom/opay/team/newhome/finance/FinSavingsNewPagerFragment$a;
.super Ljava/lang/Object;
.source "FinSavingsNewPagerFragment.kt"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/opay/team/newhome/finance/FinSavingsNewPagerFragment;->x0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0017\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0006*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0017\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J\u0017\u0010\u0007\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016\u00a2\u0006\u0004\u0008\u0007\u0010\u0006J\u0017\u0010\u0008\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016\u00a2\u0006\u0004\u0008\u0008\u0010\u0006J\u0017\u0010\t\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016\u00a2\u0006\u0004\u0008\t\u0010\u0006\u00a8\u0006\n"
    }
    d2 = {
        "com/opay/team/newhome/finance/FinSavingsNewPagerFragment$a",
        "Landroid/animation/Animator$AnimatorListener;",
        "Landroid/animation/Animator;",
        "animation",
        "",
        "onAnimationStart",
        "(Landroid/animation/Animator;)V",
        "onAnimationEnd",
        "onAnimationCancel",
        "onAnimationRepeat",
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
.field public final synthetic a:Lcom/opay/team/newhome/finance/FinSavingsNewPagerFragment;


# direct methods
.method public constructor <init>(Lcom/opay/team/newhome/finance/FinSavingsNewPagerFragment;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/opay/team/newhome/finance/FinSavingsNewPagerFragment$a;->a:Lcom/opay/team/newhome/finance/FinSavingsNewPagerFragment;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1

    .line 1
    const-string v0, "animation"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 8

    .line 1
    const-string v0, "animation"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lcom/opay/team/newhome/finance/FinSavingsNewPagerFragment$a;->a:Lcom/opay/team/newhome/finance/FinSavingsNewPagerFragment;

    .line 7
    .line 8
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->isAdded()Z

    .line 9
    .line 10
    .line 11
    move-result p1

    .line 12
    if-eqz p1, :cond_4

    .line 13
    .line 14
    iget-object p1, p0, Lcom/opay/team/newhome/finance/FinSavingsNewPagerFragment$a;->a:Lcom/opay/team/newhome/finance/FinSavingsNewPagerFragment;

    .line 15
    .line 16
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->isDetached()Z

    .line 17
    .line 18
    .line 19
    move-result p1

    .line 20
    if-nez p1, :cond_4

    .line 21
    .line 22
    iget-object p1, p0, Lcom/opay/team/newhome/finance/FinSavingsNewPagerFragment$a;->a:Lcom/opay/team/newhome/finance/FinSavingsNewPagerFragment;

    .line 23
    .line 24
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->isRemoving()Z

    .line 25
    .line 26
    .line 27
    move-result p1

    .line 28
    if-eqz p1, :cond_0

    .line 29
    .line 30
    goto :goto_1

    .line 31
    :cond_0
    iget-object p1, p0, Lcom/opay/team/newhome/finance/FinSavingsNewPagerFragment$a;->a:Lcom/opay/team/newhome/finance/FinSavingsNewPagerFragment;

    .line 32
    .line 33
    invoke-static {p1}, Lcom/opay/team/newhome/finance/FinSavingsNewPagerFragment;->a0(Lcom/opay/team/newhome/finance/FinSavingsNewPagerFragment;)Lcom/opay/team/newhome/viewmodel/FinanceViewModel;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    const/4 v0, 0x0

    .line 38
    invoke-virtual {p1, v0}, Lcom/opay/team/newhome/viewmodel/FinanceViewModel;->e0(Z)V

    .line 39
    .line 40
    .line 41
    iget-object p1, p0, Lcom/opay/team/newhome/finance/FinSavingsNewPagerFragment$a;->a:Lcom/opay/team/newhome/finance/FinSavingsNewPagerFragment;

    .line 42
    .line 43
    invoke-static {p1}, Lcom/opay/team/newhome/finance/FinSavingsNewPagerFragment;->a0(Lcom/opay/team/newhome/finance/FinSavingsNewPagerFragment;)Lcom/opay/team/newhome/viewmodel/FinanceViewModel;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    invoke-virtual {p1}, Lcom/opay/team/newhome/viewmodel/FinanceViewModel;->V()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    if-eqz p1, :cond_1

    .line 52
    .line 53
    invoke-static {p1}, Lkotlin/text/StringsKt;->s(Ljava/lang/String;)Ljava/math/BigDecimal;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    if-nez p1, :cond_2

    .line 58
    .line 59
    :cond_1
    sget-object p1, Ljava/math/BigDecimal;->ZERO:Ljava/math/BigDecimal;

    .line 60
    .line 61
    :cond_2
    iget-object v1, p0, Lcom/opay/team/newhome/finance/FinSavingsNewPagerFragment$a;->a:Lcom/opay/team/newhome/finance/FinSavingsNewPagerFragment;

    .line 62
    .line 63
    invoke-virtual {v1}, Lteam/opay/core/base/BaseFragmentV2;->N()Lxyf;

    .line 64
    .line 65
    .line 66
    move-result-object v1

    .line 67
    check-cast v1, Lnia;

    .line 68
    .line 69
    if-eqz v1, :cond_4

    .line 70
    .line 71
    iget-object v1, v1, Lnia;->k:Landroidx/appcompat/widget/AppCompatTextView;

    .line 72
    .line 73
    if-eqz v1, :cond_4

    .line 74
    .line 75
    iget-object v2, p0, Lcom/opay/team/newhome/finance/FinSavingsNewPagerFragment$a;->a:Lcom/opay/team/newhome/finance/FinSavingsNewPagerFragment;

    .line 76
    .line 77
    invoke-static {v2}, Lcom/opay/team/newhome/finance/FinSavingsNewPagerFragment;->a0(Lcom/opay/team/newhome/finance/FinSavingsNewPagerFragment;)Lcom/opay/team/newhome/viewmodel/FinanceViewModel;

    .line 78
    .line 79
    .line 80
    move-result-object v3

    .line 81
    invoke-virtual {v3}, Lcom/opay/team/newhome/viewmodel/FinanceViewModel;->V()Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v3

    .line 85
    sget-object v4, Ljava/math/BigDecimal;->ZERO:Ljava/math/BigDecimal;

    .line 86
    .line 87
    invoke-virtual {p1, v4}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    .line 88
    .line 89
    .line 90
    move-result p1

    .line 91
    if-lez p1, :cond_3

    .line 92
    .line 93
    const/4 v0, 0x1

    .line 94
    const/4 v5, 0x1

    .line 95
    goto :goto_0

    .line 96
    :cond_3
    const/4 v5, 0x0

    .line 97
    :goto_0
    const/4 v6, 0x2

    .line 98
    const/4 v7, 0x0

    .line 99
    const/4 v4, 0x0

    .line 100
    invoke-static/range {v2 .. v7}, Lcom/opay/team/newhome/finance/FinSavingsNewPagerFragment;->k0(Lcom/opay/team/newhome/finance/FinSavingsNewPagerFragment;Ljava/lang/String;ZZILjava/lang/Object;)Ljava/lang/CharSequence;

    .line 101
    .line 102
    .line 103
    move-result-object p1

    .line 104
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 105
    .line 106
    .line 107
    :cond_4
    :goto_1
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 1

    .line 1
    const-string v0, "animation"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    .line 1
    const-string v0, "animation"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
