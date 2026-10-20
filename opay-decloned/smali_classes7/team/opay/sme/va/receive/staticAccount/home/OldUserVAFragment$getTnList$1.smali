.class final Lteam/opay/sme/va/receive/staticAccount/home/OldUserVAFragment$getTnList$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "OldUserVAFragment.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lteam/opay/sme/va/receive/staticAccount/home/OldUserVAFragment;->K0()V
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
    c = "team.opay.sme.va.receive.staticAccount.home.OldUserVAFragment$getTnList$1"
    f = "OldUserVAFragment.kt"
    l = {
        0xd2
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field label:I

.field final synthetic this$0:Lteam/opay/sme/va/receive/staticAccount/home/OldUserVAFragment;


# direct methods
.method public constructor <init>(Lteam/opay/sme/va/receive/staticAccount/home/OldUserVAFragment;Ljr2;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lteam/opay/sme/va/receive/staticAccount/home/OldUserVAFragment;",
            "Ljr2<",
            "-",
            "Lteam/opay/sme/va/receive/staticAccount/home/OldUserVAFragment$getTnList$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lteam/opay/sme/va/receive/staticAccount/home/OldUserVAFragment$getTnList$1;->this$0:Lteam/opay/sme/va/receive/staticAccount/home/OldUserVAFragment;

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
    new-instance p1, Lteam/opay/sme/va/receive/staticAccount/home/OldUserVAFragment$getTnList$1;

    .line 2
    .line 3
    iget-object v0, p0, Lteam/opay/sme/va/receive/staticAccount/home/OldUserVAFragment$getTnList$1;->this$0:Lteam/opay/sme/va/receive/staticAccount/home/OldUserVAFragment;

    .line 4
    .line 5
    invoke-direct {p1, v0, p2}, Lteam/opay/sme/va/receive/staticAccount/home/OldUserVAFragment$getTnList$1;-><init>(Lteam/opay/sme/va/receive/staticAccount/home/OldUserVAFragment;Ljr2;)V

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

    invoke-virtual {p0, p1, p2}, Lteam/opay/sme/va/receive/staticAccount/home/OldUserVAFragment$getTnList$1;->invoke(Lzr2;Ljr2;)Ljava/lang/Object;

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
    invoke-virtual {p0, p1, p2}, Lteam/opay/sme/va/receive/staticAccount/home/OldUserVAFragment$getTnList$1;->create(Ljava/lang/Object;Ljr2;)Ljr2;

    move-result-object p1

    check-cast p1, Lteam/opay/sme/va/receive/staticAccount/home/OldUserVAFragment$getTnList$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lteam/opay/sme/va/receive/staticAccount/home/OldUserVAFragment$getTnList$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->e()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget v1, p0, Lteam/opay/sme/va/receive/staticAccount/home/OldUserVAFragment$getTnList$1;->label:I

    .line 6
    .line 7
    const/4 v2, 0x2

    .line 8
    const/4 v3, 0x1

    .line 9
    if-eqz v1, :cond_1

    .line 10
    .line 11
    if-ne v1, v3, :cond_0

    .line 12
    .line 13
    invoke-static {p1}, Lkotlin/d;->b(Ljava/lang/Object;)V

    .line 14
    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 18
    .line 19
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 20
    .line 21
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    throw p1

    .line 25
    :cond_1
    invoke-static {p1}, Lkotlin/d;->b(Ljava/lang/Object;)V

    .line 26
    .line 27
    .line 28
    iget-object p1, p0, Lteam/opay/sme/va/receive/staticAccount/home/OldUserVAFragment$getTnList$1;->this$0:Lteam/opay/sme/va/receive/staticAccount/home/OldUserVAFragment;

    .line 29
    .line 30
    invoke-virtual {p1}, Lteam/opay/sme/va/receive/staticAccount/home/BaseUserVAFragment;->R()Lteam/opay/sme/va/receive/ReceiveViewModel;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    new-instance v1, Lteam/opay/sme/va/receive/QueryTNsReq;

    .line 35
    .line 36
    invoke-static {v2}, Ldf1;->d(I)Ljava/lang/Integer;

    .line 37
    .line 38
    .line 39
    move-result-object v4

    .line 40
    invoke-direct {v1, v4}, Lteam/opay/sme/va/receive/QueryTNsReq;-><init>(Ljava/lang/Integer;)V

    .line 41
    .line 42
    .line 43
    iput v3, p0, Lteam/opay/sme/va/receive/staticAccount/home/OldUserVAFragment$getTnList$1;->label:I

    .line 44
    .line 45
    invoke-virtual {p1, v1, p0}, Lteam/opay/sme/va/receive/ReceiveViewModel;->X(Lteam/opay/sme/va/receive/QueryTNsReq;Ljr2;)Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    if-ne p1, v0, :cond_2

    .line 50
    .line 51
    return-object v0

    .line 52
    :cond_2
    :goto_0
    check-cast p1, Lteam/opay/core/http/HttpResult;

    .line 53
    .line 54
    instance-of v0, p1, Lteam/opay/core/http/HttpResult$Success;

    .line 55
    .line 56
    const/4 v1, 0x0

    .line 57
    const/4 v4, 0x0

    .line 58
    if-eqz v0, :cond_9

    .line 59
    .line 60
    iget-object v0, p0, Lteam/opay/sme/va/receive/staticAccount/home/OldUserVAFragment$getTnList$1;->this$0:Lteam/opay/sme/va/receive/staticAccount/home/OldUserVAFragment;

    .line 61
    .line 62
    invoke-static {v0}, Lteam/opay/sme/va/receive/staticAccount/home/OldUserVAFragment;->u0(Lteam/opay/sme/va/receive/staticAccount/home/OldUserVAFragment;)Lixd;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    iget-object v0, v0, Lixd;->n:Lteam/opay/core/widget/HttpViewGroup;

    .line 67
    .line 68
    invoke-virtual {v0, v4}, Lteam/opay/core/widget/HttpViewGroup;->x(Z)V

    .line 69
    .line 70
    .line 71
    check-cast p1, Lteam/opay/core/http/HttpResult$Success;

    .line 72
    .line 73
    invoke-virtual {p1}, Lteam/opay/core/http/HttpResult;->getOrNull()Ljava/lang/Object;

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    check-cast v0, Lteam/opay/sme/va/receive/QueryTNsResp;

    .line 78
    .line 79
    if-eqz v0, :cond_5

    .line 80
    .line 81
    iget-object v5, p0, Lteam/opay/sme/va/receive/staticAccount/home/OldUserVAFragment$getTnList$1;->this$0:Lteam/opay/sme/va/receive/staticAccount/home/OldUserVAFragment;

    .line 82
    .line 83
    invoke-static {v5}, Lteam/opay/sme/va/receive/staticAccount/home/OldUserVAFragment;->w0(Lteam/opay/sme/va/receive/staticAccount/home/OldUserVAFragment;)Lteam/opay/sme/va/receive/staticAccount/home/HomeTNAdapter;

    .line 84
    .line 85
    .line 86
    move-result-object v6

    .line 87
    invoke-virtual {v0}, Lteam/opay/sme/va/receive/QueryTNsResp;->a()Ljava/util/List;

    .line 88
    .line 89
    .line 90
    move-result-object v7

    .line 91
    if-nez v7, :cond_3

    .line 92
    .line 93
    invoke-static {}, Lkotlin/collections/CollectionsKt;->k()Ljava/util/List;

    .line 94
    .line 95
    .line 96
    move-result-object v7

    .line 97
    :cond_3
    invoke-virtual {v6, v7}, Lteam/opay/sme/va/receive/staticAccount/home/HomeTNAdapter;->setDataList(Ljava/util/List;)V

    .line 98
    .line 99
    .line 100
    invoke-static {v5}, Lteam/opay/sme/va/receive/staticAccount/home/OldUserVAFragment;->u0(Lteam/opay/sme/va/receive/staticAccount/home/OldUserVAFragment;)Lixd;

    .line 101
    .line 102
    .line 103
    move-result-object v5

    .line 104
    iget-object v5, v5, Lixd;->w:Landroidx/appcompat/widget/AppCompatTextView;

    .line 105
    .line 106
    const-string v6, "listViewMore"

    .line 107
    .line 108
    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 109
    .line 110
    .line 111
    invoke-virtual {v0}, Lteam/opay/sme/va/receive/QueryTNsResp;->b()I

    .line 112
    .line 113
    .line 114
    move-result v0

    .line 115
    if-le v0, v2, :cond_4

    .line 116
    .line 117
    const/4 v0, 0x1

    .line 118
    goto :goto_1

    .line 119
    :cond_4
    const/4 v0, 0x0

    .line 120
    :goto_1
    invoke-static {v5, v0}, Lg0g;->j(Landroid/view/View;Z)V

    .line 121
    .line 122
    .line 123
    :cond_5
    iget-object v0, p0, Lteam/opay/sme/va/receive/staticAccount/home/OldUserVAFragment$getTnList$1;->this$0:Lteam/opay/sme/va/receive/staticAccount/home/OldUserVAFragment;

    .line 124
    .line 125
    invoke-static {v0}, Lteam/opay/sme/va/receive/staticAccount/home/OldUserVAFragment;->u0(Lteam/opay/sme/va/receive/staticAccount/home/OldUserVAFragment;)Lixd;

    .line 126
    .line 127
    .line 128
    move-result-object v0

    .line 129
    iget-object v0, v0, Lixd;->t:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 130
    .line 131
    const-string v2, "layoutTnList"

    .line 132
    .line 133
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 134
    .line 135
    .line 136
    invoke-virtual {p1}, Lteam/opay/core/http/HttpResult$Success;->getValue()Ljava/lang/Object;

    .line 137
    .line 138
    .line 139
    move-result-object p1

    .line 140
    check-cast p1, Lteam/opay/sme/va/receive/QueryTNsResp;

    .line 141
    .line 142
    if-eqz p1, :cond_6

    .line 143
    .line 144
    invoke-virtual {p1}, Lteam/opay/sme/va/receive/QueryTNsResp;->a()Ljava/util/List;

    .line 145
    .line 146
    .line 147
    move-result-object v1

    .line 148
    :cond_6
    if-eqz v1, :cond_7

    .line 149
    .line 150
    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    .line 151
    .line 152
    .line 153
    move-result p1

    .line 154
    if-eqz p1, :cond_8

    .line 155
    .line 156
    :cond_7
    const/4 v4, 0x1

    .line 157
    :cond_8
    xor-int/lit8 p1, v4, 0x1

    .line 158
    .line 159
    invoke-static {v0, p1}, Lg0g;->j(Landroid/view/View;Z)V

    .line 160
    .line 161
    .line 162
    goto :goto_2

    .line 163
    :cond_9
    iget-object v0, p0, Lteam/opay/sme/va/receive/staticAccount/home/OldUserVAFragment$getTnList$1;->this$0:Lteam/opay/sme/va/receive/staticAccount/home/OldUserVAFragment;

    .line 164
    .line 165
    invoke-static {v0}, Lteam/opay/sme/va/receive/staticAccount/home/OldUserVAFragment;->u0(Lteam/opay/sme/va/receive/staticAccount/home/OldUserVAFragment;)Lixd;

    .line 166
    .line 167
    .line 168
    move-result-object v0

    .line 169
    iget-object v0, v0, Lixd;->n:Lteam/opay/core/widget/HttpViewGroup;

    .line 170
    .line 171
    invoke-virtual {v0, v4}, Lteam/opay/core/widget/HttpViewGroup;->x(Z)V

    .line 172
    .line 173
    .line 174
    iget-object v0, p0, Lteam/opay/sme/va/receive/staticAccount/home/OldUserVAFragment$getTnList$1;->this$0:Lteam/opay/sme/va/receive/staticAccount/home/OldUserVAFragment;

    .line 175
    .line 176
    invoke-virtual {v0}, Lteam/opay/opb/common/base/EdgeFragment;->getAppContext()Landroid/content/Context;

    .line 177
    .line 178
    .line 179
    move-result-object v0

    .line 180
    invoke-virtual {p1}, Lteam/opay/core/http/HttpResult;->getApiError()Lteam/opay/core/http/arch/ApiError;

    .line 181
    .line 182
    .line 183
    move-result-object p1

    .line 184
    if-eqz p1, :cond_a

    .line 185
    .line 186
    invoke-virtual {p1}, Lteam/opay/core/http/arch/ApiError;->d()Ljava/lang/String;

    .line 187
    .line 188
    .line 189
    move-result-object v1

    .line 190
    :cond_a
    invoke-static {v0, v1}, Let;->v(Landroid/content/Context;Ljava/lang/String;)V

    .line 191
    .line 192
    .line 193
    :goto_2
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 194
    .line 195
    return-object p1
.end method
