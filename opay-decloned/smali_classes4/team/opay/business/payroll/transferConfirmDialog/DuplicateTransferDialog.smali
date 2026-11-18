.class public final Lteam/opay/business/payroll/transferConfirmDialog/DuplicateTransferDialog;
.super Lteam/opay/business/payroll/transferConfirmDialog/Hilt_DuplicateTransferDialog;
.source "DuplicateTransferDialog.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lteam/opay/business/payroll/transferConfirmDialog/DuplicateTransferDialog$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000e\n\u0002\u0008\n\u0008\u0007\u0018\u0000 !2\u00020\u0001:\u0001\"B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J+\u0010\u000b\u001a\u00020\n2\u0006\u0010\u0005\u001a\u00020\u00042\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u00062\u0008\u0010\t\u001a\u0004\u0018\u00010\u0008H\u0016\u00a2\u0006\u0004\u0008\u000b\u0010\u000cJ!\u0010\u000f\u001a\u00020\u000e2\u0006\u0010\r\u001a\u00020\n2\u0008\u0010\t\u001a\u0004\u0018\u00010\u0008H\u0016\u00a2\u0006\u0004\u0008\u000f\u0010\u0010J\u000f\u0010\u0011\u001a\u00020\u000eH\u0002\u00a2\u0006\u0004\u0008\u0011\u0010\u0003J\u000f\u0010\u0012\u001a\u00020\u000eH\u0002\u00a2\u0006\u0004\u0008\u0012\u0010\u0003R\u001b\u0010\u0018\u001a\u00020\u00138BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0014\u0010\u0015\u001a\u0004\u0008\u0016\u0010\u0017R\"\u0010 \u001a\u00020\u00198\u0016@\u0016X\u0096\u000e\u00a2\u0006\u0012\n\u0004\u0008\u001a\u0010\u001b\u001a\u0004\u0008\u001c\u0010\u001d\"\u0004\u0008\u001e\u0010\u001f\u00a8\u0006#"
    }
    d2 = {
        "Lteam/opay/business/payroll/transferConfirmDialog/DuplicateTransferDialog;",
        "Lteam/opay/business/payroll/transferConfirmDialog/BaseConfirmDialog;",
        "<init>",
        "()V",
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
        "",
        "onViewCreated",
        "(Landroid/view/View;Landroid/os/Bundle;)V",
        "k0",
        "l0",
        "Lvjb;",
        "z",
        "Lcom/hi/dhl/binding/viewbind/FragmentViewBinding;",
        "h0",
        "()Lvjb;",
        "binding",
        "",
        "A",
        "Ljava/lang/String;",
        "c0",
        "()Ljava/lang/String;",
        "setNoticeType",
        "(Ljava/lang/String;)V",
        "noticeType",
        "B",
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
.field public static final B:Lteam/opay/business/payroll/transferConfirmDialog/DuplicateTransferDialog$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final synthetic C:[Lzo7;
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
.field public A:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final z:Lcom/hi/dhl/binding/viewbind/FragmentViewBinding;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1
    new-instance v0, Lkotlin/jvm/internal/PropertyReference1Impl;

    .line 2
    .line 3
    const-string v1, "getBinding()Lteam/opay/business/payroll/databinding/PayrollDialogDuplicateTransferBinding;"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    const-class v3, Lteam/opay/business/payroll/transferConfirmDialog/DuplicateTransferDialog;

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
    sput-object v1, Lteam/opay/business/payroll/transferConfirmDialog/DuplicateTransferDialog;->C:[Lzo7;

    .line 23
    .line 24
    new-instance v0, Lteam/opay/business/payroll/transferConfirmDialog/DuplicateTransferDialog$Companion;

    .line 25
    .line 26
    const/4 v1, 0x0

    .line 27
    invoke-direct {v0, v1}, Lteam/opay/business/payroll/transferConfirmDialog/DuplicateTransferDialog$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 28
    .line 29
    .line 30
    sput-object v0, Lteam/opay/business/payroll/transferConfirmDialog/DuplicateTransferDialog;->B:Lteam/opay/business/payroll/transferConfirmDialog/DuplicateTransferDialog$Companion;

    .line 31
    .line 32
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lteam/opay/business/payroll/transferConfirmDialog/Hilt_DuplicateTransferDialog;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/hi/dhl/binding/viewbind/FragmentViewBinding;

    .line 5
    .line 6
    const-class v1, Lvjb;

    .line 7
    .line 8
    invoke-direct {v0, v1, p0}, Lcom/hi/dhl/binding/viewbind/FragmentViewBinding;-><init>(Ljava/lang/Class;Landroidx/fragment/app/Fragment;)V

    .line 9
    .line 10
    .line 11
    iput-object v0, p0, Lteam/opay/business/payroll/transferConfirmDialog/DuplicateTransferDialog;->z:Lcom/hi/dhl/binding/viewbind/FragmentViewBinding;

    .line 12
    .line 13
    const-string v0, "REPEAT"

    .line 14
    .line 15
    iput-object v0, p0, Lteam/opay/business/payroll/transferConfirmDialog/DuplicateTransferDialog;->A:Ljava/lang/String;

    .line 16
    .line 17
    return-void
.end method

.method public static synthetic f0(Lteam/opay/business/payroll/transferConfirmDialog/DuplicateTransferDialog;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/business/payroll/transferConfirmDialog/DuplicateTransferDialog;->j0(Lteam/opay/business/payroll/transferConfirmDialog/DuplicateTransferDialog;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic g0(Lteam/opay/business/payroll/transferConfirmDialog/DuplicateTransferDialog;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/business/payroll/transferConfirmDialog/DuplicateTransferDialog;->i0(Lteam/opay/business/payroll/transferConfirmDialog/DuplicateTransferDialog;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final i0(Lteam/opay/business/payroll/transferConfirmDialog/DuplicateTransferDialog;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lteam/opay/business/payroll/transferConfirmDialog/BaseConfirmDialog;->V()V

    .line 2
    .line 3
    .line 4
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 5
    .line 6
    return-object p0
.end method

.method public static final j0(Lteam/opay/business/payroll/transferConfirmDialog/DuplicateTransferDialog;)Lkotlin/Unit;
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    invoke-static {p0, v0, v1, v0}, Lteam/opay/business/payroll/transferConfirmDialog/BaseConfirmDialog;->Y(Lteam/opay/business/payroll/transferConfirmDialog/BaseConfirmDialog;Ljava/lang/Long;ILjava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 7
    .line 8
    return-object p0
.end method


# virtual methods
.method public c0()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/business/payroll/transferConfirmDialog/DuplicateTransferDialog;->A:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final h0()Lvjb;
    .locals 3

    .line 1
    iget-object v0, p0, Lteam/opay/business/payroll/transferConfirmDialog/DuplicateTransferDialog;->z:Lcom/hi/dhl/binding/viewbind/FragmentViewBinding;

    .line 2
    .line 3
    sget-object v1, Lteam/opay/business/payroll/transferConfirmDialog/DuplicateTransferDialog;->C:[Lzo7;

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
    check-cast v0, Lvjb;

    .line 13
    .line 14
    return-object v0
.end method

.method public final k0()V
    .locals 6

    .line 1
    invoke-virtual {p0}, Lteam/opay/business/payroll/transferConfirmDialog/DuplicateTransferDialog;->h0()Lvjb;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v0, v0, Lvjb;->f:Landroidx/appcompat/widget/AppCompatTextView;

    .line 6
    .line 7
    invoke-virtual {p0}, Lteam/opay/business/payroll/transferConfirmDialog/BaseConfirmDialog;->d0()Lteam/opay/business/payroll/api/BeneficiaryInfo;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    const/4 v2, 0x0

    .line 12
    if-eqz v1, :cond_0

    .line 13
    .line 14
    invoke-virtual {v1}, Lteam/opay/business/payroll/api/BeneficiaryInfo;->getRecipientBankName()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    move-object v1, v2

    .line 20
    :goto_0
    const-string v3, ""

    .line 21
    .line 22
    if-nez v1, :cond_1

    .line 23
    .line 24
    move-object v1, v3

    .line 25
    :cond_1
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {p0}, Lteam/opay/business/payroll/transferConfirmDialog/DuplicateTransferDialog;->h0()Lvjb;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    iget-object v0, v0, Lvjb;->b:Landroidx/appcompat/widget/AppCompatTextView;

    .line 33
    .line 34
    invoke-virtual {p0}, Lteam/opay/business/payroll/transferConfirmDialog/BaseConfirmDialog;->d0()Lteam/opay/business/payroll/api/BeneficiaryInfo;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    if-eqz v1, :cond_2

    .line 39
    .line 40
    invoke-virtual {v1}, Lteam/opay/business/payroll/api/BeneficiaryInfo;->getRecipientBankAccountNo()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    goto :goto_1

    .line 45
    :cond_2
    move-object v1, v2

    .line 46
    :goto_1
    if-nez v1, :cond_3

    .line 47
    .line 48
    move-object v1, v3

    .line 49
    :cond_3
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {p0}, Lteam/opay/business/payroll/transferConfirmDialog/DuplicateTransferDialog;->h0()Lvjb;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    iget-object v0, v0, Lvjb;->m:Landroidx/appcompat/widget/AppCompatTextView;

    .line 57
    .line 58
    invoke-virtual {p0}, Lteam/opay/business/payroll/transferConfirmDialog/BaseConfirmDialog;->Z()Lteam/opay/opb/transfer/bank/bank/TransferAccountResp;

    .line 59
    .line 60
    .line 61
    move-result-object v1

    .line 62
    if-eqz v1, :cond_4

    .line 63
    .line 64
    invoke-virtual {v1}, Lteam/opay/opb/transfer/bank/bank/TransferAccountResp;->getTitle()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v1

    .line 68
    goto :goto_2

    .line 69
    :cond_4
    move-object v1, v2

    .line 70
    :goto_2
    if-nez v1, :cond_5

    .line 71
    .line 72
    move-object v1, v3

    .line 73
    :cond_5
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 74
    .line 75
    .line 76
    invoke-virtual {p0}, Lteam/opay/business/payroll/transferConfirmDialog/DuplicateTransferDialog;->h0()Lvjb;

    .line 77
    .line 78
    .line 79
    move-result-object v0

    .line 80
    iget-object v0, v0, Lvjb;->h:Landroidx/appcompat/widget/AppCompatTextView;

    .line 81
    .line 82
    invoke-virtual {p0}, Lteam/opay/business/payroll/transferConfirmDialog/BaseConfirmDialog;->Z()Lteam/opay/opb/transfer/bank/bank/TransferAccountResp;

    .line 83
    .line 84
    .line 85
    move-result-object v1

    .line 86
    if-eqz v1, :cond_6

    .line 87
    .line 88
    invoke-virtual {v1}, Lteam/opay/opb/transfer/bank/bank/TransferAccountResp;->getContent()Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object v1

    .line 92
    goto :goto_3

    .line 93
    :cond_6
    move-object v1, v2

    .line 94
    :goto_3
    if-nez v1, :cond_7

    .line 95
    .line 96
    move-object v1, v3

    .line 97
    :cond_7
    const/4 v4, 0x0

    .line 98
    invoke-static {v1, v4}, Lf47;->a(Ljava/lang/String;I)Landroid/text/Spanned;

    .line 99
    .line 100
    .line 101
    move-result-object v1

    .line 102
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 103
    .line 104
    .line 105
    invoke-virtual {p0}, Lteam/opay/business/payroll/transferConfirmDialog/DuplicateTransferDialog;->h0()Lvjb;

    .line 106
    .line 107
    .line 108
    move-result-object v0

    .line 109
    iget-object v0, v0, Lvjb;->g:Lteam/opay/core/widget/AmountView;

    .line 110
    .line 111
    invoke-virtual {p0}, Lteam/opay/business/payroll/transferConfirmDialog/BaseConfirmDialog;->d0()Lteam/opay/business/payroll/api/BeneficiaryInfo;

    .line 112
    .line 113
    .line 114
    move-result-object v1

    .line 115
    if-eqz v1, :cond_8

    .line 116
    .line 117
    invoke-virtual {v1}, Lteam/opay/business/payroll/api/BeneficiaryInfo;->getAmount()Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object v1

    .line 121
    if-eqz v1, :cond_8

    .line 122
    .line 123
    const/4 v5, 0x1

    .line 124
    invoke-static {v1, v4, v5, v2}, Lor;->c(Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    .line 125
    .line 126
    .line 127
    move-result-object v1

    .line 128
    goto :goto_4

    .line 129
    :cond_8
    move-object v1, v2

    .line 130
    :goto_4
    invoke-virtual {v0, v1}, Lteam/opay/core/widget/AmountView;->setText(Ljava/lang/String;)V

    .line 131
    .line 132
    .line 133
    invoke-virtual {p0}, Lteam/opay/business/payroll/transferConfirmDialog/DuplicateTransferDialog;->h0()Lvjb;

    .line 134
    .line 135
    .line 136
    move-result-object v0

    .line 137
    iget-object v0, v0, Lvjb;->j:Landroidx/appcompat/widget/AppCompatTextView;

    .line 138
    .line 139
    invoke-virtual {p0}, Lteam/opay/business/payroll/transferConfirmDialog/BaseConfirmDialog;->d0()Lteam/opay/business/payroll/api/BeneficiaryInfo;

    .line 140
    .line 141
    .line 142
    move-result-object v1

    .line 143
    if-eqz v1, :cond_9

    .line 144
    .line 145
    invoke-virtual {v1}, Lteam/opay/business/payroll/api/BeneficiaryInfo;->getRecipientBankAccountName()Ljava/lang/String;

    .line 146
    .line 147
    .line 148
    move-result-object v1

    .line 149
    goto :goto_5

    .line 150
    :cond_9
    move-object v1, v2

    .line 151
    :goto_5
    if-nez v1, :cond_a

    .line 152
    .line 153
    move-object v1, v3

    .line 154
    :cond_a
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 155
    .line 156
    .line 157
    invoke-virtual {p0}, Lteam/opay/business/payroll/transferConfirmDialog/DuplicateTransferDialog;->h0()Lvjb;

    .line 158
    .line 159
    .line 160
    move-result-object v0

    .line 161
    iget-object v0, v0, Lvjb;->k:Landroidx/appcompat/widget/AppCompatTextView;

    .line 162
    .line 163
    invoke-virtual {p0}, Lteam/opay/business/payroll/transferConfirmDialog/BaseConfirmDialog;->Z()Lteam/opay/opb/transfer/bank/bank/TransferAccountResp;

    .line 164
    .line 165
    .line 166
    move-result-object v1

    .line 167
    if-eqz v1, :cond_b

    .line 168
    .line 169
    invoke-virtual {v1}, Lteam/opay/opb/transfer/bank/bank/TransferAccountResp;->getTime()Ljava/lang/String;

    .line 170
    .line 171
    .line 172
    move-result-object v1

    .line 173
    goto :goto_6

    .line 174
    :cond_b
    move-object v1, v2

    .line 175
    :goto_6
    if-nez v1, :cond_c

    .line 176
    .line 177
    move-object v1, v3

    .line 178
    :cond_c
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 179
    .line 180
    .line 181
    invoke-virtual {p0}, Lteam/opay/business/payroll/transferConfirmDialog/DuplicateTransferDialog;->h0()Lvjb;

    .line 182
    .line 183
    .line 184
    move-result-object v0

    .line 185
    iget-object v0, v0, Lvjb;->l:Landroidx/appcompat/widget/AppCompatTextView;

    .line 186
    .line 187
    invoke-virtual {p0}, Lteam/opay/business/payroll/transferConfirmDialog/BaseConfirmDialog;->Z()Lteam/opay/opb/transfer/bank/bank/TransferAccountResp;

    .line 188
    .line 189
    .line 190
    move-result-object v1

    .line 191
    if-eqz v1, :cond_d

    .line 192
    .line 193
    invoke-virtual {v1}, Lteam/opay/opb/transfer/bank/bank/TransferAccountResp;->getTimeUnit()Ljava/lang/String;

    .line 194
    .line 195
    .line 196
    move-result-object v2

    .line 197
    :cond_d
    if-nez v2, :cond_e

    .line 198
    .line 199
    goto :goto_7

    .line 200
    :cond_e
    move-object v3, v2

    .line 201
    :goto_7
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 202
    .line 203
    .line 204
    return-void
.end method

.method public final l0()V
    .locals 12

    .line 1
    invoke-virtual {p0}, Lteam/opay/business/payroll/transferConfirmDialog/DuplicateTransferDialog;->h0()Lvjb;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v0, v0, Lvjb;->p:Lteam/opay/core/widget/fillet/CorpConstraintLayout;

    .line 6
    .line 7
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    instance-of v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 15
    .line 16
    const/4 v3, 0x0

    .line 17
    if-eqz v2, :cond_0

    .line 18
    .line 19
    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 20
    .line 21
    invoke-virtual {v1}, Landroid/view/ViewGroup$MarginLayoutParams;->getMarginStart()I

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    goto :goto_0

    .line 26
    :cond_0
    const/4 v1, 0x0

    .line 27
    :goto_0
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    .line 36
    .line 37
    const/16 v4, 0x2c

    .line 38
    .line 39
    int-to-float v4, v4

    .line 40
    mul-float v2, v2, v4

    .line 41
    .line 42
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 43
    .line 44
    .line 45
    move-result-object v2

    .line 46
    const-class v4, Ljava/lang/Integer;

    .line 47
    .line 48
    invoke-static {v4}, Lkotlin/jvm/internal/Reflection;->b(Ljava/lang/Class;)Lho7;

    .line 49
    .line 50
    .line 51
    move-result-object v5

    .line 52
    sget-object v6, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    .line 53
    .line 54
    invoke-static {v6}, Lkotlin/jvm/internal/Reflection;->b(Ljava/lang/Class;)Lho7;

    .line 55
    .line 56
    .line 57
    move-result-object v7

    .line 58
    invoke-static {v5, v7}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 59
    .line 60
    .line 61
    move-result v7

    .line 62
    const-string v8, "return number type not support"

    .line 63
    .line 64
    if-eqz v7, :cond_1

    .line 65
    .line 66
    check-cast v2, Ljava/lang/Integer;

    .line 67
    .line 68
    goto :goto_1

    .line 69
    :cond_1
    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 70
    .line 71
    invoke-static {v7}, Lkotlin/jvm/internal/Reflection;->b(Ljava/lang/Class;)Lho7;

    .line 72
    .line 73
    .line 74
    move-result-object v7

    .line 75
    invoke-static {v5, v7}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 76
    .line 77
    .line 78
    move-result v7

    .line 79
    if-eqz v7, :cond_2

    .line 80
    .line 81
    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    .line 82
    .line 83
    .line 84
    move-result v2

    .line 85
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 86
    .line 87
    .line 88
    move-result-object v2

    .line 89
    goto :goto_1

    .line 90
    :cond_2
    sget-object v7, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    .line 91
    .line 92
    invoke-static {v7}, Lkotlin/jvm/internal/Reflection;->b(Ljava/lang/Class;)Lho7;

    .line 93
    .line 94
    .line 95
    move-result-object v7

    .line 96
    invoke-static {v5, v7}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 97
    .line 98
    .line 99
    move-result v7

    .line 100
    if-eqz v7, :cond_3

    .line 101
    .line 102
    invoke-virtual {v2}, Ljava/lang/Number;->doubleValue()D

    .line 103
    .line 104
    .line 105
    move-result-wide v9

    .line 106
    invoke-static {v9, v10}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 107
    .line 108
    .line 109
    move-result-object v2

    .line 110
    check-cast v2, Ljava/lang/Integer;

    .line 111
    .line 112
    goto :goto_1

    .line 113
    :cond_3
    sget-object v7, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    .line 114
    .line 115
    invoke-static {v7}, Lkotlin/jvm/internal/Reflection;->b(Ljava/lang/Class;)Lho7;

    .line 116
    .line 117
    .line 118
    move-result-object v7

    .line 119
    invoke-static {v5, v7}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 120
    .line 121
    .line 122
    move-result v5

    .line 123
    if-eqz v5, :cond_25

    .line 124
    .line 125
    invoke-virtual {v2}, Ljava/lang/Number;->longValue()J

    .line 126
    .line 127
    .line 128
    move-result-wide v9

    .line 129
    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 130
    .line 131
    .line 132
    move-result-object v2

    .line 133
    check-cast v2, Ljava/lang/Integer;

    .line 134
    .line 135
    :goto_1
    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    .line 136
    .line 137
    .line 138
    move-result v2

    .line 139
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 140
    .line 141
    .line 142
    move-result-object v5

    .line 143
    instance-of v7, v5, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 144
    .line 145
    if-eqz v7, :cond_4

    .line 146
    .line 147
    check-cast v5, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 148
    .line 149
    invoke-virtual {v5}, Landroid/view/ViewGroup$MarginLayoutParams;->getMarginEnd()I

    .line 150
    .line 151
    .line 152
    move-result v5

    .line 153
    goto :goto_2

    .line 154
    :cond_4
    const/4 v5, 0x0

    .line 155
    :goto_2
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 156
    .line 157
    .line 158
    move-result-object v7

    .line 159
    instance-of v9, v7, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 160
    .line 161
    if-eqz v9, :cond_5

    .line 162
    .line 163
    check-cast v7, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 164
    .line 165
    goto :goto_3

    .line 166
    :cond_5
    const/4 v7, 0x0

    .line 167
    :goto_3
    if-eqz v7, :cond_6

    .line 168
    .line 169
    iget v7, v7, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 170
    .line 171
    goto :goto_4

    .line 172
    :cond_6
    const/4 v7, 0x0

    .line 173
    :goto_4
    invoke-static {v0, v1, v2, v5, v7}, Lg0g;->g(Landroid/view/View;IIII)V

    .line 174
    .line 175
    .line 176
    invoke-virtual {v0}, Landroid/view/View;->getPaddingStart()I

    .line 177
    .line 178
    .line 179
    move-result v1

    .line 180
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    .line 181
    .line 182
    .line 183
    move-result-object v2

    .line 184
    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 185
    .line 186
    .line 187
    move-result-object v2

    .line 188
    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    .line 189
    .line 190
    const/16 v5, 0xe

    .line 191
    .line 192
    int-to-float v5, v5

    .line 193
    mul-float v2, v2, v5

    .line 194
    .line 195
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 196
    .line 197
    .line 198
    move-result-object v2

    .line 199
    invoke-static {v4}, Lkotlin/jvm/internal/Reflection;->b(Ljava/lang/Class;)Lho7;

    .line 200
    .line 201
    .line 202
    move-result-object v7

    .line 203
    invoke-static {v6}, Lkotlin/jvm/internal/Reflection;->b(Ljava/lang/Class;)Lho7;

    .line 204
    .line 205
    .line 206
    move-result-object v9

    .line 207
    invoke-static {v7, v9}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 208
    .line 209
    .line 210
    move-result v9

    .line 211
    if-eqz v9, :cond_7

    .line 212
    .line 213
    check-cast v2, Ljava/lang/Integer;

    .line 214
    .line 215
    goto :goto_5

    .line 216
    :cond_7
    sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 217
    .line 218
    invoke-static {v9}, Lkotlin/jvm/internal/Reflection;->b(Ljava/lang/Class;)Lho7;

    .line 219
    .line 220
    .line 221
    move-result-object v9

    .line 222
    invoke-static {v7, v9}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 223
    .line 224
    .line 225
    move-result v9

    .line 226
    if-eqz v9, :cond_8

    .line 227
    .line 228
    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    .line 229
    .line 230
    .line 231
    move-result v2

    .line 232
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 233
    .line 234
    .line 235
    move-result-object v2

    .line 236
    goto :goto_5

    .line 237
    :cond_8
    sget-object v9, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    .line 238
    .line 239
    invoke-static {v9}, Lkotlin/jvm/internal/Reflection;->b(Ljava/lang/Class;)Lho7;

    .line 240
    .line 241
    .line 242
    move-result-object v9

    .line 243
    invoke-static {v7, v9}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 244
    .line 245
    .line 246
    move-result v9

    .line 247
    if-eqz v9, :cond_9

    .line 248
    .line 249
    invoke-virtual {v2}, Ljava/lang/Number;->doubleValue()D

    .line 250
    .line 251
    .line 252
    move-result-wide v9

    .line 253
    invoke-static {v9, v10}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 254
    .line 255
    .line 256
    move-result-object v2

    .line 257
    check-cast v2, Ljava/lang/Integer;

    .line 258
    .line 259
    goto :goto_5

    .line 260
    :cond_9
    sget-object v9, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    .line 261
    .line 262
    invoke-static {v9}, Lkotlin/jvm/internal/Reflection;->b(Ljava/lang/Class;)Lho7;

    .line 263
    .line 264
    .line 265
    move-result-object v9

    .line 266
    invoke-static {v7, v9}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 267
    .line 268
    .line 269
    move-result v7

    .line 270
    if-eqz v7, :cond_24

    .line 271
    .line 272
    invoke-virtual {v2}, Ljava/lang/Number;->longValue()J

    .line 273
    .line 274
    .line 275
    move-result-wide v9

    .line 276
    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 277
    .line 278
    .line 279
    move-result-object v2

    .line 280
    check-cast v2, Ljava/lang/Integer;

    .line 281
    .line 282
    :goto_5
    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    .line 283
    .line 284
    .line 285
    move-result v2

    .line 286
    invoke-virtual {v0}, Landroid/view/View;->getPaddingEnd()I

    .line 287
    .line 288
    .line 289
    move-result v7

    .line 290
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    .line 291
    .line 292
    .line 293
    move-result-object v9

    .line 294
    invoke-virtual {v9}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 295
    .line 296
    .line 297
    move-result-object v9

    .line 298
    iget v9, v9, Landroid/util/DisplayMetrics;->density:F

    .line 299
    .line 300
    mul-float v9, v9, v5

    .line 301
    .line 302
    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 303
    .line 304
    .line 305
    move-result-object v9

    .line 306
    invoke-static {v4}, Lkotlin/jvm/internal/Reflection;->b(Ljava/lang/Class;)Lho7;

    .line 307
    .line 308
    .line 309
    move-result-object v10

    .line 310
    invoke-static {v6}, Lkotlin/jvm/internal/Reflection;->b(Ljava/lang/Class;)Lho7;

    .line 311
    .line 312
    .line 313
    move-result-object v11

    .line 314
    invoke-static {v10, v11}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 315
    .line 316
    .line 317
    move-result v11

    .line 318
    if-eqz v11, :cond_a

    .line 319
    .line 320
    check-cast v9, Ljava/lang/Integer;

    .line 321
    .line 322
    goto :goto_6

    .line 323
    :cond_a
    sget-object v11, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 324
    .line 325
    invoke-static {v11}, Lkotlin/jvm/internal/Reflection;->b(Ljava/lang/Class;)Lho7;

    .line 326
    .line 327
    .line 328
    move-result-object v11

    .line 329
    invoke-static {v10, v11}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 330
    .line 331
    .line 332
    move-result v11

    .line 333
    if-eqz v11, :cond_b

    .line 334
    .line 335
    invoke-virtual {v9}, Ljava/lang/Number;->intValue()I

    .line 336
    .line 337
    .line 338
    move-result v9

    .line 339
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 340
    .line 341
    .line 342
    move-result-object v9

    .line 343
    goto :goto_6

    .line 344
    :cond_b
    sget-object v11, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    .line 345
    .line 346
    invoke-static {v11}, Lkotlin/jvm/internal/Reflection;->b(Ljava/lang/Class;)Lho7;

    .line 347
    .line 348
    .line 349
    move-result-object v11

    .line 350
    invoke-static {v10, v11}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 351
    .line 352
    .line 353
    move-result v11

    .line 354
    if-eqz v11, :cond_c

    .line 355
    .line 356
    invoke-virtual {v9}, Ljava/lang/Number;->doubleValue()D

    .line 357
    .line 358
    .line 359
    move-result-wide v9

    .line 360
    invoke-static {v9, v10}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 361
    .line 362
    .line 363
    move-result-object v9

    .line 364
    check-cast v9, Ljava/lang/Integer;

    .line 365
    .line 366
    goto :goto_6

    .line 367
    :cond_c
    sget-object v11, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    .line 368
    .line 369
    invoke-static {v11}, Lkotlin/jvm/internal/Reflection;->b(Ljava/lang/Class;)Lho7;

    .line 370
    .line 371
    .line 372
    move-result-object v11

    .line 373
    invoke-static {v10, v11}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 374
    .line 375
    .line 376
    move-result v10

    .line 377
    if-eqz v10, :cond_23

    .line 378
    .line 379
    invoke-virtual {v9}, Ljava/lang/Number;->longValue()J

    .line 380
    .line 381
    .line 382
    move-result-wide v9

    .line 383
    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 384
    .line 385
    .line 386
    move-result-object v9

    .line 387
    check-cast v9, Ljava/lang/Integer;

    .line 388
    .line 389
    :goto_6
    invoke-virtual {v9}, Ljava/lang/Number;->intValue()I

    .line 390
    .line 391
    .line 392
    move-result v9

    .line 393
    invoke-virtual {v0, v1, v2, v7, v9}, Landroid/view/View;->setPadding(IIII)V

    .line 394
    .line 395
    .line 396
    invoke-virtual {p0}, Lteam/opay/business/payroll/transferConfirmDialog/DuplicateTransferDialog;->h0()Lvjb;

    .line 397
    .line 398
    .line 399
    move-result-object v0

    .line 400
    iget-object v0, v0, Lvjb;->m:Landroidx/appcompat/widget/AppCompatTextView;

    .line 401
    .line 402
    const/high16 v1, 0x41500000    # 13.0f

    .line 403
    .line 404
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 405
    .line 406
    .line 407
    invoke-virtual {p0}, Lteam/opay/business/payroll/transferConfirmDialog/DuplicateTransferDialog;->h0()Lvjb;

    .line 408
    .line 409
    .line 410
    move-result-object v0

    .line 411
    iget-object v0, v0, Lvjb;->m:Landroidx/appcompat/widget/AppCompatTextView;

    .line 412
    .line 413
    invoke-virtual {p0}, Lteam/opay/opb/common/base/EdgeDialogFragment;->getFragmentActivity()Landroidx/fragment/app/FragmentActivity;

    .line 414
    .line 415
    .line 416
    move-result-object v1

    .line 417
    sget v2, Lteam/opay/core/common/R$font;->roboto_900:I

    .line 418
    .line 419
    const/4 v7, 0x1

    .line 420
    invoke-static {v1, v2, v7}, Lwie;->n(Landroid/content/Context;II)Landroid/graphics/Typeface;

    .line 421
    .line 422
    .line 423
    move-result-object v1

    .line 424
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 425
    .line 426
    .line 427
    invoke-virtual {p0}, Lteam/opay/business/payroll/transferConfirmDialog/DuplicateTransferDialog;->h0()Lvjb;

    .line 428
    .line 429
    .line 430
    move-result-object v0

    .line 431
    iget-object v0, v0, Lvjb;->h:Landroidx/appcompat/widget/AppCompatTextView;

    .line 432
    .line 433
    const/high16 v1, 0x41400000    # 12.0f

    .line 434
    .line 435
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 436
    .line 437
    .line 438
    invoke-virtual {p0}, Lteam/opay/business/payroll/transferConfirmDialog/DuplicateTransferDialog;->h0()Lvjb;

    .line 439
    .line 440
    .line 441
    move-result-object v0

    .line 442
    iget-object v0, v0, Lvjb;->q:Landroidx/appcompat/widget/AppCompatTextView;

    .line 443
    .line 444
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 445
    .line 446
    .line 447
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;)V

    .line 448
    .line 449
    .line 450
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    .line 451
    .line 452
    .line 453
    move-result-object v1

    .line 454
    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 455
    .line 456
    .line 457
    move-result-object v1

    .line 458
    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    .line 459
    .line 460
    mul-float v1, v1, v5

    .line 461
    .line 462
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 463
    .line 464
    .line 465
    move-result-object v1

    .line 466
    invoke-static {v4}, Lkotlin/jvm/internal/Reflection;->b(Ljava/lang/Class;)Lho7;

    .line 467
    .line 468
    .line 469
    move-result-object v2

    .line 470
    invoke-static {v6}, Lkotlin/jvm/internal/Reflection;->b(Ljava/lang/Class;)Lho7;

    .line 471
    .line 472
    .line 473
    move-result-object v5

    .line 474
    invoke-static {v2, v5}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 475
    .line 476
    .line 477
    move-result v5

    .line 478
    if-eqz v5, :cond_d

    .line 479
    .line 480
    check-cast v1, Ljava/lang/Integer;

    .line 481
    .line 482
    goto :goto_7

    .line 483
    :cond_d
    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 484
    .line 485
    invoke-static {v5}, Lkotlin/jvm/internal/Reflection;->b(Ljava/lang/Class;)Lho7;

    .line 486
    .line 487
    .line 488
    move-result-object v5

    .line 489
    invoke-static {v2, v5}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 490
    .line 491
    .line 492
    move-result v5

    .line 493
    if-eqz v5, :cond_e

    .line 494
    .line 495
    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    .line 496
    .line 497
    .line 498
    move-result v1

    .line 499
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 500
    .line 501
    .line 502
    move-result-object v1

    .line 503
    goto :goto_7

    .line 504
    :cond_e
    sget-object v5, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    .line 505
    .line 506
    invoke-static {v5}, Lkotlin/jvm/internal/Reflection;->b(Ljava/lang/Class;)Lho7;

    .line 507
    .line 508
    .line 509
    move-result-object v5

    .line 510
    invoke-static {v2, v5}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 511
    .line 512
    .line 513
    move-result v5

    .line 514
    if-eqz v5, :cond_f

    .line 515
    .line 516
    invoke-virtual {v1}, Ljava/lang/Number;->doubleValue()D

    .line 517
    .line 518
    .line 519
    move-result-wide v1

    .line 520
    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 521
    .line 522
    .line 523
    move-result-object v1

    .line 524
    check-cast v1, Ljava/lang/Integer;

    .line 525
    .line 526
    goto :goto_7

    .line 527
    :cond_f
    sget-object v5, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    .line 528
    .line 529
    invoke-static {v5}, Lkotlin/jvm/internal/Reflection;->b(Ljava/lang/Class;)Lho7;

    .line 530
    .line 531
    .line 532
    move-result-object v5

    .line 533
    invoke-static {v2, v5}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 534
    .line 535
    .line 536
    move-result v2

    .line 537
    if-eqz v2, :cond_22

    .line 538
    .line 539
    invoke-virtual {v1}, Ljava/lang/Number;->longValue()J

    .line 540
    .line 541
    .line 542
    move-result-wide v1

    .line 543
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 544
    .line 545
    .line 546
    move-result-object v1

    .line 547
    check-cast v1, Ljava/lang/Integer;

    .line 548
    .line 549
    :goto_7
    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    .line 550
    .line 551
    .line 552
    move-result v1

    .line 553
    invoke-static {v0, v3, v1, v3, v3}, Lg0g;->g(Landroid/view/View;IIII)V

    .line 554
    .line 555
    .line 556
    invoke-virtual {p0}, Lteam/opay/business/payroll/transferConfirmDialog/DuplicateTransferDialog;->h0()Lvjb;

    .line 557
    .line 558
    .line 559
    move-result-object v0

    .line 560
    iget-object v0, v0, Lvjb;->j:Landroidx/appcompat/widget/AppCompatTextView;

    .line 561
    .line 562
    const/high16 v1, 0x41600000    # 14.0f

    .line 563
    .line 564
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 565
    .line 566
    .line 567
    invoke-virtual {p0}, Lteam/opay/business/payroll/transferConfirmDialog/DuplicateTransferDialog;->h0()Lvjb;

    .line 568
    .line 569
    .line 570
    move-result-object v0

    .line 571
    iget-object v0, v0, Lvjb;->b:Landroidx/appcompat/widget/AppCompatTextView;

    .line 572
    .line 573
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 574
    .line 575
    .line 576
    invoke-virtual {p0}, Lteam/opay/business/payroll/transferConfirmDialog/DuplicateTransferDialog;->h0()Lvjb;

    .line 577
    .line 578
    .line 579
    move-result-object v0

    .line 580
    iget-object v0, v0, Lvjb;->f:Landroidx/appcompat/widget/AppCompatTextView;

    .line 581
    .line 582
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 583
    .line 584
    .line 585
    invoke-virtual {p0}, Lteam/opay/business/payroll/transferConfirmDialog/DuplicateTransferDialog;->h0()Lvjb;

    .line 586
    .line 587
    .line 588
    move-result-object v0

    .line 589
    iget-object v0, v0, Lvjb;->c:Lcom/google/android/material/button/MaterialButton;

    .line 590
    .line 591
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 592
    .line 593
    .line 594
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 595
    .line 596
    .line 597
    move-result-object v2

    .line 598
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    .line 599
    .line 600
    .line 601
    move-result-object v5

    .line 602
    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 603
    .line 604
    .line 605
    move-result-object v5

    .line 606
    iget v5, v5, Landroid/util/DisplayMetrics;->density:F

    .line 607
    .line 608
    const/16 v7, 0x2a

    .line 609
    .line 610
    int-to-float v7, v7

    .line 611
    mul-float v5, v5, v7

    .line 612
    .line 613
    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 614
    .line 615
    .line 616
    move-result-object v5

    .line 617
    invoke-static {v4}, Lkotlin/jvm/internal/Reflection;->b(Ljava/lang/Class;)Lho7;

    .line 618
    .line 619
    .line 620
    move-result-object v9

    .line 621
    invoke-static {v6}, Lkotlin/jvm/internal/Reflection;->b(Ljava/lang/Class;)Lho7;

    .line 622
    .line 623
    .line 624
    move-result-object v10

    .line 625
    invoke-static {v9, v10}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 626
    .line 627
    .line 628
    move-result v10

    .line 629
    if-eqz v10, :cond_10

    .line 630
    .line 631
    check-cast v5, Ljava/lang/Integer;

    .line 632
    .line 633
    goto :goto_8

    .line 634
    :cond_10
    sget-object v10, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 635
    .line 636
    invoke-static {v10}, Lkotlin/jvm/internal/Reflection;->b(Ljava/lang/Class;)Lho7;

    .line 637
    .line 638
    .line 639
    move-result-object v10

    .line 640
    invoke-static {v9, v10}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 641
    .line 642
    .line 643
    move-result v10

    .line 644
    if-eqz v10, :cond_11

    .line 645
    .line 646
    invoke-virtual {v5}, Ljava/lang/Number;->intValue()I

    .line 647
    .line 648
    .line 649
    move-result v5

    .line 650
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 651
    .line 652
    .line 653
    move-result-object v5

    .line 654
    goto :goto_8

    .line 655
    :cond_11
    sget-object v10, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    .line 656
    .line 657
    invoke-static {v10}, Lkotlin/jvm/internal/Reflection;->b(Ljava/lang/Class;)Lho7;

    .line 658
    .line 659
    .line 660
    move-result-object v10

    .line 661
    invoke-static {v9, v10}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 662
    .line 663
    .line 664
    move-result v10

    .line 665
    if-eqz v10, :cond_12

    .line 666
    .line 667
    invoke-virtual {v5}, Ljava/lang/Number;->doubleValue()D

    .line 668
    .line 669
    .line 670
    move-result-wide v9

    .line 671
    invoke-static {v9, v10}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 672
    .line 673
    .line 674
    move-result-object v5

    .line 675
    check-cast v5, Ljava/lang/Integer;

    .line 676
    .line 677
    goto :goto_8

    .line 678
    :cond_12
    sget-object v10, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    .line 679
    .line 680
    invoke-static {v10}, Lkotlin/jvm/internal/Reflection;->b(Ljava/lang/Class;)Lho7;

    .line 681
    .line 682
    .line 683
    move-result-object v10

    .line 684
    invoke-static {v9, v10}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 685
    .line 686
    .line 687
    move-result v9

    .line 688
    if-eqz v9, :cond_21

    .line 689
    .line 690
    invoke-virtual {v5}, Ljava/lang/Number;->longValue()J

    .line 691
    .line 692
    .line 693
    move-result-wide v9

    .line 694
    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 695
    .line 696
    .line 697
    move-result-object v5

    .line 698
    check-cast v5, Ljava/lang/Integer;

    .line 699
    .line 700
    :goto_8
    invoke-virtual {v5}, Ljava/lang/Number;->intValue()I

    .line 701
    .line 702
    .line 703
    move-result v5

    .line 704
    iput v5, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 705
    .line 706
    invoke-virtual {v0, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 707
    .line 708
    .line 709
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;)V

    .line 710
    .line 711
    .line 712
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 713
    .line 714
    .line 715
    move-result-object v2

    .line 716
    instance-of v5, v2, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 717
    .line 718
    if-eqz v5, :cond_13

    .line 719
    .line 720
    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 721
    .line 722
    invoke-virtual {v2}, Landroid/view/ViewGroup$MarginLayoutParams;->getMarginStart()I

    .line 723
    .line 724
    .line 725
    move-result v2

    .line 726
    goto :goto_9

    .line 727
    :cond_13
    const/4 v2, 0x0

    .line 728
    :goto_9
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    .line 729
    .line 730
    .line 731
    move-result-object v5

    .line 732
    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 733
    .line 734
    .line 735
    move-result-object v5

    .line 736
    iget v5, v5, Landroid/util/DisplayMetrics;->density:F

    .line 737
    .line 738
    const/16 v9, 0x16

    .line 739
    .line 740
    int-to-float v9, v9

    .line 741
    mul-float v5, v5, v9

    .line 742
    .line 743
    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 744
    .line 745
    .line 746
    move-result-object v5

    .line 747
    invoke-static {v4}, Lkotlin/jvm/internal/Reflection;->b(Ljava/lang/Class;)Lho7;

    .line 748
    .line 749
    .line 750
    move-result-object v10

    .line 751
    invoke-static {v6}, Lkotlin/jvm/internal/Reflection;->b(Ljava/lang/Class;)Lho7;

    .line 752
    .line 753
    .line 754
    move-result-object v11

    .line 755
    invoke-static {v10, v11}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 756
    .line 757
    .line 758
    move-result v11

    .line 759
    if-eqz v11, :cond_14

    .line 760
    .line 761
    check-cast v5, Ljava/lang/Integer;

    .line 762
    .line 763
    goto :goto_a

    .line 764
    :cond_14
    sget-object v11, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 765
    .line 766
    invoke-static {v11}, Lkotlin/jvm/internal/Reflection;->b(Ljava/lang/Class;)Lho7;

    .line 767
    .line 768
    .line 769
    move-result-object v11

    .line 770
    invoke-static {v10, v11}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 771
    .line 772
    .line 773
    move-result v11

    .line 774
    if-eqz v11, :cond_15

    .line 775
    .line 776
    invoke-virtual {v5}, Ljava/lang/Number;->intValue()I

    .line 777
    .line 778
    .line 779
    move-result v5

    .line 780
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 781
    .line 782
    .line 783
    move-result-object v5

    .line 784
    goto :goto_a

    .line 785
    :cond_15
    sget-object v11, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    .line 786
    .line 787
    invoke-static {v11}, Lkotlin/jvm/internal/Reflection;->b(Ljava/lang/Class;)Lho7;

    .line 788
    .line 789
    .line 790
    move-result-object v11

    .line 791
    invoke-static {v10, v11}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 792
    .line 793
    .line 794
    move-result v11

    .line 795
    if-eqz v11, :cond_16

    .line 796
    .line 797
    invoke-virtual {v5}, Ljava/lang/Number;->doubleValue()D

    .line 798
    .line 799
    .line 800
    move-result-wide v10

    .line 801
    invoke-static {v10, v11}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 802
    .line 803
    .line 804
    move-result-object v5

    .line 805
    check-cast v5, Ljava/lang/Integer;

    .line 806
    .line 807
    goto :goto_a

    .line 808
    :cond_16
    sget-object v11, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    .line 809
    .line 810
    invoke-static {v11}, Lkotlin/jvm/internal/Reflection;->b(Ljava/lang/Class;)Lho7;

    .line 811
    .line 812
    .line 813
    move-result-object v11

    .line 814
    invoke-static {v10, v11}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 815
    .line 816
    .line 817
    move-result v10

    .line 818
    if-eqz v10, :cond_20

    .line 819
    .line 820
    invoke-virtual {v5}, Ljava/lang/Number;->longValue()J

    .line 821
    .line 822
    .line 823
    move-result-wide v10

    .line 824
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 825
    .line 826
    .line 827
    move-result-object v5

    .line 828
    check-cast v5, Ljava/lang/Integer;

    .line 829
    .line 830
    :goto_a
    invoke-virtual {v5}, Ljava/lang/Number;->intValue()I

    .line 831
    .line 832
    .line 833
    move-result v5

    .line 834
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 835
    .line 836
    .line 837
    move-result-object v10

    .line 838
    instance-of v11, v10, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 839
    .line 840
    if-eqz v11, :cond_17

    .line 841
    .line 842
    check-cast v10, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 843
    .line 844
    invoke-virtual {v10}, Landroid/view/ViewGroup$MarginLayoutParams;->getMarginEnd()I

    .line 845
    .line 846
    .line 847
    move-result v3

    .line 848
    :cond_17
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    .line 849
    .line 850
    .line 851
    move-result-object v10

    .line 852
    invoke-virtual {v10}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 853
    .line 854
    .line 855
    move-result-object v10

    .line 856
    iget v10, v10, Landroid/util/DisplayMetrics;->density:F

    .line 857
    .line 858
    mul-float v10, v10, v9

    .line 859
    .line 860
    invoke-static {v10}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 861
    .line 862
    .line 863
    move-result-object v9

    .line 864
    invoke-static {v4}, Lkotlin/jvm/internal/Reflection;->b(Ljava/lang/Class;)Lho7;

    .line 865
    .line 866
    .line 867
    move-result-object v10

    .line 868
    invoke-static {v6}, Lkotlin/jvm/internal/Reflection;->b(Ljava/lang/Class;)Lho7;

    .line 869
    .line 870
    .line 871
    move-result-object v11

    .line 872
    invoke-static {v10, v11}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 873
    .line 874
    .line 875
    move-result v11

    .line 876
    if-eqz v11, :cond_18

    .line 877
    .line 878
    check-cast v9, Ljava/lang/Integer;

    .line 879
    .line 880
    goto :goto_b

    .line 881
    :cond_18
    sget-object v11, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 882
    .line 883
    invoke-static {v11}, Lkotlin/jvm/internal/Reflection;->b(Ljava/lang/Class;)Lho7;

    .line 884
    .line 885
    .line 886
    move-result-object v11

    .line 887
    invoke-static {v10, v11}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 888
    .line 889
    .line 890
    move-result v11

    .line 891
    if-eqz v11, :cond_19

    .line 892
    .line 893
    invoke-virtual {v9}, Ljava/lang/Number;->intValue()I

    .line 894
    .line 895
    .line 896
    move-result v9

    .line 897
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 898
    .line 899
    .line 900
    move-result-object v9

    .line 901
    goto :goto_b

    .line 902
    :cond_19
    sget-object v11, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    .line 903
    .line 904
    invoke-static {v11}, Lkotlin/jvm/internal/Reflection;->b(Ljava/lang/Class;)Lho7;

    .line 905
    .line 906
    .line 907
    move-result-object v11

    .line 908
    invoke-static {v10, v11}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 909
    .line 910
    .line 911
    move-result v11

    .line 912
    if-eqz v11, :cond_1a

    .line 913
    .line 914
    invoke-virtual {v9}, Ljava/lang/Number;->doubleValue()D

    .line 915
    .line 916
    .line 917
    move-result-wide v9

    .line 918
    invoke-static {v9, v10}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 919
    .line 920
    .line 921
    move-result-object v9

    .line 922
    check-cast v9, Ljava/lang/Integer;

    .line 923
    .line 924
    goto :goto_b

    .line 925
    :cond_1a
    sget-object v11, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    .line 926
    .line 927
    invoke-static {v11}, Lkotlin/jvm/internal/Reflection;->b(Ljava/lang/Class;)Lho7;

    .line 928
    .line 929
    .line 930
    move-result-object v11

    .line 931
    invoke-static {v10, v11}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 932
    .line 933
    .line 934
    move-result v10

    .line 935
    if-eqz v10, :cond_1f

    .line 936
    .line 937
    invoke-virtual {v9}, Ljava/lang/Number;->longValue()J

    .line 938
    .line 939
    .line 940
    move-result-wide v9

    .line 941
    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 942
    .line 943
    .line 944
    move-result-object v9

    .line 945
    check-cast v9, Ljava/lang/Integer;

    .line 946
    .line 947
    :goto_b
    invoke-virtual {v9}, Ljava/lang/Number;->intValue()I

    .line 948
    .line 949
    .line 950
    move-result v9

    .line 951
    invoke-static {v0, v2, v5, v3, v9}, Lg0g;->g(Landroid/view/View;IIII)V

    .line 952
    .line 953
    .line 954
    invoke-virtual {p0}, Lteam/opay/business/payroll/transferConfirmDialog/DuplicateTransferDialog;->h0()Lvjb;

    .line 955
    .line 956
    .line 957
    move-result-object v0

    .line 958
    iget-object v0, v0, Lvjb;->d:Lcom/google/android/material/button/MaterialButton;

    .line 959
    .line 960
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 961
    .line 962
    .line 963
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 964
    .line 965
    .line 966
    move-result-object v1

    .line 967
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    .line 968
    .line 969
    .line 970
    move-result-object v2

    .line 971
    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 972
    .line 973
    .line 974
    move-result-object v2

    .line 975
    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    .line 976
    .line 977
    mul-float v2, v2, v7

    .line 978
    .line 979
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 980
    .line 981
    .line 982
    move-result-object v2

    .line 983
    invoke-static {v4}, Lkotlin/jvm/internal/Reflection;->b(Ljava/lang/Class;)Lho7;

    .line 984
    .line 985
    .line 986
    move-result-object v3

    .line 987
    invoke-static {v6}, Lkotlin/jvm/internal/Reflection;->b(Ljava/lang/Class;)Lho7;

    .line 988
    .line 989
    .line 990
    move-result-object v4

    .line 991
    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 992
    .line 993
    .line 994
    move-result v4

    .line 995
    if-eqz v4, :cond_1b

    .line 996
    .line 997
    check-cast v2, Ljava/lang/Integer;

    .line 998
    .line 999
    goto :goto_c

    .line 1000
    :cond_1b
    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 1001
    .line 1002
    invoke-static {v4}, Lkotlin/jvm/internal/Reflection;->b(Ljava/lang/Class;)Lho7;

    .line 1003
    .line 1004
    .line 1005
    move-result-object v4

    .line 1006
    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 1007
    .line 1008
    .line 1009
    move-result v4

    .line 1010
    if-eqz v4, :cond_1c

    .line 1011
    .line 1012
    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    .line 1013
    .line 1014
    .line 1015
    move-result v2

    .line 1016
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1017
    .line 1018
    .line 1019
    move-result-object v2

    .line 1020
    goto :goto_c

    .line 1021
    :cond_1c
    sget-object v4, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    .line 1022
    .line 1023
    invoke-static {v4}, Lkotlin/jvm/internal/Reflection;->b(Ljava/lang/Class;)Lho7;

    .line 1024
    .line 1025
    .line 1026
    move-result-object v4

    .line 1027
    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 1028
    .line 1029
    .line 1030
    move-result v4

    .line 1031
    if-eqz v4, :cond_1d

    .line 1032
    .line 1033
    invoke-virtual {v2}, Ljava/lang/Number;->doubleValue()D

    .line 1034
    .line 1035
    .line 1036
    move-result-wide v2

    .line 1037
    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 1038
    .line 1039
    .line 1040
    move-result-object v2

    .line 1041
    check-cast v2, Ljava/lang/Integer;

    .line 1042
    .line 1043
    goto :goto_c

    .line 1044
    :cond_1d
    sget-object v4, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    .line 1045
    .line 1046
    invoke-static {v4}, Lkotlin/jvm/internal/Reflection;->b(Ljava/lang/Class;)Lho7;

    .line 1047
    .line 1048
    .line 1049
    move-result-object v4

    .line 1050
    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 1051
    .line 1052
    .line 1053
    move-result v3

    .line 1054
    if-eqz v3, :cond_1e

    .line 1055
    .line 1056
    invoke-virtual {v2}, Ljava/lang/Number;->longValue()J

    .line 1057
    .line 1058
    .line 1059
    move-result-wide v2

    .line 1060
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 1061
    .line 1062
    .line 1063
    move-result-object v2

    .line 1064
    check-cast v2, Ljava/lang/Integer;

    .line 1065
    .line 1066
    :goto_c
    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    .line 1067
    .line 1068
    .line 1069
    move-result v2

    .line 1070
    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1071
    .line 1072
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1073
    .line 1074
    .line 1075
    return-void

    .line 1076
    :cond_1e
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 1077
    .line 1078
    invoke-direct {v0, v8}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 1079
    .line 1080
    .line 1081
    throw v0

    .line 1082
    :cond_1f
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 1083
    .line 1084
    invoke-direct {v0, v8}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 1085
    .line 1086
    .line 1087
    throw v0

    .line 1088
    :cond_20
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 1089
    .line 1090
    invoke-direct {v0, v8}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 1091
    .line 1092
    .line 1093
    throw v0

    .line 1094
    :cond_21
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 1095
    .line 1096
    invoke-direct {v0, v8}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 1097
    .line 1098
    .line 1099
    throw v0

    .line 1100
    :cond_22
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 1101
    .line 1102
    invoke-direct {v0, v8}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 1103
    .line 1104
    .line 1105
    throw v0

    .line 1106
    :cond_23
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 1107
    .line 1108
    invoke-direct {v0, v8}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 1109
    .line 1110
    .line 1111
    throw v0

    .line 1112
    :cond_24
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 1113
    .line 1114
    invoke-direct {v0, v8}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 1115
    .line 1116
    .line 1117
    throw v0

    .line 1118
    :cond_25
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 1119
    .line 1120
    invoke-direct {v0, v8}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 1121
    .line 1122
    .line 1123
    throw v0
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
    invoke-virtual {p0}, Lteam/opay/business/payroll/transferConfirmDialog/DuplicateTransferDialog;->h0()Lvjb;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    invoke-virtual {p1}, Lvjb;->a()Landroidx/constraintlayout/widget/ConstraintLayout;

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
    invoke-super {p0, p1, p2}, Lteam/opay/business/payroll/transferConfirmDialog/BaseConfirmDialog;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 7
    .line 8
    .line 9
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 10
    .line 11
    invoke-virtual {p0}, Lteam/opay/business/payroll/transferConfirmDialog/DuplicateTransferDialog;->h0()Lvjb;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    iget-object p1, p1, Lvjb;->c:Lcom/google/android/material/button/MaterialButton;

    .line 16
    .line 17
    const-string p2, "actionCancel"

    .line 18
    .line 19
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    new-instance p2, Lvk3;

    .line 23
    .line 24
    invoke-direct {p2, p0}, Lvk3;-><init>(Lteam/opay/business/payroll/transferConfirmDialog/DuplicateTransferDialog;)V

    .line 25
    .line 26
    .line 27
    invoke-static {p1, p2}, Lde1;->a(Landroid/view/View;Lkotlin/jvm/functions/Function0;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {p0}, Lteam/opay/business/payroll/transferConfirmDialog/DuplicateTransferDialog;->h0()Lvjb;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    iget-object p1, p1, Lvjb;->d:Lcom/google/android/material/button/MaterialButton;

    .line 35
    .line 36
    const-string p2, "actionConfirm"

    .line 37
    .line 38
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    new-instance p2, Lwk3;

    .line 42
    .line 43
    invoke-direct {p2, p0}, Lwk3;-><init>(Lteam/opay/business/payroll/transferConfirmDialog/DuplicateTransferDialog;)V

    .line 44
    .line 45
    .line 46
    invoke-static {p1, p2}, Lde1;->a(Landroid/view/View;Lkotlin/jvm/functions/Function0;)V

    .line 47
    .line 48
    .line 49
    sget-object p1, Lteam/opay/core/common/spi/c;->a:Lteam/opay/core/common/spi/c;

    .line 50
    .line 51
    invoke-virtual {p1}, Lteam/opay/core/common/spi/c;->e()Z

    .line 52
    .line 53
    .line 54
    move-result p1

    .line 55
    if-eqz p1, :cond_0

    .line 56
    .line 57
    invoke-virtual {p0}, Lteam/opay/business/payroll/transferConfirmDialog/DuplicateTransferDialog;->l0()V

    .line 58
    .line 59
    .line 60
    :cond_0
    invoke-virtual {p0}, Lteam/opay/business/payroll/transferConfirmDialog/DuplicateTransferDialog;->k0()V

    .line 61
    .line 62
    .line 63
    return-void
.end method
