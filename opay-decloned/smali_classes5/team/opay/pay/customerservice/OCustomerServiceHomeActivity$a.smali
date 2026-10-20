.class public final Lteam/opay/pay/customerservice/OCustomerServiceHomeActivity$a;
.super Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;
.source "OCustomerServiceHomeActivity.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lteam/opay/pay/customerservice/OCustomerServiceHomeActivity;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0017\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0017\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016\u00a2\u0006\u0004\u0008\u0005\u0010\u0006\u00a8\u0006\u0007"
    }
    d2 = {
        "team/opay/pay/customerservice/OCustomerServiceHomeActivity$a",
        "Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;",
        "",
        "position",
        "",
        "onPageSelected",
        "(I)V",
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
.field public final synthetic a:Lteam/opay/pay/customerservice/OCustomerServiceHomeActivity;


# direct methods
.method public constructor <init>(Lteam/opay/pay/customerservice/OCustomerServiceHomeActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lteam/opay/pay/customerservice/OCustomerServiceHomeActivity$a;->a:Lteam/opay/pay/customerservice/OCustomerServiceHomeActivity;

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
    .locals 7

    .line 1
    iget-object v0, p0, Lteam/opay/pay/customerservice/OCustomerServiceHomeActivity$a;->a:Lteam/opay/pay/customerservice/OCustomerServiceHomeActivity;

    .line 2
    .line 3
    invoke-static {v0, p1}, Lteam/opay/pay/customerservice/OCustomerServiceHomeActivity;->W(Lteam/opay/pay/customerservice/OCustomerServiceHomeActivity;I)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lteam/opay/pay/customerservice/OCustomerServiceHomeActivity$a;->a:Lteam/opay/pay/customerservice/OCustomerServiceHomeActivity;

    .line 7
    .line 8
    invoke-static {v0}, Lteam/opay/pay/customerservice/OCustomerServiceHomeActivity;->U(Lteam/opay/pay/customerservice/OCustomerServiceHomeActivity;)Lteam/opay/pay/customerservice/OCustomerServiceViewModel;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-virtual {v0}, Lteam/opay/pay/customerservice/OCustomerServiceViewModel;->J()Landroidx/lifecycle/MutableLiveData;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    check-cast v0, Lteam/opay/core/api/graphql/OCustomerServiceConfigData;

    .line 21
    .line 22
    const/4 v1, 0x0

    .line 23
    if-eqz v0, :cond_0

    .line 24
    .line 25
    invoke-virtual {v0}, Lteam/opay/core/api/graphql/OCustomerServiceConfigData;->c()Lteam/opay/core/api/graphql/OCustomerServiceRemindData;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    goto :goto_0

    .line 30
    :cond_0
    move-object v0, v1

    .line 31
    :goto_0
    iget-object v2, p0, Lteam/opay/pay/customerservice/OCustomerServiceHomeActivity$a;->a:Lteam/opay/pay/customerservice/OCustomerServiceHomeActivity;

    .line 32
    .line 33
    invoke-virtual {v2}, Lteam/opay/pay/customerservice/OCustomerServiceHomeActivity;->d0()Lrf;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    iget-object v2, v2, Lrf;->u:Lcom/google/android/material/tabs/TabLayout;

    .line 38
    .line 39
    invoke-virtual {v2, p1}, Lcom/google/android/material/tabs/TabLayout;->getTabAt(I)Lcom/google/android/material/tabs/TabLayout$Tab;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    if-eqz p1, :cond_1

    .line 44
    .line 45
    invoke-virtual {p1}, Lcom/google/android/material/tabs/TabLayout$Tab;->getText()Ljava/lang/CharSequence;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    goto :goto_1

    .line 50
    :cond_1
    move-object p1, v1

    .line 51
    :goto_1
    sget v2, Lteam/opay/pay/R$string;->osdk_my_feedback:I

    .line 52
    .line 53
    invoke-static {v2}, Ljmf;->k(I)Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v2

    .line 57
    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 58
    .line 59
    .line 60
    move-result p1

    .line 61
    const/4 v2, 0x1

    .line 62
    const-string v3, "btnMore"

    .line 63
    .line 64
    const/4 v4, 0x0

    .line 65
    if-eqz p1, :cond_6

    .line 66
    .line 67
    sget-object p1, Lx7b;->a:Lx7b;

    .line 68
    .line 69
    const-string v5, "service_center_feedback_notice_show_new"

    .line 70
    .line 71
    new-array v6, v4, [Lkotlin/Pair;

    .line 72
    .line 73
    invoke-virtual {p1, v5, v6}, Lx7b;->g(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 74
    .line 75
    .line 76
    iget-object p1, p0, Lteam/opay/pay/customerservice/OCustomerServiceHomeActivity$a;->a:Lteam/opay/pay/customerservice/OCustomerServiceHomeActivity;

    .line 77
    .line 78
    invoke-virtual {p1}, Lteam/opay/pay/customerservice/OCustomerServiceHomeActivity;->d0()Lrf;

    .line 79
    .line 80
    .line 81
    move-result-object p1

    .line 82
    iget-object p1, p1, Lrf;->g:Landroid/widget/TextView;

    .line 83
    .line 84
    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 85
    .line 86
    .line 87
    if-eqz v0, :cond_2

    .line 88
    .line 89
    invoke-virtual {v0}, Lteam/opay/core/api/graphql/OCustomerServiceRemindData;->e()Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object v3

    .line 93
    goto :goto_2

    .line 94
    :cond_2
    move-object v3, v1

    .line 95
    :goto_2
    if-eqz v3, :cond_4

    .line 96
    .line 97
    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    .line 98
    .line 99
    .line 100
    move-result v3

    .line 101
    if-nez v3, :cond_3

    .line 102
    .line 103
    goto :goto_3

    .line 104
    :cond_3
    const/4 v2, 0x0

    .line 105
    :cond_4
    :goto_3
    invoke-static {p1, v2}, Lteam/opay/core/android/ViewKt;->f(Landroid/view/View;Z)V

    .line 106
    .line 107
    .line 108
    iget-object p1, p0, Lteam/opay/pay/customerservice/OCustomerServiceHomeActivity$a;->a:Lteam/opay/pay/customerservice/OCustomerServiceHomeActivity;

    .line 109
    .line 110
    if-eqz v0, :cond_5

    .line 111
    .line 112
    invoke-virtual {v0}, Lteam/opay/core/api/graphql/OCustomerServiceRemindData;->e()Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object v1

    .line 116
    :cond_5
    invoke-static {p1, v1}, Lteam/opay/pay/customerservice/OCustomerServiceHomeActivity;->V(Lteam/opay/pay/customerservice/OCustomerServiceHomeActivity;Ljava/lang/String;)V

    .line 117
    .line 118
    .line 119
    goto :goto_6

    .line 120
    :cond_6
    sget-object p1, Lx7b;->a:Lx7b;

    .line 121
    .line 122
    const-string v5, "service_center_restriction_notice_show_new"

    .line 123
    .line 124
    new-array v6, v4, [Lkotlin/Pair;

    .line 125
    .line 126
    invoke-virtual {p1, v5, v6}, Lx7b;->g(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 127
    .line 128
    .line 129
    iget-object p1, p0, Lteam/opay/pay/customerservice/OCustomerServiceHomeActivity$a;->a:Lteam/opay/pay/customerservice/OCustomerServiceHomeActivity;

    .line 130
    .line 131
    invoke-virtual {p1}, Lteam/opay/pay/customerservice/OCustomerServiceHomeActivity;->d0()Lrf;

    .line 132
    .line 133
    .line 134
    move-result-object p1

    .line 135
    iget-object p1, p1, Lrf;->g:Landroid/widget/TextView;

    .line 136
    .line 137
    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 138
    .line 139
    .line 140
    if-eqz v0, :cond_7

    .line 141
    .line 142
    invoke-virtual {v0}, Lteam/opay/core/api/graphql/OCustomerServiceRemindData;->c()Ljava/lang/String;

    .line 143
    .line 144
    .line 145
    move-result-object v3

    .line 146
    goto :goto_4

    .line 147
    :cond_7
    move-object v3, v1

    .line 148
    :goto_4
    if-eqz v3, :cond_9

    .line 149
    .line 150
    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    .line 151
    .line 152
    .line 153
    move-result v3

    .line 154
    if-nez v3, :cond_8

    .line 155
    .line 156
    goto :goto_5

    .line 157
    :cond_8
    const/4 v2, 0x0

    .line 158
    :cond_9
    :goto_5
    invoke-static {p1, v2}, Lteam/opay/core/android/ViewKt;->f(Landroid/view/View;Z)V

    .line 159
    .line 160
    .line 161
    iget-object p1, p0, Lteam/opay/pay/customerservice/OCustomerServiceHomeActivity$a;->a:Lteam/opay/pay/customerservice/OCustomerServiceHomeActivity;

    .line 162
    .line 163
    if-eqz v0, :cond_a

    .line 164
    .line 165
    invoke-virtual {v0}, Lteam/opay/core/api/graphql/OCustomerServiceRemindData;->c()Ljava/lang/String;

    .line 166
    .line 167
    .line 168
    move-result-object v1

    .line 169
    :cond_a
    invoke-static {p1, v1}, Lteam/opay/pay/customerservice/OCustomerServiceHomeActivity;->V(Lteam/opay/pay/customerservice/OCustomerServiceHomeActivity;Ljava/lang/String;)V

    .line 170
    .line 171
    .line 172
    :goto_6
    return-void
.end method
