.class public final Lteam/opay/business/payroll/transferConfirmDialog/FastFirstLargeTransferDialog;
.super Lteam/opay/business/payroll/transferConfirmDialog/Hilt_FastFirstLargeTransferDialog;
.source "FastFirstLargeTransferDialog.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lteam/opay/business/payroll/transferConfirmDialog/FastFirstLargeTransferDialog$Companion;,
        Lteam/opay/business/payroll/transferConfirmDialog/FastFirstLargeTransferDialog$VerifyNameAdapter;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000F\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000e\n\u0002\u0008\u0007\n\u0002\u0010\u000b\n\u0002\u0008\u0007\u0008\u0007\u0018\u0000 &2\u00020\u0001:\u0002\'(B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u000f\u0010\u0005\u001a\u00020\u0004H\u0002\u00a2\u0006\u0004\u0008\u0005\u0010\u0003J\u000f\u0010\u0006\u001a\u00020\u0004H\u0002\u00a2\u0006\u0004\u0008\u0006\u0010\u0003J+\u0010\u000e\u001a\u00020\r2\u0006\u0010\u0008\u001a\u00020\u00072\u0008\u0010\n\u001a\u0004\u0018\u00010\t2\u0008\u0010\u000c\u001a\u0004\u0018\u00010\u000bH\u0016\u00a2\u0006\u0004\u0008\u000e\u0010\u000fJ!\u0010\u0011\u001a\u00020\u00042\u0006\u0010\u0010\u001a\u00020\r2\u0008\u0010\u000c\u001a\u0004\u0018\u00010\u000bH\u0016\u00a2\u0006\u0004\u0008\u0011\u0010\u0012J\u000f\u0010\u0013\u001a\u00020\u0004H\u0002\u00a2\u0006\u0004\u0008\u0013\u0010\u0003R\u001b\u0010\u0019\u001a\u00020\u00148BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0015\u0010\u0016\u001a\u0004\u0008\u0017\u0010\u0018R\"\u0010!\u001a\u00020\u001a8\u0016@\u0016X\u0096\u000e\u00a2\u0006\u0012\n\u0004\u0008\u001b\u0010\u001c\u001a\u0004\u0008\u001d\u0010\u001e\"\u0004\u0008\u001f\u0010 R\u0016\u0010%\u001a\u00020\"8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008#\u0010$\u00a8\u0006)"
    }
    d2 = {
        "Lteam/opay/business/payroll/transferConfirmDialog/FastFirstLargeTransferDialog;",
        "Lteam/opay/business/payroll/transferConfirmDialog/BaseConfirmSheet;",
        "<init>",
        "()V",
        "",
        "l0",
        "n0",
        "Landroid/view/LayoutInflater;",
        "inflater",
        "Landroid/view/ViewGroup;",
        "container",
        "Landroid/os/Bundle;",
        "savedInstanceState",
        "Landroid/view/View;",
        "onCreateView",
        "(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;",
        "view",
        "onViewCreated",
        "(Landroid/view/View;Landroid/os/Bundle;)V",
        "o0",
        "Lwjb;",
        "B",
        "Lcom/hi/dhl/binding/viewbind/FragmentViewBinding;",
        "h0",
        "()Lwjb;",
        "binding",
        "",
        "C",
        "Ljava/lang/String;",
        "a0",
        "()Ljava/lang/String;",
        "setNoticeType",
        "(Ljava/lang/String;)V",
        "noticeType",
        "",
        "D",
        "Z",
        "selectedItemRight",
        "E",
        "VerifyNameAdapter",
        "Companion",
        "business-payroll_release"
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
.field public static final E:Lteam/opay/business/payroll/transferConfirmDialog/FastFirstLargeTransferDialog$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final synthetic F:[Lzo7;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lzo7<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final B:Lcom/hi/dhl/binding/viewbind/FragmentViewBinding;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public C:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public D:Z


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1
    new-instance v0, Lkotlin/jvm/internal/PropertyReference1Impl;

    .line 2
    .line 3
    const-string v1, "getBinding()Lteam/opay/business/payroll/databinding/PayrollDialogFastFirstLargeTransferBinding;"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    const-class v3, Lteam/opay/business/payroll/transferConfirmDialog/FastFirstLargeTransferDialog;

    .line 7
    .line 8
    const-string v4, "binding"

    .line 9
    .line 10
    invoke-direct {v0, v3, v4, v1, v2}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    .line 11
    .line 12
    .line 13
    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->i(Lkotlin/jvm/internal/PropertyReference1;)Lbp7;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    const/4 v1, 0x1

    .line 18
    new-array v1, v1, [Lzo7;

    .line 19
    .line 20
    aput-object v0, v1, v2

    .line 21
    .line 22
    sput-object v1, Lteam/opay/business/payroll/transferConfirmDialog/FastFirstLargeTransferDialog;->F:[Lzo7;

    .line 23
    .line 24
    new-instance v0, Lteam/opay/business/payroll/transferConfirmDialog/FastFirstLargeTransferDialog$Companion;

    .line 25
    .line 26
    const/4 v1, 0x0

    .line 27
    invoke-direct {v0, v1}, Lteam/opay/business/payroll/transferConfirmDialog/FastFirstLargeTransferDialog$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 28
    .line 29
    .line 30
    sput-object v0, Lteam/opay/business/payroll/transferConfirmDialog/FastFirstLargeTransferDialog;->E:Lteam/opay/business/payroll/transferConfirmDialog/FastFirstLargeTransferDialog$Companion;

    .line 31
    .line 32
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lteam/opay/business/payroll/transferConfirmDialog/Hilt_FastFirstLargeTransferDialog;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/hi/dhl/binding/viewbind/FragmentViewBinding;

    .line 5
    .line 6
    const-class v1, Lwjb;

    .line 7
    .line 8
    invoke-direct {v0, v1, p0}, Lcom/hi/dhl/binding/viewbind/FragmentViewBinding;-><init>(Ljava/lang/Class;Landroidx/fragment/app/Fragment;)V

    .line 9
    .line 10
    .line 11
    iput-object v0, p0, Lteam/opay/business/payroll/transferConfirmDialog/FastFirstLargeTransferDialog;->B:Lcom/hi/dhl/binding/viewbind/FragmentViewBinding;

    .line 12
    .line 13
    const-string v0, "FIRST_LARGE_AMOUNT_FAST"

    .line 14
    .line 15
    iput-object v0, p0, Lteam/opay/business/payroll/transferConfirmDialog/FastFirstLargeTransferDialog;->C:Ljava/lang/String;

    .line 16
    .line 17
    return-void
.end method

.method public static synthetic d0(Lteam/opay/business/payroll/transferConfirmDialog/FastFirstLargeTransferDialog;Z)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/business/payroll/transferConfirmDialog/FastFirstLargeTransferDialog;->m0(Lteam/opay/business/payroll/transferConfirmDialog/FastFirstLargeTransferDialog;Z)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic e0(Lteam/opay/business/payroll/transferConfirmDialog/FastFirstLargeTransferDialog;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/business/payroll/transferConfirmDialog/FastFirstLargeTransferDialog;->i0(Lteam/opay/business/payroll/transferConfirmDialog/FastFirstLargeTransferDialog;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic f0(Lteam/opay/business/payroll/transferConfirmDialog/FastFirstLargeTransferDialog;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/business/payroll/transferConfirmDialog/FastFirstLargeTransferDialog;->j0(Lteam/opay/business/payroll/transferConfirmDialog/FastFirstLargeTransferDialog;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic g0(Lteam/opay/business/payroll/transferConfirmDialog/FastFirstLargeTransferDialog;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/business/payroll/transferConfirmDialog/FastFirstLargeTransferDialog;->k0(Lteam/opay/business/payroll/transferConfirmDialog/FastFirstLargeTransferDialog;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final i0(Lteam/opay/business/payroll/transferConfirmDialog/FastFirstLargeTransferDialog;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lteam/opay/business/payroll/transferConfirmDialog/BaseConfirmSheet;->U()V

    .line 2
    .line 3
    .line 4
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 5
    .line 6
    return-object p0
.end method

.method public static final j0(Lteam/opay/business/payroll/transferConfirmDialog/FastFirstLargeTransferDialog;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lteam/opay/business/payroll/transferConfirmDialog/BaseConfirmSheet;->T()V

    .line 2
    .line 3
    .line 4
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 5
    .line 6
    return-object p0
.end method

.method public static final k0(Lteam/opay/business/payroll/transferConfirmDialog/FastFirstLargeTransferDialog;)Lkotlin/Unit;
    .locals 1

    .line 1
    iget-boolean v0, p0, Lteam/opay/business/payroll/transferConfirmDialog/FastFirstLargeTransferDialog;->D:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Lteam/opay/business/payroll/transferConfirmDialog/BaseConfirmSheet;->V()V

    .line 6
    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    invoke-virtual {p0}, Lteam/opay/business/payroll/transferConfirmDialog/FastFirstLargeTransferDialog;->o0()V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0}, Lteam/opay/core/common/base/BaseSheetFragment;->dismiss()V

    .line 13
    .line 14
    .line 15
    :goto_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 16
    .line 17
    return-object p0
.end method

.method private final l0()V
    .locals 5

    .line 1
    invoke-virtual {p0}, Lteam/opay/business/payroll/transferConfirmDialog/FastFirstLargeTransferDialog;->h0()Lwjb;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v0, v0, Lwjb;->h:Landroidx/appcompat/widget/AppCompatTextView;

    .line 6
    .line 7
    invoke-virtual {p0}, Lteam/opay/business/payroll/transferConfirmDialog/BaseConfirmSheet;->W()Lteam/opay/opb/transfer/bank/bank/TransferAccountResp;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    invoke-virtual {v1}, Lteam/opay/opb/transfer/bank/bank/TransferAccountResp;->getTitle()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    if-eqz v1, :cond_0

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    sget v1, Lteam/opay/business/payroll/R$string;->payroll_large_transfer_title:I

    .line 21
    .line 22
    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    const-string v2, "getString(...)"

    .line 27
    .line 28
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {p0}, Lteam/opay/business/payroll/transferConfirmDialog/FastFirstLargeTransferDialog;->h0()Lwjb;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    iget-object v0, v0, Lwjb;->g:Landroidx/appcompat/widget/AppCompatTextView;

    .line 39
    .line 40
    invoke-virtual {p0}, Lteam/opay/business/payroll/transferConfirmDialog/BaseConfirmSheet;->W()Lteam/opay/opb/transfer/bank/bank/TransferAccountResp;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    const/4 v2, 0x0

    .line 45
    if-eqz v1, :cond_1

    .line 46
    .line 47
    invoke-virtual {v1}, Lteam/opay/opb/transfer/bank/bank/TransferAccountResp;->getContent()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    goto :goto_1

    .line 52
    :cond_1
    move-object v1, v2

    .line 53
    :goto_1
    const-string v3, ""

    .line 54
    .line 55
    if-nez v1, :cond_2

    .line 56
    .line 57
    move-object v1, v3

    .line 58
    :cond_2
    const/4 v4, 0x0

    .line 59
    invoke-static {v1, v4}, Lf47;->a(Ljava/lang/String;I)Landroid/text/Spanned;

    .line 60
    .line 61
    .line 62
    move-result-object v1

    .line 63
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 64
    .line 65
    .line 66
    invoke-virtual {p0}, Lteam/opay/business/payroll/transferConfirmDialog/BaseConfirmSheet;->b0()Lteam/opay/business/payroll/api/BeneficiaryInfo;

    .line 67
    .line 68
    .line 69
    move-result-object v0

    .line 70
    if-eqz v0, :cond_3

    .line 71
    .line 72
    invoke-virtual {v0}, Lteam/opay/business/payroll/api/BeneficiaryInfo;->getServiceType()Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v0

    .line 76
    goto :goto_2

    .line 77
    :cond_3
    move-object v0, v2

    .line 78
    :goto_2
    invoke-static {v0}, Lzi0;->a(Ljava/lang/String;)I

    .line 79
    .line 80
    .line 81
    move-result v0

    .line 82
    invoke-virtual {p0}, Lteam/opay/business/payroll/transferConfirmDialog/FastFirstLargeTransferDialog;->h0()Lwjb;

    .line 83
    .line 84
    .line 85
    move-result-object v1

    .line 86
    iget-object v1, v1, Lwjb;->e:Landroidx/appcompat/widget/AppCompatImageView;

    .line 87
    .line 88
    const-string v4, "bankImg"

    .line 89
    .line 90
    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 91
    .line 92
    .line 93
    invoke-virtual {p0}, Lteam/opay/business/payroll/transferConfirmDialog/BaseConfirmSheet;->b0()Lteam/opay/business/payroll/api/BeneficiaryInfo;

    .line 94
    .line 95
    .line 96
    move-result-object v4

    .line 97
    if-eqz v4, :cond_4

    .line 98
    .line 99
    invoke-virtual {v4}, Lteam/opay/business/payroll/api/BeneficiaryInfo;->getIconUrl()Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object v4

    .line 103
    goto :goto_3

    .line 104
    :cond_4
    move-object v4, v2

    .line 105
    :goto_3
    invoke-static {v1, v4, v0}, Lle7;->d(Landroid/widget/ImageView;Ljava/lang/String;I)V

    .line 106
    .line 107
    .line 108
    invoke-virtual {p0}, Lteam/opay/business/payroll/transferConfirmDialog/FastFirstLargeTransferDialog;->h0()Lwjb;

    .line 109
    .line 110
    .line 111
    move-result-object v0

    .line 112
    iget-object v0, v0, Lwjb;->b:Landroidx/appcompat/widget/AppCompatTextView;

    .line 113
    .line 114
    invoke-virtual {p0}, Lteam/opay/business/payroll/transferConfirmDialog/BaseConfirmSheet;->b0()Lteam/opay/business/payroll/api/BeneficiaryInfo;

    .line 115
    .line 116
    .line 117
    move-result-object v1

    .line 118
    if-eqz v1, :cond_5

    .line 119
    .line 120
    invoke-virtual {v1}, Lteam/opay/business/payroll/api/BeneficiaryInfo;->getRecipientBankAccountNo()Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    move-result-object v1

    .line 124
    goto :goto_4

    .line 125
    :cond_5
    move-object v1, v2

    .line 126
    :goto_4
    if-nez v1, :cond_6

    .line 127
    .line 128
    move-object v1, v3

    .line 129
    :cond_6
    invoke-virtual {p0}, Lteam/opay/business/payroll/transferConfirmDialog/BaseConfirmSheet;->b0()Lteam/opay/business/payroll/api/BeneficiaryInfo;

    .line 130
    .line 131
    .line 132
    move-result-object v4

    .line 133
    if-eqz v4, :cond_7

    .line 134
    .line 135
    invoke-virtual {v4}, Lteam/opay/business/payroll/api/BeneficiaryInfo;->getRecipientBankName()Ljava/lang/String;

    .line 136
    .line 137
    .line 138
    move-result-object v4

    .line 139
    goto :goto_5

    .line 140
    :cond_7
    move-object v4, v2

    .line 141
    :goto_5
    if-nez v4, :cond_8

    .line 142
    .line 143
    goto :goto_6

    .line 144
    :cond_8
    move-object v3, v4

    .line 145
    :goto_6
    new-instance v4, Ljava/lang/StringBuilder;

    .line 146
    .line 147
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 148
    .line 149
    .line 150
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 151
    .line 152
    .line 153
    const-string v1, " | "

    .line 154
    .line 155
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 156
    .line 157
    .line 158
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 159
    .line 160
    .line 161
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 162
    .line 163
    .line 164
    move-result-object v1

    .line 165
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 166
    .line 167
    .line 168
    invoke-virtual {p0}, Lteam/opay/business/payroll/transferConfirmDialog/FastFirstLargeTransferDialog;->h0()Lwjb;

    .line 169
    .line 170
    .line 171
    move-result-object v0

    .line 172
    iget-object v0, v0, Lwjb;->j:Landroidx/recyclerview/widget/RecyclerView;

    .line 173
    .line 174
    new-instance v1, Lteam/opay/business/payroll/transferConfirmDialog/FastFirstLargeTransferDialog$VerifyNameAdapter;

    .line 175
    .line 176
    invoke-virtual {p0}, Lteam/opay/business/payroll/transferConfirmDialog/BaseConfirmSheet;->W()Lteam/opay/opb/transfer/bank/bank/TransferAccountResp;

    .line 177
    .line 178
    .line 179
    move-result-object v3

    .line 180
    if-eqz v3, :cond_9

    .line 181
    .line 182
    invoke-virtual {v3}, Lteam/opay/opb/transfer/bank/bank/TransferAccountResp;->getNameList()Ljava/util/List;

    .line 183
    .line 184
    .line 185
    move-result-object v2

    .line 186
    :cond_9
    if-nez v2, :cond_a

    .line 187
    .line 188
    invoke-static {}, Lkotlin/collections/CollectionsKt;->k()Ljava/util/List;

    .line 189
    .line 190
    .line 191
    move-result-object v2

    .line 192
    :cond_a
    new-instance v3, Ltw5;

    .line 193
    .line 194
    invoke-direct {v3, p0}, Ltw5;-><init>(Lteam/opay/business/payroll/transferConfirmDialog/FastFirstLargeTransferDialog;)V

    .line 195
    .line 196
    .line 197
    invoke-direct {v1, p0, v2, v3}, Lteam/opay/business/payroll/transferConfirmDialog/FastFirstLargeTransferDialog$VerifyNameAdapter;-><init>(Lteam/opay/business/payroll/transferConfirmDialog/FastFirstLargeTransferDialog;Ljava/util/List;Lkotlin/jvm/functions/Function1;)V

    .line 198
    .line 199
    .line 200
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 201
    .line 202
    .line 203
    return-void
.end method

.method public static final m0(Lteam/opay/business/payroll/transferConfirmDialog/FastFirstLargeTransferDialog;Z)Lkotlin/Unit;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lteam/opay/business/payroll/transferConfirmDialog/FastFirstLargeTransferDialog;->D:Z

    .line 2
    .line 3
    invoke-virtual {p0}, Lteam/opay/business/payroll/transferConfirmDialog/FastFirstLargeTransferDialog;->h0()Lwjb;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    iget-object p0, p0, Lwjb;->d:Lcom/google/android/material/button/MaterialButton;

    .line 8
    .line 9
    const/4 p1, 0x1

    .line 10
    invoke-virtual {p0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 11
    .line 12
    .line 13
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 14
    .line 15
    return-object p0
.end method

.method private final n0()V
    .locals 13

    .line 1
    invoke-virtual {p0}, Lteam/opay/business/payroll/transferConfirmDialog/FastFirstLargeTransferDialog;->h0()Lwjb;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v0, v0, Lwjb;->h:Landroidx/appcompat/widget/AppCompatTextView;

    .line 6
    .line 7
    const/high16 v1, 0x41800000    # 16.0f

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0}, Lteam/opay/business/payroll/transferConfirmDialog/FastFirstLargeTransferDialog;->h0()Lwjb;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    iget-object v0, v0, Lwjb;->g:Landroidx/appcompat/widget/AppCompatTextView;

    .line 17
    .line 18
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    instance-of v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 26
    .line 27
    const/4 v3, 0x0

    .line 28
    if-eqz v2, :cond_0

    .line 29
    .line 30
    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 31
    .line 32
    invoke-virtual {v1}, Landroid/view/ViewGroup$MarginLayoutParams;->getMarginStart()I

    .line 33
    .line 34
    .line 35
    move-result v1

    .line 36
    goto :goto_0

    .line 37
    :cond_0
    const/4 v1, 0x0

    .line 38
    :goto_0
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    .line 39
    .line 40
    .line 41
    move-result-object v2

    .line 42
    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 43
    .line 44
    .line 45
    move-result-object v2

    .line 46
    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    .line 47
    .line 48
    const/16 v4, 0xa

    .line 49
    .line 50
    int-to-float v4, v4

    .line 51
    mul-float v2, v2, v4

    .line 52
    .line 53
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 54
    .line 55
    .line 56
    move-result-object v2

    .line 57
    const-class v4, Ljava/lang/Integer;

    .line 58
    .line 59
    invoke-static {v4}, Lkotlin/jvm/internal/Reflection;->b(Ljava/lang/Class;)Lho7;

    .line 60
    .line 61
    .line 62
    move-result-object v5

    .line 63
    sget-object v6, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    .line 64
    .line 65
    invoke-static {v6}, Lkotlin/jvm/internal/Reflection;->b(Ljava/lang/Class;)Lho7;

    .line 66
    .line 67
    .line 68
    move-result-object v7

    .line 69
    invoke-static {v5, v7}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 70
    .line 71
    .line 72
    move-result v7

    .line 73
    const-string v8, "return number type not support"

    .line 74
    .line 75
    if-eqz v7, :cond_1

    .line 76
    .line 77
    check-cast v2, Ljava/lang/Integer;

    .line 78
    .line 79
    goto :goto_1

    .line 80
    :cond_1
    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 81
    .line 82
    invoke-static {v7}, Lkotlin/jvm/internal/Reflection;->b(Ljava/lang/Class;)Lho7;

    .line 83
    .line 84
    .line 85
    move-result-object v7

    .line 86
    invoke-static {v5, v7}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 87
    .line 88
    .line 89
    move-result v7

    .line 90
    if-eqz v7, :cond_2

    .line 91
    .line 92
    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    .line 93
    .line 94
    .line 95
    move-result v2

    .line 96
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 97
    .line 98
    .line 99
    move-result-object v2

    .line 100
    goto :goto_1

    .line 101
    :cond_2
    sget-object v7, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    .line 102
    .line 103
    invoke-static {v7}, Lkotlin/jvm/internal/Reflection;->b(Ljava/lang/Class;)Lho7;

    .line 104
    .line 105
    .line 106
    move-result-object v7

    .line 107
    invoke-static {v5, v7}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 108
    .line 109
    .line 110
    move-result v7

    .line 111
    if-eqz v7, :cond_3

    .line 112
    .line 113
    invoke-virtual {v2}, Ljava/lang/Number;->doubleValue()D

    .line 114
    .line 115
    .line 116
    move-result-wide v9

    .line 117
    invoke-static {v9, v10}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 118
    .line 119
    .line 120
    move-result-object v2

    .line 121
    check-cast v2, Ljava/lang/Integer;

    .line 122
    .line 123
    goto :goto_1

    .line 124
    :cond_3
    sget-object v7, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    .line 125
    .line 126
    invoke-static {v7}, Lkotlin/jvm/internal/Reflection;->b(Ljava/lang/Class;)Lho7;

    .line 127
    .line 128
    .line 129
    move-result-object v7

    .line 130
    invoke-static {v5, v7}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 131
    .line 132
    .line 133
    move-result v5

    .line 134
    if-eqz v5, :cond_19

    .line 135
    .line 136
    invoke-virtual {v2}, Ljava/lang/Number;->longValue()J

    .line 137
    .line 138
    .line 139
    move-result-wide v9

    .line 140
    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 141
    .line 142
    .line 143
    move-result-object v2

    .line 144
    check-cast v2, Ljava/lang/Integer;

    .line 145
    .line 146
    :goto_1
    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    .line 147
    .line 148
    .line 149
    move-result v2

    .line 150
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 151
    .line 152
    .line 153
    move-result-object v5

    .line 154
    instance-of v7, v5, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 155
    .line 156
    if-eqz v7, :cond_4

    .line 157
    .line 158
    check-cast v5, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 159
    .line 160
    invoke-virtual {v5}, Landroid/view/ViewGroup$MarginLayoutParams;->getMarginEnd()I

    .line 161
    .line 162
    .line 163
    move-result v5

    .line 164
    goto :goto_2

    .line 165
    :cond_4
    const/4 v5, 0x0

    .line 166
    :goto_2
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 167
    .line 168
    .line 169
    move-result-object v7

    .line 170
    instance-of v9, v7, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 171
    .line 172
    const/4 v10, 0x0

    .line 173
    if-eqz v9, :cond_5

    .line 174
    .line 175
    check-cast v7, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 176
    .line 177
    goto :goto_3

    .line 178
    :cond_5
    move-object v7, v10

    .line 179
    :goto_3
    if-eqz v7, :cond_6

    .line 180
    .line 181
    iget v7, v7, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 182
    .line 183
    goto :goto_4

    .line 184
    :cond_6
    const/4 v7, 0x0

    .line 185
    :goto_4
    invoke-static {v0, v1, v2, v5, v7}, Lg0g;->g(Landroid/view/View;IIII)V

    .line 186
    .line 187
    .line 188
    const/high16 v1, 0x41400000    # 12.0f

    .line 189
    .line 190
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 191
    .line 192
    .line 193
    invoke-virtual {p0}, Lteam/opay/business/payroll/transferConfirmDialog/FastFirstLargeTransferDialog;->h0()Lwjb;

    .line 194
    .line 195
    .line 196
    move-result-object v0

    .line 197
    iget-object v0, v0, Lwjb;->j:Landroidx/recyclerview/widget/RecyclerView;

    .line 198
    .line 199
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;)V

    .line 200
    .line 201
    .line 202
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 203
    .line 204
    .line 205
    move-result-object v1

    .line 206
    instance-of v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 207
    .line 208
    if-eqz v2, :cond_7

    .line 209
    .line 210
    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 211
    .line 212
    invoke-virtual {v1}, Landroid/view/ViewGroup$MarginLayoutParams;->getMarginStart()I

    .line 213
    .line 214
    .line 215
    move-result v1

    .line 216
    goto :goto_5

    .line 217
    :cond_7
    const/4 v1, 0x0

    .line 218
    :goto_5
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    .line 219
    .line 220
    .line 221
    move-result-object v2

    .line 222
    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 223
    .line 224
    .line 225
    move-result-object v2

    .line 226
    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    .line 227
    .line 228
    const/4 v5, 0x2

    .line 229
    int-to-float v5, v5

    .line 230
    mul-float v2, v2, v5

    .line 231
    .line 232
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 233
    .line 234
    .line 235
    move-result-object v2

    .line 236
    invoke-static {v4}, Lkotlin/jvm/internal/Reflection;->b(Ljava/lang/Class;)Lho7;

    .line 237
    .line 238
    .line 239
    move-result-object v5

    .line 240
    invoke-static {v6}, Lkotlin/jvm/internal/Reflection;->b(Ljava/lang/Class;)Lho7;

    .line 241
    .line 242
    .line 243
    move-result-object v7

    .line 244
    invoke-static {v5, v7}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 245
    .line 246
    .line 247
    move-result v7

    .line 248
    if-eqz v7, :cond_8

    .line 249
    .line 250
    check-cast v2, Ljava/lang/Integer;

    .line 251
    .line 252
    goto :goto_6

    .line 253
    :cond_8
    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 254
    .line 255
    invoke-static {v7}, Lkotlin/jvm/internal/Reflection;->b(Ljava/lang/Class;)Lho7;

    .line 256
    .line 257
    .line 258
    move-result-object v7

    .line 259
    invoke-static {v5, v7}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 260
    .line 261
    .line 262
    move-result v7

    .line 263
    if-eqz v7, :cond_9

    .line 264
    .line 265
    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    .line 266
    .line 267
    .line 268
    move-result v2

    .line 269
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 270
    .line 271
    .line 272
    move-result-object v2

    .line 273
    goto :goto_6

    .line 274
    :cond_9
    sget-object v7, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    .line 275
    .line 276
    invoke-static {v7}, Lkotlin/jvm/internal/Reflection;->b(Ljava/lang/Class;)Lho7;

    .line 277
    .line 278
    .line 279
    move-result-object v7

    .line 280
    invoke-static {v5, v7}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 281
    .line 282
    .line 283
    move-result v7

    .line 284
    if-eqz v7, :cond_a

    .line 285
    .line 286
    invoke-virtual {v2}, Ljava/lang/Number;->doubleValue()D

    .line 287
    .line 288
    .line 289
    move-result-wide v11

    .line 290
    invoke-static {v11, v12}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 291
    .line 292
    .line 293
    move-result-object v2

    .line 294
    check-cast v2, Ljava/lang/Integer;

    .line 295
    .line 296
    goto :goto_6

    .line 297
    :cond_a
    sget-object v7, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    .line 298
    .line 299
    invoke-static {v7}, Lkotlin/jvm/internal/Reflection;->b(Ljava/lang/Class;)Lho7;

    .line 300
    .line 301
    .line 302
    move-result-object v7

    .line 303
    invoke-static {v5, v7}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 304
    .line 305
    .line 306
    move-result v5

    .line 307
    if-eqz v5, :cond_18

    .line 308
    .line 309
    invoke-virtual {v2}, Ljava/lang/Number;->longValue()J

    .line 310
    .line 311
    .line 312
    move-result-wide v11

    .line 313
    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 314
    .line 315
    .line 316
    move-result-object v2

    .line 317
    check-cast v2, Ljava/lang/Integer;

    .line 318
    .line 319
    :goto_6
    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    .line 320
    .line 321
    .line 322
    move-result v2

    .line 323
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 324
    .line 325
    .line 326
    move-result-object v5

    .line 327
    instance-of v7, v5, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 328
    .line 329
    if-eqz v7, :cond_b

    .line 330
    .line 331
    check-cast v5, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 332
    .line 333
    invoke-virtual {v5}, Landroid/view/ViewGroup$MarginLayoutParams;->getMarginEnd()I

    .line 334
    .line 335
    .line 336
    move-result v5

    .line 337
    goto :goto_7

    .line 338
    :cond_b
    const/4 v5, 0x0

    .line 339
    :goto_7
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 340
    .line 341
    .line 342
    move-result-object v7

    .line 343
    instance-of v9, v7, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 344
    .line 345
    if-eqz v9, :cond_c

    .line 346
    .line 347
    move-object v10, v7

    .line 348
    check-cast v10, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 349
    .line 350
    :cond_c
    if-eqz v10, :cond_d

    .line 351
    .line 352
    iget v7, v10, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 353
    .line 354
    goto :goto_8

    .line 355
    :cond_d
    const/4 v7, 0x0

    .line 356
    :goto_8
    invoke-static {v0, v1, v2, v5, v7}, Lg0g;->g(Landroid/view/View;IIII)V

    .line 357
    .line 358
    .line 359
    invoke-virtual {p0}, Lteam/opay/business/payroll/transferConfirmDialog/FastFirstLargeTransferDialog;->h0()Lwjb;

    .line 360
    .line 361
    .line 362
    move-result-object v0

    .line 363
    iget-object v0, v0, Lwjb;->c:Lcom/google/android/material/button/MaterialButton;

    .line 364
    .line 365
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;)V

    .line 366
    .line 367
    .line 368
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 369
    .line 370
    .line 371
    move-result-object v1

    .line 372
    instance-of v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 373
    .line 374
    if-eqz v2, :cond_e

    .line 375
    .line 376
    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 377
    .line 378
    invoke-virtual {v1}, Landroid/view/ViewGroup$MarginLayoutParams;->getMarginStart()I

    .line 379
    .line 380
    .line 381
    move-result v1

    .line 382
    goto :goto_9

    .line 383
    :cond_e
    const/4 v1, 0x0

    .line 384
    :goto_9
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    .line 385
    .line 386
    .line 387
    move-result-object v2

    .line 388
    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 389
    .line 390
    .line 391
    move-result-object v2

    .line 392
    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    .line 393
    .line 394
    const/16 v5, 0x10

    .line 395
    .line 396
    int-to-float v5, v5

    .line 397
    mul-float v2, v2, v5

    .line 398
    .line 399
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 400
    .line 401
    .line 402
    move-result-object v2

    .line 403
    invoke-static {v4}, Lkotlin/jvm/internal/Reflection;->b(Ljava/lang/Class;)Lho7;

    .line 404
    .line 405
    .line 406
    move-result-object v7

    .line 407
    invoke-static {v6}, Lkotlin/jvm/internal/Reflection;->b(Ljava/lang/Class;)Lho7;

    .line 408
    .line 409
    .line 410
    move-result-object v9

    .line 411
    invoke-static {v7, v9}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 412
    .line 413
    .line 414
    move-result v9

    .line 415
    if-eqz v9, :cond_f

    .line 416
    .line 417
    check-cast v2, Ljava/lang/Integer;

    .line 418
    .line 419
    goto :goto_a

    .line 420
    :cond_f
    sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 421
    .line 422
    invoke-static {v9}, Lkotlin/jvm/internal/Reflection;->b(Ljava/lang/Class;)Lho7;

    .line 423
    .line 424
    .line 425
    move-result-object v9

    .line 426
    invoke-static {v7, v9}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 427
    .line 428
    .line 429
    move-result v9

    .line 430
    if-eqz v9, :cond_10

    .line 431
    .line 432
    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    .line 433
    .line 434
    .line 435
    move-result v2

    .line 436
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 437
    .line 438
    .line 439
    move-result-object v2

    .line 440
    goto :goto_a

    .line 441
    :cond_10
    sget-object v9, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    .line 442
    .line 443
    invoke-static {v9}, Lkotlin/jvm/internal/Reflection;->b(Ljava/lang/Class;)Lho7;

    .line 444
    .line 445
    .line 446
    move-result-object v9

    .line 447
    invoke-static {v7, v9}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 448
    .line 449
    .line 450
    move-result v9

    .line 451
    if-eqz v9, :cond_11

    .line 452
    .line 453
    invoke-virtual {v2}, Ljava/lang/Number;->doubleValue()D

    .line 454
    .line 455
    .line 456
    move-result-wide v9

    .line 457
    invoke-static {v9, v10}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 458
    .line 459
    .line 460
    move-result-object v2

    .line 461
    check-cast v2, Ljava/lang/Integer;

    .line 462
    .line 463
    goto :goto_a

    .line 464
    :cond_11
    sget-object v9, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    .line 465
    .line 466
    invoke-static {v9}, Lkotlin/jvm/internal/Reflection;->b(Ljava/lang/Class;)Lho7;

    .line 467
    .line 468
    .line 469
    move-result-object v9

    .line 470
    invoke-static {v7, v9}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 471
    .line 472
    .line 473
    move-result v7

    .line 474
    if-eqz v7, :cond_17

    .line 475
    .line 476
    invoke-virtual {v2}, Ljava/lang/Number;->longValue()J

    .line 477
    .line 478
    .line 479
    move-result-wide v9

    .line 480
    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 481
    .line 482
    .line 483
    move-result-object v2

    .line 484
    check-cast v2, Ljava/lang/Integer;

    .line 485
    .line 486
    :goto_a
    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    .line 487
    .line 488
    .line 489
    move-result v2

    .line 490
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 491
    .line 492
    .line 493
    move-result-object v7

    .line 494
    instance-of v9, v7, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 495
    .line 496
    if-eqz v9, :cond_12

    .line 497
    .line 498
    check-cast v7, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 499
    .line 500
    invoke-virtual {v7}, Landroid/view/ViewGroup$MarginLayoutParams;->getMarginEnd()I

    .line 501
    .line 502
    .line 503
    move-result v3

    .line 504
    :cond_12
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    .line 505
    .line 506
    .line 507
    move-result-object v7

    .line 508
    invoke-virtual {v7}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 509
    .line 510
    .line 511
    move-result-object v7

    .line 512
    iget v7, v7, Landroid/util/DisplayMetrics;->density:F

    .line 513
    .line 514
    mul-float v7, v7, v5

    .line 515
    .line 516
    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 517
    .line 518
    .line 519
    move-result-object v5

    .line 520
    invoke-static {v4}, Lkotlin/jvm/internal/Reflection;->b(Ljava/lang/Class;)Lho7;

    .line 521
    .line 522
    .line 523
    move-result-object v4

    .line 524
    invoke-static {v6}, Lkotlin/jvm/internal/Reflection;->b(Ljava/lang/Class;)Lho7;

    .line 525
    .line 526
    .line 527
    move-result-object v6

    .line 528
    invoke-static {v4, v6}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 529
    .line 530
    .line 531
    move-result v6

    .line 532
    if-eqz v6, :cond_13

    .line 533
    .line 534
    check-cast v5, Ljava/lang/Integer;

    .line 535
    .line 536
    goto :goto_b

    .line 537
    :cond_13
    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 538
    .line 539
    invoke-static {v6}, Lkotlin/jvm/internal/Reflection;->b(Ljava/lang/Class;)Lho7;

    .line 540
    .line 541
    .line 542
    move-result-object v6

    .line 543
    invoke-static {v4, v6}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 544
    .line 545
    .line 546
    move-result v6

    .line 547
    if-eqz v6, :cond_14

    .line 548
    .line 549
    invoke-virtual {v5}, Ljava/lang/Number;->intValue()I

    .line 550
    .line 551
    .line 552
    move-result v4

    .line 553
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 554
    .line 555
    .line 556
    move-result-object v5

    .line 557
    goto :goto_b

    .line 558
    :cond_14
    sget-object v6, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    .line 559
    .line 560
    invoke-static {v6}, Lkotlin/jvm/internal/Reflection;->b(Ljava/lang/Class;)Lho7;

    .line 561
    .line 562
    .line 563
    move-result-object v6

    .line 564
    invoke-static {v4, v6}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 565
    .line 566
    .line 567
    move-result v6

    .line 568
    if-eqz v6, :cond_15

    .line 569
    .line 570
    invoke-virtual {v5}, Ljava/lang/Number;->doubleValue()D

    .line 571
    .line 572
    .line 573
    move-result-wide v4

    .line 574
    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 575
    .line 576
    .line 577
    move-result-object v4

    .line 578
    move-object v5, v4

    .line 579
    check-cast v5, Ljava/lang/Integer;

    .line 580
    .line 581
    goto :goto_b

    .line 582
    :cond_15
    sget-object v6, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    .line 583
    .line 584
    invoke-static {v6}, Lkotlin/jvm/internal/Reflection;->b(Ljava/lang/Class;)Lho7;

    .line 585
    .line 586
    .line 587
    move-result-object v6

    .line 588
    invoke-static {v4, v6}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 589
    .line 590
    .line 591
    move-result v4

    .line 592
    if-eqz v4, :cond_16

    .line 593
    .line 594
    invoke-virtual {v5}, Ljava/lang/Number;->longValue()J

    .line 595
    .line 596
    .line 597
    move-result-wide v4

    .line 598
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 599
    .line 600
    .line 601
    move-result-object v4

    .line 602
    move-object v5, v4

    .line 603
    check-cast v5, Ljava/lang/Integer;

    .line 604
    .line 605
    :goto_b
    invoke-virtual {v5}, Ljava/lang/Number;->intValue()I

    .line 606
    .line 607
    .line 608
    move-result v4

    .line 609
    invoke-static {v0, v1, v2, v3, v4}, Lg0g;->g(Landroid/view/View;IIII)V

    .line 610
    .line 611
    .line 612
    return-void

    .line 613
    :cond_16
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 614
    .line 615
    invoke-direct {v0, v8}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 616
    .line 617
    .line 618
    throw v0

    .line 619
    :cond_17
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 620
    .line 621
    invoke-direct {v0, v8}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 622
    .line 623
    .line 624
    throw v0

    .line 625
    :cond_18
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 626
    .line 627
    invoke-direct {v0, v8}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 628
    .line 629
    .line 630
    throw v0

    .line 631
    :cond_19
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 632
    .line 633
    invoke-direct {v0, v8}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 634
    .line 635
    .line 636
    throw v0
.end method


# virtual methods
.method public a0()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/business/payroll/transferConfirmDialog/FastFirstLargeTransferDialog;->C:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final h0()Lwjb;
    .locals 3

    .line 1
    iget-object v0, p0, Lteam/opay/business/payroll/transferConfirmDialog/FastFirstLargeTransferDialog;->B:Lcom/hi/dhl/binding/viewbind/FragmentViewBinding;

    .line 2
    .line 3
    sget-object v1, Lteam/opay/business/payroll/transferConfirmDialog/FastFirstLargeTransferDialog;->F:[Lzo7;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    aget-object v1, v1, v2

    .line 7
    .line 8
    invoke-virtual {v0, p0, v1}, Lcom/hi/dhl/binding/viewbind/FragmentViewBinding;->g(Landroidx/fragment/app/Fragment;Lzo7;)Lxyf;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    check-cast v0, Lwjb;

    .line 13
    .line 14
    return-object v0
.end method

.method public final o0()V
    .locals 12

    .line 1
    sget v0, Lteam/opay/business/payroll/R$string;->payroll_pay_attention_title:I

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v3

    .line 7
    sget v0, Lteam/opay/business/payroll/R$string;->payroll_pay_attention_content:I

    .line 8
    .line 9
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v4

    .line 13
    const-string v0, "getString(...)"

    .line 14
    .line 15
    invoke-static {v4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    sget v1, Lteam/opay/business/payroll/R$string;->payroll_okay:I

    .line 19
    .line 20
    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v5

    .line 24
    invoke-static {v5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    sget v2, Lteam/opay/core/common/R$drawable;->common_svg_notice:I

    .line 28
    .line 29
    new-instance v0, Lteam/opay/core/common/base/DialogInfo;

    .line 30
    .line 31
    const/16 v10, 0xe0

    .line 32
    .line 33
    const/4 v11, 0x0

    .line 34
    const-string v6, ""

    .line 35
    .line 36
    const/4 v7, 0x0

    .line 37
    const/4 v8, 0x0

    .line 38
    const/4 v9, 0x0

    .line 39
    move-object v1, v0

    .line 40
    invoke-direct/range {v1 .. v11}, Lteam/opay/core/common/base/DialogInfo;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 41
    .line 42
    .line 43
    sget-object v1, Lteam/opay/core/common/base/CorpDialogFragment;->u:Lteam/opay/core/common/base/CorpDialogFragment$Companion;

    .line 44
    .line 45
    invoke-virtual {v1, v0}, Lteam/opay/core/common/base/CorpDialogFragment$Companion;->a(Lteam/opay/core/common/base/DialogInfo;)Lteam/opay/core/common/base/CorpDialogFragment;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    if-eqz v1, :cond_0

    .line 54
    .line 55
    invoke-static {v1, v0}, Lre6;->l(Landroidx/fragment/app/Fragment;Landroidx/fragment/app/DialogFragment;)V

    .line 56
    .line 57
    .line 58
    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0
    .param p1    # Landroid/view/LayoutInflater;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/ViewGroup;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string p2, "inflater"

    .line 2
    .line 3
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lteam/opay/business/payroll/transferConfirmDialog/FastFirstLargeTransferDialog;->h0()Lwjb;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    invoke-virtual {p1}, Lwjb;->a()Landroidx/core/widget/NestedScrollView;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    const-string p2, "getRoot(...)"

    .line 15
    .line 16
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    return-object p1
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1
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
    invoke-super {p0, p1, p2}, Lteam/opay/business/payroll/transferConfirmDialog/BaseConfirmSheet;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 7
    .line 8
    .line 9
    sget-object p1, Lteam/opay/core/common/spi/c;->a:Lteam/opay/core/common/spi/c;

    .line 10
    .line 11
    invoke-virtual {p1}, Lteam/opay/core/common/spi/c;->e()Z

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    if-eqz p1, :cond_0

    .line 16
    .line 17
    invoke-direct {p0}, Lteam/opay/business/payroll/transferConfirmDialog/FastFirstLargeTransferDialog;->n0()V

    .line 18
    .line 19
    .line 20
    :cond_0
    invoke-direct {p0}, Lteam/opay/business/payroll/transferConfirmDialog/FastFirstLargeTransferDialog;->l0()V

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0}, Lteam/opay/business/payroll/transferConfirmDialog/FastFirstLargeTransferDialog;->h0()Lwjb;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    iget-object p1, p1, Lwjb;->f:Landroidx/appcompat/widget/AppCompatImageView;

    .line 28
    .line 29
    const-string p2, "dialogClose"

    .line 30
    .line 31
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    new-instance p2, Lqw5;

    .line 35
    .line 36
    invoke-direct {p2, p0}, Lqw5;-><init>(Lteam/opay/business/payroll/transferConfirmDialog/FastFirstLargeTransferDialog;)V

    .line 37
    .line 38
    .line 39
    invoke-static {p1, p2}, Lde1;->a(Landroid/view/View;Lkotlin/jvm/functions/Function0;)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {p0}, Lteam/opay/business/payroll/transferConfirmDialog/FastFirstLargeTransferDialog;->h0()Lwjb;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    iget-object p1, p1, Lwjb;->c:Lcom/google/android/material/button/MaterialButton;

    .line 47
    .line 48
    const-string p2, "actionCancel"

    .line 49
    .line 50
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    new-instance p2, Lrw5;

    .line 54
    .line 55
    invoke-direct {p2, p0}, Lrw5;-><init>(Lteam/opay/business/payroll/transferConfirmDialog/FastFirstLargeTransferDialog;)V

    .line 56
    .line 57
    .line 58
    invoke-static {p1, p2}, Lde1;->a(Landroid/view/View;Lkotlin/jvm/functions/Function0;)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {p0}, Lteam/opay/business/payroll/transferConfirmDialog/FastFirstLargeTransferDialog;->h0()Lwjb;

    .line 62
    .line 63
    .line 64
    move-result-object p1

    .line 65
    iget-object p1, p1, Lwjb;->d:Lcom/google/android/material/button/MaterialButton;

    .line 66
    .line 67
    const-string p2, "actionConfirm"

    .line 68
    .line 69
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    new-instance p2, Lsw5;

    .line 73
    .line 74
    invoke-direct {p2, p0}, Lsw5;-><init>(Lteam/opay/business/payroll/transferConfirmDialog/FastFirstLargeTransferDialog;)V

    .line 75
    .line 76
    .line 77
    invoke-static {p1, p2}, Lde1;->a(Landroid/view/View;Lkotlin/jvm/functions/Function0;)V

    .line 78
    .line 79
    .line 80
    return-void
.end method
