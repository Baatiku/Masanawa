.class public final Lteam/opay/pay/home/security/remember/RememberListFragment;
.super Lteam/opay/core/base/BaseFragmentV2;
.source "RememberListFragment.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lteam/opay/pay/home/security/remember/RememberListFragment$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lteam/opay/core/base/BaseFragmentV2<",
        "Loh6;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000H\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0018\u0000 %2\u0008\u0012\u0004\u0012\u00020\u00020\u0001:\u0001&B\u0007\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J!\u0010\n\u001a\u00020\t2\u0006\u0010\u0006\u001a\u00020\u00052\u0008\u0010\u0008\u001a\u0004\u0018\u00010\u0007H\u0016\u00a2\u0006\u0004\u0008\n\u0010\u000bJ\u000f\u0010\u000c\u001a\u00020\tH\u0002\u00a2\u0006\u0004\u0008\u000c\u0010\u0004R\u001a\u0010\u0011\u001a\u0008\u0012\u0004\u0012\u00020\u000e0\r8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u000f\u0010\u0010R0\u0010\u0019\u001a\u0010\u0012\u0004\u0012\u00020\u000e\u0012\u0004\u0012\u00020\t\u0018\u00010\u00128\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0013\u0010\u0014\u001a\u0004\u0008\u0015\u0010\u0016\"\u0004\u0008\u0017\u0010\u0018R\u001b\u0010\u001f\u001a\u00020\u001a8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u001b\u0010\u001c\u001a\u0004\u0008\u001d\u0010\u001eR\u001b\u0010$\u001a\u00020 8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008!\u0010\u001c\u001a\u0004\u0008\"\u0010#\u00a8\u0006\'"
    }
    d2 = {
        "Lteam/opay/pay/home/security/remember/RememberListFragment;",
        "Lteam/opay/core/base/BaseFragmentV2;",
        "Loh6;",
        "<init>",
        "()V",
        "Landroid/view/View;",
        "view",
        "Landroid/os/Bundle;",
        "savedInstanceState",
        "",
        "onViewCreated",
        "(Landroid/view/View;Landroid/os/Bundle;)V",
        "S",
        "",
        "Lteam/opay/pay/home/security/remember/RememberPswData;",
        "j",
        "Ljava/util/List;",
        "setList",
        "Lkotlin/Function1;",
        "k",
        "Lkotlin/jvm/functions/Function1;",
        "getClickCallback",
        "()Lkotlin/jvm/functions/Function1;",
        "W",
        "(Lkotlin/jvm/functions/Function1;)V",
        "clickCallback",
        "Lteam/opay/pay/home/security/remember/RememberPswAdapter;",
        "l",
        "Lid8;",
        "R",
        "()Lteam/opay/pay/home/security/remember/RememberPswAdapter;",
        "listAdapter",
        "Lteam/opay/core/settings/NoClearStorage;",
        "m",
        "getNoClearStorage",
        "()Lteam/opay/core/settings/NoClearStorage;",
        "noClearStorage",
        "n",
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
.field public static final n:Lteam/opay/pay/home/security/remember/RememberListFragment$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field public final j:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lteam/opay/pay/home/security/remember/RememberPswData;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public k:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lteam/opay/pay/home/security/remember/RememberPswData;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public final l:Lid8;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final m:Lid8;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lteam/opay/pay/home/security/remember/RememberListFragment$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lteam/opay/pay/home/security/remember/RememberListFragment$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lteam/opay/pay/home/security/remember/RememberListFragment;->n:Lteam/opay/pay/home/security/remember/RememberListFragment$Companion;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    sget-object v0, Lteam/opay/pay/home/security/remember/RememberListFragment$1;->INSTANCE:Lteam/opay/pay/home/security/remember/RememberListFragment$1;

    .line 2
    .line 3
    invoke-direct {p0, v0}, Lteam/opay/core/base/BaseFragmentV2;-><init>(Lhm6;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Ljava/util/ArrayList;

    .line 7
    .line 8
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 9
    .line 10
    .line 11
    iput-object v0, p0, Lteam/opay/pay/home/security/remember/RememberListFragment;->j:Ljava/util/List;

    .line 12
    .line 13
    new-instance v0, Limc;

    .line 14
    .line 15
    invoke-direct {v0, p0}, Limc;-><init>(Lteam/opay/pay/home/security/remember/RememberListFragment;)V

    .line 16
    .line 17
    .line 18
    invoke-static {v0}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lid8;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    iput-object v0, p0, Lteam/opay/pay/home/security/remember/RememberListFragment;->l:Lid8;

    .line 23
    .line 24
    new-instance v0, Ljmc;

    .line 25
    .line 26
    invoke-direct {v0, p0}, Ljmc;-><init>(Lteam/opay/pay/home/security/remember/RememberListFragment;)V

    .line 27
    .line 28
    .line 29
    invoke-static {v0}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lid8;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    iput-object v0, p0, Lteam/opay/pay/home/security/remember/RememberListFragment;->m:Lid8;

    .line 34
    .line 35
    return-void
.end method

.method public static synthetic O(Lteam/opay/pay/home/security/remember/RememberListFragment;Lteam/opay/pay/home/security/remember/RememberPswData;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/pay/home/security/remember/RememberListFragment;->U(Lteam/opay/pay/home/security/remember/RememberListFragment;Lteam/opay/pay/home/security/remember/RememberPswData;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic P(Lteam/opay/pay/home/security/remember/RememberListFragment;)Lteam/opay/core/settings/NoClearStorage;
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/pay/home/security/remember/RememberListFragment;->V(Lteam/opay/pay/home/security/remember/RememberListFragment;)Lteam/opay/core/settings/NoClearStorage;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic Q(Lteam/opay/pay/home/security/remember/RememberListFragment;)Lteam/opay/pay/home/security/remember/RememberPswAdapter;
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/pay/home/security/remember/RememberListFragment;->T(Lteam/opay/pay/home/security/remember/RememberListFragment;)Lteam/opay/pay/home/security/remember/RememberPswAdapter;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final T(Lteam/opay/pay/home/security/remember/RememberListFragment;)Lteam/opay/pay/home/security/remember/RememberPswAdapter;
    .locals 2

    .line 1
    new-instance v0, Lteam/opay/pay/home/security/remember/RememberPswAdapter;

    .line 2
    .line 3
    invoke-direct {v0}, Lteam/opay/pay/home/security/remember/RememberPswAdapter;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v1, Lkmc;

    .line 7
    .line 8
    invoke-direct {v1, p0}, Lkmc;-><init>(Lteam/opay/pay/home/security/remember/RememberListFragment;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, v1}, Lteam/opay/pay/home/security/remember/RememberPswAdapter;->n(Lkotlin/jvm/functions/Function1;)V

    .line 12
    .line 13
    .line 14
    return-object v0
.end method

.method public static final U(Lteam/opay/pay/home/security/remember/RememberListFragment;Lteam/opay/pay/home/security/remember/RememberPswData;)Lkotlin/Unit;
    .locals 1

    .line 1
    const-string v0, "data"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object p0, p0, Lteam/opay/pay/home/security/remember/RememberListFragment;->k:Lkotlin/jvm/functions/Function1;

    .line 7
    .line 8
    if-eqz p0, :cond_0

    .line 9
    .line 10
    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    :cond_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 14
    .line 15
    return-object p0
.end method

.method public static final V(Lteam/opay/pay/home/security/remember/RememberListFragment;)Lteam/opay/core/settings/NoClearStorage;
    .locals 1

    .line 1
    new-instance v0, Lteam/opay/core/settings/NoClearStorage;

    .line 2
    .line 3
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragment;->getAppContext()Landroid/content/Context;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-direct {v0, p0}, Lteam/opay/core/settings/NoClearStorage;-><init>(Landroid/content/Context;)V

    .line 8
    .line 9
    .line 10
    return-object v0
.end method

.method private final getNoClearStorage()Lteam/opay/core/settings/NoClearStorage;
    .locals 1

    .line 1
    iget-object v0, p0, Lteam/opay/pay/home/security/remember/RememberListFragment;->m:Lid8;

    .line 2
    .line 3
    invoke-interface {v0}, Lid8;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lteam/opay/core/settings/NoClearStorage;

    .line 8
    .line 9
    return-object v0
.end method


# virtual methods
.method public final R()Lteam/opay/pay/home/security/remember/RememberPswAdapter;
    .locals 1

    .line 1
    iget-object v0, p0, Lteam/opay/pay/home/security/remember/RememberListFragment;->l:Lid8;

    .line 2
    .line 3
    invoke-interface {v0}, Lid8;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lteam/opay/pay/home/security/remember/RememberPswAdapter;

    .line 8
    .line 9
    return-object v0
.end method

.method public final S()V
    .locals 8

    .line 1
    iget-object v0, p0, Lteam/opay/pay/home/security/remember/RememberListFragment;->j:Ljava/util/List;

    .line 2
    .line 3
    new-instance v1, Lteam/opay/pay/home/security/remember/RememberPswData;

    .line 4
    .line 5
    sget v2, Lteam/opay/pay/R$string;->osdk_remember_free_login_tips:I

    .line 6
    .line 7
    invoke-static {v2}, Ljmf;->k(I)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    const-string v3, "Password-Free Login"

    .line 12
    .line 13
    const/4 v4, 0x0

    .line 14
    invoke-direct {v1, v3, v2, v4, v4}, Lteam/opay/pay/home/security/remember/RememberPswData;-><init>(Ljava/lang/String;Ljava/lang/String;ZI)V

    .line 15
    .line 16
    .line 17
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    sget-object v0, Lteam/opay/oconfig/a;->a:Lteam/opay/oconfig/a;

    .line 21
    .line 22
    const-string v1, "osdk_min_no_remeber_logout"

    .line 23
    .line 24
    const-string v2, "5"

    .line 25
    .line 26
    invoke-virtual {v0, v1, v2}, Lteam/opay/oconfig/a;->b(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    check-cast v0, Ljava/lang/String;

    .line 31
    .line 32
    iget-object v1, p0, Lteam/opay/pay/home/security/remember/RememberListFragment;->j:Ljava/util/List;

    .line 33
    .line 34
    new-instance v2, Lteam/opay/pay/home/security/remember/RememberPswData;

    .line 35
    .line 36
    sget v3, Lteam/opay/pay/R$string;->osdk_minute_free_login:I

    .line 37
    .line 38
    const/4 v5, 0x1

    .line 39
    new-array v6, v5, [Ljava/lang/Object;

    .line 40
    .line 41
    aput-object v0, v6, v4

    .line 42
    .line 43
    invoke-static {v3, v6}, Ljmf;->l(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v3

    .line 47
    sget v6, Lteam/opay/pay/R$string;->osdk_minute_free_login_tips:I

    .line 48
    .line 49
    new-array v7, v5, [Ljava/lang/Object;

    .line 50
    .line 51
    aput-object v0, v7, v4

    .line 52
    .line 53
    invoke-static {v6, v7}, Ljmf;->l(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    invoke-direct {v2, v3, v0, v4, v5}, Lteam/opay/pay/home/security/remember/RememberPswData;-><init>(Ljava/lang/String;Ljava/lang/String;ZI)V

    .line 58
    .line 59
    .line 60
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 61
    .line 62
    .line 63
    iget-object v0, p0, Lteam/opay/pay/home/security/remember/RememberListFragment;->j:Ljava/util/List;

    .line 64
    .line 65
    new-instance v1, Lteam/opay/pay/home/security/remember/RememberPswData;

    .line 66
    .line 67
    sget v2, Lteam/opay/pay/R$string;->osdk_password_always_needed_login:I

    .line 68
    .line 69
    invoke-static {v2}, Ljmf;->k(I)Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v2

    .line 73
    sget v3, Lteam/opay/pay/R$string;->osdk_password_always_needed_login_tips:I

    .line 74
    .line 75
    invoke-static {v3}, Ljmf;->k(I)Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v3

    .line 79
    const/4 v6, 0x2

    .line 80
    invoke-direct {v1, v2, v3, v4, v6}, Lteam/opay/pay/home/security/remember/RememberPswData;-><init>(Ljava/lang/String;Ljava/lang/String;ZI)V

    .line 81
    .line 82
    .line 83
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 84
    .line 85
    .line 86
    invoke-direct {p0}, Lteam/opay/pay/home/security/remember/RememberListFragment;->getNoClearStorage()Lteam/opay/core/settings/NoClearStorage;

    .line 87
    .line 88
    .line 89
    move-result-object v0

    .line 90
    invoke-virtual {v0}, Lteam/opay/core/settings/NoClearStorage;->w0()Z

    .line 91
    .line 92
    .line 93
    move-result v0

    .line 94
    if-eqz v0, :cond_0

    .line 95
    .line 96
    iget-object v0, p0, Lteam/opay/pay/home/security/remember/RememberListFragment;->j:Ljava/util/List;

    .line 97
    .line 98
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 99
    .line 100
    .line 101
    move-result-object v0

    .line 102
    check-cast v0, Lteam/opay/pay/home/security/remember/RememberPswData;

    .line 103
    .line 104
    invoke-virtual {v0, v5}, Lteam/opay/pay/home/security/remember/RememberPswData;->e(Z)V

    .line 105
    .line 106
    .line 107
    goto :goto_0

    .line 108
    :cond_0
    invoke-direct {p0}, Lteam/opay/pay/home/security/remember/RememberListFragment;->getNoClearStorage()Lteam/opay/core/settings/NoClearStorage;

    .line 109
    .line 110
    .line 111
    move-result-object v0

    .line 112
    invoke-virtual {v0}, Lteam/opay/core/settings/NoClearStorage;->v0()I

    .line 113
    .line 114
    .line 115
    move-result v0

    .line 116
    if-eq v0, v5, :cond_3

    .line 117
    .line 118
    if-eq v0, v6, :cond_2

    .line 119
    .line 120
    const/4 v1, 0x3

    .line 121
    if-eq v0, v1, :cond_1

    .line 122
    .line 123
    goto :goto_0

    .line 124
    :cond_1
    iget-object v0, p0, Lteam/opay/pay/home/security/remember/RememberListFragment;->j:Ljava/util/List;

    .line 125
    .line 126
    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 127
    .line 128
    .line 129
    move-result-object v0

    .line 130
    check-cast v0, Lteam/opay/pay/home/security/remember/RememberPswData;

    .line 131
    .line 132
    invoke-virtual {v0, v5}, Lteam/opay/pay/home/security/remember/RememberPswData;->e(Z)V

    .line 133
    .line 134
    .line 135
    goto :goto_0

    .line 136
    :cond_2
    iget-object v0, p0, Lteam/opay/pay/home/security/remember/RememberListFragment;->j:Ljava/util/List;

    .line 137
    .line 138
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 139
    .line 140
    .line 141
    move-result-object v0

    .line 142
    check-cast v0, Lteam/opay/pay/home/security/remember/RememberPswData;

    .line 143
    .line 144
    invoke-virtual {v0, v5}, Lteam/opay/pay/home/security/remember/RememberPswData;->e(Z)V

    .line 145
    .line 146
    .line 147
    goto :goto_0

    .line 148
    :cond_3
    iget-object v0, p0, Lteam/opay/pay/home/security/remember/RememberListFragment;->j:Ljava/util/List;

    .line 149
    .line 150
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 151
    .line 152
    .line 153
    move-result-object v0

    .line 154
    check-cast v0, Lteam/opay/pay/home/security/remember/RememberPswData;

    .line 155
    .line 156
    invoke-virtual {v0, v5}, Lteam/opay/pay/home/security/remember/RememberPswData;->e(Z)V

    .line 157
    .line 158
    .line 159
    :goto_0
    return-void
.end method

.method public final W(Lkotlin/jvm/functions/Function1;)V
    .locals 0
    .param p1    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lteam/opay/pay/home/security/remember/RememberPswData;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lteam/opay/pay/home/security/remember/RememberListFragment;->k:Lkotlin/jvm/functions/Function1;

    .line 2
    .line 3
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 10
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
    invoke-virtual {p0}, Lteam/opay/pay/home/security/remember/RememberListFragment;->S()V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    check-cast p1, Loh6;

    .line 17
    .line 18
    iget-object p1, p1, Loh6;->b:Landroidx/recyclerview/widget/RecyclerView;

    .line 19
    .line 20
    new-instance p2, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 21
    .line 22
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragment;->getAppContext()Landroid/content/Context;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    invoke-direct {p2, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {p0}, Lteam/opay/pay/home/security/remember/RememberListFragment;->R()Lteam/opay/pay/home/security/remember/RememberPswAdapter;

    .line 33
    .line 34
    .line 35
    move-result-object p2

    .line 36
    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 37
    .line 38
    .line 39
    new-instance p2, Lteam/opay/pay/android/SpaceItemDecoration;

    .line 40
    .line 41
    const/16 v0, 0x8

    .line 42
    .line 43
    invoke-static {v0}, Lkmf;->g(I)I

    .line 44
    .line 45
    .line 46
    move-result v2

    .line 47
    const/16 v8, 0x78

    .line 48
    .line 49
    const/4 v9, 0x0

    .line 50
    const/4 v1, 0x0

    .line 51
    const/4 v3, 0x1

    .line 52
    const/4 v4, 0x0

    .line 53
    const/4 v5, 0x0

    .line 54
    const/4 v6, 0x0

    .line 55
    const/4 v7, 0x0

    .line 56
    move-object v0, p2

    .line 57
    invoke-direct/range {v0 .. v9}, Lteam/opay/pay/android/SpaceItemDecoration;-><init>(IIIIIIIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 61
    .line 62
    .line 63
    invoke-virtual {p0}, Lteam/opay/pay/home/security/remember/RememberListFragment;->R()Lteam/opay/pay/home/security/remember/RememberPswAdapter;

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    iget-object p2, p0, Lteam/opay/pay/home/security/remember/RememberListFragment;->j:Ljava/util/List;

    .line 68
    .line 69
    invoke-virtual {p1, p2}, Lteam/opay/pay/home/security/remember/RememberPswAdapter;->setNewData(Ljava/util/List;)V

    .line 70
    .line 71
    .line 72
    return-void
.end method
