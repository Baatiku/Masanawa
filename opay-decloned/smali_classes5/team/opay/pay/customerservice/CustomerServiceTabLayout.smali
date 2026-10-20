.class public final Lteam/opay/pay/customerservice/CustomerServiceTabLayout;
.super Landroid/widget/FrameLayout;
.source "CustomerServiceTabLayout.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000V\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u00020\u0001B\'\u0008\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u0006\u00a2\u0006\u0004\u0008\u0008\u0010\tJ\u0015\u0010\u000c\u001a\u0008\u0018\u00010\nR\u00020\u000bH\u0002\u00a2\u0006\u0004\u0008\u000c\u0010\rJ+\u0010\u0016\u001a\u00020\u00152\u0006\u0010\u000f\u001a\u00020\u000e2\u0006\u0010\u0011\u001a\u00020\u00102\u000c\u0010\u0014\u001a\u0008\u0012\u0004\u0012\u00020\u00130\u0012\u00a2\u0006\u0004\u0008\u0016\u0010\u0017J\u000f\u0010\u0018\u001a\u00020\u0015H\u0002\u00a2\u0006\u0004\u0008\u0018\u0010\u0019J!\u0010\u001d\u001a\u00020\u00152\u0008\u0010\u001b\u001a\u0004\u0018\u00010\u001a2\u0006\u0010\u001c\u001a\u00020\u0010H\u0002\u00a2\u0006\u0004\u0008\u001d\u0010\u001eR\u0014\u0010\"\u001a\u00020\u001f8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008 \u0010!\u00a8\u0006#"
    }
    d2 = {
        "Lteam/opay/pay/customerservice/CustomerServiceTabLayout;",
        "Landroid/widget/FrameLayout;",
        "Landroid/content/Context;",
        "context",
        "Landroid/util/AttributeSet;",
        "attrs",
        "",
        "defStyleAttr",
        "<init>",
        "(Landroid/content/Context;Landroid/util/AttributeSet;I)V",
        "Lcom/google/android/material/tabs/TabLayout$TabView;",
        "Lcom/google/android/material/tabs/TabLayout;",
        "getCurrentTab",
        "()Lcom/google/android/material/tabs/TabLayout$TabView;",
        "Lag8;",
        "owner",
        "Landroidx/viewpager2/widget/ViewPager2;",
        "viewPager",
        "",
        "Lteam/opay/core/api/graphql/OCustomerServiceTabData;",
        "data",
        "",
        "h",
        "(Lag8;Landroidx/viewpager2/widget/ViewPager2;Ljava/util/List;)V",
        "g",
        "()V",
        "Landroid/view/View;",
        "view",
        "pager",
        "m",
        "(Landroid/view/View;Landroidx/viewpager2/widget/ViewPager2;)V",
        "Lyb8;",
        "a",
        "Lyb8;",
        "viewBinding",
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
.field public final a:Lyb8;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 7
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v5, 0x6

    const/4 v6, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v1 .. v6}, Lteam/opay/pay/customerservice/CustomerServiceTabLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 2
    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v5, 0x4

    const/4 v6, 0x0

    const/4 v4, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v1 .. v6}, Lteam/opay/pay/customerservice/CustomerServiceTabLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 5
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const/4 p2, 0x1

    invoke-static {p1, p0, p2}, Lyb8;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lyb8;

    move-result-object p1

    const-string p2, "inflate(...)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lteam/opay/pay/customerservice/CustomerServiceTabLayout;->a:Lyb8;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    const/4 p2, 0x0

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    const/4 p3, 0x0

    .line 3
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lteam/opay/pay/customerservice/CustomerServiceTabLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public static synthetic a(Lteam/opay/pay/customerservice/CustomerServiceTabLayout;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/pay/customerservice/CustomerServiceTabLayout;->k(Lteam/opay/pay/customerservice/CustomerServiceTabLayout;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic b(Lteam/opay/pay/customerservice/CustomerServiceTabLayout;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/pay/customerservice/CustomerServiceTabLayout;->l(Lteam/opay/pay/customerservice/CustomerServiceTabLayout;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic c(Ljava/util/List;Lcom/google/android/material/tabs/TabLayout$Tab;I)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lteam/opay/pay/customerservice/CustomerServiceTabLayout;->i(Ljava/util/List;Lcom/google/android/material/tabs/TabLayout$Tab;I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic d(Lteam/opay/pay/customerservice/CustomerServiceTabLayout;I)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/pay/customerservice/CustomerServiceTabLayout;->j(Lteam/opay/pay/customerservice/CustomerServiceTabLayout;I)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic e(Landroid/view/View;Landroidx/viewpager2/widget/ViewPager2;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/pay/customerservice/CustomerServiceTabLayout;->n(Landroid/view/View;Landroidx/viewpager2/widget/ViewPager2;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic f(Lteam/opay/pay/customerservice/CustomerServiceTabLayout;Landroid/view/View;Landroidx/viewpager2/widget/ViewPager2;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lteam/opay/pay/customerservice/CustomerServiceTabLayout;->m(Landroid/view/View;Landroidx/viewpager2/widget/ViewPager2;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final getCurrentTab()Lcom/google/android/material/tabs/TabLayout$TabView;
    .locals 2

    .line 1
    iget-object v0, p0, Lteam/opay/pay/customerservice/CustomerServiceTabLayout;->a:Lyb8;

    .line 2
    .line 3
    iget-object v0, v0, Lyb8;->d:Lteam/opay/pay/customerservice/CustomerTabLayout;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/google/android/material/tabs/TabLayout;->getSelectedTabPosition()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    invoke-virtual {v0, v1}, Lcom/google/android/material/tabs/TabLayout;->getTabAt(I)Lcom/google/android/material/tabs/TabLayout$Tab;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    iget-object v0, v0, Lcom/google/android/material/tabs/TabLayout$Tab;->view:Lcom/google/android/material/tabs/TabLayout$TabView;

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const/4 v0, 0x0

    .line 19
    :goto_0
    return-object v0
.end method

.method public static final i(Ljava/util/List;Lcom/google/android/material/tabs/TabLayout$Tab;I)V
    .locals 1

    .line 1
    const-string v0, "tab"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-static {p0, p2}, Lkotlin/collections/CollectionsKt;->k0(Ljava/util/List;I)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    check-cast p0, Lteam/opay/core/api/graphql/OCustomerServiceTabData;

    .line 11
    .line 12
    if-eqz p0, :cond_0

    .line 13
    .line 14
    invoke-virtual {p0}, Lteam/opay/core/api/graphql/OCustomerServiceTabData;->getName()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    const/4 p0, 0x0

    .line 20
    :goto_0
    invoke-virtual {p1, p0}, Lcom/google/android/material/tabs/TabLayout$Tab;->setText(Ljava/lang/CharSequence;)Lcom/google/android/material/tabs/TabLayout$Tab;

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method public static final j(Lteam/opay/pay/customerservice/CustomerServiceTabLayout;I)Lkotlin/Unit;
    .locals 4

    .line 1
    const/4 v0, -0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    const-string v2, "rightTab"

    .line 4
    .line 5
    const-string v3, "leftTab"

    .line 6
    .line 7
    if-eq p1, v0, :cond_4

    .line 8
    .line 9
    if-eqz p1, :cond_3

    .line 10
    .line 11
    const/4 v0, 0x1

    .line 12
    if-eq p1, v0, :cond_0

    .line 13
    .line 14
    goto/16 :goto_1

    .line 15
    .line 16
    :cond_0
    iget-object p1, p0, Lteam/opay/pay/customerservice/CustomerServiceTabLayout;->a:Lyb8;

    .line 17
    .line 18
    iget-object p1, p1, Lyb8;->b:Landroidx/appcompat/widget/AppCompatTextView;

    .line 19
    .line 20
    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    invoke-static {p1}, Lteam/opay/core/android/ViewKt;->e(Landroid/view/View;)V

    .line 24
    .line 25
    .line 26
    iget-object p1, p0, Lteam/opay/pay/customerservice/CustomerServiceTabLayout;->a:Lyb8;

    .line 27
    .line 28
    iget-object p1, p1, Lyb8;->c:Landroidx/appcompat/widget/AppCompatTextView;

    .line 29
    .line 30
    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    .line 34
    .line 35
    .line 36
    move-result p1

    .line 37
    if-nez p1, :cond_1

    .line 38
    .line 39
    goto :goto_1

    .line 40
    :cond_1
    iget-object p1, p0, Lteam/opay/pay/customerservice/CustomerServiceTabLayout;->a:Lyb8;

    .line 41
    .line 42
    iget-object p1, p1, Lyb8;->c:Landroidx/appcompat/widget/AppCompatTextView;

    .line 43
    .line 44
    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    invoke-static {p1}, Lteam/opay/core/android/ViewKt;->v(Landroid/view/View;)V

    .line 48
    .line 49
    .line 50
    iget-object p1, p0, Lteam/opay/pay/customerservice/CustomerServiceTabLayout;->a:Lyb8;

    .line 51
    .line 52
    iget-object p1, p1, Lyb8;->c:Landroidx/appcompat/widget/AppCompatTextView;

    .line 53
    .line 54
    invoke-direct {p0}, Lteam/opay/pay/customerservice/CustomerServiceTabLayout;->getCurrentTab()Lcom/google/android/material/tabs/TabLayout$TabView;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    if-eqz v0, :cond_2

    .line 59
    .line 60
    invoke-virtual {v0}, Lcom/google/android/material/tabs/TabLayout$TabView;->getTab()Lcom/google/android/material/tabs/TabLayout$Tab;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    if-eqz v0, :cond_2

    .line 65
    .line 66
    invoke-virtual {v0}, Lcom/google/android/material/tabs/TabLayout$Tab;->getText()Ljava/lang/CharSequence;

    .line 67
    .line 68
    .line 69
    move-result-object v1

    .line 70
    :cond_2
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 71
    .line 72
    .line 73
    goto :goto_1

    .line 74
    :cond_3
    iget-object p1, p0, Lteam/opay/pay/customerservice/CustomerServiceTabLayout;->a:Lyb8;

    .line 75
    .line 76
    iget-object p1, p1, Lyb8;->b:Landroidx/appcompat/widget/AppCompatTextView;

    .line 77
    .line 78
    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    invoke-static {p1}, Lteam/opay/core/android/ViewKt;->e(Landroid/view/View;)V

    .line 82
    .line 83
    .line 84
    iget-object p1, p0, Lteam/opay/pay/customerservice/CustomerServiceTabLayout;->a:Lyb8;

    .line 85
    .line 86
    iget-object p1, p1, Lyb8;->c:Landroidx/appcompat/widget/AppCompatTextView;

    .line 87
    .line 88
    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 89
    .line 90
    .line 91
    invoke-static {p1}, Lteam/opay/core/android/ViewKt;->e(Landroid/view/View;)V

    .line 92
    .line 93
    .line 94
    goto :goto_1

    .line 95
    :cond_4
    iget-object p1, p0, Lteam/opay/pay/customerservice/CustomerServiceTabLayout;->a:Lyb8;

    .line 96
    .line 97
    iget-object p1, p1, Lyb8;->b:Landroidx/appcompat/widget/AppCompatTextView;

    .line 98
    .line 99
    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 100
    .line 101
    .line 102
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    .line 103
    .line 104
    .line 105
    move-result p1

    .line 106
    if-nez p1, :cond_5

    .line 107
    .line 108
    goto :goto_0

    .line 109
    :cond_5
    iget-object p1, p0, Lteam/opay/pay/customerservice/CustomerServiceTabLayout;->a:Lyb8;

    .line 110
    .line 111
    iget-object p1, p1, Lyb8;->b:Landroidx/appcompat/widget/AppCompatTextView;

    .line 112
    .line 113
    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 114
    .line 115
    .line 116
    invoke-static {p1}, Lteam/opay/core/android/ViewKt;->v(Landroid/view/View;)V

    .line 117
    .line 118
    .line 119
    iget-object p1, p0, Lteam/opay/pay/customerservice/CustomerServiceTabLayout;->a:Lyb8;

    .line 120
    .line 121
    iget-object p1, p1, Lyb8;->b:Landroidx/appcompat/widget/AppCompatTextView;

    .line 122
    .line 123
    invoke-direct {p0}, Lteam/opay/pay/customerservice/CustomerServiceTabLayout;->getCurrentTab()Lcom/google/android/material/tabs/TabLayout$TabView;

    .line 124
    .line 125
    .line 126
    move-result-object v0

    .line 127
    if-eqz v0, :cond_6

    .line 128
    .line 129
    invoke-virtual {v0}, Lcom/google/android/material/tabs/TabLayout$TabView;->getTab()Lcom/google/android/material/tabs/TabLayout$Tab;

    .line 130
    .line 131
    .line 132
    move-result-object v0

    .line 133
    if-eqz v0, :cond_6

    .line 134
    .line 135
    invoke-virtual {v0}, Lcom/google/android/material/tabs/TabLayout$Tab;->getText()Ljava/lang/CharSequence;

    .line 136
    .line 137
    .line 138
    move-result-object v1

    .line 139
    :cond_6
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 140
    .line 141
    .line 142
    :goto_0
    iget-object p1, p0, Lteam/opay/pay/customerservice/CustomerServiceTabLayout;->a:Lyb8;

    .line 143
    .line 144
    iget-object p1, p1, Lyb8;->c:Landroidx/appcompat/widget/AppCompatTextView;

    .line 145
    .line 146
    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 147
    .line 148
    .line 149
    invoke-static {p1}, Lteam/opay/core/android/ViewKt;->e(Landroid/view/View;)V

    .line 150
    .line 151
    .line 152
    :goto_1
    iget-object p1, p0, Lteam/opay/pay/customerservice/CustomerServiceTabLayout;->a:Lyb8;

    .line 153
    .line 154
    iget-object p1, p1, Lyb8;->b:Landroidx/appcompat/widget/AppCompatTextView;

    .line 155
    .line 156
    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 157
    .line 158
    .line 159
    new-instance v0, Lvy2;

    .line 160
    .line 161
    invoke-direct {v0, p0}, Lvy2;-><init>(Lteam/opay/pay/customerservice/CustomerServiceTabLayout;)V

    .line 162
    .line 163
    .line 164
    invoke-static {p1, v0}, Lfe1;->b(Landroid/view/View;Lkotlin/jvm/functions/Function0;)V

    .line 165
    .line 166
    .line 167
    iget-object p1, p0, Lteam/opay/pay/customerservice/CustomerServiceTabLayout;->a:Lyb8;

    .line 168
    .line 169
    iget-object p1, p1, Lyb8;->c:Landroidx/appcompat/widget/AppCompatTextView;

    .line 170
    .line 171
    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 172
    .line 173
    .line 174
    new-instance v0, Lwy2;

    .line 175
    .line 176
    invoke-direct {v0, p0}, Lwy2;-><init>(Lteam/opay/pay/customerservice/CustomerServiceTabLayout;)V

    .line 177
    .line 178
    .line 179
    invoke-static {p1, v0}, Lfe1;->b(Landroid/view/View;Lkotlin/jvm/functions/Function0;)V

    .line 180
    .line 181
    .line 182
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 183
    .line 184
    return-object p0
.end method

.method public static final k(Lteam/opay/pay/customerservice/CustomerServiceTabLayout;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lteam/opay/pay/customerservice/CustomerServiceTabLayout;->g()V

    .line 2
    .line 3
    .line 4
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 5
    .line 6
    return-object p0
.end method

.method public static final l(Lteam/opay/pay/customerservice/CustomerServiceTabLayout;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lteam/opay/pay/customerservice/CustomerServiceTabLayout;->g()V

    .line 2
    .line 3
    .line 4
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 5
    .line 6
    return-object p0
.end method

.method public static final n(Landroid/view/View;Landroidx/viewpager2/widget/ViewPager2;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/high16 v1, 0x40000000    # 2.0f

    .line 6
    .line 7
    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    const/4 v1, 0x0

    .line 12
    invoke-static {v1, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    invoke-virtual {p0, v0, v1}, Landroid/view/View;->measure(II)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 24
    .line 25
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    if-eq v0, v1, :cond_0

    .line 30
    .line 31
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    .line 36
    .line 37
    .line 38
    move-result p0

    .line 39
    iput p0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 40
    .line 41
    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 42
    .line 43
    .line 44
    :cond_0
    return-void
.end method


# virtual methods
.method public final g()V
    .locals 4

    .line 1
    iget-object v0, p0, Lteam/opay/pay/customerservice/CustomerServiceTabLayout;->a:Lyb8;

    .line 2
    .line 3
    iget-object v0, v0, Lyb8;->d:Lteam/opay/pay/customerservice/CustomerTabLayout;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/google/android/material/tabs/TabLayout;->getSelectedTabPosition()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    const/4 v2, 0x0

    .line 10
    const/4 v3, 0x0

    .line 11
    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/material/tabs/TabLayout;->setScrollPosition(IFZ)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public final h(Lag8;Landroidx/viewpager2/widget/ViewPager2;Ljava/util/List;)V
    .locals 3
    .param p1    # Lag8;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroidx/viewpager2/widget/ViewPager2;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lag8;",
            "Landroidx/viewpager2/widget/ViewPager2;",
            "Ljava/util/List<",
            "Lteam/opay/core/api/graphql/OCustomerServiceTabData;",
            ">;)V"
        }
    .end annotation

    .line 1
    const-string v0, "owner"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "viewPager"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "data"

    .line 12
    .line 13
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    new-instance v0, Lcom/google/android/material/tabs/TabLayoutMediator;

    .line 17
    .line 18
    iget-object v1, p0, Lteam/opay/pay/customerservice/CustomerServiceTabLayout;->a:Lyb8;

    .line 19
    .line 20
    iget-object v1, v1, Lyb8;->d:Lteam/opay/pay/customerservice/CustomerTabLayout;

    .line 21
    .line 22
    new-instance v2, Lty2;

    .line 23
    .line 24
    invoke-direct {v2, p3}, Lty2;-><init>(Ljava/util/List;)V

    .line 25
    .line 26
    .line 27
    invoke-direct {v0, v1, p2, v2}, Lcom/google/android/material/tabs/TabLayoutMediator;-><init>(Lcom/google/android/material/tabs/TabLayout;Landroidx/viewpager2/widget/ViewPager2;Lcom/google/android/material/tabs/TabLayoutMediator$TabConfigurationStrategy;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0}, Lcom/google/android/material/tabs/TabLayoutMediator;->attach()V

    .line 31
    .line 32
    .line 33
    iget-object p3, p0, Lteam/opay/pay/customerservice/CustomerServiceTabLayout;->a:Lyb8;

    .line 34
    .line 35
    iget-object p3, p3, Lyb8;->d:Lteam/opay/pay/customerservice/CustomerTabLayout;

    .line 36
    .line 37
    new-instance v0, Luy2;

    .line 38
    .line 39
    invoke-direct {v0, p0}, Luy2;-><init>(Lteam/opay/pay/customerservice/CustomerServiceTabLayout;)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {p3, p1, v0}, Lteam/opay/pay/customerservice/CustomerTabLayout;->d(Lag8;Lkotlin/jvm/functions/Function1;)V

    .line 43
    .line 44
    .line 45
    sget-object p3, Lteam/opay/pay/util/FlowBus;->a:Lteam/opay/pay/util/FlowBus;

    .line 46
    .line 47
    new-instance v0, Lteam/opay/pay/customerservice/CustomerServiceTabLayout$a;

    .line 48
    .line 49
    invoke-direct {v0, p2, p0}, Lteam/opay/pay/customerservice/CustomerServiceTabLayout$a;-><init>(Landroidx/viewpager2/widget/ViewPager2;Lteam/opay/pay/customerservice/CustomerServiceTabLayout;)V

    .line 50
    .line 51
    .line 52
    const-string p2, "update_customer_viewpager_height"

    .line 53
    .line 54
    invoke-virtual {p3, p1, p2, v0}, Lteam/opay/pay/util/FlowBus;->b(Lag8;Ljava/lang/Object;La66;)V

    .line 55
    .line 56
    .line 57
    return-void
.end method

.method public final m(Landroid/view/View;Landroidx/viewpager2/widget/ViewPager2;)V
    .locals 1

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    new-instance v0, Lxy2;

    .line 4
    .line 5
    invoke-direct {v0, p1, p2}, Lxy2;-><init>(Landroid/view/View;Landroidx/viewpager2/widget/ViewPager2;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 9
    .line 10
    .line 11
    :cond_0
    return-void
.end method
