.class public final Lteam/opay/pay/transfer/contact/requestmoney/TransferRequestMoneySearchContactFragment;
.super Lteam/opay/pay/transfer/contact/requestmoney/Hilt_TransferRequestMoneySearchContactFragment;
.source "TransferRequestMoneySearchContactFragment.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lteam/opay/pay/transfer/contact/requestmoney/TransferRequestMoneySearchContactFragment$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lteam/opay/pay/transfer/contact/requestmoney/Hilt_TransferRequestMoneySearchContactFragment<",
        "Lri6;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000T\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010!\n\u0002\u0008\u0005\u0008\u0007\u0018\u0000 &2\u0008\u0012\u0004\u0012\u00020\u00020\u0001:\u0001\'B\u0007\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J\u0019\u0010\u0008\u001a\u00020\u00072\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0005H\u0002\u00a2\u0006\u0004\u0008\u0008\u0010\tJ\u0019\u0010\u000c\u001a\u00020\u00072\u0008\u0010\u000b\u001a\u0004\u0018\u00010\nH\u0002\u00a2\u0006\u0004\u0008\u000c\u0010\rJ!\u0010\u0012\u001a\u00020\u00072\u0006\u0010\u000f\u001a\u00020\u000e2\u0008\u0010\u0011\u001a\u0004\u0018\u00010\u0010H\u0016\u00a2\u0006\u0004\u0008\u0012\u0010\u0013R\u001b\u0010\u0019\u001a\u00020\u00148BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0015\u0010\u0016\u001a\u0004\u0008\u0017\u0010\u0018R\u0016\u0010\u001d\u001a\u00020\u001a8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u001b\u0010\u001cR\u001b\u0010\"\u001a\u00020\u001e8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u001f\u0010\u0016\u001a\u0004\u0008 \u0010!R\u001c\u0010%\u001a\u0008\u0012\u0004\u0012\u00020\u00050#8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u000b\u0010$\u00a8\u0006("
    }
    d2 = {
        "Lteam/opay/pay/transfer/contact/requestmoney/TransferRequestMoneySearchContactFragment;",
        "Lteam/opay/core/base/BaseInjectFragmentV2;",
        "Lri6;",
        "<init>",
        "()V",
        "Lteam/opay/pay/transfer/contact/bean/TransferContactData;",
        "data",
        "",
        "V",
        "(Lteam/opay/pay/transfer/contact/bean/TransferContactData;)V",
        "Landroid/text/Editable;",
        "s",
        "W",
        "(Landroid/text/Editable;)V",
        "Landroid/view/View;",
        "view",
        "Landroid/os/Bundle;",
        "savedInstanceState",
        "onViewCreated",
        "(Landroid/view/View;Landroid/os/Bundle;)V",
        "Lteam/opay/pay/transfer/contact/TransferContactViewModel;",
        "p",
        "Lid8;",
        "U",
        "()Lteam/opay/pay/transfer/contact/TransferContactViewModel;",
        "transferContactViewModel",
        "",
        "q",
        "Ljava/lang/String;",
        "from",
        "Lteam/opay/pay/transfer/contact/adapter/TransferContactSearchListAdapter;",
        "r",
        "T",
        "()Lteam/opay/pay/transfer/contact/adapter/TransferContactSearchListAdapter;",
        "transferContactSearchAdapter",
        "",
        "Ljava/util/List;",
        "searchContactDataList",
        "t",
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
.field public static final t:Lteam/opay/pay/transfer/contact/requestmoney/TransferRequestMoneySearchContactFragment$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field public final p:Lid8;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public q:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final r:Lid8;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public s:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lteam/opay/pay/transfer/contact/bean/TransferContactData;",
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
    new-instance v0, Lteam/opay/pay/transfer/contact/requestmoney/TransferRequestMoneySearchContactFragment$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lteam/opay/pay/transfer/contact/requestmoney/TransferRequestMoneySearchContactFragment$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lteam/opay/pay/transfer/contact/requestmoney/TransferRequestMoneySearchContactFragment;->t:Lteam/opay/pay/transfer/contact/requestmoney/TransferRequestMoneySearchContactFragment$Companion;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .line 1
    sget-object v0, Lteam/opay/pay/transfer/contact/requestmoney/TransferRequestMoneySearchContactFragment$1;->INSTANCE:Lteam/opay/pay/transfer/contact/requestmoney/TransferRequestMoneySearchContactFragment$1;

    .line 2
    .line 3
    invoke-direct {p0, v0}, Lteam/opay/pay/transfer/contact/requestmoney/Hilt_TransferRequestMoneySearchContactFragment;-><init>(Lhm6;)V

    .line 4
    .line 5
    .line 6
    const-class v0, Lteam/opay/pay/transfer/contact/TransferContactViewModel;

    .line 7
    .line 8
    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->b(Ljava/lang/Class;)Lho7;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    new-instance v1, Lteam/opay/pay/transfer/contact/requestmoney/TransferRequestMoneySearchContactFragment$special$$inlined$activityViewModels$default$1;

    .line 13
    .line 14
    invoke-direct {v1, p0}, Lteam/opay/pay/transfer/contact/requestmoney/TransferRequestMoneySearchContactFragment$special$$inlined$activityViewModels$default$1;-><init>(Landroidx/fragment/app/Fragment;)V

    .line 15
    .line 16
    .line 17
    new-instance v2, Lteam/opay/pay/transfer/contact/requestmoney/TransferRequestMoneySearchContactFragment$special$$inlined$activityViewModels$default$2;

    .line 18
    .line 19
    const/4 v3, 0x0

    .line 20
    invoke-direct {v2, v3, p0}, Lteam/opay/pay/transfer/contact/requestmoney/TransferRequestMoneySearchContactFragment$special$$inlined$activityViewModels$default$2;-><init>(Lkotlin/jvm/functions/Function0;Landroidx/fragment/app/Fragment;)V

    .line 21
    .line 22
    .line 23
    new-instance v3, Lteam/opay/pay/transfer/contact/requestmoney/TransferRequestMoneySearchContactFragment$special$$inlined$activityViewModels$default$3;

    .line 24
    .line 25
    invoke-direct {v3, p0}, Lteam/opay/pay/transfer/contact/requestmoney/TransferRequestMoneySearchContactFragment$special$$inlined$activityViewModels$default$3;-><init>(Landroidx/fragment/app/Fragment;)V

    .line 26
    .line 27
    .line 28
    invoke-static {p0, v0, v1, v2, v3}, Landroidx/fragment/app/FragmentViewModelLazyKt;->d(Landroidx/fragment/app/Fragment;Lho7;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)Lid8;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    iput-object v0, p0, Lteam/opay/pay/transfer/contact/requestmoney/TransferRequestMoneySearchContactFragment;->p:Lid8;

    .line 33
    .line 34
    const-string v0, "send_money"

    .line 35
    .line 36
    iput-object v0, p0, Lteam/opay/pay/transfer/contact/requestmoney/TransferRequestMoneySearchContactFragment;->q:Ljava/lang/String;

    .line 37
    .line 38
    new-instance v0, Lj9f;

    .line 39
    .line 40
    invoke-direct {v0, p0}, Lj9f;-><init>(Lteam/opay/pay/transfer/contact/requestmoney/TransferRequestMoneySearchContactFragment;)V

    .line 41
    .line 42
    .line 43
    invoke-static {v0}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lid8;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    iput-object v0, p0, Lteam/opay/pay/transfer/contact/requestmoney/TransferRequestMoneySearchContactFragment;->r:Lid8;

    .line 48
    .line 49
    new-instance v0, Ljava/util/ArrayList;

    .line 50
    .line 51
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 52
    .line 53
    .line 54
    iput-object v0, p0, Lteam/opay/pay/transfer/contact/requestmoney/TransferRequestMoneySearchContactFragment;->s:Ljava/util/List;

    .line 55
    .line 56
    return-void
.end method

.method public static synthetic O(Lteam/opay/pay/transfer/contact/requestmoney/TransferRequestMoneySearchContactFragment;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/pay/transfer/contact/requestmoney/TransferRequestMoneySearchContactFragment;->X(Lteam/opay/pay/transfer/contact/requestmoney/TransferRequestMoneySearchContactFragment;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic P(Lteam/opay/pay/transfer/contact/requestmoney/TransferRequestMoneySearchContactFragment;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/pay/transfer/contact/requestmoney/TransferRequestMoneySearchContactFragment;->Y(Lteam/opay/pay/transfer/contact/requestmoney/TransferRequestMoneySearchContactFragment;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic Q(Lteam/opay/pay/transfer/contact/requestmoney/TransferRequestMoneySearchContactFragment;)Lteam/opay/pay/transfer/contact/adapter/TransferContactSearchListAdapter;
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/pay/transfer/contact/requestmoney/TransferRequestMoneySearchContactFragment;->Z(Lteam/opay/pay/transfer/contact/requestmoney/TransferRequestMoneySearchContactFragment;)Lteam/opay/pay/transfer/contact/adapter/TransferContactSearchListAdapter;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic R(Lteam/opay/pay/transfer/contact/requestmoney/TransferRequestMoneySearchContactFragment;Lteam/opay/pay/transfer/contact/bean/TransferContactData;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lteam/opay/pay/transfer/contact/requestmoney/TransferRequestMoneySearchContactFragment;->V(Lteam/opay/pay/transfer/contact/bean/TransferContactData;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic S(Lteam/opay/pay/transfer/contact/requestmoney/TransferRequestMoneySearchContactFragment;Landroid/text/Editable;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lteam/opay/pay/transfer/contact/requestmoney/TransferRequestMoneySearchContactFragment;->W(Landroid/text/Editable;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final U()Lteam/opay/pay/transfer/contact/TransferContactViewModel;
    .locals 1

    .line 1
    iget-object v0, p0, Lteam/opay/pay/transfer/contact/requestmoney/TransferRequestMoneySearchContactFragment;->p:Lid8;

    .line 2
    .line 3
    invoke-interface {v0}, Lid8;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lteam/opay/pay/transfer/contact/TransferContactViewModel;

    .line 8
    .line 9
    return-object v0
.end method

.method private final V(Lteam/opay/pay/transfer/contact/bean/TransferContactData;)V
    .locals 31

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    invoke-virtual/range {p0 .. p0}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    check-cast v1, Lri6;

    .line 8
    .line 9
    iget-object v1, v1, Lri6;->g:Landroidx/appcompat/widget/AppCompatEditText;

    .line 10
    .line 11
    const-string v2, "searchEdit"

    .line 12
    .line 13
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    invoke-static {v1}, Lli2;->f(Landroid/view/View;)V

    .line 17
    .line 18
    .line 19
    invoke-direct/range {p0 .. p0}, Lteam/opay/pay/transfer/contact/requestmoney/TransferRequestMoneySearchContactFragment;->U()Lteam/opay/pay/transfer/contact/TransferContactViewModel;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    invoke-virtual {v1}, Lteam/opay/pay/transfer/contact/TransferContactViewModel;->o()Lteam/opay/core/api/Country;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    invoke-virtual {v1}, Lteam/opay/core/api/Country;->getPhoneRegionalCode()I

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v3

    .line 35
    invoke-direct/range {p0 .. p0}, Lteam/opay/pay/transfer/contact/requestmoney/TransferRequestMoneySearchContactFragment;->U()Lteam/opay/pay/transfer/contact/TransferContactViewModel;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    invoke-virtual {v1}, Lteam/opay/pay/transfer/contact/TransferContactViewModel;->m()Lteam/opay/core/api/GraphQL$User;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    const/4 v8, 0x0

    .line 44
    if-eqz v1, :cond_0

    .line 45
    .line 46
    invoke-virtual {v1}, Lteam/opay/core/api/GraphQL$User;->h()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    move-object v9, v1

    .line 51
    goto :goto_0

    .line 52
    :cond_0
    move-object v9, v8

    .line 53
    :goto_0
    if-eqz v9, :cond_1

    .line 54
    .line 55
    const/4 v13, 0x4

    .line 56
    const/4 v14, 0x0

    .line 57
    const-string v10, "+"

    .line 58
    .line 59
    const-string v11, ""

    .line 60
    .line 61
    const/4 v12, 0x0

    .line 62
    invoke-static/range {v9 .. v14}, Lkotlin/text/StringsKt;->R(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v2

    .line 66
    if-eqz v2, :cond_1

    .line 67
    .line 68
    const/4 v6, 0x4

    .line 69
    const/4 v7, 0x0

    .line 70
    const-string v4, ""

    .line 71
    .line 72
    const/4 v5, 0x0

    .line 73
    invoke-static/range {v2 .. v7}, Lkotlin/text/StringsKt;->R(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v1

    .line 77
    goto :goto_1

    .line 78
    :cond_1
    move-object v1, v8

    .line 79
    :goto_1
    if-eqz p1, :cond_5

    .line 80
    .line 81
    invoke-virtual/range {p1 .. p1}, Lteam/opay/pay/transfer/contact/bean/TransferContactData;->getType()Ljava/lang/Integer;

    .line 82
    .line 83
    .line 84
    move-result-object v2

    .line 85
    if-nez v2, :cond_2

    .line 86
    .line 87
    goto :goto_3

    .line 88
    :cond_2
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 89
    .line 90
    .line 91
    move-result v2

    .line 92
    const/4 v3, 0x7

    .line 93
    if-ne v2, v3, :cond_5

    .line 94
    .line 95
    invoke-virtual/range {p1 .. p1}, Lteam/opay/pay/transfer/contact/bean/TransferContactData;->getPhone()Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object v2

    .line 99
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 100
    .line 101
    .line 102
    move-result v1

    .line 103
    if-eqz v1, :cond_5

    .line 104
    .line 105
    iget-object v1, v0, Lteam/opay/pay/transfer/contact/requestmoney/TransferRequestMoneySearchContactFragment;->q:Ljava/lang/String;

    .line 106
    .line 107
    const-string v2, "request_money"

    .line 108
    .line 109
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 110
    .line 111
    .line 112
    move-result v1

    .line 113
    if-eqz v1, :cond_3

    .line 114
    .line 115
    const-string v1, "You can\'t request money from yourself."

    .line 116
    .line 117
    goto :goto_2

    .line 118
    :cond_3
    const-string v1, "You can\'t transfer money to yourself."

    .line 119
    .line 120
    :goto_2
    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 121
    .line 122
    .line 123
    move-result-object v2

    .line 124
    if-eqz v2, :cond_4

    .line 125
    .line 126
    invoke-static {v2, v1}, Lkmf;->M(Landroid/content/Context;Ljava/lang/String;)V

    .line 127
    .line 128
    .line 129
    :cond_4
    return-void

    .line 130
    :cond_5
    :goto_3
    new-instance v1, Lteam/opay/pay/transfer/contact/bean/ContactTransferDispatchData;

    .line 131
    .line 132
    const-string v2, ""

    .line 133
    .line 134
    if-eqz p1, :cond_7

    .line 135
    .line 136
    invoke-virtual/range {p1 .. p1}, Lteam/opay/pay/transfer/contact/bean/TransferContactData;->getName()Ljava/lang/String;

    .line 137
    .line 138
    .line 139
    move-result-object v3

    .line 140
    if-nez v3, :cond_6

    .line 141
    .line 142
    goto :goto_4

    .line 143
    :cond_6
    move-object v4, v3

    .line 144
    goto :goto_5

    .line 145
    :cond_7
    :goto_4
    move-object v4, v2

    .line 146
    :goto_5
    if-eqz p1, :cond_9

    .line 147
    .line 148
    invoke-virtual/range {p1 .. p1}, Lteam/opay/pay/transfer/contact/bean/TransferContactData;->getPhone()Ljava/lang/String;

    .line 149
    .line 150
    .line 151
    move-result-object v3

    .line 152
    if-nez v3, :cond_8

    .line 153
    .line 154
    goto :goto_6

    .line 155
    :cond_8
    move-object v5, v3

    .line 156
    goto :goto_7

    .line 157
    :cond_9
    :goto_6
    move-object v5, v2

    .line 158
    :goto_7
    iget-object v6, v0, Lteam/opay/pay/transfer/contact/requestmoney/TransferRequestMoneySearchContactFragment;->q:Ljava/lang/String;

    .line 159
    .line 160
    if-eqz p1, :cond_b

    .line 161
    .line 162
    invoke-virtual/range {p1 .. p1}, Lteam/opay/pay/transfer/contact/bean/TransferContactData;->getPhotoUrl()Ljava/lang/String;

    .line 163
    .line 164
    .line 165
    move-result-object v3

    .line 166
    if-nez v3, :cond_a

    .line 167
    .line 168
    goto :goto_8

    .line 169
    :cond_a
    move-object v7, v3

    .line 170
    goto :goto_9

    .line 171
    :cond_b
    :goto_8
    move-object v7, v2

    .line 172
    :goto_9
    if-eqz p1, :cond_c

    .line 173
    .line 174
    invoke-virtual/range {p1 .. p1}, Lteam/opay/pay/transfer/contact/bean/TransferContactData;->getRoleLabel()Ljava/lang/String;

    .line 175
    .line 176
    .line 177
    move-result-object v8

    .line 178
    :cond_c
    move-object v9, v8

    .line 179
    const v29, 0x1ffffd0

    .line 180
    .line 181
    .line 182
    const/16 v30, 0x0

    .line 183
    .line 184
    const/4 v8, 0x0

    .line 185
    const/4 v10, 0x0

    .line 186
    const/4 v11, 0x0

    .line 187
    const/4 v12, 0x0

    .line 188
    const/4 v13, 0x0

    .line 189
    const/4 v14, 0x0

    .line 190
    const/4 v15, 0x0

    .line 191
    const/16 v16, 0x0

    .line 192
    .line 193
    const/16 v17, 0x0

    .line 194
    .line 195
    const/16 v18, 0x0

    .line 196
    .line 197
    const/16 v19, 0x0

    .line 198
    .line 199
    const/16 v20, 0x0

    .line 200
    .line 201
    const/16 v21, 0x0

    .line 202
    .line 203
    const/16 v22, 0x0

    .line 204
    .line 205
    const/16 v23, 0x0

    .line 206
    .line 207
    const/16 v24, 0x0

    .line 208
    .line 209
    const/16 v25, 0x0

    .line 210
    .line 211
    const/16 v26, 0x0

    .line 212
    .line 213
    const/16 v27, 0x0

    .line 214
    .line 215
    const/16 v28, 0x0

    .line 216
    .line 217
    move-object v3, v1

    .line 218
    invoke-direct/range {v3 .. v30}, Lteam/opay/pay/transfer/contact/bean/ContactTransferDispatchData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/Boolean;Lteam/opay/core/api/GraphQL$CurrencyAmount;Lteam/opay/core/api/GraphQL$CurrencyAmount;Ljava/lang/String;ZZLjava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Float;Ljava/lang/Boolean;Ljava/lang/String;Lteam/opay/core/api/graphql/StampDutyInfo;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 219
    .line 220
    .line 221
    sget-object v3, Lteam/opay/pay/transfer/contact/view/dialog/ContactTransferDispatchFragment;->y:Lteam/opay/pay/transfer/contact/view/dialog/ContactTransferDispatchFragment$Companion;

    .line 222
    .line 223
    const/16 v8, 0xe

    .line 224
    .line 225
    const/4 v9, 0x0

    .line 226
    const/4 v5, 0x0

    .line 227
    const/4 v6, 0x0

    .line 228
    const/4 v7, 0x0

    .line 229
    move-object v4, v1

    .line 230
    invoke-static/range {v3 .. v9}, Lteam/opay/pay/transfer/contact/view/dialog/ContactTransferDispatchFragment$Companion;->b(Lteam/opay/pay/transfer/contact/view/dialog/ContactTransferDispatchFragment$Companion;Lteam/opay/pay/transfer/contact/bean/ContactTransferDispatchData;ZLjava/lang/String;Ljava/lang/Boolean;ILjava/lang/Object;)Lteam/opay/pay/transfer/contact/view/dialog/ContactTransferDispatchFragment;

    .line 231
    .line 232
    .line 233
    move-result-object v1

    .line 234
    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 235
    .line 236
    .line 237
    move-result-object v2

    .line 238
    if-eqz v2, :cond_d

    .line 239
    .line 240
    invoke-virtual {v2}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 241
    .line 242
    .line 243
    move-result-object v2

    .line 244
    if-eqz v2, :cond_d

    .line 245
    .line 246
    invoke-virtual {v2}, Landroidx/fragment/app/FragmentManager;->p()Landroidx/fragment/app/FragmentTransaction;

    .line 247
    .line 248
    .line 249
    move-result-object v2

    .line 250
    if-eqz v2, :cond_d

    .line 251
    .line 252
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 253
    .line 254
    .line 255
    move-result-object v3

    .line 256
    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 257
    .line 258
    .line 259
    move-result-object v3

    .line 260
    invoke-virtual {v2, v1, v3}, Landroidx/fragment/app/FragmentTransaction;->e(Landroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    .line 261
    .line 262
    .line 263
    move-result-object v1

    .line 264
    if-eqz v1, :cond_d

    .line 265
    .line 266
    invoke-virtual {v1}, Landroidx/fragment/app/FragmentTransaction;->j()I

    .line 267
    .line 268
    .line 269
    :cond_d
    return-void
.end method

.method private final W(Landroid/text/Editable;)V
    .locals 47

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    .line 6
    .line 7
    .line 8
    move-result v2

    .line 9
    if-nez v2, :cond_0

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    const/4 v2, 0x0

    .line 13
    if-eqz v1, :cond_1

    .line 14
    .line 15
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v3

    .line 19
    goto :goto_0

    .line 20
    :cond_1
    move-object v3, v2

    .line 21
    :goto_0
    const/4 v4, 0x0

    .line 22
    const/4 v5, 0x1

    .line 23
    if-eqz v3, :cond_3

    .line 24
    .line 25
    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    .line 26
    .line 27
    .line 28
    move-result v3

    .line 29
    if-nez v3, :cond_2

    .line 30
    .line 31
    goto :goto_1

    .line 32
    :cond_2
    const/4 v3, 0x0

    .line 33
    goto :goto_2

    .line 34
    :cond_3
    :goto_1
    const/4 v3, 0x1

    .line 35
    :goto_2
    invoke-virtual/range {p0 .. p0}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 36
    .line 37
    .line 38
    move-result-object v6

    .line 39
    check-cast v6, Lri6;

    .line 40
    .line 41
    iget-object v6, v6, Lri6;->d:Landroidx/appcompat/widget/AppCompatImageView;

    .line 42
    .line 43
    const-string v7, "clearButton"

    .line 44
    .line 45
    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    xor-int/lit8 v7, v3, 0x1

    .line 49
    .line 50
    invoke-static {v6, v7}, Lteam/opay/core/android/ViewKt;->x(Landroid/view/View;Z)V

    .line 51
    .line 52
    .line 53
    if-nez v3, :cond_13

    .line 54
    .line 55
    iget-object v3, v0, Lteam/opay/pay/transfer/contact/requestmoney/TransferRequestMoneySearchContactFragment;->s:Ljava/util/List;

    .line 56
    .line 57
    new-instance v6, Ljava/util/ArrayList;

    .line 58
    .line 59
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 60
    .line 61
    .line 62
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 63
    .line 64
    .line 65
    move-result-object v3

    .line 66
    :cond_4
    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 67
    .line 68
    .line 69
    move-result v7

    .line 70
    const-string v8, ""

    .line 71
    .line 72
    if-eqz v7, :cond_a

    .line 73
    .line 74
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 75
    .line 76
    .line 77
    move-result-object v7

    .line 78
    move-object v9, v7

    .line 79
    check-cast v9, Lteam/opay/pay/transfer/contact/bean/TransferContactData;

    .line 80
    .line 81
    invoke-virtual {v9}, Lteam/opay/pay/transfer/contact/bean/TransferContactData;->getName()Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v10

    .line 85
    if-eqz v10, :cond_7

    .line 86
    .line 87
    if-eqz v1, :cond_5

    .line 88
    .line 89
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object v11

    .line 93
    if-nez v11, :cond_6

    .line 94
    .line 95
    :cond_5
    move-object v11, v8

    .line 96
    :cond_6
    invoke-static {v10, v11, v5}, Lkotlin/text/StringsKt;->b0(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    .line 97
    .line 98
    .line 99
    move-result v10

    .line 100
    if-ne v10, v5, :cond_7

    .line 101
    .line 102
    goto :goto_5

    .line 103
    :cond_7
    invoke-virtual {v9}, Lteam/opay/pay/transfer/contact/bean/TransferContactData;->getPhone()Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object v9

    .line 107
    if-eqz v1, :cond_9

    .line 108
    .line 109
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object v10

    .line 113
    if-nez v10, :cond_8

    .line 114
    .line 115
    goto :goto_4

    .line 116
    :cond_8
    move-object v8, v10

    .line 117
    :cond_9
    :goto_4
    invoke-static {v9, v8, v5}, Lkotlin/text/StringsKt;->b0(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    .line 118
    .line 119
    .line 120
    move-result v8

    .line 121
    if-eqz v8, :cond_4

    .line 122
    .line 123
    :goto_5
    invoke-interface {v6, v7}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 124
    .line 125
    .line 126
    goto :goto_3

    .line 127
    :cond_a
    invoke-static {v6}, Lkotlin/collections/CollectionsKt;->T0(Ljava/util/Collection;)Ljava/util/List;

    .line 128
    .line 129
    .line 130
    move-result-object v3

    .line 131
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    .line 132
    .line 133
    .line 134
    move-result v6

    .line 135
    const/4 v7, 0x2

    .line 136
    const-string v9, "getRoot(...)"

    .line 137
    .line 138
    if-eqz v6, :cond_12

    .line 139
    .line 140
    invoke-direct/range {p0 .. p0}, Lteam/opay/pay/transfer/contact/requestmoney/TransferRequestMoneySearchContactFragment;->U()Lteam/opay/pay/transfer/contact/TransferContactViewModel;

    .line 141
    .line 142
    .line 143
    move-result-object v6

    .line 144
    invoke-virtual {v6}, Lteam/opay/pay/transfer/contact/TransferContactViewModel;->o()Lteam/opay/core/api/Country;

    .line 145
    .line 146
    .line 147
    move-result-object v6

    .line 148
    invoke-virtual {v6}, Lteam/opay/core/api/Country;->getPhoneRegionalCode()I

    .line 149
    .line 150
    .line 151
    move-result v6

    .line 152
    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 153
    .line 154
    .line 155
    move-result-object v6

    .line 156
    if-eqz v1, :cond_b

    .line 157
    .line 158
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 159
    .line 160
    .line 161
    move-result-object v10

    .line 162
    if-eqz v10, :cond_b

    .line 163
    .line 164
    invoke-static {v10, v6, v4, v7, v2}, Lkotlin/text/StringsKt;->X(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    .line 165
    .line 166
    .line 167
    move-result v10

    .line 168
    if-ne v10, v5, :cond_b

    .line 169
    .line 170
    goto :goto_6

    .line 171
    :cond_b
    const-string v10, "+"

    .line 172
    .line 173
    if-eqz v1, :cond_c

    .line 174
    .line 175
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 176
    .line 177
    .line 178
    move-result-object v11

    .line 179
    if-eqz v11, :cond_c

    .line 180
    .line 181
    new-instance v12, Ljava/lang/StringBuilder;

    .line 182
    .line 183
    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    .line 184
    .line 185
    .line 186
    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 187
    .line 188
    .line 189
    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 190
    .line 191
    .line 192
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 193
    .line 194
    .line 195
    move-result-object v6

    .line 196
    invoke-static {v11, v6, v4, v7, v2}, Lkotlin/text/StringsKt;->X(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    .line 197
    .line 198
    .line 199
    move-result v4

    .line 200
    if-ne v4, v5, :cond_c

    .line 201
    .line 202
    :goto_6
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 203
    .line 204
    .line 205
    move-result-object v4

    .line 206
    goto :goto_7

    .line 207
    :cond_c
    invoke-direct/range {p0 .. p0}, Lteam/opay/pay/transfer/contact/requestmoney/TransferRequestMoneySearchContactFragment;->U()Lteam/opay/pay/transfer/contact/TransferContactViewModel;

    .line 208
    .line 209
    .line 210
    move-result-object v4

    .line 211
    invoke-virtual {v4}, Lteam/opay/pay/transfer/contact/TransferContactViewModel;->o()Lteam/opay/core/api/Country;

    .line 212
    .line 213
    .line 214
    move-result-object v4

    .line 215
    invoke-virtual {v4}, Lteam/opay/core/api/Country;->getPhoneRegionalCode()I

    .line 216
    .line 217
    .line 218
    move-result v4

    .line 219
    new-instance v6, Ljava/lang/StringBuilder;

    .line 220
    .line 221
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 222
    .line 223
    .line 224
    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 225
    .line 226
    .line 227
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 228
    .line 229
    .line 230
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 231
    .line 232
    .line 233
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 234
    .line 235
    .line 236
    move-result-object v4

    .line 237
    :goto_7
    sget-object v6, Lteam/opay/core/api/Country;->NIGERIA:Lteam/opay/core/api/Country;

    .line 238
    .line 239
    invoke-static {v4, v6}, Lxob;->p(Ljava/lang/String;Lteam/opay/core/api/Country;)Z

    .line 240
    .line 241
    .line 242
    move-result v4

    .line 243
    const-string v6, "maxTip"

    .line 244
    .line 245
    if-eqz v4, :cond_f

    .line 246
    .line 247
    if-eqz v1, :cond_e

    .line 248
    .line 249
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 250
    .line 251
    .line 252
    move-result-object v1

    .line 253
    if-nez v1, :cond_d

    .line 254
    .line 255
    goto :goto_8

    .line 256
    :cond_d
    move-object v15, v1

    .line 257
    goto :goto_9

    .line 258
    :cond_e
    :goto_8
    move-object v15, v8

    .line 259
    :goto_9
    new-instance v1, Lteam/opay/pay/transfer/contact/bean/TransferContactData;

    .line 260
    .line 261
    move-object v10, v1

    .line 262
    const/4 v4, 0x7

    .line 263
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 264
    .line 265
    .line 266
    move-result-object v12

    .line 267
    const/16 v45, 0x1

    .line 268
    .line 269
    const/16 v46, 0x0

    .line 270
    .line 271
    const/4 v11, 0x0

    .line 272
    const/4 v13, 0x0

    .line 273
    const/4 v14, 0x0

    .line 274
    const/16 v16, 0x0

    .line 275
    .line 276
    const/16 v17, 0x0

    .line 277
    .line 278
    const/16 v18, 0x0

    .line 279
    .line 280
    const/16 v19, 0x0

    .line 281
    .line 282
    const/16 v20, 0x0

    .line 283
    .line 284
    const/16 v21, 0x0

    .line 285
    .line 286
    const/16 v22, 0x0

    .line 287
    .line 288
    const/16 v23, 0x0

    .line 289
    .line 290
    const/16 v24, 0x0

    .line 291
    .line 292
    const/16 v25, 0x0

    .line 293
    .line 294
    const/16 v26, 0x0

    .line 295
    .line 296
    const/16 v27, 0x0

    .line 297
    .line 298
    const/16 v28, 0x0

    .line 299
    .line 300
    const/16 v29, 0x0

    .line 301
    .line 302
    const/16 v30, 0x0

    .line 303
    .line 304
    const/16 v31, 0x0

    .line 305
    .line 306
    const/16 v32, 0x0

    .line 307
    .line 308
    const/16 v33, 0x0

    .line 309
    .line 310
    const/16 v34, 0x0

    .line 311
    .line 312
    const/16 v35, 0x0

    .line 313
    .line 314
    const/16 v36, 0x0

    .line 315
    .line 316
    const/16 v37, 0x0

    .line 317
    .line 318
    const/16 v38, 0x0

    .line 319
    .line 320
    const/16 v39, 0x0

    .line 321
    .line 322
    const/16 v40, 0x0

    .line 323
    .line 324
    const/16 v41, 0x0

    .line 325
    .line 326
    const/16 v42, 0x0

    .line 327
    .line 328
    const/16 v43, 0x0

    .line 329
    .line 330
    const/16 v44, -0x13

    .line 331
    .line 332
    invoke-direct/range {v10 .. v46}, Lteam/opay/pay/transfer/contact/bean/TransferContactData;-><init>(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Lteam/opay/pay/transfer/contact/bean/TransferOpayContact;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Lteam/opay/core/api/graphql/StampDutyInfo;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 333
    .line 334
    .line 335
    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 336
    .line 337
    .line 338
    invoke-virtual/range {p0 .. p0}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 339
    .line 340
    .line 341
    move-result-object v1

    .line 342
    check-cast v1, Lri6;

    .line 343
    .line 344
    iget-object v1, v1, Lri6;->e:Lp0b;

    .line 345
    .line 346
    invoke-virtual {v1}, Lp0b;->a()Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 347
    .line 348
    .line 349
    move-result-object v1

    .line 350
    invoke-static {v1, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 351
    .line 352
    .line 353
    invoke-static {v1}, Lteam/opay/core/android/ViewKt;->e(Landroid/view/View;)V

    .line 354
    .line 355
    .line 356
    invoke-virtual/range {p0 .. p0}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 357
    .line 358
    .line 359
    move-result-object v1

    .line 360
    check-cast v1, Lri6;

    .line 361
    .line 362
    iget-object v1, v1, Lri6;->f:Landroidx/appcompat/widget/AppCompatTextView;

    .line 363
    .line 364
    invoke-static {v1, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 365
    .line 366
    .line 367
    invoke-static {v1}, Lteam/opay/core/android/ViewKt;->e(Landroid/view/View;)V

    .line 368
    .line 369
    .line 370
    goto/16 :goto_a

    .line 371
    .line 372
    :cond_f
    if-eqz v1, :cond_10

    .line 373
    .line 374
    new-instance v4, Lkotlin/text/Regex;

    .line 375
    .line 376
    const-string v8, "^(\\+)?[0-9]*$"

    .line 377
    .line 378
    invoke-direct {v4, v8}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    .line 379
    .line 380
    .line 381
    invoke-virtual {v4, v1}, Lkotlin/text/Regex;->matches(Ljava/lang/CharSequence;)Z

    .line 382
    .line 383
    .line 384
    move-result v4

    .line 385
    if-ne v4, v5, :cond_10

    .line 386
    .line 387
    invoke-interface/range {p1 .. p1}, Ljava/lang/CharSequence;->length()I

    .line 388
    .line 389
    .line 390
    move-result v1

    .line 391
    const/16 v4, 0xa

    .line 392
    .line 393
    if-le v1, v4, :cond_10

    .line 394
    .line 395
    invoke-virtual/range {p0 .. p0}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 396
    .line 397
    .line 398
    move-result-object v1

    .line 399
    check-cast v1, Lri6;

    .line 400
    .line 401
    iget-object v1, v1, Lri6;->f:Landroidx/appcompat/widget/AppCompatTextView;

    .line 402
    .line 403
    invoke-static {v1, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 404
    .line 405
    .line 406
    invoke-static {v1}, Lteam/opay/core/android/ViewKt;->v(Landroid/view/View;)V

    .line 407
    .line 408
    .line 409
    invoke-virtual/range {p0 .. p0}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 410
    .line 411
    .line 412
    move-result-object v1

    .line 413
    check-cast v1, Lri6;

    .line 414
    .line 415
    iget-object v1, v1, Lri6;->e:Lp0b;

    .line 416
    .line 417
    invoke-virtual {v1}, Lp0b;->a()Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 418
    .line 419
    .line 420
    move-result-object v1

    .line 421
    invoke-static {v1, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 422
    .line 423
    .line 424
    invoke-static {v1}, Lteam/opay/core/android/ViewKt;->e(Landroid/view/View;)V

    .line 425
    .line 426
    .line 427
    goto :goto_a

    .line 428
    :cond_10
    invoke-virtual/range {p0 .. p0}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 429
    .line 430
    .line 431
    move-result-object v1

    .line 432
    check-cast v1, Lri6;

    .line 433
    .line 434
    iget-object v1, v1, Lri6;->f:Landroidx/appcompat/widget/AppCompatTextView;

    .line 435
    .line 436
    invoke-static {v1, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 437
    .line 438
    .line 439
    invoke-static {v1}, Lteam/opay/core/android/ViewKt;->e(Landroid/view/View;)V

    .line 440
    .line 441
    .line 442
    invoke-virtual/range {p0 .. p0}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 443
    .line 444
    .line 445
    move-result-object v1

    .line 446
    check-cast v1, Lri6;

    .line 447
    .line 448
    iget-object v1, v1, Lri6;->e:Lp0b;

    .line 449
    .line 450
    invoke-virtual {v1}, Lp0b;->a()Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 451
    .line 452
    .line 453
    move-result-object v1

    .line 454
    invoke-static {v1, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 455
    .line 456
    .line 457
    invoke-static {v1}, Lteam/opay/core/android/ViewKt;->v(Landroid/view/View;)V

    .line 458
    .line 459
    .line 460
    iget-object v1, v0, Lteam/opay/pay/transfer/contact/requestmoney/TransferRequestMoneySearchContactFragment;->q:Ljava/lang/String;

    .line 461
    .line 462
    const-string v4, "send_money"

    .line 463
    .line 464
    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 465
    .line 466
    .line 467
    move-result v1

    .line 468
    if-eqz v1, :cond_11

    .line 469
    .line 470
    invoke-virtual/range {p0 .. p0}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 471
    .line 472
    .line 473
    move-result-object v1

    .line 474
    check-cast v1, Lri6;

    .line 475
    .line 476
    iget-object v1, v1, Lri6;->e:Lp0b;

    .line 477
    .line 478
    iget-object v1, v1, Lp0b;->c:Landroidx/appcompat/widget/AppCompatTextView;

    .line 479
    .line 480
    sget v4, Lteam/opay/pay/R$string;->osdk_search_contact_aa_transfer_empty_tips:I

    .line 481
    .line 482
    invoke-virtual {v0, v4}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 483
    .line 484
    .line 485
    move-result-object v4

    .line 486
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 487
    .line 488
    .line 489
    goto :goto_a

    .line 490
    :cond_11
    invoke-virtual/range {p0 .. p0}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 491
    .line 492
    .line 493
    move-result-object v1

    .line 494
    check-cast v1, Lri6;

    .line 495
    .line 496
    iget-object v1, v1, Lri6;->e:Lp0b;

    .line 497
    .line 498
    iget-object v1, v1, Lp0b;->c:Landroidx/appcompat/widget/AppCompatTextView;

    .line 499
    .line 500
    sget v4, Lteam/opay/pay/R$string;->osdk_search_contact_request_money_empty_tips:I

    .line 501
    .line 502
    invoke-virtual {v0, v4}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 503
    .line 504
    .line 505
    move-result-object v4

    .line 506
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 507
    .line 508
    .line 509
    goto :goto_a

    .line 510
    :cond_12
    invoke-virtual/range {p0 .. p0}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 511
    .line 512
    .line 513
    move-result-object v1

    .line 514
    check-cast v1, Lri6;

    .line 515
    .line 516
    iget-object v1, v1, Lri6;->e:Lp0b;

    .line 517
    .line 518
    invoke-virtual {v1}, Lp0b;->a()Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 519
    .line 520
    .line 521
    move-result-object v1

    .line 522
    invoke-static {v1, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 523
    .line 524
    .line 525
    invoke-static {v1}, Lteam/opay/core/android/ViewKt;->e(Landroid/view/View;)V

    .line 526
    .line 527
    .line 528
    :goto_a
    invoke-virtual/range {p0 .. p0}, Lteam/opay/pay/transfer/contact/requestmoney/TransferRequestMoneySearchContactFragment;->T()Lteam/opay/pay/transfer/contact/adapter/TransferContactSearchListAdapter;

    .line 529
    .line 530
    .line 531
    move-result-object v1

    .line 532
    invoke-static {v1, v3, v2, v7, v2}, Lteam/opay/pay/transfer/contact/adapter/TransferContactSearchListAdapter;->t(Lteam/opay/pay/transfer/contact/adapter/TransferContactSearchListAdapter;Ljava/util/List;Ljava/lang/String;ILjava/lang/Object;)V

    .line 533
    .line 534
    .line 535
    :cond_13
    return-void
.end method

.method public static final X(Lteam/opay/pay/transfer/contact/requestmoney/TransferRequestMoneySearchContactFragment;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragment;->getFragmentActivity()Landroidx/fragment/app/FragmentActivity;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 6
    .line 7
    .line 8
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 9
    .line 10
    return-object p0
.end method

.method public static final Y(Lteam/opay/pay/transfer/contact/requestmoney/TransferRequestMoneySearchContactFragment;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    check-cast p0, Lri6;

    .line 6
    .line 7
    iget-object p0, p0, Lri6;->g:Landroidx/appcompat/widget/AppCompatEditText;

    .line 8
    .line 9
    invoke-virtual {p0}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    if-eqz p0, :cond_0

    .line 14
    .line 15
    invoke-interface {p0}, Landroid/text/Editable;->clear()V

    .line 16
    .line 17
    .line 18
    :cond_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 19
    .line 20
    return-object p0
.end method

.method public static final Z(Lteam/opay/pay/transfer/contact/requestmoney/TransferRequestMoneySearchContactFragment;)Lteam/opay/pay/transfer/contact/adapter/TransferContactSearchListAdapter;
    .locals 5

    .line 1
    new-instance v0, Lteam/opay/pay/transfer/contact/adapter/TransferContactSearchListAdapter;

    .line 2
    .line 3
    iget-object v1, p0, Lteam/opay/pay/transfer/contact/requestmoney/TransferRequestMoneySearchContactFragment;->q:Ljava/lang/String;

    .line 4
    .line 5
    const/4 v2, 0x2

    .line 6
    const/4 v3, 0x0

    .line 7
    const/4 v4, 0x0

    .line 8
    invoke-direct {v0, v1, v4, v2, v3}, Lteam/opay/pay/transfer/contact/adapter/TransferContactSearchListAdapter;-><init>(Ljava/lang/String;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 9
    .line 10
    .line 11
    new-instance v1, Lteam/opay/pay/transfer/contact/requestmoney/TransferRequestMoneySearchContactFragment$transferContactSearchAdapter$2$1$1;

    .line 12
    .line 13
    invoke-direct {v1, p0}, Lteam/opay/pay/transfer/contact/requestmoney/TransferRequestMoneySearchContactFragment$transferContactSearchAdapter$2$1$1;-><init>(Ljava/lang/Object;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, v1}, Lteam/opay/pay/transfer/contact/adapter/TransferContactSearchListAdapter;->u(Lkotlin/jvm/functions/Function1;)V

    .line 17
    .line 18
    .line 19
    return-object v0
.end method


# virtual methods
.method public final T()Lteam/opay/pay/transfer/contact/adapter/TransferContactSearchListAdapter;
    .locals 1

    .line 1
    iget-object v0, p0, Lteam/opay/pay/transfer/contact/requestmoney/TransferRequestMoneySearchContactFragment;->r:Lid8;

    .line 2
    .line 3
    invoke-interface {v0}, Lid8;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lteam/opay/pay/transfer/contact/adapter/TransferContactSearchListAdapter;

    .line 8
    .line 9
    return-object v0
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 3
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
    sget-object p1, Lteam/opay/pay/transfer/contact/TransferContactViewModel;->E:Lteam/opay/pay/transfer/contact/TransferContactViewModel$Companion;

    .line 10
    .line 11
    invoke-virtual {p1}, Lteam/opay/pay/transfer/contact/TransferContactViewModel$Companion;->a()Ljava/util/List;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    iput-object p1, p0, Lteam/opay/pay/transfer/contact/requestmoney/TransferRequestMoneySearchContactFragment;->s:Ljava/util/List;

    .line 16
    .line 17
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    if-eqz p1, :cond_0

    .line 22
    .line 23
    const-string p2, "from"

    .line 24
    .line 25
    invoke-virtual {p1, p2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    if-nez p1, :cond_1

    .line 30
    .line 31
    :cond_0
    const-string p1, ""

    .line 32
    .line 33
    :cond_1
    iput-object p1, p0, Lteam/opay/pay/transfer/contact/requestmoney/TransferRequestMoneySearchContactFragment;->q:Ljava/lang/String;

    .line 34
    .line 35
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    check-cast p1, Lri6;

    .line 40
    .line 41
    iget-object p1, p1, Lri6;->i:Landroidx/recyclerview/widget/RecyclerView;

    .line 42
    .line 43
    new-instance p2, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 44
    .line 45
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragment;->getAppContext()Landroid/content/Context;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    const/4 v1, 0x1

    .line 50
    const/4 v2, 0x0

    .line 51
    invoke-direct {p2, v0, v1, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 55
    .line 56
    .line 57
    new-instance p2, Landroidx/recyclerview/widget/DefaultItemAnimator;

    .line 58
    .line 59
    invoke-direct {p2}, Landroidx/recyclerview/widget/DefaultItemAnimator;-><init>()V

    .line 60
    .line 61
    .line 62
    invoke-virtual {p2, v2}, Landroidx/recyclerview/widget/SimpleItemAnimator;->S(Z)V

    .line 63
    .line 64
    .line 65
    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    .line 66
    .line 67
    .line 68
    invoke-virtual {p0}, Lteam/opay/pay/transfer/contact/requestmoney/TransferRequestMoneySearchContactFragment;->T()Lteam/opay/pay/transfer/contact/adapter/TransferContactSearchListAdapter;

    .line 69
    .line 70
    .line 71
    move-result-object p2

    .line 72
    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 73
    .line 74
    .line 75
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 76
    .line 77
    .line 78
    move-result-object p1

    .line 79
    check-cast p1, Lri6;

    .line 80
    .line 81
    iget-object p1, p1, Lri6;->c:Landroidx/appcompat/widget/AppCompatImageView;

    .line 82
    .line 83
    const-string p2, "back"

    .line 84
    .line 85
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 86
    .line 87
    .line 88
    new-instance p2, Lh9f;

    .line 89
    .line 90
    invoke-direct {p2, p0}, Lh9f;-><init>(Lteam/opay/pay/transfer/contact/requestmoney/TransferRequestMoneySearchContactFragment;)V

    .line 91
    .line 92
    .line 93
    invoke-static {p1, p2}, Lfe1;->b(Landroid/view/View;Lkotlin/jvm/functions/Function0;)V

    .line 94
    .line 95
    .line 96
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 97
    .line 98
    .line 99
    move-result-object p1

    .line 100
    check-cast p1, Lri6;

    .line 101
    .line 102
    iget-object p1, p1, Lri6;->d:Landroidx/appcompat/widget/AppCompatImageView;

    .line 103
    .line 104
    const-string p2, "clearButton"

    .line 105
    .line 106
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 107
    .line 108
    .line 109
    new-instance p2, Li9f;

    .line 110
    .line 111
    invoke-direct {p2, p0}, Li9f;-><init>(Lteam/opay/pay/transfer/contact/requestmoney/TransferRequestMoneySearchContactFragment;)V

    .line 112
    .line 113
    .line 114
    invoke-static {p1, p2}, Lfe1;->b(Landroid/view/View;Lkotlin/jvm/functions/Function0;)V

    .line 115
    .line 116
    .line 117
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 118
    .line 119
    .line 120
    move-result-object p1

    .line 121
    check-cast p1, Lri6;

    .line 122
    .line 123
    iget-object p1, p1, Lri6;->g:Landroidx/appcompat/widget/AppCompatEditText;

    .line 124
    .line 125
    new-instance p2, Lteam/opay/pay/transfer/contact/requestmoney/TransferRequestMoneySearchContactFragment$a;

    .line 126
    .line 127
    invoke-direct {p2, p0}, Lteam/opay/pay/transfer/contact/requestmoney/TransferRequestMoneySearchContactFragment$a;-><init>(Lteam/opay/pay/transfer/contact/requestmoney/TransferRequestMoneySearchContactFragment;)V

    .line 128
    .line 129
    .line 130
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 131
    .line 132
    .line 133
    iget-object p1, p0, Lteam/opay/pay/transfer/contact/requestmoney/TransferRequestMoneySearchContactFragment;->q:Ljava/lang/String;

    .line 134
    .line 135
    const-string p2, "send_money"

    .line 136
    .line 137
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 138
    .line 139
    .line 140
    move-result p1

    .line 141
    if-eqz p1, :cond_2

    .line 142
    .line 143
    sget-object p1, Lx7b;->a:Lx7b;

    .line 144
    .line 145
    const-string p2, "aa_transfer_search_contacts_show"

    .line 146
    .line 147
    new-array v0, v2, [Lkotlin/Pair;

    .line 148
    .line 149
    invoke-virtual {p1, p2, v0}, Lx7b;->g(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 150
    .line 151
    .line 152
    goto :goto_0

    .line 153
    :cond_2
    sget-object p1, Lx7b;->a:Lx7b;

    .line 154
    .line 155
    const-string p2, "request_money_search_show"

    .line 156
    .line 157
    new-array v0, v2, [Lkotlin/Pair;

    .line 158
    .line 159
    invoke-virtual {p1, p2, v0}, Lx7b;->g(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 160
    .line 161
    .line 162
    :goto_0
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 163
    .line 164
    .line 165
    move-result-object p1

    .line 166
    check-cast p1, Lri6;

    .line 167
    .line 168
    iget-object p1, p1, Lri6;->g:Landroidx/appcompat/widget/AppCompatEditText;

    .line 169
    .line 170
    invoke-virtual {p1, v1}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    .line 171
    .line 172
    .line 173
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 174
    .line 175
    .line 176
    move-result-object p1

    .line 177
    check-cast p1, Lri6;

    .line 178
    .line 179
    iget-object p1, p1, Lri6;->g:Landroidx/appcompat/widget/AppCompatEditText;

    .line 180
    .line 181
    invoke-virtual {p1, v1}, Landroid/view/View;->setFocusable(Z)V

    .line 182
    .line 183
    .line 184
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 185
    .line 186
    .line 187
    move-result-object p1

    .line 188
    check-cast p1, Lri6;

    .line 189
    .line 190
    iget-object p1, p1, Lri6;->g:Landroidx/appcompat/widget/AppCompatEditText;

    .line 191
    .line 192
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 193
    .line 194
    .line 195
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 196
    .line 197
    .line 198
    move-result-object p1

    .line 199
    check-cast p1, Lri6;

    .line 200
    .line 201
    iget-object p1, p1, Lri6;->g:Landroidx/appcompat/widget/AppCompatEditText;

    .line 202
    .line 203
    const-string p2, "searchEdit"

    .line 204
    .line 205
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 206
    .line 207
    .line 208
    invoke-static {p1}, Lli2;->h(Landroid/view/View;)V

    .line 209
    .line 210
    .line 211
    return-void
.end method
