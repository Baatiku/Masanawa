.class final Lteam/opay/pay/transfer/contact/requestmoney/TransferContactListFragment$refreshUI$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "TransferContactListFragment.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lteam/opay/pay/transfer/contact/requestmoney/TransferContactListFragment;->G0(Ljr2;)Ljava/lang/Object;
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
    c = "team.opay.pay.transfer.contact.requestmoney.TransferContactListFragment$refreshUI$2"
    f = "TransferContactListFragment.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field label:I

.field final synthetic this$0:Lteam/opay/pay/transfer/contact/requestmoney/TransferContactListFragment;


# direct methods
.method public constructor <init>(Lteam/opay/pay/transfer/contact/requestmoney/TransferContactListFragment;Ljr2;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lteam/opay/pay/transfer/contact/requestmoney/TransferContactListFragment;",
            "Ljr2<",
            "-",
            "Lteam/opay/pay/transfer/contact/requestmoney/TransferContactListFragment$refreshUI$2;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lteam/opay/pay/transfer/contact/requestmoney/TransferContactListFragment$refreshUI$2;->this$0:Lteam/opay/pay/transfer/contact/requestmoney/TransferContactListFragment;

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
    new-instance p1, Lteam/opay/pay/transfer/contact/requestmoney/TransferContactListFragment$refreshUI$2;

    .line 2
    .line 3
    iget-object v0, p0, Lteam/opay/pay/transfer/contact/requestmoney/TransferContactListFragment$refreshUI$2;->this$0:Lteam/opay/pay/transfer/contact/requestmoney/TransferContactListFragment;

    .line 4
    .line 5
    invoke-direct {p1, v0, p2}, Lteam/opay/pay/transfer/contact/requestmoney/TransferContactListFragment$refreshUI$2;-><init>(Lteam/opay/pay/transfer/contact/requestmoney/TransferContactListFragment;Ljr2;)V

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

    invoke-virtual {p0, p1, p2}, Lteam/opay/pay/transfer/contact/requestmoney/TransferContactListFragment$refreshUI$2;->invoke(Lzr2;Ljr2;)Ljava/lang/Object;

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
    invoke-virtual {p0, p1, p2}, Lteam/opay/pay/transfer/contact/requestmoney/TransferContactListFragment$refreshUI$2;->create(Ljava/lang/Object;Ljr2;)Ljr2;

    move-result-object p1

    check-cast p1, Lteam/opay/pay/transfer/contact/requestmoney/TransferContactListFragment$refreshUI$2;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lteam/opay/pay/transfer/contact/requestmoney/TransferContactListFragment$refreshUI$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->e()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    iget v0, p0, Lteam/opay/pay/transfer/contact/requestmoney/TransferContactListFragment$refreshUI$2;->label:I

    .line 5
    .line 6
    if-nez v0, :cond_4

    .line 7
    .line 8
    invoke-static {p1}, Lkotlin/d;->b(Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    iget-object p1, p0, Lteam/opay/pay/transfer/contact/requestmoney/TransferContactListFragment$refreshUI$2;->this$0:Lteam/opay/pay/transfer/contact/requestmoney/TransferContactListFragment;

    .line 12
    .line 13
    invoke-static {p1}, Lteam/opay/pay/transfer/contact/requestmoney/TransferContactListFragment;->s0(Lteam/opay/pay/transfer/contact/requestmoney/TransferContactListFragment;)V

    .line 14
    .line 15
    .line 16
    iget-object p1, p0, Lteam/opay/pay/transfer/contact/requestmoney/TransferContactListFragment$refreshUI$2;->this$0:Lteam/opay/pay/transfer/contact/requestmoney/TransferContactListFragment;

    .line 17
    .line 18
    invoke-static {p1}, Lteam/opay/pay/transfer/contact/requestmoney/TransferContactListFragment;->b0(Lteam/opay/pay/transfer/contact/requestmoney/TransferContactListFragment;)Ljava/util/List;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    const-string v0, "access$getAllContactList$p(...)"

    .line 23
    .line 24
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    iget-object v0, p0, Lteam/opay/pay/transfer/contact/requestmoney/TransferContactListFragment$refreshUI$2;->this$0:Lteam/opay/pay/transfer/contact/requestmoney/TransferContactListFragment;

    .line 28
    .line 29
    monitor-enter p1

    .line 30
    :try_start_0
    invoke-static {v0}, Lteam/opay/pay/transfer/contact/requestmoney/TransferContactListFragment;->g0(Lteam/opay/pay/transfer/contact/requestmoney/TransferContactListFragment;)Lteam/opay/pay/transfer/contact/bean/TransferContactData;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    const/4 v2, 0x1

    .line 35
    if-eqz v1, :cond_0

    .line 36
    .line 37
    invoke-static {v0}, Lteam/opay/pay/transfer/contact/requestmoney/TransferContactListFragment;->j0(Lteam/opay/pay/transfer/contact/requestmoney/TransferContactListFragment;)Lteam/opay/pay/transfer/contact/adapter/TransferContactListAdapter;

    .line 38
    .line 39
    .line 40
    move-result-object v3

    .line 41
    new-instance v4, Ljava/util/ArrayList;

    .line 42
    .line 43
    invoke-direct {v4, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 47
    .line 48
    .line 49
    invoke-virtual {v3, v4}, Lteam/opay/pay/transfer/contact/adapter/TransferContactListAdapter;->setData(Ljava/util/List;)V

    .line 50
    .line 51
    .line 52
    goto :goto_0

    .line 53
    :catchall_0
    move-exception v0

    .line 54
    goto :goto_2

    .line 55
    :cond_0
    :goto_0
    invoke-static {v0}, Lteam/opay/pay/transfer/contact/requestmoney/TransferContactListFragment;->d0(Lteam/opay/pay/transfer/contact/requestmoney/TransferContactListFragment;)Ljava/util/List;

    .line 56
    .line 57
    .line 58
    move-result-object v1

    .line 59
    if-eqz v1, :cond_3

    .line 60
    .line 61
    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    .line 62
    .line 63
    .line 64
    move-result v1

    .line 65
    if-eqz v1, :cond_1

    .line 66
    .line 67
    goto :goto_1

    .line 68
    :cond_1
    invoke-virtual {v0}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 69
    .line 70
    .line 71
    move-result-object v1

    .line 72
    check-cast v1, Lni6;

    .line 73
    .line 74
    iget-object v1, v1, Lni6;->o:Lteam/opay/core/android/views/InitialsLetterBar;

    .line 75
    .line 76
    if-eqz v1, :cond_2

    .line 77
    .line 78
    invoke-static {v1}, Lteam/opay/core/android/ViewKt;->v(Landroid/view/View;)V

    .line 79
    .line 80
    .line 81
    invoke-virtual {v0}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 82
    .line 83
    .line 84
    move-result-object v3

    .line 85
    check-cast v3, Lni6;

    .line 86
    .line 87
    iget-object v3, v3, Lni6;->o:Lteam/opay/core/android/views/InitialsLetterBar;

    .line 88
    .line 89
    invoke-static {v0}, Lteam/opay/pay/transfer/contact/requestmoney/TransferContactListFragment;->i0(Lteam/opay/pay/transfer/contact/requestmoney/TransferContactListFragment;)Ljava/util/List;

    .line 90
    .line 91
    .line 92
    move-result-object v4

    .line 93
    invoke-virtual {v3, v4}, Lteam/opay/core/android/views/InitialsLetterBar;->setLetters(Ljava/util/List;)V

    .line 94
    .line 95
    .line 96
    invoke-static {v0}, Lteam/opay/pay/transfer/contact/requestmoney/TransferContactListFragment;->i0(Lteam/opay/pay/transfer/contact/requestmoney/TransferContactListFragment;)Ljava/util/List;

    .line 97
    .line 98
    .line 99
    move-result-object v3

    .line 100
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 101
    .line 102
    .line 103
    move-result v3

    .line 104
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 105
    .line 106
    .line 107
    move-result-object v4

    .line 108
    const/16 v5, 0x10

    .line 109
    .line 110
    invoke-static {v5}, Ljmf;->d(I)I

    .line 111
    .line 112
    .line 113
    move-result v5

    .line 114
    mul-int v5, v5, v3

    .line 115
    .line 116
    const/16 v6, 0x8

    .line 117
    .line 118
    invoke-static {v6}, Ljmf;->d(I)I

    .line 119
    .line 120
    .line 121
    move-result v6

    .line 122
    sub-int/2addr v3, v2

    .line 123
    mul-int v6, v6, v3

    .line 124
    .line 125
    add-int/2addr v5, v6

    .line 126
    iput v5, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 127
    .line 128
    invoke-virtual {v1, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 129
    .line 130
    .line 131
    :cond_2
    invoke-static {v0}, Lteam/opay/pay/transfer/contact/requestmoney/TransferContactListFragment;->j0(Lteam/opay/pay/transfer/contact/requestmoney/TransferContactListFragment;)Lteam/opay/pay/transfer/contact/adapter/TransferContactListAdapter;

    .line 132
    .line 133
    .line 134
    move-result-object v1

    .line 135
    invoke-static {v0}, Lteam/opay/pay/transfer/contact/requestmoney/TransferContactListFragment;->d0(Lteam/opay/pay/transfer/contact/requestmoney/TransferContactListFragment;)Ljava/util/List;

    .line 136
    .line 137
    .line 138
    move-result-object v2

    .line 139
    invoke-static {v0}, Lteam/opay/pay/transfer/contact/requestmoney/TransferContactListFragment;->i0(Lteam/opay/pay/transfer/contact/requestmoney/TransferContactListFragment;)Ljava/util/List;

    .line 140
    .line 141
    .line 142
    move-result-object v0

    .line 143
    invoke-virtual {v1, v2, v0}, Lteam/opay/pay/transfer/contact/adapter/TransferContactListAdapter;->q(Ljava/util/List;Ljava/util/List;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 144
    .line 145
    .line 146
    monitor-exit p1

    .line 147
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 148
    .line 149
    return-object p1

    .line 150
    :cond_3
    :goto_1
    :try_start_1
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 151
    .line 152
    monitor-exit p1

    .line 153
    return-object v0

    .line 154
    :goto_2
    monitor-exit p1

    .line 155
    throw v0

    .line 156
    :cond_4
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 157
    .line 158
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 159
    .line 160
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 161
    .line 162
    .line 163
    throw p1
.end method
