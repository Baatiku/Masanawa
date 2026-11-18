.class public final Lteam/opay/business/payroll/employee/EmployeeAdapter;
.super Landroidx/paging/PagingDataAdapter;
.source "EmployeeAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/paging/PagingDataAdapter<",
        "Lteam/opay/business/payroll/api/EmployeeInfo;",
        "Lteam/opay/core/common/internal/BindingViewHolder<",
        "Lflb;",
        ">;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000@\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u000e\n\u0002\u0008\n\u0008\u0000\u0018\u00002\u0014\u0012\u0004\u0012\u00020\u0002\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00040\u00030\u0001B\u0015\u0012\u000c\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u0005\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J*\u0010\u000e\u001a\r\u0012\t\u0012\u00070\u0004\u00a2\u0006\u0002\u0008\r0\u00032\u0006\u0010\n\u001a\u00020\t2\u0006\u0010\u000c\u001a\u00020\u000bH\u0016\u00a2\u0006\u0004\u0008\u000e\u0010\u000fJ%\u0010\u0013\u001a\u00020\u00122\u000c\u0010\u0010\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u00032\u0006\u0010\u0011\u001a\u00020\u000bH\u0016\u00a2\u0006\u0004\u0008\u0013\u0010\u0014R\u001a\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u00058\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0015\u0010\u0016R(\u0010 \u001a\u00020\u00178\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0018\n\u0004\u0008\u0018\u0010\u0019\u0012\u0004\u0008\u001e\u0010\u001f\u001a\u0004\u0008\u001a\u0010\u001b\"\u0004\u0008\u001c\u0010\u001d\u00a8\u0006!"
    }
    d2 = {
        "Lteam/opay/business/payroll/employee/EmployeeAdapter;",
        "Landroidx/paging/PagingDataAdapter;",
        "Lteam/opay/business/payroll/api/EmployeeInfo;",
        "Lteam/opay/core/common/internal/BindingViewHolder;",
        "Lflb;",
        "Lteam/opay/core/common/android/event/CallbackWrapper;",
        "onItemClick",
        "<init>",
        "(Lteam/opay/core/common/android/event/CallbackWrapper;)V",
        "Landroid/view/ViewGroup;",
        "parent",
        "",
        "viewType",
        "Lkotlin/jvm/internal/EnhancedNullability;",
        "w",
        "(Landroid/view/ViewGroup;I)Lteam/opay/core/common/internal/BindingViewHolder;",
        "holder",
        "position",
        "",
        "u",
        "(Lteam/opay/core/common/internal/BindingViewHolder;I)V",
        "e",
        "Lteam/opay/core/common/android/event/CallbackWrapper;",
        "",
        "f",
        "Ljava/lang/String;",
        "getPageFrom",
        "()Ljava/lang/String;",
        "x",
        "(Ljava/lang/String;)V",
        "getPageFrom$annotations",
        "()V",
        "pageFrom",
        "business-payroll_release"
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
.field public final e:Lteam/opay/core/common/android/event/CallbackWrapper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lteam/opay/core/common/android/event/CallbackWrapper<",
            "Lteam/opay/business/payroll/api/EmployeeInfo;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public f:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lteam/opay/core/common/android/event/CallbackWrapper;)V
    .locals 7
    .param p1    # Lteam/opay/core/common/android/event/CallbackWrapper;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lteam/opay/core/common/android/event/CallbackWrapper<",
            "Lteam/opay/business/payroll/api/EmployeeInfo;",
            ">;)V"
        }
    .end annotation

    .line 1
    const-string v0, "onItemClick"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-static {}, Lvj5;->a()Landroidx/recyclerview/widget/DiffUtil$ItemCallback;

    .line 7
    .line 8
    .line 9
    move-result-object v2

    .line 10
    const/4 v5, 0x6

    .line 11
    const/4 v6, 0x0

    .line 12
    const/4 v3, 0x0

    .line 13
    const/4 v4, 0x0

    .line 14
    move-object v1, p0

    .line 15
    invoke-direct/range {v1 .. v6}, Landroidx/paging/PagingDataAdapter;-><init>(Landroidx/recyclerview/widget/DiffUtil$ItemCallback;Lkotlinx/coroutines/CoroutineDispatcher;Lkotlinx/coroutines/CoroutineDispatcher;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 16
    .line 17
    .line 18
    iput-object p1, p0, Lteam/opay/business/payroll/employee/EmployeeAdapter;->e:Lteam/opay/core/common/android/event/CallbackWrapper;

    .line 19
    .line 20
    const-string p1, "1"

    .line 21
    .line 22
    iput-object p1, p0, Lteam/opay/business/payroll/employee/EmployeeAdapter;->f:Ljava/lang/String;

    .line 23
    .line 24
    return-void
.end method

.method public static synthetic t(Lteam/opay/business/payroll/employee/EmployeeAdapter;Lteam/opay/business/payroll/api/EmployeeInfo;Lteam/opay/core/common/internal/BindingViewHolder;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lteam/opay/business/payroll/employee/EmployeeAdapter;->v(Lteam/opay/business/payroll/employee/EmployeeAdapter;Lteam/opay/business/payroll/api/EmployeeInfo;Lteam/opay/core/common/internal/BindingViewHolder;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final v(Lteam/opay/business/payroll/employee/EmployeeAdapter;Lteam/opay/business/payroll/api/EmployeeInfo;Lteam/opay/core/common/internal/BindingViewHolder;)Lkotlin/Unit;
    .locals 2

    .line 1
    iget-object v0, p0, Lteam/opay/business/payroll/employee/EmployeeAdapter;->e:Lteam/opay/core/common/android/event/CallbackWrapper;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lteam/opay/core/common/android/event/CallbackWrapper;->a(Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    sget-object p1, Lteam/opay/core/common/spi/a;->b:Lteam/opay/core/common/spi/a;

    .line 7
    .line 8
    iget-object p2, p2, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 9
    .line 10
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 11
    .line 12
    .line 13
    move-result-object p2

    .line 14
    const-string v0, "getContext(...)"

    .line 15
    .line 16
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    const-string v0, "pageFrom"

    .line 20
    .line 21
    iget-object p0, p0, Lteam/opay/business/payroll/employee/EmployeeAdapter;->f:Ljava/lang/String;

    .line 22
    .line 23
    invoke-static {v0, p0}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    const/4 v0, 0x1

    .line 28
    new-array v0, v0, [Lkotlin/Pair;

    .line 29
    .line 30
    const/4 v1, 0x0

    .line 31
    aput-object p0, v0, v1

    .line 32
    .line 33
    const-string p0, "payroll_employee_list_click"

    .line 34
    .line 35
    invoke-virtual {p1, p2, p0, v0}, Lteam/opay/core/common/spi/a;->a(Landroid/content/Context;Ljava/lang/String;[Lkotlin/Pair;)V

    .line 36
    .line 37
    .line 38
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 39
    .line 40
    return-object p0
.end method


# virtual methods
.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 1
    check-cast p1, Lteam/opay/core/common/internal/BindingViewHolder;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lteam/opay/business/payroll/employee/EmployeeAdapter;->u(Lteam/opay/core/common/internal/BindingViewHolder;I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lteam/opay/business/payroll/employee/EmployeeAdapter;->w(Landroid/view/ViewGroup;I)Lteam/opay/core/common/internal/BindingViewHolder;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public u(Lteam/opay/core/common/internal/BindingViewHolder;I)V
    .locals 8
    .param p1    # Lteam/opay/core/common/internal/BindingViewHolder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lteam/opay/core/common/internal/BindingViewHolder<",
            "Lflb;",
            ">;I)V"
        }
    .end annotation

    .line 1
    const-string v0, "holder"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, p2}, Landroidx/paging/PagingDataAdapter;->getItem(I)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object p2

    .line 10
    check-cast p2, Lteam/opay/business/payroll/api/EmployeeInfo;

    .line 11
    .line 12
    if-nez p2, :cond_0

    .line 13
    .line 14
    return-void

    .line 15
    :cond_0
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 16
    .line 17
    const-string v1, "itemView"

    .line 18
    .line 19
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    new-instance v1, Luj5;

    .line 23
    .line 24
    invoke-direct {v1, p0, p2, p1}, Luj5;-><init>(Lteam/opay/business/payroll/employee/EmployeeAdapter;Lteam/opay/business/payroll/api/EmployeeInfo;Lteam/opay/core/common/internal/BindingViewHolder;)V

    .line 25
    .line 26
    .line 27
    invoke-static {v0, v1}, Lde1;->a(Landroid/view/View;Lkotlin/jvm/functions/Function0;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {p1}, Lteam/opay/core/common/internal/BindingViewHolder;->a()Lxyf;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    check-cast p1, Lflb;

    .line 35
    .line 36
    iget-object v0, p1, Lflb;->c:Landroidx/appcompat/widget/AppCompatTextView;

    .line 37
    .line 38
    invoke-virtual {p2}, Lteam/opay/business/payroll/api/EmployeeInfo;->getFullName()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    const-string v2, ""

    .line 43
    .line 44
    if-nez v1, :cond_1

    .line 45
    .line 46
    move-object v1, v2

    .line 47
    :cond_1
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {p2}, Lteam/opay/business/payroll/api/EmployeeInfo;->getPayrollBankcard()Lteam/opay/business/payroll/api/PayrollBankInfo;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    const/4 v1, 0x1

    .line 55
    const-string v3, "itemHead"

    .line 56
    .line 57
    const/4 v4, 0x0

    .line 58
    const-string v5, "bankIcon"

    .line 59
    .line 60
    if-nez v0, :cond_4

    .line 61
    .line 62
    iget-object v0, p1, Lflb;->g:Landroidx/appcompat/widget/AppCompatTextView;

    .line 63
    .line 64
    invoke-virtual {p1}, Lflb;->a()Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 65
    .line 66
    .line 67
    move-result-object v6

    .line 68
    invoke-virtual {v6}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 69
    .line 70
    .line 71
    move-result-object v6

    .line 72
    sget v7, Lteam/opay/business/payroll/R$string;->payroll_no_payroll_tip:I

    .line 73
    .line 74
    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v6

    .line 78
    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 79
    .line 80
    .line 81
    iget-object v0, p1, Lflb;->f:Lteam/opay/core/widget/fillet/CorpTextView;

    .line 82
    .line 83
    invoke-virtual {p2}, Lteam/opay/business/payroll/api/EmployeeInfo;->getFullName()Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object p2

    .line 87
    if-eqz p2, :cond_2

    .line 88
    .line 89
    invoke-static {p2}, Lkotlin/text/StringsKt;->z1(Ljava/lang/CharSequence;)Ljava/lang/Character;

    .line 90
    .line 91
    .line 92
    move-result-object p2

    .line 93
    if-eqz p2, :cond_2

    .line 94
    .line 95
    invoke-virtual {p2}, Ljava/lang/Character;->charValue()C

    .line 96
    .line 97
    .line 98
    move-result p2

    .line 99
    invoke-static {p2}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object p2

    .line 103
    const-string v4, "null cannot be cast to non-null type java.lang.String"

    .line 104
    .line 105
    invoke-static {p2, v4}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 106
    .line 107
    .line 108
    sget-object v4, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 109
    .line 110
    invoke-virtual {p2, v4}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object v4

    .line 114
    const-string p2, "toUpperCase(...)"

    .line 115
    .line 116
    invoke-static {v4, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 117
    .line 118
    .line 119
    :cond_2
    if-nez v4, :cond_3

    .line 120
    .line 121
    goto :goto_0

    .line 122
    :cond_3
    move-object v2, v4

    .line 123
    :goto_0
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 124
    .line 125
    .line 126
    iget-object p2, p1, Lflb;->f:Lteam/opay/core/widget/fillet/CorpTextView;

    .line 127
    .line 128
    invoke-static {p2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 129
    .line 130
    .line 131
    invoke-static {p2}, Lg0g;->h(Landroid/view/View;)V

    .line 132
    .line 133
    .line 134
    iget-object p1, p1, Lflb;->b:Landroidx/appcompat/widget/AppCompatImageView;

    .line 135
    .line 136
    invoke-static {p1, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 137
    .line 138
    .line 139
    invoke-static {p1, v1}, Lg0g;->f(Landroid/view/View;Z)V

    .line 140
    .line 141
    .line 142
    goto :goto_2

    .line 143
    :cond_4
    invoke-virtual {p2}, Lteam/opay/business/payroll/api/EmployeeInfo;->getPayrollBankcard()Lteam/opay/business/payroll/api/PayrollBankInfo;

    .line 144
    .line 145
    .line 146
    move-result-object v0

    .line 147
    invoke-virtual {v0}, Lteam/opay/business/payroll/api/PayrollBankInfo;->getBankName()Ljava/lang/String;

    .line 148
    .line 149
    .line 150
    move-result-object v0

    .line 151
    if-nez v0, :cond_5

    .line 152
    .line 153
    move-object v0, v2

    .line 154
    :cond_5
    invoke-virtual {p2}, Lteam/opay/business/payroll/api/EmployeeInfo;->getPayrollBankcard()Lteam/opay/business/payroll/api/PayrollBankInfo;

    .line 155
    .line 156
    .line 157
    move-result-object v6

    .line 158
    invoke-virtual {v6}, Lteam/opay/business/payroll/api/PayrollBankInfo;->getCardNumber()Ljava/lang/String;

    .line 159
    .line 160
    .line 161
    move-result-object v6

    .line 162
    if-eqz v6, :cond_6

    .line 163
    .line 164
    const/4 v4, 0x4

    .line 165
    invoke-static {v6, v4}, Lkotlin/text/StringsKt;->F1(Ljava/lang/String;I)Ljava/lang/String;

    .line 166
    .line 167
    .line 168
    move-result-object v4

    .line 169
    :cond_6
    if-nez v4, :cond_7

    .line 170
    .line 171
    goto :goto_1

    .line 172
    :cond_7
    move-object v2, v4

    .line 173
    :goto_1
    new-instance v4, Ljava/lang/StringBuilder;

    .line 174
    .line 175
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 176
    .line 177
    .line 178
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 179
    .line 180
    .line 181
    const-string v0, "("

    .line 182
    .line 183
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 184
    .line 185
    .line 186
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 187
    .line 188
    .line 189
    const-string v0, ")"

    .line 190
    .line 191
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 192
    .line 193
    .line 194
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 195
    .line 196
    .line 197
    move-result-object v0

    .line 198
    iget-object v2, p1, Lflb;->g:Landroidx/appcompat/widget/AppCompatTextView;

    .line 199
    .line 200
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 201
    .line 202
    .line 203
    invoke-virtual {p2}, Lteam/opay/business/payroll/api/EmployeeInfo;->getPayrollBankcard()Lteam/opay/business/payroll/api/PayrollBankInfo;

    .line 204
    .line 205
    .line 206
    move-result-object v0

    .line 207
    invoke-virtual {v0}, Lteam/opay/business/payroll/api/PayrollBankInfo;->getServiceType()Ljava/lang/String;

    .line 208
    .line 209
    .line 210
    move-result-object v0

    .line 211
    invoke-static {v0}, Lzi0;->a(Ljava/lang/String;)I

    .line 212
    .line 213
    .line 214
    move-result v0

    .line 215
    iget-object v2, p1, Lflb;->b:Landroidx/appcompat/widget/AppCompatImageView;

    .line 216
    .line 217
    invoke-static {v2, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 218
    .line 219
    .line 220
    invoke-virtual {p2}, Lteam/opay/business/payroll/api/EmployeeInfo;->getPayrollBankcard()Lteam/opay/business/payroll/api/PayrollBankInfo;

    .line 221
    .line 222
    .line 223
    move-result-object p2

    .line 224
    invoke-virtual {p2}, Lteam/opay/business/payroll/api/PayrollBankInfo;->getBankIconUrl()Ljava/lang/String;

    .line 225
    .line 226
    .line 227
    move-result-object p2

    .line 228
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 229
    .line 230
    .line 231
    move-result-object v0

    .line 232
    invoke-static {v2, p2, v0}, Lle7;->a(Landroid/widget/ImageView;Ljava/lang/String;Ljava/lang/Integer;)V

    .line 233
    .line 234
    .line 235
    iget-object p2, p1, Lflb;->b:Landroidx/appcompat/widget/AppCompatImageView;

    .line 236
    .line 237
    invoke-static {p2, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 238
    .line 239
    .line 240
    invoke-static {p2}, Lg0g;->h(Landroid/view/View;)V

    .line 241
    .line 242
    .line 243
    iget-object p1, p1, Lflb;->f:Lteam/opay/core/widget/fillet/CorpTextView;

    .line 244
    .line 245
    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 246
    .line 247
    .line 248
    invoke-static {p1, v1}, Lg0g;->f(Landroid/view/View;Z)V

    .line 249
    .line 250
    .line 251
    :goto_2
    return-void
.end method

.method public w(Landroid/view/ViewGroup;I)Lteam/opay/core/common/internal/BindingViewHolder;
    .locals 2
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "I)",
            "Lteam/opay/core/common/internal/BindingViewHolder<",
            "Lflb;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string p2, "parent"

    .line 2
    .line 3
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance p2, Lteam/opay/core/common/internal/BindingViewHolder;

    .line 7
    .line 8
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    const/4 v1, 0x0

    .line 17
    invoke-static {v0, p1, v1}, Lflb;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lflb;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    const-string v0, "inflate(...)"

    .line 22
    .line 23
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    invoke-direct {p2, p1}, Lteam/opay/core/common/internal/BindingViewHolder;-><init>(Lxyf;)V

    .line 27
    .line 28
    .line 29
    return-object p2
.end method

.method public final x(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "<set-?>"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lteam/opay/business/payroll/employee/EmployeeAdapter;->f:Ljava/lang/String;

    .line 7
    .line 8
    return-void
.end method
