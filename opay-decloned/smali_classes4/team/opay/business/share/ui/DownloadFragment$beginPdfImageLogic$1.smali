.class final Lteam/opay/business/share/ui/DownloadFragment$beginPdfImageLogic$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "DownloadFragment.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lteam/opay/business/share/ui/DownloadFragment;->N0()V
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
    c = "team.opay.business.share.ui.DownloadFragment$beginPdfImageLogic$1"
    f = "DownloadFragment.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field label:I

.field final synthetic this$0:Lteam/opay/business/share/ui/DownloadFragment;


# direct methods
.method public constructor <init>(Lteam/opay/business/share/ui/DownloadFragment;Ljr2;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lteam/opay/business/share/ui/DownloadFragment;",
            "Ljr2<",
            "-",
            "Lteam/opay/business/share/ui/DownloadFragment$beginPdfImageLogic$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lteam/opay/business/share/ui/DownloadFragment$beginPdfImageLogic$1;->this$0:Lteam/opay/business/share/ui/DownloadFragment;

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
    new-instance p1, Lteam/opay/business/share/ui/DownloadFragment$beginPdfImageLogic$1;

    .line 2
    .line 3
    iget-object v0, p0, Lteam/opay/business/share/ui/DownloadFragment$beginPdfImageLogic$1;->this$0:Lteam/opay/business/share/ui/DownloadFragment;

    .line 4
    .line 5
    invoke-direct {p1, v0, p2}, Lteam/opay/business/share/ui/DownloadFragment$beginPdfImageLogic$1;-><init>(Lteam/opay/business/share/ui/DownloadFragment;Ljr2;)V

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

    invoke-virtual {p0, p1, p2}, Lteam/opay/business/share/ui/DownloadFragment$beginPdfImageLogic$1;->invoke(Lzr2;Ljr2;)Ljava/lang/Object;

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
    invoke-virtual {p0, p1, p2}, Lteam/opay/business/share/ui/DownloadFragment$beginPdfImageLogic$1;->create(Ljava/lang/Object;Ljr2;)Ljr2;

    move-result-object p1

    check-cast p1, Lteam/opay/business/share/ui/DownloadFragment$beginPdfImageLogic$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lteam/opay/business/share/ui/DownloadFragment$beginPdfImageLogic$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->e()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    iget v0, p0, Lteam/opay/business/share/ui/DownloadFragment$beginPdfImageLogic$1;->label:I

    .line 5
    .line 6
    if-nez v0, :cond_4

    .line 7
    .line 8
    invoke-static {p1}, Lkotlin/d;->b(Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    sget-object p1, Lteam/opay/business/share/pdf/ShareFile;->a:Lteam/opay/business/share/pdf/ShareFile;

    .line 12
    .line 13
    iget-object v0, p0, Lteam/opay/business/share/ui/DownloadFragment$beginPdfImageLogic$1;->this$0:Lteam/opay/business/share/ui/DownloadFragment;

    .line 14
    .line 15
    invoke-static {v0}, Lteam/opay/business/share/ui/DownloadFragment;->J0(Lteam/opay/business/share/ui/DownloadFragment;)Lteam/opay/business/share/ShareItem;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-virtual {v0}, Lteam/opay/business/share/ShareItem;->getPlatform()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-virtual {p1, v0}, Lteam/opay/business/share/pdf/ShareFile;->f(Ljava/lang/String;)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    iget-object v1, p0, Lteam/opay/business/share/ui/DownloadFragment$beginPdfImageLogic$1;->this$0:Lteam/opay/business/share/ui/DownloadFragment;

    .line 28
    .line 29
    invoke-virtual {v1}, Lteam/opay/opb/common/base/EdgeFragment;->getAppContext()Landroid/content/Context;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    iget-object v2, p0, Lteam/opay/business/share/ui/DownloadFragment$beginPdfImageLogic$1;->this$0:Lteam/opay/business/share/ui/DownloadFragment;

    .line 34
    .line 35
    invoke-static {v2}, Lteam/opay/business/share/ui/DownloadFragment;->I0(Lteam/opay/business/share/ui/DownloadFragment;)Lteam/opay/business/share/PDFInfo;

    .line 36
    .line 37
    .line 38
    move-result-object v2

    .line 39
    const/4 v3, 0x0

    .line 40
    if-eqz v2, :cond_0

    .line 41
    .line 42
    invoke-virtual {v2}, Lteam/opay/business/share/PDFInfo;->getOrderNo()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v2

    .line 46
    goto :goto_0

    .line 47
    :cond_0
    move-object v2, v3

    .line 48
    :goto_0
    if-nez v2, :cond_1

    .line 49
    .line 50
    const-string v2, ""

    .line 51
    .line 52
    :cond_1
    iget-object v4, p0, Lteam/opay/business/share/ui/DownloadFragment$beginPdfImageLogic$1;->this$0:Lteam/opay/business/share/ui/DownloadFragment;

    .line 53
    .line 54
    invoke-static {v4}, Lteam/opay/business/share/ui/DownloadFragment;->I0(Lteam/opay/business/share/ui/DownloadFragment;)Lteam/opay/business/share/PDFInfo;

    .line 55
    .line 56
    .line 57
    move-result-object v4

    .line 58
    if-eqz v4, :cond_2

    .line 59
    .line 60
    invoke-virtual {v4}, Lteam/opay/business/share/PDFInfo;->getOtherInfo()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v3

    .line 64
    :cond_2
    invoke-virtual {p1, v1, v2, v0, v3}, Lteam/opay/business/share/pdf/ShareFile;->c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    .line 69
    .line 70
    .line 71
    move-result v0

    .line 72
    if-eqz v0, :cond_3

    .line 73
    .line 74
    iget-object v0, p0, Lteam/opay/business/share/ui/DownloadFragment$beginPdfImageLogic$1;->this$0:Lteam/opay/business/share/ui/DownloadFragment;

    .line 75
    .line 76
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object p1

    .line 80
    const-string v1, "getAbsolutePath(...)"

    .line 81
    .line 82
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 83
    .line 84
    .line 85
    invoke-static {v0, p1}, Lteam/opay/business/share/ui/DownloadFragment;->L0(Lteam/opay/business/share/ui/DownloadFragment;Ljava/lang/String;)V

    .line 86
    .line 87
    .line 88
    goto :goto_1

    .line 89
    :cond_3
    iget-object v0, p0, Lteam/opay/business/share/ui/DownloadFragment$beginPdfImageLogic$1;->this$0:Lteam/opay/business/share/ui/DownloadFragment;

    .line 90
    .line 91
    invoke-static {v0, p1}, Lteam/opay/business/share/ui/DownloadFragment;->H0(Lteam/opay/business/share/ui/DownloadFragment;Ljava/io/File;)V

    .line 92
    .line 93
    .line 94
    :goto_1
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 95
    .line 96
    return-object p1

    .line 97
    :cond_4
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 98
    .line 99
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 100
    .line 101
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 102
    .line 103
    .line 104
    throw p1
.end method
