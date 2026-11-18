.class public final Lcom/opay/team/newhome/adapter/FinLoanPagerAdapter;
.super Lcom/opay/team/newhome/base/BindingAdapter;
.source "FinLoanPagerAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/opay/team/newhome/adapter/FinLoanPagerAdapter$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/opay/team/newhome/base/BindingAdapter<",
        "Lcom/opay/team/newhome/bean/FinanceDetailData;",
        "Laja;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\n\u0018\u0000 !2\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001:\u0001\"B\u000f\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\u001f\u0010\u000c\u001a\u00020\u00032\u0006\u0010\t\u001a\u00020\u00082\u0006\u0010\u000b\u001a\u00020\nH\u0016\u00a2\u0006\u0004\u0008\u000c\u0010\rJ)\u0010\u0013\u001a\u00020\u00122\u0006\u0010\u000e\u001a\u00020\u00032\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u00022\u0006\u0010\u0011\u001a\u00020\u0010H\u0017\u00a2\u0006\u0004\u0008\u0013\u0010\u0014R\u0017\u0010\u0005\u001a\u00020\u00048\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0015\u0010\u0016\u001a\u0004\u0008\u0017\u0010\u0018R0\u0010 \u001a\u0010\u0012\u0006\u0012\u0004\u0018\u00010\u0002\u0012\u0004\u0012\u00020\u00120\u00198\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u001a\u0010\u001b\u001a\u0004\u0008\u001c\u0010\u001d\"\u0004\u0008\u001e\u0010\u001f\u00a8\u0006#"
    }
    d2 = {
        "Lcom/opay/team/newhome/adapter/FinLoanPagerAdapter;",
        "Lcom/opay/team/newhome/base/BindingAdapter;",
        "Lcom/opay/team/newhome/bean/FinanceDetailData;",
        "Laja;",
        "Landroid/app/Activity;",
        "activity",
        "<init>",
        "(Landroid/app/Activity;)V",
        "Landroid/view/LayoutInflater;",
        "inflater",
        "Landroid/view/ViewGroup;",
        "parent",
        "t",
        "(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Laja;",
        "binding",
        "data",
        "",
        "position",
        "",
        "q",
        "(Laja;Lcom/opay/team/newhome/bean/FinanceDetailData;I)V",
        "b",
        "Landroid/app/Activity;",
        "getActivity",
        "()Landroid/app/Activity;",
        "Lkotlin/Function1;",
        "c",
        "Lkotlin/jvm/functions/Function1;",
        "getItemClicked",
        "()Lkotlin/jvm/functions/Function1;",
        "u",
        "(Lkotlin/jvm/functions/Function1;)V",
        "itemClicked",
        "d",
        "Companion",
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


# static fields
.field public static final d:Lcom/opay/team/newhome/adapter/FinLoanPagerAdapter$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final e:Ljava/lang/String;


# instance fields
.field public final b:Landroid/app/Activity;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public c:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/opay/team/newhome/bean/FinanceDetailData;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/opay/team/newhome/adapter/FinLoanPagerAdapter$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/opay/team/newhome/adapter/FinLoanPagerAdapter$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/opay/team/newhome/adapter/FinLoanPagerAdapter;->d:Lcom/opay/team/newhome/adapter/FinLoanPagerAdapter$Companion;

    .line 8
    .line 9
    const-class v0, Lcom/opay/team/newhome/adapter/FinLoanPagerAdapter;

    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    sput-object v0, Lcom/opay/team/newhome/adapter/FinLoanPagerAdapter;->e:Ljava/lang/String;

    .line 16
    .line 17
    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1
    .param p1    # Landroid/app/Activity;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "activity"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Lcom/opay/team/newhome/base/BindingAdapter;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Lcom/opay/team/newhome/adapter/FinLoanPagerAdapter;->b:Landroid/app/Activity;

    .line 10
    .line 11
    new-instance p1, Li06;

    .line 12
    .line 13
    invoke-direct {p1}, Li06;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object p1, p0, Lcom/opay/team/newhome/adapter/FinLoanPagerAdapter;->c:Lkotlin/jvm/functions/Function1;

    .line 17
    .line 18
    return-void
.end method

.method public static synthetic o(Lcom/opay/team/newhome/adapter/FinLoanPagerAdapter;Lcom/opay/team/newhome/bean/FinanceDetailData;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/opay/team/newhome/adapter/FinLoanPagerAdapter;->r(Lcom/opay/team/newhome/adapter/FinLoanPagerAdapter;Lcom/opay/team/newhome/bean/FinanceDetailData;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic p(Lcom/opay/team/newhome/bean/FinanceDetailData;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/opay/team/newhome/adapter/FinLoanPagerAdapter;->s(Lcom/opay/team/newhome/bean/FinanceDetailData;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final r(Lcom/opay/team/newhome/adapter/FinLoanPagerAdapter;Lcom/opay/team/newhome/bean/FinanceDetailData;)Lkotlin/Unit;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/opay/team/newhome/adapter/FinLoanPagerAdapter;->c:Lkotlin/jvm/functions/Function1;

    .line 2
    .line 3
    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 7
    .line 8
    return-object p0
.end method

.method public static final s(Lcom/opay/team/newhome/bean/FinanceDetailData;)Lkotlin/Unit;
    .locals 0

    .line 1
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 2
    .line 3
    return-object p0
.end method


# virtual methods
.method public bridge synthetic k(Lxyf;Ljava/lang/Object;I)V
    .locals 0

    .line 1
    check-cast p1, Laja;

    .line 2
    .line 3
    check-cast p2, Lcom/opay/team/newhome/bean/FinanceDetailData;

    .line 4
    .line 5
    invoke-virtual {p0, p1, p2, p3}, Lcom/opay/team/newhome/adapter/FinLoanPagerAdapter;->q(Laja;Lcom/opay/team/newhome/bean/FinanceDetailData;I)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public bridge synthetic m(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Lxyf;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/opay/team/newhome/adapter/FinLoanPagerAdapter;->t(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Laja;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public q(Laja;Lcom/opay/team/newhome/bean/FinanceDetailData;I)V
    .locals 7
    .param p1    # Laja;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/opay/team/newhome/bean/FinanceDetailData;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "UseCompatLoadingForDrawables"
        }
    .end annotation

    .line 1
    const-string v0, "binding"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object v0, Lcom/opay/team/newhome/adapter/FinLoanPagerAdapter;->e:Ljava/lang/String;

    .line 7
    .line 8
    const-string v1, "TAG"

    .line 9
    .line 10
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    new-instance v0, Ljava/lang/StringBuilder;

    .line 14
    .line 15
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 16
    .line 17
    .line 18
    const-string v2, "bind data "

    .line 19
    .line 20
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    const-string v2, " position = "

    .line 27
    .line 28
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {p1}, Laja;->a()Landroid/widget/FrameLayout;

    .line 35
    .line 36
    .line 37
    move-result-object p3

    .line 38
    invoke-virtual {p3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 39
    .line 40
    .line 41
    move-result-object p3

    .line 42
    invoke-virtual {p1}, Laja;->a()Landroid/widget/FrameLayout;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    const-string v2, "getContext(...)"

    .line 51
    .line 52
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    invoke-static {v0}, Lgmf;->d(Landroid/content/Context;)I

    .line 56
    .line 57
    .line 58
    move-result v0

    .line 59
    const/16 v2, 0x10

    .line 60
    .line 61
    invoke-static {v2}, Ljmf;->d(I)I

    .line 62
    .line 63
    .line 64
    move-result v2

    .line 65
    sub-int/2addr v0, v2

    .line 66
    div-int/lit8 v0, v0, 0x2

    .line 67
    .line 68
    iput v0, p3, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 69
    .line 70
    mul-int/lit16 v0, v0, 0xbb

    .line 71
    .line 72
    div-int/lit16 v0, v0, 0x9c

    .line 73
    .line 74
    iput v0, p3, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 75
    .line 76
    invoke-virtual {p1}, Laja;->a()Landroid/widget/FrameLayout;

    .line 77
    .line 78
    .line 79
    move-result-object v0

    .line 80
    invoke-virtual {v0, p3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 81
    .line 82
    .line 83
    invoke-virtual {p1}, Laja;->a()Landroid/widget/FrameLayout;

    .line 84
    .line 85
    .line 86
    move-result-object p3

    .line 87
    const-string v0, "getRoot(...)"

    .line 88
    .line 89
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 90
    .line 91
    .line 92
    new-instance v0, Lh06;

    .line 93
    .line 94
    invoke-direct {v0, p0, p2}, Lh06;-><init>(Lcom/opay/team/newhome/adapter/FinLoanPagerAdapter;Lcom/opay/team/newhome/bean/FinanceDetailData;)V

    .line 95
    .line 96
    .line 97
    invoke-static {p3, v0}, Lfe1;->b(Landroid/view/View;Lkotlin/jvm/functions/Function0;)V

    .line 98
    .line 99
    .line 100
    iget-object p3, p1, Laja;->g:Landroidx/appcompat/widget/AppCompatTextView;

    .line 101
    .line 102
    const/4 v0, 0x0

    .line 103
    const-string v2, ""

    .line 104
    .line 105
    if-eqz p3, :cond_2

    .line 106
    .line 107
    if-eqz p2, :cond_0

    .line 108
    .line 109
    invoke-virtual {p2}, Lcom/opay/team/newhome/bean/FinanceDetailData;->title()Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object v3

    .line 113
    if-eqz v3, :cond_0

    .line 114
    .line 115
    goto :goto_0

    .line 116
    :cond_0
    move-object v3, v2

    .line 117
    :goto_0
    invoke-virtual {p3, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 118
    .line 119
    .line 120
    sget-object v3, Lcom/opay/team/newhome/finance/FinanceUtil;->a:Lcom/opay/team/newhome/finance/FinanceUtil$Companion;

    .line 121
    .line 122
    iget-object v4, p0, Lcom/opay/team/newhome/adapter/FinLoanPagerAdapter;->b:Landroid/app/Activity;

    .line 123
    .line 124
    if-eqz p2, :cond_1

    .line 125
    .line 126
    invoke-virtual {p2}, Lcom/opay/team/newhome/bean/FinanceDetailData;->getLoanColor()Ljava/lang/String;

    .line 127
    .line 128
    .line 129
    move-result-object v5

    .line 130
    goto :goto_1

    .line 131
    :cond_1
    move-object v5, v0

    .line 132
    :goto_1
    sget v6, Lteam/opay/pay/R$color;->omain_finance_loan_txt_defalut:I

    .line 133
    .line 134
    invoke-virtual {v3, v4, v5, v6}, Lcom/opay/team/newhome/finance/FinanceUtil$Companion;->a(Landroid/content/Context;Ljava/lang/String;I)I

    .line 135
    .line 136
    .line 137
    move-result v3

    .line 138
    invoke-virtual {p3, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 139
    .line 140
    .line 141
    :cond_2
    iget-object p3, p1, Laja;->c:Landroidx/appcompat/widget/AppCompatTextView;

    .line 142
    .line 143
    if-eqz p3, :cond_4

    .line 144
    .line 145
    if-eqz p2, :cond_3

    .line 146
    .line 147
    invoke-virtual {p2}, Lcom/opay/team/newhome/bean/FinanceDetailData;->content()Ljava/lang/String;

    .line 148
    .line 149
    .line 150
    move-result-object v3

    .line 151
    if-eqz v3, :cond_3

    .line 152
    .line 153
    goto :goto_2

    .line 154
    :cond_3
    move-object v3, v2

    .line 155
    :goto_2
    invoke-virtual {p3, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 156
    .line 157
    .line 158
    :cond_4
    iget-object p3, p1, Laja;->f:Landroidx/appcompat/widget/AppCompatTextView;

    .line 159
    .line 160
    if-eqz p3, :cond_7

    .line 161
    .line 162
    if-eqz p2, :cond_5

    .line 163
    .line 164
    invoke-virtual {p2}, Lcom/opay/team/newhome/bean/FinanceDetailData;->getBank()Ljava/lang/String;

    .line 165
    .line 166
    .line 167
    move-result-object v3

    .line 168
    if-eqz v3, :cond_5

    .line 169
    .line 170
    goto :goto_3

    .line 171
    :cond_5
    move-object v3, v2

    .line 172
    :goto_3
    invoke-virtual {p3, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 173
    .line 174
    .line 175
    sget-object v3, Lcom/opay/team/newhome/finance/FinanceUtil;->a:Lcom/opay/team/newhome/finance/FinanceUtil$Companion;

    .line 176
    .line 177
    iget-object v4, p0, Lcom/opay/team/newhome/adapter/FinLoanPagerAdapter;->b:Landroid/app/Activity;

    .line 178
    .line 179
    if-eqz p2, :cond_6

    .line 180
    .line 181
    invoke-virtual {p2}, Lcom/opay/team/newhome/bean/FinanceDetailData;->getLoanColor()Ljava/lang/String;

    .line 182
    .line 183
    .line 184
    move-result-object v5

    .line 185
    goto :goto_4

    .line 186
    :cond_6
    move-object v5, v0

    .line 187
    :goto_4
    sget v6, Lteam/opay/pay/R$color;->omain_finance_loan_txt_defalut:I

    .line 188
    .line 189
    invoke-virtual {v3, v4, v5, v6}, Lcom/opay/team/newhome/finance/FinanceUtil$Companion;->a(Landroid/content/Context;Ljava/lang/String;I)I

    .line 190
    .line 191
    .line 192
    move-result v3

    .line 193
    invoke-virtual {p3, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 194
    .line 195
    .line 196
    :cond_7
    iget-object p3, p1, Laja;->e:Landroidx/appcompat/widget/AppCompatImageView;

    .line 197
    .line 198
    if-eqz p3, :cond_a

    .line 199
    .line 200
    iget-object v3, p0, Lcom/opay/team/newhome/adapter/FinLoanPagerAdapter;->b:Landroid/app/Activity;

    .line 201
    .line 202
    invoke-static {v3}, Lcom/bumptech/glide/a;->t(Landroid/app/Activity;)Lcom/bumptech/glide/RequestManager;

    .line 203
    .line 204
    .line 205
    move-result-object v3

    .line 206
    if-eqz p2, :cond_8

    .line 207
    .line 208
    invoke-virtual {p2}, Lcom/opay/team/newhome/bean/FinanceDetailData;->getImgUrl()Ljava/lang/String;

    .line 209
    .line 210
    .line 211
    move-result-object v4

    .line 212
    if-nez v4, :cond_9

    .line 213
    .line 214
    :cond_8
    move-object v4, v2

    .line 215
    :cond_9
    invoke-virtual {v3, v4}, Lcom/bumptech/glide/RequestManager;->u(Ljava/lang/String;)Ljpc;

    .line 216
    .line 217
    .line 218
    move-result-object v3

    .line 219
    sget v4, Lteam/opay/pay/R$mipmap;->omain_ic_finance_loan_defalut:I

    .line 220
    .line 221
    invoke-virtual {v3, v4}, Lcom/bumptech/glide/request/BaseRequestOptions;->Z(I)Lcom/bumptech/glide/request/BaseRequestOptions;

    .line 222
    .line 223
    .line 224
    move-result-object v3

    .line 225
    check-cast v3, Ljpc;

    .line 226
    .line 227
    invoke-virtual {v3, v4}, Lcom/bumptech/glide/request/BaseRequestOptions;->n(I)Lcom/bumptech/glide/request/BaseRequestOptions;

    .line 228
    .line 229
    .line 230
    move-result-object v3

    .line 231
    check-cast v3, Ljpc;

    .line 232
    .line 233
    invoke-virtual {v3, p3}, Ljpc;->F0(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    .line 234
    .line 235
    .line 236
    :cond_a
    iget-object p3, p1, Laja;->d:Landroidx/appcompat/widget/AppCompatImageView;

    .line 237
    .line 238
    if-eqz p3, :cond_d

    .line 239
    .line 240
    iget-object v3, p0, Lcom/opay/team/newhome/adapter/FinLoanPagerAdapter;->b:Landroid/app/Activity;

    .line 241
    .line 242
    invoke-static {v3}, Lcom/bumptech/glide/a;->t(Landroid/app/Activity;)Lcom/bumptech/glide/RequestManager;

    .line 243
    .line 244
    .line 245
    move-result-object v3

    .line 246
    if-eqz p2, :cond_b

    .line 247
    .line 248
    invoke-virtual {p2}, Lcom/opay/team/newhome/bean/FinanceDetailData;->getSuperscriptImgUrl()Ljava/lang/String;

    .line 249
    .line 250
    .line 251
    move-result-object v4

    .line 252
    if-nez v4, :cond_c

    .line 253
    .line 254
    :cond_b
    move-object v4, v2

    .line 255
    :cond_c
    invoke-virtual {v3, v4}, Lcom/bumptech/glide/RequestManager;->u(Ljava/lang/String;)Ljpc;

    .line 256
    .line 257
    .line 258
    move-result-object v3

    .line 259
    invoke-virtual {v3, p3}, Ljpc;->F0(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    .line 260
    .line 261
    .line 262
    :cond_d
    iget-object p3, p1, Laja;->b:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 263
    .line 264
    if-eqz p3, :cond_f

    .line 265
    .line 266
    if-eqz p2, :cond_e

    .line 267
    .line 268
    invoke-virtual {p2}, Lcom/opay/team/newhome/bean/FinanceDetailData;->getLoanBgColor()Ljava/lang/String;

    .line 269
    .line 270
    .line 271
    move-result-object v3

    .line 272
    goto :goto_5

    .line 273
    :cond_e
    move-object v3, v0

    .line 274
    :goto_5
    :try_start_0
    invoke-virtual {p3}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    .line 275
    .line 276
    .line 277
    move-result-object p3

    .line 278
    const-string v4, "null cannot be cast to non-null type android.graphics.drawable.GradientDrawable"

    .line 279
    .line 280
    invoke-static {p3, v4}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 281
    .line 282
    .line 283
    check-cast p3, Landroid/graphics/drawable/GradientDrawable;

    .line 284
    .line 285
    sget-object v4, Lcom/opay/team/newhome/finance/FinanceUtil;->a:Lcom/opay/team/newhome/finance/FinanceUtil$Companion;

    .line 286
    .line 287
    iget-object v5, p0, Lcom/opay/team/newhome/adapter/FinLoanPagerAdapter;->b:Landroid/app/Activity;

    .line 288
    .line 289
    sget v6, Lteam/opay/pay/R$color;->omain_finance_loan_bg_defalut:I

    .line 290
    .line 291
    invoke-virtual {v4, v5, v3, v6}, Lcom/opay/team/newhome/finance/FinanceUtil$Companion;->a(Landroid/content/Context;Ljava/lang/String;I)I

    .line 292
    .line 293
    .line 294
    move-result v3

    .line 295
    invoke-virtual {p3, v3}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 296
    .line 297
    .line 298
    sget-object p3, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 299
    .line 300
    goto :goto_6

    .line 301
    :catch_0
    move-exception p3

    .line 302
    invoke-virtual {p3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 303
    .line 304
    .line 305
    move-result-object v3

    .line 306
    if-eqz v3, :cond_f

    .line 307
    .line 308
    sget-object v3, Lcom/opay/team/newhome/adapter/FinLoanPagerAdapter;->e:Ljava/lang/String;

    .line 309
    .line 310
    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 311
    .line 312
    .line 313
    invoke-virtual {p3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 314
    .line 315
    .line 316
    sget-object p3, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 317
    .line 318
    :cond_f
    :goto_6
    if-eqz p2, :cond_10

    .line 319
    .line 320
    invoke-virtual {p2}, Lcom/opay/team/newhome/bean/FinanceDetailData;->getUiType()Ljava/lang/Integer;

    .line 321
    .line 322
    .line 323
    move-result-object v0

    .line 324
    :cond_10
    if-nez v0, :cond_11

    .line 325
    .line 326
    goto :goto_8

    .line 327
    :cond_11
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 328
    .line 329
    .line 330
    move-result p3

    .line 331
    const/4 v0, 0x1

    .line 332
    if-ne p3, v0, :cond_13

    .line 333
    .line 334
    iget-object p1, p1, Laja;->h:Landroidx/appcompat/widget/AppCompatImageView;

    .line 335
    .line 336
    if-eqz p1, :cond_14

    .line 337
    .line 338
    invoke-static {p1}, Lteam/opay/core/android/ViewKt;->v(Landroid/view/View;)V

    .line 339
    .line 340
    .line 341
    iget-object p3, p0, Lcom/opay/team/newhome/adapter/FinLoanPagerAdapter;->b:Landroid/app/Activity;

    .line 342
    .line 343
    invoke-static {p3}, Lcom/bumptech/glide/a;->t(Landroid/app/Activity;)Lcom/bumptech/glide/RequestManager;

    .line 344
    .line 345
    .line 346
    move-result-object p3

    .line 347
    invoke-virtual {p2}, Lcom/opay/team/newhome/bean/FinanceDetailData;->getRateImgUrl()Ljava/lang/String;

    .line 348
    .line 349
    .line 350
    move-result-object p2

    .line 351
    if-nez p2, :cond_12

    .line 352
    .line 353
    goto :goto_7

    .line 354
    :cond_12
    move-object v2, p2

    .line 355
    :goto_7
    invoke-virtual {p3, v2}, Lcom/bumptech/glide/RequestManager;->u(Ljava/lang/String;)Ljpc;

    .line 356
    .line 357
    .line 358
    move-result-object p2

    .line 359
    sget p3, Lteam/opay/pay/R$color;->transparent:I

    .line 360
    .line 361
    invoke-virtual {p2, p3}, Lcom/bumptech/glide/request/BaseRequestOptions;->Z(I)Lcom/bumptech/glide/request/BaseRequestOptions;

    .line 362
    .line 363
    .line 364
    move-result-object p2

    .line 365
    check-cast p2, Ljpc;

    .line 366
    .line 367
    invoke-virtual {p2, p3}, Lcom/bumptech/glide/request/BaseRequestOptions;->n(I)Lcom/bumptech/glide/request/BaseRequestOptions;

    .line 368
    .line 369
    .line 370
    move-result-object p2

    .line 371
    check-cast p2, Ljpc;

    .line 372
    .line 373
    invoke-virtual {p2, p1}, Ljpc;->F0(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    .line 374
    .line 375
    .line 376
    goto :goto_9

    .line 377
    :cond_13
    :goto_8
    iget-object p1, p1, Laja;->h:Landroidx/appcompat/widget/AppCompatImageView;

    .line 378
    .line 379
    if-eqz p1, :cond_14

    .line 380
    .line 381
    invoke-static {p1}, Lteam/opay/core/android/ViewKt;->e(Landroid/view/View;)V

    .line 382
    .line 383
    .line 384
    :cond_14
    :goto_9
    return-void
.end method

.method public t(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Laja;
    .locals 1
    .param p1    # Landroid/view/LayoutInflater;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/ViewGroup;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "inflater"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "parent"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    invoke-static {p1, p2, v0}, Laja;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Laja;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    const-string p2, "inflate(...)"

    .line 17
    .line 18
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    return-object p1
.end method

.method public final u(Lkotlin/jvm/functions/Function1;)V
    .locals 1
    .param p1    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/opay/team/newhome/bean/FinanceDetailData;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 1
    const-string v0, "<set-?>"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/opay/team/newhome/adapter/FinLoanPagerAdapter;->c:Lkotlin/jvm/functions/Function1;

    .line 7
    .line 8
    return-void
.end method
