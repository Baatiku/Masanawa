.class final Lteam/opay/pay/settings/profile/ProfilePhotoFragment$onActivityResult$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "ProfilePhotoFragment.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lteam/opay/pay/settings/profile/ProfilePhotoFragment;->onActivityResult(IILandroid/content/Intent;)V
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
    c = "team.opay.pay.settings.profile.ProfilePhotoFragment$onActivityResult$1"
    f = "ProfilePhotoFragment.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $data:Landroid/content/Intent;

.field final synthetic $resultPicPath:Lkotlin/jvm/internal/Ref$ObjectRef;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field label:I

.field final synthetic this$0:Lteam/opay/pay/settings/profile/ProfilePhotoFragment;


# direct methods
.method public constructor <init>(Landroid/content/Intent;Lkotlin/jvm/internal/Ref$ObjectRef;Lteam/opay/pay/settings/profile/ProfilePhotoFragment;Ljr2;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "Ljava/lang/String;",
            ">;",
            "Lteam/opay/pay/settings/profile/ProfilePhotoFragment;",
            "Ljr2<",
            "-",
            "Lteam/opay/pay/settings/profile/ProfilePhotoFragment$onActivityResult$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lteam/opay/pay/settings/profile/ProfilePhotoFragment$onActivityResult$1;->$data:Landroid/content/Intent;

    .line 2
    .line 3
    iput-object p2, p0, Lteam/opay/pay/settings/profile/ProfilePhotoFragment$onActivityResult$1;->$resultPicPath:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 4
    .line 5
    iput-object p3, p0, Lteam/opay/pay/settings/profile/ProfilePhotoFragment$onActivityResult$1;->this$0:Lteam/opay/pay/settings/profile/ProfilePhotoFragment;

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
    new-instance p1, Lteam/opay/pay/settings/profile/ProfilePhotoFragment$onActivityResult$1;

    .line 2
    .line 3
    iget-object v0, p0, Lteam/opay/pay/settings/profile/ProfilePhotoFragment$onActivityResult$1;->$data:Landroid/content/Intent;

    .line 4
    .line 5
    iget-object v1, p0, Lteam/opay/pay/settings/profile/ProfilePhotoFragment$onActivityResult$1;->$resultPicPath:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 6
    .line 7
    iget-object v2, p0, Lteam/opay/pay/settings/profile/ProfilePhotoFragment$onActivityResult$1;->this$0:Lteam/opay/pay/settings/profile/ProfilePhotoFragment;

    .line 8
    .line 9
    invoke-direct {p1, v0, v1, v2, p2}, Lteam/opay/pay/settings/profile/ProfilePhotoFragment$onActivityResult$1;-><init>(Landroid/content/Intent;Lkotlin/jvm/internal/Ref$ObjectRef;Lteam/opay/pay/settings/profile/ProfilePhotoFragment;Ljr2;)V

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

    invoke-virtual {p0, p1, p2}, Lteam/opay/pay/settings/profile/ProfilePhotoFragment$onActivityResult$1;->invoke(Lzr2;Ljr2;)Ljava/lang/Object;

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
    invoke-virtual {p0, p1, p2}, Lteam/opay/pay/settings/profile/ProfilePhotoFragment$onActivityResult$1;->create(Ljava/lang/Object;Ljr2;)Ljr2;

    move-result-object p1

    check-cast p1, Lteam/opay/pay/settings/profile/ProfilePhotoFragment$onActivityResult$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lteam/opay/pay/settings/profile/ProfilePhotoFragment$onActivityResult$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->e()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    iget v0, p0, Lteam/opay/pay/settings/profile/ProfilePhotoFragment$onActivityResult$1;->label:I

    .line 5
    .line 6
    if-nez v0, :cond_2

    .line 7
    .line 8
    invoke-static {p1}, Lkotlin/d;->b(Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 12
    .line 13
    const/16 v0, 0x1d

    .line 14
    .line 15
    if-ne p1, v0, :cond_1

    .line 16
    .line 17
    iget-object p1, p0, Lteam/opay/pay/settings/profile/ProfilePhotoFragment$onActivityResult$1;->$data:Landroid/content/Intent;

    .line 18
    .line 19
    const/4 v0, 0x0

    .line 20
    if-eqz p1, :cond_0

    .line 21
    .line 22
    invoke-static {p1}, Lu09;->g(Landroid/content/Intent;)Ljava/util/List;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    if-eqz p1, :cond_0

    .line 27
    .line 28
    const/4 v0, 0x0

    .line 29
    invoke-static {p1, v0}, Lkotlin/collections/CollectionsKt;->k0(Ljava/util/List;I)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    move-object v0, p1

    .line 34
    check-cast v0, Landroid/net/Uri;

    .line 35
    .line 36
    :cond_0
    iget-object p1, p0, Lteam/opay/pay/settings/profile/ProfilePhotoFragment$onActivityResult$1;->$resultPicPath:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 37
    .line 38
    iget-object v1, p0, Lteam/opay/pay/settings/profile/ProfilePhotoFragment$onActivityResult$1;->this$0:Lteam/opay/pay/settings/profile/ProfilePhotoFragment;

    .line 39
    .line 40
    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    iget-object v2, p0, Lteam/opay/pay/settings/profile/ProfilePhotoFragment$onActivityResult$1;->$resultPicPath:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 45
    .line 46
    iget-object v2, v2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 47
    .line 48
    check-cast v2, Ljava/lang/String;

    .line 49
    .line 50
    invoke-static {v1, v0, v2}, Lcom/zhihu/matisse/util/MediaStoreUtils;->a(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    iput-object v0, p1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 55
    .line 56
    iget-object p1, p0, Lteam/opay/pay/settings/profile/ProfilePhotoFragment$onActivityResult$1;->$resultPicPath:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 57
    .line 58
    iget-object p1, p1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 59
    .line 60
    new-instance v0, Ljava/lang/StringBuilder;

    .line 61
    .line 62
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 63
    .line 64
    .line 65
    const-string/jumbo v1, "\u538b\u7f29\u524d\u7684\u56fe\u7247\u5730\u5740->"

    .line 66
    .line 67
    .line 68
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    iget-object p1, p0, Lteam/opay/pay/settings/profile/ProfilePhotoFragment$onActivityResult$1;->this$0:Lteam/opay/pay/settings/profile/ProfilePhotoFragment;

    .line 75
    .line 76
    new-instance v0, Ljava/io/File;

    .line 77
    .line 78
    iget-object v1, p0, Lteam/opay/pay/settings/profile/ProfilePhotoFragment$onActivityResult$1;->$resultPicPath:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 79
    .line 80
    iget-object v1, v1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 81
    .line 82
    check-cast v1, Ljava/lang/String;

    .line 83
    .line 84
    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 85
    .line 86
    .line 87
    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    .line 88
    .line 89
    .line 90
    move-result-object v0

    .line 91
    invoke-static {p1, v0}, Lteam/opay/pay/settings/profile/ProfilePhotoFragment;->T(Lteam/opay/pay/settings/profile/ProfilePhotoFragment;Landroid/net/Uri;)V

    .line 92
    .line 93
    .line 94
    goto :goto_0

    .line 95
    :cond_1
    iget-object p1, p0, Lteam/opay/pay/settings/profile/ProfilePhotoFragment$onActivityResult$1;->this$0:Lteam/opay/pay/settings/profile/ProfilePhotoFragment;

    .line 96
    .line 97
    new-instance v0, Ljava/io/File;

    .line 98
    .line 99
    iget-object v1, p0, Lteam/opay/pay/settings/profile/ProfilePhotoFragment$onActivityResult$1;->$resultPicPath:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 100
    .line 101
    iget-object v1, v1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 102
    .line 103
    check-cast v1, Ljava/lang/String;

    .line 104
    .line 105
    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 106
    .line 107
    .line 108
    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    .line 109
    .line 110
    .line 111
    move-result-object v0

    .line 112
    invoke-static {p1, v0}, Lteam/opay/pay/settings/profile/ProfilePhotoFragment;->T(Lteam/opay/pay/settings/profile/ProfilePhotoFragment;Landroid/net/Uri;)V

    .line 113
    .line 114
    .line 115
    :goto_0
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 116
    .line 117
    return-object p1

    .line 118
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 119
    .line 120
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 121
    .line 122
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 123
    .line 124
    .line 125
    throw p1
.end method
