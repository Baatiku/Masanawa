.class public final Lteam/opay/pay/message/module/MessageNoticeDetailActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "MessageNoticeDetailActivity.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lteam/opay/pay/message/module/MessageNoticeDetailActivity$Companion;,
        Lteam/opay/pay/message/module/MessageNoticeDetailActivity$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0008\u0018\u0000 \u00142\u00020\u0001:\u0001\u0015B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0019\u0010\u0007\u001a\u00020\u00062\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0004H\u0014\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J\u000f\u0010\t\u001a\u00020\u0006H\u0014\u00a2\u0006\u0004\u0008\t\u0010\u0003JA\u0010\u0012\u001a\u00020\u00062\u0006\u0010\u000b\u001a\u00020\n2\u0006\u0010\u000c\u001a\u00020\n2\u0008\u0010\r\u001a\u0004\u0018\u00010\n2\u0006\u0010\u000f\u001a\u00020\u000e2\u0006\u0010\u0010\u001a\u00020\n2\u0006\u0010\u0011\u001a\u00020\nH\u0002\u00a2\u0006\u0004\u0008\u0012\u0010\u0013\u00a8\u0006\u0016"
    }
    d2 = {
        "Lteam/opay/pay/message/module/MessageNoticeDetailActivity;",
        "Landroidx/appcompat/app/AppCompatActivity;",
        "<init>",
        "()V",
        "Landroid/os/Bundle;",
        "savedInstanceState",
        "",
        "onCreate",
        "(Landroid/os/Bundle;)V",
        "onResume",
        "",
        "title",
        "body",
        "action",
        "",
        "state",
        "messageId",
        "businessType",
        "B",
        "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V",
        "b",
        "Companion",
        "message_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x6,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final b:Lteam/opay/pay/message/module/MessageNoticeDetailActivity$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field public a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lteam/opay/pay/message/module/MessageNoticeDetailActivity$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lteam/opay/pay/message/module/MessageNoticeDetailActivity$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lteam/opay/pay/message/module/MessageNoticeDetailActivity;->b:Lteam/opay/pay/message/module/MessageNoticeDetailActivity$Companion;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/util/LinkedHashMap;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 4
    .line 5
    .line 6
    iput-object v0, p0, Lteam/opay/pay/message/module/MessageNoticeDetailActivity;->a:Ljava/util/Map;

    .line 7
    .line 8
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public static final A(Lteam/opay/pay/message/module/MessageNoticeDetailActivity;Landroid/view/View;)V
    .locals 0

    .line 1
    const-string p1, "this$0"

    .line 2
    .line 3
    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public static final C(Lteam/opay/pay/message/module/MessageNoticeDetailActivity;Ljava/lang/String;Ljava/lang/String;Lteam/opay/pay/message/module/MessageNoticeDetailActivity;Landroid/view/View;)V
    .locals 2

    .line 1
    const-string p4, "this$0"

    .line 2
    .line 3
    invoke-static {p0, p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string p4, "$messageId"

    .line 7
    .line 8
    invoke-static {p1, p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string p4, "$context"

    .line 12
    .line 13
    invoke-static {p3, p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    sget p4, Lteam/opay/pay/message/R$id;->message_detail_go:I

    .line 17
    .line 18
    invoke-virtual {p0, p4}, Lteam/opay/pay/message/module/MessageNoticeDetailActivity;->z(I)Landroid/view/View;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    check-cast p0, Landroid/widget/TextView;

    .line 23
    .line 24
    const/4 p4, 0x0

    .line 25
    invoke-virtual {p0, p4}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 26
    .line 27
    .line 28
    sget-object p0, Lqs;->a:Lqs;

    .line 29
    .line 30
    new-instance v0, Lkotlin/Pair;

    .line 31
    .line 32
    const-string v1, "messageId"

    .line 33
    .line 34
    invoke-direct {v0, v1, p1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 35
    .line 36
    .line 37
    const/4 p1, 0x1

    .line 38
    new-array p1, p1, [Lkotlin/Pair;

    .line 39
    .line 40
    aput-object v0, p1, p4

    .line 41
    .line 42
    const-string p4, "message_center_detail_go"

    .line 43
    .line 44
    invoke-virtual {p0, p4, p1}, Lqs;->a(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 45
    .line 46
    .line 47
    invoke-static {p2, p3}, Ln97;->c(Ljava/lang/String;Landroid/content/Context;)Z

    .line 48
    .line 49
    .line 50
    return-void
.end method

.method public static final D(Lteam/opay/pay/message/net/ResultData;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lteam/opay/pay/message/net/ResultData;->d()Lteam/opay/pay/message/net/Status;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    sget-object v0, Lteam/opay/pay/message/module/MessageNoticeDetailActivity$a;->a:[I

    .line 6
    .line 7
    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    aget p0, v0, p0

    .line 12
    .line 13
    const/4 v0, 0x1

    .line 14
    if-ne p0, v0, :cond_0

    .line 15
    .line 16
    new-instance p0, Lteam/opay/pay/message/utils/MessageStorage;

    .line 17
    .line 18
    invoke-direct {p0}, Lteam/opay/pay/message/utils/MessageStorage;-><init>()V

    .line 19
    .line 20
    .line 21
    const/4 v0, 0x0

    .line 22
    invoke-virtual {p0, v0}, Lteam/opay/pay/message/utils/MessageStorage;->l(Z)V

    .line 23
    .line 24
    .line 25
    :cond_0
    return-void
.end method

.method public static synthetic u(Lteam/opay/pay/message/module/MessageNoticeDetailActivity;Ljava/lang/String;Ljava/lang/String;Lteam/opay/pay/message/module/MessageNoticeDetailActivity;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3, p4}, Lteam/opay/pay/message/module/MessageNoticeDetailActivity;->C(Lteam/opay/pay/message/module/MessageNoticeDetailActivity;Ljava/lang/String;Ljava/lang/String;Lteam/opay/pay/message/module/MessageNoticeDetailActivity;Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic w(Lteam/opay/pay/message/net/ResultData;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/pay/message/module/MessageNoticeDetailActivity;->D(Lteam/opay/pay/message/net/ResultData;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic y(Lteam/opay/pay/message/module/MessageNoticeDetailActivity;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/pay/message/module/MessageNoticeDetailActivity;->A(Lteam/opay/pay/message/module/MessageNoticeDetailActivity;Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public final B(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 8

    .line 1
    if-eqz p3, :cond_1

    .line 2
    .line 3
    invoke-interface {p3}, Ljava/lang/CharSequence;->length()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    sget v0, Lteam/opay/pay/message/R$id;->message_detail_go:I

    .line 11
    .line 12
    invoke-virtual {p0, v0}, Lteam/opay/pay/message/module/MessageNoticeDetailActivity;->z(I)Landroid/view/View;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    check-cast v1, Landroid/widget/TextView;

    .line 17
    .line 18
    const/4 v2, 0x0

    .line 19
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0, v0}, Lteam/opay/pay/message/module/MessageNoticeDetailActivity;->z(I)Landroid/view/View;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    check-cast v1, Landroid/widget/TextView;

    .line 27
    .line 28
    const-string v2, "<u>GO ></u>"

    .line 29
    .line 30
    invoke-static {v2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {p0, v0}, Lteam/opay/pay/message/module/MessageNoticeDetailActivity;->z(I)Landroid/view/View;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    check-cast v1, Landroid/widget/TextView;

    .line 42
    .line 43
    const/4 v2, 0x1

    .line 44
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {p0, v0}, Lteam/opay/pay/message/module/MessageNoticeDetailActivity;->z(I)Landroid/view/View;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    check-cast v0, Landroid/widget/TextView;

    .line 52
    .line 53
    new-instance v1, Li99;

    .line 54
    .line 55
    invoke-direct {v1, p0, p5, p3, p0}, Li99;-><init>(Lteam/opay/pay/message/module/MessageNoticeDetailActivity;Ljava/lang/String;Ljava/lang/String;Lteam/opay/pay/message/module/MessageNoticeDetailActivity;)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 59
    .line 60
    .line 61
    goto :goto_1

    .line 62
    :cond_1
    :goto_0
    sget p3, Lteam/opay/pay/message/R$id;->message_detail_go:I

    .line 63
    .line 64
    invoke-virtual {p0, p3}, Lteam/opay/pay/message/module/MessageNoticeDetailActivity;->z(I)Landroid/view/View;

    .line 65
    .line 66
    .line 67
    move-result-object p3

    .line 68
    check-cast p3, Landroid/widget/TextView;

    .line 69
    .line 70
    const/16 v0, 0x8

    .line 71
    .line 72
    invoke-virtual {p3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 73
    .line 74
    .line 75
    :goto_1
    sget p3, Lteam/opay/pay/message/R$id;->message_detail_title:I

    .line 76
    .line 77
    invoke-virtual {p0, p3}, Lteam/opay/pay/message/module/MessageNoticeDetailActivity;->z(I)Landroid/view/View;

    .line 78
    .line 79
    .line 80
    move-result-object p3

    .line 81
    check-cast p3, Landroid/widget/TextView;

    .line 82
    .line 83
    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 84
    .line 85
    .line 86
    sget p1, Lteam/opay/pay/message/R$id;->message_detail_content:I

    .line 87
    .line 88
    invoke-virtual {p0, p1}, Lteam/opay/pay/message/module/MessageNoticeDetailActivity;->z(I)Landroid/view/View;

    .line 89
    .line 90
    .line 91
    move-result-object p1

    .line 92
    check-cast p1, Landroid/widget/TextView;

    .line 93
    .line 94
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 95
    .line 96
    .line 97
    const/4 p1, 0x3

    .line 98
    if-eq p4, p1, :cond_2

    .line 99
    .line 100
    sget-object p1, Lhpc;->a:Lhpc;

    .line 101
    .line 102
    new-instance p2, Lteam/opay/pay/message/bean/MessageStatueRequest;

    .line 103
    .line 104
    new-instance p3, Lteam/opay/pay/message/utils/MessageStorage;

    .line 105
    .line 106
    invoke-direct {p3}, Lteam/opay/pay/message/utils/MessageStorage;-><init>()V

    .line 107
    .line 108
    .line 109
    invoke-virtual {p3}, Lteam/opay/pay/message/utils/MessageStorage;->b()Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object v1

    .line 113
    const/16 v6, 0x8

    .line 114
    .line 115
    const/4 v7, 0x0

    .line 116
    const/4 v3, 0x3

    .line 117
    const/4 v4, 0x0

    .line 118
    move-object v0, p2

    .line 119
    move-object v2, p5

    .line 120
    move-object v5, p6

    .line 121
    invoke-direct/range {v0 .. v7}, Lteam/opay/pay/message/bean/MessageStatueRequest;-><init>(Ljava/lang/String;Ljava/lang/String;ILteam/opay/pay/message/bean/MessageArriveType;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 122
    .line 123
    .line 124
    invoke-virtual {p1, p0, p2}, Lhpc;->j(Landroid/content/Context;Lteam/opay/pay/message/bean/MessageStatueRequest;)Landroidx/lifecycle/LiveData;

    .line 125
    .line 126
    .line 127
    move-result-object p1

    .line 128
    new-instance p2, Lj99;

    .line 129
    .line 130
    invoke-direct {p2}, Lj99;-><init>()V

    .line 131
    .line 132
    .line 133
    invoke-virtual {p1, p2}, Landroidx/lifecycle/LiveData;->observeForever(Lvfa;)V

    .line 134
    .line 135
    .line 136
    :cond_2
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 13
    .param p1    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 3
    .line 4
    .line 5
    sget p1, Lteam/opay/pay/message/R$layout;->message_activity_notice_detail:I

    .line 6
    .line 7
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(I)V

    .line 8
    .line 9
    .line 10
    sget p1, Lteam/opay/pay/message/R$id;->message_title:I

    .line 11
    .line 12
    invoke-virtual {p0, p1}, Lteam/opay/pay/message/module/MessageNoticeDetailActivity;->z(I)Landroid/view/View;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    check-cast v1, Landroid/widget/TextView;

    .line 17
    .line 18
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    sget v3, Lteam/opay/pay/message/R$string;->message_notice:I

    .line 23
    .line 24
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 29
    .line 30
    .line 31
    sget v1, Lteam/opay/pay/message/R$id;->message_title_left:I

    .line 32
    .line 33
    invoke-virtual {p0, v1}, Lteam/opay/pay/message/module/MessageNoticeDetailActivity;->z(I)Landroid/view/View;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    check-cast v1, Landroidx/appcompat/widget/AppCompatImageView;

    .line 38
    .line 39
    new-instance v2, Lh99;

    .line 40
    .line 41
    invoke-direct {v2, p0}, Lh99;-><init>(Lteam/opay/pay/message/module/MessageNoticeDetailActivity;)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 45
    .line 46
    .line 47
    new-instance v1, Lteam/opay/pay/message/utils/MessageStorage;

    .line 48
    .line 49
    invoke-direct {v1}, Lteam/opay/pay/message/utils/MessageStorage;-><init>()V

    .line 50
    .line 51
    .line 52
    const/4 v2, 0x0

    .line 53
    invoke-virtual {v1, v2}, Lteam/opay/pay/message/utils/MessageStorage;->i(Z)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 57
    .line 58
    .line 59
    move-result-object v1

    .line 60
    if-eqz v1, :cond_8

    .line 61
    .line 62
    invoke-virtual {v1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    .line 63
    .line 64
    .line 65
    move-result-object v1

    .line 66
    if-eqz v1, :cond_8

    .line 67
    .line 68
    const-string v3, "action"

    .line 69
    .line 70
    invoke-virtual {v1, v3}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v7

    .line 74
    const-string v3, "title"

    .line 75
    .line 76
    invoke-virtual {v1, v3}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v5

    .line 80
    const-string v3, "body"

    .line 81
    .line 82
    invoke-virtual {v1, v3}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v6

    .line 86
    const-string v3, "messageId"

    .line 87
    .line 88
    invoke-virtual {v1, v3}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object v9

    .line 92
    const-string v4, "state"

    .line 93
    .line 94
    invoke-virtual {v1, v4}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object v4

    .line 98
    const-string v8, "imgUrl"

    .line 99
    .line 100
    invoke-virtual {v1, v8}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object v8

    .line 104
    const-string v10, "businessType"

    .line 105
    .line 106
    invoke-virtual {v1, v10}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object v1

    .line 110
    if-eqz v5, :cond_7

    .line 111
    .line 112
    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    .line 113
    .line 114
    .line 115
    move-result v10

    .line 116
    if-nez v10, :cond_0

    .line 117
    .line 118
    goto/16 :goto_3

    .line 119
    .line 120
    :cond_0
    if-eqz v6, :cond_7

    .line 121
    .line 122
    invoke-interface {v6}, Ljava/lang/CharSequence;->length()I

    .line 123
    .line 124
    .line 125
    move-result v10

    .line 126
    if-nez v10, :cond_1

    .line 127
    .line 128
    goto/16 :goto_3

    .line 129
    .line 130
    :cond_1
    if-eqz v4, :cond_7

    .line 131
    .line 132
    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    .line 133
    .line 134
    .line 135
    move-result v10

    .line 136
    if-nez v10, :cond_2

    .line 137
    .line 138
    goto/16 :goto_3

    .line 139
    .line 140
    :cond_2
    if-eqz v9, :cond_7

    .line 141
    .line 142
    invoke-interface {v9}, Ljava/lang/CharSequence;->length()I

    .line 143
    .line 144
    .line 145
    move-result v10

    .line 146
    if-nez v10, :cond_3

    .line 147
    .line 148
    goto/16 :goto_3

    .line 149
    .line 150
    :cond_3
    sget-object v10, Lqs;->a:Lqs;

    .line 151
    .line 152
    new-instance v11, Lkotlin/Pair;

    .line 153
    .line 154
    invoke-direct {v11, v3, v9}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 155
    .line 156
    .line 157
    new-array v3, v0, [Lkotlin/Pair;

    .line 158
    .line 159
    aput-object v11, v3, v2

    .line 160
    .line 161
    const-string v11, "message_center_detail_show"

    .line 162
    .line 163
    invoke-virtual {v10, v11, v3}, Lqs;->a(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 164
    .line 165
    .line 166
    const/16 v3, 0x8

    .line 167
    .line 168
    if-eqz v8, :cond_5

    .line 169
    .line 170
    invoke-interface {v8}, Ljava/lang/CharSequence;->length()I

    .line 171
    .line 172
    .line 173
    move-result v10

    .line 174
    if-nez v10, :cond_4

    .line 175
    .line 176
    goto :goto_0

    .line 177
    :cond_4
    sget v10, Lteam/opay/pay/message/R$id;->message_detail_img:I

    .line 178
    .line 179
    invoke-virtual {p0, v10}, Lteam/opay/pay/message/module/MessageNoticeDetailActivity;->z(I)Landroid/view/View;

    .line 180
    .line 181
    .line 182
    move-result-object v11

    .line 183
    check-cast v11, Landroid/widget/ImageView;

    .line 184
    .line 185
    invoke-virtual {v11, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 186
    .line 187
    .line 188
    new-instance v11, Lteam/opay/pay/message/utils/GlideRoundedCornersTransformation;

    .line 189
    .line 190
    invoke-static {v3}, Llmf;->d(I)I

    .line 191
    .line 192
    .line 193
    move-result v3

    .line 194
    sget-object v12, Lteam/opay/pay/message/utils/GlideRoundedCornersTransformation$CornerType;->TOP:Lteam/opay/pay/message/utils/GlideRoundedCornersTransformation$CornerType;

    .line 195
    .line 196
    invoke-direct {v11, v3, v2, v12}, Lteam/opay/pay/message/utils/GlideRoundedCornersTransformation;-><init>(IILteam/opay/pay/message/utils/GlideRoundedCornersTransformation$CornerType;)V

    .line 197
    .line 198
    .line 199
    invoke-static {v11}, Lcom/bumptech/glide/request/RequestOptions;->s0(Locf;)Lcom/bumptech/glide/request/RequestOptions;

    .line 200
    .line 201
    .line 202
    move-result-object v2

    .line 203
    const-string v3, "bitmapTransform(\n       \u2026  )\n                    )"

    .line 204
    .line 205
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 206
    .line 207
    .line 208
    invoke-static {p0}, Lcom/bumptech/glide/a;->x(Landroidx/fragment/app/FragmentActivity;)Lcom/bumptech/glide/RequestManager;

    .line 209
    .line 210
    .line 211
    move-result-object v3

    .line 212
    invoke-static {v8}, Ln97;->b(Ljava/lang/String;)Ljava/lang/Object;

    .line 213
    .line 214
    .line 215
    move-result-object v8

    .line 216
    invoke-virtual {v3, v8}, Lcom/bumptech/glide/RequestManager;->t(Ljava/lang/Object;)Ljpc;

    .line 217
    .line 218
    .line 219
    move-result-object v3

    .line 220
    invoke-virtual {v3, v2}, Ljpc;->t0(Lcom/bumptech/glide/request/BaseRequestOptions;)Ljpc;

    .line 221
    .line 222
    .line 223
    move-result-object v2

    .line 224
    sget v3, Lteam/opay/pay/message/R$drawable;->message_pic_loading:I

    .line 225
    .line 226
    invoke-virtual {v2, v3}, Lcom/bumptech/glide/request/BaseRequestOptions;->Z(I)Lcom/bumptech/glide/request/BaseRequestOptions;

    .line 227
    .line 228
    .line 229
    move-result-object v2

    .line 230
    check-cast v2, Ljpc;

    .line 231
    .line 232
    invoke-virtual {v2, v3}, Lcom/bumptech/glide/request/BaseRequestOptions;->n(I)Lcom/bumptech/glide/request/BaseRequestOptions;

    .line 233
    .line 234
    .line 235
    move-result-object v2

    .line 236
    check-cast v2, Ljpc;

    .line 237
    .line 238
    invoke-virtual {v2, v0}, Lcom/bumptech/glide/request/BaseRequestOptions;->j0(Z)Lcom/bumptech/glide/request/BaseRequestOptions;

    .line 239
    .line 240
    .line 241
    move-result-object v0

    .line 242
    check-cast v0, Ljpc;

    .line 243
    .line 244
    invoke-virtual {p0, v10}, Lteam/opay/pay/message/module/MessageNoticeDetailActivity;->z(I)Landroid/view/View;

    .line 245
    .line 246
    .line 247
    move-result-object v2

    .line 248
    check-cast v2, Landroid/widget/ImageView;

    .line 249
    .line 250
    invoke-virtual {v0, v2}, Ljpc;->F0(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    .line 251
    .line 252
    .line 253
    goto :goto_1

    .line 254
    :cond_5
    :goto_0
    sget v0, Lteam/opay/pay/message/R$id;->message_detail_img:I

    .line 255
    .line 256
    invoke-virtual {p0, v0}, Lteam/opay/pay/message/module/MessageNoticeDetailActivity;->z(I)Landroid/view/View;

    .line 257
    .line 258
    .line 259
    move-result-object v0

    .line 260
    check-cast v0, Landroid/widget/ImageView;

    .line 261
    .line 262
    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 263
    .line 264
    .line 265
    :goto_1
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 266
    .line 267
    .line 268
    move-result v8

    .line 269
    if-nez v1, :cond_6

    .line 270
    .line 271
    const-string v0, ""

    .line 272
    .line 273
    move-object v10, v0

    .line 274
    goto :goto_2

    .line 275
    :cond_6
    move-object v10, v1

    .line 276
    :goto_2
    move-object v4, p0

    .line 277
    invoke-virtual/range {v4 .. v10}, Lteam/opay/pay/message/module/MessageNoticeDetailActivity;->B(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 278
    .line 279
    .line 280
    invoke-virtual {p0, p1}, Lteam/opay/pay/message/module/MessageNoticeDetailActivity;->z(I)Landroid/view/View;

    .line 281
    .line 282
    .line 283
    move-result-object p1

    .line 284
    check-cast p1, Landroid/widget/TextView;

    .line 285
    .line 286
    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    .line 287
    .line 288
    .line 289
    goto :goto_4

    .line 290
    :cond_7
    :goto_3
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 291
    .line 292
    .line 293
    return-void

    .line 294
    :cond_8
    :goto_4
    sget p1, Lteam/opay/pay/message/R$color;->message_white:I

    .line 295
    .line 296
    invoke-static {p0, p1}, Lzq2;->getColor(Landroid/content/Context;I)I

    .line 297
    .line 298
    .line 299
    move-result p1

    .line 300
    invoke-static {p0, p1}, Lteam/opay/swarmfoundation/utils/StatusBarUtil;->g(Landroid/app/Activity;I)V

    .line 301
    .line 302
    .line 303
    return-void
.end method

.method public onResume()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onResume()V

    .line 2
    .line 3
    .line 4
    sget v0, Lteam/opay/pay/message/R$id;->message_detail_go:I

    .line 5
    .line 6
    invoke-virtual {p0, v0}, Lteam/opay/pay/message/module/MessageNoticeDetailActivity;->z(I)Landroid/view/View;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    check-cast v0, Landroid/widget/TextView;

    .line 11
    .line 12
    const/4 v1, 0x1

    .line 13
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public z(I)Landroid/view/View;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/message/module/MessageNoticeDetailActivity;->a:Ljava/util/Map;

    .line 2
    .line 3
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    check-cast v1, Landroid/view/View;

    .line 12
    .line 13
    if-nez v1, :cond_1

    .line 14
    .line 15
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    if-eqz v1, :cond_0

    .line 20
    .line 21
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_0
    const/4 v1, 0x0

    .line 30
    :cond_1
    :goto_0
    return-object v1
.end method
