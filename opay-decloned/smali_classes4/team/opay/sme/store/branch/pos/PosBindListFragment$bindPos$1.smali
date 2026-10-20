.class final Lteam/opay/sme/store/branch/pos/PosBindListFragment$bindPos$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "PosBindListFragment.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lteam/opay/sme/store/branch/pos/PosBindListFragment;->W()V
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
    c = "team.opay.sme.store.branch.pos.PosBindListFragment$bindPos$1"
    f = "PosBindListFragment.kt"
    l = {
        0x66
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field label:I

.field final synthetic this$0:Lteam/opay/sme/store/branch/pos/PosBindListFragment;


# direct methods
.method public constructor <init>(Lteam/opay/sme/store/branch/pos/PosBindListFragment;Ljr2;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lteam/opay/sme/store/branch/pos/PosBindListFragment;",
            "Ljr2<",
            "-",
            "Lteam/opay/sme/store/branch/pos/PosBindListFragment$bindPos$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lteam/opay/sme/store/branch/pos/PosBindListFragment$bindPos$1;->this$0:Lteam/opay/sme/store/branch/pos/PosBindListFragment;

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
    new-instance p1, Lteam/opay/sme/store/branch/pos/PosBindListFragment$bindPos$1;

    .line 2
    .line 3
    iget-object v0, p0, Lteam/opay/sme/store/branch/pos/PosBindListFragment$bindPos$1;->this$0:Lteam/opay/sme/store/branch/pos/PosBindListFragment;

    .line 4
    .line 5
    invoke-direct {p1, v0, p2}, Lteam/opay/sme/store/branch/pos/PosBindListFragment$bindPos$1;-><init>(Lteam/opay/sme/store/branch/pos/PosBindListFragment;Ljr2;)V

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

    invoke-virtual {p0, p1, p2}, Lteam/opay/sme/store/branch/pos/PosBindListFragment$bindPos$1;->invoke(Lzr2;Ljr2;)Ljava/lang/Object;

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
    invoke-virtual {p0, p1, p2}, Lteam/opay/sme/store/branch/pos/PosBindListFragment$bindPos$1;->create(Ljava/lang/Object;Ljr2;)Ljr2;

    move-result-object p1

    check-cast p1, Lteam/opay/sme/store/branch/pos/PosBindListFragment$bindPos$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lteam/opay/sme/store/branch/pos/PosBindListFragment$bindPos$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

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
    iget v1, p0, Lteam/opay/sme/store/branch/pos/PosBindListFragment$bindPos$1;->label:I

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
    goto :goto_1

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
    iget-object p1, p0, Lteam/opay/sme/store/branch/pos/PosBindListFragment$bindPos$1;->this$0:Lteam/opay/sme/store/branch/pos/PosBindListFragment;

    .line 28
    .line 29
    invoke-static {p1}, Lteam/opay/sme/store/branch/pos/PosBindListFragment;->P(Lteam/opay/sme/store/branch/pos/PosBindListFragment;)Lteam/opay/sme/store/branch/pos/PosBindingAdapter;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    invoke-virtual {p1}, Lteam/opay/sme/store/branch/pos/PosBindingAdapter;->u()Ljava/util/List;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    new-instance v1, Ljava/util/ArrayList;

    .line 38
    .line 39
    const/16 v3, 0xa

    .line 40
    .line 41
    invoke-static {p1, v3}, Lkotlin/collections/CollectionsKt;->v(Ljava/lang/Iterable;I)I

    .line 42
    .line 43
    .line 44
    move-result v3

    .line 45
    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 46
    .line 47
    .line 48
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 53
    .line 54
    .line 55
    move-result v3

    .line 56
    if-eqz v3, :cond_3

    .line 57
    .line 58
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    move-result-object v3

    .line 62
    check-cast v3, Lteam/opay/sme/store/api/BindingPosInfo;

    .line 63
    .line 64
    invoke-virtual {v3}, Lteam/opay/sme/store/api/BindingPosInfo;->g()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v3

    .line 68
    if-nez v3, :cond_2

    .line 69
    .line 70
    const-string v3, ""

    .line 71
    .line 72
    :cond_2
    invoke-interface {v1, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 73
    .line 74
    .line 75
    goto :goto_0

    .line 76
    :cond_3
    new-instance p1, Lteam/opay/sme/store/api/BindPosSnRequest;

    .line 77
    .line 78
    iget-object v3, p0, Lteam/opay/sme/store/branch/pos/PosBindListFragment$bindPos$1;->this$0:Lteam/opay/sme/store/branch/pos/PosBindListFragment;

    .line 79
    .line 80
    invoke-static {v3}, Lteam/opay/sme/store/branch/pos/PosBindListFragment;->O(Lteam/opay/sme/store/branch/pos/PosBindListFragment;)Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object v3

    .line 84
    iget-object v4, p0, Lteam/opay/sme/store/branch/pos/PosBindListFragment$bindPos$1;->this$0:Lteam/opay/sme/store/branch/pos/PosBindListFragment;

    .line 85
    .line 86
    invoke-static {v4}, Lteam/opay/sme/store/branch/pos/PosBindListFragment;->S(Lteam/opay/sme/store/branch/pos/PosBindListFragment;)Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object v4

    .line 90
    iget-object v5, p0, Lteam/opay/sme/store/branch/pos/PosBindListFragment$bindPos$1;->this$0:Lteam/opay/sme/store/branch/pos/PosBindListFragment;

    .line 91
    .line 92
    invoke-static {v5}, Lteam/opay/sme/store/branch/pos/PosBindListFragment;->R(Lteam/opay/sme/store/branch/pos/PosBindListFragment;)Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object v5

    .line 96
    invoke-direct {p1, v3, v1, v4, v5}, Lteam/opay/sme/store/api/BindPosSnRequest;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    .line 98
    .line 99
    iget-object v1, p0, Lteam/opay/sme/store/branch/pos/PosBindListFragment$bindPos$1;->this$0:Lteam/opay/sme/store/branch/pos/PosBindListFragment;

    .line 100
    .line 101
    invoke-static {v1}, Lteam/opay/sme/store/branch/pos/PosBindListFragment;->U(Lteam/opay/sme/store/branch/pos/PosBindListFragment;)Lteam/opay/sme/store/StoreViewModel;

    .line 102
    .line 103
    .line 104
    move-result-object v1

    .line 105
    iput v2, p0, Lteam/opay/sme/store/branch/pos/PosBindListFragment$bindPos$1;->label:I

    .line 106
    .line 107
    invoke-virtual {v1, p1, p0}, Lteam/opay/sme/store/StoreViewModel;->r(Lteam/opay/sme/store/api/BindPosSnRequest;Ljr2;)Ljava/lang/Object;

    .line 108
    .line 109
    .line 110
    move-result-object p1

    .line 111
    if-ne p1, v0, :cond_4

    .line 112
    .line 113
    return-object v0

    .line 114
    :cond_4
    :goto_1
    check-cast p1, Lteam/opay/core/http/HttpResult;

    .line 115
    .line 116
    iget-object v0, p0, Lteam/opay/sme/store/branch/pos/PosBindListFragment$bindPos$1;->this$0:Lteam/opay/sme/store/branch/pos/PosBindListFragment;

    .line 117
    .line 118
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Lag8;

    .line 119
    .line 120
    .line 121
    move-result-object v0

    .line 122
    invoke-interface {v0}, Lag8;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    .line 123
    .line 124
    .line 125
    move-result-object v0

    .line 126
    sget-object v1, Landroidx/lifecycle/Lifecycle$State;->STARTED:Landroidx/lifecycle/Lifecycle$State;

    .line 127
    .line 128
    invoke-static {v0, v1}, Lsf8;->a(Landroidx/lifecycle/Lifecycle;Landroidx/lifecycle/Lifecycle$State;)Z

    .line 129
    .line 130
    .line 131
    move-result v0

    .line 132
    if-eqz v0, :cond_9

    .line 133
    .line 134
    iget-object v0, p0, Lteam/opay/sme/store/branch/pos/PosBindListFragment$bindPos$1;->this$0:Lteam/opay/sme/store/branch/pos/PosBindListFragment;

    .line 135
    .line 136
    invoke-static {v0}, Lteam/opay/sme/store/branch/pos/PosBindListFragment;->N(Lteam/opay/sme/store/branch/pos/PosBindListFragment;)Lyud;

    .line 137
    .line 138
    .line 139
    move-result-object v0

    .line 140
    iget-object v0, v0, Lyud;->d:Lteam/opay/core/widget/HttpViewGroup;

    .line 141
    .line 142
    const/4 v1, 0x0

    .line 143
    invoke-virtual {v0, v1}, Lteam/opay/core/widget/HttpViewGroup;->x(Z)V

    .line 144
    .line 145
    .line 146
    invoke-virtual {p1}, Lteam/opay/core/http/HttpResult;->isSuccess()Z

    .line 147
    .line 148
    .line 149
    move-result v0

    .line 150
    const/4 v1, 0x0

    .line 151
    if-eqz v0, :cond_7

    .line 152
    .line 153
    iget-object p1, p0, Lteam/opay/sme/store/branch/pos/PosBindListFragment$bindPos$1;->this$0:Lteam/opay/sme/store/branch/pos/PosBindListFragment;

    .line 154
    .line 155
    invoke-virtual {p1}, Lteam/opay/opb/common/base/EdgeFragment;->getAppContext()Landroid/content/Context;

    .line 156
    .line 157
    .line 158
    move-result-object p1

    .line 159
    iget-object v0, p0, Lteam/opay/sme/store/branch/pos/PosBindListFragment$bindPos$1;->this$0:Lteam/opay/sme/store/branch/pos/PosBindListFragment;

    .line 160
    .line 161
    sget v2, Lteam/opay/sme/store/R$string;->sme_store_bind_pos_success:I

    .line 162
    .line 163
    invoke-virtual {v0, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 164
    .line 165
    .line 166
    move-result-object v0

    .line 167
    invoke-static {p1, v0}, Let;->v(Landroid/content/Context;Ljava/lang/String;)V

    .line 168
    .line 169
    .line 170
    iget-object p1, p0, Lteam/opay/sme/store/branch/pos/PosBindListFragment$bindPos$1;->this$0:Lteam/opay/sme/store/branch/pos/PosBindListFragment;

    .line 171
    .line 172
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    .line 173
    .line 174
    .line 175
    move-result-object p1

    .line 176
    instance-of v0, p1, Lteam/opay/sme/store/branch/pos/PosBindingTabFragment;

    .line 177
    .line 178
    if-eqz v0, :cond_5

    .line 179
    .line 180
    move-object v1, p1

    .line 181
    check-cast v1, Lteam/opay/sme/store/branch/pos/PosBindingTabFragment;

    .line 182
    .line 183
    :cond_5
    if-eqz v1, :cond_6

    .line 184
    .line 185
    invoke-virtual {v1}, Lteam/opay/sme/store/branch/pos/PosBindingTabFragment;->L()Lkotlin/jvm/functions/Function0;

    .line 186
    .line 187
    .line 188
    move-result-object p1

    .line 189
    if-eqz p1, :cond_6

    .line 190
    .line 191
    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 192
    .line 193
    .line 194
    :cond_6
    iget-object p1, p0, Lteam/opay/sme/store/branch/pos/PosBindListFragment$bindPos$1;->this$0:Lteam/opay/sme/store/branch/pos/PosBindListFragment;

    .line 195
    .line 196
    invoke-virtual {p1}, Lteam/opay/opb/common/base/EdgeFragment;->getFragmentActivity()Landroidx/fragment/app/FragmentActivity;

    .line 197
    .line 198
    .line 199
    move-result-object p1

    .line 200
    invoke-virtual {p1}, Landroidx/activity/ComponentActivity;->onBackPressed()V

    .line 201
    .line 202
    .line 203
    goto :goto_2

    .line 204
    :cond_7
    iget-object v0, p0, Lteam/opay/sme/store/branch/pos/PosBindListFragment$bindPos$1;->this$0:Lteam/opay/sme/store/branch/pos/PosBindListFragment;

    .line 205
    .line 206
    invoke-virtual {v0}, Lteam/opay/opb/common/base/EdgeFragment;->getAppContext()Landroid/content/Context;

    .line 207
    .line 208
    .line 209
    move-result-object v0

    .line 210
    invoke-virtual {p1}, Lteam/opay/core/http/HttpResult;->getApiError()Lteam/opay/core/http/arch/ApiError;

    .line 211
    .line 212
    .line 213
    move-result-object p1

    .line 214
    if-eqz p1, :cond_8

    .line 215
    .line 216
    invoke-virtual {p1}, Lteam/opay/core/http/arch/ApiError;->d()Ljava/lang/String;

    .line 217
    .line 218
    .line 219
    move-result-object v1

    .line 220
    :cond_8
    invoke-static {v0, v1}, Let;->v(Landroid/content/Context;Ljava/lang/String;)V

    .line 221
    .line 222
    .line 223
    :cond_9
    :goto_2
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 224
    .line 225
    return-object p1
.end method
