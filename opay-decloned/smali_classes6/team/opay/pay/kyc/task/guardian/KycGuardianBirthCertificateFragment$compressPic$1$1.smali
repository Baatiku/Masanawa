.class final Lteam/opay/pay/kyc/task/guardian/KycGuardianBirthCertificateFragment$compressPic$1$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "KycGuardianBirthCertificateFragment.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lteam/opay/pay/kyc/task/guardian/KycGuardianBirthCertificateFragment$compressPic$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
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
    c = "team.opay.pay.kyc.task.guardian.KycGuardianBirthCertificateFragment$compressPic$1$1"
    f = "KycGuardianBirthCertificateFragment.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $callback:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Landroid/net/Uri;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $tempFile:Ljava/io/File;

.field label:I

.field final synthetic this$0:Lteam/opay/pay/kyc/task/guardian/KycGuardianBirthCertificateFragment;


# direct methods
.method public constructor <init>(Ljava/io/File;Lteam/opay/pay/kyc/task/guardian/KycGuardianBirthCertificateFragment;Lkotlin/jvm/functions/Function1;Ljr2;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Lteam/opay/pay/kyc/task/guardian/KycGuardianBirthCertificateFragment;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroid/net/Uri;",
            "Lkotlin/Unit;",
            ">;",
            "Ljr2<",
            "-",
            "Lteam/opay/pay/kyc/task/guardian/KycGuardianBirthCertificateFragment$compressPic$1$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lteam/opay/pay/kyc/task/guardian/KycGuardianBirthCertificateFragment$compressPic$1$1;->$tempFile:Ljava/io/File;

    .line 2
    .line 3
    iput-object p2, p0, Lteam/opay/pay/kyc/task/guardian/KycGuardianBirthCertificateFragment$compressPic$1$1;->this$0:Lteam/opay/pay/kyc/task/guardian/KycGuardianBirthCertificateFragment;

    .line 4
    .line 5
    iput-object p3, p0, Lteam/opay/pay/kyc/task/guardian/KycGuardianBirthCertificateFragment$compressPic$1$1;->$callback:Lkotlin/jvm/functions/Function1;

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
    new-instance p1, Lteam/opay/pay/kyc/task/guardian/KycGuardianBirthCertificateFragment$compressPic$1$1;

    .line 2
    .line 3
    iget-object v0, p0, Lteam/opay/pay/kyc/task/guardian/KycGuardianBirthCertificateFragment$compressPic$1$1;->$tempFile:Ljava/io/File;

    .line 4
    .line 5
    iget-object v1, p0, Lteam/opay/pay/kyc/task/guardian/KycGuardianBirthCertificateFragment$compressPic$1$1;->this$0:Lteam/opay/pay/kyc/task/guardian/KycGuardianBirthCertificateFragment;

    .line 6
    .line 7
    iget-object v2, p0, Lteam/opay/pay/kyc/task/guardian/KycGuardianBirthCertificateFragment$compressPic$1$1;->$callback:Lkotlin/jvm/functions/Function1;

    .line 8
    .line 9
    invoke-direct {p1, v0, v1, v2, p2}, Lteam/opay/pay/kyc/task/guardian/KycGuardianBirthCertificateFragment$compressPic$1$1;-><init>(Ljava/io/File;Lteam/opay/pay/kyc/task/guardian/KycGuardianBirthCertificateFragment;Lkotlin/jvm/functions/Function1;Ljr2;)V

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

    invoke-virtual {p0, p1, p2}, Lteam/opay/pay/kyc/task/guardian/KycGuardianBirthCertificateFragment$compressPic$1$1;->invoke(Lzr2;Ljr2;)Ljava/lang/Object;

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
    invoke-virtual {p0, p1, p2}, Lteam/opay/pay/kyc/task/guardian/KycGuardianBirthCertificateFragment$compressPic$1$1;->create(Ljava/lang/Object;Ljr2;)Ljr2;

    move-result-object p1

    check-cast p1, Lteam/opay/pay/kyc/task/guardian/KycGuardianBirthCertificateFragment$compressPic$1$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lteam/opay/pay/kyc/task/guardian/KycGuardianBirthCertificateFragment$compressPic$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

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
    iget v0, p0, Lteam/opay/pay/kyc/task/guardian/KycGuardianBirthCertificateFragment$compressPic$1$1;->label:I

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    invoke-static {p1}, Lkotlin/d;->b(Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    iget-object p1, p0, Lteam/opay/pay/kyc/task/guardian/KycGuardianBirthCertificateFragment$compressPic$1$1;->$tempFile:Ljava/io/File;

    .line 12
    .line 13
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    new-instance v0, Ljava/lang/StringBuilder;

    .line 18
    .line 19
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 20
    .line 21
    .line 22
    const-string v1, "compress result->"

    .line 23
    .line 24
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    iget-object p1, p0, Lteam/opay/pay/kyc/task/guardian/KycGuardianBirthCertificateFragment$compressPic$1$1;->this$0:Lteam/opay/pay/kyc/task/guardian/KycGuardianBirthCertificateFragment;

    .line 31
    .line 32
    iget-object v0, p0, Lteam/opay/pay/kyc/task/guardian/KycGuardianBirthCertificateFragment$compressPic$1$1;->$tempFile:Ljava/io/File;

    .line 33
    .line 34
    invoke-static {p1, v0}, Lteam/opay/pay/kyc/task/guardian/KycGuardianBirthCertificateFragment;->v0(Lteam/opay/pay/kyc/task/guardian/KycGuardianBirthCertificateFragment;Ljava/io/File;)Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    iget-object v0, p0, Lteam/opay/pay/kyc/task/guardian/KycGuardianBirthCertificateFragment$compressPic$1$1;->this$0:Lteam/opay/pay/kyc/task/guardian/KycGuardianBirthCertificateFragment;

    .line 39
    .line 40
    iget-object v1, p0, Lteam/opay/pay/kyc/task/guardian/KycGuardianBirthCertificateFragment$compressPic$1$1;->$callback:Lkotlin/jvm/functions/Function1;

    .line 41
    .line 42
    iget-object v2, p0, Lteam/opay/pay/kyc/task/guardian/KycGuardianBirthCertificateFragment$compressPic$1$1;->$tempFile:Ljava/io/File;

    .line 43
    .line 44
    invoke-static {v0, v1, p1, v2}, Lteam/opay/pay/kyc/task/guardian/KycGuardianBirthCertificateFragment;->x0(Lteam/opay/pay/kyc/task/guardian/KycGuardianBirthCertificateFragment;Lkotlin/jvm/functions/Function1;Ljava/lang/String;Ljava/io/File;)V

    .line 45
    .line 46
    .line 47
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 48
    .line 49
    return-object p1

    .line 50
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 51
    .line 52
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 53
    .line 54
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    throw p1
.end method
