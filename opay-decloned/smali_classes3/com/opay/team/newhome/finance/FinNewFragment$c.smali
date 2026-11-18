.class public final Lcom/opay/team/newhome/finance/FinNewFragment$c;
.super Ljava/lang/Object;
.source "FinNewFragment.kt"

# interfaces
.implements Landroidx/viewpager/widget/ViewPager$i;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/opay/team/newhome/finance/FinNewFragment;->initViewPager(Landroidx/viewpager/widget/ViewPager;Lcom/opay/team/newhome/adapter/FinNewTabLayoutAdapter;Lcom/opay/team/newhome/bean/FinanceNewData;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001f\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0007\n\u0002\u0008\u0005*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0017\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J\u0017\u0010\u0008\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0002H\u0016\u00a2\u0006\u0004\u0008\u0008\u0010\u0006J\'\u0010\u000c\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\n\u001a\u00020\t2\u0006\u0010\u000b\u001a\u00020\u0002H\u0016\u00a2\u0006\u0004\u0008\u000c\u0010\r\u00a8\u0006\u000e"
    }
    d2 = {
        "com/opay/team/newhome/finance/FinNewFragment$c",
        "Landroidx/viewpager/widget/ViewPager$i;",
        "",
        "position",
        "",
        "onPageSelected",
        "(I)V",
        "state",
        "onPageScrollStateChanged",
        "",
        "positionOffset",
        "positionOffsetPixels",
        "onPageScrolled",
        "(IFI)V",
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
.field public final synthetic a:Lcom/opay/team/newhome/adapter/FinNewTabLayoutAdapter;

.field public final synthetic b:Lcom/opay/team/newhome/bean/FinanceNewData;

.field public final synthetic c:Lcom/opay/team/newhome/finance/FinNewFragment;

.field public final synthetic d:Lkotlin/jvm/internal/Ref$IntRef;


# direct methods
.method public constructor <init>(Lcom/opay/team/newhome/adapter/FinNewTabLayoutAdapter;Lcom/opay/team/newhome/bean/FinanceNewData;Lcom/opay/team/newhome/finance/FinNewFragment;Lkotlin/jvm/internal/Ref$IntRef;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/opay/team/newhome/finance/FinNewFragment$c;->a:Lcom/opay/team/newhome/adapter/FinNewTabLayoutAdapter;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/opay/team/newhome/finance/FinNewFragment$c;->b:Lcom/opay/team/newhome/bean/FinanceNewData;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/opay/team/newhome/finance/FinNewFragment$c;->c:Lcom/opay/team/newhome/finance/FinNewFragment;

    .line 6
    .line 7
    iput-object p4, p0, Lcom/opay/team/newhome/finance/FinNewFragment$c;->d:Lkotlin/jvm/internal/Ref$IntRef;

    .line 8
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 0

    .line 1
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0

    .line 1
    return-void
.end method

.method public onPageSelected(I)V
    .locals 7

    .line 1
    const/4 v0, 0x0

    .line 2
    iget-object v1, p0, Lcom/opay/team/newhome/finance/FinNewFragment$c;->a:Lcom/opay/team/newhome/adapter/FinNewTabLayoutAdapter;

    .line 3
    .line 4
    invoke-virtual {v1, p1}, Lcom/opay/team/newhome/adapter/FinNewTabLayoutAdapter;->A(I)Lcom/opay/team/newhome/bean/FinanceModuleData;

    .line 5
    .line 6
    .line 7
    move-result-object v1

    .line 8
    sget-object v2, Lcom/opay/team/newhome/finance/FinanceUtil;->a:Lcom/opay/team/newhome/finance/FinanceUtil$Companion;

    .line 9
    .line 10
    invoke-virtual {v2, p1}, Lcom/opay/team/newhome/finance/FinanceUtil$Companion;->d(I)V

    .line 11
    .line 12
    .line 13
    sget-object v2, Lcom/opay/team/OPayAnalytics;->b:Lcom/opay/team/OPayAnalytics$Companion;

    .line 14
    .line 15
    sget-object v3, Lteam/opay/pay/home/Service;->COMMON:Lteam/opay/pay/home/Service;

    .line 16
    .line 17
    invoke-virtual {v2, v3}, Lcom/opay/team/OPayAnalytics$Companion;->b(Lteam/opay/pay/home/Service;)Lcom/opay/team/OPayAnalytics;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    if-eqz v2, :cond_0

    .line 22
    .line 23
    sget-object v3, Lcom/opay/team/home/analytics/PageSubModule;->FINANCE_PAGER_CHANGE:Lcom/opay/team/home/analytics/PageSubModule;

    .line 24
    .line 25
    invoke-virtual {v3}, Lcom/opay/team/home/analytics/PageSubModule;->getAName()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v3

    .line 29
    new-instance v4, Lkotlin/Pair;

    .line 30
    .line 31
    const-string v5, "type"

    .line 32
    .line 33
    invoke-virtual {v1}, Lcom/opay/team/newhome/bean/FinanceModuleData;->c()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v6

    .line 37
    invoke-direct {v4, v5, v6}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 38
    .line 39
    .line 40
    const/4 v5, 0x1

    .line 41
    new-array v5, v5, [Lkotlin/Pair;

    .line 42
    .line 43
    aput-object v4, v5, v0

    .line 44
    .line 45
    invoke-virtual {v2, v3, v5}, Lcom/opay/team/OPayAnalytics;->b(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 46
    .line 47
    .line 48
    :cond_0
    iget-object v2, p0, Lcom/opay/team/newhome/finance/FinNewFragment$c;->b:Lcom/opay/team/newhome/bean/FinanceNewData;

    .line 49
    .line 50
    invoke-virtual {v2}, Lcom/opay/team/newhome/bean/FinanceNewData;->k()Ljava/util/ArrayList;

    .line 51
    .line 52
    .line 53
    move-result-object v2

    .line 54
    if-eqz v2, :cond_1

    .line 55
    .line 56
    invoke-static {v2, p1}, Lkotlin/collections/CollectionsKt;->k0(Ljava/util/List;I)Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    move-result-object v2

    .line 60
    check-cast v2, Lcom/opay/team/newhome/bean/FinanceModuleList;

    .line 61
    .line 62
    if-eqz v2, :cond_1

    .line 63
    .line 64
    invoke-virtual {v2}, Lcom/opay/team/newhome/bean/FinanceModuleList;->c()Lcom/opay/team/newhome/bean/FinanceModuleData;

    .line 65
    .line 66
    .line 67
    move-result-object v2

    .line 68
    if-eqz v2, :cond_1

    .line 69
    .line 70
    invoke-virtual {v2}, Lcom/opay/team/newhome/bean/FinanceModuleData;->b()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v2

    .line 74
    goto :goto_0

    .line 75
    :cond_1
    const/4 v2, 0x0

    .line 76
    :goto_0
    const-string v3, "Loan"

    .line 77
    .line 78
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 79
    .line 80
    .line 81
    move-result v2

    .line 82
    if-eqz v2, :cond_2

    .line 83
    .line 84
    iget-object v2, p0, Lcom/opay/team/newhome/finance/FinNewFragment$c;->a:Lcom/opay/team/newhome/adapter/FinNewTabLayoutAdapter;

    .line 85
    .line 86
    invoke-virtual {v2}, Lcom/opay/team/newhome/adapter/FinNewTabLayoutAdapter;->B()V

    .line 87
    .line 88
    .line 89
    :cond_2
    iget-object v2, p0, Lcom/opay/team/newhome/finance/FinNewFragment$c;->c:Lcom/opay/team/newhome/finance/FinNewFragment;

    .line 90
    .line 91
    invoke-static {v2}, Lcom/opay/team/newhome/finance/FinNewFragment;->access$getBinding(Lcom/opay/team/newhome/finance/FinNewFragment;)Loia;

    .line 92
    .line 93
    .line 94
    move-result-object v2

    .line 95
    iget-object v2, v2, Loia;->b:Lcom/flyco/tablayout/SlidingTabLayout;

    .line 96
    .line 97
    iget-object v4, p0, Lcom/opay/team/newhome/finance/FinNewFragment$c;->d:Lkotlin/jvm/internal/Ref$IntRef;

    .line 98
    .line 99
    invoke-virtual {v2}, Lcom/flyco/tablayout/SlidingTabLayout;->getTabCount()I

    .line 100
    .line 101
    .line 102
    move-result v5

    .line 103
    iget v4, v4, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 104
    .line 105
    if-le v5, v4, :cond_3

    .line 106
    .line 107
    invoke-virtual {v2, v4}, Lcom/flyco/tablayout/SlidingTabLayout;->h(I)Landroid/widget/TextView;

    .line 108
    .line 109
    .line 110
    move-result-object v2

    .line 111
    const-string v4, "getTitleView(...)"

    .line 112
    .line 113
    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 114
    .line 115
    .line 116
    invoke-static {v2}, Ltx9;->b(Landroid/widget/TextView;)V

    .line 117
    .line 118
    .line 119
    :cond_3
    iget-object v2, p0, Lcom/opay/team/newhome/finance/FinNewFragment$c;->c:Lcom/opay/team/newhome/finance/FinNewFragment;

    .line 120
    .line 121
    invoke-static {v2, p1}, Lcom/opay/team/newhome/finance/FinNewFragment;->access$selectTab(Lcom/opay/team/newhome/finance/FinNewFragment;I)V

    .line 122
    .line 123
    .line 124
    iget-object v2, p0, Lcom/opay/team/newhome/finance/FinNewFragment$c;->d:Lkotlin/jvm/internal/Ref$IntRef;

    .line 125
    .line 126
    iput p1, v2, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 127
    .line 128
    invoke-virtual {v1}, Lcom/opay/team/newhome/bean/FinanceModuleData;->b()Ljava/lang/String;

    .line 129
    .line 130
    .line 131
    move-result-object p1

    .line 132
    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 133
    .line 134
    .line 135
    move-result p1

    .line 136
    const-string v1, "icSetting"

    .line 137
    .line 138
    if-eqz p1, :cond_4

    .line 139
    .line 140
    iget-object p1, p0, Lcom/opay/team/newhome/finance/FinNewFragment$c;->c:Lcom/opay/team/newhome/finance/FinNewFragment;

    .line 141
    .line 142
    invoke-static {p1}, Lcom/opay/team/newhome/finance/FinNewFragment;->access$getBinding(Lcom/opay/team/newhome/finance/FinNewFragment;)Loia;

    .line 143
    .line 144
    .line 145
    move-result-object p1

    .line 146
    iget-object p1, p1, Loia;->g:Landroid/widget/ImageView;

    .line 147
    .line 148
    const-string v0, "ivLoanHot"

    .line 149
    .line 150
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 151
    .line 152
    .line 153
    const/16 v0, 0x8

    .line 154
    .line 155
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 156
    .line 157
    .line 158
    iget-object p1, p0, Lcom/opay/team/newhome/finance/FinNewFragment$c;->c:Lcom/opay/team/newhome/finance/FinNewFragment;

    .line 159
    .line 160
    invoke-static {p1}, Lcom/opay/team/newhome/finance/FinNewFragment;->access$getBinding(Lcom/opay/team/newhome/finance/FinNewFragment;)Loia;

    .line 161
    .line 162
    .line 163
    move-result-object p1

    .line 164
    iget-object p1, p1, Loia;->f:Landroidx/appcompat/widget/AppCompatImageView;

    .line 165
    .line 166
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 167
    .line 168
    .line 169
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 170
    .line 171
    .line 172
    goto :goto_1

    .line 173
    :cond_4
    iget-object p1, p0, Lcom/opay/team/newhome/finance/FinNewFragment$c;->c:Lcom/opay/team/newhome/finance/FinNewFragment;

    .line 174
    .line 175
    invoke-static {p1}, Lcom/opay/team/newhome/finance/FinNewFragment;->access$getBinding(Lcom/opay/team/newhome/finance/FinNewFragment;)Loia;

    .line 176
    .line 177
    .line 178
    move-result-object p1

    .line 179
    iget-object p1, p1, Loia;->f:Landroidx/appcompat/widget/AppCompatImageView;

    .line 180
    .line 181
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 182
    .line 183
    .line 184
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 185
    .line 186
    .line 187
    :goto_1
    return-void
.end method
