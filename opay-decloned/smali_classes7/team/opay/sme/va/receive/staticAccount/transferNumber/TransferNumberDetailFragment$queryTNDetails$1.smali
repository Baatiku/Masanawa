.class final Lteam/opay/sme/va/receive/staticAccount/transferNumber/TransferNumberDetailFragment$queryTNDetails$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "TransferNumberDetailFragment.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lteam/opay/sme/va/receive/staticAccount/transferNumber/TransferNumberDetailFragment;->d0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lzr2;",
        "Ljr2<",
        "-",
        "Lkotlin/Unit;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n\u00a2\u0006\u0004\u0008\u0002\u0010\u0003"
    }
    d2 = {
        "Lzr2;",
        "",
        "<anonymous>",
        "(Lzr2;)V"
    }
    k = 0x3
    mv = {
        0x2,
        0x1,
        0x0
    }
.end annotation

.annotation runtime Ln33;
    c = "team.opay.sme.va.receive.staticAccount.transferNumber.TransferNumberDetailFragment$queryTNDetails$1"
    f = "TransferNumberDetailFragment.kt"
    l = {
        0x6c
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field label:I

.field final synthetic this$0:Lteam/opay/sme/va/receive/staticAccount/transferNumber/TransferNumberDetailFragment;


# direct methods
.method public constructor <init>(Lteam/opay/sme/va/receive/staticAccount/transferNumber/TransferNumberDetailFragment;Ljr2;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lteam/opay/sme/va/receive/staticAccount/transferNumber/TransferNumberDetailFragment;",
            "Ljr2<",
            "-",
            "Lteam/opay/sme/va/receive/staticAccount/transferNumber/TransferNumberDetailFragment$queryTNDetails$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lteam/opay/sme/va/receive/staticAccount/transferNumber/TransferNumberDetailFragment$queryTNDetails$1;->this$0:Lteam/opay/sme/va/receive/staticAccount/transferNumber/TransferNumberDetailFragment;

    .line 2
    .line 3
    const/4 p1, 0x2

    .line 4
    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILjr2;)V

    .line 5
    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Ljr2;)Ljr2;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljr2<",
            "*>;)",
            "Ljr2<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance p1, Lteam/opay/sme/va/receive/staticAccount/transferNumber/TransferNumberDetailFragment$queryTNDetails$1;

    .line 2
    .line 3
    iget-object v0, p0, Lteam/opay/sme/va/receive/staticAccount/transferNumber/TransferNumberDetailFragment$queryTNDetails$1;->this$0:Lteam/opay/sme/va/receive/staticAccount/transferNumber/TransferNumberDetailFragment;

    .line 4
    .line 5
    invoke-direct {p1, v0, p2}, Lteam/opay/sme/va/receive/staticAccount/transferNumber/TransferNumberDetailFragment$queryTNDetails$1;-><init>(Lteam/opay/sme/va/receive/staticAccount/transferNumber/TransferNumberDetailFragment;Ljr2;)V

    .line 6
    .line 7
    .line 8
    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2
    check-cast p1, Lzr2;

    check-cast p2, Ljr2;

    invoke-virtual {p0, p1, p2}, Lteam/opay/sme/va/receive/staticAccount/transferNumber/TransferNumberDetailFragment$queryTNDetails$1;->invoke(Lzr2;Ljr2;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Lzr2;Ljr2;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lzr2;",
            "Ljr2<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Lteam/opay/sme/va/receive/staticAccount/transferNumber/TransferNumberDetailFragment$queryTNDetails$1;->create(Ljava/lang/Object;Ljr2;)Ljr2;

    move-result-object p1

    check-cast p1, Lteam/opay/sme/va/receive/staticAccount/transferNumber/TransferNumberDetailFragment$queryTNDetails$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lteam/opay/sme/va/receive/staticAccount/transferNumber/TransferNumberDetailFragment$queryTNDetails$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->e()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget v1, p0, Lteam/opay/sme/va/receive/staticAccount/transferNumber/TransferNumberDetailFragment$queryTNDetails$1;->label:I

    .line 6
    .line 7
    const-string v2, "getRoot(...)"

    .line 8
    .line 9
    const/4 v3, 0x1

    .line 10
    if-eqz v1, :cond_1

    .line 11
    .line 12
    if-ne v1, v3, :cond_0

    .line 13
    .line 14
    invoke-static {p1}, Lkotlin/d;->b(Ljava/lang/Object;)V

    .line 15
    .line 16
    .line 17
    goto :goto_1

    .line 18
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 19
    .line 20
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 21
    .line 22
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    throw p1

    .line 26
    :cond_1
    invoke-static {p1}, Lkotlin/d;->b(Ljava/lang/Object;)V

    .line 27
    .line 28
    .line 29
    iget-object p1, p0, Lteam/opay/sme/va/receive/staticAccount/transferNumber/TransferNumberDetailFragment$queryTNDetails$1;->this$0:Lteam/opay/sme/va/receive/staticAccount/transferNumber/TransferNumberDetailFragment;

    .line 30
    .line 31
    invoke-static {p1}, Lteam/opay/sme/va/receive/staticAccount/transferNumber/TransferNumberDetailFragment;->O(Lteam/opay/sme/va/receive/staticAccount/transferNumber/TransferNumberDetailFragment;)Loxd;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    iget-object p1, p1, Loxd;->q:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 36
    .line 37
    const-string v1, "layoutInfo"

    .line 38
    .line 39
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    .line 43
    .line 44
    .line 45
    move-result p1

    .line 46
    if-nez p1, :cond_2

    .line 47
    .line 48
    iget-object p1, p0, Lteam/opay/sme/va/receive/staticAccount/transferNumber/TransferNumberDetailFragment$queryTNDetails$1;->this$0:Lteam/opay/sme/va/receive/staticAccount/transferNumber/TransferNumberDetailFragment;

    .line 49
    .line 50
    invoke-static {p1}, Lteam/opay/sme/va/receive/staticAccount/transferNumber/TransferNumberDetailFragment;->O(Lteam/opay/sme/va/receive/staticAccount/transferNumber/TransferNumberDetailFragment;)Loxd;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    iget-object p1, p1, Loxd;->g:Lteam/opay/core/widget/HttpViewGroup;

    .line 55
    .line 56
    invoke-virtual {p1, v3}, Lteam/opay/core/widget/HttpViewGroup;->x(Z)V

    .line 57
    .line 58
    .line 59
    goto :goto_0

    .line 60
    :cond_2
    iget-object p1, p0, Lteam/opay/sme/va/receive/staticAccount/transferNumber/TransferNumberDetailFragment$queryTNDetails$1;->this$0:Lteam/opay/sme/va/receive/staticAccount/transferNumber/TransferNumberDetailFragment;

    .line 61
    .line 62
    invoke-static {p1}, Lteam/opay/sme/va/receive/staticAccount/transferNumber/TransferNumberDetailFragment;->O(Lteam/opay/sme/va/receive/staticAccount/transferNumber/TransferNumberDetailFragment;)Loxd;

    .line 63
    .line 64
    .line 65
    move-result-object p1

    .line 66
    iget-object p1, p1, Loxd;->g:Lteam/opay/core/widget/HttpViewGroup;

    .line 67
    .line 68
    invoke-virtual {p1}, Lteam/opay/core/widget/HttpViewGroup;->g()V

    .line 69
    .line 70
    .line 71
    iget-object p1, p0, Lteam/opay/sme/va/receive/staticAccount/transferNumber/TransferNumberDetailFragment$queryTNDetails$1;->this$0:Lteam/opay/sme/va/receive/staticAccount/transferNumber/TransferNumberDetailFragment;

    .line 72
    .line 73
    invoke-static {p1}, Lteam/opay/sme/va/receive/staticAccount/transferNumber/TransferNumberDetailFragment;->O(Lteam/opay/sme/va/receive/staticAccount/transferNumber/TransferNumberDetailFragment;)Loxd;

    .line 74
    .line 75
    .line 76
    move-result-object p1

    .line 77
    iget-object p1, p1, Loxd;->f:Layd;

    .line 78
    .line 79
    invoke-virtual {p1}, Layd;->a()Lteam/opay/business/widget/shimmer/CorpShimmerConstraintLayout;

    .line 80
    .line 81
    .line 82
    move-result-object p1

    .line 83
    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 84
    .line 85
    .line 86
    invoke-static {p1}, Lg0g;->h(Landroid/view/View;)V

    .line 87
    .line 88
    .line 89
    :goto_0
    iget-object p1, p0, Lteam/opay/sme/va/receive/staticAccount/transferNumber/TransferNumberDetailFragment$queryTNDetails$1;->this$0:Lteam/opay/sme/va/receive/staticAccount/transferNumber/TransferNumberDetailFragment;

    .line 90
    .line 91
    invoke-static {p1}, Lteam/opay/sme/va/receive/staticAccount/transferNumber/TransferNumberDetailFragment;->R(Lteam/opay/sme/va/receive/staticAccount/transferNumber/TransferNumberDetailFragment;)Lteam/opay/sme/va/receive/ReceiveViewModel;

    .line 92
    .line 93
    .line 94
    move-result-object p1

    .line 95
    new-instance v1, Lteam/opay/sme/va/receive/StaticCodeInfoReq;

    .line 96
    .line 97
    iget-object v4, p0, Lteam/opay/sme/va/receive/staticAccount/transferNumber/TransferNumberDetailFragment$queryTNDetails$1;->this$0:Lteam/opay/sme/va/receive/staticAccount/transferNumber/TransferNumberDetailFragment;

    .line 98
    .line 99
    invoke-static {v4}, Lteam/opay/sme/va/receive/staticAccount/transferNumber/TransferNumberDetailFragment;->Q(Lteam/opay/sme/va/receive/staticAccount/transferNumber/TransferNumberDetailFragment;)Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object v6

    .line 103
    const/4 v8, 0x5

    .line 104
    const/4 v9, 0x0

    .line 105
    const/4 v5, 0x0

    .line 106
    const/4 v7, 0x0

    .line 107
    move-object v4, v1

    .line 108
    invoke-direct/range {v4 .. v9}, Lteam/opay/sme/va/receive/StaticCodeInfoReq;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 109
    .line 110
    .line 111
    iput v3, p0, Lteam/opay/sme/va/receive/staticAccount/transferNumber/TransferNumberDetailFragment$queryTNDetails$1;->label:I

    .line 112
    .line 113
    invoke-virtual {p1, v1, p0}, Lteam/opay/sme/va/receive/ReceiveViewModel;->T(Lteam/opay/sme/va/receive/StaticCodeInfoReq;Ljr2;)Ljava/lang/Object;

    .line 114
    .line 115
    .line 116
    move-result-object p1

    .line 117
    if-ne p1, v0, :cond_3

    .line 118
    .line 119
    return-object v0

    .line 120
    :cond_3
    :goto_1
    check-cast p1, Lteam/opay/core/http/HttpResult;

    .line 121
    .line 122
    iget-object v0, p0, Lteam/opay/sme/va/receive/staticAccount/transferNumber/TransferNumberDetailFragment$queryTNDetails$1;->this$0:Lteam/opay/sme/va/receive/staticAccount/transferNumber/TransferNumberDetailFragment;

    .line 123
    .line 124
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    .line 125
    .line 126
    .line 127
    move-result-object v0

    .line 128
    const-string v1, "<get-lifecycle>(...)"

    .line 129
    .line 130
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 131
    .line 132
    .line 133
    sget-object v1, Landroidx/lifecycle/Lifecycle$State;->STARTED:Landroidx/lifecycle/Lifecycle$State;

    .line 134
    .line 135
    invoke-static {v0, v1}, Lsf8;->a(Landroidx/lifecycle/Lifecycle;Landroidx/lifecycle/Lifecycle$State;)Z

    .line 136
    .line 137
    .line 138
    move-result v0

    .line 139
    if-eqz v0, :cond_6

    .line 140
    .line 141
    iget-object v0, p0, Lteam/opay/sme/va/receive/staticAccount/transferNumber/TransferNumberDetailFragment$queryTNDetails$1;->this$0:Lteam/opay/sme/va/receive/staticAccount/transferNumber/TransferNumberDetailFragment;

    .line 142
    .line 143
    invoke-static {v0}, Lteam/opay/sme/va/receive/staticAccount/transferNumber/TransferNumberDetailFragment;->O(Lteam/opay/sme/va/receive/staticAccount/transferNumber/TransferNumberDetailFragment;)Loxd;

    .line 144
    .line 145
    .line 146
    move-result-object v0

    .line 147
    iget-object v0, v0, Loxd;->f:Layd;

    .line 148
    .line 149
    invoke-virtual {v0}, Layd;->a()Lteam/opay/business/widget/shimmer/CorpShimmerConstraintLayout;

    .line 150
    .line 151
    .line 152
    move-result-object v0

    .line 153
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 154
    .line 155
    .line 156
    invoke-static {v0}, Lg0g;->d(Landroid/view/View;)V

    .line 157
    .line 158
    .line 159
    instance-of v0, p1, Lteam/opay/core/http/HttpResult$Success;

    .line 160
    .line 161
    if-eqz v0, :cond_4

    .line 162
    .line 163
    iget-object v0, p0, Lteam/opay/sme/va/receive/staticAccount/transferNumber/TransferNumberDetailFragment$queryTNDetails$1;->this$0:Lteam/opay/sme/va/receive/staticAccount/transferNumber/TransferNumberDetailFragment;

    .line 164
    .line 165
    invoke-static {v0}, Lteam/opay/sme/va/receive/staticAccount/transferNumber/TransferNumberDetailFragment;->O(Lteam/opay/sme/va/receive/staticAccount/transferNumber/TransferNumberDetailFragment;)Loxd;

    .line 166
    .line 167
    .line 168
    move-result-object v0

    .line 169
    iget-object v0, v0, Loxd;->g:Lteam/opay/core/widget/HttpViewGroup;

    .line 170
    .line 171
    invoke-virtual {v0}, Lteam/opay/core/widget/HttpViewGroup;->g()V

    .line 172
    .line 173
    .line 174
    iget-object v0, p0, Lteam/opay/sme/va/receive/staticAccount/transferNumber/TransferNumberDetailFragment$queryTNDetails$1;->this$0:Lteam/opay/sme/va/receive/staticAccount/transferNumber/TransferNumberDetailFragment;

    .line 175
    .line 176
    check-cast p1, Lteam/opay/core/http/HttpResult$Success;

    .line 177
    .line 178
    invoke-virtual {p1}, Lteam/opay/core/http/HttpResult$Success;->getValue()Ljava/lang/Object;

    .line 179
    .line 180
    .line 181
    move-result-object p1

    .line 182
    check-cast p1, Lteam/opay/sme/va/receive/TransferNumberDetails;

    .line 183
    .line 184
    invoke-static {v0, p1}, Lteam/opay/sme/va/receive/staticAccount/transferNumber/TransferNumberDetailFragment;->S(Lteam/opay/sme/va/receive/staticAccount/transferNumber/TransferNumberDetailFragment;Lteam/opay/sme/va/receive/TransferNumberDetails;)V

    .line 185
    .line 186
    .line 187
    goto :goto_3

    .line 188
    :cond_4
    iget-object v0, p0, Lteam/opay/sme/va/receive/staticAccount/transferNumber/TransferNumberDetailFragment$queryTNDetails$1;->this$0:Lteam/opay/sme/va/receive/staticAccount/transferNumber/TransferNumberDetailFragment;

    .line 189
    .line 190
    invoke-static {v0}, Lteam/opay/sme/va/receive/staticAccount/transferNumber/TransferNumberDetailFragment;->O(Lteam/opay/sme/va/receive/staticAccount/transferNumber/TransferNumberDetailFragment;)Loxd;

    .line 191
    .line 192
    .line 193
    move-result-object v0

    .line 194
    iget-object v0, v0, Loxd;->g:Lteam/opay/core/widget/HttpViewGroup;

    .line 195
    .line 196
    invoke-virtual {p1}, Lteam/opay/core/http/HttpResult;->getApiError()Lteam/opay/core/http/arch/ApiError;

    .line 197
    .line 198
    .line 199
    move-result-object p1

    .line 200
    if-eqz p1, :cond_5

    .line 201
    .line 202
    invoke-virtual {p1}, Lteam/opay/core/http/arch/ApiError;->d()Ljava/lang/String;

    .line 203
    .line 204
    .line 205
    move-result-object p1

    .line 206
    goto :goto_2

    .line 207
    :cond_5
    const/4 p1, 0x0

    .line 208
    :goto_2
    invoke-virtual {v0, p1}, Lteam/opay/core/widget/HttpViewGroup;->t(Ljava/lang/String;)V

    .line 209
    .line 210
    .line 211
    :cond_6
    :goto_3
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 212
    .line 213
    return-object p1
.end method
