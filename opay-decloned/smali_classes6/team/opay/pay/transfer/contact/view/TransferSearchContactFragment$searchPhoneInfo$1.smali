.class final Lteam/opay/pay/transfer/contact/view/TransferSearchContactFragment$searchPhoneInfo$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "TransferSearchContactFragment.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lteam/opay/pay/transfer/contact/view/TransferSearchContactFragment;->k0(Ljava/lang/String;)V
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
    c = "team.opay.pay.transfer.contact.view.TransferSearchContactFragment$searchPhoneInfo$1"
    f = "TransferSearchContactFragment.kt"
    l = {
        0x11e
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $overTime:Lkotlin/jvm/internal/Ref$BooleanRef;

.field final synthetic $phone:Ljava/lang/String;

.field private synthetic L$0:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lteam/opay/pay/transfer/contact/view/TransferSearchContactFragment;


# direct methods
.method public constructor <init>(Lkotlin/jvm/internal/Ref$BooleanRef;Ljava/lang/String;Lteam/opay/pay/transfer/contact/view/TransferSearchContactFragment;Ljr2;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/internal/Ref$BooleanRef;",
            "Ljava/lang/String;",
            "Lteam/opay/pay/transfer/contact/view/TransferSearchContactFragment;",
            "Ljr2<",
            "-",
            "Lteam/opay/pay/transfer/contact/view/TransferSearchContactFragment$searchPhoneInfo$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lteam/opay/pay/transfer/contact/view/TransferSearchContactFragment$searchPhoneInfo$1;->$overTime:Lkotlin/jvm/internal/Ref$BooleanRef;

    .line 2
    .line 3
    iput-object p2, p0, Lteam/opay/pay/transfer/contact/view/TransferSearchContactFragment$searchPhoneInfo$1;->$phone:Ljava/lang/String;

    .line 4
    .line 5
    iput-object p3, p0, Lteam/opay/pay/transfer/contact/view/TransferSearchContactFragment$searchPhoneInfo$1;->this$0:Lteam/opay/pay/transfer/contact/view/TransferSearchContactFragment;

    .line 6
    .line 7
    const/4 p1, 0x2

    .line 8
    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILjr2;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Ljr2;)Ljr2;
    .locals 4
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
    new-instance v0, Lteam/opay/pay/transfer/contact/view/TransferSearchContactFragment$searchPhoneInfo$1;

    .line 2
    .line 3
    iget-object v1, p0, Lteam/opay/pay/transfer/contact/view/TransferSearchContactFragment$searchPhoneInfo$1;->$overTime:Lkotlin/jvm/internal/Ref$BooleanRef;

    .line 4
    .line 5
    iget-object v2, p0, Lteam/opay/pay/transfer/contact/view/TransferSearchContactFragment$searchPhoneInfo$1;->$phone:Ljava/lang/String;

    .line 6
    .line 7
    iget-object v3, p0, Lteam/opay/pay/transfer/contact/view/TransferSearchContactFragment$searchPhoneInfo$1;->this$0:Lteam/opay/pay/transfer/contact/view/TransferSearchContactFragment;

    .line 8
    .line 9
    invoke-direct {v0, v1, v2, v3, p2}, Lteam/opay/pay/transfer/contact/view/TransferSearchContactFragment$searchPhoneInfo$1;-><init>(Lkotlin/jvm/internal/Ref$BooleanRef;Ljava/lang/String;Lteam/opay/pay/transfer/contact/view/TransferSearchContactFragment;Ljr2;)V

    .line 10
    .line 11
    .line 12
    iput-object p1, v0, Lteam/opay/pay/transfer/contact/view/TransferSearchContactFragment$searchPhoneInfo$1;->L$0:Ljava/lang/Object;

    .line 13
    .line 14
    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2
    check-cast p1, Lzr2;

    check-cast p2, Ljr2;

    invoke-virtual {p0, p1, p2}, Lteam/opay/pay/transfer/contact/view/TransferSearchContactFragment$searchPhoneInfo$1;->invoke(Lzr2;Ljr2;)Ljava/lang/Object;

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
    invoke-virtual {p0, p1, p2}, Lteam/opay/pay/transfer/contact/view/TransferSearchContactFragment$searchPhoneInfo$1;->create(Ljava/lang/Object;Ljr2;)Ljr2;

    move-result-object p1

    check-cast p1, Lteam/opay/pay/transfer/contact/view/TransferSearchContactFragment$searchPhoneInfo$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lteam/opay/pay/transfer/contact/view/TransferSearchContactFragment$searchPhoneInfo$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 41

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->e()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    iget v2, v0, Lteam/opay/pay/transfer/contact/view/TransferSearchContactFragment$searchPhoneInfo$1;->label:I

    .line 8
    .line 9
    const/4 v3, 0x1

    .line 10
    if-eqz v2, :cond_1

    .line 11
    .line 12
    if-ne v2, v3, :cond_0

    .line 13
    .line 14
    iget-object v1, v0, Lteam/opay/pay/transfer/contact/view/TransferSearchContactFragment$searchPhoneInfo$1;->L$0:Ljava/lang/Object;

    .line 15
    .line 16
    check-cast v1, Lzr2;

    .line 17
    .line 18
    invoke-static/range {p1 .. p1}, Lkotlin/d;->b(Ljava/lang/Object;)V

    .line 19
    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 23
    .line 24
    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    .line 25
    .line 26
    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    throw v1

    .line 30
    :cond_1
    invoke-static/range {p1 .. p1}, Lkotlin/d;->b(Ljava/lang/Object;)V

    .line 31
    .line 32
    .line 33
    iget-object v2, v0, Lteam/opay/pay/transfer/contact/view/TransferSearchContactFragment$searchPhoneInfo$1;->L$0:Ljava/lang/Object;

    .line 34
    .line 35
    check-cast v2, Lzr2;

    .line 36
    .line 37
    iput-object v2, v0, Lteam/opay/pay/transfer/contact/view/TransferSearchContactFragment$searchPhoneInfo$1;->L$0:Ljava/lang/Object;

    .line 38
    .line 39
    iput v3, v0, Lteam/opay/pay/transfer/contact/view/TransferSearchContactFragment$searchPhoneInfo$1;->label:I

    .line 40
    .line 41
    const-wide/16 v4, 0x7d0

    .line 42
    .line 43
    invoke-static {v4, v5, v0}, Lkotlinx/coroutines/DelayKt;->b(JLjr2;)Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object v4

    .line 47
    if-ne v4, v1, :cond_2

    .line 48
    .line 49
    return-object v1

    .line 50
    :cond_2
    move-object v1, v2

    .line 51
    :goto_0
    invoke-static {v1}, Lkotlinx/coroutines/g;->h(Lzr2;)Z

    .line 52
    .line 53
    .line 54
    move-result v1

    .line 55
    if-nez v1, :cond_3

    .line 56
    .line 57
    sget-object v1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 58
    .line 59
    return-object v1

    .line 60
    :cond_3
    iget-object v1, v0, Lteam/opay/pay/transfer/contact/view/TransferSearchContactFragment$searchPhoneInfo$1;->$overTime:Lkotlin/jvm/internal/Ref$BooleanRef;

    .line 61
    .line 62
    iput-boolean v3, v1, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    .line 63
    .line 64
    new-instance v1, Lteam/opay/pay/transfer/contact/bean/TransferContactData;

    .line 65
    .line 66
    move-object v4, v1

    .line 67
    const/4 v2, 0x7

    .line 68
    invoke-static {v2}, Ldf1;->d(I)Ljava/lang/Integer;

    .line 69
    .line 70
    .line 71
    move-result-object v6

    .line 72
    iget-object v9, v0, Lteam/opay/pay/transfer/contact/view/TransferSearchContactFragment$searchPhoneInfo$1;->$phone:Ljava/lang/String;

    .line 73
    .line 74
    const/16 v39, 0x1

    .line 75
    .line 76
    const/16 v40, 0x0

    .line 77
    .line 78
    const/4 v5, 0x0

    .line 79
    const/4 v7, 0x0

    .line 80
    const/4 v8, 0x0

    .line 81
    const/4 v10, 0x0

    .line 82
    const/4 v11, 0x0

    .line 83
    const/4 v12, 0x0

    .line 84
    const/4 v13, 0x0

    .line 85
    const/4 v14, 0x0

    .line 86
    const/4 v15, 0x0

    .line 87
    const/16 v16, 0x0

    .line 88
    .line 89
    const/16 v17, 0x0

    .line 90
    .line 91
    const/16 v18, 0x0

    .line 92
    .line 93
    const/16 v19, 0x0

    .line 94
    .line 95
    const/16 v20, 0x0

    .line 96
    .line 97
    const/16 v21, 0x0

    .line 98
    .line 99
    const/16 v22, 0x0

    .line 100
    .line 101
    const/16 v23, 0x0

    .line 102
    .line 103
    const/16 v24, 0x0

    .line 104
    .line 105
    const/16 v25, 0x0

    .line 106
    .line 107
    const/16 v26, 0x0

    .line 108
    .line 109
    const/16 v27, 0x0

    .line 110
    .line 111
    const/16 v28, 0x0

    .line 112
    .line 113
    const/16 v29, 0x0

    .line 114
    .line 115
    const/16 v30, 0x0

    .line 116
    .line 117
    const/16 v31, 0x0

    .line 118
    .line 119
    const/16 v32, 0x0

    .line 120
    .line 121
    const/16 v33, 0x0

    .line 122
    .line 123
    const/16 v34, 0x0

    .line 124
    .line 125
    const/16 v35, 0x0

    .line 126
    .line 127
    const/16 v36, 0x0

    .line 128
    .line 129
    const/16 v37, 0x0

    .line 130
    .line 131
    const/16 v38, -0x13

    .line 132
    .line 133
    invoke-direct/range {v4 .. v40}, Lteam/opay/pay/transfer/contact/bean/TransferContactData;-><init>(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Lteam/opay/pay/transfer/contact/bean/TransferOpayContact;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Lteam/opay/core/api/graphql/StampDutyInfo;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 134
    .line 135
    .line 136
    iget-object v2, v0, Lteam/opay/pay/transfer/contact/view/TransferSearchContactFragment$searchPhoneInfo$1;->this$0:Lteam/opay/pay/transfer/contact/view/TransferSearchContactFragment;

    .line 137
    .line 138
    invoke-static {v2}, Lteam/opay/pay/transfer/contact/view/TransferSearchContactFragment;->T(Lteam/opay/pay/transfer/contact/view/TransferSearchContactFragment;)Lteam/opay/pay/transfer/contact/adapter/TransferContactSearchListAdapter;

    .line 139
    .line 140
    .line 141
    move-result-object v2

    .line 142
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->e(Ljava/lang/Object;)Ljava/util/List;

    .line 143
    .line 144
    .line 145
    move-result-object v1

    .line 146
    const/4 v4, 0x2

    .line 147
    invoke-static {v2, v1, v5, v4, v5}, Lteam/opay/pay/transfer/contact/adapter/TransferContactSearchListAdapter;->t(Lteam/opay/pay/transfer/contact/adapter/TransferContactSearchListAdapter;Ljava/util/List;Ljava/lang/String;ILjava/lang/Object;)V

    .line 148
    .line 149
    .line 150
    iget-object v1, v0, Lteam/opay/pay/transfer/contact/view/TransferSearchContactFragment$searchPhoneInfo$1;->this$0:Lteam/opay/pay/transfer/contact/view/TransferSearchContactFragment;

    .line 151
    .line 152
    invoke-virtual {v1}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 153
    .line 154
    .line 155
    move-result-object v1

    .line 156
    check-cast v1, Lti6;

    .line 157
    .line 158
    iget-object v1, v1, Lti6;->e:Landroid/widget/LinearLayout;

    .line 159
    .line 160
    if-eqz v1, :cond_4

    .line 161
    .line 162
    invoke-static {v1}, Lteam/opay/core/android/ViewKt;->e(Landroid/view/View;)V

    .line 163
    .line 164
    .line 165
    :cond_4
    iget-object v1, v0, Lteam/opay/pay/transfer/contact/view/TransferSearchContactFragment$searchPhoneInfo$1;->this$0:Lteam/opay/pay/transfer/contact/view/TransferSearchContactFragment;

    .line 166
    .line 167
    invoke-virtual {v1}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 168
    .line 169
    .line 170
    move-result-object v1

    .line 171
    check-cast v1, Lti6;

    .line 172
    .line 173
    iget-object v1, v1, Lti6;->g:Landroidx/appcompat/widget/AppCompatEditText;

    .line 174
    .line 175
    if-eqz v1, :cond_5

    .line 176
    .line 177
    invoke-virtual {v1, v3}, Landroid/view/View;->setEnabled(Z)V

    .line 178
    .line 179
    .line 180
    :cond_5
    sget-object v1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 181
    .line 182
    return-object v1
.end method
