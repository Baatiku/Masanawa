.class final Lteam/opay/business/js/BusinessWebDelegate$handleFileResult$2$1$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "BusinessWebDelegate.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lteam/opay/business/js/BusinessWebDelegate$handleFileResult$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lteam/opay/business/js/BusinessWebDelegate$handleFileResult$2$1$1$a;
    }
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
    c = "team.opay.business.js.BusinessWebDelegate$handleFileResult$2$1$1"
    f = "BusinessWebDelegate.kt"
    l = {
        0xdd,
        0xe2
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $it:Lteam/opay/core/http/arch/Resource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lteam/opay/core/http/arch/Resource<",
            "Lteam/opay/business/js/api/UploadPrivacyFileResponse;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $mimeType:Ljava/lang/String;

.field final synthetic $path:Ljava/lang/String;

.field L$0:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lteam/opay/business/js/BusinessWebDelegate;


# direct methods
.method public constructor <init>(Lteam/opay/business/js/BusinessWebDelegate;Lteam/opay/core/http/arch/Resource;Ljava/lang/String;Ljava/lang/String;Ljr2;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lteam/opay/business/js/BusinessWebDelegate;",
            "Lteam/opay/core/http/arch/Resource<",
            "Lteam/opay/business/js/api/UploadPrivacyFileResponse;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljr2<",
            "-",
            "Lteam/opay/business/js/BusinessWebDelegate$handleFileResult$2$1$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lteam/opay/business/js/BusinessWebDelegate$handleFileResult$2$1$1;->this$0:Lteam/opay/business/js/BusinessWebDelegate;

    .line 2
    .line 3
    iput-object p2, p0, Lteam/opay/business/js/BusinessWebDelegate$handleFileResult$2$1$1;->$it:Lteam/opay/core/http/arch/Resource;

    .line 4
    .line 5
    iput-object p3, p0, Lteam/opay/business/js/BusinessWebDelegate$handleFileResult$2$1$1;->$mimeType:Ljava/lang/String;

    .line 6
    .line 7
    iput-object p4, p0, Lteam/opay/business/js/BusinessWebDelegate$handleFileResult$2$1$1;->$path:Ljava/lang/String;

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
    .locals 6
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
    new-instance p1, Lteam/opay/business/js/BusinessWebDelegate$handleFileResult$2$1$1;

    .line 2
    .line 3
    iget-object v1, p0, Lteam/opay/business/js/BusinessWebDelegate$handleFileResult$2$1$1;->this$0:Lteam/opay/business/js/BusinessWebDelegate;

    .line 4
    .line 5
    iget-object v2, p0, Lteam/opay/business/js/BusinessWebDelegate$handleFileResult$2$1$1;->$it:Lteam/opay/core/http/arch/Resource;

    .line 6
    .line 7
    iget-object v3, p0, Lteam/opay/business/js/BusinessWebDelegate$handleFileResult$2$1$1;->$mimeType:Ljava/lang/String;

    .line 8
    .line 9
    iget-object v4, p0, Lteam/opay/business/js/BusinessWebDelegate$handleFileResult$2$1$1;->$path:Ljava/lang/String;

    .line 10
    .line 11
    move-object v0, p1

    .line 12
    move-object v5, p2

    .line 13
    invoke-direct/range {v0 .. v5}, Lteam/opay/business/js/BusinessWebDelegate$handleFileResult$2$1$1;-><init>(Lteam/opay/business/js/BusinessWebDelegate;Lteam/opay/core/http/arch/Resource;Ljava/lang/String;Ljava/lang/String;Ljr2;)V

    .line 14
    .line 15
    .line 16
    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2
    check-cast p1, Lzr2;

    check-cast p2, Ljr2;

    invoke-virtual {p0, p1, p2}, Lteam/opay/business/js/BusinessWebDelegate$handleFileResult$2$1$1;->invoke(Lzr2;Ljr2;)Ljava/lang/Object;

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
    invoke-virtual {p0, p1, p2}, Lteam/opay/business/js/BusinessWebDelegate$handleFileResult$2$1$1;->create(Ljava/lang/Object;Ljr2;)Ljr2;

    move-result-object p1

    check-cast p1, Lteam/opay/business/js/BusinessWebDelegate$handleFileResult$2$1$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lteam/opay/business/js/BusinessWebDelegate$handleFileResult$2$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 13

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->e()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget v1, p0, Lteam/opay/business/js/BusinessWebDelegate$handleFileResult$2$1$1;->label:I

    .line 6
    .line 7
    const/4 v2, 0x2

    .line 8
    const/4 v3, 0x1

    .line 9
    if-eqz v1, :cond_2

    .line 10
    .line 11
    if-eq v1, v3, :cond_1

    .line 12
    .line 13
    if-ne v1, v2, :cond_0

    .line 14
    .line 15
    :goto_0
    invoke-static {p1}, Lkotlin/d;->b(Ljava/lang/Object;)V

    .line 16
    .line 17
    .line 18
    goto/16 :goto_5

    .line 19
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
    iget-object v0, p0, Lteam/opay/business/js/BusinessWebDelegate$handleFileResult$2$1$1;->L$0:Ljava/lang/Object;

    .line 29
    .line 30
    check-cast v0, Lteam/opay/business/js/api/UploadPrivacyFileResponse;

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_2
    invoke-static {p1}, Lkotlin/d;->b(Ljava/lang/Object;)V

    .line 34
    .line 35
    .line 36
    iget-object p1, p0, Lteam/opay/business/js/BusinessWebDelegate$handleFileResult$2$1$1;->this$0:Lteam/opay/business/js/BusinessWebDelegate;

    .line 37
    .line 38
    invoke-static {p1}, Lteam/opay/business/js/BusinessWebDelegate;->access$getLoading$p(Lteam/opay/business/js/BusinessWebDelegate;)Landroidx/lifecycle/MutableLiveData;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    iget-object v1, p0, Lteam/opay/business/js/BusinessWebDelegate$handleFileResult$2$1$1;->$it:Lteam/opay/core/http/arch/Resource;

    .line 43
    .line 44
    const/4 v4, 0x0

    .line 45
    if-eqz v1, :cond_3

    .line 46
    .line 47
    invoke-virtual {v1}, Lteam/opay/core/http/arch/Resource;->c()Lteam/opay/core/http/arch/Status;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    goto :goto_1

    .line 52
    :cond_3
    move-object v1, v4

    .line 53
    :goto_1
    sget-object v5, Lteam/opay/core/http/arch/Status;->LOADING:Lteam/opay/core/http/arch/Status;

    .line 54
    .line 55
    if-ne v1, v5, :cond_4

    .line 56
    .line 57
    const/4 v1, 0x1

    .line 58
    goto :goto_2

    .line 59
    :cond_4
    const/4 v1, 0x0

    .line 60
    :goto_2
    invoke-static {v1}, Ldf1;->a(Z)Ljava/lang/Boolean;

    .line 61
    .line 62
    .line 63
    move-result-object v1

    .line 64
    invoke-virtual {p1, v1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 65
    .line 66
    .line 67
    iget-object p1, p0, Lteam/opay/business/js/BusinessWebDelegate$handleFileResult$2$1$1;->$it:Lteam/opay/core/http/arch/Resource;

    .line 68
    .line 69
    if-eqz p1, :cond_5

    .line 70
    .line 71
    invoke-virtual {p1}, Lteam/opay/core/http/arch/Resource;->c()Lteam/opay/core/http/arch/Status;

    .line 72
    .line 73
    .line 74
    move-result-object p1

    .line 75
    goto :goto_3

    .line 76
    :cond_5
    move-object p1, v4

    .line 77
    :goto_3
    if-nez p1, :cond_6

    .line 78
    .line 79
    const/4 p1, -0x1

    .line 80
    goto :goto_4

    .line 81
    :cond_6
    sget-object v1, Lteam/opay/business/js/BusinessWebDelegate$handleFileResult$2$1$1$a;->a:[I

    .line 82
    .line 83
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    .line 84
    .line 85
    .line 86
    move-result p1

    .line 87
    aget p1, v1, p1

    .line 88
    .line 89
    :goto_4
    if-eq p1, v3, :cond_a

    .line 90
    .line 91
    if-eq p1, v2, :cond_7

    .line 92
    .line 93
    invoke-static {}, Let;->l()Lkotlin/jvm/functions/Function0;

    .line 94
    .line 95
    .line 96
    goto :goto_5

    .line 97
    :cond_7
    iget-object p1, p0, Lteam/opay/business/js/BusinessWebDelegate$handleFileResult$2$1$1;->this$0:Lteam/opay/business/js/BusinessWebDelegate;

    .line 98
    .line 99
    invoke-static {p1}, Lteam/opay/business/js/BusinessWebDelegate;->access$getContext$p(Lteam/opay/business/js/BusinessWebDelegate;)Landroid/content/Context;

    .line 100
    .line 101
    .line 102
    move-result-object p1

    .line 103
    if-nez p1, :cond_8

    .line 104
    .line 105
    const-string p1, "context"

    .line 106
    .line 107
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->y(Ljava/lang/String;)V

    .line 108
    .line 109
    .line 110
    move-object p1, v4

    .line 111
    :cond_8
    iget-object v1, p0, Lteam/opay/business/js/BusinessWebDelegate$handleFileResult$2$1$1;->$it:Lteam/opay/core/http/arch/Resource;

    .line 112
    .line 113
    invoke-virtual {v1}, Lteam/opay/core/http/arch/Resource;->b()Lteam/opay/core/http/arch/ApiError;

    .line 114
    .line 115
    .line 116
    move-result-object v1

    .line 117
    if-eqz v1, :cond_9

    .line 118
    .line 119
    invoke-virtual {v1}, Lteam/opay/core/http/arch/ApiError;->d()Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object v4

    .line 123
    :cond_9
    invoke-static {p1, v4}, Let;->v(Landroid/content/Context;Ljava/lang/String;)V

    .line 124
    .line 125
    .line 126
    iget-object v5, p0, Lteam/opay/business/js/BusinessWebDelegate$handleFileResult$2$1$1;->this$0:Lteam/opay/business/js/BusinessWebDelegate;

    .line 127
    .line 128
    iget-object v6, p0, Lteam/opay/business/js/BusinessWebDelegate$handleFileResult$2$1$1;->$mimeType:Ljava/lang/String;

    .line 129
    .line 130
    iget-object v7, p0, Lteam/opay/business/js/BusinessWebDelegate$handleFileResult$2$1$1;->$path:Ljava/lang/String;

    .line 131
    .line 132
    iget-object p1, p0, Lteam/opay/business/js/BusinessWebDelegate$handleFileResult$2$1$1;->$it:Lteam/opay/core/http/arch/Resource;

    .line 133
    .line 134
    invoke-virtual {p1}, Lteam/opay/core/http/arch/Resource;->b()Lteam/opay/core/http/arch/ApiError;

    .line 135
    .line 136
    .line 137
    move-result-object v9

    .line 138
    iput v2, p0, Lteam/opay/business/js/BusinessWebDelegate$handleFileResult$2$1$1;->label:I

    .line 139
    .line 140
    const/4 v8, 0x0

    .line 141
    const/4 v11, 0x4

    .line 142
    const/4 v12, 0x0

    .line 143
    move-object v10, p0

    .line 144
    invoke-static/range {v5 .. v12}, Lteam/opay/business/js/BusinessWebDelegate;->callbackH5$default(Lteam/opay/business/js/BusinessWebDelegate;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lteam/opay/core/http/arch/ApiError;Ljr2;ILjava/lang/Object;)Ljava/lang/Object;

    .line 145
    .line 146
    .line 147
    move-result-object p1

    .line 148
    if-ne p1, v0, :cond_b

    .line 149
    .line 150
    return-object v0

    .line 151
    :cond_a
    iget-object p1, p0, Lteam/opay/business/js/BusinessWebDelegate$handleFileResult$2$1$1;->$it:Lteam/opay/core/http/arch/Resource;

    .line 152
    .line 153
    invoke-virtual {p1}, Lteam/opay/core/http/arch/Resource;->a()Ljava/lang/Object;

    .line 154
    .line 155
    .line 156
    move-result-object p1

    .line 157
    check-cast p1, Lteam/opay/business/js/api/UploadPrivacyFileResponse;

    .line 158
    .line 159
    if-eqz p1, :cond_b

    .line 160
    .line 161
    iget-object v4, p0, Lteam/opay/business/js/BusinessWebDelegate$handleFileResult$2$1$1;->this$0:Lteam/opay/business/js/BusinessWebDelegate;

    .line 162
    .line 163
    iget-object v5, p0, Lteam/opay/business/js/BusinessWebDelegate$handleFileResult$2$1$1;->$mimeType:Ljava/lang/String;

    .line 164
    .line 165
    iget-object v6, p0, Lteam/opay/business/js/BusinessWebDelegate$handleFileResult$2$1$1;->$path:Ljava/lang/String;

    .line 166
    .line 167
    invoke-virtual {p1}, Lteam/opay/business/js/api/UploadPrivacyFileResponse;->getFileUrl()Ljava/lang/String;

    .line 168
    .line 169
    .line 170
    move-result-object v7

    .line 171
    iput-object p1, p0, Lteam/opay/business/js/BusinessWebDelegate$handleFileResult$2$1$1;->L$0:Ljava/lang/Object;

    .line 172
    .line 173
    iput v3, p0, Lteam/opay/business/js/BusinessWebDelegate$handleFileResult$2$1$1;->label:I

    .line 174
    .line 175
    const/4 v8, 0x0

    .line 176
    const/16 v10, 0x8

    .line 177
    .line 178
    const/4 v11, 0x0

    .line 179
    move-object v9, p0

    .line 180
    invoke-static/range {v4 .. v11}, Lteam/opay/business/js/BusinessWebDelegate;->callbackH5$default(Lteam/opay/business/js/BusinessWebDelegate;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lteam/opay/core/http/arch/ApiError;Ljr2;ILjava/lang/Object;)Ljava/lang/Object;

    .line 181
    .line 182
    .line 183
    move-result-object p1

    .line 184
    if-ne p1, v0, :cond_b

    .line 185
    .line 186
    return-object v0

    .line 187
    :cond_b
    :goto_5
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 188
    .line 189
    return-object p1
.end method
