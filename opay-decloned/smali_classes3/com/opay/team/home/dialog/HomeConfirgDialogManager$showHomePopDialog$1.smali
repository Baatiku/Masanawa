.class final Lcom/opay/team/home/dialog/HomeConfirgDialogManager$showHomePopDialog$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "HomeConfirgDialogManager.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/opay/team/home/dialog/HomeConfirgDialogManager;->l(Landroidx/fragment/app/Fragment;Lteam/opay/odialog/net/AdDataItem;Ljava/lang/String;ZLkotlin/jvm/functions/Function0;)V
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
    c = "com.opay.team.home.dialog.HomeConfirgDialogManager$showHomePopDialog$1"
    f = "HomeConfirgDialogManager.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $data:Lteam/opay/odialog/net/AdDataItem;

.field final synthetic $fragment:Landroidx/fragment/app/Fragment;

.field final synthetic $fromHome:Z

.field final synthetic $onDismissCallback:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $source:Ljava/lang/String;

.field label:I

.field final synthetic this$0:Lcom/opay/team/home/dialog/HomeConfirgDialogManager;


# direct methods
.method public constructor <init>(Lteam/opay/odialog/net/AdDataItem;Lcom/opay/team/home/dialog/HomeConfirgDialogManager;Landroidx/fragment/app/Fragment;Ljava/lang/String;ZLkotlin/jvm/functions/Function0;Ljr2;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lteam/opay/odialog/net/AdDataItem;",
            "Lcom/opay/team/home/dialog/HomeConfirgDialogManager;",
            "Landroidx/fragment/app/Fragment;",
            "Ljava/lang/String;",
            "Z",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;",
            "Ljr2<",
            "-",
            "Lcom/opay/team/home/dialog/HomeConfirgDialogManager$showHomePopDialog$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/opay/team/home/dialog/HomeConfirgDialogManager$showHomePopDialog$1;->$data:Lteam/opay/odialog/net/AdDataItem;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/opay/team/home/dialog/HomeConfirgDialogManager$showHomePopDialog$1;->this$0:Lcom/opay/team/home/dialog/HomeConfirgDialogManager;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/opay/team/home/dialog/HomeConfirgDialogManager$showHomePopDialog$1;->$fragment:Landroidx/fragment/app/Fragment;

    .line 6
    .line 7
    iput-object p4, p0, Lcom/opay/team/home/dialog/HomeConfirgDialogManager$showHomePopDialog$1;->$source:Ljava/lang/String;

    .line 8
    .line 9
    iput-boolean p5, p0, Lcom/opay/team/home/dialog/HomeConfirgDialogManager$showHomePopDialog$1;->$fromHome:Z

    .line 10
    .line 11
    iput-object p6, p0, Lcom/opay/team/home/dialog/HomeConfirgDialogManager$showHomePopDialog$1;->$onDismissCallback:Lkotlin/jvm/functions/Function0;

    .line 12
    .line 13
    const/4 p1, 0x2

    .line 14
    invoke-direct {p0, p1, p7}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILjr2;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public static synthetic c(Landroidx/fragment/app/Fragment;Lkotlin/jvm/functions/Function0;Ljava/lang/String;Lteam/opay/odialog/net/AdDataItem;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lcom/opay/team/home/dialog/HomeConfirgDialogManager$showHomePopDialog$1;->invokeSuspend$lambda$2$lambda$1(Landroidx/fragment/app/Fragment;Lkotlin/jvm/functions/Function0;Ljava/lang/String;Lteam/opay/odialog/net/AdDataItem;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic f(Lcom/opay/team/home/dialog/HomeConfirgDialogManager;Landroidx/fragment/app/Fragment;Lteam/opay/odialog/net/AdDataItem;Ljava/lang/String;ZLkotlin/jvm/functions/Function0;Ljava/lang/String;II)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static/range {p0 .. p8}, Lcom/opay/team/home/dialog/HomeConfirgDialogManager$showHomePopDialog$1;->invokeSuspend$lambda$2(Lcom/opay/team/home/dialog/HomeConfirgDialogManager;Landroidx/fragment/app/Fragment;Lteam/opay/odialog/net/AdDataItem;Ljava/lang/String;ZLkotlin/jvm/functions/Function0;Ljava/lang/String;II)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private static final invokeSuspend$lambda$2(Lcom/opay/team/home/dialog/HomeConfirgDialogManager;Landroidx/fragment/app/Fragment;Lteam/opay/odialog/net/AdDataItem;Ljava/lang/String;ZLkotlin/jvm/functions/Function0;Ljava/lang/String;II)Lkotlin/Unit;
    .locals 6

    .line 1
    if-lez p7, :cond_1

    .line 2
    .line 3
    if-gtz p8, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    const/16 p6, 0x12c

    .line 7
    .line 8
    invoke-static {p6}, Ljmf;->d(I)I

    .line 9
    .line 10
    .line 11
    move-result p6

    .line 12
    int-to-float p6, p6

    .line 13
    int-to-float p7, p7

    .line 14
    div-float/2addr p6, p7

    .line 15
    int-to-float p7, p8

    .line 16
    mul-float p6, p6, p7

    .line 17
    .line 18
    goto :goto_1

    .line 19
    :cond_1
    :goto_0
    const/16 p6, 0x190

    .line 20
    .line 21
    invoke-static {p6}, Ljmf;->d(I)I

    .line 22
    .line 23
    .line 24
    move-result p6

    .line 25
    int-to-float p6, p6

    .line 26
    :goto_1
    float-to-int v4, p6

    .line 27
    move-object v0, p0

    .line 28
    move-object v1, p1

    .line 29
    move-object v2, p2

    .line 30
    move-object v3, p3

    .line 31
    move v5, p4

    .line 32
    invoke-virtual/range {v0 .. v5}, Lcom/opay/team/home/dialog/HomeConfirgDialogManager;->e(Landroidx/fragment/app/Fragment;Lteam/opay/odialog/net/AdDataItem;Ljava/lang/String;IZ)Lteam/opay/odialog/BaseBindingConfigDialog;

    .line 33
    .line 34
    .line 35
    move-result-object p4

    .line 36
    new-instance p6, Lcom/opay/team/home/dialog/a;

    .line 37
    .line 38
    invoke-direct {p6, p1, p5, p3, p2}, Lcom/opay/team/home/dialog/a;-><init>(Landroidx/fragment/app/Fragment;Lkotlin/jvm/functions/Function0;Ljava/lang/String;Lteam/opay/odialog/net/AdDataItem;)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {p0, p1, p4, p6}, Lcom/opay/team/home/dialog/HomeConfirgDialogManager;->i(Landroidx/fragment/app/Fragment;Lteam/opay/odialog/BaseBindingConfigDialog;Lkotlin/jvm/functions/Function0;)V

    .line 42
    .line 43
    .line 44
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 45
    .line 46
    return-object p0
.end method

.method private static final invokeSuspend$lambda$2$lambda$1(Landroidx/fragment/app/Fragment;Lkotlin/jvm/functions/Function0;Ljava/lang/String;Lteam/opay/odialog/net/AdDataItem;)Lkotlin/Unit;
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    .line 3
    .line 4
    .line 5
    move-result v1

    .line 6
    if-eqz v1, :cond_5

    .line 7
    .line 8
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isDetached()Z

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    if-nez v1, :cond_5

    .line 13
    .line 14
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isRemoving()Z

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    if-eqz v1, :cond_0

    .line 19
    .line 20
    goto :goto_1

    .line 21
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    if-eqz p0, :cond_3

    .line 26
    .line 27
    const-string p0, "source_popup"

    .line 28
    .line 29
    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 30
    .line 31
    .line 32
    move-result p0

    .line 33
    if-eqz p0, :cond_1

    .line 34
    .line 35
    const-string p0, "home_popup_page_close"

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_1
    const-string p0, "home_registration_guide_page_close"

    .line 39
    .line 40
    :goto_0
    sget-object p2, Lcom/opay/team/OPayAnalytics;->b:Lcom/opay/team/OPayAnalytics$Companion;

    .line 41
    .line 42
    sget-object v1, Lteam/opay/pay/home/Service;->COMMON:Lteam/opay/pay/home/Service;

    .line 43
    .line 44
    invoke-virtual {p2, v1}, Lcom/opay/team/OPayAnalytics$Companion;->b(Lteam/opay/pay/home/Service;)Lcom/opay/team/OPayAnalytics;

    .line 45
    .line 46
    .line 47
    move-result-object p2

    .line 48
    if-eqz p2, :cond_2

    .line 49
    .line 50
    new-array v1, v0, [Lkotlin/Pair;

    .line 51
    .line 52
    invoke-virtual {p2, p0, v1}, Lcom/opay/team/OPayAnalytics;->b(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 53
    .line 54
    .line 55
    :cond_2
    sget-object p0, Lx7b;->a:Lx7b;

    .line 56
    .line 57
    new-instance p2, Lkotlin/Pair;

    .line 58
    .line 59
    const-string v1, "ad_type"

    .line 60
    .line 61
    const-string v2, "home_popup"

    .line 62
    .line 63
    invoke-direct {p2, v1, v2}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 64
    .line 65
    .line 66
    new-instance v1, Lkotlin/Pair;

    .line 67
    .line 68
    invoke-virtual {p3}, Lteam/opay/odialog/net/AdDataItem;->getId()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v2

    .line 72
    const-string v3, "ad_id"

    .line 73
    .line 74
    invoke-direct {v1, v3, v2}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 75
    .line 76
    .line 77
    new-instance v2, Lkotlin/Pair;

    .line 78
    .line 79
    const-string v3, "ad_action_url"

    .line 80
    .line 81
    invoke-virtual {p3}, Lteam/opay/odialog/net/AdDataItem;->getAction()Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object p3

    .line 85
    invoke-direct {v2, v3, p3}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 86
    .line 87
    .line 88
    const/4 p3, 0x3

    .line 89
    new-array p3, p3, [Lkotlin/Pair;

    .line 90
    .line 91
    aput-object p2, p3, v0

    .line 92
    .line 93
    const/4 p2, 0x1

    .line 94
    aput-object v1, p3, p2

    .line 95
    .line 96
    const/4 p2, 0x2

    .line 97
    aput-object v2, p3, p2

    .line 98
    .line 99
    const-string p2, "ad_close_click"

    .line 100
    .line 101
    invoke-virtual {p0, p2, p3}, Lx7b;->g(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 102
    .line 103
    .line 104
    :cond_3
    if-eqz p1, :cond_4

    .line 105
    .line 106
    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 107
    .line 108
    .line 109
    :cond_4
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 110
    .line 111
    return-object p0

    .line 112
    :cond_5
    :goto_1
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 113
    .line 114
    return-object p0
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
    new-instance p1, Lcom/opay/team/home/dialog/HomeConfirgDialogManager$showHomePopDialog$1;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/opay/team/home/dialog/HomeConfirgDialogManager$showHomePopDialog$1;->$data:Lteam/opay/odialog/net/AdDataItem;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/opay/team/home/dialog/HomeConfirgDialogManager$showHomePopDialog$1;->this$0:Lcom/opay/team/home/dialog/HomeConfirgDialogManager;

    .line 6
    .line 7
    iget-object v3, p0, Lcom/opay/team/home/dialog/HomeConfirgDialogManager$showHomePopDialog$1;->$fragment:Landroidx/fragment/app/Fragment;

    .line 8
    .line 9
    iget-object v4, p0, Lcom/opay/team/home/dialog/HomeConfirgDialogManager$showHomePopDialog$1;->$source:Ljava/lang/String;

    .line 10
    .line 11
    iget-boolean v5, p0, Lcom/opay/team/home/dialog/HomeConfirgDialogManager$showHomePopDialog$1;->$fromHome:Z

    .line 12
    .line 13
    iget-object v6, p0, Lcom/opay/team/home/dialog/HomeConfirgDialogManager$showHomePopDialog$1;->$onDismissCallback:Lkotlin/jvm/functions/Function0;

    .line 14
    .line 15
    move-object v0, p1

    .line 16
    move-object v7, p2

    .line 17
    invoke-direct/range {v0 .. v7}, Lcom/opay/team/home/dialog/HomeConfirgDialogManager$showHomePopDialog$1;-><init>(Lteam/opay/odialog/net/AdDataItem;Lcom/opay/team/home/dialog/HomeConfirgDialogManager;Landroidx/fragment/app/Fragment;Ljava/lang/String;ZLkotlin/jvm/functions/Function0;Ljr2;)V

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

    invoke-virtual {p0, p1, p2}, Lcom/opay/team/home/dialog/HomeConfirgDialogManager$showHomePopDialog$1;->invoke(Lzr2;Ljr2;)Ljava/lang/Object;

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
    invoke-virtual {p0, p1, p2}, Lcom/opay/team/home/dialog/HomeConfirgDialogManager$showHomePopDialog$1;->create(Ljava/lang/Object;Ljr2;)Ljr2;

    move-result-object p1

    check-cast p1, Lcom/opay/team/home/dialog/HomeConfirgDialogManager$showHomePopDialog$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/opay/team/home/dialog/HomeConfirgDialogManager$showHomePopDialog$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

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
    iget v0, p0, Lcom/opay/team/home/dialog/HomeConfirgDialogManager$showHomePopDialog$1;->label:I

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    invoke-static {p1}, Lkotlin/d;->b(Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    sget-object p1, Llm;->a:Llm;

    .line 12
    .line 13
    iget-object v0, p0, Lcom/opay/team/home/dialog/HomeConfirgDialogManager$showHomePopDialog$1;->$data:Lteam/opay/odialog/net/AdDataItem;

    .line 14
    .line 15
    invoke-virtual {v0}, Lteam/opay/odialog/net/AdDataItem;->getDiverseImgUrl()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    iget-object v1, p0, Lcom/opay/team/home/dialog/HomeConfirgDialogManager$showHomePopDialog$1;->$data:Lteam/opay/odialog/net/AdDataItem;

    .line 20
    .line 21
    invoke-virtual {v1}, Lteam/opay/odialog/net/AdDataItem;->getImageUrl()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    iget-object v3, p0, Lcom/opay/team/home/dialog/HomeConfirgDialogManager$showHomePopDialog$1;->this$0:Lcom/opay/team/home/dialog/HomeConfirgDialogManager;

    .line 26
    .line 27
    iget-object v4, p0, Lcom/opay/team/home/dialog/HomeConfirgDialogManager$showHomePopDialog$1;->$fragment:Landroidx/fragment/app/Fragment;

    .line 28
    .line 29
    iget-object v5, p0, Lcom/opay/team/home/dialog/HomeConfirgDialogManager$showHomePopDialog$1;->$data:Lteam/opay/odialog/net/AdDataItem;

    .line 30
    .line 31
    iget-object v6, p0, Lcom/opay/team/home/dialog/HomeConfirgDialogManager$showHomePopDialog$1;->$source:Ljava/lang/String;

    .line 32
    .line 33
    iget-boolean v7, p0, Lcom/opay/team/home/dialog/HomeConfirgDialogManager$showHomePopDialog$1;->$fromHome:Z

    .line 34
    .line 35
    iget-object v8, p0, Lcom/opay/team/home/dialog/HomeConfirgDialogManager$showHomePopDialog$1;->$onDismissCallback:Lkotlin/jvm/functions/Function0;

    .line 36
    .line 37
    new-instance v9, Lcom/opay/team/home/dialog/b;

    .line 38
    .line 39
    move-object v2, v9

    .line 40
    invoke-direct/range {v2 .. v8}, Lcom/opay/team/home/dialog/b;-><init>(Lcom/opay/team/home/dialog/HomeConfirgDialogManager;Landroidx/fragment/app/Fragment;Lteam/opay/odialog/net/AdDataItem;Ljava/lang/String;ZLkotlin/jvm/functions/Function0;)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {p1, v0, v1, v9}, Llm;->h(Ljava/lang/String;Ljava/lang/String;Lhm6;)V

    .line 44
    .line 45
    .line 46
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 47
    .line 48
    return-object p1

    .line 49
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 50
    .line 51
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 52
    .line 53
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    throw p1
.end method
