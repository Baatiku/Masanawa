.class final Lteam/opay/sme/va/v2/MyBusinessFragment$setTransitionDrawable$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "MyBusinessFragment.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lteam/opay/sme/va/v2/MyBusinessFragment;->e2(Landroidx/appcompat/widget/AppCompatImageView;Ljava/lang/String;Ljava/lang/String;)V
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
    c = "team.opay.sme.va.v2.MyBusinessFragment$setTransitionDrawable$1"
    f = "MyBusinessFragment.kt"
    l = {
        0x32e,
        0x32f,
        0x334
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $endUrl:Ljava/lang/String;

.field final synthetic $startUrl:Ljava/lang/String;

.field final synthetic $view:Landroidx/appcompat/widget/AppCompatImageView;

.field private synthetic L$0:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lteam/opay/sme/va/v2/MyBusinessFragment;


# direct methods
.method public constructor <init>(Landroidx/appcompat/widget/AppCompatImageView;Ljava/lang/String;Lteam/opay/sme/va/v2/MyBusinessFragment;Ljava/lang/String;Ljr2;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/appcompat/widget/AppCompatImageView;",
            "Ljava/lang/String;",
            "Lteam/opay/sme/va/v2/MyBusinessFragment;",
            "Ljava/lang/String;",
            "Ljr2<",
            "-",
            "Lteam/opay/sme/va/v2/MyBusinessFragment$setTransitionDrawable$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lteam/opay/sme/va/v2/MyBusinessFragment$setTransitionDrawable$1;->$view:Landroidx/appcompat/widget/AppCompatImageView;

    .line 2
    .line 3
    iput-object p2, p0, Lteam/opay/sme/va/v2/MyBusinessFragment$setTransitionDrawable$1;->$endUrl:Ljava/lang/String;

    .line 4
    .line 5
    iput-object p3, p0, Lteam/opay/sme/va/v2/MyBusinessFragment$setTransitionDrawable$1;->this$0:Lteam/opay/sme/va/v2/MyBusinessFragment;

    .line 6
    .line 7
    iput-object p4, p0, Lteam/opay/sme/va/v2/MyBusinessFragment$setTransitionDrawable$1;->$startUrl:Ljava/lang/String;

    .line 8
    .line 9
    const/4 p1, 0x2

    .line 10
    invoke-direct {p0, p1, p5}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILjr2;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Ljr2;)Ljr2;
    .locals 7
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
    new-instance v6, Lteam/opay/sme/va/v2/MyBusinessFragment$setTransitionDrawable$1;

    .line 2
    .line 3
    iget-object v1, p0, Lteam/opay/sme/va/v2/MyBusinessFragment$setTransitionDrawable$1;->$view:Landroidx/appcompat/widget/AppCompatImageView;

    .line 4
    .line 5
    iget-object v2, p0, Lteam/opay/sme/va/v2/MyBusinessFragment$setTransitionDrawable$1;->$endUrl:Ljava/lang/String;

    .line 6
    .line 7
    iget-object v3, p0, Lteam/opay/sme/va/v2/MyBusinessFragment$setTransitionDrawable$1;->this$0:Lteam/opay/sme/va/v2/MyBusinessFragment;

    .line 8
    .line 9
    iget-object v4, p0, Lteam/opay/sme/va/v2/MyBusinessFragment$setTransitionDrawable$1;->$startUrl:Ljava/lang/String;

    .line 10
    .line 11
    move-object v0, v6

    .line 12
    move-object v5, p2

    .line 13
    invoke-direct/range {v0 .. v5}, Lteam/opay/sme/va/v2/MyBusinessFragment$setTransitionDrawable$1;-><init>(Landroidx/appcompat/widget/AppCompatImageView;Ljava/lang/String;Lteam/opay/sme/va/v2/MyBusinessFragment;Ljava/lang/String;Ljr2;)V

    .line 14
    .line 15
    .line 16
    iput-object p1, v6, Lteam/opay/sme/va/v2/MyBusinessFragment$setTransitionDrawable$1;->L$0:Ljava/lang/Object;

    .line 17
    .line 18
    return-object v6
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2
    check-cast p1, Lzr2;

    check-cast p2, Ljr2;

    invoke-virtual {p0, p1, p2}, Lteam/opay/sme/va/v2/MyBusinessFragment$setTransitionDrawable$1;->invoke(Lzr2;Ljr2;)Ljava/lang/Object;

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
    invoke-virtual {p0, p1, p2}, Lteam/opay/sme/va/v2/MyBusinessFragment$setTransitionDrawable$1;->create(Ljava/lang/Object;Ljr2;)Ljr2;

    move-result-object p1

    check-cast p1, Lteam/opay/sme/va/v2/MyBusinessFragment$setTransitionDrawable$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lteam/opay/sme/va/v2/MyBusinessFragment$setTransitionDrawable$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 13

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x2

    .line 3
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->e()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v2

    .line 7
    iget v3, p0, Lteam/opay/sme/va/v2/MyBusinessFragment$setTransitionDrawable$1;->label:I

    .line 8
    .line 9
    const/4 v4, 0x3

    .line 10
    const/4 v5, 0x0

    .line 11
    if-eqz v3, :cond_3

    .line 12
    .line 13
    if-eq v3, v0, :cond_2

    .line 14
    .line 15
    if-eq v3, v1, :cond_1

    .line 16
    .line 17
    if-ne v3, v4, :cond_0

    .line 18
    .line 19
    invoke-static {p1}, Lkotlin/d;->b(Ljava/lang/Object;)V

    .line 20
    .line 21
    .line 22
    goto/16 :goto_2

    .line 23
    .line 24
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 25
    .line 26
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 27
    .line 28
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    throw p1

    .line 32
    :cond_1
    iget-object v3, p0, Lteam/opay/sme/va/v2/MyBusinessFragment$setTransitionDrawable$1;->L$0:Ljava/lang/Object;

    .line 33
    .line 34
    check-cast v3, Landroid/graphics/drawable/Drawable;

    .line 35
    .line 36
    invoke-static {p1}, Lkotlin/d;->b(Ljava/lang/Object;)V

    .line 37
    .line 38
    .line 39
    goto :goto_1

    .line 40
    :cond_2
    iget-object v3, p0, Lteam/opay/sme/va/v2/MyBusinessFragment$setTransitionDrawable$1;->L$0:Ljava/lang/Object;

    .line 41
    .line 42
    check-cast v3, Lb63;

    .line 43
    .line 44
    invoke-static {p1}, Lkotlin/d;->b(Ljava/lang/Object;)V

    .line 45
    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_3
    invoke-static {p1}, Lkotlin/d;->b(Ljava/lang/Object;)V

    .line 49
    .line 50
    .line 51
    iget-object p1, p0, Lteam/opay/sme/va/v2/MyBusinessFragment$setTransitionDrawable$1;->L$0:Ljava/lang/Object;

    .line 52
    .line 53
    check-cast p1, Lzr2;

    .line 54
    .line 55
    new-instance v9, Lteam/opay/sme/va/v2/MyBusinessFragment$setTransitionDrawable$1$startDrawable$1;

    .line 56
    .line 57
    iget-object v3, p0, Lteam/opay/sme/va/v2/MyBusinessFragment$setTransitionDrawable$1;->this$0:Lteam/opay/sme/va/v2/MyBusinessFragment;

    .line 58
    .line 59
    iget-object v6, p0, Lteam/opay/sme/va/v2/MyBusinessFragment$setTransitionDrawable$1;->$startUrl:Ljava/lang/String;

    .line 60
    .line 61
    invoke-direct {v9, v3, v6, v5}, Lteam/opay/sme/va/v2/MyBusinessFragment$setTransitionDrawable$1$startDrawable$1;-><init>(Lteam/opay/sme/va/v2/MyBusinessFragment;Ljava/lang/String;Ljr2;)V

    .line 62
    .line 63
    .line 64
    const/4 v10, 0x3

    .line 65
    const/4 v11, 0x0

    .line 66
    const/4 v7, 0x0

    .line 67
    const/4 v8, 0x0

    .line 68
    move-object v6, p1

    .line 69
    invoke-static/range {v6 .. v11}, Lxk1;->b(Lzr2;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lb63;

    .line 70
    .line 71
    .line 72
    move-result-object v3

    .line 73
    new-instance v9, Lteam/opay/sme/va/v2/MyBusinessFragment$setTransitionDrawable$1$endDrawable$1;

    .line 74
    .line 75
    iget-object v6, p0, Lteam/opay/sme/va/v2/MyBusinessFragment$setTransitionDrawable$1;->this$0:Lteam/opay/sme/va/v2/MyBusinessFragment;

    .line 76
    .line 77
    iget-object v7, p0, Lteam/opay/sme/va/v2/MyBusinessFragment$setTransitionDrawable$1;->$endUrl:Ljava/lang/String;

    .line 78
    .line 79
    invoke-direct {v9, v6, v7, v5}, Lteam/opay/sme/va/v2/MyBusinessFragment$setTransitionDrawable$1$endDrawable$1;-><init>(Lteam/opay/sme/va/v2/MyBusinessFragment;Ljava/lang/String;Ljr2;)V

    .line 80
    .line 81
    .line 82
    const/4 v7, 0x0

    .line 83
    move-object v6, p1

    .line 84
    invoke-static/range {v6 .. v11}, Lxk1;->b(Lzr2;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lb63;

    .line 85
    .line 86
    .line 87
    move-result-object p1

    .line 88
    iput-object p1, p0, Lteam/opay/sme/va/v2/MyBusinessFragment$setTransitionDrawable$1;->L$0:Ljava/lang/Object;

    .line 89
    .line 90
    iput v0, p0, Lteam/opay/sme/va/v2/MyBusinessFragment$setTransitionDrawable$1;->label:I

    .line 91
    .line 92
    invoke-interface {v3, p0}, Lb63;->V0(Ljr2;)Ljava/lang/Object;

    .line 93
    .line 94
    .line 95
    move-result-object v3

    .line 96
    if-ne v3, v2, :cond_4

    .line 97
    .line 98
    return-object v2

    .line 99
    :cond_4
    move-object v12, v3

    .line 100
    move-object v3, p1

    .line 101
    move-object p1, v12

    .line 102
    :goto_0
    check-cast p1, Landroid/graphics/drawable/Drawable;

    .line 103
    .line 104
    iput-object p1, p0, Lteam/opay/sme/va/v2/MyBusinessFragment$setTransitionDrawable$1;->L$0:Ljava/lang/Object;

    .line 105
    .line 106
    iput v1, p0, Lteam/opay/sme/va/v2/MyBusinessFragment$setTransitionDrawable$1;->label:I

    .line 107
    .line 108
    invoke-interface {v3, p0}, Lb63;->V0(Ljr2;)Ljava/lang/Object;

    .line 109
    .line 110
    .line 111
    move-result-object v3

    .line 112
    if-ne v3, v2, :cond_5

    .line 113
    .line 114
    return-object v2

    .line 115
    :cond_5
    move-object v12, v3

    .line 116
    move-object v3, p1

    .line 117
    move-object p1, v12

    .line 118
    :goto_1
    check-cast p1, Landroid/graphics/drawable/Drawable;

    .line 119
    .line 120
    if-eqz v3, :cond_6

    .line 121
    .line 122
    if-eqz p1, :cond_6

    .line 123
    .line 124
    new-instance v6, Landroid/graphics/drawable/TransitionDrawable;

    .line 125
    .line 126
    new-array v1, v1, [Landroid/graphics/drawable/Drawable;

    .line 127
    .line 128
    const/4 v7, 0x0

    .line 129
    aput-object v3, v1, v7

    .line 130
    .line 131
    aput-object p1, v1, v0

    .line 132
    .line 133
    invoke-direct {v6, v1}, Landroid/graphics/drawable/TransitionDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    .line 134
    .line 135
    .line 136
    const/16 p1, 0xfa

    .line 137
    .line 138
    invoke-virtual {v6, p1}, Landroid/graphics/drawable/TransitionDrawable;->startTransition(I)V

    .line 139
    .line 140
    .line 141
    invoke-virtual {v6, v0}, Landroid/graphics/drawable/TransitionDrawable;->setCrossFadeEnabled(Z)V

    .line 142
    .line 143
    .line 144
    invoke-static {}, Lni3;->c()Lkotlinx/coroutines/MainCoroutineDispatcher;

    .line 145
    .line 146
    .line 147
    move-result-object p1

    .line 148
    new-instance v0, Lteam/opay/sme/va/v2/MyBusinessFragment$setTransitionDrawable$1$1;

    .line 149
    .line 150
    iget-object v1, p0, Lteam/opay/sme/va/v2/MyBusinessFragment$setTransitionDrawable$1;->$view:Landroidx/appcompat/widget/AppCompatImageView;

    .line 151
    .line 152
    invoke-direct {v0, v1, v6, v5}, Lteam/opay/sme/va/v2/MyBusinessFragment$setTransitionDrawable$1$1;-><init>(Landroidx/appcompat/widget/AppCompatImageView;Landroid/graphics/drawable/TransitionDrawable;Ljr2;)V

    .line 153
    .line 154
    .line 155
    iput-object v5, p0, Lteam/opay/sme/va/v2/MyBusinessFragment$setTransitionDrawable$1;->L$0:Ljava/lang/Object;

    .line 156
    .line 157
    iput v4, p0, Lteam/opay/sme/va/v2/MyBusinessFragment$setTransitionDrawable$1;->label:I

    .line 158
    .line 159
    invoke-static {p1, v0, p0}, Lxk1;->g(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Ljr2;)Ljava/lang/Object;

    .line 160
    .line 161
    .line 162
    move-result-object p1

    .line 163
    if-ne p1, v2, :cond_7

    .line 164
    .line 165
    return-object v2

    .line 166
    :cond_6
    iget-object p1, p0, Lteam/opay/sme/va/v2/MyBusinessFragment$setTransitionDrawable$1;->$view:Landroidx/appcompat/widget/AppCompatImageView;

    .line 167
    .line 168
    iget-object v0, p0, Lteam/opay/sme/va/v2/MyBusinessFragment$setTransitionDrawable$1;->$endUrl:Ljava/lang/String;

    .line 169
    .line 170
    invoke-static {p1, v0}, Lle7;->c(Landroid/widget/ImageView;Ljava/lang/String;)V

    .line 171
    .line 172
    .line 173
    :cond_7
    :goto_2
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 174
    .line 175
    return-object p1
.end method
