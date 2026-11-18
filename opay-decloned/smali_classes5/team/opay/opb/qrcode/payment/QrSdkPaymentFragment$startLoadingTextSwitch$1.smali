.class final Lteam/opay/opb/qrcode/payment/QrSdkPaymentFragment$startLoadingTextSwitch$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "QrSdkPaymentFragment.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lteam/opay/opb/qrcode/payment/QrSdkPaymentFragment;->Q0()V
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
    c = "team.opay.opb.qrcode.payment.QrSdkPaymentFragment$startLoadingTextSwitch$1"
    f = "QrSdkPaymentFragment.kt"
    l = {
        0x149
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field private synthetic L$0:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lteam/opay/opb/qrcode/payment/QrSdkPaymentFragment;


# direct methods
.method public constructor <init>(Lteam/opay/opb/qrcode/payment/QrSdkPaymentFragment;Ljr2;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lteam/opay/opb/qrcode/payment/QrSdkPaymentFragment;",
            "Ljr2<",
            "-",
            "Lteam/opay/opb/qrcode/payment/QrSdkPaymentFragment$startLoadingTextSwitch$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lteam/opay/opb/qrcode/payment/QrSdkPaymentFragment$startLoadingTextSwitch$1;->this$0:Lteam/opay/opb/qrcode/payment/QrSdkPaymentFragment;

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
    new-instance v0, Lteam/opay/opb/qrcode/payment/QrSdkPaymentFragment$startLoadingTextSwitch$1;

    .line 2
    .line 3
    iget-object v1, p0, Lteam/opay/opb/qrcode/payment/QrSdkPaymentFragment$startLoadingTextSwitch$1;->this$0:Lteam/opay/opb/qrcode/payment/QrSdkPaymentFragment;

    .line 4
    .line 5
    invoke-direct {v0, v1, p2}, Lteam/opay/opb/qrcode/payment/QrSdkPaymentFragment$startLoadingTextSwitch$1;-><init>(Lteam/opay/opb/qrcode/payment/QrSdkPaymentFragment;Ljr2;)V

    .line 6
    .line 7
    .line 8
    iput-object p1, v0, Lteam/opay/opb/qrcode/payment/QrSdkPaymentFragment$startLoadingTextSwitch$1;->L$0:Ljava/lang/Object;

    .line 9
    .line 10
    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2
    check-cast p1, Lzr2;

    check-cast p2, Ljr2;

    invoke-virtual {p0, p1, p2}, Lteam/opay/opb/qrcode/payment/QrSdkPaymentFragment$startLoadingTextSwitch$1;->invoke(Lzr2;Ljr2;)Ljava/lang/Object;

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
    invoke-virtual {p0, p1, p2}, Lteam/opay/opb/qrcode/payment/QrSdkPaymentFragment$startLoadingTextSwitch$1;->create(Ljava/lang/Object;Ljr2;)Ljr2;

    move-result-object p1

    check-cast p1, Lteam/opay/opb/qrcode/payment/QrSdkPaymentFragment$startLoadingTextSwitch$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lteam/opay/opb/qrcode/payment/QrSdkPaymentFragment$startLoadingTextSwitch$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->e()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget v1, p0, Lteam/opay/opb/qrcode/payment/QrSdkPaymentFragment$startLoadingTextSwitch$1;->label:I

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
    iget-object v1, p0, Lteam/opay/opb/qrcode/payment/QrSdkPaymentFragment$startLoadingTextSwitch$1;->L$0:Ljava/lang/Object;

    .line 13
    .line 14
    check-cast v1, Lzr2;

    .line 15
    .line 16
    invoke-static {p1}, Lkotlin/d;->b(Ljava/lang/Object;)V

    .line 17
    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 21
    .line 22
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 23
    .line 24
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    throw p1

    .line 28
    :cond_1
    invoke-static {p1}, Lkotlin/d;->b(Ljava/lang/Object;)V

    .line 29
    .line 30
    .line 31
    iget-object p1, p0, Lteam/opay/opb/qrcode/payment/QrSdkPaymentFragment$startLoadingTextSwitch$1;->L$0:Ljava/lang/Object;

    .line 32
    .line 33
    check-cast p1, Lzr2;

    .line 34
    .line 35
    move-object v1, p1

    .line 36
    :cond_2
    :goto_0
    invoke-static {v1}, Lkotlinx/coroutines/g;->h(Lzr2;)Z

    .line 37
    .line 38
    .line 39
    move-result p1

    .line 40
    if-eqz p1, :cond_4

    .line 41
    .line 42
    iget-object p1, p0, Lteam/opay/opb/qrcode/payment/QrSdkPaymentFragment$startLoadingTextSwitch$1;->this$0:Lteam/opay/opb/qrcode/payment/QrSdkPaymentFragment;

    .line 43
    .line 44
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->isAdded()Z

    .line 45
    .line 46
    .line 47
    move-result p1

    .line 48
    if-eqz p1, :cond_4

    .line 49
    .line 50
    iget-object p1, p0, Lteam/opay/opb/qrcode/payment/QrSdkPaymentFragment$startLoadingTextSwitch$1;->this$0:Lteam/opay/opb/qrcode/payment/QrSdkPaymentFragment;

    .line 51
    .line 52
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->isRemoving()Z

    .line 53
    .line 54
    .line 55
    move-result p1

    .line 56
    if-nez p1, :cond_4

    .line 57
    .line 58
    iget-object p1, p0, Lteam/opay/opb/qrcode/payment/QrSdkPaymentFragment$startLoadingTextSwitch$1;->this$0:Lteam/opay/opb/qrcode/payment/QrSdkPaymentFragment;

    .line 59
    .line 60
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->isDetached()Z

    .line 61
    .line 62
    .line 63
    move-result p1

    .line 64
    if-nez p1, :cond_4

    .line 65
    .line 66
    iget-object p1, p0, Lteam/opay/opb/qrcode/payment/QrSdkPaymentFragment$startLoadingTextSwitch$1;->this$0:Lteam/opay/opb/qrcode/payment/QrSdkPaymentFragment;

    .line 67
    .line 68
    invoke-static {p1}, Lteam/opay/opb/qrcode/payment/QrSdkPaymentFragment;->Q(Lteam/opay/opb/qrcode/payment/QrSdkPaymentFragment;)Lkac;

    .line 69
    .line 70
    .line 71
    move-result-object p1

    .line 72
    iget-object p1, p1, Lkac;->p:Landroidx/appcompat/widget/AppCompatTextView;

    .line 73
    .line 74
    iget-object v3, p0, Lteam/opay/opb/qrcode/payment/QrSdkPaymentFragment$startLoadingTextSwitch$1;->this$0:Lteam/opay/opb/qrcode/payment/QrSdkPaymentFragment;

    .line 75
    .line 76
    invoke-static {v3}, Lteam/opay/opb/qrcode/payment/QrSdkPaymentFragment;->T(Lteam/opay/opb/qrcode/payment/QrSdkPaymentFragment;)Ljava/util/List;

    .line 77
    .line 78
    .line 79
    move-result-object v4

    .line 80
    iget-object v5, p0, Lteam/opay/opb/qrcode/payment/QrSdkPaymentFragment$startLoadingTextSwitch$1;->this$0:Lteam/opay/opb/qrcode/payment/QrSdkPaymentFragment;

    .line 81
    .line 82
    invoke-static {v5}, Lteam/opay/opb/qrcode/payment/QrSdkPaymentFragment;->R(Lteam/opay/opb/qrcode/payment/QrSdkPaymentFragment;)I

    .line 83
    .line 84
    .line 85
    move-result v5

    .line 86
    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 87
    .line 88
    .line 89
    move-result-object v4

    .line 90
    check-cast v4, Ljava/lang/Number;

    .line 91
    .line 92
    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    .line 93
    .line 94
    .line 95
    move-result v4

    .line 96
    invoke-virtual {v3, v4}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object v3

    .line 100
    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 101
    .line 102
    .line 103
    iget-object p1, p0, Lteam/opay/opb/qrcode/payment/QrSdkPaymentFragment$startLoadingTextSwitch$1;->this$0:Lteam/opay/opb/qrcode/payment/QrSdkPaymentFragment;

    .line 104
    .line 105
    invoke-static {p1}, Lteam/opay/opb/qrcode/payment/QrSdkPaymentFragment;->Q(Lteam/opay/opb/qrcode/payment/QrSdkPaymentFragment;)Lkac;

    .line 106
    .line 107
    .line 108
    move-result-object p1

    .line 109
    iget-object p1, p1, Lkac;->q:Landroidx/appcompat/widget/AppCompatTextView;

    .line 110
    .line 111
    const-string v3, "tvLoadingDesc"

    .line 112
    .line 113
    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 114
    .line 115
    .line 116
    iget-object v3, p0, Lteam/opay/opb/qrcode/payment/QrSdkPaymentFragment$startLoadingTextSwitch$1;->this$0:Lteam/opay/opb/qrcode/payment/QrSdkPaymentFragment;

    .line 117
    .line 118
    invoke-static {v3}, Lteam/opay/opb/qrcode/payment/QrSdkPaymentFragment;->R(Lteam/opay/opb/qrcode/payment/QrSdkPaymentFragment;)I

    .line 119
    .line 120
    .line 121
    move-result v3

    .line 122
    if-ne v3, v2, :cond_3

    .line 123
    .line 124
    const/4 v3, 0x1

    .line 125
    goto :goto_1

    .line 126
    :cond_3
    const/4 v3, 0x0

    .line 127
    :goto_1
    invoke-static {p1, v3}, Lg0g;->j(Landroid/view/View;Z)V

    .line 128
    .line 129
    .line 130
    iget-object p1, p0, Lteam/opay/opb/qrcode/payment/QrSdkPaymentFragment$startLoadingTextSwitch$1;->this$0:Lteam/opay/opb/qrcode/payment/QrSdkPaymentFragment;

    .line 131
    .line 132
    invoke-static {p1}, Lteam/opay/opb/qrcode/payment/QrSdkPaymentFragment;->R(Lteam/opay/opb/qrcode/payment/QrSdkPaymentFragment;)I

    .line 133
    .line 134
    .line 135
    move-result v3

    .line 136
    add-int/2addr v3, v2

    .line 137
    iget-object v4, p0, Lteam/opay/opb/qrcode/payment/QrSdkPaymentFragment$startLoadingTextSwitch$1;->this$0:Lteam/opay/opb/qrcode/payment/QrSdkPaymentFragment;

    .line 138
    .line 139
    invoke-static {v4}, Lteam/opay/opb/qrcode/payment/QrSdkPaymentFragment;->T(Lteam/opay/opb/qrcode/payment/QrSdkPaymentFragment;)Ljava/util/List;

    .line 140
    .line 141
    .line 142
    move-result-object v4

    .line 143
    invoke-interface {v4}, Ljava/util/List;->size()I

    .line 144
    .line 145
    .line 146
    move-result v4

    .line 147
    rem-int/2addr v3, v4

    .line 148
    invoke-static {p1, v3}, Lteam/opay/opb/qrcode/payment/QrSdkPaymentFragment;->Y(Lteam/opay/opb/qrcode/payment/QrSdkPaymentFragment;I)V

    .line 149
    .line 150
    .line 151
    iput-object v1, p0, Lteam/opay/opb/qrcode/payment/QrSdkPaymentFragment$startLoadingTextSwitch$1;->L$0:Ljava/lang/Object;

    .line 152
    .line 153
    iput v2, p0, Lteam/opay/opb/qrcode/payment/QrSdkPaymentFragment$startLoadingTextSwitch$1;->label:I

    .line 154
    .line 155
    const-wide/16 v3, 0x7d0

    .line 156
    .line 157
    invoke-static {v3, v4, p0}, Lkotlinx/coroutines/DelayKt;->b(JLjr2;)Ljava/lang/Object;

    .line 158
    .line 159
    .line 160
    move-result-object p1

    .line 161
    if-ne p1, v0, :cond_2

    .line 162
    .line 163
    return-object v0

    .line 164
    :cond_4
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 165
    .line 166
    return-object p1
.end method
