.class final Lteam/opay/pay/base/FragmentKt$preloadPrivateImage$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "Fragment.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lteam/opay/pay/base/FragmentKt;->q(Landroidx/fragment/app/Fragment;Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V
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
    c = "team.opay.pay.base.FragmentKt$preloadPrivateImage$1"
    f = "Fragment.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $callback:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Landroid/graphics/drawable/Drawable;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $imageUrl:Ljava/lang/String;

.field final synthetic $this_preloadPrivateImage:Landroidx/fragment/app/Fragment;

.field label:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroidx/fragment/app/Fragment;Lkotlin/jvm/functions/Function1;Ljr2;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroidx/fragment/app/Fragment;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroid/graphics/drawable/Drawable;",
            "Lkotlin/Unit;",
            ">;",
            "Ljr2<",
            "-",
            "Lteam/opay/pay/base/FragmentKt$preloadPrivateImage$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lteam/opay/pay/base/FragmentKt$preloadPrivateImage$1;->$imageUrl:Ljava/lang/String;

    .line 2
    .line 3
    iput-object p2, p0, Lteam/opay/pay/base/FragmentKt$preloadPrivateImage$1;->$this_preloadPrivateImage:Landroidx/fragment/app/Fragment;

    .line 4
    .line 5
    iput-object p3, p0, Lteam/opay/pay/base/FragmentKt$preloadPrivateImage$1;->$callback:Lkotlin/jvm/functions/Function1;

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
    .locals 3
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
    new-instance p1, Lteam/opay/pay/base/FragmentKt$preloadPrivateImage$1;

    .line 2
    .line 3
    iget-object v0, p0, Lteam/opay/pay/base/FragmentKt$preloadPrivateImage$1;->$imageUrl:Ljava/lang/String;

    .line 4
    .line 5
    iget-object v1, p0, Lteam/opay/pay/base/FragmentKt$preloadPrivateImage$1;->$this_preloadPrivateImage:Landroidx/fragment/app/Fragment;

    .line 6
    .line 7
    iget-object v2, p0, Lteam/opay/pay/base/FragmentKt$preloadPrivateImage$1;->$callback:Lkotlin/jvm/functions/Function1;

    .line 8
    .line 9
    invoke-direct {p1, v0, v1, v2, p2}, Lteam/opay/pay/base/FragmentKt$preloadPrivateImage$1;-><init>(Ljava/lang/String;Landroidx/fragment/app/Fragment;Lkotlin/jvm/functions/Function1;Ljr2;)V

    .line 10
    .line 11
    .line 12
    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2
    check-cast p1, Lzr2;

    check-cast p2, Ljr2;

    invoke-virtual {p0, p1, p2}, Lteam/opay/pay/base/FragmentKt$preloadPrivateImage$1;->invoke(Lzr2;Ljr2;)Ljava/lang/Object;

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
    invoke-virtual {p0, p1, p2}, Lteam/opay/pay/base/FragmentKt$preloadPrivateImage$1;->create(Ljava/lang/Object;Ljr2;)Ljr2;

    move-result-object p1

    check-cast p1, Lteam/opay/pay/base/FragmentKt$preloadPrivateImage$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lteam/opay/pay/base/FragmentKt$preloadPrivateImage$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->e()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    iget v0, p0, Lteam/opay/pay/base/FragmentKt$preloadPrivateImage$1;->label:I

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    invoke-static {p1}, Lkotlin/d;->b(Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    sget-object p1, Lteam/opay/pay/envconfigapi/ConfigStorage;->f:Lteam/opay/pay/envconfigapi/ConfigStorage$Companion;

    .line 12
    .line 13
    invoke-virtual {p1}, Lteam/opay/pay/envconfigapi/ConfigStorage$Companion;->a()Lteam/opay/pay/envconfigapi/ConfigStorage;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    const-string v0, "cardWeb"

    .line 18
    .line 19
    const-string v1, ""

    .line 20
    .line 21
    invoke-virtual {p1, v0, v1}, Lteam/opay/pay/envconfigapi/ConfigStorage;->b(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    iget-object v0, p0, Lteam/opay/pay/base/FragmentKt$preloadPrivateImage$1;->$imageUrl:Ljava/lang/String;

    .line 26
    .line 27
    new-instance v1, Ljava/lang/StringBuilder;

    .line 28
    .line 29
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 30
    .line 31
    .line 32
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    const-string p1, "/file/download?url="

    .line 36
    .line 37
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    new-instance v0, Lcom/bumptech/glide/load/model/GlideUrl;

    .line 48
    .line 49
    new-instance v1, Lcom/bumptech/glide/load/model/LazyHeaders$Builder;

    .line 50
    .line 51
    invoke-direct {v1}, Lcom/bumptech/glide/load/model/LazyHeaders$Builder;-><init>()V

    .line 52
    .line 53
    .line 54
    new-instance v2, Lteam/opay/core/settings/SettingsStorage;

    .line 55
    .line 56
    invoke-static {}, Ljmf;->i()Landroid/content/Context;

    .line 57
    .line 58
    .line 59
    move-result-object v3

    .line 60
    invoke-direct {v2, v3}, Lteam/opay/core/settings/SettingsStorage;-><init>(Landroid/content/Context;)V

    .line 61
    .line 62
    .line 63
    invoke-virtual {v2}, Lteam/opay/core/settings/SettingsStorage;->e()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v2

    .line 67
    const-string v3, "Authorization"

    .line 68
    .line 69
    invoke-virtual {v1, v3, v2}, Lcom/bumptech/glide/load/model/LazyHeaders$Builder;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/bumptech/glide/load/model/LazyHeaders$Builder;

    .line 70
    .line 71
    .line 72
    move-result-object v1

    .line 73
    invoke-virtual {v1}, Lcom/bumptech/glide/load/model/LazyHeaders$Builder;->c()Lcom/bumptech/glide/load/model/LazyHeaders;

    .line 74
    .line 75
    .line 76
    move-result-object v1

    .line 77
    invoke-direct {v0, p1, v1}, Lcom/bumptech/glide/load/model/GlideUrl;-><init>(Ljava/lang/String;Lcom/bumptech/glide/load/model/a;)V

    .line 78
    .line 79
    .line 80
    iget-object p1, p0, Lteam/opay/pay/base/FragmentKt$preloadPrivateImage$1;->$this_preloadPrivateImage:Landroidx/fragment/app/Fragment;

    .line 81
    .line 82
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 83
    .line 84
    .line 85
    move-result-object p1

    .line 86
    invoke-static {p1}, Lcom/bumptech/glide/a;->u(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    .line 87
    .line 88
    .line 89
    move-result-object p1

    .line 90
    invoke-virtual {p1, v0}, Lcom/bumptech/glide/RequestManager;->t(Ljava/lang/Object;)Ljpc;

    .line 91
    .line 92
    .line 93
    move-result-object p1

    .line 94
    const/16 v0, 0x3a98

    .line 95
    .line 96
    invoke-virtual {p1, v0}, Lcom/bumptech/glide/request/BaseRequestOptions;->k0(I)Lcom/bumptech/glide/request/BaseRequestOptions;

    .line 97
    .line 98
    .line 99
    move-result-object p1

    .line 100
    check-cast p1, Ljpc;

    .line 101
    .line 102
    new-instance v0, Lteam/opay/pay/base/FragmentKt$preloadPrivateImage$1$a;

    .line 103
    .line 104
    iget-object v1, p0, Lteam/opay/pay/base/FragmentKt$preloadPrivateImage$1;->$this_preloadPrivateImage:Landroidx/fragment/app/Fragment;

    .line 105
    .line 106
    iget-object v2, p0, Lteam/opay/pay/base/FragmentKt$preloadPrivateImage$1;->$callback:Lkotlin/jvm/functions/Function1;

    .line 107
    .line 108
    invoke-direct {v0, v1, v2}, Lteam/opay/pay/base/FragmentKt$preloadPrivateImage$1$a;-><init>(Landroidx/fragment/app/Fragment;Lkotlin/jvm/functions/Function1;)V

    .line 109
    .line 110
    .line 111
    invoke-virtual {p1, v0}, Ljpc;->s0(Lnpc;)Ljpc;

    .line 112
    .line 113
    .line 114
    move-result-object p1

    .line 115
    invoke-virtual {p1}, Ljpc;->R0()Lwm6;

    .line 116
    .line 117
    .line 118
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 119
    .line 120
    return-object p1

    .line 121
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 122
    .line 123
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 124
    .line 125
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 126
    .line 127
    .line 128
    throw p1
.end method
