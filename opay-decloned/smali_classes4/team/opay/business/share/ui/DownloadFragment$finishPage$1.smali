.class final Lteam/opay/business/share/ui/DownloadFragment$finishPage$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "DownloadFragment.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lteam/opay/business/share/ui/DownloadFragment;->P0(I)V
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
    c = "team.opay.business.share.ui.DownloadFragment$finishPage$1"
    f = "DownloadFragment.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $msg:I

.field label:I

.field final synthetic this$0:Lteam/opay/business/share/ui/DownloadFragment;


# direct methods
.method public constructor <init>(Lteam/opay/business/share/ui/DownloadFragment;ILjr2;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lteam/opay/business/share/ui/DownloadFragment;",
            "I",
            "Ljr2<",
            "-",
            "Lteam/opay/business/share/ui/DownloadFragment$finishPage$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lteam/opay/business/share/ui/DownloadFragment$finishPage$1;->this$0:Lteam/opay/business/share/ui/DownloadFragment;

    .line 2
    .line 3
    iput p2, p0, Lteam/opay/business/share/ui/DownloadFragment$finishPage$1;->$msg:I

    .line 4
    .line 5
    const/4 p1, 0x2

    .line 6
    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILjr2;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Ljr2;)Ljr2;
    .locals 2
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
    new-instance p1, Lteam/opay/business/share/ui/DownloadFragment$finishPage$1;

    .line 2
    .line 3
    iget-object v0, p0, Lteam/opay/business/share/ui/DownloadFragment$finishPage$1;->this$0:Lteam/opay/business/share/ui/DownloadFragment;

    .line 4
    .line 5
    iget v1, p0, Lteam/opay/business/share/ui/DownloadFragment$finishPage$1;->$msg:I

    .line 6
    .line 7
    invoke-direct {p1, v0, v1, p2}, Lteam/opay/business/share/ui/DownloadFragment$finishPage$1;-><init>(Lteam/opay/business/share/ui/DownloadFragment;ILjr2;)V

    .line 8
    .line 9
    .line 10
    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2
    check-cast p1, Lzr2;

    check-cast p2, Ljr2;

    invoke-virtual {p0, p1, p2}, Lteam/opay/business/share/ui/DownloadFragment$finishPage$1;->invoke(Lzr2;Ljr2;)Ljava/lang/Object;

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
    invoke-virtual {p0, p1, p2}, Lteam/opay/business/share/ui/DownloadFragment$finishPage$1;->create(Ljava/lang/Object;Ljr2;)Ljr2;

    move-result-object p1

    check-cast p1, Lteam/opay/business/share/ui/DownloadFragment$finishPage$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lteam/opay/business/share/ui/DownloadFragment$finishPage$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->e()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    iget v0, p0, Lteam/opay/business/share/ui/DownloadFragment$finishPage$1;->label:I

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    invoke-static {p1}, Lkotlin/d;->b(Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    iget-object p1, p0, Lteam/opay/business/share/ui/DownloadFragment$finishPage$1;->this$0:Lteam/opay/business/share/ui/DownloadFragment;

    .line 12
    .line 13
    invoke-static {p1}, Lteam/opay/business/share/ui/DownloadFragment;->K0(Lteam/opay/business/share/ui/DownloadFragment;)Lteam/opay/business/share/ShareViewModel;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    invoke-virtual {p1}, Lteam/opay/business/share/ShareViewModel;->s()Landroidx/lifecycle/MutableLiveData;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    const/4 v0, 0x0

    .line 22
    invoke-static {v0}, Ldf1;->a(Z)Ljava/lang/Boolean;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    invoke-virtual {p1, v0}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 27
    .line 28
    .line 29
    iget-object p1, p0, Lteam/opay/business/share/ui/DownloadFragment$finishPage$1;->this$0:Lteam/opay/business/share/ui/DownloadFragment;

    .line 30
    .line 31
    invoke-virtual {p1}, Lteam/opay/opb/common/base/EdgeFragment;->getAppContext()Landroid/content/Context;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    iget v0, p0, Lteam/opay/business/share/ui/DownloadFragment$finishPage$1;->$msg:I

    .line 36
    .line 37
    invoke-static {p1, v0}, Let;->u(Landroid/content/Context;I)V

    .line 38
    .line 39
    .line 40
    iget-object p1, p0, Lteam/opay/business/share/ui/DownloadFragment$finishPage$1;->this$0:Lteam/opay/business/share/ui/DownloadFragment;

    .line 41
    .line 42
    invoke-virtual {p1}, Lteam/opay/opb/common/base/EdgeFragment;->getFragmentActivity()Landroidx/fragment/app/FragmentActivity;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    .line 47
    .line 48
    .line 49
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 50
    .line 51
    return-object p1

    .line 52
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 53
    .line 54
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 55
    .line 56
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    throw p1
.end method
