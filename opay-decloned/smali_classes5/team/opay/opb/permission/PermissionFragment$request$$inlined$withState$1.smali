.class public final Lteam/opay/opb/permission/PermissionFragment$request$$inlined$withState$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "Lifecycle.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lteam/opay/opb/permission/PermissionFragment;->P(Lteam/opay/opb/permission/PermRequest;Lkotlin/jvm/functions/Function1;[Ljava/lang/String;)V
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
    c = "team.opay.opb.permission.PermissionFragment$request$$inlined$withState$1"
    f = "PermissionFragment.kt"
    l = {
        0x91
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $callback$inlined:Lkotlin/jvm/functions/Function1;

.field final synthetic $perms$inlined:[Ljava/lang/String;

.field final synthetic $request$inlined:Lteam/opay/opb/permission/PermRequest;

.field final synthetic $state:Landroidx/lifecycle/Lifecycle$State;

.field final synthetic $this_withState:Landroidx/fragment/app/Fragment;

.field label:I

.field final synthetic this$0:Lteam/opay/opb/permission/PermissionFragment;


# direct methods
.method public constructor <init>(Landroidx/fragment/app/Fragment;Landroidx/lifecycle/Lifecycle$State;Ljr2;Lteam/opay/opb/permission/PermissionFragment;Lteam/opay/opb/permission/PermRequest;Lkotlin/jvm/functions/Function1;[Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lteam/opay/opb/permission/PermissionFragment$request$$inlined$withState$1;->$this_withState:Landroidx/fragment/app/Fragment;

    .line 2
    .line 3
    iput-object p2, p0, Lteam/opay/opb/permission/PermissionFragment$request$$inlined$withState$1;->$state:Landroidx/lifecycle/Lifecycle$State;

    .line 4
    .line 5
    iput-object p4, p0, Lteam/opay/opb/permission/PermissionFragment$request$$inlined$withState$1;->this$0:Lteam/opay/opb/permission/PermissionFragment;

    .line 6
    .line 7
    iput-object p5, p0, Lteam/opay/opb/permission/PermissionFragment$request$$inlined$withState$1;->$request$inlined:Lteam/opay/opb/permission/PermRequest;

    .line 8
    .line 9
    iput-object p6, p0, Lteam/opay/opb/permission/PermissionFragment$request$$inlined$withState$1;->$callback$inlined:Lkotlin/jvm/functions/Function1;

    .line 10
    .line 11
    iput-object p7, p0, Lteam/opay/opb/permission/PermissionFragment$request$$inlined$withState$1;->$perms$inlined:[Ljava/lang/String;

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
    new-instance p1, Lteam/opay/opb/permission/PermissionFragment$request$$inlined$withState$1;

    .line 2
    .line 3
    iget-object v1, p0, Lteam/opay/opb/permission/PermissionFragment$request$$inlined$withState$1;->$this_withState:Landroidx/fragment/app/Fragment;

    .line 4
    .line 5
    iget-object v2, p0, Lteam/opay/opb/permission/PermissionFragment$request$$inlined$withState$1;->$state:Landroidx/lifecycle/Lifecycle$State;

    .line 6
    .line 7
    iget-object v4, p0, Lteam/opay/opb/permission/PermissionFragment$request$$inlined$withState$1;->this$0:Lteam/opay/opb/permission/PermissionFragment;

    .line 8
    .line 9
    iget-object v5, p0, Lteam/opay/opb/permission/PermissionFragment$request$$inlined$withState$1;->$request$inlined:Lteam/opay/opb/permission/PermRequest;

    .line 10
    .line 11
    iget-object v6, p0, Lteam/opay/opb/permission/PermissionFragment$request$$inlined$withState$1;->$callback$inlined:Lkotlin/jvm/functions/Function1;

    .line 12
    .line 13
    iget-object v7, p0, Lteam/opay/opb/permission/PermissionFragment$request$$inlined$withState$1;->$perms$inlined:[Ljava/lang/String;

    .line 14
    .line 15
    move-object v0, p1

    .line 16
    move-object v3, p2

    .line 17
    invoke-direct/range {v0 .. v7}, Lteam/opay/opb/permission/PermissionFragment$request$$inlined$withState$1;-><init>(Landroidx/fragment/app/Fragment;Landroidx/lifecycle/Lifecycle$State;Ljr2;Lteam/opay/opb/permission/PermissionFragment;Lteam/opay/opb/permission/PermRequest;Lkotlin/jvm/functions/Function1;[Ljava/lang/String;)V

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

    invoke-virtual {p0, p1, p2}, Lteam/opay/opb/permission/PermissionFragment$request$$inlined$withState$1;->invoke(Lzr2;Ljr2;)Ljava/lang/Object;

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
    invoke-virtual {p0, p1, p2}, Lteam/opay/opb/permission/PermissionFragment$request$$inlined$withState$1;->create(Ljava/lang/Object;Ljr2;)Ljr2;

    move-result-object p1

    check-cast p1, Lteam/opay/opb/permission/PermissionFragment$request$$inlined$withState$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lteam/opay/opb/permission/PermissionFragment$request$$inlined$withState$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

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
    iget v1, p0, Lteam/opay/opb/permission/PermissionFragment$request$$inlined$withState$1;->label:I

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
    goto/16 :goto_1

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
    iget-object p1, p0, Lteam/opay/opb/permission/PermissionFragment$request$$inlined$withState$1;->$this_withState:Landroidx/fragment/app/Fragment;

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
    iget-object v4, p0, Lteam/opay/opb/permission/PermissionFragment$request$$inlined$withState$1;->$state:Landroidx/lifecycle/Lifecycle$State;

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
    if-ltz p1, :cond_6

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
    if-nez v5, :cond_4

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
    if-eq p1, v1, :cond_3

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
    if-ltz p1, :cond_4

    .line 84
    .line 85
    iget-object p1, p0, Lteam/opay/opb/permission/PermissionFragment$request$$inlined$withState$1;->this$0:Lteam/opay/opb/permission/PermissionFragment;

    .line 86
    .line 87
    iget-object v0, p0, Lteam/opay/opb/permission/PermissionFragment$request$$inlined$withState$1;->$request$inlined:Lteam/opay/opb/permission/PermRequest;

    .line 88
    .line 89
    invoke-static {p1, v0}, Lteam/opay/opb/permission/PermissionFragment;->K(Lteam/opay/opb/permission/PermissionFragment;Lteam/opay/opb/permission/PermRequest;)V

    .line 90
    .line 91
    .line 92
    iget-object p1, p0, Lteam/opay/opb/permission/PermissionFragment$request$$inlined$withState$1;->this$0:Lteam/opay/opb/permission/PermissionFragment;

    .line 93
    .line 94
    iget-object v0, p0, Lteam/opay/opb/permission/PermissionFragment$request$$inlined$withState$1;->$callback$inlined:Lkotlin/jvm/functions/Function1;

    .line 95
    .line 96
    invoke-static {p1, v0}, Lteam/opay/opb/permission/PermissionFragment;->I(Lteam/opay/opb/permission/PermissionFragment;Lkotlin/jvm/functions/Function1;)V

    .line 97
    .line 98
    .line 99
    iget-object p1, p0, Lteam/opay/opb/permission/PermissionFragment$request$$inlined$withState$1;->this$0:Lteam/opay/opb/permission/PermissionFragment;

    .line 100
    .line 101
    iget-object v0, p0, Lteam/opay/opb/permission/PermissionFragment$request$$inlined$withState$1;->$perms$inlined:[Ljava/lang/String;

    .line 102
    .line 103
    array-length v1, v0

    .line 104
    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 105
    .line 106
    .line 107
    move-result-object v0

    .line 108
    check-cast v0, [Ljava/lang/String;

    .line 109
    .line 110
    invoke-static {p1, v0}, Lteam/opay/opb/permission/PermissionFragment;->J(Lteam/opay/opb/permission/PermissionFragment;[Ljava/lang/String;)V

    .line 111
    .line 112
    .line 113
    iget-object p1, p0, Lteam/opay/opb/permission/PermissionFragment$request$$inlined$withState$1;->this$0:Lteam/opay/opb/permission/PermissionFragment;

    .line 114
    .line 115
    iget-object v0, p0, Lteam/opay/opb/permission/PermissionFragment$request$$inlined$withState$1;->$perms$inlined:[Ljava/lang/String;

    .line 116
    .line 117
    array-length v1, v0

    .line 118
    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 119
    .line 120
    .line 121
    move-result-object v0

    .line 122
    check-cast v0, [Ljava/lang/String;

    .line 123
    .line 124
    invoke-static {p1, v0}, Lhob;->b(Landroidx/fragment/app/Fragment;[Ljava/lang/String;)Z

    .line 125
    .line 126
    .line 127
    move-result p1

    .line 128
    if-eqz p1, :cond_2

    .line 129
    .line 130
    iget-object p1, p0, Lteam/opay/opb/permission/PermissionFragment$request$$inlined$withState$1;->this$0:Lteam/opay/opb/permission/PermissionFragment;

    .line 131
    .line 132
    sget-object v0, Lteam/opay/opb/permission/PermStatus;->GRANTED:Lteam/opay/opb/permission/PermStatus;

    .line 133
    .line 134
    invoke-static {p1, v0}, Lteam/opay/opb/permission/PermissionFragment;->F(Lteam/opay/opb/permission/PermissionFragment;Lteam/opay/opb/permission/PermStatus;)V

    .line 135
    .line 136
    .line 137
    goto :goto_0

    .line 138
    :cond_2
    iget-object v1, p0, Lteam/opay/opb/permission/PermissionFragment$request$$inlined$withState$1;->this$0:Lteam/opay/opb/permission/PermissionFragment;

    .line 139
    .line 140
    invoke-static {v1}, Lteam/opay/opb/permission/PermissionFragment;->G(Lteam/opay/opb/permission/PermissionFragment;)Landroidx/activity/result/ActivityResultLauncher;

    .line 141
    .line 142
    .line 143
    move-result-object v2

    .line 144
    iget-object p1, p0, Lteam/opay/opb/permission/PermissionFragment$request$$inlined$withState$1;->this$0:Lteam/opay/opb/permission/PermissionFragment;

    .line 145
    .line 146
    invoke-static {p1}, Lteam/opay/opb/permission/PermissionFragment;->H(Lteam/opay/opb/permission/PermissionFragment;)[Ljava/lang/String;

    .line 147
    .line 148
    .line 149
    move-result-object v3

    .line 150
    const/4 v5, 0x4

    .line 151
    const/4 v6, 0x0

    .line 152
    const/4 v4, 0x0

    .line 153
    invoke-static/range {v1 .. v6}, Lvd;->i(Landroidx/fragment/app/Fragment;Landroidx/activity/result/ActivityResultLauncher;Ljava/lang/Object;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    .line 154
    .line 155
    .line 156
    :goto_0
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 157
    .line 158
    goto :goto_1

    .line 159
    :cond_3
    new-instance p1, Landroidx/lifecycle/LifecycleDestroyedException;

    .line 160
    .line 161
    invoke-direct {p1}, Landroidx/lifecycle/LifecycleDestroyedException;-><init>()V

    .line 162
    .line 163
    .line 164
    throw p1

    .line 165
    :cond_4
    new-instance v7, Lteam/opay/opb/permission/PermissionFragment$request$$inlined$withState$1$1;

    .line 166
    .line 167
    iget-object p1, p0, Lteam/opay/opb/permission/PermissionFragment$request$$inlined$withState$1;->this$0:Lteam/opay/opb/permission/PermissionFragment;

    .line 168
    .line 169
    iget-object v1, p0, Lteam/opay/opb/permission/PermissionFragment$request$$inlined$withState$1;->$request$inlined:Lteam/opay/opb/permission/PermRequest;

    .line 170
    .line 171
    iget-object v8, p0, Lteam/opay/opb/permission/PermissionFragment$request$$inlined$withState$1;->$callback$inlined:Lkotlin/jvm/functions/Function1;

    .line 172
    .line 173
    iget-object v9, p0, Lteam/opay/opb/permission/PermissionFragment$request$$inlined$withState$1;->$perms$inlined:[Ljava/lang/String;

    .line 174
    .line 175
    invoke-direct {v7, p1, v1, v8, v9}, Lteam/opay/opb/permission/PermissionFragment$request$$inlined$withState$1$1;-><init>(Lteam/opay/opb/permission/PermissionFragment;Lteam/opay/opb/permission/PermRequest;Lkotlin/jvm/functions/Function1;[Ljava/lang/String;)V

    .line 176
    .line 177
    .line 178
    iput v2, p0, Lteam/opay/opb/permission/PermissionFragment$request$$inlined$withState$1;->label:I

    .line 179
    .line 180
    move-object v8, p0

    .line 181
    invoke-static/range {v3 .. v8}, Landroidx/lifecycle/WithLifecycleStateKt;->a(Landroidx/lifecycle/Lifecycle;Landroidx/lifecycle/Lifecycle$State;ZLkotlinx/coroutines/CoroutineDispatcher;Lkotlin/jvm/functions/Function0;Ljr2;)Ljava/lang/Object;

    .line 182
    .line 183
    .line 184
    move-result-object p1

    .line 185
    if-ne p1, v0, :cond_5

    .line 186
    .line 187
    return-object v0

    .line 188
    :cond_5
    :goto_1
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 189
    .line 190
    return-object p1

    .line 191
    :cond_6
    new-instance p1, Ljava/lang/StringBuilder;

    .line 192
    .line 193
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 194
    .line 195
    .line 196
    const-string v0, "target state must be CREATED or greater, found "

    .line 197
    .line 198
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 199
    .line 200
    .line 201
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 202
    .line 203
    .line 204
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 205
    .line 206
    .line 207
    move-result-object p1

    .line 208
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 209
    .line 210
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 211
    .line 212
    .line 213
    move-result-object p1

    .line 214
    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 215
    .line 216
    .line 217
    throw v0
.end method
