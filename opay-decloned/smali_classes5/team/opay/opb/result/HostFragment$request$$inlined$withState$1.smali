.class public final Lteam/opay/opb/result/HostFragment$request$$inlined$withState$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "Lifecycle.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lteam/opay/opb/result/HostFragment;->J(Landroidx/activity/result/contract/ActivityResultContract;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)V
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
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0003\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n\u00a2\u0006\u0004\u0008\u0002\u0010\u0003\u00a8\u0006\u0004"
    }
    d2 = {
        "Lzr2;",
        "",
        "<anonymous>",
        "(Lzr2;)V",
        "team/opay/core/common/android/view/LifecycleKt$withState$2"
    }
    k = 0x3
    mv = {
        0x2,
        0x1,
        0x0
    }
.end annotation

.annotation runtime Ln33;
    c = "team.opay.opb.result.HostFragment$request$$inlined$withState$1"
    f = "HostFragment.kt"
    l = {
        0x92
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $callback$inlined:Lkotlin/jvm/functions/Function1;

.field final synthetic $contract$inlined:Landroidx/activity/result/contract/ActivityResultContract;

.field final synthetic $input$inlined:Ljava/lang/Object;

.field final synthetic $state:Landroidx/lifecycle/Lifecycle$State;

.field final synthetic $this_withState:Landroidx/fragment/app/Fragment;

.field label:I

.field final synthetic this$0:Lteam/opay/opb/result/HostFragment;


# direct methods
.method public constructor <init>(Landroidx/fragment/app/Fragment;Landroidx/lifecycle/Lifecycle$State;Ljr2;Lteam/opay/opb/result/HostFragment;Landroidx/activity/result/contract/ActivityResultContract;Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lteam/opay/opb/result/HostFragment$request$$inlined$withState$1;->$this_withState:Landroidx/fragment/app/Fragment;

    .line 2
    .line 3
    iput-object p2, p0, Lteam/opay/opb/result/HostFragment$request$$inlined$withState$1;->$state:Landroidx/lifecycle/Lifecycle$State;

    .line 4
    .line 5
    iput-object p4, p0, Lteam/opay/opb/result/HostFragment$request$$inlined$withState$1;->this$0:Lteam/opay/opb/result/HostFragment;

    .line 6
    .line 7
    iput-object p5, p0, Lteam/opay/opb/result/HostFragment$request$$inlined$withState$1;->$contract$inlined:Landroidx/activity/result/contract/ActivityResultContract;

    .line 8
    .line 9
    iput-object p6, p0, Lteam/opay/opb/result/HostFragment$request$$inlined$withState$1;->$callback$inlined:Lkotlin/jvm/functions/Function1;

    .line 10
    .line 11
    iput-object p7, p0, Lteam/opay/opb/result/HostFragment$request$$inlined$withState$1;->$input$inlined:Ljava/lang/Object;

    .line 12
    .line 13
    const/4 p1, 0x2

    .line 14
    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILjr2;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Ljr2;)Ljr2;
    .locals 8
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
    new-instance p1, Lteam/opay/opb/result/HostFragment$request$$inlined$withState$1;

    .line 2
    .line 3
    iget-object v1, p0, Lteam/opay/opb/result/HostFragment$request$$inlined$withState$1;->$this_withState:Landroidx/fragment/app/Fragment;

    .line 4
    .line 5
    iget-object v2, p0, Lteam/opay/opb/result/HostFragment$request$$inlined$withState$1;->$state:Landroidx/lifecycle/Lifecycle$State;

    .line 6
    .line 7
    iget-object v4, p0, Lteam/opay/opb/result/HostFragment$request$$inlined$withState$1;->this$0:Lteam/opay/opb/result/HostFragment;

    .line 8
    .line 9
    iget-object v5, p0, Lteam/opay/opb/result/HostFragment$request$$inlined$withState$1;->$contract$inlined:Landroidx/activity/result/contract/ActivityResultContract;

    .line 10
    .line 11
    iget-object v6, p0, Lteam/opay/opb/result/HostFragment$request$$inlined$withState$1;->$callback$inlined:Lkotlin/jvm/functions/Function1;

    .line 12
    .line 13
    iget-object v7, p0, Lteam/opay/opb/result/HostFragment$request$$inlined$withState$1;->$input$inlined:Ljava/lang/Object;

    .line 14
    .line 15
    move-object v0, p1

    .line 16
    move-object v3, p2

    .line 17
    invoke-direct/range {v0 .. v7}, Lteam/opay/opb/result/HostFragment$request$$inlined$withState$1;-><init>(Landroidx/fragment/app/Fragment;Landroidx/lifecycle/Lifecycle$State;Ljr2;Lteam/opay/opb/result/HostFragment;Landroidx/activity/result/contract/ActivityResultContract;Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V

    .line 18
    .line 19
    .line 20
    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2
    check-cast p1, Lzr2;

    check-cast p2, Ljr2;

    invoke-virtual {p0, p1, p2}, Lteam/opay/opb/result/HostFragment$request$$inlined$withState$1;->invoke(Lzr2;Ljr2;)Ljava/lang/Object;

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
    invoke-virtual {p0, p1, p2}, Lteam/opay/opb/result/HostFragment$request$$inlined$withState$1;->create(Ljava/lang/Object;Ljr2;)Ljr2;

    move-result-object p1

    check-cast p1, Lteam/opay/opb/result/HostFragment$request$$inlined$withState$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lteam/opay/opb/result/HostFragment$request$$inlined$withState$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

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
    iget v1, p0, Lteam/opay/opb/result/HostFragment$request$$inlined$withState$1;->label:I

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
    goto/16 :goto_0

    .line 16
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
    iget-object p1, p0, Lteam/opay/opb/result/HostFragment$request$$inlined$withState$1;->$this_withState:Landroidx/fragment/app/Fragment;

    .line 29
    .line 30
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    .line 31
    .line 32
    .line 33
    move-result-object v3

    .line 34
    const-string p1, "<get-lifecycle>(...)"

    .line 35
    .line 36
    invoke-static {v3, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    iget-object v4, p0, Lteam/opay/opb/result/HostFragment$request$$inlined$withState$1;->$state:Landroidx/lifecycle/Lifecycle$State;

    .line 40
    .line 41
    sget-object p1, Landroidx/lifecycle/Lifecycle$State;->CREATED:Landroidx/lifecycle/Lifecycle$State;

    .line 42
    .line 43
    invoke-virtual {v4, p1}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    .line 44
    .line 45
    .line 46
    move-result p1

    .line 47
    if-ltz p1, :cond_7

    .line 48
    .line 49
    invoke-static {}, Lni3;->c()Lkotlinx/coroutines/MainCoroutineDispatcher;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    invoke-virtual {p1}, Lkotlinx/coroutines/MainCoroutineDispatcher;->g1()Lkotlinx/coroutines/MainCoroutineDispatcher;

    .line 54
    .line 55
    .line 56
    move-result-object v6

    .line 57
    invoke-interface {p0}, Ljr2;->getContext()Lkotlin/coroutines/CoroutineContext;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    invoke-virtual {v6, p1}, Lkotlinx/coroutines/CoroutineDispatcher;->e1(Lkotlin/coroutines/CoroutineContext;)Z

    .line 62
    .line 63
    .line 64
    move-result v5

    .line 65
    if-nez v5, :cond_5

    .line 66
    .line 67
    invoke-virtual {v3}, Landroidx/lifecycle/Lifecycle;->b()Landroidx/lifecycle/Lifecycle$State;

    .line 68
    .line 69
    .line 70
    move-result-object p1

    .line 71
    sget-object v1, Landroidx/lifecycle/Lifecycle$State;->DESTROYED:Landroidx/lifecycle/Lifecycle$State;

    .line 72
    .line 73
    if-eq p1, v1, :cond_4

    .line 74
    .line 75
    invoke-virtual {v3}, Landroidx/lifecycle/Lifecycle;->b()Landroidx/lifecycle/Lifecycle$State;

    .line 76
    .line 77
    .line 78
    move-result-object p1

    .line 79
    invoke-virtual {p1, v4}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    .line 80
    .line 81
    .line 82
    move-result p1

    .line 83
    if-ltz p1, :cond_5

    .line 84
    .line 85
    iget-object p1, p0, Lteam/opay/opb/result/HostFragment$request$$inlined$withState$1;->this$0:Lteam/opay/opb/result/HostFragment;

    .line 86
    .line 87
    iget-object v0, p0, Lteam/opay/opb/result/HostFragment$request$$inlined$withState$1;->$contract$inlined:Landroidx/activity/result/contract/ActivityResultContract;

    .line 88
    .line 89
    invoke-static {p1, v0}, Lteam/opay/opb/result/HostFragment;->E(Lteam/opay/opb/result/HostFragment;Landroidx/activity/result/contract/ActivityResultContract;)Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object p1

    .line 93
    iget-object v0, p0, Lteam/opay/opb/result/HostFragment$request$$inlined$withState$1;->this$0:Lteam/opay/opb/result/HostFragment;

    .line 94
    .line 95
    invoke-static {v0}, Lteam/opay/opb/result/HostFragment;->D(Lteam/opay/opb/result/HostFragment;)Ljava/util/Map;

    .line 96
    .line 97
    .line 98
    move-result-object v0

    .line 99
    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 100
    .line 101
    .line 102
    move-result v0

    .line 103
    if-nez v0, :cond_3

    .line 104
    .line 105
    iget-object v0, p0, Lteam/opay/opb/result/HostFragment$request$$inlined$withState$1;->this$0:Lteam/opay/opb/result/HostFragment;

    .line 106
    .line 107
    invoke-static {v0}, Lteam/opay/opb/result/HostFragment;->D(Lteam/opay/opb/result/HostFragment;)Ljava/util/Map;

    .line 108
    .line 109
    .line 110
    move-result-object v0

    .line 111
    iget-object v1, p0, Lteam/opay/opb/result/HostFragment$request$$inlined$withState$1;->this$0:Lteam/opay/opb/result/HostFragment;

    .line 112
    .line 113
    iget-object v2, p0, Lteam/opay/opb/result/HostFragment$request$$inlined$withState$1;->$callback$inlined:Lkotlin/jvm/functions/Function1;

    .line 114
    .line 115
    invoke-static {v1, v2}, Lteam/opay/opb/result/HostFragment;->F(Lteam/opay/opb/result/HostFragment;Lkotlin/jvm/functions/Function1;)Lkotlin/jvm/functions/Function1;

    .line 116
    .line 117
    .line 118
    move-result-object v1

    .line 119
    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    .line 121
    .line 122
    iget-object v0, p0, Lteam/opay/opb/result/HostFragment$request$$inlined$withState$1;->this$0:Lteam/opay/opb/result/HostFragment;

    .line 123
    .line 124
    invoke-static {v0}, Lteam/opay/opb/result/HostFragment;->C(Lteam/opay/opb/result/HostFragment;)Ljava/util/Map;

    .line 125
    .line 126
    .line 127
    move-result-object v0

    .line 128
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    .line 130
    .line 131
    move-result-object v0

    .line 132
    check-cast v0, Landroidx/activity/result/ActivityResultLauncher;

    .line 133
    .line 134
    if-eqz v0, :cond_2

    .line 135
    .line 136
    iget-object v1, p0, Lteam/opay/opb/result/HostFragment$request$$inlined$withState$1;->this$0:Lteam/opay/opb/result/HostFragment;

    .line 137
    .line 138
    iget-object v2, p0, Lteam/opay/opb/result/HostFragment$request$$inlined$withState$1;->$input$inlined:Ljava/lang/Object;

    .line 139
    .line 140
    new-instance v3, Lteam/opay/opb/result/HostFragment$a;

    .line 141
    .line 142
    invoke-direct {v3, v1, p1}, Lteam/opay/opb/result/HostFragment$a;-><init>(Lteam/opay/opb/result/HostFragment;Ljava/lang/String;)V

    .line 143
    .line 144
    .line 145
    invoke-static {v1, v0, v2, v3}, Lvd;->f(Landroidx/fragment/app/Fragment;Landroidx/activity/result/ActivityResultLauncher;Ljava/lang/Object;Lkotlin/jvm/functions/Function0;)V

    .line 146
    .line 147
    .line 148
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 149
    .line 150
    goto :goto_0

    .line 151
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 152
    .line 153
    iget-object v0, p0, Lteam/opay/opb/result/HostFragment$request$$inlined$withState$1;->$contract$inlined:Landroidx/activity/result/contract/ActivityResultContract;

    .line 154
    .line 155
    new-instance v1, Ljava/lang/StringBuilder;

    .line 156
    .line 157
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 158
    .line 159
    .line 160
    const-string v2, "Contract not registered: "

    .line 161
    .line 162
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 163
    .line 164
    .line 165
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 166
    .line 167
    .line 168
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 169
    .line 170
    .line 171
    move-result-object v0

    .line 172
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 173
    .line 174
    .line 175
    move-result-object v0

    .line 176
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 177
    .line 178
    .line 179
    throw p1

    .line 180
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    .line 181
    .line 182
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 183
    .line 184
    .line 185
    const-string v1, "Contract already launched: "

    .line 186
    .line 187
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 188
    .line 189
    .line 190
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 191
    .line 192
    .line 193
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 194
    .line 195
    .line 196
    move-result-object p1

    .line 197
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 198
    .line 199
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 200
    .line 201
    .line 202
    move-result-object p1

    .line 203
    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 204
    .line 205
    .line 206
    throw v0

    .line 207
    :cond_4
    new-instance p1, Landroidx/lifecycle/LifecycleDestroyedException;

    .line 208
    .line 209
    invoke-direct {p1}, Landroidx/lifecycle/LifecycleDestroyedException;-><init>()V

    .line 210
    .line 211
    .line 212
    throw p1

    .line 213
    :cond_5
    new-instance v7, Lteam/opay/opb/result/HostFragment$request$$inlined$withState$1$1;

    .line 214
    .line 215
    iget-object p1, p0, Lteam/opay/opb/result/HostFragment$request$$inlined$withState$1;->this$0:Lteam/opay/opb/result/HostFragment;

    .line 216
    .line 217
    iget-object v1, p0, Lteam/opay/opb/result/HostFragment$request$$inlined$withState$1;->$contract$inlined:Landroidx/activity/result/contract/ActivityResultContract;

    .line 218
    .line 219
    iget-object v8, p0, Lteam/opay/opb/result/HostFragment$request$$inlined$withState$1;->$callback$inlined:Lkotlin/jvm/functions/Function1;

    .line 220
    .line 221
    iget-object v9, p0, Lteam/opay/opb/result/HostFragment$request$$inlined$withState$1;->$input$inlined:Ljava/lang/Object;

    .line 222
    .line 223
    invoke-direct {v7, p1, v1, v8, v9}, Lteam/opay/opb/result/HostFragment$request$$inlined$withState$1$1;-><init>(Lteam/opay/opb/result/HostFragment;Landroidx/activity/result/contract/ActivityResultContract;Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V

    .line 224
    .line 225
    .line 226
    iput v2, p0, Lteam/opay/opb/result/HostFragment$request$$inlined$withState$1;->label:I

    .line 227
    .line 228
    move-object v8, p0

    .line 229
    invoke-static/range {v3 .. v8}, Landroidx/lifecycle/WithLifecycleStateKt;->a(Landroidx/lifecycle/Lifecycle;Landroidx/lifecycle/Lifecycle$State;ZLkotlinx/coroutines/CoroutineDispatcher;Lkotlin/jvm/functions/Function0;Ljr2;)Ljava/lang/Object;

    .line 230
    .line 231
    .line 232
    move-result-object p1

    .line 233
    if-ne p1, v0, :cond_6

    .line 234
    .line 235
    return-object v0

    .line 236
    :cond_6
    :goto_0
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 237
    .line 238
    return-object p1

    .line 239
    :cond_7
    new-instance p1, Ljava/lang/StringBuilder;

    .line 240
    .line 241
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 242
    .line 243
    .line 244
    const-string v0, "target state must be CREATED or greater, found "

    .line 245
    .line 246
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 247
    .line 248
    .line 249
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 250
    .line 251
    .line 252
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 253
    .line 254
    .line 255
    move-result-object p1

    .line 256
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 257
    .line 258
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 259
    .line 260
    .line 261
    move-result-object p1

    .line 262
    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 263
    .line 264
    .line 265
    throw v0
.end method
