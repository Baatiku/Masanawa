.class public final Lteam/opay/pay/onboarding/register/OnboardingAccountDetailsFragment;
.super Lteam/opay/core/base/BaseInjectFragmentV2;
.source "OnboardingAccountDetailsFragment.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lteam/opay/pay/onboarding/register/OnboardingAccountDetailsFragment$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lteam/opay/core/base/BaseInjectFragmentV2<",
        "Lsg6;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000H\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\t\u0018\u0000 \u001c2\u0008\u0012\u0004\u0012\u00020\u00020\u0001:\u0001\u001dB\u0007\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J!\u0010\n\u001a\u00020\t2\u0006\u0010\u0006\u001a\u00020\u00052\u0008\u0010\u0008\u001a\u0004\u0018\u00010\u0007H\u0016\u00a2\u0006\u0004\u0008\n\u0010\u000bJ\u000f\u0010\r\u001a\u00020\u000cH\u0016\u00a2\u0006\u0004\u0008\r\u0010\u000eJC\u0010\u0017\u001a\u00020\t*\u0012\u0012\u0004\u0012\u00020\u00100\u000fj\u0008\u0012\u0004\u0012\u00020\u0010`\u00112\u0006\u0010\u0013\u001a\u00020\u00122\n\u0008\u0002\u0010\u0014\u001a\u0004\u0018\u00010\u00122\n\u0008\u0002\u0010\u0016\u001a\u0004\u0018\u00010\u0015H\u0002\u00a2\u0006\u0004\u0008\u0017\u0010\u0018R\u0016\u0010\u001b\u001a\u00020\u000c8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0019\u0010\u001a\u00a8\u0006\u001e"
    }
    d2 = {
        "Lteam/opay/pay/onboarding/register/OnboardingAccountDetailsFragment;",
        "Lteam/opay/core/base/BaseInjectFragmentV2;",
        "Lsg6;",
        "<init>",
        "()V",
        "Landroid/view/View;",
        "view",
        "Landroid/os/Bundle;",
        "savedInstanceState",
        "",
        "onViewCreated",
        "(Landroid/view/View;Landroid/os/Bundle;)V",
        "",
        "onBackPressed",
        "()Z",
        "Ljava/util/ArrayList;",
        "Lteam/opay/core/card/MultiDataItemEntry;",
        "Lkotlin/collections/ArrayList;",
        "",
        "name",
        "value",
        "",
        "imgRes",
        "P",
        "(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V",
        "k",
        "Z",
        "isFinishPassword",
        "l",
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
.field public static final l:Lteam/opay/pay/onboarding/register/OnboardingAccountDetailsFragment$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field public k:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lteam/opay/pay/onboarding/register/OnboardingAccountDetailsFragment$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lteam/opay/pay/onboarding/register/OnboardingAccountDetailsFragment$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lteam/opay/pay/onboarding/register/OnboardingAccountDetailsFragment;->l:Lteam/opay/pay/onboarding/register/OnboardingAccountDetailsFragment$Companion;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    sget-object v0, Lteam/opay/pay/onboarding/register/OnboardingAccountDetailsFragment$1;->INSTANCE:Lteam/opay/pay/onboarding/register/OnboardingAccountDetailsFragment$1;

    .line 2
    .line 3
    invoke-direct {p0, v0}, Lteam/opay/core/base/BaseInjectFragmentV2;-><init>(Lhm6;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public static synthetic O(Lteam/opay/pay/onboarding/register/OnboardingAccountDetailsFragment;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/pay/onboarding/register/OnboardingAccountDetailsFragment;->R(Lteam/opay/pay/onboarding/register/OnboardingAccountDetailsFragment;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic Q(Lteam/opay/pay/onboarding/register/OnboardingAccountDetailsFragment;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;ILjava/lang/Object;)V
    .locals 1

    .line 1
    and-int/lit8 p6, p5, 0x2

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    if-eqz p6, :cond_0

    .line 5
    .line 6
    move-object p3, v0

    .line 7
    :cond_0
    and-int/lit8 p5, p5, 0x4

    .line 8
    .line 9
    if-eqz p5, :cond_1

    .line 10
    .line 11
    move-object p4, v0

    .line 12
    :cond_1
    invoke-virtual {p0, p1, p2, p3, p4}, Lteam/opay/pay/onboarding/register/OnboardingAccountDetailsFragment;->P(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public static final R(Lteam/opay/pay/onboarding/register/OnboardingAccountDetailsFragment;)Lkotlin/Unit;
    .locals 3

    .line 1
    iget-boolean v0, p0, Lteam/opay/pay/onboarding/register/OnboardingAccountDetailsFragment;->k:Z

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    if-nez p0, :cond_0

    .line 10
    .line 11
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 12
    .line 13
    return-object p0

    .line 14
    :cond_0
    const/4 v0, 0x2

    .line 15
    const/4 v1, 0x0

    .line 16
    const/4 v2, 0x0

    .line 17
    invoke-static {p0, v2, v0, v1}, Lum8;->j(Landroid/app/Activity;ZILjava/lang/Object;)V

    .line 18
    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    if-eqz p0, :cond_2

    .line 26
    .line 27
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 28
    .line 29
    .line 30
    :cond_2
    :goto_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 31
    .line 32
    return-object p0
.end method


# virtual methods
.method public final P(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lteam/opay/core/card/MultiDataItemEntry;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ")V"
        }
    .end annotation

    .line 1
    new-instance v0, Lteam/opay/core/card/MultiDataItemEntry;

    .line 2
    .line 3
    new-instance v1, Lteam/opay/pay/onboarding/register/OnboardingAccountDetailsData;

    .line 4
    .line 5
    invoke-direct {v1, p2, p3, p4}, Lteam/opay/pay/onboarding/register/OnboardingAccountDetailsData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V

    .line 6
    .line 7
    .line 8
    const/4 p2, 0x0

    .line 9
    invoke-direct {v0, p2, v1}, Lteam/opay/core/card/MultiDataItemEntry;-><init>(ILjava/lang/Object;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public onBackPressed()Z
    .locals 4

    .line 1
    iget-boolean v0, p0, Lteam/opay/pay/onboarding/register/OnboardingAccountDetailsFragment;->k:Z

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    sget-object v0, Lteam/opay/pay/onboarding/delegate/MainLockInterceptorDelegate;->Companion:Lteam/opay/pay/onboarding/delegate/MainLockInterceptorDelegate$Companion;

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    invoke-virtual {v0, v1}, Lteam/opay/pay/onboarding/delegate/MainLockInterceptorDelegate$Companion;->c(Z)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    if-nez v0, :cond_0

    .line 16
    .line 17
    invoke-super {p0}, Lteam/opay/core/base/BaseFragment;->onBackPressed()Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    return v0

    .line 22
    :cond_0
    const/4 v2, 0x2

    .line 23
    const/4 v3, 0x0

    .line 24
    invoke-static {v0, v1, v2, v3}, Lum8;->j(Landroid/app/Activity;ZILjava/lang/Object;)V

    .line 25
    .line 26
    .line 27
    const/4 v0, 0x1

    .line 28
    return v0

    .line 29
    :cond_1
    invoke-super {p0}, Lteam/opay/core/base/BaseFragment;->onBackPressed()Z

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    return v0
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 11
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    const-string v0, "view"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 7
    .line 8
    .line 9
    new-instance p1, Lteam/opay/pay/onboarding/register/OnboardingAccountDetailsAdapter;

    .line 10
    .line 11
    invoke-direct {p1}, Lteam/opay/pay/onboarding/register/OnboardingAccountDetailsAdapter;-><init>()V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 15
    .line 16
    .line 17
    move-result-object p2

    .line 18
    check-cast p2, Lsg6;

    .line 19
    .line 20
    iget-object p2, p2, Lsg6;->c:Landroidx/recyclerview/widget/RecyclerView;

    .line 21
    .line 22
    invoke-virtual {p1, p2}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->bindToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireArguments()Landroid/os/Bundle;

    .line 26
    .line 27
    .line 28
    move-result-object p2

    .line 29
    const-string v0, "key_data"

    .line 30
    .line 31
    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    .line 32
    .line 33
    .line 34
    move-result-object p2

    .line 35
    instance-of v0, p2, Lteam/opay/core/api/graphql/UserInfoSimpleRsp;

    .line 36
    .line 37
    const/4 v1, 0x0

    .line 38
    if-eqz v0, :cond_0

    .line 39
    .line 40
    check-cast p2, Lteam/opay/core/api/graphql/UserInfoSimpleRsp;

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_0
    move-object p2, v1

    .line 44
    :goto_0
    if-eqz p2, :cond_a

    .line 45
    .line 46
    new-instance v0, Ljava/util/ArrayList;

    .line 47
    .line 48
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 49
    .line 50
    .line 51
    sget v2, Lteam/opay/pay/R$string;->osdk_full_name:I

    .line 52
    .line 53
    invoke-static {v2}, Ljmf;->k(I)Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v4

    .line 57
    invoke-virtual {p2}, Lteam/opay/core/api/graphql/UserInfoSimpleRsp;->getFullName()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v5

    .line 61
    const/4 v7, 0x4

    .line 62
    const/4 v8, 0x0

    .line 63
    const/4 v6, 0x0

    .line 64
    move-object v2, p0

    .line 65
    move-object v3, v0

    .line 66
    invoke-static/range {v2 .. v8}, Lteam/opay/pay/onboarding/register/OnboardingAccountDetailsFragment;->Q(Lteam/opay/pay/onboarding/register/OnboardingAccountDetailsFragment;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;ILjava/lang/Object;)V

    .line 67
    .line 68
    .line 69
    sget v2, Lteam/opay/pay/R$string;->osdk_mobile_number:I

    .line 70
    .line 71
    invoke-static {v2}, Ljmf;->k(I)Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v4

    .line 75
    invoke-virtual {p2}, Lteam/opay/core/api/graphql/UserInfoSimpleRsp;->getMobile()Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v5

    .line 79
    move-object v2, p0

    .line 80
    invoke-static/range {v2 .. v8}, Lteam/opay/pay/onboarding/register/OnboardingAccountDetailsFragment;->Q(Lteam/opay/pay/onboarding/register/OnboardingAccountDetailsFragment;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;ILjava/lang/Object;)V

    .line 81
    .line 82
    .line 83
    sget v2, Lteam/opay/pay/R$string;->gender_label:I

    .line 84
    .line 85
    invoke-static {v2}, Ljmf;->k(I)Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object v4

    .line 89
    invoke-virtual {p2}, Lteam/opay/core/api/graphql/UserInfoSimpleRsp;->getGender()Lteam/opay/core/api/GraphQL$Gender;

    .line 90
    .line 91
    .line 92
    move-result-object v2

    .line 93
    if-eqz v2, :cond_1

    .line 94
    .line 95
    invoke-virtual {v2}, Lteam/opay/core/api/GraphQL$Gender;->getValue()Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object v2

    .line 99
    if-eqz v2, :cond_1

    .line 100
    .line 101
    invoke-static {v2}, Lh6e;->k(Ljava/lang/String;)Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object v2

    .line 105
    move-object v5, v2

    .line 106
    goto :goto_1

    .line 107
    :cond_1
    move-object v5, v1

    .line 108
    :goto_1
    const/4 v7, 0x4

    .line 109
    const/4 v8, 0x0

    .line 110
    const/4 v6, 0x0

    .line 111
    move-object v2, p0

    .line 112
    move-object v3, v0

    .line 113
    invoke-static/range {v2 .. v8}, Lteam/opay/pay/onboarding/register/OnboardingAccountDetailsFragment;->Q(Lteam/opay/pay/onboarding/register/OnboardingAccountDetailsFragment;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;ILjava/lang/Object;)V

    .line 114
    .line 115
    .line 116
    sget v2, Lteam/opay/pay/R$string;->date_of_birth:I

    .line 117
    .line 118
    invoke-static {v2}, Ljmf;->k(I)Ljava/lang/String;

    .line 119
    .line 120
    .line 121
    move-result-object v4

    .line 122
    invoke-virtual {p2}, Lteam/opay/core/api/graphql/UserInfoSimpleRsp;->getDob()Ljava/lang/String;

    .line 123
    .line 124
    .line 125
    move-result-object v5

    .line 126
    if-eqz v5, :cond_2

    .line 127
    .line 128
    const/4 v9, 0x4

    .line 129
    const/4 v10, 0x0

    .line 130
    const-string v6, "-"

    .line 131
    .line 132
    const-string v7, "/"

    .line 133
    .line 134
    const/4 v8, 0x0

    .line 135
    invoke-static/range {v5 .. v10}, Lkotlin/text/StringsKt;->R(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    .line 136
    .line 137
    .line 138
    move-result-object v2

    .line 139
    move-object v5, v2

    .line 140
    goto :goto_2

    .line 141
    :cond_2
    move-object v5, v1

    .line 142
    :goto_2
    const/4 v7, 0x4

    .line 143
    const/4 v8, 0x0

    .line 144
    const/4 v6, 0x0

    .line 145
    move-object v2, p0

    .line 146
    move-object v3, v0

    .line 147
    invoke-static/range {v2 .. v8}, Lteam/opay/pay/onboarding/register/OnboardingAccountDetailsFragment;->Q(Lteam/opay/pay/onboarding/register/OnboardingAccountDetailsFragment;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;ILjava/lang/Object;)V

    .line 148
    .line 149
    .line 150
    sget v2, Lteam/opay/pay/R$string;->address_label:I

    .line 151
    .line 152
    invoke-static {v2}, Ljmf;->k(I)Ljava/lang/String;

    .line 153
    .line 154
    .line 155
    move-result-object v4

    .line 156
    invoke-virtual {p2}, Lteam/opay/core/api/graphql/UserInfoSimpleRsp;->getAddress()Ljava/lang/String;

    .line 157
    .line 158
    .line 159
    move-result-object v5

    .line 160
    move-object v2, p0

    .line 161
    invoke-static/range {v2 .. v8}, Lteam/opay/pay/onboarding/register/OnboardingAccountDetailsFragment;->Q(Lteam/opay/pay/onboarding/register/OnboardingAccountDetailsFragment;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;ILjava/lang/Object;)V

    .line 162
    .line 163
    .line 164
    new-instance v2, Lteam/opay/core/card/MultiDataItemEntry;

    .line 165
    .line 166
    const/4 v3, 0x1

    .line 167
    invoke-direct {v2, v3, v1}, Lteam/opay/core/card/MultiDataItemEntry;-><init>(ILjava/lang/Object;)V

    .line 168
    .line 169
    .line 170
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 171
    .line 172
    .line 173
    sget v1, Lteam/opay/pay/R$string;->opay_account_number:I

    .line 174
    .line 175
    invoke-static {v1}, Ljmf;->k(I)Ljava/lang/String;

    .line 176
    .line 177
    .line 178
    move-result-object v4

    .line 179
    invoke-virtual {p2}, Lteam/opay/core/api/graphql/UserInfoSimpleRsp;->getMobile()Ljava/lang/String;

    .line 180
    .line 181
    .line 182
    move-result-object v1

    .line 183
    if-nez v1, :cond_3

    .line 184
    .line 185
    const-string v1, ""

    .line 186
    .line 187
    :cond_3
    invoke-static {v1}, Loj2;->h(Ljava/lang/String;)Ljava/lang/String;

    .line 188
    .line 189
    .line 190
    move-result-object v5

    .line 191
    const/4 v7, 0x4

    .line 192
    const/4 v8, 0x0

    .line 193
    const/4 v6, 0x0

    .line 194
    move-object v2, p0

    .line 195
    move-object v3, v0

    .line 196
    invoke-static/range {v2 .. v8}, Lteam/opay/pay/onboarding/register/OnboardingAccountDetailsFragment;->Q(Lteam/opay/pay/onboarding/register/OnboardingAccountDetailsFragment;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;ILjava/lang/Object;)V

    .line 197
    .line 198
    .line 199
    sget v1, Lteam/opay/pay/R$string;->osdk_account_tier:I

    .line 200
    .line 201
    invoke-static {v1}, Ljmf;->k(I)Ljava/lang/String;

    .line 202
    .line 203
    .line 204
    move-result-object v4

    .line 205
    invoke-virtual {p2}, Lteam/opay/core/api/graphql/UserInfoSimpleRsp;->getCalculateKycLevel()Ljava/lang/String;

    .line 206
    .line 207
    .line 208
    move-result-object v1

    .line 209
    if-eqz v1, :cond_7

    .line 210
    .line 211
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 212
    .line 213
    .line 214
    move-result v2

    .line 215
    packed-switch v2, :pswitch_data_0

    .line 216
    .line 217
    .line 218
    goto :goto_3

    .line 219
    :pswitch_0
    const-string v2, "3"

    .line 220
    .line 221
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 222
    .line 223
    .line 224
    move-result v1

    .line 225
    if-nez v1, :cond_4

    .line 226
    .line 227
    goto :goto_3

    .line 228
    :cond_4
    sget v1, Lteam/opay/pay/R$mipmap;->opay_ic_kyc_level_3:I

    .line 229
    .line 230
    goto :goto_4

    .line 231
    :pswitch_1
    const-string v2, "2"

    .line 232
    .line 233
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 234
    .line 235
    .line 236
    move-result v1

    .line 237
    if-nez v1, :cond_5

    .line 238
    .line 239
    goto :goto_3

    .line 240
    :cond_5
    sget v1, Lteam/opay/pay/R$mipmap;->opay_ic_kyc_level_2:I

    .line 241
    .line 242
    goto :goto_4

    .line 243
    :pswitch_2
    const-string v2, "1"

    .line 244
    .line 245
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 246
    .line 247
    .line 248
    move-result v1

    .line 249
    if-nez v1, :cond_6

    .line 250
    .line 251
    goto :goto_3

    .line 252
    :cond_6
    sget v1, Lteam/opay/pay/R$mipmap;->opay_ic_kyc_level_1:I

    .line 253
    .line 254
    goto :goto_4

    .line 255
    :cond_7
    :goto_3
    sget v1, Lteam/opay/pay/R$mipmap;->opay_ic_kyc_level_0:I

    .line 256
    .line 257
    :goto_4
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 258
    .line 259
    .line 260
    move-result-object v6

    .line 261
    const/4 v7, 0x2

    .line 262
    const/4 v8, 0x0

    .line 263
    const/4 v5, 0x0

    .line 264
    move-object v2, p0

    .line 265
    move-object v3, v0

    .line 266
    invoke-static/range {v2 .. v8}, Lteam/opay/pay/onboarding/register/OnboardingAccountDetailsFragment;->Q(Lteam/opay/pay/onboarding/register/OnboardingAccountDetailsFragment;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;ILjava/lang/Object;)V

    .line 267
    .line 268
    .line 269
    invoke-virtual {p2}, Lteam/opay/core/api/graphql/UserInfoSimpleRsp;->getBvnNumber()Ljava/lang/String;

    .line 270
    .line 271
    .line 272
    move-result-object v1

    .line 273
    if-eqz v1, :cond_9

    .line 274
    .line 275
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    .line 276
    .line 277
    .line 278
    move-result v1

    .line 279
    if-nez v1, :cond_8

    .line 280
    .line 281
    goto :goto_5

    .line 282
    :cond_8
    sget v1, Lteam/opay/pay/R$string;->bvn:I

    .line 283
    .line 284
    invoke-static {v1}, Ljmf;->k(I)Ljava/lang/String;

    .line 285
    .line 286
    .line 287
    move-result-object v4

    .line 288
    invoke-virtual {p2}, Lteam/opay/core/api/graphql/UserInfoSimpleRsp;->getBvnNumber()Ljava/lang/String;

    .line 289
    .line 290
    .line 291
    move-result-object v5

    .line 292
    const/4 v7, 0x4

    .line 293
    const/4 v8, 0x0

    .line 294
    const/4 v6, 0x0

    .line 295
    move-object v2, p0

    .line 296
    move-object v3, v0

    .line 297
    invoke-static/range {v2 .. v8}, Lteam/opay/pay/onboarding/register/OnboardingAccountDetailsFragment;->Q(Lteam/opay/pay/onboarding/register/OnboardingAccountDetailsFragment;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;ILjava/lang/Object;)V

    .line 298
    .line 299
    .line 300
    :cond_9
    :goto_5
    invoke-virtual {p1, v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setNewData(Ljava/util/List;)V

    .line 301
    .line 302
    .line 303
    :cond_a
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireArguments()Landroid/os/Bundle;

    .line 304
    .line 305
    .line 306
    move-result-object p1

    .line 307
    const-string p2, "key_is_finish_password"

    .line 308
    .line 309
    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    .line 310
    .line 311
    .line 312
    move-result p1

    .line 313
    iput-boolean p1, p0, Lteam/opay/pay/onboarding/register/OnboardingAccountDetailsFragment;->k:Z

    .line 314
    .line 315
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 316
    .line 317
    .line 318
    move-result-object p1

    .line 319
    check-cast p1, Lsg6;

    .line 320
    .line 321
    iget-object p1, p1, Lsg6;->b:Lteam/opay/core/android/views/OpayActionBar;

    .line 322
    .line 323
    new-instance p2, Lrla;

    .line 324
    .line 325
    invoke-direct {p2, p0}, Lrla;-><init>(Lteam/opay/pay/onboarding/register/OnboardingAccountDetailsFragment;)V

    .line 326
    .line 327
    .line 328
    invoke-virtual {p1, p2}, Lteam/opay/core/android/views/OpayActionBar;->setBackNavigationListener(Lkotlin/jvm/functions/Function0;)V

    .line 329
    .line 330
    .line 331
    return-void

    .line 332
    nop

    .line 333
    :pswitch_data_0
    .packed-switch 0x31
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
