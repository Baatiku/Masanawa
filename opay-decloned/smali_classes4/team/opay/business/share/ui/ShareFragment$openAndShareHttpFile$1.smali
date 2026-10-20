.class final Lteam/opay/business/share/ui/ShareFragment$openAndShareHttpFile$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "ShareFragment.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lteam/opay/business/share/ui/ShareFragment;->u1(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lteam/opay/business/share/ui/ShareFragment$openAndShareHttpFile$1$a;
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
    c = "team.opay.business.share.ui.ShareFragment$openAndShareHttpFile$1"
    f = "ShareFragment.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $filePath:Ljava/lang/String;

.field label:I

.field final synthetic this$0:Lteam/opay/business/share/ui/ShareFragment;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lteam/opay/business/share/ui/ShareFragment;Ljr2;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lteam/opay/business/share/ui/ShareFragment;",
            "Ljr2<",
            "-",
            "Lteam/opay/business/share/ui/ShareFragment$openAndShareHttpFile$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lteam/opay/business/share/ui/ShareFragment$openAndShareHttpFile$1;->$filePath:Ljava/lang/String;

    .line 2
    .line 3
    iput-object p2, p0, Lteam/opay/business/share/ui/ShareFragment$openAndShareHttpFile$1;->this$0:Lteam/opay/business/share/ui/ShareFragment;

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
    new-instance p1, Lteam/opay/business/share/ui/ShareFragment$openAndShareHttpFile$1;

    .line 2
    .line 3
    iget-object v0, p0, Lteam/opay/business/share/ui/ShareFragment$openAndShareHttpFile$1;->$filePath:Ljava/lang/String;

    .line 4
    .line 5
    iget-object v1, p0, Lteam/opay/business/share/ui/ShareFragment$openAndShareHttpFile$1;->this$0:Lteam/opay/business/share/ui/ShareFragment;

    .line 6
    .line 7
    invoke-direct {p1, v0, v1, p2}, Lteam/opay/business/share/ui/ShareFragment$openAndShareHttpFile$1;-><init>(Ljava/lang/String;Lteam/opay/business/share/ui/ShareFragment;Ljr2;)V

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

    invoke-virtual {p0, p1, p2}, Lteam/opay/business/share/ui/ShareFragment$openAndShareHttpFile$1;->invoke(Lzr2;Ljr2;)Ljava/lang/Object;

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
    invoke-virtual {p0, p1, p2}, Lteam/opay/business/share/ui/ShareFragment$openAndShareHttpFile$1;->create(Ljava/lang/Object;Ljr2;)Ljr2;

    move-result-object p1

    check-cast p1, Lteam/opay/business/share/ui/ShareFragment$openAndShareHttpFile$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lteam/opay/business/share/ui/ShareFragment$openAndShareHttpFile$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

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
    iget v0, p0, Lteam/opay/business/share/ui/ShareFragment$openAndShareHttpFile$1;->label:I

    .line 5
    .line 6
    if-nez v0, :cond_5

    .line 7
    .line 8
    invoke-static {p1}, Lkotlin/d;->b(Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    new-instance p1, Ljava/io/File;

    .line 12
    .line 13
    iget-object v0, p0, Lteam/opay/business/share/ui/ShareFragment$openAndShareHttpFile$1;->$filePath:Ljava/lang/String;

    .line 14
    .line 15
    invoke-direct {p1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    if-eqz v0, :cond_4

    .line 23
    .line 24
    iget-object v0, p0, Lteam/opay/business/share/ui/ShareFragment$openAndShareHttpFile$1;->this$0:Lteam/opay/business/share/ui/ShareFragment;

    .line 25
    .line 26
    invoke-static {v0}, Lteam/opay/business/share/ui/ShareFragment;->X0(Lteam/opay/business/share/ui/ShareFragment;)Lteam/opay/business/share/ShareItem;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    if-nez v0, :cond_0

    .line 31
    .line 32
    const/4 v0, -0x1

    .line 33
    goto :goto_0

    .line 34
    :cond_0
    sget-object v1, Lteam/opay/business/share/ui/ShareFragment$openAndShareHttpFile$1$a;->a:[I

    .line 35
    .line 36
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 37
    .line 38
    .line 39
    move-result v0

    .line 40
    aget v0, v1, v0

    .line 41
    .line 42
    :goto_0
    const/4 v1, 0x1

    .line 43
    if-eq v0, v1, :cond_3

    .line 44
    .line 45
    const/4 v1, 0x2

    .line 46
    if-eq v0, v1, :cond_2

    .line 47
    .line 48
    const/4 p1, 0x3

    .line 49
    if-eq v0, p1, :cond_1

    .line 50
    .line 51
    const/4 p1, 0x4

    .line 52
    if-eq v0, p1, :cond_1

    .line 53
    .line 54
    invoke-static {}, Let;->l()Lkotlin/jvm/functions/Function0;

    .line 55
    .line 56
    .line 57
    goto :goto_1

    .line 58
    :cond_1
    sget-object p1, Lzmd;->a:Lzmd;

    .line 59
    .line 60
    iget-object v0, p0, Lteam/opay/business/share/ui/ShareFragment$openAndShareHttpFile$1;->this$0:Lteam/opay/business/share/ui/ShareFragment;

    .line 61
    .line 62
    invoke-virtual {v0}, Lteam/opay/opb/common/base/EdgeSheetFragment;->getFragmentActivity()Landroidx/fragment/app/FragmentActivity;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    iget-object v1, p0, Lteam/opay/business/share/ui/ShareFragment$openAndShareHttpFile$1;->$filePath:Ljava/lang/String;

    .line 67
    .line 68
    invoke-virtual {p1, v0, v1}, Lzmd;->e(Landroid/content/Context;Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    goto :goto_1

    .line 72
    :cond_2
    sget-object v0, Lteam/opay/business/share/utils/PDFUtils;->a:Lteam/opay/business/share/utils/PDFUtils;

    .line 73
    .line 74
    iget-object v1, p0, Lteam/opay/business/share/ui/ShareFragment$openAndShareHttpFile$1;->this$0:Lteam/opay/business/share/ui/ShareFragment;

    .line 75
    .line 76
    invoke-virtual {v1}, Lteam/opay/opb/common/base/EdgeSheetFragment;->getFragmentActivity()Landroidx/fragment/app/FragmentActivity;

    .line 77
    .line 78
    .line 79
    move-result-object v1

    .line 80
    invoke-virtual {v0, v1, p1}, Lteam/opay/business/share/utils/PDFUtils;->v(Landroid/content/Context;Ljava/io/File;)V

    .line 81
    .line 82
    .line 83
    goto :goto_1

    .line 84
    :cond_3
    sget-object v0, Lteam/opay/business/share/utils/PDFUtils;->a:Lteam/opay/business/share/utils/PDFUtils;

    .line 85
    .line 86
    iget-object v1, p0, Lteam/opay/business/share/ui/ShareFragment$openAndShareHttpFile$1;->this$0:Lteam/opay/business/share/ui/ShareFragment;

    .line 87
    .line 88
    invoke-virtual {v1}, Lteam/opay/opb/common/base/EdgeSheetFragment;->getFragmentActivity()Landroidx/fragment/app/FragmentActivity;

    .line 89
    .line 90
    .line 91
    move-result-object v1

    .line 92
    iget-object v2, p0, Lteam/opay/business/share/ui/ShareFragment$openAndShareHttpFile$1;->this$0:Lteam/opay/business/share/ui/ShareFragment;

    .line 93
    .line 94
    sget v3, Lteam/opay/business/share/R$string;->share_receipt:I

    .line 95
    .line 96
    invoke-virtual {v2, v3}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object v2

    .line 100
    invoke-virtual {v0, v1, p1, v2}, Lteam/opay/business/share/utils/PDFUtils;->s(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;)V

    .line 101
    .line 102
    .line 103
    :goto_1
    iget-object p1, p0, Lteam/opay/business/share/ui/ShareFragment$openAndShareHttpFile$1;->this$0:Lteam/opay/business/share/ui/ShareFragment;

    .line 104
    .line 105
    invoke-virtual {p1}, Lteam/opay/core/common/base/BaseSheetFragment;->dismiss()V

    .line 106
    .line 107
    .line 108
    goto :goto_2

    .line 109
    :cond_4
    iget-object p1, p0, Lteam/opay/business/share/ui/ShareFragment$openAndShareHttpFile$1;->this$0:Lteam/opay/business/share/ui/ShareFragment;

    .line 110
    .line 111
    invoke-virtual {p1}, Lteam/opay/opb/common/base/EdgeSheetFragment;->getAppContext()Landroid/content/Context;

    .line 112
    .line 113
    .line 114
    move-result-object p1

    .line 115
    iget-object v0, p0, Lteam/opay/business/share/ui/ShareFragment$openAndShareHttpFile$1;->this$0:Lteam/opay/business/share/ui/ShareFragment;

    .line 116
    .line 117
    sget v1, Lteam/opay/business/share/R$string;->share_something_went_wrong:I

    .line 118
    .line 119
    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object v0

    .line 123
    invoke-static {p1, v0}, Let;->v(Landroid/content/Context;Ljava/lang/String;)V

    .line 124
    .line 125
    .line 126
    iget-object p1, p0, Lteam/opay/business/share/ui/ShareFragment$openAndShareHttpFile$1;->this$0:Lteam/opay/business/share/ui/ShareFragment;

    .line 127
    .line 128
    invoke-virtual {p1}, Lteam/opay/core/common/base/BaseSheetFragment;->dismiss()V

    .line 129
    .line 130
    .line 131
    :goto_2
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 132
    .line 133
    return-object p1

    .line 134
    :cond_5
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 135
    .line 136
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 137
    .line 138
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 139
    .line 140
    .line 141
    throw p1
.end method
