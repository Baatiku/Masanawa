.class public final Lteam/opay/pay/home/MainActivity$e;
.super Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;
.source "MainActivity.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lteam/opay/pay/home/MainActivity;->setupContentPager()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0017\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0006*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0017\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016\u00a2\u0006\u0004\u0008\u0005\u0010\u0006R\u0016\u0010\t\u001a\u00020\u00028\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0007\u0010\u0008\u00a8\u0006\n"
    }
    d2 = {
        "team/opay/pay/home/MainActivity$e",
        "Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;",
        "",
        "position",
        "",
        "onPageSelected",
        "(I)V",
        "a",
        "I",
        "prevSelected",
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
.field public volatile a:I

.field public final synthetic b:Lteam/opay/pay/home/MainActivity;


# direct methods
.method public constructor <init>(Lteam/opay/pay/home/MainActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lteam/opay/pay/home/MainActivity$e;->b:Lteam/opay/pay/home/MainActivity;

    .line 2
    .line 3
    invoke-direct {p0}, Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onPageSelected(I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lteam/opay/pay/home/MainActivity$e;->b:Lteam/opay/pay/home/MainActivity;

    .line 2
    .line 3
    invoke-static {v0}, Lkmf;->e(Landroid/app/Activity;)Lkotlin/Unit;

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lteam/opay/pay/home/MainActivity$e;->b:Lteam/opay/pay/home/MainActivity;

    .line 7
    .line 8
    invoke-virtual {v0}, Lteam/opay/pay/home/MainActivity;->getViewBinding()Lmf;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    iget-object v0, v0, Lmf;->b:Lcom/google/android/material/bottomnavigation/BottomNavigationView;

    .line 13
    .line 14
    invoke-virtual {v0}, Lcom/google/android/material/navigation/NavigationBarView;->getMenu()Landroid/view/Menu;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    iget v1, p0, Lteam/opay/pay/home/MainActivity$e;->a:I

    .line 19
    .line 20
    invoke-interface {v0, v1}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    const/4 v1, 0x0

    .line 25
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 26
    .line 27
    .line 28
    iget-object v0, p0, Lteam/opay/pay/home/MainActivity$e;->b:Lteam/opay/pay/home/MainActivity;

    .line 29
    .line 30
    invoke-virtual {v0}, Lteam/opay/pay/home/MainActivity;->getViewBinding()Lmf;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    iget-object v0, v0, Lmf;->b:Lcom/google/android/material/bottomnavigation/BottomNavigationView;

    .line 35
    .line 36
    invoke-virtual {v0}, Lcom/google/android/material/navigation/NavigationBarView;->getMenu()Landroid/view/Menu;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    invoke-interface {v0, p1}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    const/4 v2, 0x1

    .line 45
    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 46
    .line 47
    .line 48
    iput p1, p0, Lteam/opay/pay/home/MainActivity$e;->a:I

    .line 49
    .line 50
    iget-object p1, p0, Lteam/opay/pay/home/MainActivity$e;->b:Lteam/opay/pay/home/MainActivity;

    .line 51
    .line 52
    invoke-static {p1}, Lteam/opay/pay/home/MainActivity;->access$getSelectedTab(Lteam/opay/pay/home/MainActivity;)I

    .line 53
    .line 54
    .line 55
    move-result p1

    .line 56
    sget v0, Lteam/opay/pay/R$id;->tab_card:I

    .line 57
    .line 58
    if-ne p1, v0, :cond_0

    .line 59
    .line 60
    sget-object p1, Lx7b;->a:Lx7b;

    .line 61
    .line 62
    const-string v0, "tab_card_show"

    .line 63
    .line 64
    new-array v1, v1, [Lkotlin/Pair;

    .line 65
    .line 66
    invoke-virtual {p1, v0, v1}, Lx7b;->g(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 67
    .line 68
    .line 69
    iget-object p1, p0, Lteam/opay/pay/home/MainActivity$e;->b:Lteam/opay/pay/home/MainActivity;

    .line 70
    .line 71
    sget v0, Lteam/opay/pay/R$id;->bubble_cards:I

    .line 72
    .line 73
    invoke-static {p1, v0}, Lteam/opay/pay/home/MainActivity;->access$onBubbleTabClicked(Lteam/opay/pay/home/MainActivity;I)V

    .line 74
    .line 75
    .line 76
    goto :goto_0

    .line 77
    :cond_0
    sget v0, Lteam/opay/pay/R$id;->tab_fin:I

    .line 78
    .line 79
    if-ne p1, v0, :cond_1

    .line 80
    .line 81
    sget-object p1, Lx7b;->a:Lx7b;

    .line 82
    .line 83
    const-string v0, "tab_fin_show"

    .line 84
    .line 85
    new-array v1, v1, [Lkotlin/Pair;

    .line 86
    .line 87
    invoke-virtual {p1, v0, v1}, Lx7b;->g(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 88
    .line 89
    .line 90
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->c()Lorg/greenrobot/eventbus/EventBus;

    .line 91
    .line 92
    .line 93
    move-result-object p1

    .line 94
    new-instance v0, Lteam/opay/pay/home/SwitchFinanceTabEvent;

    .line 95
    .line 96
    invoke-direct {v0}, Lteam/opay/pay/home/SwitchFinanceTabEvent;-><init>()V

    .line 97
    .line 98
    .line 99
    invoke-virtual {p1, v0}, Lorg/greenrobot/eventbus/EventBus;->l(Ljava/lang/Object;)V

    .line 100
    .line 101
    .line 102
    iget-object p1, p0, Lteam/opay/pay/home/MainActivity$e;->b:Lteam/opay/pay/home/MainActivity;

    .line 103
    .line 104
    sget v0, Lteam/opay/pay/R$id;->bubble_finance:I

    .line 105
    .line 106
    invoke-static {p1, v0}, Lteam/opay/pay/home/MainActivity;->access$onBubbleTabClicked(Lteam/opay/pay/home/MainActivity;I)V

    .line 107
    .line 108
    .line 109
    goto :goto_0

    .line 110
    :cond_1
    sget v0, Lteam/opay/pay/R$id;->tab_home:I

    .line 111
    .line 112
    if-ne p1, v0, :cond_2

    .line 113
    .line 114
    sget-object p1, Lx7b;->a:Lx7b;

    .line 115
    .line 116
    const-string v0, "tab_opay_show"

    .line 117
    .line 118
    new-array v1, v1, [Lkotlin/Pair;

    .line 119
    .line 120
    invoke-virtual {p1, v0, v1}, Lx7b;->g(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 121
    .line 122
    .line 123
    iget-object p1, p0, Lteam/opay/pay/home/MainActivity$e;->b:Lteam/opay/pay/home/MainActivity;

    .line 124
    .line 125
    sget v0, Lteam/opay/pay/R$id;->bubble_home:I

    .line 126
    .line 127
    invoke-static {p1, v0}, Lteam/opay/pay/home/MainActivity;->access$onBubbleTabClicked(Lteam/opay/pay/home/MainActivity;I)V

    .line 128
    .line 129
    .line 130
    goto :goto_0

    .line 131
    :cond_2
    sget v0, Lteam/opay/pay/R$id;->tab_reward:I

    .line 132
    .line 133
    if-ne p1, v0, :cond_3

    .line 134
    .line 135
    sget-object p1, Lx7b;->a:Lx7b;

    .line 136
    .line 137
    const-string v0, "tab_rewards_show"

    .line 138
    .line 139
    new-array v1, v1, [Lkotlin/Pair;

    .line 140
    .line 141
    invoke-virtual {p1, v0, v1}, Lx7b;->g(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 142
    .line 143
    .line 144
    iget-object p1, p0, Lteam/opay/pay/home/MainActivity$e;->b:Lteam/opay/pay/home/MainActivity;

    .line 145
    .line 146
    sget v0, Lteam/opay/pay/R$id;->bubble_rewards:I

    .line 147
    .line 148
    invoke-static {p1, v0}, Lteam/opay/pay/home/MainActivity;->access$onBubbleTabClicked(Lteam/opay/pay/home/MainActivity;I)V

    .line 149
    .line 150
    .line 151
    goto :goto_0

    .line 152
    :cond_3
    sget v0, Lteam/opay/pay/R$id;->tab_me:I

    .line 153
    .line 154
    if-ne p1, v0, :cond_4

    .line 155
    .line 156
    sget-object p1, Lx7b;->a:Lx7b;

    .line 157
    .line 158
    const-string v0, "tab_me_show"

    .line 159
    .line 160
    new-array v1, v1, [Lkotlin/Pair;

    .line 161
    .line 162
    invoke-virtual {p1, v0, v1}, Lx7b;->g(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 163
    .line 164
    .line 165
    iget-object p1, p0, Lteam/opay/pay/home/MainActivity$e;->b:Lteam/opay/pay/home/MainActivity;

    .line 166
    .line 167
    sget v0, Lteam/opay/pay/R$id;->bubble_me:I

    .line 168
    .line 169
    invoke-static {p1, v0}, Lteam/opay/pay/home/MainActivity;->access$onBubbleTabClicked(Lteam/opay/pay/home/MainActivity;I)V

    .line 170
    .line 171
    .line 172
    :cond_4
    :goto_0
    return-void
.end method
