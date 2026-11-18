.class public final Lteam/opay/business/payroll/transferConfirmDialog/FirstLargeTransferDialog;
.super Lteam/opay/business/payroll/transferConfirmDialog/Hilt_FirstLargeTransferDialog;
.source "FirstLargeTransferDialog.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lteam/opay/business/payroll/transferConfirmDialog/FirstLargeTransferDialog$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000e\n\u0002\u0008\n\u0008\u0007\u0018\u0000  2\u00020\u0001:\u0001!B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u000f\u0010\u0005\u001a\u00020\u0004H\u0002\u00a2\u0006\u0004\u0008\u0005\u0010\u0003J+\u0010\r\u001a\u00020\u000c2\u0006\u0010\u0007\u001a\u00020\u00062\u0008\u0010\t\u001a\u0004\u0018\u00010\u00082\u0008\u0010\u000b\u001a\u0004\u0018\u00010\nH\u0016\u00a2\u0006\u0004\u0008\r\u0010\u000eJ!\u0010\u0010\u001a\u00020\u00042\u0006\u0010\u000f\u001a\u00020\u000c2\u0008\u0010\u000b\u001a\u0004\u0018\u00010\nH\u0016\u00a2\u0006\u0004\u0008\u0010\u0010\u0011R\u001b\u0010\u0017\u001a\u00020\u00128BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0013\u0010\u0014\u001a\u0004\u0008\u0015\u0010\u0016R\"\u0010\u001f\u001a\u00020\u00188\u0016@\u0016X\u0096\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0019\u0010\u001a\u001a\u0004\u0008\u001b\u0010\u001c\"\u0004\u0008\u001d\u0010\u001e\u00a8\u0006\""
    }
    d2 = {
        "Lteam/opay/business/payroll/transferConfirmDialog/FirstLargeTransferDialog;",
        "Lteam/opay/business/payroll/transferConfirmDialog/BaseConfirmSheet;",
        "<init>",
        "()V",
        "",
        "k0",
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
        "Lxjb;",
        "B",
        "Lcom/hi/dhl/binding/viewbind/FragmentViewBinding;",
        "g0",
        "()Lxjb;",
        "binding",
        "",
        "C",
        "Ljava/lang/String;",
        "a0",
        "()Ljava/lang/String;",
        "setNoticeType",
        "(Ljava/lang/String;)V",
        "noticeType",
        "D",
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
.field public static final D:Lteam/opay/business/payroll/transferConfirmDialog/FirstLargeTransferDialog$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final synthetic E:[Lzo7;
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


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1
    new-instance v0, Lkotlin/jvm/internal/PropertyReference1Impl;

    .line 2
    .line 3
    const-string v1, "getBinding()Lteam/opay/business/payroll/databinding/PayrollDialogFirstLargeTransferBinding;"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    const-class v3, Lteam/opay/business/payroll/transferConfirmDialog/FirstLargeTransferDialog;

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
    sput-object v1, Lteam/opay/business/payroll/transferConfirmDialog/FirstLargeTransferDialog;->E:[Lzo7;

    .line 23
    .line 24
    new-instance v0, Lteam/opay/business/payroll/transferConfirmDialog/FirstLargeTransferDialog$Companion;

    .line 25
    .line 26
    const/4 v1, 0x0

    .line 27
    invoke-direct {v0, v1}, Lteam/opay/business/payroll/transferConfirmDialog/FirstLargeTransferDialog$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 28
    .line 29
    .line 30
    sput-object v0, Lteam/opay/business/payroll/transferConfirmDialog/FirstLargeTransferDialog;->D:Lteam/opay/business/payroll/transferConfirmDialog/FirstLargeTransferDialog$Companion;

    .line 31
    .line 32
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lteam/opay/business/payroll/transferConfirmDialog/Hilt_FirstLargeTransferDialog;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/hi/dhl/binding/viewbind/FragmentViewBinding;

    .line 5
    .line 6
    const-class v1, Lxjb;

    .line 7
    .line 8
    invoke-direct {v0, v1, p0}, Lcom/hi/dhl/binding/viewbind/FragmentViewBinding;-><init>(Ljava/lang/Class;Landroidx/fragment/app/Fragment;)V

    .line 9
    .line 10
    .line 11
    iput-object v0, p0, Lteam/opay/business/payroll/transferConfirmDialog/FirstLargeTransferDialog;->B:Lcom/hi/dhl/binding/viewbind/FragmentViewBinding;

    .line 12
    .line 13
    const-string v0, "FIRST_LARGE_AMOUNT"

    .line 14
    .line 15
    iput-object v0, p0, Lteam/opay/business/payroll/transferConfirmDialog/FirstLargeTransferDialog;->C:Ljava/lang/String;

    .line 16
    .line 17
    return-void
.end method

.method public static synthetic d0(Lteam/opay/business/payroll/transferConfirmDialog/FirstLargeTransferDialog;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/business/payroll/transferConfirmDialog/FirstLargeTransferDialog;->i0(Lteam/opay/business/payroll/transferConfirmDialog/FirstLargeTransferDialog;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic e0(Lteam/opay/business/payroll/transferConfirmDialog/FirstLargeTransferDialog;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/business/payroll/transferConfirmDialog/FirstLargeTransferDialog;->h0(Lteam/opay/business/payroll/transferConfirmDialog/FirstLargeTransferDialog;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic f0(Lteam/opay/business/payroll/transferConfirmDialog/FirstLargeTransferDialog;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/business/payroll/transferConfirmDialog/FirstLargeTransferDialog;->j0(Lteam/opay/business/payroll/transferConfirmDialog/FirstLargeTransferDialog;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final h0(Lteam/opay/business/payroll/transferConfirmDialog/FirstLargeTransferDialog;)Lkotlin/Unit;
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

.method public static final i0(Lteam/opay/business/payroll/transferConfirmDialog/FirstLargeTransferDialog;)Lkotlin/Unit;
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

.method public static final j0(Lteam/opay/business/payroll/transferConfirmDialog/FirstLargeTransferDialog;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lteam/opay/business/payroll/transferConfirmDialog/BaseConfirmSheet;->V()V

    .line 2
    .line 3
    .line 4
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 5
    .line 6
    return-object p0
.end method

.method private final k0()V
    .locals 12

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    invoke-virtual {p0}, Lteam/opay/business/payroll/transferConfirmDialog/FirstLargeTransferDialog;->g0()Lxjb;

    .line 4
    .line 5
    .line 6
    move-result-object v2

    .line 7
    iget-object v2, v2, Lxjb;->r:Landroidx/appcompat/widget/AppCompatTextView;

    .line 8
    .line 9
    invoke-virtual {p0}, Lteam/opay/business/payroll/transferConfirmDialog/BaseConfirmSheet;->W()Lteam/opay/opb/transfer/bank/bank/TransferAccountResp;

    .line 10
    .line 11
    .line 12
    move-result-object v3

    .line 13
    if-eqz v3, :cond_0

    .line 14
    .line 15
    invoke-virtual {v3}, Lteam/opay/opb/transfer/bank/bank/TransferAccountResp;->getTitle()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v3

    .line 19
    if-eqz v3, :cond_0

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    sget v3, Lteam/opay/business/payroll/R$string;->payroll_large_transfer_title:I

    .line 23
    .line 24
    invoke-virtual {p0, v3}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v3

    .line 28
    const-string v4, "getString(...)"

    .line 29
    .line 30
    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    :goto_0
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {p0}, Lteam/opay/business/payroll/transferConfirmDialog/FirstLargeTransferDialog;->g0()Lxjb;

    .line 37
    .line 38
    .line 39
    move-result-object v2

    .line 40
    iget-object v2, v2, Lxjb;->d:Landroidx/appcompat/widget/AppCompatTextView;

    .line 41
    .line 42
    sget v3, Lteam/opay/business/payroll/R$string;->payroll_home_amount:I

    .line 43
    .line 44
    sget-object v4, Lteam/opay/core/common/amount/a;->a:Lteam/opay/core/common/amount/a;

    .line 45
    .line 46
    invoke-virtual {p0}, Lteam/opay/business/payroll/transferConfirmDialog/BaseConfirmSheet;->b0()Lteam/opay/business/payroll/api/BeneficiaryInfo;

    .line 47
    .line 48
    .line 49
    move-result-object v5

    .line 50
    const/4 v6, 0x0

    .line 51
    if-eqz v5, :cond_1

    .line 52
    .line 53
    invoke-virtual {v5}, Lteam/opay/business/payroll/api/BeneficiaryInfo;->getAmount()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v5

    .line 57
    goto :goto_1

    .line 58
    :cond_1
    move-object v5, v6

    .line 59
    :goto_1
    const-string v7, "#,##0.00"

    .line 60
    .line 61
    invoke-virtual {v4, v5, v7}, Lteam/opay/core/common/amount/a;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v4

    .line 65
    new-array v5, v1, [Ljava/lang/Object;

    .line 66
    .line 67
    aput-object v4, v5, v0

    .line 68
    .line 69
    invoke-virtual {p0, v3, v5}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v3

    .line 73
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 74
    .line 75
    .line 76
    invoke-virtual {p0}, Lteam/opay/business/payroll/transferConfirmDialog/BaseConfirmSheet;->b0()Lteam/opay/business/payroll/api/BeneficiaryInfo;

    .line 77
    .line 78
    .line 79
    move-result-object v2

    .line 80
    if-eqz v2, :cond_2

    .line 81
    .line 82
    invoke-virtual {v2}, Lteam/opay/business/payroll/api/BeneficiaryInfo;->getAmount()Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v2

    .line 86
    goto :goto_2

    .line 87
    :cond_2
    move-object v2, v6

    .line 88
    :goto_2
    invoke-virtual {p0, v2}, Lteam/opay/business/payroll/transferConfirmDialog/BaseConfirmSheet;->Z(Ljava/lang/String;)Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object v2

    .line 92
    invoke-virtual {p0}, Lteam/opay/business/payroll/transferConfirmDialog/FirstLargeTransferDialog;->g0()Lxjb;

    .line 93
    .line 94
    .line 95
    move-result-object v3

    .line 96
    iget-object v3, v3, Lxjb;->f:Landroidx/appcompat/widget/AppCompatTextView;

    .line 97
    .line 98
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 99
    .line 100
    .line 101
    invoke-virtual {p0}, Lteam/opay/business/payroll/transferConfirmDialog/FirstLargeTransferDialog;->g0()Lxjb;

    .line 102
    .line 103
    .line 104
    move-result-object v3

    .line 105
    iget-object v3, v3, Lxjb;->f:Landroidx/appcompat/widget/AppCompatTextView;

    .line 106
    .line 107
    const-string v4, "amountTip"

    .line 108
    .line 109
    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 110
    .line 111
    .line 112
    if-eqz v2, :cond_4

    .line 113
    .line 114
    invoke-static {v2}, Lkotlin/text/StringsKt;->s0(Ljava/lang/CharSequence;)Z

    .line 115
    .line 116
    .line 117
    move-result v5

    .line 118
    if-eqz v5, :cond_3

    .line 119
    .line 120
    goto :goto_3

    .line 121
    :cond_3
    const/4 v5, 0x0

    .line 122
    goto :goto_4

    .line 123
    :cond_4
    :goto_3
    const/4 v5, 0x1

    .line 124
    :goto_4
    xor-int/2addr v1, v5

    .line 125
    invoke-static {v3, v1}, Lg0g;->j(Landroid/view/View;Z)V

    .line 126
    .line 127
    .line 128
    if-eqz v2, :cond_12

    .line 129
    .line 130
    invoke-static {v2}, Lkotlin/text/StringsKt;->s0(Ljava/lang/CharSequence;)Z

    .line 131
    .line 132
    .line 133
    move-result v1

    .line 134
    if-eqz v1, :cond_5

    .line 135
    .line 136
    goto/16 :goto_8

    .line 137
    .line 138
    :cond_5
    invoke-virtual {p0}, Lteam/opay/business/payroll/transferConfirmDialog/FirstLargeTransferDialog;->g0()Lxjb;

    .line 139
    .line 140
    .line 141
    move-result-object v1

    .line 142
    iget-object v1, v1, Lxjb;->f:Landroidx/appcompat/widget/AppCompatTextView;

    .line 143
    .line 144
    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 145
    .line 146
    .line 147
    new-instance v2, Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;

    .line 148
    .line 149
    invoke-direct {v2}, Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;-><init>()V

    .line 150
    .line 151
    .line 152
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    .line 153
    .line 154
    .line 155
    move-result-object v3

    .line 156
    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 157
    .line 158
    .line 159
    move-result-object v3

    .line 160
    iget v3, v3, Landroid/util/DisplayMetrics;->density:F

    .line 161
    .line 162
    const/4 v4, 0x2

    .line 163
    int-to-float v4, v4

    .line 164
    mul-float v3, v3, v4

    .line 165
    .line 166
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 167
    .line 168
    .line 169
    move-result-object v3

    .line 170
    const-class v4, Ljava/lang/Float;

    .line 171
    .line 172
    invoke-static {v4}, Lkotlin/jvm/internal/Reflection;->b(Ljava/lang/Class;)Lho7;

    .line 173
    .line 174
    .line 175
    move-result-object v5

    .line 176
    sget-object v7, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    .line 177
    .line 178
    invoke-static {v7}, Lkotlin/jvm/internal/Reflection;->b(Ljava/lang/Class;)Lho7;

    .line 179
    .line 180
    .line 181
    move-result-object v8

    .line 182
    invoke-static {v5, v8}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 183
    .line 184
    .line 185
    move-result v8

    .line 186
    const-string v9, "return number type not support"

    .line 187
    .line 188
    if-eqz v8, :cond_6

    .line 189
    .line 190
    goto :goto_5

    .line 191
    :cond_6
    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 192
    .line 193
    invoke-static {v8}, Lkotlin/jvm/internal/Reflection;->b(Ljava/lang/Class;)Lho7;

    .line 194
    .line 195
    .line 196
    move-result-object v8

    .line 197
    invoke-static {v5, v8}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 198
    .line 199
    .line 200
    move-result v8

    .line 201
    if-eqz v8, :cond_7

    .line 202
    .line 203
    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    .line 204
    .line 205
    .line 206
    move-result v3

    .line 207
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 208
    .line 209
    .line 210
    move-result-object v3

    .line 211
    check-cast v3, Ljava/lang/Float;

    .line 212
    .line 213
    goto :goto_5

    .line 214
    :cond_7
    sget-object v8, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    .line 215
    .line 216
    invoke-static {v8}, Lkotlin/jvm/internal/Reflection;->b(Ljava/lang/Class;)Lho7;

    .line 217
    .line 218
    .line 219
    move-result-object v8

    .line 220
    invoke-static {v5, v8}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 221
    .line 222
    .line 223
    move-result v8

    .line 224
    if-eqz v8, :cond_8

    .line 225
    .line 226
    invoke-virtual {v3}, Ljava/lang/Number;->doubleValue()D

    .line 227
    .line 228
    .line 229
    move-result-wide v10

    .line 230
    invoke-static {v10, v11}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 231
    .line 232
    .line 233
    move-result-object v3

    .line 234
    check-cast v3, Ljava/lang/Float;

    .line 235
    .line 236
    goto :goto_5

    .line 237
    :cond_8
    sget-object v8, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    .line 238
    .line 239
    invoke-static {v8}, Lkotlin/jvm/internal/Reflection;->b(Ljava/lang/Class;)Lho7;

    .line 240
    .line 241
    .line 242
    move-result-object v8

    .line 243
    invoke-static {v5, v8}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 244
    .line 245
    .line 246
    move-result v5

    .line 247
    if-eqz v5, :cond_11

    .line 248
    .line 249
    invoke-virtual {v3}, Ljava/lang/Number;->longValue()J

    .line 250
    .line 251
    .line 252
    move-result-wide v10

    .line 253
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 254
    .line 255
    .line 256
    move-result-object v3

    .line 257
    check-cast v3, Ljava/lang/Float;

    .line 258
    .line 259
    :goto_5
    invoke-virtual {v3}, Ljava/lang/Number;->floatValue()F

    .line 260
    .line 261
    .line 262
    move-result v3

    .line 263
    invoke-virtual {v2, v0, v3}, Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;->setAllCorners(IF)Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;

    .line 264
    .line 265
    .line 266
    move-result-object v2

    .line 267
    new-instance v3, Lcom/google/android/material/shape/OffsetEdgeTreatment;

    .line 268
    .line 269
    new-instance v5, Lcom/google/android/material/shape/TriangleEdgeTreatment;

    .line 270
    .line 271
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    .line 272
    .line 273
    .line 274
    move-result-object v8

    .line 275
    invoke-virtual {v8}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 276
    .line 277
    .line 278
    move-result-object v8

    .line 279
    iget v8, v8, Landroid/util/DisplayMetrics;->density:F

    .line 280
    .line 281
    const/4 v10, 0x3

    .line 282
    int-to-float v10, v10

    .line 283
    mul-float v8, v8, v10

    .line 284
    .line 285
    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 286
    .line 287
    .line 288
    move-result-object v8

    .line 289
    invoke-static {v4}, Lkotlin/jvm/internal/Reflection;->b(Ljava/lang/Class;)Lho7;

    .line 290
    .line 291
    .line 292
    move-result-object v10

    .line 293
    invoke-static {v7}, Lkotlin/jvm/internal/Reflection;->b(Ljava/lang/Class;)Lho7;

    .line 294
    .line 295
    .line 296
    move-result-object v11

    .line 297
    invoke-static {v10, v11}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 298
    .line 299
    .line 300
    move-result v11

    .line 301
    if-eqz v11, :cond_9

    .line 302
    .line 303
    goto :goto_6

    .line 304
    :cond_9
    sget-object v11, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 305
    .line 306
    invoke-static {v11}, Lkotlin/jvm/internal/Reflection;->b(Ljava/lang/Class;)Lho7;

    .line 307
    .line 308
    .line 309
    move-result-object v11

    .line 310
    invoke-static {v10, v11}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 311
    .line 312
    .line 313
    move-result v11

    .line 314
    if-eqz v11, :cond_a

    .line 315
    .line 316
    invoke-virtual {v8}, Ljava/lang/Number;->intValue()I

    .line 317
    .line 318
    .line 319
    move-result v8

    .line 320
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 321
    .line 322
    .line 323
    move-result-object v8

    .line 324
    check-cast v8, Ljava/lang/Float;

    .line 325
    .line 326
    goto :goto_6

    .line 327
    :cond_a
    sget-object v11, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    .line 328
    .line 329
    invoke-static {v11}, Lkotlin/jvm/internal/Reflection;->b(Ljava/lang/Class;)Lho7;

    .line 330
    .line 331
    .line 332
    move-result-object v11

    .line 333
    invoke-static {v10, v11}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 334
    .line 335
    .line 336
    move-result v11

    .line 337
    if-eqz v11, :cond_b

    .line 338
    .line 339
    invoke-virtual {v8}, Ljava/lang/Number;->doubleValue()D

    .line 340
    .line 341
    .line 342
    move-result-wide v10

    .line 343
    invoke-static {v10, v11}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 344
    .line 345
    .line 346
    move-result-object v8

    .line 347
    check-cast v8, Ljava/lang/Float;

    .line 348
    .line 349
    goto :goto_6

    .line 350
    :cond_b
    sget-object v11, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    .line 351
    .line 352
    invoke-static {v11}, Lkotlin/jvm/internal/Reflection;->b(Ljava/lang/Class;)Lho7;

    .line 353
    .line 354
    .line 355
    move-result-object v11

    .line 356
    invoke-static {v10, v11}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 357
    .line 358
    .line 359
    move-result v10

    .line 360
    if-eqz v10, :cond_10

    .line 361
    .line 362
    invoke-virtual {v8}, Ljava/lang/Number;->longValue()J

    .line 363
    .line 364
    .line 365
    move-result-wide v10

    .line 366
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 367
    .line 368
    .line 369
    move-result-object v8

    .line 370
    check-cast v8, Ljava/lang/Float;

    .line 371
    .line 372
    :goto_6
    invoke-virtual {v8}, Ljava/lang/Number;->floatValue()F

    .line 373
    .line 374
    .line 375
    move-result v8

    .line 376
    invoke-direct {v5, v8, v0}, Lcom/google/android/material/shape/TriangleEdgeTreatment;-><init>(FZ)V

    .line 377
    .line 378
    .line 379
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    .line 380
    .line 381
    .line 382
    move-result-object v8

    .line 383
    invoke-virtual {v8}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 384
    .line 385
    .line 386
    move-result-object v8

    .line 387
    iget v8, v8, Landroid/util/DisplayMetrics;->density:F

    .line 388
    .line 389
    int-to-float v0, v0

    .line 390
    mul-float v8, v8, v0

    .line 391
    .line 392
    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 393
    .line 394
    .line 395
    move-result-object v0

    .line 396
    invoke-static {v4}, Lkotlin/jvm/internal/Reflection;->b(Ljava/lang/Class;)Lho7;

    .line 397
    .line 398
    .line 399
    move-result-object v4

    .line 400
    invoke-static {v7}, Lkotlin/jvm/internal/Reflection;->b(Ljava/lang/Class;)Lho7;

    .line 401
    .line 402
    .line 403
    move-result-object v7

    .line 404
    invoke-static {v4, v7}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 405
    .line 406
    .line 407
    move-result v7

    .line 408
    if-eqz v7, :cond_c

    .line 409
    .line 410
    goto :goto_7

    .line 411
    :cond_c
    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 412
    .line 413
    invoke-static {v7}, Lkotlin/jvm/internal/Reflection;->b(Ljava/lang/Class;)Lho7;

    .line 414
    .line 415
    .line 416
    move-result-object v7

    .line 417
    invoke-static {v4, v7}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 418
    .line 419
    .line 420
    move-result v7

    .line 421
    if-eqz v7, :cond_d

    .line 422
    .line 423
    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    .line 424
    .line 425
    .line 426
    move-result v0

    .line 427
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 428
    .line 429
    .line 430
    move-result-object v0

    .line 431
    check-cast v0, Ljava/lang/Float;

    .line 432
    .line 433
    goto :goto_7

    .line 434
    :cond_d
    sget-object v7, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    .line 435
    .line 436
    invoke-static {v7}, Lkotlin/jvm/internal/Reflection;->b(Ljava/lang/Class;)Lho7;

    .line 437
    .line 438
    .line 439
    move-result-object v7

    .line 440
    invoke-static {v4, v7}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 441
    .line 442
    .line 443
    move-result v7

    .line 444
    if-eqz v7, :cond_e

    .line 445
    .line 446
    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D

    .line 447
    .line 448
    .line 449
    move-result-wide v7

    .line 450
    invoke-static {v7, v8}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 451
    .line 452
    .line 453
    move-result-object v0

    .line 454
    check-cast v0, Ljava/lang/Float;

    .line 455
    .line 456
    goto :goto_7

    .line 457
    :cond_e
    sget-object v7, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    .line 458
    .line 459
    invoke-static {v7}, Lkotlin/jvm/internal/Reflection;->b(Ljava/lang/Class;)Lho7;

    .line 460
    .line 461
    .line 462
    move-result-object v7

    .line 463
    invoke-static {v4, v7}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 464
    .line 465
    .line 466
    move-result v4

    .line 467
    if-eqz v4, :cond_f

    .line 468
    .line 469
    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    .line 470
    .line 471
    .line 472
    move-result-wide v7

    .line 473
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 474
    .line 475
    .line 476
    move-result-object v0

    .line 477
    check-cast v0, Ljava/lang/Float;

    .line 478
    .line 479
    :goto_7
    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    .line 480
    .line 481
    .line 482
    move-result v0

    .line 483
    invoke-direct {v3, v5, v0}, Lcom/google/android/material/shape/OffsetEdgeTreatment;-><init>(Lcom/google/android/material/shape/EdgeTreatment;F)V

    .line 484
    .line 485
    .line 486
    invoke-virtual {v2, v3}, Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;->setBottomEdge(Lcom/google/android/material/shape/EdgeTreatment;)Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;

    .line 487
    .line 488
    .line 489
    move-result-object v0

    .line 490
    invoke-virtual {v0}, Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;->build()Lcom/google/android/material/shape/ShapeAppearanceModel;

    .line 491
    .line 492
    .line 493
    move-result-object v0

    .line 494
    const-string v2, "build(...)"

    .line 495
    .line 496
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 497
    .line 498
    .line 499
    new-instance v2, Lteam/opay/core/common/android/ShapeConfig$Builder;

    .line 500
    .line 501
    invoke-direct {v2}, Lteam/opay/core/common/android/ShapeConfig$Builder;-><init>()V

    .line 502
    .line 503
    .line 504
    invoke-virtual {p0}, Lteam/opay/opb/common/base/EdgeSheetFragment;->getFragmentActivity()Landroidx/fragment/app/FragmentActivity;

    .line 505
    .line 506
    .line 507
    move-result-object v3

    .line 508
    sget v4, Lteam/opay/business/payroll/R$color;->payroll_color_757575_1A1DCE9F:I

    .line 509
    .line 510
    invoke-static {v3, v4}, Lzq2;->getColor(Landroid/content/Context;I)I

    .line 511
    .line 512
    .line 513
    move-result v3

    .line 514
    invoke-virtual {v2, v3}, Lteam/opay/core/common/android/ShapeConfig$Builder;->k(I)Lteam/opay/core/common/android/ShapeConfig$Builder;

    .line 515
    .line 516
    .line 517
    move-result-object v2

    .line 518
    invoke-virtual {v2}, Lteam/opay/core/common/android/ShapeConfig$Builder;->a()Lteam/opay/core/common/android/ShapeConfig;

    .line 519
    .line 520
    .line 521
    move-result-object v2

    .line 522
    invoke-static {v1, v0, v2}, Ls0g;->a(Landroid/view/View;Lcom/google/android/material/shape/ShapeAppearanceModel;Lteam/opay/core/common/android/ShapeConfig;)V

    .line 523
    .line 524
    .line 525
    goto :goto_8

    .line 526
    :cond_f
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 527
    .line 528
    invoke-direct {v0, v9}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 529
    .line 530
    .line 531
    throw v0

    .line 532
    :cond_10
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 533
    .line 534
    invoke-direct {v0, v9}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 535
    .line 536
    .line 537
    throw v0

    .line 538
    :cond_11
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 539
    .line 540
    invoke-direct {v0, v9}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 541
    .line 542
    .line 543
    throw v0

    .line 544
    :cond_12
    :goto_8
    invoke-virtual {p0}, Lteam/opay/business/payroll/transferConfirmDialog/FirstLargeTransferDialog;->g0()Lxjb;

    .line 545
    .line 546
    .line 547
    move-result-object v0

    .line 548
    iget-object v0, v0, Lxjb;->i:Landroidx/appcompat/widget/AppCompatTextView;

    .line 549
    .line 550
    invoke-virtual {p0}, Lteam/opay/business/payroll/transferConfirmDialog/BaseConfirmSheet;->b0()Lteam/opay/business/payroll/api/BeneficiaryInfo;

    .line 551
    .line 552
    .line 553
    move-result-object v1

    .line 554
    if-eqz v1, :cond_13

    .line 555
    .line 556
    invoke-virtual {v1}, Lteam/opay/business/payroll/api/BeneficiaryInfo;->getRecipientBankAccountName()Ljava/lang/String;

    .line 557
    .line 558
    .line 559
    move-result-object v1

    .line 560
    goto :goto_9

    .line 561
    :cond_13
    move-object v1, v6

    .line 562
    :goto_9
    const-string v2, ""

    .line 563
    .line 564
    if-nez v1, :cond_14

    .line 565
    .line 566
    move-object v1, v2

    .line 567
    :cond_14
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 568
    .line 569
    .line 570
    invoke-virtual {p0}, Lteam/opay/business/payroll/transferConfirmDialog/FirstLargeTransferDialog;->g0()Lxjb;

    .line 571
    .line 572
    .line 573
    move-result-object v0

    .line 574
    iget-object v0, v0, Lxjb;->k:Landroidx/appcompat/widget/AppCompatTextView;

    .line 575
    .line 576
    invoke-virtual {p0}, Lteam/opay/business/payroll/transferConfirmDialog/BaseConfirmSheet;->b0()Lteam/opay/business/payroll/api/BeneficiaryInfo;

    .line 577
    .line 578
    .line 579
    move-result-object v1

    .line 580
    if-eqz v1, :cond_15

    .line 581
    .line 582
    invoke-virtual {v1}, Lteam/opay/business/payroll/api/BeneficiaryInfo;->getRecipientBankAccountNo()Ljava/lang/String;

    .line 583
    .line 584
    .line 585
    move-result-object v1

    .line 586
    goto :goto_a

    .line 587
    :cond_15
    move-object v1, v6

    .line 588
    :goto_a
    if-nez v1, :cond_16

    .line 589
    .line 590
    move-object v1, v2

    .line 591
    :cond_16
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 592
    .line 593
    .line 594
    invoke-virtual {p0}, Lteam/opay/business/payroll/transferConfirmDialog/FirstLargeTransferDialog;->g0()Lxjb;

    .line 595
    .line 596
    .line 597
    move-result-object v0

    .line 598
    iget-object v0, v0, Lxjb;->m:Landroidx/appcompat/widget/AppCompatTextView;

    .line 599
    .line 600
    invoke-virtual {p0}, Lteam/opay/business/payroll/transferConfirmDialog/BaseConfirmSheet;->b0()Lteam/opay/business/payroll/api/BeneficiaryInfo;

    .line 601
    .line 602
    .line 603
    move-result-object v1

    .line 604
    if-eqz v1, :cond_17

    .line 605
    .line 606
    invoke-virtual {v1}, Lteam/opay/business/payroll/api/BeneficiaryInfo;->getRecipientBankName()Ljava/lang/String;

    .line 607
    .line 608
    .line 609
    move-result-object v6

    .line 610
    :cond_17
    if-nez v6, :cond_18

    .line 611
    .line 612
    goto :goto_b

    .line 613
    :cond_18
    move-object v2, v6

    .line 614
    :goto_b
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 615
    .line 616
    .line 617
    return-void
.end method


# virtual methods
.method public a0()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/business/payroll/transferConfirmDialog/FirstLargeTransferDialog;->C:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final g0()Lxjb;
    .locals 3

    .line 1
    iget-object v0, p0, Lteam/opay/business/payroll/transferConfirmDialog/FirstLargeTransferDialog;->B:Lcom/hi/dhl/binding/viewbind/FragmentViewBinding;

    .line 2
    .line 3
    sget-object v1, Lteam/opay/business/payroll/transferConfirmDialog/FirstLargeTransferDialog;->E:[Lzo7;

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
    check-cast v0, Lxjb;

    .line 13
    .line 14
    return-object v0
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
    invoke-virtual {p0}, Lteam/opay/business/payroll/transferConfirmDialog/FirstLargeTransferDialog;->g0()Lxjb;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    invoke-virtual {p1}, Lxjb;->a()Landroidx/core/widget/NestedScrollView;

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
    invoke-direct {p0}, Lteam/opay/business/payroll/transferConfirmDialog/FirstLargeTransferDialog;->k0()V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0}, Lteam/opay/business/payroll/transferConfirmDialog/FirstLargeTransferDialog;->g0()Lxjb;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    iget-object p1, p1, Lxjb;->p:Landroidx/appcompat/widget/AppCompatImageView;

    .line 17
    .line 18
    const-string p2, "dialogClose"

    .line 19
    .line 20
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    new-instance p2, Ld46;

    .line 24
    .line 25
    invoke-direct {p2, p0}, Ld46;-><init>(Lteam/opay/business/payroll/transferConfirmDialog/FirstLargeTransferDialog;)V

    .line 26
    .line 27
    .line 28
    invoke-static {p1, p2}, Lde1;->a(Landroid/view/View;Lkotlin/jvm/functions/Function0;)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {p0}, Lteam/opay/business/payroll/transferConfirmDialog/FirstLargeTransferDialog;->g0()Lxjb;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    iget-object p1, p1, Lxjb;->b:Lcom/google/android/material/button/MaterialButton;

    .line 36
    .line 37
    const-string p2, "actionCancel"

    .line 38
    .line 39
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    new-instance p2, Le46;

    .line 43
    .line 44
    invoke-direct {p2, p0}, Le46;-><init>(Lteam/opay/business/payroll/transferConfirmDialog/FirstLargeTransferDialog;)V

    .line 45
    .line 46
    .line 47
    invoke-static {p1, p2}, Lde1;->a(Landroid/view/View;Lkotlin/jvm/functions/Function0;)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {p0}, Lteam/opay/business/payroll/transferConfirmDialog/FirstLargeTransferDialog;->g0()Lxjb;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    iget-object p1, p1, Lxjb;->c:Lcom/google/android/material/button/MaterialButton;

    .line 55
    .line 56
    const-string p2, "actionConfirm"

    .line 57
    .line 58
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    new-instance p2, Lf46;

    .line 62
    .line 63
    invoke-direct {p2, p0}, Lf46;-><init>(Lteam/opay/business/payroll/transferConfirmDialog/FirstLargeTransferDialog;)V

    .line 64
    .line 65
    .line 66
    invoke-static {p1, p2}, Lde1;->a(Landroid/view/View;Lkotlin/jvm/functions/Function0;)V

    .line 67
    .line 68
    .line 69
    return-void
.end method
