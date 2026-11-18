.class public final Lteam/opay/pay/wallet/view/AnnouncementView$a;
.super Ljava/lang/Object;
.source "AnnouncementView.kt"

# interfaces
.implements Lteam/opay/pay/wallet/view/MarqueeView$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lteam/opay/pay/wallet/view/AnnouncementView;->c(Ljava/util/List;Landroid/content/Context;)V
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
        "team/opay/pay/wallet/view/AnnouncementView$a",
        "Lteam/opay/pay/wallet/view/MarqueeView$a;",
        "",
        "position",
        "Landroid/widget/TextView;",
        "textView",
        "",
        "a",
        "(ILandroid/widget/TextView;)V",
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


# instance fields
.field public final synthetic a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lteam/opay/odialog/net/AdDataItem;",
            ">;"
        }
    .end annotation
.end field

.field public final synthetic b:Landroid/content/Context;

.field public final synthetic c:Lteam/opay/pay/wallet/view/AnnouncementView;


# direct methods
.method public constructor <init>(Ljava/util/List;Landroid/content/Context;Lteam/opay/pay/wallet/view/AnnouncementView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lteam/opay/odialog/net/AdDataItem;",
            ">;",
            "Landroid/content/Context;",
            "Lteam/opay/pay/wallet/view/AnnouncementView;",
            ")V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lteam/opay/pay/wallet/view/AnnouncementView$a;->a:Ljava/util/List;

    .line 2
    .line 3
    iput-object p2, p0, Lteam/opay/pay/wallet/view/AnnouncementView$a;->b:Landroid/content/Context;

    .line 4
    .line 5
    iput-object p3, p0, Lteam/opay/pay/wallet/view/AnnouncementView$a;->c:Lteam/opay/pay/wallet/view/AnnouncementView;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public a(ILandroid/widget/TextView;)V
    .locals 13

    .line 1
    const-string v0, "textView"

    .line 2
    .line 3
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object p2, p0, Lteam/opay/pay/wallet/view/AnnouncementView$a;->a:Ljava/util/List;

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
    check-cast p1, Lteam/opay/odialog/net/AdDataItem;

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    move-object p1, v0

    .line 19
    :goto_0
    if-eqz p1, :cond_1

    .line 20
    .line 21
    iget-object p2, p0, Lteam/opay/pay/wallet/view/AnnouncementView$a;->c:Lteam/opay/pay/wallet/view/AnnouncementView;

    .line 22
    .line 23
    sget-object v1, Lx7b;->a:Lx7b;

    .line 24
    .line 25
    const-string v2, "marquee_ads"

    .line 26
    .line 27
    invoke-static {p2}, Lteam/opay/pay/wallet/view/AnnouncementView;->a(Lteam/opay/pay/wallet/view/AnnouncementView;)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object p2

    .line 31
    invoke-virtual {v1, p1, v2, p2}, Lx7b;->t(Lteam/opay/odialog/net/AdDataItem;Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    :cond_1
    if-eqz p1, :cond_2

    .line 35
    .line 36
    invoke-virtual {p1}, Lteam/opay/odialog/net/AdDataItem;->getAction()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object p2

    .line 40
    goto :goto_1

    .line 41
    :cond_2
    move-object p2, v0

    .line 42
    :goto_1
    if-eqz p2, :cond_7

    .line 43
    .line 44
    invoke-static {p2}, Lkotlin/text/StringsKt;->s0(Ljava/lang/CharSequence;)Z

    .line 45
    .line 46
    .line 47
    move-result p2

    .line 48
    if-eqz p2, :cond_3

    .line 49
    .line 50
    goto :goto_2

    .line 51
    :cond_3
    sget-object p2, Lteam/opay/swarmfoundation/OServiceManager;->a:Lteam/opay/swarmfoundation/OServiceManager$Companion;

    .line 52
    .line 53
    const-class v1, Lteam/opay/swarmfoundation/action/IActionManager;

    .line 54
    .line 55
    invoke-virtual {p2, v1}, Lteam/opay/swarmfoundation/OServiceManager$Companion;->b(Ljava/lang/Class;)Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    move-result-object p2

    .line 59
    check-cast p2, Lteam/opay/swarmfoundation/action/IActionManager;

    .line 60
    .line 61
    if-eqz p2, :cond_b

    .line 62
    .line 63
    iget-object v1, p0, Lteam/opay/pay/wallet/view/AnnouncementView$a;->b:Landroid/content/Context;

    .line 64
    .line 65
    if-eqz p1, :cond_4

    .line 66
    .line 67
    invoke-virtual {p1}, Lteam/opay/odialog/net/AdDataItem;->getAction()Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v2

    .line 71
    if-nez v2, :cond_5

    .line 72
    .line 73
    :cond_4
    const-string v2, ""

    .line 74
    .line 75
    :cond_5
    if-eqz p1, :cond_6

    .line 76
    .line 77
    invoke-virtual {p1}, Lteam/opay/odialog/net/AdDataItem;->getAction()Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v0

    .line 81
    :cond_6
    new-instance p1, Ljava/lang/StringBuilder;

    .line 82
    .line 83
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 84
    .line 85
    .line 86
    const-string v3, "announcement_view_item_click_"

    .line 87
    .line 88
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    .line 90
    .line 91
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    .line 93
    .line 94
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object p1

    .line 98
    invoke-interface {p2, v1, v2, p1}, Lteam/opay/swarmfoundation/action/IActionManager;->open(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    .line 100
    .line 101
    goto :goto_4

    .line 102
    :cond_7
    :goto_2
    sget-object p2, Lteam/opay/pay/wallet/OneButtonDialog;->p:Lteam/opay/pay/wallet/OneButtonDialog$Companion;

    .line 103
    .line 104
    new-instance v12, Lteam/opay/pay/wallet/OneButtonDialogData;

    .line 105
    .line 106
    if-eqz p1, :cond_8

    .line 107
    .line 108
    invoke-virtual {p1}, Lteam/opay/odialog/net/AdDataItem;->getAd_text()Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object p1

    .line 112
    goto :goto_3

    .line 113
    :cond_8
    move-object p1, v0

    .line 114
    :goto_3
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    move-result-object v4

    .line 118
    sget p1, Lteam/opay/pay/R$string;->got_it_label:I

    .line 119
    .line 120
    invoke-static {p1}, Ljmf;->k(I)Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    move-result-object v5

    .line 124
    const/16 v10, 0xf3

    .line 125
    .line 126
    const/4 v11, 0x0

    .line 127
    const/4 v2, 0x0

    .line 128
    const/4 v3, 0x0

    .line 129
    const/4 v6, 0x0

    .line 130
    const/4 v7, 0x0

    .line 131
    const/4 v8, 0x0

    .line 132
    const/4 v9, 0x0

    .line 133
    move-object v1, v12

    .line 134
    invoke-direct/range {v1 .. v11}, Lteam/opay/pay/wallet/OneButtonDialogData;-><init>(ILjava/lang/String;Ljava/lang/CharSequence;Ljava/lang/String;ZZZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 135
    .line 136
    .line 137
    invoke-virtual {p2, v12}, Lteam/opay/pay/wallet/OneButtonDialog$Companion;->a(Lteam/opay/pay/wallet/OneButtonDialogData;)Lteam/opay/pay/wallet/OneButtonDialog;

    .line 138
    .line 139
    .line 140
    move-result-object p1

    .line 141
    sget-object p2, Ljd6;->a:Ljd6;

    .line 142
    .line 143
    sget-object v1, Ld00;->a:Ld00;

    .line 144
    .line 145
    invoke-virtual {v1}, Ld00;->e()Landroid/app/Activity;

    .line 146
    .line 147
    .line 148
    move-result-object v1

    .line 149
    instance-of v2, v1, Landroidx/appcompat/app/AppCompatActivity;

    .line 150
    .line 151
    if-eqz v2, :cond_9

    .line 152
    .line 153
    move-object v0, v1

    .line 154
    check-cast v0, Landroidx/appcompat/app/AppCompatActivity;

    .line 155
    .line 156
    :cond_9
    if-eqz v0, :cond_b

    .line 157
    .line 158
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 159
    .line 160
    .line 161
    move-result-object v0

    .line 162
    if-nez v0, :cond_a

    .line 163
    .line 164
    goto :goto_4

    .line 165
    :cond_a
    invoke-virtual {p2, v0, p1}, Ljd6;->b(Landroidx/fragment/app/FragmentManager;Landroidx/fragment/app/Fragment;)V

    .line 166
    .line 167
    .line 168
    :cond_b
    :goto_4
    return-void
.end method
