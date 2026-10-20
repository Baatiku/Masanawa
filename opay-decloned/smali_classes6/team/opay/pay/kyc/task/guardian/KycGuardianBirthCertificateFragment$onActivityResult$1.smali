.class final Lteam/opay/pay/kyc/task/guardian/KycGuardianBirthCertificateFragment$onActivityResult$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "KycGuardianBirthCertificateFragment.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lteam/opay/pay/kyc/task/guardian/KycGuardianBirthCertificateFragment;->onActivityResult(IILandroid/content/Intent;)V
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
    c = "team.opay.pay.kyc.task.guardian.KycGuardianBirthCertificateFragment$onActivityResult$1"
    f = "KycGuardianBirthCertificateFragment.kt"
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

.field final synthetic this$0:Lteam/opay/pay/kyc/task/guardian/KycGuardianBirthCertificateFragment;


# direct methods
.method public constructor <init>(Landroid/content/Intent;Lkotlin/jvm/internal/Ref$ObjectRef;Lteam/opay/pay/kyc/task/guardian/KycGuardianBirthCertificateFragment;Ljr2;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "Ljava/lang/String;",
            ">;",
            "Lteam/opay/pay/kyc/task/guardian/KycGuardianBirthCertificateFragment;",
            "Ljr2<",
            "-",
            "Lteam/opay/pay/kyc/task/guardian/KycGuardianBirthCertificateFragment$onActivityResult$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lteam/opay/pay/kyc/task/guardian/KycGuardianBirthCertificateFragment$onActivityResult$1;->$data:Landroid/content/Intent;

    .line 2
    .line 3
    iput-object p2, p0, Lteam/opay/pay/kyc/task/guardian/KycGuardianBirthCertificateFragment$onActivityResult$1;->$resultPicPath:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 4
    .line 5
    iput-object p3, p0, Lteam/opay/pay/kyc/task/guardian/KycGuardianBirthCertificateFragment$onActivityResult$1;->this$0:Lteam/opay/pay/kyc/task/guardian/KycGuardianBirthCertificateFragment;

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

.method public static synthetic c(Lteam/opay/pay/kyc/task/guardian/KycGuardianBirthCertificateFragment;Landroid/net/Uri;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/pay/kyc/task/guardian/KycGuardianBirthCertificateFragment$onActivityResult$1;->invokeSuspend$lambda$1(Lteam/opay/pay/kyc/task/guardian/KycGuardianBirthCertificateFragment;Landroid/net/Uri;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic f(Lteam/opay/pay/kyc/task/guardian/KycGuardianBirthCertificateFragment;Landroid/net/Uri;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/pay/kyc/task/guardian/KycGuardianBirthCertificateFragment$onActivityResult$1;->invokeSuspend$lambda$0(Lteam/opay/pay/kyc/task/guardian/KycGuardianBirthCertificateFragment;Landroid/net/Uri;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private static final invokeSuspend$lambda$0(Lteam/opay/pay/kyc/task/guardian/KycGuardianBirthCertificateFragment;Landroid/net/Uri;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/pay/kyc/task/guardian/KycGuardianBirthCertificateFragment;->w0(Lteam/opay/pay/kyc/task/guardian/KycGuardianBirthCertificateFragment;)Lteam/opay/pay/kyc/task/guardian/KycGuardianBirthCertificatViewModel;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-virtual {p0}, Lteam/opay/pay/kyc/task/guardian/KycGuardianBirthCertificatViewModel;->G()Landroidx/lifecycle/MutableLiveData;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    invoke-virtual {p0, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 10
    .line 11
    .line 12
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 13
    .line 14
    return-object p0
.end method

.method private static final invokeSuspend$lambda$1(Lteam/opay/pay/kyc/task/guardian/KycGuardianBirthCertificateFragment;Landroid/net/Uri;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/pay/kyc/task/guardian/KycGuardianBirthCertificateFragment;->w0(Lteam/opay/pay/kyc/task/guardian/KycGuardianBirthCertificateFragment;)Lteam/opay/pay/kyc/task/guardian/KycGuardianBirthCertificatViewModel;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-virtual {p0}, Lteam/opay/pay/kyc/task/guardian/KycGuardianBirthCertificatViewModel;->G()Landroidx/lifecycle/MutableLiveData;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    invoke-virtual {p0, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 10
    .line 11
    .line 12
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 13
    .line 14
    return-object p0
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
    new-instance p1, Lteam/opay/pay/kyc/task/guardian/KycGuardianBirthCertificateFragment$onActivityResult$1;

    .line 2
    .line 3
    iget-object v0, p0, Lteam/opay/pay/kyc/task/guardian/KycGuardianBirthCertificateFragment$onActivityResult$1;->$data:Landroid/content/Intent;

    .line 4
    .line 5
    iget-object v1, p0, Lteam/opay/pay/kyc/task/guardian/KycGuardianBirthCertificateFragment$onActivityResult$1;->$resultPicPath:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 6
    .line 7
    iget-object v2, p0, Lteam/opay/pay/kyc/task/guardian/KycGuardianBirthCertificateFragment$onActivityResult$1;->this$0:Lteam/opay/pay/kyc/task/guardian/KycGuardianBirthCertificateFragment;

    .line 8
    .line 9
    invoke-direct {p1, v0, v1, v2, p2}, Lteam/opay/pay/kyc/task/guardian/KycGuardianBirthCertificateFragment$onActivityResult$1;-><init>(Landroid/content/Intent;Lkotlin/jvm/internal/Ref$ObjectRef;Lteam/opay/pay/kyc/task/guardian/KycGuardianBirthCertificateFragment;Ljr2;)V

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

    invoke-virtual {p0, p1, p2}, Lteam/opay/pay/kyc/task/guardian/KycGuardianBirthCertificateFragment$onActivityResult$1;->invoke(Lzr2;Ljr2;)Ljava/lang/Object;

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
    invoke-virtual {p0, p1, p2}, Lteam/opay/pay/kyc/task/guardian/KycGuardianBirthCertificateFragment$onActivityResult$1;->create(Ljava/lang/Object;Ljr2;)Ljr2;

    move-result-object p1

    check-cast p1, Lteam/opay/pay/kyc/task/guardian/KycGuardianBirthCertificateFragment$onActivityResult$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lteam/opay/pay/kyc/task/guardian/KycGuardianBirthCertificateFragment$onActivityResult$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

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
    iget v0, p0, Lteam/opay/pay/kyc/task/guardian/KycGuardianBirthCertificateFragment$onActivityResult$1;->label:I

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
    iget-object p1, p0, Lteam/opay/pay/kyc/task/guardian/KycGuardianBirthCertificateFragment$onActivityResult$1;->$data:Landroid/content/Intent;

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
    iget-object p1, p0, Lteam/opay/pay/kyc/task/guardian/KycGuardianBirthCertificateFragment$onActivityResult$1;->$resultPicPath:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 37
    .line 38
    iget-object v1, p0, Lteam/opay/pay/kyc/task/guardian/KycGuardianBirthCertificateFragment$onActivityResult$1;->this$0:Lteam/opay/pay/kyc/task/guardian/KycGuardianBirthCertificateFragment;

    .line 39
    .line 40
    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    iget-object v2, p0, Lteam/opay/pay/kyc/task/guardian/KycGuardianBirthCertificateFragment$onActivityResult$1;->$resultPicPath:Lkotlin/jvm/internal/Ref$ObjectRef;

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
    iget-object p1, p0, Lteam/opay/pay/kyc/task/guardian/KycGuardianBirthCertificateFragment$onActivityResult$1;->$resultPicPath:Lkotlin/jvm/internal/Ref$ObjectRef;

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
    const-string v1, "compress pre->"

    .line 66
    .line 67
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    iget-object p1, p0, Lteam/opay/pay/kyc/task/guardian/KycGuardianBirthCertificateFragment$onActivityResult$1;->this$0:Lteam/opay/pay/kyc/task/guardian/KycGuardianBirthCertificateFragment;

    .line 74
    .line 75
    iget-object v0, p0, Lteam/opay/pay/kyc/task/guardian/KycGuardianBirthCertificateFragment$onActivityResult$1;->$resultPicPath:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 76
    .line 77
    iget-object v0, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 78
    .line 79
    check-cast v0, Ljava/lang/String;

    .line 80
    .line 81
    new-instance v1, Lteam/opay/pay/kyc/task/guardian/b;

    .line 82
    .line 83
    invoke-direct {v1, p1}, Lteam/opay/pay/kyc/task/guardian/b;-><init>(Lteam/opay/pay/kyc/task/guardian/KycGuardianBirthCertificateFragment;)V

    .line 84
    .line 85
    .line 86
    invoke-static {p1, v0, v1}, Lteam/opay/pay/kyc/task/guardian/KycGuardianBirthCertificateFragment;->u0(Lteam/opay/pay/kyc/task/guardian/KycGuardianBirthCertificateFragment;Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V

    .line 87
    .line 88
    .line 89
    goto :goto_0

    .line 90
    :cond_1
    iget-object p1, p0, Lteam/opay/pay/kyc/task/guardian/KycGuardianBirthCertificateFragment$onActivityResult$1;->this$0:Lteam/opay/pay/kyc/task/guardian/KycGuardianBirthCertificateFragment;

    .line 91
    .line 92
    iget-object v0, p0, Lteam/opay/pay/kyc/task/guardian/KycGuardianBirthCertificateFragment$onActivityResult$1;->$resultPicPath:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 93
    .line 94
    iget-object v0, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 95
    .line 96
    check-cast v0, Ljava/lang/String;

    .line 97
    .line 98
    new-instance v1, Lteam/opay/pay/kyc/task/guardian/c;

    .line 99
    .line 100
    invoke-direct {v1, p1}, Lteam/opay/pay/kyc/task/guardian/c;-><init>(Lteam/opay/pay/kyc/task/guardian/KycGuardianBirthCertificateFragment;)V

    .line 101
    .line 102
    .line 103
    invoke-static {p1, v0, v1}, Lteam/opay/pay/kyc/task/guardian/KycGuardianBirthCertificateFragment;->u0(Lteam/opay/pay/kyc/task/guardian/KycGuardianBirthCertificateFragment;Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V

    .line 104
    .line 105
    .line 106
    :goto_0
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 107
    .line 108
    return-object p1

    .line 109
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 110
    .line 111
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 112
    .line 113
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 114
    .line 115
    .line 116
    throw p1
.end method
