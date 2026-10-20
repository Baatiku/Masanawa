.class public final Lcom/opay/team/newhome/home/kbox/KBoxViewHolder;
.super Ljava/lang/Object;
.source "KBoxViewHolder.kt"

# interfaces
.implements Ltzf;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ltzf<",
        "Lcom/opay/team/newhome/reward/WidgetModule;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0008\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\t\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B5\u0012\u0018\u0010\u0006\u001a\u0014\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00050\u0003\u0012\u0012\u0010\u0008\u001a\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00050\u0007\u00a2\u0006\u0004\u0008\t\u0010\nJ\'\u0010\u000f\u001a\u00020\u00052\u0006\u0010\u000c\u001a\u00020\u000b2\u0006\u0010\r\u001a\u00020\u00022\u0006\u0010\u000e\u001a\u00020\u0004H\u0016\u00a2\u0006\u0004\u0008\u000f\u0010\u0010J\u001f\u0010\u0015\u001a\u00020\u00142\u0006\u0010\u0012\u001a\u00020\u00112\u0006\u0010\u0013\u001a\u00020\u0004H\u0016\u00a2\u0006\u0004\u0008\u0015\u0010\u0016J\u001f\u0010\u0017\u001a\u00020\u00042\u0006\u0010\u000e\u001a\u00020\u00042\u0006\u0010\r\u001a\u00020\u0002H\u0016\u00a2\u0006\u0004\u0008\u0017\u0010\u0018R&\u0010\u0006\u001a\u0014\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00050\u00038\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0019\u0010\u001aR \u0010\u0008\u001a\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00050\u00078\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u001b\u0010\u001c\u00a8\u0006\u001d"
    }
    d2 = {
        "Lcom/opay/team/newhome/home/kbox/KBoxViewHolder;",
        "Ltzf;",
        "Lcom/opay/team/newhome/reward/WidgetModule;",
        "Lkotlin/Function2;",
        "",
        "",
        "onKBoxButtonClick",
        "Lkotlin/Function1;",
        "onKBoxReportor",
        "<init>",
        "(Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;)V",
        "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
        "holder",
        "data",
        "position",
        "e",
        "(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Lcom/opay/team/newhome/reward/WidgetModule;I)V",
        "Landroid/view/ViewGroup;",
        "container",
        "viewType",
        "Lcom/opay/team/newhome/home/kbox/BaseKBoxViewHolder;",
        "f",
        "(Landroid/view/ViewGroup;I)Lcom/opay/team/newhome/home/kbox/BaseKBoxViewHolder;",
        "d",
        "(ILcom/opay/team/newhome/reward/WidgetModule;)I",
        "a",
        "Lkotlin/jvm/functions/Function2;",
        "b",
        "Lkotlin/jvm/functions/Function1;",
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
.field public final a:Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function2<",
            "Ljava/lang/Integer;",
            "Lcom/opay/team/newhome/reward/WidgetModule;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final b:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Lcom/opay/team/newhome/reward/WidgetModule;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;)V
    .locals 1
    .param p1    # Lkotlin/jvm/functions/Function2;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Ljava/lang/Integer;",
            "-",
            "Lcom/opay/team/newhome/reward/WidgetModule;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/opay/team/newhome/reward/WidgetModule;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 1
    const-string v0, "onKBoxButtonClick"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "onKBoxReportor"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    .line 13
    .line 14
    iput-object p1, p0, Lcom/opay/team/newhome/home/kbox/KBoxViewHolder;->a:Lkotlin/jvm/functions/Function2;

    .line 15
    .line 16
    iput-object p2, p0, Lcom/opay/team/newhome/home/kbox/KBoxViewHolder;->b:Lkotlin/jvm/functions/Function1;

    .line 17
    .line 18
    return-void
.end method


# virtual methods
.method public bridge synthetic a(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Ljava/lang/Object;I)V
    .locals 0

    .line 1
    check-cast p2, Lcom/opay/team/newhome/reward/WidgetModule;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2, p3}, Lcom/opay/team/newhome/home/kbox/KBoxViewHolder;->e(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Lcom/opay/team/newhome/reward/WidgetModule;I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public bridge synthetic b(ILjava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p2, Lcom/opay/team/newhome/reward/WidgetModule;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/opay/team/newhome/home/kbox/KBoxViewHolder;->d(ILcom/opay/team/newhome/reward/WidgetModule;)I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public bridge synthetic c(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/opay/team/newhome/home/kbox/KBoxViewHolder;->f(Landroid/view/ViewGroup;I)Lcom/opay/team/newhome/home/kbox/BaseKBoxViewHolder;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public d(ILcom/opay/team/newhome/reward/WidgetModule;)I
    .locals 0
    .param p2    # Lcom/opay/team/newhome/reward/WidgetModule;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string p1, "data"

    .line 2
    .line 3
    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p2}, Lcom/opay/team/newhome/reward/WidgetModule;->d()Ljava/lang/Integer;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    const/4 p2, -0x1

    .line 11
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 12
    .line 13
    .line 14
    move-result-object p2

    .line 15
    invoke-static {p1, p2}, Lgmf;->e(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    check-cast p1, Ljava/lang/Number;

    .line 20
    .line 21
    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    .line 22
    .line 23
    .line 24
    move-result p1

    .line 25
    return p1
.end method

.method public e(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Lcom/opay/team/newhome/reward/WidgetModule;I)V
    .locals 3
    .param p1    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/opay/team/newhome/reward/WidgetModule;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "holder"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "data"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p2}, Lcom/opay/team/newhome/reward/WidgetModule;->d()Ljava/lang/Integer;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    if-nez v0, :cond_0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    const/4 v2, 0x1

    .line 23
    if-ne v1, v2, :cond_1

    .line 24
    .line 25
    check-cast p1, Lcom/opay/team/newhome/home/kbox/KBoxTaskViewHolder;

    .line 26
    .line 27
    invoke-virtual {p1, p3, p2}, Lcom/opay/team/newhome/home/kbox/KBoxTaskViewHolder;->n(ILcom/opay/team/newhome/reward/WidgetModule;)V

    .line 28
    .line 29
    .line 30
    goto/16 :goto_8

    .line 31
    .line 32
    :cond_1
    :goto_0
    if-nez v0, :cond_2

    .line 33
    .line 34
    goto :goto_1

    .line 35
    :cond_2
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 36
    .line 37
    .line 38
    move-result v1

    .line 39
    const/4 v2, 0x2

    .line 40
    if-ne v1, v2, :cond_3

    .line 41
    .line 42
    check-cast p1, Lcom/opay/team/newhome/home/kbox/KBoxBigTaskViewHolder;

    .line 43
    .line 44
    invoke-virtual {p1, p3, p2}, Lcom/opay/team/newhome/home/kbox/KBoxTaskViewHolder;->n(ILcom/opay/team/newhome/reward/WidgetModule;)V

    .line 45
    .line 46
    .line 47
    goto/16 :goto_8

    .line 48
    .line 49
    :cond_3
    :goto_1
    if-nez v0, :cond_4

    .line 50
    .line 51
    goto :goto_2

    .line 52
    :cond_4
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 53
    .line 54
    .line 55
    move-result v1

    .line 56
    const/4 v2, 0x3

    .line 57
    if-ne v1, v2, :cond_5

    .line 58
    .line 59
    check-cast p1, Lcom/opay/team/newhome/home/kbox/KBoxVoucherViewHolder;

    .line 60
    .line 61
    invoke-virtual {p1, p3, p2}, Lcom/opay/team/newhome/home/kbox/KBoxVoucherViewHolder;->o(ILcom/opay/team/newhome/reward/WidgetModule;)V

    .line 62
    .line 63
    .line 64
    goto :goto_8

    .line 65
    :cond_5
    :goto_2
    if-nez v0, :cond_6

    .line 66
    .line 67
    goto :goto_3

    .line 68
    :cond_6
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 69
    .line 70
    .line 71
    move-result v1

    .line 72
    const/4 v2, 0x4

    .line 73
    if-ne v1, v2, :cond_7

    .line 74
    .line 75
    check-cast p1, Lcom/opay/team/newhome/home/kbox/KBoxBigVoucherViewHolder;

    .line 76
    .line 77
    invoke-virtual {p1, p3, p2}, Lcom/opay/team/newhome/home/kbox/KBoxVoucherViewHolder;->o(ILcom/opay/team/newhome/reward/WidgetModule;)V

    .line 78
    .line 79
    .line 80
    goto :goto_8

    .line 81
    :cond_7
    :goto_3
    if-nez v0, :cond_8

    .line 82
    .line 83
    goto :goto_4

    .line 84
    :cond_8
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 85
    .line 86
    .line 87
    move-result v1

    .line 88
    const/4 v2, 0x7

    .line 89
    if-ne v1, v2, :cond_9

    .line 90
    .line 91
    check-cast p1, Lcom/opay/team/newhome/home/kbox/KBoxSignInViewHolder;

    .line 92
    .line 93
    invoke-virtual {p1, p3, p2}, Lcom/opay/team/newhome/home/kbox/KBoxTaskViewHolder;->n(ILcom/opay/team/newhome/reward/WidgetModule;)V

    .line 94
    .line 95
    .line 96
    goto :goto_8

    .line 97
    :cond_9
    :goto_4
    if-nez v0, :cond_a

    .line 98
    .line 99
    goto :goto_5

    .line 100
    :cond_a
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 101
    .line 102
    .line 103
    move-result v1

    .line 104
    const/16 v2, 0x8

    .line 105
    .line 106
    if-ne v1, v2, :cond_b

    .line 107
    .line 108
    check-cast p1, Lcom/opay/team/newhome/home/kbox/KBoxBigSignInViewHolder;

    .line 109
    .line 110
    invoke-virtual {p1, p3, p2}, Lcom/opay/team/newhome/home/kbox/KBoxTaskViewHolder;->n(ILcom/opay/team/newhome/reward/WidgetModule;)V

    .line 111
    .line 112
    .line 113
    goto :goto_8

    .line 114
    :cond_b
    :goto_5
    if-nez v0, :cond_c

    .line 115
    .line 116
    goto :goto_6

    .line 117
    :cond_c
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 118
    .line 119
    .line 120
    move-result v1

    .line 121
    const/4 v2, 0x5

    .line 122
    if-ne v1, v2, :cond_d

    .line 123
    .line 124
    check-cast p1, Lcom/opay/team/newhome/home/kbox/KBoxLinkViewHolder;

    .line 125
    .line 126
    invoke-virtual {p1, p3, p2}, Lcom/opay/team/newhome/home/kbox/KBoxTaskViewHolder;->n(ILcom/opay/team/newhome/reward/WidgetModule;)V

    .line 127
    .line 128
    .line 129
    goto :goto_8

    .line 130
    :cond_d
    :goto_6
    if-nez v0, :cond_e

    .line 131
    .line 132
    goto :goto_7

    .line 133
    :cond_e
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 134
    .line 135
    .line 136
    move-result v0

    .line 137
    const/4 v1, 0x6

    .line 138
    if-ne v0, v1, :cond_f

    .line 139
    .line 140
    check-cast p1, Lcom/opay/team/newhome/home/kbox/KBoxBigLinkViewHolder;

    .line 141
    .line 142
    invoke-virtual {p1, p3, p2}, Lcom/opay/team/newhome/home/kbox/KBoxTaskViewHolder;->n(ILcom/opay/team/newhome/reward/WidgetModule;)V

    .line 143
    .line 144
    .line 145
    goto :goto_8

    .line 146
    :cond_f
    :goto_7
    check-cast p1, Lcom/opay/team/newhome/home/kbox/KBoxLinkViewHolder;

    .line 147
    .line 148
    invoke-virtual {p1, p3, p2}, Lcom/opay/team/newhome/home/kbox/KBoxTaskViewHolder;->n(ILcom/opay/team/newhome/reward/WidgetModule;)V

    .line 149
    .line 150
    .line 151
    :goto_8
    return-void
.end method

.method public f(Landroid/view/ViewGroup;I)Lcom/opay/team/newhome/home/kbox/BaseKBoxViewHolder;
    .locals 3
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "container"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    const-string v1, "inflate(...)"

    .line 15
    .line 16
    const/4 v2, 0x0

    .line 17
    packed-switch p2, :pswitch_data_0

    .line 18
    .line 19
    .line 20
    new-instance p2, Lcom/opay/team/newhome/home/kbox/KBoxLinkViewHolder;

    .line 21
    .line 22
    invoke-static {v0, p1, v2}, Lqja;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lqja;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    invoke-direct {p2, p1}, Lcom/opay/team/newhome/home/kbox/KBoxLinkViewHolder;-><init>(Lqja;)V

    .line 30
    .line 31
    .line 32
    iget-object p1, p0, Lcom/opay/team/newhome/home/kbox/KBoxViewHolder;->b:Lkotlin/jvm/functions/Function1;

    .line 33
    .line 34
    invoke-virtual {p2, p1}, Lcom/opay/team/newhome/home/kbox/BaseKBoxViewHolder;->i(Lkotlin/jvm/functions/Function1;)V

    .line 35
    .line 36
    .line 37
    goto/16 :goto_0

    .line 38
    .line 39
    :pswitch_0
    new-instance p2, Lcom/opay/team/newhome/home/kbox/KBoxBigSignInViewHolder;

    .line 40
    .line 41
    invoke-static {v0, p1, v2}, Lqja;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lqja;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    invoke-direct {p2, p1}, Lcom/opay/team/newhome/home/kbox/KBoxBigSignInViewHolder;-><init>(Lqja;)V

    .line 49
    .line 50
    .line 51
    iget-object p1, p0, Lcom/opay/team/newhome/home/kbox/KBoxViewHolder;->b:Lkotlin/jvm/functions/Function1;

    .line 52
    .line 53
    invoke-virtual {p2, p1}, Lcom/opay/team/newhome/home/kbox/BaseKBoxViewHolder;->i(Lkotlin/jvm/functions/Function1;)V

    .line 54
    .line 55
    .line 56
    goto/16 :goto_0

    .line 57
    .line 58
    :pswitch_1
    new-instance p2, Lcom/opay/team/newhome/home/kbox/KBoxSignInViewHolder;

    .line 59
    .line 60
    invoke-static {v0, p1, v2}, Lqja;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lqja;

    .line 61
    .line 62
    .line 63
    move-result-object p1

    .line 64
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    invoke-direct {p2, p1}, Lcom/opay/team/newhome/home/kbox/KBoxSignInViewHolder;-><init>(Lqja;)V

    .line 68
    .line 69
    .line 70
    iget-object p1, p0, Lcom/opay/team/newhome/home/kbox/KBoxViewHolder;->b:Lkotlin/jvm/functions/Function1;

    .line 71
    .line 72
    invoke-virtual {p2, p1}, Lcom/opay/team/newhome/home/kbox/BaseKBoxViewHolder;->i(Lkotlin/jvm/functions/Function1;)V

    .line 73
    .line 74
    .line 75
    goto/16 :goto_0

    .line 76
    .line 77
    :pswitch_2
    new-instance p2, Lcom/opay/team/newhome/home/kbox/KBoxBigLinkViewHolder;

    .line 78
    .line 79
    invoke-static {v0, p1, v2}, Lqja;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lqja;

    .line 80
    .line 81
    .line 82
    move-result-object p1

    .line 83
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 84
    .line 85
    .line 86
    invoke-direct {p2, p1}, Lcom/opay/team/newhome/home/kbox/KBoxBigLinkViewHolder;-><init>(Lqja;)V

    .line 87
    .line 88
    .line 89
    iget-object p1, p0, Lcom/opay/team/newhome/home/kbox/KBoxViewHolder;->b:Lkotlin/jvm/functions/Function1;

    .line 90
    .line 91
    invoke-virtual {p2, p1}, Lcom/opay/team/newhome/home/kbox/BaseKBoxViewHolder;->i(Lkotlin/jvm/functions/Function1;)V

    .line 92
    .line 93
    .line 94
    goto :goto_0

    .line 95
    :pswitch_3
    new-instance p2, Lcom/opay/team/newhome/home/kbox/KBoxLinkViewHolder;

    .line 96
    .line 97
    invoke-static {v0, p1, v2}, Lqja;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lqja;

    .line 98
    .line 99
    .line 100
    move-result-object p1

    .line 101
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 102
    .line 103
    .line 104
    invoke-direct {p2, p1}, Lcom/opay/team/newhome/home/kbox/KBoxLinkViewHolder;-><init>(Lqja;)V

    .line 105
    .line 106
    .line 107
    iget-object p1, p0, Lcom/opay/team/newhome/home/kbox/KBoxViewHolder;->b:Lkotlin/jvm/functions/Function1;

    .line 108
    .line 109
    invoke-virtual {p2, p1}, Lcom/opay/team/newhome/home/kbox/BaseKBoxViewHolder;->i(Lkotlin/jvm/functions/Function1;)V

    .line 110
    .line 111
    .line 112
    goto :goto_0

    .line 113
    :pswitch_4
    new-instance p2, Lcom/opay/team/newhome/home/kbox/KBoxBigVoucherViewHolder;

    .line 114
    .line 115
    invoke-static {v0, p1, v2}, Lrja;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lrja;

    .line 116
    .line 117
    .line 118
    move-result-object p1

    .line 119
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 120
    .line 121
    .line 122
    invoke-direct {p2, p1}, Lcom/opay/team/newhome/home/kbox/KBoxBigVoucherViewHolder;-><init>(Lrja;)V

    .line 123
    .line 124
    .line 125
    iget-object p1, p0, Lcom/opay/team/newhome/home/kbox/KBoxViewHolder;->a:Lkotlin/jvm/functions/Function2;

    .line 126
    .line 127
    invoke-virtual {p2, p1}, Lcom/opay/team/newhome/home/kbox/BaseKBoxViewHolder;->h(Lkotlin/jvm/functions/Function2;)V

    .line 128
    .line 129
    .line 130
    iget-object p1, p0, Lcom/opay/team/newhome/home/kbox/KBoxViewHolder;->b:Lkotlin/jvm/functions/Function1;

    .line 131
    .line 132
    invoke-virtual {p2, p1}, Lcom/opay/team/newhome/home/kbox/BaseKBoxViewHolder;->i(Lkotlin/jvm/functions/Function1;)V

    .line 133
    .line 134
    .line 135
    goto :goto_0

    .line 136
    :pswitch_5
    new-instance p2, Lcom/opay/team/newhome/home/kbox/KBoxVoucherViewHolder;

    .line 137
    .line 138
    invoke-static {v0, p1, v2}, Lrja;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lrja;

    .line 139
    .line 140
    .line 141
    move-result-object p1

    .line 142
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 143
    .line 144
    .line 145
    invoke-direct {p2, p1}, Lcom/opay/team/newhome/home/kbox/KBoxVoucherViewHolder;-><init>(Lrja;)V

    .line 146
    .line 147
    .line 148
    iget-object p1, p0, Lcom/opay/team/newhome/home/kbox/KBoxViewHolder;->a:Lkotlin/jvm/functions/Function2;

    .line 149
    .line 150
    invoke-virtual {p2, p1}, Lcom/opay/team/newhome/home/kbox/BaseKBoxViewHolder;->h(Lkotlin/jvm/functions/Function2;)V

    .line 151
    .line 152
    .line 153
    iget-object p1, p0, Lcom/opay/team/newhome/home/kbox/KBoxViewHolder;->b:Lkotlin/jvm/functions/Function1;

    .line 154
    .line 155
    invoke-virtual {p2, p1}, Lcom/opay/team/newhome/home/kbox/BaseKBoxViewHolder;->i(Lkotlin/jvm/functions/Function1;)V

    .line 156
    .line 157
    .line 158
    goto :goto_0

    .line 159
    :pswitch_6
    new-instance p2, Lcom/opay/team/newhome/home/kbox/KBoxBigTaskViewHolder;

    .line 160
    .line 161
    invoke-static {v0, p1, v2}, Lqja;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lqja;

    .line 162
    .line 163
    .line 164
    move-result-object p1

    .line 165
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 166
    .line 167
    .line 168
    invoke-direct {p2, p1}, Lcom/opay/team/newhome/home/kbox/KBoxBigTaskViewHolder;-><init>(Lqja;)V

    .line 169
    .line 170
    .line 171
    iget-object p1, p0, Lcom/opay/team/newhome/home/kbox/KBoxViewHolder;->a:Lkotlin/jvm/functions/Function2;

    .line 172
    .line 173
    invoke-virtual {p2, p1}, Lcom/opay/team/newhome/home/kbox/BaseKBoxViewHolder;->h(Lkotlin/jvm/functions/Function2;)V

    .line 174
    .line 175
    .line 176
    iget-object p1, p0, Lcom/opay/team/newhome/home/kbox/KBoxViewHolder;->b:Lkotlin/jvm/functions/Function1;

    .line 177
    .line 178
    invoke-virtual {p2, p1}, Lcom/opay/team/newhome/home/kbox/BaseKBoxViewHolder;->i(Lkotlin/jvm/functions/Function1;)V

    .line 179
    .line 180
    .line 181
    goto :goto_0

    .line 182
    :pswitch_7
    new-instance p2, Lcom/opay/team/newhome/home/kbox/KBoxTaskViewHolder;

    .line 183
    .line 184
    invoke-static {v0, p1, v2}, Lqja;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lqja;

    .line 185
    .line 186
    .line 187
    move-result-object p1

    .line 188
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 189
    .line 190
    .line 191
    invoke-direct {p2, p1}, Lcom/opay/team/newhome/home/kbox/KBoxTaskViewHolder;-><init>(Lqja;)V

    .line 192
    .line 193
    .line 194
    iget-object p1, p0, Lcom/opay/team/newhome/home/kbox/KBoxViewHolder;->a:Lkotlin/jvm/functions/Function2;

    .line 195
    .line 196
    invoke-virtual {p2, p1}, Lcom/opay/team/newhome/home/kbox/BaseKBoxViewHolder;->h(Lkotlin/jvm/functions/Function2;)V

    .line 197
    .line 198
    .line 199
    iget-object p1, p0, Lcom/opay/team/newhome/home/kbox/KBoxViewHolder;->b:Lkotlin/jvm/functions/Function1;

    .line 200
    .line 201
    invoke-virtual {p2, p1}, Lcom/opay/team/newhome/home/kbox/BaseKBoxViewHolder;->i(Lkotlin/jvm/functions/Function1;)V

    .line 202
    .line 203
    .line 204
    :goto_0
    return-object p2

    .line 205
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
