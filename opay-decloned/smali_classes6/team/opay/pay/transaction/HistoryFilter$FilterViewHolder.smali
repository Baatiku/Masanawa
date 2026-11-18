.class final Lteam/opay/pay/transaction/HistoryFilter$FilterViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "HistoryFilter.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lteam/opay/pay/transaction/HistoryFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "FilterViewHolder"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000D\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0005\u0008\u0002\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u0015\u0010\u0008\u001a\u00020\u00072\u0006\u0010\u0003\u001a\u00020\u0006\u00a2\u0006\u0004\u0008\u0008\u0010\tJ\u0015\u0010\u000b\u001a\u00020\u00072\u0006\u0010\u0003\u001a\u00020\n\u00a2\u0006\u0004\u0008\u000b\u0010\u000cJ\u0017\u0010\u000e\u001a\u00020\u00072\u0006\u0010\u0003\u001a\u00020\rH\u0007\u00a2\u0006\u0004\u0008\u000e\u0010\u000fJ\u0015\u0010\u0011\u001a\u00020\u00072\u0006\u0010\u0003\u001a\u00020\u0010\u00a2\u0006\u0004\u0008\u0011\u0010\u0012J\u0015\u0010\u0014\u001a\u00020\u00072\u0006\u0010\u0003\u001a\u00020\u0013\u00a2\u0006\u0004\u0008\u0014\u0010\u0015J\u001f\u0010\u0019\u001a\u00020\u00072\u0006\u0010\u0017\u001a\u00020\u00162\u0006\u0010\u0018\u001a\u00020\u0002H\u0002\u00a2\u0006\u0004\u0008\u0019\u0010\u001a\u00a8\u0006\u001b"
    }
    d2 = {
        "Lteam/opay/pay/transaction/HistoryFilter$FilterViewHolder;",
        "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
        "Landroid/view/View;",
        "item",
        "<init>",
        "(Landroid/view/View;)V",
        "Lteam/opay/pay/transaction/HistoryFilter$FilterItem;",
        "",
        "i",
        "(Lteam/opay/pay/transaction/HistoryFilter$FilterItem;)V",
        "Lteam/opay/pay/transaction/HistoryFilter$StatusFilterItem;",
        "k",
        "(Lteam/opay/pay/transaction/HistoryFilter$StatusFilterItem;)V",
        "Lteam/opay/pay/transaction/HistoryFilter$CategoryFilterItem;",
        "g",
        "(Lteam/opay/pay/transaction/HistoryFilter$CategoryFilterItem;)V",
        "Lteam/opay/pay/transaction/HistoryFilter$PeriodFilterItem;",
        "j",
        "(Lteam/opay/pay/transaction/HistoryFilter$PeriodFilterItem;)V",
        "Lteam/opay/pay/transaction/HistoryFilter$CustomPeriodFilterItem;",
        "h",
        "(Lteam/opay/pay/transaction/HistoryFilter$CustomPeriodFilterItem;)V",
        "",
        "separated",
        "itemView",
        "r",
        "(ZLandroid/view/View;)V",
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


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "item"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public static synthetic a(Lteam/opay/pay/transaction/HistoryFilter$CustomPeriodFilterItem;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/pay/transaction/HistoryFilter$FilterViewHolder;->o(Lteam/opay/pay/transaction/HistoryFilter$CustomPeriodFilterItem;Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic b(Lteam/opay/pay/transaction/HistoryFilter$CategoryFilterItem;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/pay/transaction/HistoryFilter$FilterViewHolder;->q(Lteam/opay/pay/transaction/HistoryFilter$CategoryFilterItem;Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic c(Landroid/view/View;Lteam/opay/pay/transaction/HistoryFilter$CustomPeriodFilterItem;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lteam/opay/pay/transaction/HistoryFilter$FilterViewHolder;->m(Landroid/view/View;Lteam/opay/pay/transaction/HistoryFilter$CustomPeriodFilterItem;Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic d(Lteam/opay/pay/transaction/HistoryFilter$StatusFilterItem;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/pay/transaction/HistoryFilter$FilterViewHolder;->l(Lteam/opay/pay/transaction/HistoryFilter$StatusFilterItem;Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic e(Landroid/view/View;Lteam/opay/pay/transaction/HistoryFilter$CustomPeriodFilterItem;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lteam/opay/pay/transaction/HistoryFilter$FilterViewHolder;->p(Landroid/view/View;Lteam/opay/pay/transaction/HistoryFilter$CustomPeriodFilterItem;Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic f(Lteam/opay/pay/transaction/HistoryFilter$CustomPeriodFilterItem;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/pay/transaction/HistoryFilter$FilterViewHolder;->n(Lteam/opay/pay/transaction/HistoryFilter$CustomPeriodFilterItem;Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final l(Lteam/opay/pay/transaction/HistoryFilter$StatusFilterItem;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lteam/opay/pay/transaction/HistoryFilter$FilterItem;->a()Lkotlin/jvm/functions/Function0;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public static final m(Landroid/view/View;Lteam/opay/pay/transaction/HistoryFilter$CustomPeriodFilterItem;Landroid/view/View;)V
    .locals 6

    .line 1
    new-instance p2, Landroid/app/DatePickerDialog;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {p1}, Lteam/opay/pay/transaction/HistoryFilter$CustomPeriodFilterItem;->d()Landroid/app/DatePickerDialog$OnDateSetListener;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    invoke-static {}, Lteam/opay/pay/transaction/HistoryFilter;->e()Ljava/util/Calendar;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    const/4 v0, 0x1

    .line 16
    invoke-virtual {p0, v0}, Ljava/util/Calendar;->get(I)I

    .line 17
    .line 18
    .line 19
    move-result v3

    .line 20
    invoke-static {}, Lteam/opay/pay/transaction/HistoryFilter;->e()Ljava/util/Calendar;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    const/4 v0, 0x2

    .line 25
    invoke-virtual {p0, v0}, Ljava/util/Calendar;->get(I)I

    .line 26
    .line 27
    .line 28
    move-result v4

    .line 29
    invoke-static {}, Lteam/opay/pay/transaction/HistoryFilter;->e()Ljava/util/Calendar;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    const/4 v0, 0x5

    .line 34
    invoke-virtual {p0, v0}, Ljava/util/Calendar;->get(I)I

    .line 35
    .line 36
    .line 37
    move-result v5

    .line 38
    move-object v0, p2

    .line 39
    invoke-direct/range {v0 .. v5}, Landroid/app/DatePickerDialog;-><init>(Landroid/content/Context;Landroid/app/DatePickerDialog$OnDateSetListener;III)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {p2}, Landroid/app/DatePickerDialog;->getDatePicker()Landroid/widget/DatePicker;

    .line 43
    .line 44
    .line 45
    move-result-object p0

    .line 46
    sget-object v0, Lteam/opay/pay/transaction/HistoryFilter;->a:Lteam/opay/pay/transaction/HistoryFilter;

    .line 47
    .line 48
    invoke-virtual {p1}, Lteam/opay/pay/transaction/HistoryFilter$CustomPeriodFilterItem;->f()Ljava/util/Date;

    .line 49
    .line 50
    .line 51
    move-result-object v1

    .line 52
    const/4 v2, 0x0

    .line 53
    invoke-virtual {v0, v1, v2}, Lteam/opay/pay/transaction/HistoryFilter;->l(Ljava/util/Date;Z)J

    .line 54
    .line 55
    .line 56
    move-result-wide v0

    .line 57
    invoke-virtual {p0, v0, v1}, Landroid/widget/DatePicker;->setMaxDate(J)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {p1}, Lteam/opay/pay/transaction/HistoryFilter$CustomPeriodFilterItem;->f()Ljava/util/Date;

    .line 61
    .line 62
    .line 63
    move-result-object p0

    .line 64
    if-eqz p0, :cond_0

    .line 65
    .line 66
    invoke-virtual {p2}, Landroid/app/DatePickerDialog;->getDatePicker()Landroid/widget/DatePicker;

    .line 67
    .line 68
    .line 69
    move-result-object p0

    .line 70
    invoke-virtual {p1}, Lteam/opay/pay/transaction/HistoryFilter$CustomPeriodFilterItem;->f()Ljava/util/Date;

    .line 71
    .line 72
    .line 73
    move-result-object p1

    .line 74
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;)V

    .line 75
    .line 76
    .line 77
    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    .line 78
    .line 79
    .line 80
    move-result-wide v0

    .line 81
    invoke-virtual {p0, v0, v1}, Landroid/widget/DatePicker;->setMinDate(J)V

    .line 82
    .line 83
    .line 84
    :cond_0
    invoke-virtual {p2}, Landroid/app/Dialog;->show()V

    .line 85
    .line 86
    .line 87
    return-void
.end method

.method public static final n(Lteam/opay/pay/transaction/HistoryFilter$CustomPeriodFilterItem;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lteam/opay/pay/transaction/HistoryFilter$CustomPeriodFilterItem;->e()Lkotlin/jvm/functions/Function0;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public static final o(Lteam/opay/pay/transaction/HistoryFilter$CustomPeriodFilterItem;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lteam/opay/pay/transaction/HistoryFilter$FilterItem;->a()Lkotlin/jvm/functions/Function0;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public static final p(Landroid/view/View;Lteam/opay/pay/transaction/HistoryFilter$CustomPeriodFilterItem;Landroid/view/View;)V
    .locals 6

    .line 1
    new-instance p2, Landroid/app/DatePickerDialog;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {p1}, Lteam/opay/pay/transaction/HistoryFilter$CustomPeriodFilterItem;->g()Landroid/app/DatePickerDialog$OnDateSetListener;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    invoke-static {}, Lteam/opay/pay/transaction/HistoryFilter;->e()Ljava/util/Calendar;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    const/4 p1, 0x1

    .line 16
    invoke-virtual {p0, p1}, Ljava/util/Calendar;->get(I)I

    .line 17
    .line 18
    .line 19
    move-result v3

    .line 20
    invoke-static {}, Lteam/opay/pay/transaction/HistoryFilter;->e()Ljava/util/Calendar;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    const/4 p1, 0x2

    .line 25
    invoke-virtual {p0, p1}, Ljava/util/Calendar;->get(I)I

    .line 26
    .line 27
    .line 28
    move-result v4

    .line 29
    invoke-static {}, Lteam/opay/pay/transaction/HistoryFilter;->e()Ljava/util/Calendar;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    const/4 p1, 0x5

    .line 34
    invoke-virtual {p0, p1}, Ljava/util/Calendar;->get(I)I

    .line 35
    .line 36
    .line 37
    move-result v5

    .line 38
    move-object v0, p2

    .line 39
    invoke-direct/range {v0 .. v5}, Landroid/app/DatePickerDialog;-><init>(Landroid/content/Context;Landroid/app/DatePickerDialog$OnDateSetListener;III)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {p2}, Landroid/app/DatePickerDialog;->getDatePicker()Landroid/widget/DatePicker;

    .line 43
    .line 44
    .line 45
    move-result-object p0

    .line 46
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 47
    .line 48
    .line 49
    move-result-wide v0

    .line 50
    invoke-virtual {p0, v0, v1}, Landroid/widget/DatePicker;->setMaxDate(J)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {p2}, Landroid/app/Dialog;->show()V

    .line 54
    .line 55
    .line 56
    return-void
.end method

.method public static final q(Lteam/opay/pay/transaction/HistoryFilter$CategoryFilterItem;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lteam/opay/pay/transaction/HistoryFilter$FilterItem;->a()Lkotlin/jvm/functions/Function0;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final g(Lteam/opay/pay/transaction/HistoryFilter$CategoryFilterItem;)V
    .locals 4
    .param p1    # Lteam/opay/pay/transaction/HistoryFilter$CategoryFilterItem;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "UseCompatLoadingForDrawables"
        }
    .end annotation

    .line 1
    const-string v0, "item"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 7
    .line 8
    sget v1, Lteam/opay/pay/R$id;->category_filter_item_text:I

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    check-cast v1, Landroid/widget/TextView;

    .line 15
    .line 16
    invoke-virtual {p1}, Lteam/opay/pay/transaction/HistoryFilter$CategoryFilterItem;->d()Z

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setSelected(Z)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {p1}, Lteam/opay/pay/transaction/HistoryFilter$CategoryFilterItem;->c()Lteam/opay/pay/transaction/FilterTypeInfo;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    invoke-virtual {v2}, Lteam/opay/pay/transaction/FilterTypeInfo;->b()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 35
    .line 36
    .line 37
    move-result-object v2

    .line 38
    invoke-virtual {p1}, Lteam/opay/pay/transaction/HistoryFilter$CategoryFilterItem;->d()Z

    .line 39
    .line 40
    .line 41
    move-result v3

    .line 42
    if-eqz v3, :cond_0

    .line 43
    .line 44
    sget v3, Lteam/opay/pay/R$color;->mint:I

    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_0
    sget v3, Lteam/opay/pay/R$color;->blue_grey_41:I

    .line 48
    .line 49
    :goto_0
    invoke-static {v2, v3}, Lzq2;->getColor(Landroid/content/Context;I)I

    .line 50
    .line 51
    .line 52
    move-result v2

    .line 53
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 54
    .line 55
    .line 56
    new-instance v1, Lteam/opay/pay/transaction/b;

    .line 57
    .line 58
    invoke-direct {v1, p1}, Lteam/opay/pay/transaction/b;-><init>(Lteam/opay/pay/transaction/HistoryFilter$CategoryFilterItem;)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 62
    .line 63
    .line 64
    return-void
.end method

.method public final h(Lteam/opay/pay/transaction/HistoryFilter$CustomPeriodFilterItem;)V
    .locals 8
    .param p1    # Lteam/opay/pay/transaction/HistoryFilter$CustomPeriodFilterItem;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "item"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 7
    .line 8
    sget v1, Lteam/opay/pay/R$id;->tv_tips:I

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    check-cast v1, Landroid/widget/TextView;

    .line 15
    .line 16
    const/4 v2, 0x0

    .line 17
    if-eqz v1, :cond_1

    .line 18
    .line 19
    sget-object v3, Lteam/opay/pay/util/TransferBIllsQueryMaxTimeConfig;->Companion:Lteam/opay/pay/util/TransferBIllsQueryMaxTimeConfig$Companion;

    .line 20
    .line 21
    invoke-virtual {v3}, Lteam/opay/pay/util/TransferBIllsQueryMaxTimeConfig$Companion;->a()Lteam/opay/pay/util/TransferBIllsQueryMaxTimeConfig;

    .line 22
    .line 23
    .line 24
    move-result-object v3

    .line 25
    if-eqz v3, :cond_0

    .line 26
    .line 27
    invoke-virtual {v3}, Lteam/opay/pay/util/TransferBIllsQueryMaxTimeConfig;->getTips()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v3

    .line 31
    goto :goto_0

    .line 32
    :cond_0
    move-object v3, v2

    .line 33
    :goto_0
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 34
    .line 35
    .line 36
    :cond_1
    sget v1, Lteam/opay/pay/R$id;->wallet_filter_period_filter_button:I

    .line 37
    .line 38
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    new-instance v3, Lteam/opay/pay/transaction/c;

    .line 43
    .line 44
    invoke-direct {v3, p1}, Lteam/opay/pay/transaction/c;-><init>(Lteam/opay/pay/transaction/HistoryFilter$CustomPeriodFilterItem;)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {v1, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 48
    .line 49
    .line 50
    sget v1, Lteam/opay/pay/R$id;->wallet_filter_period_reset_button:I

    .line 51
    .line 52
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 53
    .line 54
    .line 55
    move-result-object v1

    .line 56
    new-instance v3, Lteam/opay/pay/transaction/d;

    .line 57
    .line 58
    invoke-direct {v3, p1}, Lteam/opay/pay/transaction/d;-><init>(Lteam/opay/pay/transaction/HistoryFilter$CustomPeriodFilterItem;)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {v1, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 62
    .line 63
    .line 64
    sget v1, Lteam/opay/pay/R$id;->wallet_filter_period_start_date:I

    .line 65
    .line 66
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 67
    .line 68
    .line 69
    move-result-object v1

    .line 70
    sget v3, Lteam/opay/pay/R$id;->wallet_filter_period_item_text:I

    .line 71
    .line 72
    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 73
    .line 74
    .line 75
    move-result-object v4

    .line 76
    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 77
    .line 78
    .line 79
    move-result-object v5

    .line 80
    check-cast v5, Landroid/widget/TextView;

    .line 81
    .line 82
    invoke-virtual {p1}, Lteam/opay/pay/transaction/HistoryFilter$CustomPeriodFilterItem;->f()Ljava/util/Date;

    .line 83
    .line 84
    .line 85
    move-result-object v6

    .line 86
    if-eqz v6, :cond_3

    .line 87
    .line 88
    invoke-virtual {p1}, Lteam/opay/pay/transaction/HistoryFilter$CustomPeriodFilterItem;->f()Ljava/util/Date;

    .line 89
    .line 90
    .line 91
    move-result-object v6

    .line 92
    if-eqz v6, :cond_2

    .line 93
    .line 94
    invoke-static {v6}, Le1f;->f(Ljava/util/Date;)Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object v6

    .line 98
    goto :goto_1

    .line 99
    :cond_2
    move-object v6, v2

    .line 100
    goto :goto_1

    .line 101
    :cond_3
    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 102
    .line 103
    .line 104
    move-result-object v6

    .line 105
    sget v7, Lteam/opay/pay/R$string;->wallet_filter_period_start_date_label:I

    .line 106
    .line 107
    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    .line 108
    .line 109
    .line 110
    move-result-object v6

    .line 111
    :goto_1
    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 112
    .line 113
    .line 114
    invoke-virtual {v4, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 115
    .line 116
    .line 117
    move-result-object v3

    .line 118
    check-cast v3, Landroid/widget/TextView;

    .line 119
    .line 120
    invoke-virtual {p1}, Lteam/opay/pay/transaction/HistoryFilter$CustomPeriodFilterItem;->c()Ljava/util/Date;

    .line 121
    .line 122
    .line 123
    move-result-object v5

    .line 124
    if-eqz v5, :cond_4

    .line 125
    .line 126
    invoke-virtual {p1}, Lteam/opay/pay/transaction/HistoryFilter$CustomPeriodFilterItem;->c()Ljava/util/Date;

    .line 127
    .line 128
    .line 129
    move-result-object v5

    .line 130
    if-eqz v5, :cond_5

    .line 131
    .line 132
    invoke-static {v5}, Le1f;->f(Ljava/util/Date;)Ljava/lang/String;

    .line 133
    .line 134
    .line 135
    move-result-object v2

    .line 136
    goto :goto_2

    .line 137
    :cond_4
    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 138
    .line 139
    .line 140
    move-result-object v2

    .line 141
    sget v5, Lteam/opay/pay/R$string;->wallet_filter_period_end_date_label:I

    .line 142
    .line 143
    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    .line 144
    .line 145
    .line 146
    move-result-object v2

    .line 147
    :cond_5
    :goto_2
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 148
    .line 149
    .line 150
    invoke-virtual {p1}, Lteam/opay/pay/transaction/HistoryFilter$CustomPeriodFilterItem;->f()Ljava/util/Date;

    .line 151
    .line 152
    .line 153
    move-result-object v2

    .line 154
    if-eqz v2, :cond_6

    .line 155
    .line 156
    sget v2, Lteam/opay/pay/R$id;->wallet_filter_period_calendar_button:I

    .line 157
    .line 158
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 159
    .line 160
    .line 161
    move-result-object v2

    .line 162
    check-cast v2, Landroid/widget/ImageView;

    .line 163
    .line 164
    iget-object v3, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 165
    .line 166
    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 167
    .line 168
    .line 169
    move-result-object v3

    .line 170
    sget v5, Lteam/opay/pay/R$color;->mint:I

    .line 171
    .line 172
    invoke-static {v3, v5}, Lzq2;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    .line 173
    .line 174
    .line 175
    move-result-object v3

    .line 176
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;)V

    .line 177
    .line 178
    .line 179
    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 180
    .line 181
    .line 182
    :cond_6
    invoke-virtual {p1}, Lteam/opay/pay/transaction/HistoryFilter$CustomPeriodFilterItem;->c()Ljava/util/Date;

    .line 183
    .line 184
    .line 185
    move-result-object v2

    .line 186
    if-eqz v2, :cond_7

    .line 187
    .line 188
    sget v2, Lteam/opay/pay/R$id;->wallet_filter_period_calendar_button:I

    .line 189
    .line 190
    invoke-virtual {v4, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 191
    .line 192
    .line 193
    move-result-object v2

    .line 194
    check-cast v2, Landroid/widget/ImageView;

    .line 195
    .line 196
    iget-object v3, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 197
    .line 198
    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 199
    .line 200
    .line 201
    move-result-object v3

    .line 202
    sget v5, Lteam/opay/pay/R$color;->mint:I

    .line 203
    .line 204
    invoke-static {v3, v5}, Lzq2;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    .line 205
    .line 206
    .line 207
    move-result-object v3

    .line 208
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;)V

    .line 209
    .line 210
    .line 211
    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 212
    .line 213
    .line 214
    :cond_7
    new-instance v2, Lteam/opay/pay/transaction/e;

    .line 215
    .line 216
    invoke-direct {v2, v0, p1}, Lteam/opay/pay/transaction/e;-><init>(Landroid/view/View;Lteam/opay/pay/transaction/HistoryFilter$CustomPeriodFilterItem;)V

    .line 217
    .line 218
    .line 219
    new-instance v3, Lteam/opay/pay/transaction/f;

    .line 220
    .line 221
    invoke-direct {v3, v0, p1}, Lteam/opay/pay/transaction/f;-><init>(Landroid/view/View;Lteam/opay/pay/transaction/HistoryFilter$CustomPeriodFilterItem;)V

    .line 222
    .line 223
    .line 224
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 225
    .line 226
    .line 227
    invoke-virtual {v4, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 228
    .line 229
    .line 230
    return-void
.end method

.method public final i(Lteam/opay/pay/transaction/HistoryFilter$FilterItem;)V
    .locals 2
    .param p1    # Lteam/opay/pay/transaction/HistoryFilter$FilterItem;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "item"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    instance-of v0, p1, Lteam/opay/pay/transaction/HistoryFilter$CategoryFilterItem;

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    check-cast p1, Lteam/opay/pay/transaction/HistoryFilter$CategoryFilterItem;

    .line 11
    .line 12
    invoke-virtual {p0, p1}, Lteam/opay/pay/transaction/HistoryFilter$FilterViewHolder;->g(Lteam/opay/pay/transaction/HistoryFilter$CategoryFilterItem;)V

    .line 13
    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    instance-of v0, p1, Lteam/opay/pay/transaction/HistoryFilter$PeriodFilterItem;

    .line 17
    .line 18
    if-eqz v0, :cond_1

    .line 19
    .line 20
    check-cast p1, Lteam/opay/pay/transaction/HistoryFilter$PeriodFilterItem;

    .line 21
    .line 22
    invoke-virtual {p0, p1}, Lteam/opay/pay/transaction/HistoryFilter$FilterViewHolder;->j(Lteam/opay/pay/transaction/HistoryFilter$PeriodFilterItem;)V

    .line 23
    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_1
    instance-of v0, p1, Lteam/opay/pay/transaction/HistoryFilter$StatusFilterItem;

    .line 27
    .line 28
    if-eqz v0, :cond_2

    .line 29
    .line 30
    check-cast p1, Lteam/opay/pay/transaction/HistoryFilter$StatusFilterItem;

    .line 31
    .line 32
    invoke-virtual {p0, p1}, Lteam/opay/pay/transaction/HistoryFilter$FilterViewHolder;->k(Lteam/opay/pay/transaction/HistoryFilter$StatusFilterItem;)V

    .line 33
    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_2
    instance-of v0, p1, Lteam/opay/pay/transaction/HistoryFilter$CustomPeriodFilterItem;

    .line 37
    .line 38
    if-eqz v0, :cond_3

    .line 39
    .line 40
    check-cast p1, Lteam/opay/pay/transaction/HistoryFilter$CustomPeriodFilterItem;

    .line 41
    .line 42
    invoke-virtual {p0, p1}, Lteam/opay/pay/transaction/HistoryFilter$FilterViewHolder;->h(Lteam/opay/pay/transaction/HistoryFilter$CustomPeriodFilterItem;)V

    .line 43
    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    new-instance v0, Ljava/lang/StringBuilder;

    .line 51
    .line 52
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 53
    .line 54
    .line 55
    const-string v1, "Binding not implemented for filter class = "

    .line 56
    .line 57
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    sget-object v0, Lteam/opay/pay/envconfigapi/ConfigStorage;->f:Lteam/opay/pay/envconfigapi/ConfigStorage$Companion;

    .line 68
    .line 69
    invoke-virtual {v0}, Lteam/opay/pay/envconfigapi/ConfigStorage$Companion;->a()Lteam/opay/pay/envconfigapi/ConfigStorage;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    invoke-virtual {v0}, Lteam/opay/pay/envconfigapi/ConfigStorage;->i()Z

    .line 74
    .line 75
    .line 76
    move-result v0

    .line 77
    if-nez v0, :cond_4

    .line 78
    .line 79
    :goto_0
    return-void

    .line 80
    :cond_4
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 81
    .line 82
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object p1

    .line 86
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object p1

    .line 90
    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 91
    .line 92
    .line 93
    throw v0
.end method

.method public final j(Lteam/opay/pay/transaction/HistoryFilter$PeriodFilterItem;)V
    .locals 2
    .param p1    # Lteam/opay/pay/transaction/HistoryFilter$PeriodFilterItem;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "item"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, p1}, Lteam/opay/pay/transaction/HistoryFilter$FilterViewHolder;->k(Lteam/opay/pay/transaction/HistoryFilter$StatusFilterItem;)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p1}, Lteam/opay/pay/transaction/HistoryFilter$PeriodFilterItem;->f()Z

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 14
    .line 15
    const-string v1, "itemView"

    .line 16
    .line 17
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0, p1, v0}, Lteam/opay/pay/transaction/HistoryFilter$FilterViewHolder;->r(ZLandroid/view/View;)V

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method public final k(Lteam/opay/pay/transaction/HistoryFilter$StatusFilterItem;)V
    .locals 4
    .param p1    # Lteam/opay/pay/transaction/HistoryFilter$StatusFilterItem;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "item"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 7
    .line 8
    sget v1, Lteam/opay/pay/R$id;->wallet_filter_status_item_text:I

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    check-cast v1, Landroid/widget/TextView;

    .line 15
    .line 16
    invoke-virtual {p1}, Lteam/opay/pay/transaction/HistoryFilter$StatusFilterItem;->d()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {p1}, Lteam/opay/pay/transaction/HistoryFilter$StatusFilterItem;->e()Z

    .line 24
    .line 25
    .line 26
    move-result v2

    .line 27
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setSelected(Z)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    invoke-virtual {p1}, Lteam/opay/pay/transaction/HistoryFilter$StatusFilterItem;->e()Z

    .line 35
    .line 36
    .line 37
    move-result v3

    .line 38
    if-eqz v3, :cond_0

    .line 39
    .line 40
    sget v3, Lteam/opay/pay/R$color;->mint:I

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_0
    sget v3, Lteam/opay/pay/R$color;->blue_grey_41:I

    .line 44
    .line 45
    :goto_0
    invoke-static {v2, v3}, Lzq2;->getColor(Landroid/content/Context;I)I

    .line 46
    .line 47
    .line 48
    move-result v2

    .line 49
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {p1}, Lteam/opay/pay/transaction/HistoryFilter$StatusFilterItem;->c()Z

    .line 53
    .line 54
    .line 55
    move-result v2

    .line 56
    if-eqz v2, :cond_1

    .line 57
    .line 58
    const/4 v2, 0x0

    .line 59
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 60
    .line 61
    .line 62
    :cond_1
    new-instance v1, Lteam/opay/pay/transaction/a;

    .line 63
    .line 64
    invoke-direct {v1, p1}, Lteam/opay/pay/transaction/a;-><init>(Lteam/opay/pay/transaction/HistoryFilter$StatusFilterItem;)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 68
    .line 69
    .line 70
    return-void
.end method

.method public final r(ZLandroid/view/View;)V
    .locals 5

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    invoke-virtual {p2}, Landroid/view/View;->getPaddingLeft()I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    invoke-virtual {p2}, Landroid/view/View;->getPaddingTop()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    invoke-virtual {p2}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    sget v2, Lteam/opay/pay/R$dimen;->content_padding:I

    .line 16
    .line 17
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    add-int/2addr v0, v1

    .line 22
    invoke-virtual {p2}, Landroid/view/View;->getPaddingRight()I

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    invoke-virtual {p2}, Landroid/view/View;->getPaddingBottom()I

    .line 27
    .line 28
    .line 29
    move-result v2

    .line 30
    invoke-virtual {p2}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 31
    .line 32
    .line 33
    move-result-object v3

    .line 34
    sget v4, Lteam/opay/pay/R$dimen;->content_padding_small:I

    .line 35
    .line 36
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 37
    .line 38
    .line 39
    move-result v3

    .line 40
    add-int/2addr v2, v3

    .line 41
    invoke-virtual {p2, p1, v0, v1, v2}, Landroid/view/View;->setPadding(IIII)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    sget v0, Lteam/opay/pay/R$drawable;->wallet_filter_item_top_border:I

    .line 49
    .line 50
    invoke-static {p1, v0}, Lzq2;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    invoke-virtual {p2, p1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 55
    .line 56
    .line 57
    goto :goto_0

    .line 58
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getPaddingLeft()I

    .line 59
    .line 60
    .line 61
    move-result p1

    .line 62
    invoke-virtual {p2}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    sget v1, Lteam/opay/pay/R$dimen;->content_padding:I

    .line 67
    .line 68
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 69
    .line 70
    .line 71
    move-result v0

    .line 72
    invoke-virtual {p2}, Landroid/view/View;->getPaddingRight()I

    .line 73
    .line 74
    .line 75
    move-result v2

    .line 76
    invoke-virtual {p2}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 77
    .line 78
    .line 79
    move-result-object v3

    .line 80
    invoke-virtual {v3, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 81
    .line 82
    .line 83
    move-result v1

    .line 84
    invoke-virtual {p2, p1, v0, v2, v1}, Landroid/view/View;->setPadding(IIII)V

    .line 85
    .line 86
    .line 87
    const/4 p1, 0x0

    .line 88
    invoke-virtual {p2, p1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 89
    .line 90
    .line 91
    :goto_0
    return-void
.end method
