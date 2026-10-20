.class public final Lteam/opay/pay/home/clipboard/parser/OneLinkParser;
.super Lteam/opay/pay/home/clipboard/ClipboardParser;
.source "OneLinkParser.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lteam/opay/pay/home/clipboard/parser/OneLinkParser$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0008\u0018\u0000 \n2\u00020\u0001:\u0001\u001bB\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J*\u0010\n\u001a\u0004\u0018\u00010\u00012\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\u0008H\u0096@\u00a2\u0006\u0004\u0008\n\u0010\u000bJ\u0019\u0010\r\u001a\u0004\u0018\u00010\u000c2\u0006\u0010\u0007\u001a\u00020\u0006H\u0016\u00a2\u0006\u0004\u0008\r\u0010\u000eJ(\u0010\u0012\u001a\u00020\u00112\u0006\u0010\u0010\u001a\u00020\u000f2\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\u0008H\u0082@\u00a2\u0006\u0004\u0008\u0012\u0010\u0013J\u001f\u0010\u0016\u001a\u00020\u000c2\u0006\u0010\u0015\u001a\u00020\u00142\u0006\u0010\u0007\u001a\u00020\u0006H\u0002\u00a2\u0006\u0004\u0008\u0016\u0010\u0017R\u0018\u0010\u001a\u001a\u0004\u0018\u00010\u00148\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0018\u0010\u0019\u00a8\u0006\u001c"
    }
    d2 = {
        "Lteam/opay/pay/home/clipboard/parser/OneLinkParser;",
        "Lteam/opay/pay/home/clipboard/ClipboardParser;",
        "<init>",
        "()V",
        "",
        "text",
        "Landroidx/fragment/app/Fragment;",
        "fragment",
        "",
        "time",
        "c",
        "(Ljava/lang/String;Landroidx/fragment/app/Fragment;JLjr2;)Ljava/lang/Object;",
        "Landroidx/fragment/app/DialogFragment;",
        "a",
        "(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/DialogFragment;",
        "Lteam/opay/pay/home/clipboard/ClipboardIntent$OpayLink;",
        "intent",
        "",
        "h",
        "(Lteam/opay/pay/home/clipboard/ClipboardIntent$OpayLink;Landroidx/fragment/app/Fragment;JLjr2;)Ljava/lang/Object;",
        "Lteam/opay/pay/home/clipboard/ClipboardRecipientInfo;",
        "recipient",
        "g",
        "(Lteam/opay/pay/home/clipboard/ClipboardRecipientInfo;Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/DialogFragment;",
        "b",
        "Lteam/opay/pay/home/clipboard/ClipboardRecipientInfo;",
        "recipientInfo",
        "Companion",
        "sdk_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final c:Lteam/opay/pay/home/clipboard/parser/OneLinkParser$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field public b:Lteam/opay/pay/home/clipboard/ClipboardRecipientInfo;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lteam/opay/pay/home/clipboard/parser/OneLinkParser$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lteam/opay/pay/home/clipboard/parser/OneLinkParser$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lteam/opay/pay/home/clipboard/parser/OneLinkParser;->c:Lteam/opay/pay/home/clipboard/parser/OneLinkParser$Companion;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lteam/opay/pay/home/clipboard/ClipboardParser;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic f(Lteam/opay/pay/home/clipboard/parser/OneLinkParser;Lteam/opay/pay/home/clipboard/ClipboardIntent$OpayLink;Landroidx/fragment/app/Fragment;JLjr2;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual/range {p0 .. p5}, Lteam/opay/pay/home/clipboard/parser/OneLinkParser;->h(Lteam/opay/pay/home/clipboard/ClipboardIntent$OpayLink;Landroidx/fragment/app/Fragment;JLjr2;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method


# virtual methods
.method public a(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/DialogFragment;
    .locals 1
    .param p1    # Landroidx/fragment/app/Fragment;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    const-string v0, "fragment"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lteam/opay/pay/home/clipboard/parser/OneLinkParser;->b:Lteam/opay/pay/home/clipboard/ClipboardRecipientInfo;

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    const/4 p1, 0x0

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0, v0, p1}, Lteam/opay/pay/home/clipboard/parser/OneLinkParser;->g(Lteam/opay/pay/home/clipboard/ClipboardRecipientInfo;Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/DialogFragment;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    :goto_0
    return-object p1
.end method

.method public c(Ljava/lang/String;Landroidx/fragment/app/Fragment;JLjr2;)Ljava/lang/Object;
    .locals 7
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroidx/fragment/app/Fragment;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p5    # Ljr2;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroidx/fragment/app/Fragment;",
            "J",
            "Ljr2<",
            "-",
            "Lteam/opay/pay/home/clipboard/ClipboardParser;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    instance-of v0, p5, Lteam/opay/pay/home/clipboard/parser/OneLinkParser$parse$1;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p5

    .line 6
    check-cast v0, Lteam/opay/pay/home/clipboard/parser/OneLinkParser$parse$1;

    .line 7
    .line 8
    iget v1, v0, Lteam/opay/pay/home/clipboard/parser/OneLinkParser$parse$1;->label:I

    .line 9
    .line 10
    const/high16 v2, -0x80000000

    .line 11
    .line 12
    and-int v3, v1, v2

    .line 13
    .line 14
    if-eqz v3, :cond_0

    .line 15
    .line 16
    sub-int/2addr v1, v2

    .line 17
    iput v1, v0, Lteam/opay/pay/home/clipboard/parser/OneLinkParser$parse$1;->label:I

    .line 18
    .line 19
    :goto_0
    move-object v6, v0

    .line 20
    goto :goto_1

    .line 21
    :cond_0
    new-instance v0, Lteam/opay/pay/home/clipboard/parser/OneLinkParser$parse$1;

    .line 22
    .line 23
    invoke-direct {v0, p0, p5}, Lteam/opay/pay/home/clipboard/parser/OneLinkParser$parse$1;-><init>(Lteam/opay/pay/home/clipboard/parser/OneLinkParser;Ljr2;)V

    .line 24
    .line 25
    .line 26
    goto :goto_0

    .line 27
    :goto_1
    iget-object p5, v6, Lteam/opay/pay/home/clipboard/parser/OneLinkParser$parse$1;->result:Ljava/lang/Object;

    .line 28
    .line 29
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->e()Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    iget v1, v6, Lteam/opay/pay/home/clipboard/parser/OneLinkParser$parse$1;->label:I

    .line 34
    .line 35
    const/4 v2, 0x2

    .line 36
    const/4 v3, 0x1

    .line 37
    if-eqz v1, :cond_3

    .line 38
    .line 39
    if-eq v1, v3, :cond_2

    .line 40
    .line 41
    if-ne v1, v2, :cond_1

    .line 42
    .line 43
    invoke-static {p5}, Lkotlin/d;->b(Ljava/lang/Object;)V

    .line 44
    .line 45
    .line 46
    goto/16 :goto_5

    .line 47
    .line 48
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 49
    .line 50
    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    .line 51
    .line 52
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    throw p1

    .line 56
    :cond_2
    iget-object p1, v6, Lteam/opay/pay/home/clipboard/parser/OneLinkParser$parse$1;->L$0:Ljava/lang/Object;

    .line 57
    .line 58
    check-cast p1, Lteam/opay/pay/home/clipboard/parser/OneLinkParser;

    .line 59
    .line 60
    invoke-static {p5}, Lkotlin/d;->b(Ljava/lang/Object;)V

    .line 61
    .line 62
    .line 63
    goto :goto_3

    .line 64
    :cond_3
    invoke-static {p5}, Lkotlin/d;->b(Ljava/lang/Object;)V

    .line 65
    .line 66
    .line 67
    new-instance p5, Lkotlin/text/Regex;

    .line 68
    .line 69
    const-string v1, "^https:\\/\\/opayapp\\.onelink\\.me(?=.*\\bamount\\b)(?=.*OPaycheckout\\.com)(?=.*\\b(phone|accountNumber)\\b).*$"

    .line 70
    .line 71
    invoke-direct {p5, v1}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    invoke-virtual {p5, p1}, Lkotlin/text/Regex;->matches(Ljava/lang/CharSequence;)Z

    .line 75
    .line 76
    .line 77
    move-result p5

    .line 78
    const/4 v1, 0x0

    .line 79
    if-eqz p5, :cond_7

    .line 80
    .line 81
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 82
    .line 83
    .line 84
    move-result-object p5

    .line 85
    const-string v4, "Uri.parse(this)"

    .line 86
    .line 87
    invoke-static {p5, v4}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    const-string v4, "phone"

    .line 91
    .line 92
    invoke-virtual {p5, v4}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object v4

    .line 96
    if-eqz v4, :cond_4

    .line 97
    .line 98
    invoke-static {v4}, Lkotlin/text/StringsKt;->q1(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 99
    .line 100
    .line 101
    move-result-object v4

    .line 102
    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object v4

    .line 106
    goto :goto_2

    .line 107
    :cond_4
    move-object v4, v1

    .line 108
    :goto_2
    if-eqz v4, :cond_7

    .line 109
    .line 110
    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    .line 111
    .line 112
    .line 113
    move-result v5

    .line 114
    if-nez v5, :cond_5

    .line 115
    .line 116
    goto :goto_4

    .line 117
    :cond_5
    new-instance v2, Lteam/opay/pay/home/clipboard/ClipboardIntent$OpayLink;

    .line 118
    .line 119
    const-string p1, "amount"

    .line 120
    .line 121
    invoke-virtual {p5, p1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    .line 122
    .line 123
    .line 124
    move-result-object p1

    .line 125
    const-string v1, "gateway"

    .line 126
    .line 127
    invoke-virtual {p5, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    .line 128
    .line 129
    .line 130
    move-result-object v1

    .line 131
    const-string v5, "autoPay"

    .line 132
    .line 133
    invoke-virtual {p5, v5}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    .line 134
    .line 135
    .line 136
    move-result-object p5

    .line 137
    const-string v5, "true"

    .line 138
    .line 139
    invoke-static {p5, v5}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 140
    .line 141
    .line 142
    move-result p5

    .line 143
    invoke-direct {v2, v4, p1, v1, p5}, Lteam/opay/pay/home/clipboard/ClipboardIntent$OpayLink;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 144
    .line 145
    .line 146
    iput-object p0, v6, Lteam/opay/pay/home/clipboard/parser/OneLinkParser$parse$1;->L$0:Ljava/lang/Object;

    .line 147
    .line 148
    iput v3, v6, Lteam/opay/pay/home/clipboard/parser/OneLinkParser$parse$1;->label:I

    .line 149
    .line 150
    move-object v1, p0

    .line 151
    move-object v3, p2

    .line 152
    move-wide v4, p3

    .line 153
    invoke-virtual/range {v1 .. v6}, Lteam/opay/pay/home/clipboard/parser/OneLinkParser;->h(Lteam/opay/pay/home/clipboard/ClipboardIntent$OpayLink;Landroidx/fragment/app/Fragment;JLjr2;)Ljava/lang/Object;

    .line 154
    .line 155
    .line 156
    move-result-object p1

    .line 157
    if-ne p1, v0, :cond_6

    .line 158
    .line 159
    return-object v0

    .line 160
    :cond_6
    move-object p1, p0

    .line 161
    :goto_3
    return-object p1

    .line 162
    :cond_7
    :goto_4
    invoke-virtual {p0}, Lteam/opay/pay/home/clipboard/ClipboardParser;->b()Lteam/opay/pay/home/clipboard/ClipboardParser;

    .line 163
    .line 164
    .line 165
    move-result-object p5

    .line 166
    if-eqz p5, :cond_9

    .line 167
    .line 168
    iput v2, v6, Lteam/opay/pay/home/clipboard/parser/OneLinkParser$parse$1;->label:I

    .line 169
    .line 170
    move-object v1, p5

    .line 171
    move-object v2, p1

    .line 172
    move-object v3, p2

    .line 173
    move-wide v4, p3

    .line 174
    invoke-virtual/range {v1 .. v6}, Lteam/opay/pay/home/clipboard/ClipboardParser;->c(Ljava/lang/String;Landroidx/fragment/app/Fragment;JLjr2;)Ljava/lang/Object;

    .line 175
    .line 176
    .line 177
    move-result-object p5

    .line 178
    if-ne p5, v0, :cond_8

    .line 179
    .line 180
    return-object v0

    .line 181
    :cond_8
    :goto_5
    return-object p5

    .line 182
    :cond_9
    return-object v1
.end method

.method public final g(Lteam/opay/pay/home/clipboard/ClipboardRecipientInfo;Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/DialogFragment;
    .locals 13

    .line 1
    invoke-virtual {p1}, Lteam/opay/pay/home/clipboard/ClipboardRecipientInfo;->c()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p2

    .line 5
    instance-of v0, p2, Lteam/opay/core/api/graphql/VerifyUserResponse;

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    check-cast p2, Lteam/opay/core/api/graphql/VerifyUserResponse;

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    move-object p2, v1

    .line 14
    :goto_0
    if-eqz p2, :cond_1

    .line 15
    .line 16
    invoke-virtual {p2}, Lteam/opay/core/api/graphql/VerifyUserResponse;->a()Lteam/opay/core/api/graphql/RecipientUserInfo;

    .line 17
    .line 18
    .line 19
    move-result-object p2

    .line 20
    goto :goto_1

    .line 21
    :cond_1
    move-object p2, v1

    .line 22
    :goto_1
    invoke-virtual {p1}, Lteam/opay/pay/home/clipboard/ClipboardRecipientInfo;->a()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v11

    .line 26
    new-instance v0, Lteam/opay/pay/home/clipboard/dialog/AAHomeClipboardDialog$AAClipboardParms;

    .line 27
    .line 28
    if-eqz p2, :cond_2

    .line 29
    .line 30
    invoke-virtual {p2}, Lteam/opay/core/api/graphql/RecipientUserInfo;->getName()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    goto :goto_2

    .line 35
    :cond_2
    move-object v2, v1

    .line 36
    :goto_2
    const-string v3, ""

    .line 37
    .line 38
    if-nez v2, :cond_3

    .line 39
    .line 40
    move-object v4, v3

    .line 41
    goto :goto_3

    .line 42
    :cond_3
    move-object v4, v2

    .line 43
    :goto_3
    if-eqz p2, :cond_4

    .line 44
    .line 45
    invoke-virtual {p2}, Lteam/opay/core/api/graphql/RecipientUserInfo;->getOpayBankName()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v2

    .line 49
    goto :goto_4

    .line 50
    :cond_4
    move-object v2, v1

    .line 51
    :goto_4
    if-nez v2, :cond_5

    .line 52
    .line 53
    move-object v5, v3

    .line 54
    goto :goto_5

    .line 55
    :cond_5
    move-object v5, v2

    .line 56
    :goto_5
    if-eqz p2, :cond_6

    .line 57
    .line 58
    invoke-virtual {p2}, Lteam/opay/core/api/graphql/RecipientUserInfo;->getOpayBankLogo()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v2

    .line 62
    goto :goto_6

    .line 63
    :cond_6
    move-object v2, v1

    .line 64
    :goto_6
    if-nez v2, :cond_7

    .line 65
    .line 66
    move-object v6, v3

    .line 67
    goto :goto_7

    .line 68
    :cond_7
    move-object v6, v2

    .line 69
    :goto_7
    if-eqz p2, :cond_8

    .line 70
    .line 71
    invoke-virtual {p2}, Lteam/opay/core/api/graphql/RecipientUserInfo;->getMobile()Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v2

    .line 75
    goto :goto_8

    .line 76
    :cond_8
    move-object v2, v1

    .line 77
    :goto_8
    if-nez v2, :cond_9

    .line 78
    .line 79
    move-object v7, v3

    .line 80
    goto :goto_9

    .line 81
    :cond_9
    move-object v7, v2

    .line 82
    :goto_9
    if-eqz p2, :cond_a

    .line 83
    .line 84
    invoke-virtual {p2}, Lteam/opay/core/api/graphql/RecipientUserInfo;->getPhotoUrl()Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object v1

    .line 88
    :cond_a
    if-nez v1, :cond_b

    .line 89
    .line 90
    move-object v1, v3

    .line 91
    :cond_b
    invoke-virtual {p1}, Lteam/opay/pay/home/clipboard/ClipboardRecipientInfo;->b()Z

    .line 92
    .line 93
    .line 94
    move-result v9

    .line 95
    invoke-virtual {p1}, Lteam/opay/pay/home/clipboard/ClipboardRecipientInfo;->d()Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object v10

    .line 99
    const/4 v12, 0x1

    .line 100
    const/4 v8, 0x0

    .line 101
    move-object v2, v0

    .line 102
    move-object v3, v4

    .line 103
    move-object v4, v5

    .line 104
    move-object v5, v6

    .line 105
    move-object v6, v7

    .line 106
    move-object v7, v1

    .line 107
    invoke-direct/range {v2 .. v12}, Lteam/opay/pay/home/clipboard/dialog/AAHomeClipboardDialog$AAClipboardParms;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Z)V

    .line 108
    .line 109
    .line 110
    sget-object p1, Lteam/opay/pay/home/clipboard/dialog/AAHomeClipboardDialog;->n:Lteam/opay/pay/home/clipboard/dialog/AAHomeClipboardDialog$Companion;

    .line 111
    .line 112
    invoke-virtual {p1, v0}, Lteam/opay/pay/home/clipboard/dialog/AAHomeClipboardDialog$Companion;->a(Lteam/opay/pay/home/clipboard/dialog/AAHomeClipboardDialog$AAClipboardParms;)Lteam/opay/pay/home/clipboard/dialog/AAHomeClipboardDialog;

    .line 113
    .line 114
    .line 115
    move-result-object p1

    .line 116
    return-object p1
.end method

.method public final h(Lteam/opay/pay/home/clipboard/ClipboardIntent$OpayLink;Landroidx/fragment/app/Fragment;JLjr2;)Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lteam/opay/pay/home/clipboard/ClipboardIntent$OpayLink;",
            "Landroidx/fragment/app/Fragment;",
            "J",
            "Ljr2<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    instance-of v0, p5, Lteam/opay/pay/home/clipboard/parser/OneLinkParser$lookup$1;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p5

    .line 6
    check-cast v0, Lteam/opay/pay/home/clipboard/parser/OneLinkParser$lookup$1;

    .line 7
    .line 8
    iget v1, v0, Lteam/opay/pay/home/clipboard/parser/OneLinkParser$lookup$1;->label:I

    .line 9
    .line 10
    const/high16 v2, -0x80000000

    .line 11
    .line 12
    and-int v3, v1, v2

    .line 13
    .line 14
    if-eqz v3, :cond_0

    .line 15
    .line 16
    sub-int/2addr v1, v2

    .line 17
    iput v1, v0, Lteam/opay/pay/home/clipboard/parser/OneLinkParser$lookup$1;->label:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Lteam/opay/pay/home/clipboard/parser/OneLinkParser$lookup$1;

    .line 21
    .line 22
    invoke-direct {v0, p0, p5}, Lteam/opay/pay/home/clipboard/parser/OneLinkParser$lookup$1;-><init>(Lteam/opay/pay/home/clipboard/parser/OneLinkParser;Ljr2;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p5, v0, Lteam/opay/pay/home/clipboard/parser/OneLinkParser$lookup$1;->result:Ljava/lang/Object;

    .line 26
    .line 27
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->e()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    iget v2, v0, Lteam/opay/pay/home/clipboard/parser/OneLinkParser$lookup$1;->label:I

    .line 32
    .line 33
    const/4 v3, 0x1

    .line 34
    if-eqz v2, :cond_2

    .line 35
    .line 36
    if-ne v2, v3, :cond_1

    .line 37
    .line 38
    iget-wide p3, v0, Lteam/opay/pay/home/clipboard/parser/OneLinkParser$lookup$1;->J$0:J

    .line 39
    .line 40
    iget-object p1, v0, Lteam/opay/pay/home/clipboard/parser/OneLinkParser$lookup$1;->L$1:Ljava/lang/Object;

    .line 41
    .line 42
    check-cast p1, Lteam/opay/pay/home/clipboard/ClipboardIntent$OpayLink;

    .line 43
    .line 44
    iget-object p2, v0, Lteam/opay/pay/home/clipboard/parser/OneLinkParser$lookup$1;->L$0:Ljava/lang/Object;

    .line 45
    .line 46
    check-cast p2, Lteam/opay/pay/home/clipboard/parser/OneLinkParser;

    .line 47
    .line 48
    invoke-static {p5}, Lkotlin/d;->b(Ljava/lang/Object;)V

    .line 49
    .line 50
    .line 51
    :goto_1
    move-wide v4, p3

    .line 52
    goto :goto_2

    .line 53
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 54
    .line 55
    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    .line 56
    .line 57
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    throw p1

    .line 61
    :cond_2
    invoke-static {p5}, Lkotlin/d;->b(Ljava/lang/Object;)V

    .line 62
    .line 63
    .line 64
    new-instance p5, Landroidx/lifecycle/ViewModelProvider;

    .line 65
    .line 66
    invoke-direct {p5, p2}, Landroidx/lifecycle/ViewModelProvider;-><init>(Lr0g;)V

    .line 67
    .line 68
    .line 69
    const-class p2, Lteam/opay/pay/pin/PinViewModel;

    .line 70
    .line 71
    invoke-virtual {p5, p2}, Landroidx/lifecycle/ViewModelProvider;->a(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;

    .line 72
    .line 73
    .line 74
    move-result-object p2

    .line 75
    check-cast p2, Lteam/opay/pay/pin/PinViewModel;

    .line 76
    .line 77
    new-instance p5, Lteam/opay/core/api/graphql/RecipientAccountReq;

    .line 78
    .line 79
    invoke-virtual {p1}, Lteam/opay/pay/home/clipboard/ClipboardIntent$OpayLink;->d()Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v2

    .line 83
    sget-object v4, Lteam/opay/core/api/GraphQL$ServiceType;->COINS_SEND:Lteam/opay/core/api/GraphQL$ServiceType;

    .line 84
    .line 85
    invoke-virtual {v4}, Lteam/opay/core/api/GraphQL$ServiceType;->getValue()Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object v4

    .line 89
    const/4 v5, 0x0

    .line 90
    invoke-direct {p5, v2, v5, v4}, Lteam/opay/core/api/graphql/RecipientAccountReq;-><init>(Ljava/lang/String;ZLjava/lang/String;)V

    .line 91
    .line 92
    .line 93
    invoke-virtual {p2, p5}, Lteam/opay/pay/pin/PinViewModel;->w(Lteam/opay/core/api/graphql/RecipientAccountReq;)Landroidx/lifecycle/LiveData;

    .line 94
    .line 95
    .line 96
    move-result-object p2

    .line 97
    invoke-static {p2}, Lteam/opay/core/android/arch/ResourceKt;->a(Landroidx/lifecycle/LiveData;)Lv56;

    .line 98
    .line 99
    .line 100
    move-result-object p2

    .line 101
    iput-object p0, v0, Lteam/opay/pay/home/clipboard/parser/OneLinkParser$lookup$1;->L$0:Ljava/lang/Object;

    .line 102
    .line 103
    iput-object p1, v0, Lteam/opay/pay/home/clipboard/parser/OneLinkParser$lookup$1;->L$1:Ljava/lang/Object;

    .line 104
    .line 105
    iput-wide p3, v0, Lteam/opay/pay/home/clipboard/parser/OneLinkParser$lookup$1;->J$0:J

    .line 106
    .line 107
    iput v3, v0, Lteam/opay/pay/home/clipboard/parser/OneLinkParser$lookup$1;->label:I

    .line 108
    .line 109
    invoke-static {p2, v0}, Ly86;->z(Lv56;Ljr2;)Ljava/lang/Object;

    .line 110
    .line 111
    .line 112
    move-result-object p5

    .line 113
    if-ne p5, v1, :cond_3

    .line 114
    .line 115
    return-object v1

    .line 116
    :cond_3
    move-object p2, p0

    .line 117
    goto :goto_1

    .line 118
    :goto_2
    move-object v2, p5

    .line 119
    check-cast v2, Lteam/opay/core/api/graphql/VerifyUserResponse;

    .line 120
    .line 121
    new-instance p3, Lteam/opay/pay/home/clipboard/ClipboardRecipientInfo;

    .line 122
    .line 123
    sget-object v1, Lteam/opay/pay/home/clipboard/ClipboardRecipientInfo$Type;->OPAY_USER_LINK:Lteam/opay/pay/home/clipboard/ClipboardRecipientInfo$Type;

    .line 124
    .line 125
    invoke-virtual {p1}, Lteam/opay/pay/home/clipboard/ClipboardIntent$OpayLink;->a()Ljava/lang/String;

    .line 126
    .line 127
    .line 128
    move-result-object v3

    .line 129
    invoke-virtual {p1}, Lteam/opay/pay/home/clipboard/ClipboardIntent$OpayLink;->b()Z

    .line 130
    .line 131
    .line 132
    move-result v6

    .line 133
    invoke-virtual {p1}, Lteam/opay/pay/home/clipboard/ClipboardIntent$OpayLink;->c()Ljava/lang/String;

    .line 134
    .line 135
    .line 136
    move-result-object v7

    .line 137
    move-object v0, p3

    .line 138
    invoke-direct/range {v0 .. v7}, Lteam/opay/pay/home/clipboard/ClipboardRecipientInfo;-><init>(Lteam/opay/pay/home/clipboard/ClipboardRecipientInfo$Type;Ljava/lang/Object;Ljava/lang/String;JZLjava/lang/String;)V

    .line 139
    .line 140
    .line 141
    iput-object p3, p2, Lteam/opay/pay/home/clipboard/parser/OneLinkParser;->b:Lteam/opay/pay/home/clipboard/ClipboardRecipientInfo;

    .line 142
    .line 143
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 144
    .line 145
    return-object p1
.end method
