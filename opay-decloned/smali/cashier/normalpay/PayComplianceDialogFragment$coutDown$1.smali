.class final Lcashier/normalpay/PayComplianceDialogFragment$coutDown$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "PayComplianceDialogFragment.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcashier/normalpay/PayComplianceDialogFragment;->L()V
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
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\u008a@\u00a2\u0006\u0004\u0008\u0002\u0010\u0003"
    }
    d2 = {
        "Lzr2;",
        "",
        "<anonymous>",
        "(Lzr2;)V"
    }
    k = 0x3
    mv = {
        0x1,
        0x7,
        0x1
    }
.end annotation

.annotation runtime Ln33;
    c = "cashier.normalpay.PayComplianceDialogFragment$coutDown$1"
    f = "PayComplianceDialogFragment.kt"
    l = {
        0xc0
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field label:I

.field final synthetic this$0:Lcashier/normalpay/PayComplianceDialogFragment;


# direct methods
.method public constructor <init>(Lcashier/normalpay/PayComplianceDialogFragment;Ljr2;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcashier/normalpay/PayComplianceDialogFragment;",
            "Ljr2<",
            "-",
            "Lcashier/normalpay/PayComplianceDialogFragment$coutDown$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcashier/normalpay/PayComplianceDialogFragment$coutDown$1;->this$0:Lcashier/normalpay/PayComplianceDialogFragment;

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
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Ljr2;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
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

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    new-instance p1, Lcashier/normalpay/PayComplianceDialogFragment$coutDown$1;

    .line 2
    .line 3
    iget-object v0, p0, Lcashier/normalpay/PayComplianceDialogFragment$coutDown$1;->this$0:Lcashier/normalpay/PayComplianceDialogFragment;

    .line 4
    .line 5
    invoke-direct {p1, v0, p2}, Lcashier/normalpay/PayComplianceDialogFragment$coutDown$1;-><init>(Lcashier/normalpay/PayComplianceDialogFragment;Ljr2;)V

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

    invoke-virtual {p0, p1, p2}, Lcashier/normalpay/PayComplianceDialogFragment$coutDown$1;->invoke(Lzr2;Ljr2;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Lzr2;Ljr2;)Ljava/lang/Object;
    .locals 0
    .param p1    # Lzr2;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljr2;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
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

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Lcashier/normalpay/PayComplianceDialogFragment$coutDown$1;->create(Ljava/lang/Object;Ljr2;)Ljr2;

    move-result-object p1

    check-cast p1, Lcashier/normalpay/PayComplianceDialogFragment$coutDown$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcashier/normalpay/PayComplianceDialogFragment$coutDown$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->e()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget v1, p0, Lcashier/normalpay/PayComplianceDialogFragment$coutDown$1;->label:I

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
    goto :goto_0

    .line 13
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 14
    .line 15
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 16
    .line 17
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    throw p1

    .line 21
    :cond_1
    :goto_0
    invoke-static {p1}, Lkotlin/d;->b(Ljava/lang/Object;)V

    .line 22
    .line 23
    .line 24
    :cond_2
    iget-object p1, p0, Lcashier/normalpay/PayComplianceDialogFragment$coutDown$1;->this$0:Lcashier/normalpay/PayComplianceDialogFragment;

    .line 25
    .line 26
    invoke-static {p1}, Lcashier/normalpay/PayComplianceDialogFragment;->H(Lcashier/normalpay/PayComplianceDialogFragment;)Lcashier/model/PayComplianceViewModel;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    invoke-virtual {p1}, Lcashier/model/PayComplianceViewModel;->v()J

    .line 31
    .line 32
    .line 33
    move-result-wide v3

    .line 34
    const/16 p1, 0x3e8

    .line 35
    .line 36
    int-to-long v5, p1

    .line 37
    div-long v5, v3, v5

    .line 38
    .line 39
    const-wide/16 v7, 0x0

    .line 40
    .line 41
    cmp-long p1, v5, v7

    .line 42
    .line 43
    if-gtz p1, :cond_3

    .line 44
    .line 45
    iget-object p1, p0, Lcashier/normalpay/PayComplianceDialogFragment$coutDown$1;->this$0:Lcashier/normalpay/PayComplianceDialogFragment;

    .line 46
    .line 47
    invoke-static {p1}, Lcashier/normalpay/PayComplianceDialogFragment;->G(Lcashier/normalpay/PayComplianceDialogFragment;)Ls8b;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;)V

    .line 52
    .line 53
    .line 54
    iget-object p1, p1, Ls8b;->e:Landroidx/constraintlayout/widget/Group;

    .line 55
    .line 56
    const-string v0, "binding!!.dialogKycCoutdownGroup"

    .line 57
    .line 58
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    invoke-static {p1}, Ld0g;->e(Landroid/view/View;)V

    .line 62
    .line 63
    .line 64
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 65
    .line 66
    return-object p1

    .line 67
    :cond_3
    const-wide/32 v5, 0x5265c00

    .line 68
    .line 69
    .line 70
    div-long v7, v3, v5

    .line 71
    .line 72
    iget-object p1, p0, Lcashier/normalpay/PayComplianceDialogFragment$coutDown$1;->this$0:Lcashier/normalpay/PayComplianceDialogFragment;

    .line 73
    .line 74
    invoke-static {p1}, Lcashier/normalpay/PayComplianceDialogFragment;->G(Lcashier/normalpay/PayComplianceDialogFragment;)Ls8b;

    .line 75
    .line 76
    .line 77
    move-result-object p1

    .line 78
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;)V

    .line 79
    .line 80
    .line 81
    iget-object p1, p1, Ls8b;->i:Landroidx/appcompat/widget/AppCompatTextView;

    .line 82
    .line 83
    iget-object v1, p0, Lcashier/normalpay/PayComplianceDialogFragment$coutDown$1;->this$0:Lcashier/normalpay/PayComplianceDialogFragment;

    .line 84
    .line 85
    invoke-static {v1}, Lcashier/normalpay/PayComplianceDialogFragment;->H(Lcashier/normalpay/PayComplianceDialogFragment;)Lcashier/model/PayComplianceViewModel;

    .line 86
    .line 87
    .line 88
    move-result-object v1

    .line 89
    invoke-virtual {v1, v7, v8}, Lcashier/model/PayComplianceViewModel;->r(J)Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object v1

    .line 93
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 94
    .line 95
    .line 96
    mul-long v7, v7, v5

    .line 97
    .line 98
    sub-long/2addr v3, v7

    .line 99
    const-wide/32 v5, 0x36ee80

    .line 100
    .line 101
    .line 102
    div-long v7, v3, v5

    .line 103
    .line 104
    iget-object p1, p0, Lcashier/normalpay/PayComplianceDialogFragment$coutDown$1;->this$0:Lcashier/normalpay/PayComplianceDialogFragment;

    .line 105
    .line 106
    invoke-static {p1}, Lcashier/normalpay/PayComplianceDialogFragment;->G(Lcashier/normalpay/PayComplianceDialogFragment;)Ls8b;

    .line 107
    .line 108
    .line 109
    move-result-object p1

    .line 110
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;)V

    .line 111
    .line 112
    .line 113
    iget-object p1, p1, Ls8b;->k:Landroidx/appcompat/widget/AppCompatTextView;

    .line 114
    .line 115
    iget-object v1, p0, Lcashier/normalpay/PayComplianceDialogFragment$coutDown$1;->this$0:Lcashier/normalpay/PayComplianceDialogFragment;

    .line 116
    .line 117
    invoke-static {v1}, Lcashier/normalpay/PayComplianceDialogFragment;->H(Lcashier/normalpay/PayComplianceDialogFragment;)Lcashier/model/PayComplianceViewModel;

    .line 118
    .line 119
    .line 120
    move-result-object v1

    .line 121
    invoke-virtual {v1, v7, v8}, Lcashier/model/PayComplianceViewModel;->r(J)Ljava/lang/String;

    .line 122
    .line 123
    .line 124
    move-result-object v1

    .line 125
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 126
    .line 127
    .line 128
    mul-long v7, v7, v5

    .line 129
    .line 130
    sub-long/2addr v3, v7

    .line 131
    const-wide/32 v5, 0xea60

    .line 132
    .line 133
    .line 134
    div-long/2addr v3, v5

    .line 135
    iget-object p1, p0, Lcashier/normalpay/PayComplianceDialogFragment$coutDown$1;->this$0:Lcashier/normalpay/PayComplianceDialogFragment;

    .line 136
    .line 137
    invoke-static {p1}, Lcashier/normalpay/PayComplianceDialogFragment;->G(Lcashier/normalpay/PayComplianceDialogFragment;)Ls8b;

    .line 138
    .line 139
    .line 140
    move-result-object p1

    .line 141
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;)V

    .line 142
    .line 143
    .line 144
    iget-object p1, p1, Ls8b;->m:Landroidx/appcompat/widget/AppCompatTextView;

    .line 145
    .line 146
    iget-object v1, p0, Lcashier/normalpay/PayComplianceDialogFragment$coutDown$1;->this$0:Lcashier/normalpay/PayComplianceDialogFragment;

    .line 147
    .line 148
    invoke-static {v1}, Lcashier/normalpay/PayComplianceDialogFragment;->H(Lcashier/normalpay/PayComplianceDialogFragment;)Lcashier/model/PayComplianceViewModel;

    .line 149
    .line 150
    .line 151
    move-result-object v1

    .line 152
    invoke-virtual {v1, v3, v4}, Lcashier/model/PayComplianceViewModel;->r(J)Ljava/lang/String;

    .line 153
    .line 154
    .line 155
    move-result-object v1

    .line 156
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 157
    .line 158
    .line 159
    iput v2, p0, Lcashier/normalpay/PayComplianceDialogFragment$coutDown$1;->label:I

    .line 160
    .line 161
    invoke-static {v5, v6, p0}, Lkotlinx/coroutines/DelayKt;->b(JLjr2;)Ljava/lang/Object;

    .line 162
    .line 163
    .line 164
    move-result-object p1

    .line 165
    if-ne p1, v0, :cond_2

    .line 166
    .line 167
    return-object v0
.end method
