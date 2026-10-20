.class final Lteam/opay/business/share/ui/ShareFragment$beginPdfImageLogic$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "ShareFragment.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lteam/opay/business/share/ui/ShareFragment;->f1()V
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
    c = "team.opay.business.share.ui.ShareFragment$beginPdfImageLogic$1"
    f = "ShareFragment.kt"
    l = {
        0xee
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field label:I

.field final synthetic this$0:Lteam/opay/business/share/ui/ShareFragment;


# direct methods
.method public constructor <init>(Lteam/opay/business/share/ui/ShareFragment;Ljr2;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lteam/opay/business/share/ui/ShareFragment;",
            "Ljr2<",
            "-",
            "Lteam/opay/business/share/ui/ShareFragment$beginPdfImageLogic$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lteam/opay/business/share/ui/ShareFragment$beginPdfImageLogic$1;->this$0:Lteam/opay/business/share/ui/ShareFragment;

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
    new-instance p1, Lteam/opay/business/share/ui/ShareFragment$beginPdfImageLogic$1;

    .line 2
    .line 3
    iget-object v0, p0, Lteam/opay/business/share/ui/ShareFragment$beginPdfImageLogic$1;->this$0:Lteam/opay/business/share/ui/ShareFragment;

    .line 4
    .line 5
    invoke-direct {p1, v0, p2}, Lteam/opay/business/share/ui/ShareFragment$beginPdfImageLogic$1;-><init>(Lteam/opay/business/share/ui/ShareFragment;Ljr2;)V

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

    invoke-virtual {p0, p1, p2}, Lteam/opay/business/share/ui/ShareFragment$beginPdfImageLogic$1;->invoke(Lzr2;Ljr2;)Ljava/lang/Object;

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
    invoke-virtual {p0, p1, p2}, Lteam/opay/business/share/ui/ShareFragment$beginPdfImageLogic$1;->create(Ljava/lang/Object;Ljr2;)Ljr2;

    move-result-object p1

    check-cast p1, Lteam/opay/business/share/ui/ShareFragment$beginPdfImageLogic$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lteam/opay/business/share/ui/ShareFragment$beginPdfImageLogic$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->e()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget v1, p0, Lteam/opay/business/share/ui/ShareFragment$beginPdfImageLogic$1;->label:I

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
    goto/16 :goto_3

    .line 16
    .line 17
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 18
    .line 19
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 20
    .line 21
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    throw p1

    .line 25
    :cond_1
    invoke-static {p1}, Lkotlin/d;->b(Ljava/lang/Object;)V

    .line 26
    .line 27
    .line 28
    sget-object p1, Lnnd;->a:Lnnd;

    .line 29
    .line 30
    invoke-virtual {p1}, Lnnd;->b()Landroid/graphics/Bitmap;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    sget-object v1, Ljk8;->c:Ljk8;

    .line 35
    .line 36
    iget-object v3, p0, Lteam/opay/business/share/ui/ShareFragment$beginPdfImageLogic$1;->this$0:Lteam/opay/business/share/ui/ShareFragment;

    .line 37
    .line 38
    invoke-static {v3}, Lteam/opay/business/share/ui/ShareFragment;->W0(Lteam/opay/business/share/ui/ShareFragment;)Lteam/opay/business/share/ShareInfo;

    .line 39
    .line 40
    .line 41
    move-result-object v3

    .line 42
    invoke-virtual {v3}, Lteam/opay/business/share/ShareInfo;->getEventName()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v3

    .line 46
    new-instance v4, Ljava/lang/StringBuilder;

    .line 47
    .line 48
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 49
    .line 50
    .line 51
    const-string v5, "beginPdfImageLogic eventName="

    .line 52
    .line 53
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    const-string v3, " shareView="

    .line 60
    .line 61
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v3

    .line 71
    const/4 v4, 0x2

    .line 72
    const/4 v5, 0x0

    .line 73
    invoke-static {v1, v3, v5, v4, v5}, Lteam/opay/core/common/GenericLogger;->j(Lteam/opay/core/common/GenericLogger;Ljava/lang/Object;Ljava/lang/Throwable;ILjava/lang/Object;)V

    .line 74
    .line 75
    .line 76
    sget-object v1, Lteam/opay/business/share/pdf/ShareFile;->a:Lteam/opay/business/share/pdf/ShareFile;

    .line 77
    .line 78
    iget-object v3, p0, Lteam/opay/business/share/ui/ShareFragment$beginPdfImageLogic$1;->this$0:Lteam/opay/business/share/ui/ShareFragment;

    .line 79
    .line 80
    invoke-static {v3}, Lteam/opay/business/share/ui/ShareFragment;->X0(Lteam/opay/business/share/ui/ShareFragment;)Lteam/opay/business/share/ShareItem;

    .line 81
    .line 82
    .line 83
    move-result-object v3

    .line 84
    if-eqz v3, :cond_2

    .line 85
    .line 86
    invoke-virtual {v3}, Lteam/opay/business/share/ShareItem;->getPlatform()Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object v3

    .line 90
    goto :goto_0

    .line 91
    :cond_2
    move-object v3, v5

    .line 92
    :goto_0
    invoke-virtual {v1, v3}, Lteam/opay/business/share/pdf/ShareFile;->f(Ljava/lang/String;)Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object v3

    .line 96
    iget-object v4, p0, Lteam/opay/business/share/ui/ShareFragment$beginPdfImageLogic$1;->this$0:Lteam/opay/business/share/ui/ShareFragment;

    .line 97
    .line 98
    invoke-virtual {v4}, Lteam/opay/opb/common/base/EdgeSheetFragment;->getAppContext()Landroid/content/Context;

    .line 99
    .line 100
    .line 101
    move-result-object v4

    .line 102
    iget-object v6, p0, Lteam/opay/business/share/ui/ShareFragment$beginPdfImageLogic$1;->this$0:Lteam/opay/business/share/ui/ShareFragment;

    .line 103
    .line 104
    invoke-static {v6}, Lteam/opay/business/share/ui/ShareFragment;->W0(Lteam/opay/business/share/ui/ShareFragment;)Lteam/opay/business/share/ShareInfo;

    .line 105
    .line 106
    .line 107
    move-result-object v6

    .line 108
    invoke-virtual {v6}, Lteam/opay/business/share/ShareInfo;->getPdfInfo()Lteam/opay/business/share/PDFInfo;

    .line 109
    .line 110
    .line 111
    move-result-object v6

    .line 112
    if-eqz v6, :cond_3

    .line 113
    .line 114
    invoke-virtual {v6}, Lteam/opay/business/share/PDFInfo;->getOrderNo()Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    move-result-object v6

    .line 118
    goto :goto_1

    .line 119
    :cond_3
    move-object v6, v5

    .line 120
    :goto_1
    if-nez v6, :cond_4

    .line 121
    .line 122
    const-string v6, ""

    .line 123
    .line 124
    :cond_4
    iget-object v7, p0, Lteam/opay/business/share/ui/ShareFragment$beginPdfImageLogic$1;->this$0:Lteam/opay/business/share/ui/ShareFragment;

    .line 125
    .line 126
    invoke-static {v7}, Lteam/opay/business/share/ui/ShareFragment;->W0(Lteam/opay/business/share/ui/ShareFragment;)Lteam/opay/business/share/ShareInfo;

    .line 127
    .line 128
    .line 129
    move-result-object v7

    .line 130
    invoke-virtual {v7}, Lteam/opay/business/share/ShareInfo;->getPdfInfo()Lteam/opay/business/share/PDFInfo;

    .line 131
    .line 132
    .line 133
    move-result-object v7

    .line 134
    if-eqz v7, :cond_5

    .line 135
    .line 136
    invoke-virtual {v7}, Lteam/opay/business/share/PDFInfo;->getOtherInfo()Ljava/lang/String;

    .line 137
    .line 138
    .line 139
    move-result-object v7

    .line 140
    goto :goto_2

    .line 141
    :cond_5
    move-object v7, v5

    .line 142
    :goto_2
    invoke-virtual {v1, v4, v6, v3, v7}, Lteam/opay/business/share/pdf/ShareFile;->c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    .line 143
    .line 144
    .line 145
    move-result-object v1

    .line 146
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    .line 147
    .line 148
    .line 149
    move-result v3

    .line 150
    if-eqz v3, :cond_6

    .line 151
    .line 152
    iget-object p1, p0, Lteam/opay/business/share/ui/ShareFragment$beginPdfImageLogic$1;->this$0:Lteam/opay/business/share/ui/ShareFragment;

    .line 153
    .line 154
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 155
    .line 156
    .line 157
    move-result-object v0

    .line 158
    const-string v1, "getAbsolutePath(...)"

    .line 159
    .line 160
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 161
    .line 162
    .line 163
    invoke-static {p1, v0}, Lteam/opay/business/share/ui/ShareFragment;->a1(Lteam/opay/business/share/ui/ShareFragment;Ljava/lang/String;)V

    .line 164
    .line 165
    .line 166
    goto :goto_3

    .line 167
    :cond_6
    if-eqz p1, :cond_7

    .line 168
    .line 169
    iget-object v0, p0, Lteam/opay/business/share/ui/ShareFragment$beginPdfImageLogic$1;->this$0:Lteam/opay/business/share/ui/ShareFragment;

    .line 170
    .line 171
    invoke-static {v0, p1, v1}, Lteam/opay/business/share/ui/ShareFragment;->V0(Lteam/opay/business/share/ui/ShareFragment;Landroid/graphics/Bitmap;Ljava/io/File;)V

    .line 172
    .line 173
    .line 174
    goto :goto_3

    .line 175
    :cond_7
    new-instance p1, Lteam/opay/business/share/ui/ShareFragment$beginPdfImageLogic$1$1;

    .line 176
    .line 177
    iget-object v1, p0, Lteam/opay/business/share/ui/ShareFragment$beginPdfImageLogic$1;->this$0:Lteam/opay/business/share/ui/ShareFragment;

    .line 178
    .line 179
    invoke-direct {p1, v1, v5}, Lteam/opay/business/share/ui/ShareFragment$beginPdfImageLogic$1$1;-><init>(Lteam/opay/business/share/ui/ShareFragment;Ljr2;)V

    .line 180
    .line 181
    .line 182
    iput v2, p0, Lteam/opay/business/share/ui/ShareFragment$beginPdfImageLogic$1;->label:I

    .line 183
    .line 184
    invoke-static {p1, p0}, Lteam/opay/kotlin/coroutine/CoroutineScopeKt;->i(Lkotlin/jvm/functions/Function1;Ljr2;)Ljava/lang/Object;

    .line 185
    .line 186
    .line 187
    move-result-object p1

    .line 188
    if-ne p1, v0, :cond_8

    .line 189
    .line 190
    return-object v0

    .line 191
    :cond_8
    :goto_3
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 192
    .line 193
    return-object p1
.end method
