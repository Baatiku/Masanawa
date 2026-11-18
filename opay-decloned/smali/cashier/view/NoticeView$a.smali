.class public final Lcashier/view/NoticeView$a;
.super Ljava/lang/Object;
.source "NoticeView.kt"

# interfaces
.implements Lcashier/view/MarqueeView$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcashier/view/NoticeView;->b(Ljava/util/List;Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001d\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u001f\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004H\u0016\u00a2\u0006\u0004\u0008\u0007\u0010\u0008\u00a8\u0006\t"
    }
    d2 = {
        "cashier/view/NoticeView$a",
        "Lcashier/view/MarqueeView$a;",
        "",
        "position",
        "Landroid/widget/TextView;",
        "textView",
        "",
        "a",
        "(ILandroid/widget/TextView;)V",
        "cashier_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation


# instance fields
.field public final synthetic a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcashier/data/Ad;",
            ">;"
        }
    .end annotation
.end field

.field public final synthetic b:Lcashier/view/NoticeView;


# direct methods
.method public constructor <init>(Ljava/util/List;Lcashier/view/NoticeView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcashier/data/Ad;",
            ">;",
            "Lcashier/view/NoticeView;",
            ")V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcashier/view/NoticeView$a;->a:Ljava/util/List;

    .line 2
    .line 3
    iput-object p2, p0, Lcashier/view/NoticeView$a;->b:Lcashier/view/NoticeView;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public a(ILandroid/widget/TextView;)V
    .locals 12
    .param p2    # Landroid/widget/TextView;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "textView"

    .line 2
    .line 3
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object p2, p0, Lcashier/view/NoticeView$a;->a:Ljava/util/List;

    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    if-eqz p2, :cond_0

    .line 10
    .line 11
    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    check-cast p1, Lcashier/data/Ad;

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    move-object p1, v0

    .line 19
    :goto_0
    sget-object p2, Lcashier/model/CashierViewModel;->E:Lcashier/model/CashierViewModel$Companion;

    .line 20
    .line 21
    invoke-virtual {p2}, Lcashier/model/CashierViewModel$Companion;->d()Lteam/opay/swarmfoundation/data/ICombinationDataGenerator;

    .line 22
    .line 23
    .line 24
    move-result-object p2

    .line 25
    if-eqz p2, :cond_4

    .line 26
    .line 27
    new-instance v1, Lkotlin/Pair;

    .line 28
    .line 29
    if-eqz p1, :cond_1

    .line 30
    .line 31
    invoke-virtual {p1}, Lcashier/data/Ad;->getAd_type()Ljava/lang/Integer;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    goto :goto_1

    .line 36
    :cond_1
    move-object v2, v0

    .line 37
    :goto_1
    const-string v3, "ad_type"

    .line 38
    .line 39
    invoke-direct {v1, v3, v2}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 40
    .line 41
    .line 42
    new-instance v2, Lkotlin/Pair;

    .line 43
    .line 44
    if-eqz p1, :cond_2

    .line 45
    .line 46
    invoke-virtual {p1}, Lcashier/data/Ad;->getId()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v3

    .line 50
    goto :goto_2

    .line 51
    :cond_2
    move-object v3, v0

    .line 52
    :goto_2
    const-string v4, "ad_id"

    .line 53
    .line 54
    invoke-direct {v2, v4, v3}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 55
    .line 56
    .line 57
    new-instance v3, Lkotlin/Pair;

    .line 58
    .line 59
    if-eqz p1, :cond_3

    .line 60
    .line 61
    invoke-virtual {p1}, Lcashier/data/Ad;->getAction()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v4

    .line 65
    goto :goto_3

    .line 66
    :cond_3
    move-object v4, v0

    .line 67
    :goto_3
    const-string v5, "ad_action_url"

    .line 68
    .line 69
    invoke-direct {v3, v5, v4}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 70
    .line 71
    .line 72
    new-instance v4, Lkotlin/Pair;

    .line 73
    .line 74
    iget-object v5, p0, Lcashier/view/NoticeView$a;->b:Lcashier/view/NoticeView;

    .line 75
    .line 76
    invoke-static {v5}, Lcashier/view/NoticeView;->a(Lcashier/view/NoticeView;)Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v5

    .line 80
    const-string v6, "adp_code"

    .line 81
    .line 82
    invoke-direct {v4, v6, v5}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 83
    .line 84
    .line 85
    const/4 v5, 0x4

    .line 86
    new-array v5, v5, [Lkotlin/Pair;

    .line 87
    .line 88
    const/4 v6, 0x0

    .line 89
    aput-object v1, v5, v6

    .line 90
    .line 91
    const/4 v1, 0x1

    .line 92
    aput-object v2, v5, v1

    .line 93
    .line 94
    const/4 v1, 0x2

    .line 95
    aput-object v3, v5, v1

    .line 96
    .line 97
    const/4 v1, 0x3

    .line 98
    aput-object v4, v5, v1

    .line 99
    .line 100
    const-string v1, "ad_click"

    .line 101
    .line 102
    invoke-interface {p2, v1, v5}, Lteam/opay/swarmfoundation/data/ICombinationDataGenerator;->action(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 103
    .line 104
    .line 105
    :cond_4
    if-eqz p1, :cond_5

    .line 106
    .line 107
    invoke-virtual {p1}, Lcashier/data/Ad;->getAction()Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object p2

    .line 111
    goto :goto_4

    .line 112
    :cond_5
    move-object p2, v0

    .line 113
    :goto_4
    if-eqz p2, :cond_9

    .line 114
    .line 115
    invoke-static {p2}, Lkotlin/text/StringsKt;->s0(Ljava/lang/CharSequence;)Z

    .line 116
    .line 117
    .line 118
    move-result p2

    .line 119
    if-eqz p2, :cond_6

    .line 120
    .line 121
    goto :goto_5

    .line 122
    :cond_6
    iget-object p2, p0, Lcashier/view/NoticeView$a;->b:Lcashier/view/NoticeView;

    .line 123
    .line 124
    invoke-virtual {p2}, Lcashier/view/NoticeView;->getOpenScheme()Lkotlin/jvm/functions/Function1;

    .line 125
    .line 126
    .line 127
    move-result-object p2

    .line 128
    if-eqz p2, :cond_f

    .line 129
    .line 130
    if-eqz p1, :cond_7

    .line 131
    .line 132
    invoke-virtual {p1}, Lcashier/data/Ad;->getAction()Ljava/lang/String;

    .line 133
    .line 134
    .line 135
    move-result-object v0

    .line 136
    :cond_7
    if-nez v0, :cond_8

    .line 137
    .line 138
    const-string v0, ""

    .line 139
    .line 140
    :cond_8
    invoke-interface {p2, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    .line 142
    .line 143
    goto :goto_9

    .line 144
    :cond_9
    :goto_5
    sget-object p2, Lcashier/ui/PayNoticeDialog;->i:Lcashier/ui/PayNoticeDialog$Companion;

    .line 145
    .line 146
    new-instance v11, Lcashier/ui/PayNoticeData;

    .line 147
    .line 148
    if-eqz p1, :cond_a

    .line 149
    .line 150
    invoke-virtual {p1}, Lcashier/data/Ad;->getAd_text()Ljava/lang/String;

    .line 151
    .line 152
    .line 153
    move-result-object p1

    .line 154
    goto :goto_6

    .line 155
    :cond_a
    move-object p1, v0

    .line 156
    :goto_6
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 157
    .line 158
    .line 159
    move-result-object v4

    .line 160
    sget p1, Lteam/opay/pay/cashier/R$string;->pay_got_it:I

    .line 161
    .line 162
    invoke-static {p1}, Lcashier/util/UtilsKt;->b(I)Ljava/lang/String;

    .line 163
    .line 164
    .line 165
    move-result-object v5

    .line 166
    const/16 v9, 0x73

    .line 167
    .line 168
    const/4 v10, 0x0

    .line 169
    const/4 v2, 0x0

    .line 170
    const/4 v3, 0x0

    .line 171
    const/4 v6, 0x0

    .line 172
    const/4 v7, 0x0

    .line 173
    const/4 v8, 0x0

    .line 174
    move-object v1, v11

    .line 175
    invoke-direct/range {v1 .. v10}, Lcashier/ui/PayNoticeData;-><init>(ILjava/lang/String;Ljava/lang/CharSequence;Ljava/lang/String;ZZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 176
    .line 177
    .line 178
    invoke-virtual {p2, v11}, Lcashier/ui/PayNoticeDialog$Companion;->a(Lcashier/ui/PayNoticeData;)Lcashier/ui/PayNoticeDialog;

    .line 179
    .line 180
    .line 181
    move-result-object p1

    .line 182
    sget-object p2, Ld00;->a:Ld00;

    .line 183
    .line 184
    invoke-virtual {p2}, Ld00;->e()Landroid/app/Activity;

    .line 185
    .line 186
    .line 187
    move-result-object p2

    .line 188
    instance-of v1, p2, Landroidx/appcompat/app/AppCompatActivity;

    .line 189
    .line 190
    if-eqz v1, :cond_b

    .line 191
    .line 192
    check-cast p2, Landroidx/appcompat/app/AppCompatActivity;

    .line 193
    .line 194
    goto :goto_7

    .line 195
    :cond_b
    move-object p2, v0

    .line 196
    :goto_7
    if-eqz p2, :cond_c

    .line 197
    .line 198
    invoke-virtual {p2}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 199
    .line 200
    .line 201
    move-result-object p2

    .line 202
    goto :goto_8

    .line 203
    :cond_c
    move-object p2, v0

    .line 204
    :goto_8
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->isAdded()Z

    .line 205
    .line 206
    .line 207
    move-result v1

    .line 208
    if-nez v1, :cond_f

    .line 209
    .line 210
    if-eqz p2, :cond_d

    .line 211
    .line 212
    invoke-virtual {p2}, Landroidx/fragment/app/FragmentManager;->p()Landroidx/fragment/app/FragmentTransaction;

    .line 213
    .line 214
    .line 215
    move-result-object v0

    .line 216
    :cond_d
    if-eqz v0, :cond_e

    .line 217
    .line 218
    const-class p2, Lcashier/ui/PayNoticeDialog;

    .line 219
    .line 220
    invoke-virtual {p2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 221
    .line 222
    .line 223
    move-result-object p2

    .line 224
    invoke-virtual {v0, p1, p2}, Landroidx/fragment/app/FragmentTransaction;->e(Landroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    .line 225
    .line 226
    .line 227
    :cond_e
    if-eqz v0, :cond_f

    .line 228
    .line 229
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentTransaction;->j()I

    .line 230
    .line 231
    .line 232
    :cond_f
    :goto_9
    return-void
.end method
