.class final Lteam/opay/pay/onboarding/tabs/SignMoreSheetFragment$onDismiss$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SignMoreSheetFragment.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lteam/opay/pay/onboarding/tabs/SignMoreSheetFragment;->onDismiss(Landroid/content/DialogInterface;)V
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
    c = "team.opay.pay.onboarding.tabs.SignMoreSheetFragment$onDismiss$1"
    f = "SignMoreSheetFragment.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field label:I

.field final synthetic this$0:Lteam/opay/pay/onboarding/tabs/SignMoreSheetFragment;


# direct methods
.method public constructor <init>(Lteam/opay/pay/onboarding/tabs/SignMoreSheetFragment;Ljr2;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lteam/opay/pay/onboarding/tabs/SignMoreSheetFragment;",
            "Ljr2<",
            "-",
            "Lteam/opay/pay/onboarding/tabs/SignMoreSheetFragment$onDismiss$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lteam/opay/pay/onboarding/tabs/SignMoreSheetFragment$onDismiss$1;->this$0:Lteam/opay/pay/onboarding/tabs/SignMoreSheetFragment;

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
    new-instance p1, Lteam/opay/pay/onboarding/tabs/SignMoreSheetFragment$onDismiss$1;

    .line 2
    .line 3
    iget-object v0, p0, Lteam/opay/pay/onboarding/tabs/SignMoreSheetFragment$onDismiss$1;->this$0:Lteam/opay/pay/onboarding/tabs/SignMoreSheetFragment;

    .line 4
    .line 5
    invoke-direct {p1, v0, p2}, Lteam/opay/pay/onboarding/tabs/SignMoreSheetFragment$onDismiss$1;-><init>(Lteam/opay/pay/onboarding/tabs/SignMoreSheetFragment;Ljr2;)V

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

    invoke-virtual {p0, p1, p2}, Lteam/opay/pay/onboarding/tabs/SignMoreSheetFragment$onDismiss$1;->invoke(Lzr2;Ljr2;)Ljava/lang/Object;

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
    invoke-virtual {p0, p1, p2}, Lteam/opay/pay/onboarding/tabs/SignMoreSheetFragment$onDismiss$1;->create(Ljava/lang/Object;Ljr2;)Ljr2;

    move-result-object p1

    check-cast p1, Lteam/opay/pay/onboarding/tabs/SignMoreSheetFragment$onDismiss$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lteam/opay/pay/onboarding/tabs/SignMoreSheetFragment$onDismiss$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->e()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    iget v0, p0, Lteam/opay/pay/onboarding/tabs/SignMoreSheetFragment$onDismiss$1;->label:I

    .line 5
    .line 6
    if-nez v0, :cond_3

    .line 7
    .line 8
    invoke-static {p1}, Lkotlin/d;->b(Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    iget-object p1, p0, Lteam/opay/pay/onboarding/tabs/SignMoreSheetFragment$onDismiss$1;->this$0:Lteam/opay/pay/onboarding/tabs/SignMoreSheetFragment;

    .line 12
    .line 13
    invoke-static {p1}, Lteam/opay/pay/onboarding/tabs/SignMoreSheetFragment;->W(Lteam/opay/pay/onboarding/tabs/SignMoreSheetFragment;)I

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    if-lez p1, :cond_0

    .line 18
    .line 19
    iget-object p1, p0, Lteam/opay/pay/onboarding/tabs/SignMoreSheetFragment$onDismiss$1;->this$0:Lteam/opay/pay/onboarding/tabs/SignMoreSheetFragment;

    .line 20
    .line 21
    invoke-static {p1}, Lteam/opay/pay/onboarding/tabs/SignMoreSheetFragment;->U(Lteam/opay/pay/onboarding/tabs/SignMoreSheetFragment;)Lteam/opay/core/settings/SettingsStorage;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    iget-object v0, p0, Lteam/opay/pay/onboarding/tabs/SignMoreSheetFragment$onDismiss$1;->this$0:Lteam/opay/pay/onboarding/tabs/SignMoreSheetFragment;

    .line 26
    .line 27
    invoke-static {v0}, Lteam/opay/pay/onboarding/tabs/SignMoreSheetFragment;->W(Lteam/opay/pay/onboarding/tabs/SignMoreSheetFragment;)I

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    int-to-long v0, v0

    .line 32
    invoke-virtual {p1, v0, v1}, Lteam/opay/core/settings/SettingsStorage;->w0(J)V

    .line 33
    .line 34
    .line 35
    iget-object p1, p0, Lteam/opay/pay/onboarding/tabs/SignMoreSheetFragment$onDismiss$1;->this$0:Lteam/opay/pay/onboarding/tabs/SignMoreSheetFragment;

    .line 36
    .line 37
    invoke-static {p1}, Lteam/opay/pay/onboarding/tabs/SignMoreSheetFragment;->U(Lteam/opay/pay/onboarding/tabs/SignMoreSheetFragment;)Lteam/opay/core/settings/SettingsStorage;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 42
    .line 43
    .line 44
    move-result-wide v0

    .line 45
    invoke-virtual {p1, v0, v1}, Lteam/opay/core/settings/SettingsStorage;->x0(J)V

    .line 46
    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_0
    iget-object p1, p0, Lteam/opay/pay/onboarding/tabs/SignMoreSheetFragment$onDismiss$1;->this$0:Lteam/opay/pay/onboarding/tabs/SignMoreSheetFragment;

    .line 50
    .line 51
    invoke-static {p1}, Lteam/opay/pay/onboarding/tabs/SignMoreSheetFragment;->Z(Lteam/opay/pay/onboarding/tabs/SignMoreSheetFragment;)V

    .line 52
    .line 53
    .line 54
    :goto_0
    iget-object p1, p0, Lteam/opay/pay/onboarding/tabs/SignMoreSheetFragment$onDismiss$1;->this$0:Lteam/opay/pay/onboarding/tabs/SignMoreSheetFragment;

    .line 55
    .line 56
    invoke-static {p1}, Lteam/opay/pay/onboarding/tabs/SignMoreSheetFragment;->V(Lteam/opay/pay/onboarding/tabs/SignMoreSheetFragment;)I

    .line 57
    .line 58
    .line 59
    move-result p1

    .line 60
    if-lez p1, :cond_1

    .line 61
    .line 62
    iget-object p1, p0, Lteam/opay/pay/onboarding/tabs/SignMoreSheetFragment$onDismiss$1;->this$0:Lteam/opay/pay/onboarding/tabs/SignMoreSheetFragment;

    .line 63
    .line 64
    invoke-static {p1}, Lteam/opay/pay/onboarding/tabs/SignMoreSheetFragment;->U(Lteam/opay/pay/onboarding/tabs/SignMoreSheetFragment;)Lteam/opay/core/settings/SettingsStorage;

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    iget-object v0, p0, Lteam/opay/pay/onboarding/tabs/SignMoreSheetFragment$onDismiss$1;->this$0:Lteam/opay/pay/onboarding/tabs/SignMoreSheetFragment;

    .line 69
    .line 70
    invoke-static {v0}, Lteam/opay/pay/onboarding/tabs/SignMoreSheetFragment;->V(Lteam/opay/pay/onboarding/tabs/SignMoreSheetFragment;)I

    .line 71
    .line 72
    .line 73
    move-result v0

    .line 74
    int-to-long v0, v0

    .line 75
    invoke-virtual {p1, v0, v1}, Lteam/opay/core/settings/SettingsStorage;->t0(J)V

    .line 76
    .line 77
    .line 78
    iget-object p1, p0, Lteam/opay/pay/onboarding/tabs/SignMoreSheetFragment$onDismiss$1;->this$0:Lteam/opay/pay/onboarding/tabs/SignMoreSheetFragment;

    .line 79
    .line 80
    invoke-static {p1}, Lteam/opay/pay/onboarding/tabs/SignMoreSheetFragment;->U(Lteam/opay/pay/onboarding/tabs/SignMoreSheetFragment;)Lteam/opay/core/settings/SettingsStorage;

    .line 81
    .line 82
    .line 83
    move-result-object p1

    .line 84
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 85
    .line 86
    .line 87
    move-result-wide v0

    .line 88
    invoke-virtual {p1, v0, v1}, Lteam/opay/core/settings/SettingsStorage;->u0(J)V

    .line 89
    .line 90
    .line 91
    goto :goto_1

    .line 92
    :cond_1
    iget-object p1, p0, Lteam/opay/pay/onboarding/tabs/SignMoreSheetFragment$onDismiss$1;->this$0:Lteam/opay/pay/onboarding/tabs/SignMoreSheetFragment;

    .line 93
    .line 94
    invoke-static {p1}, Lteam/opay/pay/onboarding/tabs/SignMoreSheetFragment;->Y(Lteam/opay/pay/onboarding/tabs/SignMoreSheetFragment;)V

    .line 95
    .line 96
    .line 97
    :goto_1
    iget-object p1, p0, Lteam/opay/pay/onboarding/tabs/SignMoreSheetFragment$onDismiss$1;->this$0:Lteam/opay/pay/onboarding/tabs/SignMoreSheetFragment;

    .line 98
    .line 99
    invoke-static {p1}, Lteam/opay/pay/onboarding/tabs/SignMoreSheetFragment;->X(Lteam/opay/pay/onboarding/tabs/SignMoreSheetFragment;)I

    .line 100
    .line 101
    .line 102
    move-result p1

    .line 103
    if-lez p1, :cond_2

    .line 104
    .line 105
    iget-object p1, p0, Lteam/opay/pay/onboarding/tabs/SignMoreSheetFragment$onDismiss$1;->this$0:Lteam/opay/pay/onboarding/tabs/SignMoreSheetFragment;

    .line 106
    .line 107
    invoke-static {p1}, Lteam/opay/pay/onboarding/tabs/SignMoreSheetFragment;->U(Lteam/opay/pay/onboarding/tabs/SignMoreSheetFragment;)Lteam/opay/core/settings/SettingsStorage;

    .line 108
    .line 109
    .line 110
    move-result-object p1

    .line 111
    iget-object v0, p0, Lteam/opay/pay/onboarding/tabs/SignMoreSheetFragment$onDismiss$1;->this$0:Lteam/opay/pay/onboarding/tabs/SignMoreSheetFragment;

    .line 112
    .line 113
    invoke-static {v0}, Lteam/opay/pay/onboarding/tabs/SignMoreSheetFragment;->X(Lteam/opay/pay/onboarding/tabs/SignMoreSheetFragment;)I

    .line 114
    .line 115
    .line 116
    move-result v0

    .line 117
    int-to-long v0, v0

    .line 118
    invoke-virtual {p1, v0, v1}, Lteam/opay/core/settings/SettingsStorage;->y0(J)V

    .line 119
    .line 120
    .line 121
    iget-object p1, p0, Lteam/opay/pay/onboarding/tabs/SignMoreSheetFragment$onDismiss$1;->this$0:Lteam/opay/pay/onboarding/tabs/SignMoreSheetFragment;

    .line 122
    .line 123
    invoke-static {p1}, Lteam/opay/pay/onboarding/tabs/SignMoreSheetFragment;->U(Lteam/opay/pay/onboarding/tabs/SignMoreSheetFragment;)Lteam/opay/core/settings/SettingsStorage;

    .line 124
    .line 125
    .line 126
    move-result-object p1

    .line 127
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 128
    .line 129
    .line 130
    move-result-wide v0

    .line 131
    invoke-virtual {p1, v0, v1}, Lteam/opay/core/settings/SettingsStorage;->z0(J)V

    .line 132
    .line 133
    .line 134
    goto :goto_2

    .line 135
    :cond_2
    iget-object p1, p0, Lteam/opay/pay/onboarding/tabs/SignMoreSheetFragment$onDismiss$1;->this$0:Lteam/opay/pay/onboarding/tabs/SignMoreSheetFragment;

    .line 136
    .line 137
    invoke-static {p1}, Lteam/opay/pay/onboarding/tabs/SignMoreSheetFragment;->a0(Lteam/opay/pay/onboarding/tabs/SignMoreSheetFragment;)V

    .line 138
    .line 139
    .line 140
    :goto_2
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 141
    .line 142
    return-object p1

    .line 143
    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 144
    .line 145
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 146
    .line 147
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 148
    .line 149
    .line 150
    throw p1
.end method
