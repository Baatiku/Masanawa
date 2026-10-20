.class final Lteam/opay/sme/va/receive/staticAccount/home/OldUserVAFragment$vaModelMessage$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "OldUserVAFragment.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lteam/opay/sme/va/receive/staticAccount/home/OldUserVAFragment;->i1(Ljava/lang/String;)V
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
    c = "team.opay.sme.va.receive.staticAccount.home.OldUserVAFragment$vaModelMessage$1"
    f = "OldUserVAFragment.kt"
    l = {
        0xc3
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $tn:Ljava/lang/String;

.field label:I

.field final synthetic this$0:Lteam/opay/sme/va/receive/staticAccount/home/OldUserVAFragment;


# direct methods
.method public constructor <init>(Lteam/opay/sme/va/receive/staticAccount/home/OldUserVAFragment;Ljava/lang/String;Ljr2;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lteam/opay/sme/va/receive/staticAccount/home/OldUserVAFragment;",
            "Ljava/lang/String;",
            "Ljr2<",
            "-",
            "Lteam/opay/sme/va/receive/staticAccount/home/OldUserVAFragment$vaModelMessage$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lteam/opay/sme/va/receive/staticAccount/home/OldUserVAFragment$vaModelMessage$1;->this$0:Lteam/opay/sme/va/receive/staticAccount/home/OldUserVAFragment;

    .line 2
    .line 3
    iput-object p2, p0, Lteam/opay/sme/va/receive/staticAccount/home/OldUserVAFragment$vaModelMessage$1;->$tn:Ljava/lang/String;

    .line 4
    .line 5
    const/4 p1, 0x2

    .line 6
    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILjr2;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Ljr2;)Ljr2;
    .locals 2
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
    new-instance p1, Lteam/opay/sme/va/receive/staticAccount/home/OldUserVAFragment$vaModelMessage$1;

    .line 2
    .line 3
    iget-object v0, p0, Lteam/opay/sme/va/receive/staticAccount/home/OldUserVAFragment$vaModelMessage$1;->this$0:Lteam/opay/sme/va/receive/staticAccount/home/OldUserVAFragment;

    .line 4
    .line 5
    iget-object v1, p0, Lteam/opay/sme/va/receive/staticAccount/home/OldUserVAFragment$vaModelMessage$1;->$tn:Ljava/lang/String;

    .line 6
    .line 7
    invoke-direct {p1, v0, v1, p2}, Lteam/opay/sme/va/receive/staticAccount/home/OldUserVAFragment$vaModelMessage$1;-><init>(Lteam/opay/sme/va/receive/staticAccount/home/OldUserVAFragment;Ljava/lang/String;Ljr2;)V

    .line 8
    .line 9
    .line 10
    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2
    check-cast p1, Lzr2;

    check-cast p2, Ljr2;

    invoke-virtual {p0, p1, p2}, Lteam/opay/sme/va/receive/staticAccount/home/OldUserVAFragment$vaModelMessage$1;->invoke(Lzr2;Ljr2;)Ljava/lang/Object;

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
    invoke-virtual {p0, p1, p2}, Lteam/opay/sme/va/receive/staticAccount/home/OldUserVAFragment$vaModelMessage$1;->create(Ljava/lang/Object;Ljr2;)Ljr2;

    move-result-object p1

    check-cast p1, Lteam/opay/sme/va/receive/staticAccount/home/OldUserVAFragment$vaModelMessage$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lteam/opay/sme/va/receive/staticAccount/home/OldUserVAFragment$vaModelMessage$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->e()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget v1, p0, Lteam/opay/sme/va/receive/staticAccount/home/OldUserVAFragment$vaModelMessage$1;->label:I

    .line 6
    .line 7
    const/4 v2, 0x1

    .line 8
    if-eqz v1, :cond_1

    .line 9
    .line 10
    if-ne v1, v2, :cond_0

    .line 11
    .line 12
    invoke-static {p1}, Lkotlin/d;->b(Ljava/lang/Object;)V

    .line 13
    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 17
    .line 18
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 19
    .line 20
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    throw p1

    .line 24
    :cond_1
    invoke-static {p1}, Lkotlin/d;->b(Ljava/lang/Object;)V

    .line 25
    .line 26
    .line 27
    iget-object p1, p0, Lteam/opay/sme/va/receive/staticAccount/home/OldUserVAFragment$vaModelMessage$1;->this$0:Lteam/opay/sme/va/receive/staticAccount/home/OldUserVAFragment;

    .line 28
    .line 29
    invoke-virtual {p1}, Lteam/opay/sme/va/receive/staticAccount/home/BaseUserVAFragment;->R()Lteam/opay/sme/va/receive/ReceiveViewModel;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    new-instance v1, Lteam/opay/sme/va/receive/VaMessageReq;

    .line 34
    .line 35
    iget-object v4, p0, Lteam/opay/sme/va/receive/staticAccount/home/OldUserVAFragment$vaModelMessage$1;->$tn:Ljava/lang/String;

    .line 36
    .line 37
    const/4 v7, 0x6

    .line 38
    const/4 v8, 0x0

    .line 39
    const/4 v5, 0x0

    .line 40
    const/4 v6, 0x0

    .line 41
    move-object v3, v1

    .line 42
    invoke-direct/range {v3 .. v8}, Lteam/opay/sme/va/receive/VaMessageReq;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 43
    .line 44
    .line 45
    iput v2, p0, Lteam/opay/sme/va/receive/staticAccount/home/OldUserVAFragment$vaModelMessage$1;->label:I

    .line 46
    .line 47
    invoke-virtual {p1, v1, p0}, Lteam/opay/sme/va/receive/ReceiveViewModel;->b0(Lteam/opay/sme/va/receive/VaMessageReq;Ljr2;)Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    if-ne p1, v0, :cond_2

    .line 52
    .line 53
    return-object v0

    .line 54
    :cond_2
    :goto_0
    check-cast p1, Lteam/opay/core/http/HttpResult;

    .line 55
    .line 56
    instance-of v0, p1, Lteam/opay/core/http/HttpResult$Success;

    .line 57
    .line 58
    const-string v1, "groupMsg"

    .line 59
    .line 60
    if-eqz v0, :cond_8

    .line 61
    .line 62
    iget-object v0, p0, Lteam/opay/sme/va/receive/staticAccount/home/OldUserVAFragment$vaModelMessage$1;->this$0:Lteam/opay/sme/va/receive/staticAccount/home/OldUserVAFragment;

    .line 63
    .line 64
    invoke-static {v0}, Lteam/opay/sme/va/receive/staticAccount/home/OldUserVAFragment;->u0(Lteam/opay/sme/va/receive/staticAccount/home/OldUserVAFragment;)Lixd;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    iget-object v0, v0, Lixd;->m:Landroidx/constraintlayout/widget/Group;

    .line 69
    .line 70
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    check-cast p1, Lteam/opay/core/http/HttpResult$Success;

    .line 74
    .line 75
    invoke-virtual {p1}, Lteam/opay/core/http/HttpResult$Success;->getValue()Ljava/lang/Object;

    .line 76
    .line 77
    .line 78
    move-result-object v1

    .line 79
    check-cast v1, Lteam/opay/sme/va/receive/VaMessageResp;

    .line 80
    .line 81
    const/4 v3, 0x0

    .line 82
    if-eqz v1, :cond_3

    .line 83
    .line 84
    invoke-virtual {v1}, Lteam/opay/sme/va/receive/VaMessageResp;->getText()Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object v1

    .line 88
    goto :goto_1

    .line 89
    :cond_3
    move-object v1, v3

    .line 90
    :goto_1
    const/4 v4, 0x0

    .line 91
    if-eqz v1, :cond_5

    .line 92
    .line 93
    invoke-static {v1}, Lkotlin/text/StringsKt;->s0(Ljava/lang/CharSequence;)Z

    .line 94
    .line 95
    .line 96
    move-result v1

    .line 97
    if-eqz v1, :cond_4

    .line 98
    .line 99
    goto :goto_2

    .line 100
    :cond_4
    const/4 v1, 0x0

    .line 101
    goto :goto_3

    .line 102
    :cond_5
    :goto_2
    const/4 v1, 0x1

    .line 103
    :goto_3
    xor-int/2addr v1, v2

    .line 104
    invoke-static {v0, v1}, Lg0g;->j(Landroid/view/View;Z)V

    .line 105
    .line 106
    .line 107
    iget-object v0, p0, Lteam/opay/sme/va/receive/staticAccount/home/OldUserVAFragment$vaModelMessage$1;->this$0:Lteam/opay/sme/va/receive/staticAccount/home/OldUserVAFragment;

    .line 108
    .line 109
    invoke-static {v0}, Lteam/opay/sme/va/receive/staticAccount/home/OldUserVAFragment;->u0(Lteam/opay/sme/va/receive/staticAccount/home/OldUserVAFragment;)Lixd;

    .line 110
    .line 111
    .line 112
    move-result-object v0

    .line 113
    iget-object v0, v0, Lixd;->D:Landroidx/appcompat/widget/AppCompatTextView;

    .line 114
    .line 115
    invoke-virtual {p1}, Lteam/opay/core/http/HttpResult$Success;->getValue()Ljava/lang/Object;

    .line 116
    .line 117
    .line 118
    move-result-object v1

    .line 119
    check-cast v1, Lteam/opay/sme/va/receive/VaMessageResp;

    .line 120
    .line 121
    if-eqz v1, :cond_6

    .line 122
    .line 123
    invoke-virtual {v1}, Lteam/opay/sme/va/receive/VaMessageResp;->getText()Ljava/lang/String;

    .line 124
    .line 125
    .line 126
    move-result-object v3

    .line 127
    :cond_6
    if-nez v3, :cond_7

    .line 128
    .line 129
    const-string v3, ""

    .line 130
    .line 131
    :cond_7
    invoke-static {v3, v4}, Lf47;->a(Ljava/lang/String;I)Landroid/text/Spanned;

    .line 132
    .line 133
    .line 134
    move-result-object v1

    .line 135
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 136
    .line 137
    .line 138
    iget-object v0, p0, Lteam/opay/sme/va/receive/staticAccount/home/OldUserVAFragment$vaModelMessage$1;->this$0:Lteam/opay/sme/va/receive/staticAccount/home/OldUserVAFragment;

    .line 139
    .line 140
    invoke-static {v0}, Lteam/opay/sme/va/receive/staticAccount/home/OldUserVAFragment;->u0(Lteam/opay/sme/va/receive/staticAccount/home/OldUserVAFragment;)Lixd;

    .line 141
    .line 142
    .line 143
    move-result-object v0

    .line 144
    iget-object v0, v0, Lixd;->L:Landroid/view/View;

    .line 145
    .line 146
    invoke-virtual {p1}, Lteam/opay/core/http/HttpResult$Success;->getValue()Ljava/lang/Object;

    .line 147
    .line 148
    .line 149
    move-result-object p1

    .line 150
    invoke-virtual {v0, p1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 151
    .line 152
    .line 153
    goto :goto_4

    .line 154
    :cond_8
    iget-object p1, p0, Lteam/opay/sme/va/receive/staticAccount/home/OldUserVAFragment$vaModelMessage$1;->this$0:Lteam/opay/sme/va/receive/staticAccount/home/OldUserVAFragment;

    .line 155
    .line 156
    invoke-static {p1}, Lteam/opay/sme/va/receive/staticAccount/home/OldUserVAFragment;->u0(Lteam/opay/sme/va/receive/staticAccount/home/OldUserVAFragment;)Lixd;

    .line 157
    .line 158
    .line 159
    move-result-object p1

    .line 160
    iget-object p1, p1, Lixd;->m:Landroidx/constraintlayout/widget/Group;

    .line 161
    .line 162
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 163
    .line 164
    .line 165
    invoke-static {p1}, Lg0g;->d(Landroid/view/View;)V

    .line 166
    .line 167
    .line 168
    :goto_4
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 169
    .line 170
    return-object p1
.end method
